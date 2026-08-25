<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `influxdb`

-	[`influxdb:1.11`](#influxdb111)
-	[`influxdb:1.11-alpine`](#influxdb111-alpine)
-	[`influxdb:1.11-data`](#influxdb111-data)
-	[`influxdb:1.11-data-alpine`](#influxdb111-data-alpine)
-	[`influxdb:1.11-meta`](#influxdb111-meta)
-	[`influxdb:1.11-meta-alpine`](#influxdb111-meta-alpine)
-	[`influxdb:1.11.8`](#influxdb1118)
-	[`influxdb:1.11.8-alpine`](#influxdb1118-alpine)
-	[`influxdb:1.11.9-data`](#influxdb1119-data)
-	[`influxdb:1.11.9-data-alpine`](#influxdb1119-data-alpine)
-	[`influxdb:1.11.9-meta`](#influxdb1119-meta)
-	[`influxdb:1.11.9-meta-alpine`](#influxdb1119-meta-alpine)
-	[`influxdb:1.12`](#influxdb112)
-	[`influxdb:1.12-alpine`](#influxdb112-alpine)
-	[`influxdb:1.12-data`](#influxdb112-data)
-	[`influxdb:1.12-data-alpine`](#influxdb112-data-alpine)
-	[`influxdb:1.12-meta`](#influxdb112-meta)
-	[`influxdb:1.12-meta-alpine`](#influxdb112-meta-alpine)
-	[`influxdb:1.12.4`](#influxdb1124)
-	[`influxdb:1.12.4-alpine`](#influxdb1124-alpine)
-	[`influxdb:1.12.4-data`](#influxdb1124-data)
-	[`influxdb:1.12.4-data-alpine`](#influxdb1124-data-alpine)
-	[`influxdb:1.12.4-meta`](#influxdb1124-meta)
-	[`influxdb:1.12.4-meta-alpine`](#influxdb1124-meta-alpine)
-	[`influxdb:1.13-data`](#influxdb113-data)
-	[`influxdb:1.13-data-alpine`](#influxdb113-data-alpine)
-	[`influxdb:1.13-meta`](#influxdb113-meta)
-	[`influxdb:1.13-meta-alpine`](#influxdb113-meta-alpine)
-	[`influxdb:1.13.0-data`](#influxdb1130-data)
-	[`influxdb:1.13.0-data-alpine`](#influxdb1130-data-alpine)
-	[`influxdb:1.13.0-meta`](#influxdb1130-meta)
-	[`influxdb:1.13.0-meta-alpine`](#influxdb1130-meta-alpine)
-	[`influxdb:2`](#influxdb2)
-	[`influxdb:2-alpine`](#influxdb2-alpine)
-	[`influxdb:2.8`](#influxdb28)
-	[`influxdb:2.8-alpine`](#influxdb28-alpine)
-	[`influxdb:2.8.0`](#influxdb280)
-	[`influxdb:2.8.0-alpine`](#influxdb280-alpine)
-	[`influxdb:2.9`](#influxdb29)
-	[`influxdb:2.9-alpine`](#influxdb29-alpine)
-	[`influxdb:2.9.1`](#influxdb291)
-	[`influxdb:2.9.1-alpine`](#influxdb291-alpine)
-	[`influxdb:3-core`](#influxdb3-core)
-	[`influxdb:3-enterprise`](#influxdb3-enterprise)
-	[`influxdb:3.10-core`](#influxdb310-core)
-	[`influxdb:3.10-enterprise`](#influxdb310-enterprise)
-	[`influxdb:3.10.5-core`](#influxdb3105-core)
-	[`influxdb:3.10.5-enterprise`](#influxdb3105-enterprise)
-	[`influxdb:3.11-core`](#influxdb311-core)
-	[`influxdb:3.11-enterprise`](#influxdb311-enterprise)
-	[`influxdb:3.11.2-core`](#influxdb3112-core)
-	[`influxdb:3.11.2-enterprise`](#influxdb3112-enterprise)
-	[`influxdb:3.9-core`](#influxdb39-core)
-	[`influxdb:3.9-enterprise`](#influxdb39-enterprise)
-	[`influxdb:3.9.11-core`](#influxdb3911-core)
-	[`influxdb:3.9.11-enterprise`](#influxdb3911-enterprise)
-	[`influxdb:alpine`](#influxdbalpine)
-	[`influxdb:core`](#influxdbcore)
-	[`influxdb:data`](#influxdbdata)
-	[`influxdb:data-alpine`](#influxdbdata-alpine)
-	[`influxdb:enterprise`](#influxdbenterprise)
-	[`influxdb:latest`](#influxdblatest)
-	[`influxdb:meta`](#influxdbmeta)
-	[`influxdb:meta-alpine`](#influxdbmeta-alpine)

## `influxdb:1.11`

```console
$ docker pull influxdb@sha256:b4ae4479504699dfc6261ecd41db50aa50f439ff79bad303af70c6842a9e96eb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.11` - linux; amd64

```console
$ docker pull influxdb@sha256:dc7b7d2e2794c728da07c733b754feba6ed7b533182bcf50ea1f2d1dc5f7de7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116215215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1fb84baeea33e29348807fa8ec85cf65d0d2c81e87e752e21ff088dbcfefd2c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:31 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 25 Aug 2026 01:43:38 GMT
ARG INFLUXDB_VERSION=1.11.8
# Tue, 25 Aug 2026 01:43:38 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     case "$(dpkg --print-architecture)" in       *amd64) ARCH=amd64 ;;       *arm64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_DEB=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_DEB}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_DEB}" &&     apt-get install -y "./${INFLUXDB_DEB}" &&     rm -rf "${INFLUXDB_DEB}"            "${INFLUXDB_ASC}" 	   /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:38 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 25 Aug 2026 01:43:38 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 01:43:38 GMT
VOLUME [/var/lib/influxdb]
# Tue, 25 Aug 2026 01:43:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:43:38 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 25 Aug 2026 01:43:38 GMT
USER influxdb
# Tue, 25 Aug 2026 01:43:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:43:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:136f4d725c28c462895b2628d1751b3b05df1cc835616d262d5c34d0d1c82a60`  
		Last Modified: Tue, 25 Aug 2026 01:43:50 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12c0369b1926bbd0c9593268945175f0ee594c744ff0df148d01e5c8bbd665c9`  
		Last Modified: Tue, 25 Aug 2026 01:43:51 GMT  
		Size: 43.7 MB (43658693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34bec4b608acdcc336ca69f96c1321670cb4856f06b004180e5efb511d65d75d`  
		Last Modified: Tue, 25 Aug 2026 01:43:50 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f050e6855c16a00cc125538305db5bd0e1b82a39e5cf0952d1c9a36d582a591`  
		Last Modified: Tue, 25 Aug 2026 01:43:50 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7c257e347e35252b013daf96576a2a6d8e99014375e3877b2bba521452e7a23`  
		Last Modified: Tue, 25 Aug 2026 01:43:51 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11` - unknown; unknown

```console
$ docker pull influxdb@sha256:d6be10b3a2a1f68419e8a303f33d4f0a4c405fcd3173fb54fa34b92404e1f01d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5100032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e3dd81739e3916e5e39c26d50c08ead26bdda90861cd1363fe303cd61631f6b`

```dockerfile
```

-	Layers:
	-	`sha256:60a1a4da81e348da68ddc954b4aea25f70bd9aa7ab372babb1dda5a5c27c01ef`  
		Last Modified: Tue, 25 Aug 2026 01:43:50 GMT  
		Size: 5.1 MB (5084546 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2da774b1852d63fcc8b44ddc989f564ffa9938cca8a81a7defd8f985f5417e47`  
		Last Modified: Tue, 25 Aug 2026 01:43:50 GMT  
		Size: 15.5 KB (15486 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.11` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:f50104d9aa53861c16b24faf7ab99b60366eef36e4b61760e64b2ac6ff671486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113144137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:515c6e6e8a310d0ab6ccab81a189e5001ba116699e6a12dfb5416647a7556704`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:48:01 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 25 Aug 2026 01:48:08 GMT
ARG INFLUXDB_VERSION=1.11.8
# Tue, 25 Aug 2026 01:48:08 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     case "$(dpkg --print-architecture)" in       *amd64) ARCH=amd64 ;;       *arm64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_DEB=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_DEB}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_DEB}" &&     apt-get install -y "./${INFLUXDB_DEB}" &&     rm -rf "${INFLUXDB_DEB}"            "${INFLUXDB_ASC}" 	   /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:48:08 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 25 Aug 2026 01:48:08 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 01:48:08 GMT
VOLUME [/var/lib/influxdb]
# Tue, 25 Aug 2026 01:48:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:48:08 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 25 Aug 2026 01:48:08 GMT
USER influxdb
# Tue, 25 Aug 2026 01:48:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:48:08 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3e859787e45a36591bbf9de845e99ade002d20c58de32e2d6815901121c1d1d`  
		Last Modified: Tue, 25 Aug 2026 01:48:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801239fccf716977096b8283a5240ec49e5b24fcba0d062181eda33d2e928310`  
		Last Modified: Tue, 25 Aug 2026 01:48:22 GMT  
		Size: 41.1 MB (41129314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2fafbfa83c7c284c18ee04d7fb497b25960b4ad820a1fdb5af964c657b88388`  
		Last Modified: Tue, 25 Aug 2026 01:48:21 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a862aeb7f469e18bdb41f7f2328383782f549c5e6affe590eeb9a752944fbb`  
		Last Modified: Tue, 25 Aug 2026 01:48:21 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b8f7c9daf993c46987dea821b869f11ac76f4f02d0271440499b2eb4b9aa4c1`  
		Last Modified: Tue, 25 Aug 2026 01:48:22 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11` - unknown; unknown

```console
$ docker pull influxdb@sha256:892ca9f3300d865cd5e07299ab4063fac7ba218a71cd6fce503963e0788d97a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5099592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c7751ef97d36633f1a336073cf1192314a19d13461bab65708a26ece34c187`

```dockerfile
```

-	Layers:
	-	`sha256:c270d94d7bee5e8098efd5e24b2d97a66693dcd15dfeb095d56b5ff8ea8a2c37`  
		Last Modified: Tue, 25 Aug 2026 01:48:21 GMT  
		Size: 5.1 MB (5084011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9e97a16911b0d5cb933f7ad6483368c4228c2f8ce2a68e563e14b2d7b8f15b1`  
		Last Modified: Tue, 25 Aug 2026 01:48:21 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.11-alpine`

```console
$ docker pull influxdb@sha256:70618be4c20233c05dc117c31531f6d7f7675a44b1d724bc8aa5f4798e6a53dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.11-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:1196b7d27f1fee8af5a64fb5f217917370dae11f2fcb3e3306c5b13b436dfcf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (42950405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:032f578a7b9d6eb7695b15e411a7e592d7170dcff99a2be275ec6408d6aaf132`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Wed, 17 Jun 2026 19:08:43 GMT
RUN apk add --no-cache       bash       ca-certificates       tzdata &&     update-ca-certificates # buildkit
# Wed, 17 Jun 2026 19:08:48 GMT
ARG INFLUXDB_VERSION=1.11.8
# Wed, 17 Jun 2026 19:08:48 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN apk add --no-cache --virtual .build-deps       curl       gnupg       tar &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     case "$(apk --print-arch)" in       x86_64)  ARCH=amd64 ;;       aarch64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_TAR=influxdb-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_TAR}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_TAR}" &&     tar -xf "${INFLUXDB_TAR}" -C /usr/bin       influx       influx_inspect       influxd &&     rm -rf "${INFLUXDB_TAR}"            "${INFLUXDB_ASC}" &&     apk del .build-deps # buildkit
# Wed, 17 Jun 2026 19:08:48 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 17 Jun 2026 19:08:48 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb &&     mkdir -p /var/lib/influxdb &&     mkdir -p /var/log/influxdb &&     chown influxdb:influxdb /var/lib/influxdb &&     chown influxdb:influxdb /var/log/influxdb &&     chmod 0750 /var/lib/influxdb &&     chmod 0750 /var/log/influxdb # buildkit
# Wed, 17 Jun 2026 19:08:48 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 17 Jun 2026 19:08:48 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Jun 2026 19:08:48 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 17 Jun 2026 19:08:48 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 17 Jun 2026 19:08:48 GMT
USER influxdb
# Wed, 17 Jun 2026 19:08:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Jun 2026 19:08:48 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a29dca5710b8d8e7dab42391cb34d4e3c31c9d004b1c44c18509d48507b04e5`  
		Last Modified: Wed, 17 Jun 2026 19:08:58 GMT  
		Size: 1.2 MB (1224004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68065aebe4a038c2d6ef2fceda31cf1275409c86ee6bb843aa1ddfaa568c45f6`  
		Last Modified: Wed, 17 Jun 2026 19:08:59 GMT  
		Size: 38.1 MB (38076816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d22dddce52b2e8fe4c8d47dfdcc7d0f3d251629724018878368dd222c4f367`  
		Last Modified: Wed, 17 Jun 2026 19:08:57 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba42194a433cc70a001a8752e6cf29f56a7a5a18e858bf649f2d2f8a2784754`  
		Last Modified: Wed, 17 Jun 2026 19:08:58 GMT  
		Size: 993.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31b7c58f09d1f3fc0b3dfa748cbb6fea6c971f5bb324c281a41ff20a55795a1`  
		Last Modified: Wed, 17 Jun 2026 19:08:58 GMT  
		Size: 212.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c8a9219360be4f6fce3fd23b7d15dba764decfd11a0768fa71c073fbc6d3719`  
		Last Modified: Wed, 17 Jun 2026 19:08:59 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:ea4375ac34c178c39de99753373365c45e6460843c2d8f1fef421df06ab03738
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **764.8 KB (764759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad016b5295f7a3ee537c727a17d1d8c9ada53ff9c4c534df1b0f04e36692e146`

```dockerfile
```

-	Layers:
	-	`sha256:1c174cf550fdf514622445ad21e8ff0d78845dc1b8f71cd720d7a409ac64fcfe`  
		Last Modified: Wed, 17 Jun 2026 19:08:57 GMT  
		Size: 746.9 KB (746928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1e4cd332229ffff390e01ac2eecfe978d392472fba4d23733e973e8eb5a98b7`  
		Last Modified: Wed, 17 Jun 2026 19:08:57 GMT  
		Size: 17.8 KB (17831 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.11-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:a5bc5fa389dfede8204944614296e8545a0419b420acaf885426c928f9f2999c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40833679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90348f3e8a491f71b9186ba4755f917a98ae8db3da892beb539a7cd6340ffb1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Wed, 17 Jun 2026 19:09:03 GMT
RUN apk add --no-cache       bash       ca-certificates       tzdata &&     update-ca-certificates # buildkit
# Wed, 17 Jun 2026 19:09:10 GMT
ARG INFLUXDB_VERSION=1.11.8
# Wed, 17 Jun 2026 19:09:10 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN apk add --no-cache --virtual .build-deps       curl       gnupg       tar &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     case "$(apk --print-arch)" in       x86_64)  ARCH=amd64 ;;       aarch64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_TAR=influxdb-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_TAR}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_TAR}" &&     tar -xf "${INFLUXDB_TAR}" -C /usr/bin       influx       influx_inspect       influxd &&     rm -rf "${INFLUXDB_TAR}"            "${INFLUXDB_ASC}" &&     apk del .build-deps # buildkit
# Wed, 17 Jun 2026 19:09:10 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 17 Jun 2026 19:09:10 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb &&     mkdir -p /var/lib/influxdb &&     mkdir -p /var/log/influxdb &&     chown influxdb:influxdb /var/lib/influxdb &&     chown influxdb:influxdb /var/log/influxdb &&     chmod 0750 /var/lib/influxdb &&     chmod 0750 /var/log/influxdb # buildkit
# Wed, 17 Jun 2026 19:09:10 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 17 Jun 2026 19:09:10 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Jun 2026 19:09:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 17 Jun 2026 19:09:10 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 17 Jun 2026 19:09:10 GMT
USER influxdb
# Wed, 17 Jun 2026 19:09:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Jun 2026 19:09:10 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8e52f635a3778ac44d818c49a3f84210f5c8f83b1d34ef0b08543cd9b1c0e45`  
		Last Modified: Wed, 17 Jun 2026 19:09:19 GMT  
		Size: 1.3 MB (1288157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4812d30f43c3b26b87cf12ced89fbc907a91987a8961624d3c0d1407226f7bf1`  
		Last Modified: Wed, 17 Jun 2026 19:09:20 GMT  
		Size: 35.5 MB (35548349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5832296462a5005fd146abd407941e0db5acd70884af711c3aa525e6cf788279`  
		Last Modified: Wed, 17 Jun 2026 19:09:19 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eabb3d4be798f0876a2d6cf2a87e1e341fe5f8eb5cfe4d07c8945482a3b773d6`  
		Last Modified: Wed, 17 Jun 2026 19:09:19 GMT  
		Size: 993.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0fa739ecfc16dd765b9748309bb1eaa42acb471116a1b89b33cdfc6cefd771`  
		Last Modified: Wed, 17 Jun 2026 19:09:20 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e549da991d5b846a458fd28a9e65802d73b9a6726bec7712891cbed58acb9ed2`  
		Last Modified: Wed, 17 Jun 2026 19:09:20 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:dc56e1aa75f3c7455fa81a061df5e35ad7ef0608d710f2cded24d1825d7303c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **764.1 KB (764096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0360cee9844dbf169ce0b286d36e449e3677d38fc027cbeb2883f8cd1d10c8d`

```dockerfile
```

-	Layers:
	-	`sha256:c2d132bedb480dce02591cae4f8b7da3c98bae1b4c1a3423459313031f3fb328`  
		Last Modified: Wed, 17 Jun 2026 19:09:19 GMT  
		Size: 746.2 KB (746155 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3378f356dfa6ac0a48c781d77ab78dc5206bd3490a9346c469cbb6b39358a75`  
		Last Modified: Wed, 17 Jun 2026 19:09:19 GMT  
		Size: 17.9 KB (17941 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.11-data`

```console
$ docker pull influxdb@sha256:1917bc7f16964129a04d6c9876bc2d5ce250bf3b46932e1497d3466ba19d5200
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11-data` - linux; amd64

```console
$ docker pull influxdb@sha256:9d4dfa50a5cff85bbbed2feceff5a8f79db4dc2cf4f8fa47f9d9c475b597e551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114726154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8594f7c38b74fedf6fb67eb8075a17903d3be054dd15982c6ed50be1d322b94d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:40 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 01:43:43 GMT
ENV INFLUXDB_VERSION=1.11.9-c1.11.9
# Tue, 25 Aug 2026 01:43:43 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb* # buildkit
# Tue, 25 Aug 2026 01:43:43 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 25 Aug 2026 01:43:43 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 01:43:43 GMT
VOLUME [/var/lib/influxdb]
# Tue, 25 Aug 2026 01:43:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:43:43 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 25 Aug 2026 01:43:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:43:43 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10c97cb8bb3e5dcda7af3b8b4c7a4453fbe36fb81346bccf2f440f4d98676fc`  
		Last Modified: Tue, 25 Aug 2026 01:43:56 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51661dc6aebf6216c44ca06341a3ec946ec6d7e956949746e8280323de3c0673`  
		Last Modified: Tue, 25 Aug 2026 01:43:57 GMT  
		Size: 42.2 MB (42165715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa6e2d7cb1665f2c16ae5033fe96fed4f362bf8362583e980a5c359cc56dffc`  
		Last Modified: Tue, 25 Aug 2026 01:43:56 GMT  
		Size: 241.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:926b6e505520557453b47625b1e6214872a1b4a747f044695810a48fb739a7ec`  
		Last Modified: Tue, 25 Aug 2026 01:43:55 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25001d217640f060afab6ef11fb02c2ce6a3c62e5f9aabd37a6ee9ed5f3a64c0`  
		Last Modified: Tue, 25 Aug 2026 01:43:56 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:843ded8ddfdddea8412d40ab74fdd050ec2fc53e118598765786162841aa3a40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4704346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:280d84541588db1696412cbee3e59e1171db3177efbd6afd10531326752ecd5a`

```dockerfile
```

-	Layers:
	-	`sha256:6c0ad1443266931af0812e864ac366d55b08b1da4c3f41958f9f8433ee405254`  
		Last Modified: Tue, 25 Aug 2026 01:43:56 GMT  
		Size: 4.7 MB (4689681 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:567658a8883632c729034f849caf338ec9be1169bd8853197329eaf854e6a327`  
		Last Modified: Tue, 25 Aug 2026 01:43:55 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.11-data-alpine`

```console
$ docker pull influxdb@sha256:05d800304d215ecf84bb25350ff12de5ad297370bf5280a3e54cf71e21be06a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:55c9ead15eab287c13ecd9ca1eaf82765c16b06853efe65a71ad08f24a8ae79c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 MB (46979364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20bb06d2f5942604b42e3890ec38d47be433ba5d42feac33aba3e4949127b6e6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Wed, 17 Jun 2026 19:09:14 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 17 Jun 2026 19:09:15 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Wed, 17 Jun 2026 19:09:20 GMT
ENV INFLUXDB_VERSION=1.11.9-c1.11.9
# Wed, 17 Jun 2026 19:09:20 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/usr/bin/* &&     cp -a /usr/src/influxdb-*/usr/bin/. /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps # buildkit
# Wed, 17 Jun 2026 19:09:20 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 17 Jun 2026 19:09:20 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 17 Jun 2026 19:09:20 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Jun 2026 19:09:20 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 17 Jun 2026 19:09:20 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 17 Jun 2026 19:09:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Jun 2026 19:09:20 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5862bcdd62e2d554b2fad2d5456a3c8a046cb3855cfd2f5754ea12a2cd681f`  
		Last Modified: Wed, 17 Jun 2026 19:09:30 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e091f4035f674125a7f48ab87797b270c754b4a38bea73467abba0b621a047d1`  
		Last Modified: Wed, 17 Jun 2026 19:09:31 GMT  
		Size: 1.2 MB (1224008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef3b99e566ecb977ecee3a93ea6e3bd6c146e250b950eb5518e5ab036d34e28`  
		Last Modified: Wed, 17 Jun 2026 19:09:32 GMT  
		Size: 42.1 MB (42106434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ace9b011e7624b28cba0ea58b87d25be02c474a7c6b1e44b3fd8c5fdfd2291`  
		Last Modified: Wed, 17 Jun 2026 19:09:31 GMT  
		Size: 239.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edcb78893c0045c43b69f0003ada2856e13d758878e2f7148893549243ad185d`  
		Last Modified: Wed, 17 Jun 2026 19:09:32 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f6e298f6c62fed3fc316d41d6dc47e8e5f77a5e3d16f476b571a13a45b56984`  
		Last Modified: Wed, 17 Jun 2026 19:09:32 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11-data-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:e78c4dbee3e1e4d8f5b92b1c765dcc0030c8cd9da71c1cfeabf1042af6061e3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **790.0 KB (790035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ac7e748791c139e9797ebc62a8bbe646d6387758bdb35331a6e494c496e9e8e`

```dockerfile
```

-	Layers:
	-	`sha256:796878ad70a58a1f813ef7ccb4f4515e5511bf8bb283ed9ab476d04f8c9851b7`  
		Last Modified: Wed, 17 Jun 2026 19:09:30 GMT  
		Size: 773.4 KB (773439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9427178294decd3fcc0bc40022ea079cdf99a8659595ea41eafd997da6ba1a80`  
		Last Modified: Wed, 17 Jun 2026 19:09:30 GMT  
		Size: 16.6 KB (16596 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.11-meta`

```console
$ docker pull influxdb@sha256:fa63bb7ae2d4579dde6bde6303e2a1befaea618cbe1e161caf4aaa5b5b1685f9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:26ec47cf4ee30f9be2347a2bb071be776f618dcea23aae181a8b90a24d856015
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.2 MB (91155372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cfd6948fa19fa0fb76661bffb30375e47d5e2b68312bd07bad1456aa20661e0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:44:05 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 01:44:07 GMT
ENV INFLUXDB_VERSION=1.11.9-c1.11.9
# Tue, 25 Aug 2026 01:44:07 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb* # buildkit
# Tue, 25 Aug 2026 01:44:07 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Tue, 25 Aug 2026 01:44:07 GMT
EXPOSE map[8091/tcp:{}]
# Tue, 25 Aug 2026 01:44:07 GMT
VOLUME [/var/lib/influxdb]
# Tue, 25 Aug 2026 01:44:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:44:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:44:07 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fbd250d23873d7affa9b2efbbe0ecca269a06891d816ba1bf090cfeda0c3ebe`  
		Last Modified: Tue, 25 Aug 2026 01:44:16 GMT  
		Size: 5.1 KB (5054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7feae3b6950114f34826e03ad1789c3d29f6121160d18ec18b0c2114ada25f`  
		Last Modified: Tue, 25 Aug 2026 01:44:16 GMT  
		Size: 18.6 MB (18596143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f025d923cfe71fb846953935fafb986f70512fd20bb586f2600a2c9c9ef96e`  
		Last Modified: Tue, 25 Aug 2026 01:44:16 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4efaad829c43e7e086682718a6dc33e2e4ef3e86be882551df4f3f8169edbf0`  
		Last Modified: Tue, 25 Aug 2026 01:44:16 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:67f349073e55b317a92e071e39f7f1be97ef2fe6bfc7ac27c2f5c187727d661a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4609548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3512682a0786fce6cca74503cae073cc618f05a74e61a7bb248e1f26f7e4f3b9`

```dockerfile
```

-	Layers:
	-	`sha256:1bfaacc83e78df38b7afe0886ac748696e978be017cdb2ee833278c16199e15b`  
		Last Modified: Tue, 25 Aug 2026 01:44:16 GMT  
		Size: 4.6 MB (4596524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12f8a2f9c3690cd2af587bd4afa4682e927aeeec5cb2bac2fe3b3dd001149d48`  
		Last Modified: Tue, 25 Aug 2026 01:44:16 GMT  
		Size: 13.0 KB (13024 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.11-meta-alpine`

```console
$ docker pull influxdb@sha256:2c79c1838957b1275866b4788d2722786aaf374f7973b9feade173292ed20c49
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:5ca62aa625456723de4e2bc618f8e6eee5ce89c700a378b5f6a1b49236f1fc6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23421968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e796cde2133db033fda1da409382008ff0caf0ecbae85d73297619907dbe4a84`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Wed, 17 Jun 2026 19:09:06 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 17 Jun 2026 19:09:06 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Wed, 17 Jun 2026 19:09:09 GMT
ENV INFLUXDB_VERSION=1.11.9-c1.11.9
# Wed, 17 Jun 2026 19:09:09 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/usr/bin/* &&     cp -a /usr/src/influxdb-*/usr/bin/. /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps # buildkit
# Wed, 17 Jun 2026 19:09:09 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Wed, 17 Jun 2026 19:09:09 GMT
EXPOSE map[8091/tcp:{}]
# Wed, 17 Jun 2026 19:09:09 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Jun 2026 19:09:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 17 Jun 2026 19:09:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Jun 2026 19:09:09 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f9eec4622ef73db795fa5cc70aa2653a14c78739969d135e575cf73e3113ed5`  
		Last Modified: Wed, 17 Jun 2026 19:09:16 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2122fcdda047968eb2a0bc5a9d28668048ba95acdae82a23f277b6ef8c3e3098`  
		Last Modified: Wed, 17 Jun 2026 19:09:16 GMT  
		Size: 1.2 MB (1224002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9525e100b8c7a32d5acd75adce51abe10fe0db7095fbb23de2f9fe7d6336f24`  
		Last Modified: Wed, 17 Jun 2026 19:09:17 GMT  
		Size: 18.6 MB (18550247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:559cff324af895cf8f12332f5175f0a28a8f821751151dc55319a7f81e6564f9`  
		Last Modified: Wed, 17 Jun 2026 19:09:16 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:932ec00e5a123bf424c0bf9537e64df2e1b680d2b4d6f15f602b7832816aeec5`  
		Last Modified: Wed, 17 Jun 2026 19:09:17 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11-meta-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:26793f70308c6fea31815d8197a65050f2fd4feea11726518c74a777f30b4ad6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.0 KB (696035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aebd49827193101c0f88eef3496c79d47f07a9f1a73395de52b8290fc1616c9`

```dockerfile
```

-	Layers:
	-	`sha256:488c4eb61c5012f08402dd7babfa6f426ce3a8f346870e526c475f17bca0a1b3`  
		Last Modified: Wed, 17 Jun 2026 19:09:16 GMT  
		Size: 681.1 KB (681068 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7e6c8a5b4519ac39e292f93038a4d2840e40e4fbfa18ead418ec076391c5e2f`  
		Last Modified: Wed, 17 Jun 2026 19:09:16 GMT  
		Size: 15.0 KB (14967 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.11.8`

```console
$ docker pull influxdb@sha256:b4ae4479504699dfc6261ecd41db50aa50f439ff79bad303af70c6842a9e96eb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.11.8` - linux; amd64

```console
$ docker pull influxdb@sha256:dc7b7d2e2794c728da07c733b754feba6ed7b533182bcf50ea1f2d1dc5f7de7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116215215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1fb84baeea33e29348807fa8ec85cf65d0d2c81e87e752e21ff088dbcfefd2c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:31 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 25 Aug 2026 01:43:38 GMT
ARG INFLUXDB_VERSION=1.11.8
# Tue, 25 Aug 2026 01:43:38 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     case "$(dpkg --print-architecture)" in       *amd64) ARCH=amd64 ;;       *arm64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_DEB=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_DEB}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_DEB}" &&     apt-get install -y "./${INFLUXDB_DEB}" &&     rm -rf "${INFLUXDB_DEB}"            "${INFLUXDB_ASC}" 	   /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:38 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 25 Aug 2026 01:43:38 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 01:43:38 GMT
VOLUME [/var/lib/influxdb]
# Tue, 25 Aug 2026 01:43:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:43:38 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 25 Aug 2026 01:43:38 GMT
USER influxdb
# Tue, 25 Aug 2026 01:43:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:43:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:136f4d725c28c462895b2628d1751b3b05df1cc835616d262d5c34d0d1c82a60`  
		Last Modified: Tue, 25 Aug 2026 01:43:50 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12c0369b1926bbd0c9593268945175f0ee594c744ff0df148d01e5c8bbd665c9`  
		Last Modified: Tue, 25 Aug 2026 01:43:51 GMT  
		Size: 43.7 MB (43658693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34bec4b608acdcc336ca69f96c1321670cb4856f06b004180e5efb511d65d75d`  
		Last Modified: Tue, 25 Aug 2026 01:43:50 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f050e6855c16a00cc125538305db5bd0e1b82a39e5cf0952d1c9a36d582a591`  
		Last Modified: Tue, 25 Aug 2026 01:43:50 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7c257e347e35252b013daf96576a2a6d8e99014375e3877b2bba521452e7a23`  
		Last Modified: Tue, 25 Aug 2026 01:43:51 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.8` - unknown; unknown

```console
$ docker pull influxdb@sha256:d6be10b3a2a1f68419e8a303f33d4f0a4c405fcd3173fb54fa34b92404e1f01d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5100032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e3dd81739e3916e5e39c26d50c08ead26bdda90861cd1363fe303cd61631f6b`

```dockerfile
```

-	Layers:
	-	`sha256:60a1a4da81e348da68ddc954b4aea25f70bd9aa7ab372babb1dda5a5c27c01ef`  
		Last Modified: Tue, 25 Aug 2026 01:43:50 GMT  
		Size: 5.1 MB (5084546 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2da774b1852d63fcc8b44ddc989f564ffa9938cca8a81a7defd8f985f5417e47`  
		Last Modified: Tue, 25 Aug 2026 01:43:50 GMT  
		Size: 15.5 KB (15486 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.11.8` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:f50104d9aa53861c16b24faf7ab99b60366eef36e4b61760e64b2ac6ff671486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113144137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:515c6e6e8a310d0ab6ccab81a189e5001ba116699e6a12dfb5416647a7556704`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:48:01 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 25 Aug 2026 01:48:08 GMT
ARG INFLUXDB_VERSION=1.11.8
# Tue, 25 Aug 2026 01:48:08 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     case "$(dpkg --print-architecture)" in       *amd64) ARCH=amd64 ;;       *arm64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_DEB=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_DEB}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_DEB}" &&     apt-get install -y "./${INFLUXDB_DEB}" &&     rm -rf "${INFLUXDB_DEB}"            "${INFLUXDB_ASC}" 	   /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:48:08 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 25 Aug 2026 01:48:08 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 01:48:08 GMT
VOLUME [/var/lib/influxdb]
# Tue, 25 Aug 2026 01:48:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:48:08 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 25 Aug 2026 01:48:08 GMT
USER influxdb
# Tue, 25 Aug 2026 01:48:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:48:08 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3e859787e45a36591bbf9de845e99ade002d20c58de32e2d6815901121c1d1d`  
		Last Modified: Tue, 25 Aug 2026 01:48:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801239fccf716977096b8283a5240ec49e5b24fcba0d062181eda33d2e928310`  
		Last Modified: Tue, 25 Aug 2026 01:48:22 GMT  
		Size: 41.1 MB (41129314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2fafbfa83c7c284c18ee04d7fb497b25960b4ad820a1fdb5af964c657b88388`  
		Last Modified: Tue, 25 Aug 2026 01:48:21 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a862aeb7f469e18bdb41f7f2328383782f549c5e6affe590eeb9a752944fbb`  
		Last Modified: Tue, 25 Aug 2026 01:48:21 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b8f7c9daf993c46987dea821b869f11ac76f4f02d0271440499b2eb4b9aa4c1`  
		Last Modified: Tue, 25 Aug 2026 01:48:22 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.8` - unknown; unknown

```console
$ docker pull influxdb@sha256:892ca9f3300d865cd5e07299ab4063fac7ba218a71cd6fce503963e0788d97a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5099592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c7751ef97d36633f1a336073cf1192314a19d13461bab65708a26ece34c187`

```dockerfile
```

-	Layers:
	-	`sha256:c270d94d7bee5e8098efd5e24b2d97a66693dcd15dfeb095d56b5ff8ea8a2c37`  
		Last Modified: Tue, 25 Aug 2026 01:48:21 GMT  
		Size: 5.1 MB (5084011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9e97a16911b0d5cb933f7ad6483368c4228c2f8ce2a68e563e14b2d7b8f15b1`  
		Last Modified: Tue, 25 Aug 2026 01:48:21 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.11.8-alpine`

```console
$ docker pull influxdb@sha256:70618be4c20233c05dc117c31531f6d7f7675a44b1d724bc8aa5f4798e6a53dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.11.8-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:1196b7d27f1fee8af5a64fb5f217917370dae11f2fcb3e3306c5b13b436dfcf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (42950405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:032f578a7b9d6eb7695b15e411a7e592d7170dcff99a2be275ec6408d6aaf132`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Wed, 17 Jun 2026 19:08:43 GMT
RUN apk add --no-cache       bash       ca-certificates       tzdata &&     update-ca-certificates # buildkit
# Wed, 17 Jun 2026 19:08:48 GMT
ARG INFLUXDB_VERSION=1.11.8
# Wed, 17 Jun 2026 19:08:48 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN apk add --no-cache --virtual .build-deps       curl       gnupg       tar &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     case "$(apk --print-arch)" in       x86_64)  ARCH=amd64 ;;       aarch64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_TAR=influxdb-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_TAR}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_TAR}" &&     tar -xf "${INFLUXDB_TAR}" -C /usr/bin       influx       influx_inspect       influxd &&     rm -rf "${INFLUXDB_TAR}"            "${INFLUXDB_ASC}" &&     apk del .build-deps # buildkit
# Wed, 17 Jun 2026 19:08:48 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 17 Jun 2026 19:08:48 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb &&     mkdir -p /var/lib/influxdb &&     mkdir -p /var/log/influxdb &&     chown influxdb:influxdb /var/lib/influxdb &&     chown influxdb:influxdb /var/log/influxdb &&     chmod 0750 /var/lib/influxdb &&     chmod 0750 /var/log/influxdb # buildkit
# Wed, 17 Jun 2026 19:08:48 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 17 Jun 2026 19:08:48 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Jun 2026 19:08:48 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 17 Jun 2026 19:08:48 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 17 Jun 2026 19:08:48 GMT
USER influxdb
# Wed, 17 Jun 2026 19:08:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Jun 2026 19:08:48 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a29dca5710b8d8e7dab42391cb34d4e3c31c9d004b1c44c18509d48507b04e5`  
		Last Modified: Wed, 17 Jun 2026 19:08:58 GMT  
		Size: 1.2 MB (1224004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68065aebe4a038c2d6ef2fceda31cf1275409c86ee6bb843aa1ddfaa568c45f6`  
		Last Modified: Wed, 17 Jun 2026 19:08:59 GMT  
		Size: 38.1 MB (38076816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d22dddce52b2e8fe4c8d47dfdcc7d0f3d251629724018878368dd222c4f367`  
		Last Modified: Wed, 17 Jun 2026 19:08:57 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba42194a433cc70a001a8752e6cf29f56a7a5a18e858bf649f2d2f8a2784754`  
		Last Modified: Wed, 17 Jun 2026 19:08:58 GMT  
		Size: 993.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31b7c58f09d1f3fc0b3dfa748cbb6fea6c971f5bb324c281a41ff20a55795a1`  
		Last Modified: Wed, 17 Jun 2026 19:08:58 GMT  
		Size: 212.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c8a9219360be4f6fce3fd23b7d15dba764decfd11a0768fa71c073fbc6d3719`  
		Last Modified: Wed, 17 Jun 2026 19:08:59 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.8-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:ea4375ac34c178c39de99753373365c45e6460843c2d8f1fef421df06ab03738
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **764.8 KB (764759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad016b5295f7a3ee537c727a17d1d8c9ada53ff9c4c534df1b0f04e36692e146`

```dockerfile
```

-	Layers:
	-	`sha256:1c174cf550fdf514622445ad21e8ff0d78845dc1b8f71cd720d7a409ac64fcfe`  
		Last Modified: Wed, 17 Jun 2026 19:08:57 GMT  
		Size: 746.9 KB (746928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1e4cd332229ffff390e01ac2eecfe978d392472fba4d23733e973e8eb5a98b7`  
		Last Modified: Wed, 17 Jun 2026 19:08:57 GMT  
		Size: 17.8 KB (17831 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.11.8-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:a5bc5fa389dfede8204944614296e8545a0419b420acaf885426c928f9f2999c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40833679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90348f3e8a491f71b9186ba4755f917a98ae8db3da892beb539a7cd6340ffb1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Wed, 17 Jun 2026 19:09:03 GMT
RUN apk add --no-cache       bash       ca-certificates       tzdata &&     update-ca-certificates # buildkit
# Wed, 17 Jun 2026 19:09:10 GMT
ARG INFLUXDB_VERSION=1.11.8
# Wed, 17 Jun 2026 19:09:10 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN apk add --no-cache --virtual .build-deps       curl       gnupg       tar &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     case "$(apk --print-arch)" in       x86_64)  ARCH=amd64 ;;       aarch64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_TAR=influxdb-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_TAR}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_TAR}" &&     tar -xf "${INFLUXDB_TAR}" -C /usr/bin       influx       influx_inspect       influxd &&     rm -rf "${INFLUXDB_TAR}"            "${INFLUXDB_ASC}" &&     apk del .build-deps # buildkit
# Wed, 17 Jun 2026 19:09:10 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 17 Jun 2026 19:09:10 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb &&     mkdir -p /var/lib/influxdb &&     mkdir -p /var/log/influxdb &&     chown influxdb:influxdb /var/lib/influxdb &&     chown influxdb:influxdb /var/log/influxdb &&     chmod 0750 /var/lib/influxdb &&     chmod 0750 /var/log/influxdb # buildkit
# Wed, 17 Jun 2026 19:09:10 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 17 Jun 2026 19:09:10 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Jun 2026 19:09:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 17 Jun 2026 19:09:10 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 17 Jun 2026 19:09:10 GMT
USER influxdb
# Wed, 17 Jun 2026 19:09:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Jun 2026 19:09:10 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8e52f635a3778ac44d818c49a3f84210f5c8f83b1d34ef0b08543cd9b1c0e45`  
		Last Modified: Wed, 17 Jun 2026 19:09:19 GMT  
		Size: 1.3 MB (1288157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4812d30f43c3b26b87cf12ced89fbc907a91987a8961624d3c0d1407226f7bf1`  
		Last Modified: Wed, 17 Jun 2026 19:09:20 GMT  
		Size: 35.5 MB (35548349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5832296462a5005fd146abd407941e0db5acd70884af711c3aa525e6cf788279`  
		Last Modified: Wed, 17 Jun 2026 19:09:19 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eabb3d4be798f0876a2d6cf2a87e1e341fe5f8eb5cfe4d07c8945482a3b773d6`  
		Last Modified: Wed, 17 Jun 2026 19:09:19 GMT  
		Size: 993.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0fa739ecfc16dd765b9748309bb1eaa42acb471116a1b89b33cdfc6cefd771`  
		Last Modified: Wed, 17 Jun 2026 19:09:20 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e549da991d5b846a458fd28a9e65802d73b9a6726bec7712891cbed58acb9ed2`  
		Last Modified: Wed, 17 Jun 2026 19:09:20 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.8-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:dc56e1aa75f3c7455fa81a061df5e35ad7ef0608d710f2cded24d1825d7303c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **764.1 KB (764096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0360cee9844dbf169ce0b286d36e449e3677d38fc027cbeb2883f8cd1d10c8d`

```dockerfile
```

-	Layers:
	-	`sha256:c2d132bedb480dce02591cae4f8b7da3c98bae1b4c1a3423459313031f3fb328`  
		Last Modified: Wed, 17 Jun 2026 19:09:19 GMT  
		Size: 746.2 KB (746155 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3378f356dfa6ac0a48c781d77ab78dc5206bd3490a9346c469cbb6b39358a75`  
		Last Modified: Wed, 17 Jun 2026 19:09:19 GMT  
		Size: 17.9 KB (17941 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.11.9-data`

```console
$ docker pull influxdb@sha256:1917bc7f16964129a04d6c9876bc2d5ce250bf3b46932e1497d3466ba19d5200
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11.9-data` - linux; amd64

```console
$ docker pull influxdb@sha256:9d4dfa50a5cff85bbbed2feceff5a8f79db4dc2cf4f8fa47f9d9c475b597e551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114726154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8594f7c38b74fedf6fb67eb8075a17903d3be054dd15982c6ed50be1d322b94d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:40 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 01:43:43 GMT
ENV INFLUXDB_VERSION=1.11.9-c1.11.9
# Tue, 25 Aug 2026 01:43:43 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb* # buildkit
# Tue, 25 Aug 2026 01:43:43 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 25 Aug 2026 01:43:43 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 01:43:43 GMT
VOLUME [/var/lib/influxdb]
# Tue, 25 Aug 2026 01:43:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:43:43 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 25 Aug 2026 01:43:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:43:43 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10c97cb8bb3e5dcda7af3b8b4c7a4453fbe36fb81346bccf2f440f4d98676fc`  
		Last Modified: Tue, 25 Aug 2026 01:43:56 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51661dc6aebf6216c44ca06341a3ec946ec6d7e956949746e8280323de3c0673`  
		Last Modified: Tue, 25 Aug 2026 01:43:57 GMT  
		Size: 42.2 MB (42165715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa6e2d7cb1665f2c16ae5033fe96fed4f362bf8362583e980a5c359cc56dffc`  
		Last Modified: Tue, 25 Aug 2026 01:43:56 GMT  
		Size: 241.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:926b6e505520557453b47625b1e6214872a1b4a747f044695810a48fb739a7ec`  
		Last Modified: Tue, 25 Aug 2026 01:43:55 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25001d217640f060afab6ef11fb02c2ce6a3c62e5f9aabd37a6ee9ed5f3a64c0`  
		Last Modified: Tue, 25 Aug 2026 01:43:56 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.9-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:843ded8ddfdddea8412d40ab74fdd050ec2fc53e118598765786162841aa3a40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4704346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:280d84541588db1696412cbee3e59e1171db3177efbd6afd10531326752ecd5a`

```dockerfile
```

-	Layers:
	-	`sha256:6c0ad1443266931af0812e864ac366d55b08b1da4c3f41958f9f8433ee405254`  
		Last Modified: Tue, 25 Aug 2026 01:43:56 GMT  
		Size: 4.7 MB (4689681 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:567658a8883632c729034f849caf338ec9be1169bd8853197329eaf854e6a327`  
		Last Modified: Tue, 25 Aug 2026 01:43:55 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.11.9-data-alpine`

```console
$ docker pull influxdb@sha256:05d800304d215ecf84bb25350ff12de5ad297370bf5280a3e54cf71e21be06a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11.9-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:55c9ead15eab287c13ecd9ca1eaf82765c16b06853efe65a71ad08f24a8ae79c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 MB (46979364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20bb06d2f5942604b42e3890ec38d47be433ba5d42feac33aba3e4949127b6e6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Wed, 17 Jun 2026 19:09:14 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 17 Jun 2026 19:09:15 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Wed, 17 Jun 2026 19:09:20 GMT
ENV INFLUXDB_VERSION=1.11.9-c1.11.9
# Wed, 17 Jun 2026 19:09:20 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/usr/bin/* &&     cp -a /usr/src/influxdb-*/usr/bin/. /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps # buildkit
# Wed, 17 Jun 2026 19:09:20 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 17 Jun 2026 19:09:20 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 17 Jun 2026 19:09:20 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Jun 2026 19:09:20 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 17 Jun 2026 19:09:20 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 17 Jun 2026 19:09:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Jun 2026 19:09:20 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5862bcdd62e2d554b2fad2d5456a3c8a046cb3855cfd2f5754ea12a2cd681f`  
		Last Modified: Wed, 17 Jun 2026 19:09:30 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e091f4035f674125a7f48ab87797b270c754b4a38bea73467abba0b621a047d1`  
		Last Modified: Wed, 17 Jun 2026 19:09:31 GMT  
		Size: 1.2 MB (1224008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef3b99e566ecb977ecee3a93ea6e3bd6c146e250b950eb5518e5ab036d34e28`  
		Last Modified: Wed, 17 Jun 2026 19:09:32 GMT  
		Size: 42.1 MB (42106434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ace9b011e7624b28cba0ea58b87d25be02c474a7c6b1e44b3fd8c5fdfd2291`  
		Last Modified: Wed, 17 Jun 2026 19:09:31 GMT  
		Size: 239.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edcb78893c0045c43b69f0003ada2856e13d758878e2f7148893549243ad185d`  
		Last Modified: Wed, 17 Jun 2026 19:09:32 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f6e298f6c62fed3fc316d41d6dc47e8e5f77a5e3d16f476b571a13a45b56984`  
		Last Modified: Wed, 17 Jun 2026 19:09:32 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.9-data-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:e78c4dbee3e1e4d8f5b92b1c765dcc0030c8cd9da71c1cfeabf1042af6061e3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **790.0 KB (790035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ac7e748791c139e9797ebc62a8bbe646d6387758bdb35331a6e494c496e9e8e`

```dockerfile
```

-	Layers:
	-	`sha256:796878ad70a58a1f813ef7ccb4f4515e5511bf8bb283ed9ab476d04f8c9851b7`  
		Last Modified: Wed, 17 Jun 2026 19:09:30 GMT  
		Size: 773.4 KB (773439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9427178294decd3fcc0bc40022ea079cdf99a8659595ea41eafd997da6ba1a80`  
		Last Modified: Wed, 17 Jun 2026 19:09:30 GMT  
		Size: 16.6 KB (16596 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.11.9-meta`

```console
$ docker pull influxdb@sha256:fa63bb7ae2d4579dde6bde6303e2a1befaea618cbe1e161caf4aaa5b5b1685f9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11.9-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:26ec47cf4ee30f9be2347a2bb071be776f618dcea23aae181a8b90a24d856015
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.2 MB (91155372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cfd6948fa19fa0fb76661bffb30375e47d5e2b68312bd07bad1456aa20661e0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:44:05 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 25 Aug 2026 01:44:07 GMT
ENV INFLUXDB_VERSION=1.11.9-c1.11.9
# Tue, 25 Aug 2026 01:44:07 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb* # buildkit
# Tue, 25 Aug 2026 01:44:07 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Tue, 25 Aug 2026 01:44:07 GMT
EXPOSE map[8091/tcp:{}]
# Tue, 25 Aug 2026 01:44:07 GMT
VOLUME [/var/lib/influxdb]
# Tue, 25 Aug 2026 01:44:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:44:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:44:07 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fbd250d23873d7affa9b2efbbe0ecca269a06891d816ba1bf090cfeda0c3ebe`  
		Last Modified: Tue, 25 Aug 2026 01:44:16 GMT  
		Size: 5.1 KB (5054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7feae3b6950114f34826e03ad1789c3d29f6121160d18ec18b0c2114ada25f`  
		Last Modified: Tue, 25 Aug 2026 01:44:16 GMT  
		Size: 18.6 MB (18596143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f025d923cfe71fb846953935fafb986f70512fd20bb586f2600a2c9c9ef96e`  
		Last Modified: Tue, 25 Aug 2026 01:44:16 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4efaad829c43e7e086682718a6dc33e2e4ef3e86be882551df4f3f8169edbf0`  
		Last Modified: Tue, 25 Aug 2026 01:44:16 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.9-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:67f349073e55b317a92e071e39f7f1be97ef2fe6bfc7ac27c2f5c187727d661a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4609548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3512682a0786fce6cca74503cae073cc618f05a74e61a7bb248e1f26f7e4f3b9`

```dockerfile
```

-	Layers:
	-	`sha256:1bfaacc83e78df38b7afe0886ac748696e978be017cdb2ee833278c16199e15b`  
		Last Modified: Tue, 25 Aug 2026 01:44:16 GMT  
		Size: 4.6 MB (4596524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12f8a2f9c3690cd2af587bd4afa4682e927aeeec5cb2bac2fe3b3dd001149d48`  
		Last Modified: Tue, 25 Aug 2026 01:44:16 GMT  
		Size: 13.0 KB (13024 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.11.9-meta-alpine`

```console
$ docker pull influxdb@sha256:2c79c1838957b1275866b4788d2722786aaf374f7973b9feade173292ed20c49
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11.9-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:5ca62aa625456723de4e2bc618f8e6eee5ce89c700a378b5f6a1b49236f1fc6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23421968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e796cde2133db033fda1da409382008ff0caf0ecbae85d73297619907dbe4a84`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Wed, 17 Jun 2026 19:09:06 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 17 Jun 2026 19:09:06 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Wed, 17 Jun 2026 19:09:09 GMT
ENV INFLUXDB_VERSION=1.11.9-c1.11.9
# Wed, 17 Jun 2026 19:09:09 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/usr/bin/* &&     cp -a /usr/src/influxdb-*/usr/bin/. /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps # buildkit
# Wed, 17 Jun 2026 19:09:09 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Wed, 17 Jun 2026 19:09:09 GMT
EXPOSE map[8091/tcp:{}]
# Wed, 17 Jun 2026 19:09:09 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Jun 2026 19:09:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 17 Jun 2026 19:09:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Jun 2026 19:09:09 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f9eec4622ef73db795fa5cc70aa2653a14c78739969d135e575cf73e3113ed5`  
		Last Modified: Wed, 17 Jun 2026 19:09:16 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2122fcdda047968eb2a0bc5a9d28668048ba95acdae82a23f277b6ef8c3e3098`  
		Last Modified: Wed, 17 Jun 2026 19:09:16 GMT  
		Size: 1.2 MB (1224002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9525e100b8c7a32d5acd75adce51abe10fe0db7095fbb23de2f9fe7d6336f24`  
		Last Modified: Wed, 17 Jun 2026 19:09:17 GMT  
		Size: 18.6 MB (18550247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:559cff324af895cf8f12332f5175f0a28a8f821751151dc55319a7f81e6564f9`  
		Last Modified: Wed, 17 Jun 2026 19:09:16 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:932ec00e5a123bf424c0bf9537e64df2e1b680d2b4d6f15f602b7832816aeec5`  
		Last Modified: Wed, 17 Jun 2026 19:09:17 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.9-meta-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:26793f70308c6fea31815d8197a65050f2fd4feea11726518c74a777f30b4ad6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.0 KB (696035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aebd49827193101c0f88eef3496c79d47f07a9f1a73395de52b8290fc1616c9`

```dockerfile
```

-	Layers:
	-	`sha256:488c4eb61c5012f08402dd7babfa6f426ce3a8f346870e526c475f17bca0a1b3`  
		Last Modified: Wed, 17 Jun 2026 19:09:16 GMT  
		Size: 681.1 KB (681068 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7e6c8a5b4519ac39e292f93038a4d2840e40e4fbfa18ead418ec076391c5e2f`  
		Last Modified: Wed, 17 Jun 2026 19:09:16 GMT  
		Size: 15.0 KB (14967 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.12`

```console
$ docker pull influxdb@sha256:b86ceeb9b6b0f56061d9a8071e13cef02229db513377952e5e8eb8080a369138
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.12` - linux; amd64

```console
$ docker pull influxdb@sha256:999332c9efe9a40532c730f7b8bfe41efefc075b4a5da5ad2dbae9d31fba8d33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114682916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec301efafd322d5f3a84564de577e834fd1d89234d00c12d0251f8fc9d13c7c9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:42:59 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 25 Aug 2026 01:43:03 GMT
ENV INFLUXDB_VERSION=1.12.4
# Tue, 25 Aug 2026 01:43:03 GMT
ENV INFLUXDB_PR=-1
# Tue, 25 Aug 2026 01:43:03 GMT
ENV INFLUXDB_PV=1.12.4-1
# Tue, 25 Aug 2026 01:43:03 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:03 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 25 Aug 2026 01:43:03 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 01:43:03 GMT
VOLUME [/var/lib/influxdb]
# Tue, 25 Aug 2026 01:43:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:43:03 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 25 Aug 2026 01:43:03 GMT
USER influxdb
# Tue, 25 Aug 2026 01:43:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:43:03 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339530f9332cda327e9e329f5577c37ac0f93f806934128b44e5881af45c5ce8`  
		Last Modified: Tue, 25 Aug 2026 01:43:14 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1d67f4264722e6c1bdb3d8b8173576c7a080a569b502b8146e62fbf39c7ef67`  
		Last Modified: Tue, 25 Aug 2026 01:43:16 GMT  
		Size: 42.1 MB (42126383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f897301a093db482c89ea46234f4da323025ec4ddb26e1dcf90b30429392a953`  
		Last Modified: Tue, 25 Aug 2026 01:43:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612eae2c9e0ad1625b1d315a16e52bfea910f5c682703750a203c98299a5e5c8`  
		Last Modified: Tue, 25 Aug 2026 01:43:14 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27c4c0a47ebbb091f06365c52b1719d10244506fa781649a8956788e38aaaf1`  
		Last Modified: Tue, 25 Aug 2026 01:43:15 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12` - unknown; unknown

```console
$ docker pull influxdb@sha256:0891cb473ac4387045b650b629d9ae1c7aab77890b961a9ac9d9862dd7c341fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4699937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cdb7d752199653d94fe353e0c66ab80713ffdb502c96ca2e619ee94b86ccf90`

```dockerfile
```

-	Layers:
	-	`sha256:be4983b9e61e05fb2565e6c7ad71c9a6ce5991da1d08e35e4b7247288ec88353`  
		Last Modified: Tue, 25 Aug 2026 01:43:15 GMT  
		Size: 4.7 MB (4683408 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7286234723713e52d0c60a758319bce740755c06558efecbdb95ac8a4759b5bb`  
		Last Modified: Tue, 25 Aug 2026 01:43:14 GMT  
		Size: 16.5 KB (16529 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.12` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:67a48494485d40502e71524a1f05a0a8d4c51fd0cb63d9ca8a466f42429e6f0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110769207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad759a5d71d945c51f691244760f86d998f08c578191961f92ea74614d97eac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:47:54 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 25 Aug 2026 01:47:58 GMT
ENV INFLUXDB_VERSION=1.12.4
# Tue, 25 Aug 2026 01:47:58 GMT
ENV INFLUXDB_PR=-1
# Tue, 25 Aug 2026 01:47:58 GMT
ENV INFLUXDB_PV=1.12.4-1
# Tue, 25 Aug 2026 01:47:58 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:47:58 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 25 Aug 2026 01:47:58 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 01:47:58 GMT
VOLUME [/var/lib/influxdb]
# Tue, 25 Aug 2026 01:47:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:47:58 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 25 Aug 2026 01:47:58 GMT
USER influxdb
# Tue, 25 Aug 2026 01:47:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:47:58 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8186c3b0f7a073bad60f8dede220457726638d34fbd683892df8348bf51612f1`  
		Last Modified: Tue, 25 Aug 2026 01:48:12 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fcb4ac0c1193bdf935d4980a5945ef9f2b5d07244cc7533e2edee96686d065e`  
		Last Modified: Tue, 25 Aug 2026 01:48:14 GMT  
		Size: 38.8 MB (38754383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:930a8fe951ea942017c11b2a40f7ac27742962ecd02c83f6bbce196480419060`  
		Last Modified: Tue, 25 Aug 2026 01:48:13 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bbb49066a5bbee06a892d5c0062d0b65a986fb31ef9bb81991d0e181f85cb43`  
		Last Modified: Tue, 25 Aug 2026 01:48:13 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b897e7d666b5838769605f7d19d20c1c153de9bd26c876951e35c1fbf1bab33d`  
		Last Modified: Tue, 25 Aug 2026 01:48:14 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12` - unknown; unknown

```console
$ docker pull influxdb@sha256:f6123ae978419cf0d213240c7abed051800fa74109cf2eb0c0c4a9d42a5582fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4699488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183b20fa74ccc08cde5b448d53d0ddd5eb000ef75aa4235df383e518f79ca192`

```dockerfile
```

-	Layers:
	-	`sha256:14709f6621aa3bd58bbbcae0d5b93d2111812e0d8d8c2ea2cbdf3e69529bc11f`  
		Last Modified: Tue, 25 Aug 2026 01:48:13 GMT  
		Size: 4.7 MB (4682864 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2c112d666a10e9879f54a6d604dff7d5bf483832d29749c281470aacf4bdc20`  
		Last Modified: Tue, 25 Aug 2026 01:48:13 GMT  
		Size: 16.6 KB (16624 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.12-alpine`

```console
$ docker pull influxdb@sha256:7d08136634b8da51fbb5a651b4b0127c1527d9f35c0fd1b8761ee9c5ce258889
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.12-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:a3b8600eeb02763008ec656caba8be042a8afeacf4c747cb5fd3a522710d8ce2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46928702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ab5a726f0cdc6866a5cf7c5ffccb246a1de116c7f474e8948b6df86552e3d99`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:29:10 GMT
RUN apk add --no-cache bash ca-certificates tzdata &&     update-ca-certificates # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
ENV INFLUXDB_VERSION=1.12.4
# Fri, 17 Apr 2026 00:29:15 GMT
ENV INFLUXDB_PR=
# Fri, 17 Apr 2026 00:29:15 GMT
ENV INFLUXDB_PV=1.12.4
# Fri, 17 Apr 2026 00:29:15 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     case "$(apk --print-arch)" in         x86_64)  ARCH=amd64 ;;         aarch64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"         "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     tar -xvf "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influx'             'influxdb-*/influx_inspect'             'influxdb-*/influxd' &&     rm "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"        "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     apk del .build-deps # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb &&     mkdir -p /var/lib/influxdb &&     mkdir -p /var/log/influxdb &&     chown influxdb:influxdb /var/lib/influxdb &&     chown influxdb:influxdb /var/log/influxdb &&     chmod 0750 /var/lib/influxdb &&     chmod 0750 /var/log/influxdb # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
EXPOSE map[8086/tcp:{}]
# Fri, 17 Apr 2026 00:29:15 GMT
VOLUME [/var/lib/influxdb]
# Fri, 17 Apr 2026 00:29:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
USER influxdb
# Fri, 17 Apr 2026 00:29:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 17 Apr 2026 00:29:15 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e5f5636135d43d03ecba2495c5be87f500f43e984887a726c5c982823c7df06`  
		Last Modified: Fri, 17 Apr 2026 00:29:24 GMT  
		Size: 1.2 MB (1224161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7021fe11ae352a5ff9638340af993261c1412280f47c594bc06b23ad0f5a8e`  
		Last Modified: Fri, 17 Apr 2026 00:29:25 GMT  
		Size: 42.1 MB (42054959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1988b8bbb2be28ed54089649c9630841ae6e10f93ccee10b9c97a696a7e75cb5`  
		Last Modified: Fri, 17 Apr 2026 00:29:24 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06fc58ca41b83f65d0150d3693907ee7dffddef2831c8f4c8ba655c96de54d07`  
		Last Modified: Fri, 17 Apr 2026 00:29:24 GMT  
		Size: 992.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:875b13ef487fbbfa7cbd658e9c4db087d9d35bdd978ac347dfda7ea976b61939`  
		Last Modified: Fri, 17 Apr 2026 00:29:25 GMT  
		Size: 212.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d13ae692fa73a5ed1e111faaaa566b7290a52c0dc7b6239615571ada027e9f8a`  
		Last Modified: Fri, 17 Apr 2026 00:29:25 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:c18639da4ee3aa318651f04dc1850176a200484f3ea250724f48178354c9c6ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **779.9 KB (779910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d6b567f557b018dd00e41e6d773f38568fb6fb462abfb9ac8dace8e85163faa`

```dockerfile
```

-	Layers:
	-	`sha256:34675433092d7051c2568a2a49060a8bce5f3378b26b1d62d05e04d421062879`  
		Last Modified: Fri, 17 Apr 2026 00:29:24 GMT  
		Size: 761.2 KB (761192 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:523fdb60f8ce8cd1d7ea153f5f56308503862bc1673a2051efec78452ef2cfd9`  
		Last Modified: Fri, 17 Apr 2026 00:29:23 GMT  
		Size: 18.7 KB (18718 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.12-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:24d700526b0ddf4784407f81c8dad61cd96bf707fe24360f12c9d669effcb2b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43966338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da4c763f3e1f947a6ab02b45b6d56257a131850f32d8d004749a52161f09342c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:30:04 GMT
RUN apk add --no-cache bash ca-certificates tzdata &&     update-ca-certificates # buildkit
# Fri, 17 Apr 2026 00:30:09 GMT
ENV INFLUXDB_VERSION=1.12.4
# Fri, 17 Apr 2026 00:30:09 GMT
ENV INFLUXDB_PR=
# Fri, 17 Apr 2026 00:30:09 GMT
ENV INFLUXDB_PV=1.12.4
# Fri, 17 Apr 2026 00:30:09 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     case "$(apk --print-arch)" in         x86_64)  ARCH=amd64 ;;         aarch64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"         "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     tar -xvf "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influx'             'influxdb-*/influx_inspect'             'influxdb-*/influxd' &&     rm "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"        "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     apk del .build-deps # buildkit
# Fri, 17 Apr 2026 00:30:09 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Fri, 17 Apr 2026 00:30:09 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb &&     mkdir -p /var/lib/influxdb &&     mkdir -p /var/log/influxdb &&     chown influxdb:influxdb /var/lib/influxdb &&     chown influxdb:influxdb /var/log/influxdb &&     chmod 0750 /var/lib/influxdb &&     chmod 0750 /var/log/influxdb # buildkit
# Fri, 17 Apr 2026 00:30:09 GMT
EXPOSE map[8086/tcp:{}]
# Fri, 17 Apr 2026 00:30:09 GMT
VOLUME [/var/lib/influxdb]
# Fri, 17 Apr 2026 00:30:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 17 Apr 2026 00:30:09 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Fri, 17 Apr 2026 00:30:09 GMT
USER influxdb
# Fri, 17 Apr 2026 00:30:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 17 Apr 2026 00:30:09 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6485fbe4c86c7beea4454c9beac448c9bc2d15418646bd15f5804deb9250e2de`  
		Last Modified: Fri, 17 Apr 2026 00:30:19 GMT  
		Size: 1.3 MB (1288257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a57f0cc6d9f8a6c327d9726a8a6af67bb058645e70743b6892991a1adb98c294`  
		Last Modified: Fri, 17 Apr 2026 00:30:19 GMT  
		Size: 38.7 MB (38680908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30dec3520d50f59e9d1064c02eeb05af6b5960b514355331ed6425ddd686ded5`  
		Last Modified: Fri, 17 Apr 2026 00:30:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7e5247083153c5218c789e42f35fea3782be687f56d7636c3fb3aaedea298ea`  
		Last Modified: Fri, 17 Apr 2026 00:30:18 GMT  
		Size: 991.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3582776f3ccf5bb7a6a37d053ac30411dfce856b6f3ff6599626e7a3bf1441`  
		Last Modified: Fri, 17 Apr 2026 00:30:19 GMT  
		Size: 212.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c75eb759c4ceeed5e525aacc2876e85dc22d0bfa9326a91ab91215c6df153a`  
		Last Modified: Fri, 17 Apr 2026 00:30:20 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:55f4dff83f5c7f0fd1e714ae092d77cd3fa55e5a3d2557d7d76363a3901eba53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **779.2 KB (779247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9c649fcdce8d00652e0e92aefb077cb6ddf48ac55255f3c891d9292d2d00cfc`

```dockerfile
```

-	Layers:
	-	`sha256:6ea75a35ef586313f9ae9c658a2b0170872bd5de591e4d51e1641d2c1458b258`  
		Last Modified: Fri, 17 Apr 2026 00:30:18 GMT  
		Size: 760.4 KB (760419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8702f37fef178cf8529101088eb230fa6f264a1a72f46b605176fdbb591453e5`  
		Last Modified: Fri, 17 Apr 2026 00:30:18 GMT  
		Size: 18.8 KB (18828 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.12-data`

```console
$ docker pull influxdb@sha256:9235d8a6c47c211bcc48801f1f0a0c01fad75f9f049fe0277886829323d1ff27
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12-data` - linux; amd64

```console
$ docker pull influxdb@sha256:c560c6fc4a05818e723da08d7422737f6b229efa102a181b9a6a8b98e1c48fab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115745252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:332fe760fd12e5ddc0d94fd858104fa5bc138260d08f4f5d92a3f17c51f25304`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:04 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Tue, 25 Aug 2026 01:43:04 GMT
ENV INFLUXDB_PR=
# Tue, 25 Aug 2026 01:43:04 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Tue, 25 Aug 2026 01:43:04 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-data_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:04 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 25 Aug 2026 01:43:04 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 01:43:04 GMT
VOLUME [/var/lib/influxdb]
# Tue, 25 Aug 2026 01:43:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:43:04 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 25 Aug 2026 01:43:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:43:04 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9236f6e1ba3c62aec3ff9a62e85ee4a7faad6fef56ab74cdfef638a2a5c334d`  
		Last Modified: Tue, 25 Aug 2026 01:43:17 GMT  
		Size: 43.2 MB (43189864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd0b2ff3d3321329ae80b159f3201174985b5234424cce9393b21397406e4b49`  
		Last Modified: Tue, 25 Aug 2026 01:43:16 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89a159a84cca101eee23420359c8b54abf998e9f83a5f0f955faa1135cb21fb9`  
		Last Modified: Tue, 25 Aug 2026 01:43:16 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be61f3bad8f060ed5339c29d27d1e4891189ebedbb6684ae52e5a56278e3197`  
		Last Modified: Tue, 25 Aug 2026 01:43:16 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:f73891a3d24c4b5434530e51eba337ce4b70d6f5d5b2cdd191c4c3e5b0acfedf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4712552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40b0147ea2f973561c124afb118e18ae0c9f107438696158fbfa44cf76c5d8cb`

```dockerfile
```

-	Layers:
	-	`sha256:3106d52563a68fbcf260c8efecd363035ca22d6713ff9bf730db6406cb4139f5`  
		Last Modified: Tue, 25 Aug 2026 01:43:16 GMT  
		Size: 4.7 MB (4698398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e85861b3912b3e51af3e2e315bd8cf155f6dce312afbb88131a797ff56f50359`  
		Last Modified: Tue, 25 Aug 2026 01:43:16 GMT  
		Size: 14.2 KB (14154 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.12-data-alpine`

```console
$ docker pull influxdb@sha256:97455dc1763d0603ac9b2c08bb015eeafa3a4293efdb6da2dcac20989499411b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:9e565c7fd49e5d8f35ed01c97673730f73fe99480f2bcc42df2ebaeb6670e25f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (47997256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63094d0e7597666e3a6319a4c087f71fe682814c16de22d762b1de6dd9c5cca7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:29:12 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Fri, 17 Apr 2026 00:29:15 GMT
ENV INFLUXDB_PR=
# Fri, 17 Apr 2026 00:29:15 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Fri, 17 Apr 2026 00:29:15 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"         "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     tar -xvf "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influx'             'influxdb-*/influx_inspect'             'influxdb-*/influxd' &&     rm "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"        "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     apk del .build-deps # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
EXPOSE map[8086/tcp:{}]
# Fri, 17 Apr 2026 00:29:15 GMT
VOLUME [/var/lib/influxdb]
# Fri, 17 Apr 2026 00:29:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 17 Apr 2026 00:29:15 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc9611369db3ecb1526937d9f72c04921aa31dc4ba3d99a4e3b9c15767aa38c`  
		Last Modified: Fri, 17 Apr 2026 00:29:25 GMT  
		Size: 1.2 MB (1224170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f88fc8e5058960e45aee8b6cac82ff2bd50d7e2137e6cf885c0b4d623ae175b8`  
		Last Modified: Fri, 17 Apr 2026 00:29:26 GMT  
		Size: 43.1 MB (43124440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada70a5a02afde6bb6c3f103fa9ec3a499488396461d706bd57a9bac54ad1dbf`  
		Last Modified: Fri, 17 Apr 2026 00:29:25 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d47be05a8626fbeb060a3ac42397eec5b9faff395d564ed99c70f443120850`  
		Last Modified: Fri, 17 Apr 2026 00:29:25 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2249338bf3d212a5f9560aae8dae54182f0232814622fe938e2ea878e279faab`  
		Last Modified: Fri, 17 Apr 2026 00:29:26 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12-data-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:78a86aa0d4d8e27d8e0afc24b8bac506e70b8877e920a0b0d532fad2c24f6d91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **796.1 KB (796066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eaafdeb7f35414723ace5c8693058a60536ee236f09cb0b7ee8cd56812f99a5`

```dockerfile
```

-	Layers:
	-	`sha256:2c95497e066bdcad88af076d5632e15c891f1c90d79ccc0cfc2ab77eac05e7bb`  
		Last Modified: Fri, 17 Apr 2026 00:29:25 GMT  
		Size: 780.5 KB (780536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:329b5b66f2e9143f7d74aaad874558e3fea3758d13aaf5008df91e8d3021223c`  
		Last Modified: Fri, 17 Apr 2026 00:29:25 GMT  
		Size: 15.5 KB (15530 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.12-meta`

```console
$ docker pull influxdb@sha256:0cf52fe713dd2d657d6d3f3ee8a0d8f91996c0f493a5830a2c0bb29e823bf2a3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:3c9cb3807380eefbafed62bcf8c673417c0a17da8a054bcefc42121b7b3c2281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91939371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a15643e6e89bf39e49428c1e7bb7fb7f7a2d670cccf4f16da27cd4d82ff2589`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:25 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Tue, 25 Aug 2026 01:43:25 GMT
ENV INFLUXDB_PR=
# Tue, 25 Aug 2026 01:43:25 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Tue, 25 Aug 2026 01:43:25 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-meta_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:25 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Tue, 25 Aug 2026 01:43:25 GMT
EXPOSE map[8091/tcp:{}]
# Tue, 25 Aug 2026 01:43:25 GMT
VOLUME [/var/lib/influxdb]
# Tue, 25 Aug 2026 01:43:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:43:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:43:25 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86006cddea68591d57ec12b0482f3d33376e9edcfb635d48a1db1ec1dffb7cba`  
		Last Modified: Tue, 25 Aug 2026 01:43:34 GMT  
		Size: 19.4 MB (19385197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b610f803bfa6f04f4b703f8c96c5fa6d0ef729605097043c9f54c98f022ae4`  
		Last Modified: Tue, 25 Aug 2026 01:43:34 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c3ee9a66526f7724741fc2d703f3a632e07676d0ecfcab3550867b82c1e03e`  
		Last Modified: Tue, 25 Aug 2026 01:43:34 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:d001697724e9ea97f13fe9b772aba18833618c6aa16380daa027b128ab6d2eae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4611130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e30afce3d22462bc4c49942953523a896f645e92c84d40596b50b699a0133a5`

```dockerfile
```

-	Layers:
	-	`sha256:935aea44cb7b1e51fe0458e3ea1c863cdc17df9e09c943d9764fc97dba244040`  
		Last Modified: Tue, 25 Aug 2026 01:43:34 GMT  
		Size: 4.6 MB (4598466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd234e9286bd32e7ee2dc3e94097240b5acc07695f0f9dd62894b9d95877043c`  
		Last Modified: Tue, 25 Aug 2026 01:43:33 GMT  
		Size: 12.7 KB (12664 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.12-meta-alpine`

```console
$ docker pull influxdb@sha256:c1609e4b1a9966a278cbc63e39637d62a3798895d5f9dffb16f56642c345a470
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:0c2d58c85a4eeef69b1067b8385427653ccd49a3c18b2fa5c406ecc061a3eff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24201677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c996d394ebe8422efb6cd5313a8b6d659f4361c8783ba7e2765a3495d82bf9a9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:29:31 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Fri, 17 Apr 2026 00:29:34 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Fri, 17 Apr 2026 00:29:34 GMT
ENV INFLUXDB_PR=
# Fri, 17 Apr 2026 00:29:34 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Fri, 17 Apr 2026 00:29:34 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"         "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     tar -xvf "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influxd-ctl'             'influxdb-*/influxd-meta' &&     rm "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"        "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     apk del .build-deps # buildkit
# Fri, 17 Apr 2026 00:29:34 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Fri, 17 Apr 2026 00:29:34 GMT
EXPOSE map[8091/tcp:{}]
# Fri, 17 Apr 2026 00:29:34 GMT
VOLUME [/var/lib/influxdb]
# Fri, 17 Apr 2026 00:29:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 17 Apr 2026 00:29:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 17 Apr 2026 00:29:34 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4fce14c04b1498e08f014d63ade6e29799ca92f77d6d5aee2e26f723fa47632`  
		Last Modified: Fri, 17 Apr 2026 00:29:41 GMT  
		Size: 1.2 MB (1224167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e592b60a790f783fefc22026e6f186aec24b3fb81e56fe43bc3ad4dfbccf3b`  
		Last Modified: Fri, 17 Apr 2026 00:29:42 GMT  
		Size: 19.3 MB (19330070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1f2ec0dd69b272c781c7c30754b98f78b843600b12cddc731b02a3b58f888a1`  
		Last Modified: Fri, 17 Apr 2026 00:29:41 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edc5145a28bfcd9c82912556bd7085dee977090f80a54a3c6ee097e29382fcbf`  
		Last Modified: Fri, 17 Apr 2026 00:29:41 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12-meta-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:667228df4c2fe4090dfa788f0b272b45189b51414433b171b53980323a0ef648
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.3 KB (695321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b92baa71c20ea018ab004a2abf41df19c1368d9bff15dcda5fa2415c18b67e4`

```dockerfile
```

-	Layers:
	-	`sha256:0b0a0c460b5f111deb27700ed49900ddbe4a0e118ad09843c430e91a8668f979`  
		Last Modified: Fri, 17 Apr 2026 00:29:41 GMT  
		Size: 681.4 KB (681390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7168d592346505ecf69732a4af5308278302c2ca1cc6966560e75037b25b940c`  
		Last Modified: Fri, 17 Apr 2026 00:29:41 GMT  
		Size: 13.9 KB (13931 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.12.4`

```console
$ docker pull influxdb@sha256:b86ceeb9b6b0f56061d9a8071e13cef02229db513377952e5e8eb8080a369138
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.12.4` - linux; amd64

```console
$ docker pull influxdb@sha256:999332c9efe9a40532c730f7b8bfe41efefc075b4a5da5ad2dbae9d31fba8d33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114682916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec301efafd322d5f3a84564de577e834fd1d89234d00c12d0251f8fc9d13c7c9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:42:59 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 25 Aug 2026 01:43:03 GMT
ENV INFLUXDB_VERSION=1.12.4
# Tue, 25 Aug 2026 01:43:03 GMT
ENV INFLUXDB_PR=-1
# Tue, 25 Aug 2026 01:43:03 GMT
ENV INFLUXDB_PV=1.12.4-1
# Tue, 25 Aug 2026 01:43:03 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:03 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 25 Aug 2026 01:43:03 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 01:43:03 GMT
VOLUME [/var/lib/influxdb]
# Tue, 25 Aug 2026 01:43:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:43:03 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 25 Aug 2026 01:43:03 GMT
USER influxdb
# Tue, 25 Aug 2026 01:43:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:43:03 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339530f9332cda327e9e329f5577c37ac0f93f806934128b44e5881af45c5ce8`  
		Last Modified: Tue, 25 Aug 2026 01:43:14 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1d67f4264722e6c1bdb3d8b8173576c7a080a569b502b8146e62fbf39c7ef67`  
		Last Modified: Tue, 25 Aug 2026 01:43:16 GMT  
		Size: 42.1 MB (42126383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f897301a093db482c89ea46234f4da323025ec4ddb26e1dcf90b30429392a953`  
		Last Modified: Tue, 25 Aug 2026 01:43:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612eae2c9e0ad1625b1d315a16e52bfea910f5c682703750a203c98299a5e5c8`  
		Last Modified: Tue, 25 Aug 2026 01:43:14 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27c4c0a47ebbb091f06365c52b1719d10244506fa781649a8956788e38aaaf1`  
		Last Modified: Tue, 25 Aug 2026 01:43:15 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.4` - unknown; unknown

```console
$ docker pull influxdb@sha256:0891cb473ac4387045b650b629d9ae1c7aab77890b961a9ac9d9862dd7c341fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4699937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cdb7d752199653d94fe353e0c66ab80713ffdb502c96ca2e619ee94b86ccf90`

```dockerfile
```

-	Layers:
	-	`sha256:be4983b9e61e05fb2565e6c7ad71c9a6ce5991da1d08e35e4b7247288ec88353`  
		Last Modified: Tue, 25 Aug 2026 01:43:15 GMT  
		Size: 4.7 MB (4683408 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7286234723713e52d0c60a758319bce740755c06558efecbdb95ac8a4759b5bb`  
		Last Modified: Tue, 25 Aug 2026 01:43:14 GMT  
		Size: 16.5 KB (16529 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.12.4` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:67a48494485d40502e71524a1f05a0a8d4c51fd0cb63d9ca8a466f42429e6f0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110769207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad759a5d71d945c51f691244760f86d998f08c578191961f92ea74614d97eac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:47:54 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 25 Aug 2026 01:47:58 GMT
ENV INFLUXDB_VERSION=1.12.4
# Tue, 25 Aug 2026 01:47:58 GMT
ENV INFLUXDB_PR=-1
# Tue, 25 Aug 2026 01:47:58 GMT
ENV INFLUXDB_PV=1.12.4-1
# Tue, 25 Aug 2026 01:47:58 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:47:58 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 25 Aug 2026 01:47:58 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 01:47:58 GMT
VOLUME [/var/lib/influxdb]
# Tue, 25 Aug 2026 01:47:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:47:58 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 25 Aug 2026 01:47:58 GMT
USER influxdb
# Tue, 25 Aug 2026 01:47:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:47:58 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8186c3b0f7a073bad60f8dede220457726638d34fbd683892df8348bf51612f1`  
		Last Modified: Tue, 25 Aug 2026 01:48:12 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fcb4ac0c1193bdf935d4980a5945ef9f2b5d07244cc7533e2edee96686d065e`  
		Last Modified: Tue, 25 Aug 2026 01:48:14 GMT  
		Size: 38.8 MB (38754383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:930a8fe951ea942017c11b2a40f7ac27742962ecd02c83f6bbce196480419060`  
		Last Modified: Tue, 25 Aug 2026 01:48:13 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bbb49066a5bbee06a892d5c0062d0b65a986fb31ef9bb81991d0e181f85cb43`  
		Last Modified: Tue, 25 Aug 2026 01:48:13 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b897e7d666b5838769605f7d19d20c1c153de9bd26c876951e35c1fbf1bab33d`  
		Last Modified: Tue, 25 Aug 2026 01:48:14 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.4` - unknown; unknown

```console
$ docker pull influxdb@sha256:f6123ae978419cf0d213240c7abed051800fa74109cf2eb0c0c4a9d42a5582fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4699488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183b20fa74ccc08cde5b448d53d0ddd5eb000ef75aa4235df383e518f79ca192`

```dockerfile
```

-	Layers:
	-	`sha256:14709f6621aa3bd58bbbcae0d5b93d2111812e0d8d8c2ea2cbdf3e69529bc11f`  
		Last Modified: Tue, 25 Aug 2026 01:48:13 GMT  
		Size: 4.7 MB (4682864 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2c112d666a10e9879f54a6d604dff7d5bf483832d29749c281470aacf4bdc20`  
		Last Modified: Tue, 25 Aug 2026 01:48:13 GMT  
		Size: 16.6 KB (16624 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.12.4-alpine`

```console
$ docker pull influxdb@sha256:7d08136634b8da51fbb5a651b4b0127c1527d9f35c0fd1b8761ee9c5ce258889
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.12.4-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:a3b8600eeb02763008ec656caba8be042a8afeacf4c747cb5fd3a522710d8ce2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46928702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ab5a726f0cdc6866a5cf7c5ffccb246a1de116c7f474e8948b6df86552e3d99`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:29:10 GMT
RUN apk add --no-cache bash ca-certificates tzdata &&     update-ca-certificates # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
ENV INFLUXDB_VERSION=1.12.4
# Fri, 17 Apr 2026 00:29:15 GMT
ENV INFLUXDB_PR=
# Fri, 17 Apr 2026 00:29:15 GMT
ENV INFLUXDB_PV=1.12.4
# Fri, 17 Apr 2026 00:29:15 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     case "$(apk --print-arch)" in         x86_64)  ARCH=amd64 ;;         aarch64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"         "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     tar -xvf "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influx'             'influxdb-*/influx_inspect'             'influxdb-*/influxd' &&     rm "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"        "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     apk del .build-deps # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb &&     mkdir -p /var/lib/influxdb &&     mkdir -p /var/log/influxdb &&     chown influxdb:influxdb /var/lib/influxdb &&     chown influxdb:influxdb /var/log/influxdb &&     chmod 0750 /var/lib/influxdb &&     chmod 0750 /var/log/influxdb # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
EXPOSE map[8086/tcp:{}]
# Fri, 17 Apr 2026 00:29:15 GMT
VOLUME [/var/lib/influxdb]
# Fri, 17 Apr 2026 00:29:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
USER influxdb
# Fri, 17 Apr 2026 00:29:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 17 Apr 2026 00:29:15 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e5f5636135d43d03ecba2495c5be87f500f43e984887a726c5c982823c7df06`  
		Last Modified: Fri, 17 Apr 2026 00:29:24 GMT  
		Size: 1.2 MB (1224161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7021fe11ae352a5ff9638340af993261c1412280f47c594bc06b23ad0f5a8e`  
		Last Modified: Fri, 17 Apr 2026 00:29:25 GMT  
		Size: 42.1 MB (42054959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1988b8bbb2be28ed54089649c9630841ae6e10f93ccee10b9c97a696a7e75cb5`  
		Last Modified: Fri, 17 Apr 2026 00:29:24 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06fc58ca41b83f65d0150d3693907ee7dffddef2831c8f4c8ba655c96de54d07`  
		Last Modified: Fri, 17 Apr 2026 00:29:24 GMT  
		Size: 992.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:875b13ef487fbbfa7cbd658e9c4db087d9d35bdd978ac347dfda7ea976b61939`  
		Last Modified: Fri, 17 Apr 2026 00:29:25 GMT  
		Size: 212.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d13ae692fa73a5ed1e111faaaa566b7290a52c0dc7b6239615571ada027e9f8a`  
		Last Modified: Fri, 17 Apr 2026 00:29:25 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.4-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:c18639da4ee3aa318651f04dc1850176a200484f3ea250724f48178354c9c6ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **779.9 KB (779910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d6b567f557b018dd00e41e6d773f38568fb6fb462abfb9ac8dace8e85163faa`

```dockerfile
```

-	Layers:
	-	`sha256:34675433092d7051c2568a2a49060a8bce5f3378b26b1d62d05e04d421062879`  
		Last Modified: Fri, 17 Apr 2026 00:29:24 GMT  
		Size: 761.2 KB (761192 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:523fdb60f8ce8cd1d7ea153f5f56308503862bc1673a2051efec78452ef2cfd9`  
		Last Modified: Fri, 17 Apr 2026 00:29:23 GMT  
		Size: 18.7 KB (18718 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.12.4-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:24d700526b0ddf4784407f81c8dad61cd96bf707fe24360f12c9d669effcb2b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43966338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da4c763f3e1f947a6ab02b45b6d56257a131850f32d8d004749a52161f09342c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:30:04 GMT
RUN apk add --no-cache bash ca-certificates tzdata &&     update-ca-certificates # buildkit
# Fri, 17 Apr 2026 00:30:09 GMT
ENV INFLUXDB_VERSION=1.12.4
# Fri, 17 Apr 2026 00:30:09 GMT
ENV INFLUXDB_PR=
# Fri, 17 Apr 2026 00:30:09 GMT
ENV INFLUXDB_PV=1.12.4
# Fri, 17 Apr 2026 00:30:09 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     case "$(apk --print-arch)" in         x86_64)  ARCH=amd64 ;;         aarch64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"         "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     tar -xvf "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influx'             'influxdb-*/influx_inspect'             'influxdb-*/influxd' &&     rm "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"        "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     apk del .build-deps # buildkit
# Fri, 17 Apr 2026 00:30:09 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Fri, 17 Apr 2026 00:30:09 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb &&     mkdir -p /var/lib/influxdb &&     mkdir -p /var/log/influxdb &&     chown influxdb:influxdb /var/lib/influxdb &&     chown influxdb:influxdb /var/log/influxdb &&     chmod 0750 /var/lib/influxdb &&     chmod 0750 /var/log/influxdb # buildkit
# Fri, 17 Apr 2026 00:30:09 GMT
EXPOSE map[8086/tcp:{}]
# Fri, 17 Apr 2026 00:30:09 GMT
VOLUME [/var/lib/influxdb]
# Fri, 17 Apr 2026 00:30:09 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 17 Apr 2026 00:30:09 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Fri, 17 Apr 2026 00:30:09 GMT
USER influxdb
# Fri, 17 Apr 2026 00:30:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 17 Apr 2026 00:30:09 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6485fbe4c86c7beea4454c9beac448c9bc2d15418646bd15f5804deb9250e2de`  
		Last Modified: Fri, 17 Apr 2026 00:30:19 GMT  
		Size: 1.3 MB (1288257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a57f0cc6d9f8a6c327d9726a8a6af67bb058645e70743b6892991a1adb98c294`  
		Last Modified: Fri, 17 Apr 2026 00:30:19 GMT  
		Size: 38.7 MB (38680908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30dec3520d50f59e9d1064c02eeb05af6b5960b514355331ed6425ddd686ded5`  
		Last Modified: Fri, 17 Apr 2026 00:30:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7e5247083153c5218c789e42f35fea3782be687f56d7636c3fb3aaedea298ea`  
		Last Modified: Fri, 17 Apr 2026 00:30:18 GMT  
		Size: 991.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3582776f3ccf5bb7a6a37d053ac30411dfce856b6f3ff6599626e7a3bf1441`  
		Last Modified: Fri, 17 Apr 2026 00:30:19 GMT  
		Size: 212.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c75eb759c4ceeed5e525aacc2876e85dc22d0bfa9326a91ab91215c6df153a`  
		Last Modified: Fri, 17 Apr 2026 00:30:20 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.4-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:55f4dff83f5c7f0fd1e714ae092d77cd3fa55e5a3d2557d7d76363a3901eba53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **779.2 KB (779247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9c649fcdce8d00652e0e92aefb077cb6ddf48ac55255f3c891d9292d2d00cfc`

```dockerfile
```

-	Layers:
	-	`sha256:6ea75a35ef586313f9ae9c658a2b0170872bd5de591e4d51e1641d2c1458b258`  
		Last Modified: Fri, 17 Apr 2026 00:30:18 GMT  
		Size: 760.4 KB (760419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8702f37fef178cf8529101088eb230fa6f264a1a72f46b605176fdbb591453e5`  
		Last Modified: Fri, 17 Apr 2026 00:30:18 GMT  
		Size: 18.8 KB (18828 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.12.4-data`

```console
$ docker pull influxdb@sha256:9235d8a6c47c211bcc48801f1f0a0c01fad75f9f049fe0277886829323d1ff27
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12.4-data` - linux; amd64

```console
$ docker pull influxdb@sha256:c560c6fc4a05818e723da08d7422737f6b229efa102a181b9a6a8b98e1c48fab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115745252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:332fe760fd12e5ddc0d94fd858104fa5bc138260d08f4f5d92a3f17c51f25304`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:04 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Tue, 25 Aug 2026 01:43:04 GMT
ENV INFLUXDB_PR=
# Tue, 25 Aug 2026 01:43:04 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Tue, 25 Aug 2026 01:43:04 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-data_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:04 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 25 Aug 2026 01:43:04 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 01:43:04 GMT
VOLUME [/var/lib/influxdb]
# Tue, 25 Aug 2026 01:43:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:43:04 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 25 Aug 2026 01:43:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:43:04 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9236f6e1ba3c62aec3ff9a62e85ee4a7faad6fef56ab74cdfef638a2a5c334d`  
		Last Modified: Tue, 25 Aug 2026 01:43:17 GMT  
		Size: 43.2 MB (43189864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd0b2ff3d3321329ae80b159f3201174985b5234424cce9393b21397406e4b49`  
		Last Modified: Tue, 25 Aug 2026 01:43:16 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89a159a84cca101eee23420359c8b54abf998e9f83a5f0f955faa1135cb21fb9`  
		Last Modified: Tue, 25 Aug 2026 01:43:16 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be61f3bad8f060ed5339c29d27d1e4891189ebedbb6684ae52e5a56278e3197`  
		Last Modified: Tue, 25 Aug 2026 01:43:16 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.4-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:f73891a3d24c4b5434530e51eba337ce4b70d6f5d5b2cdd191c4c3e5b0acfedf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4712552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40b0147ea2f973561c124afb118e18ae0c9f107438696158fbfa44cf76c5d8cb`

```dockerfile
```

-	Layers:
	-	`sha256:3106d52563a68fbcf260c8efecd363035ca22d6713ff9bf730db6406cb4139f5`  
		Last Modified: Tue, 25 Aug 2026 01:43:16 GMT  
		Size: 4.7 MB (4698398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e85861b3912b3e51af3e2e315bd8cf155f6dce312afbb88131a797ff56f50359`  
		Last Modified: Tue, 25 Aug 2026 01:43:16 GMT  
		Size: 14.2 KB (14154 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.12.4-data-alpine`

```console
$ docker pull influxdb@sha256:97455dc1763d0603ac9b2c08bb015eeafa3a4293efdb6da2dcac20989499411b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12.4-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:9e565c7fd49e5d8f35ed01c97673730f73fe99480f2bcc42df2ebaeb6670e25f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (47997256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63094d0e7597666e3a6319a4c087f71fe682814c16de22d762b1de6dd9c5cca7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:29:12 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Fri, 17 Apr 2026 00:29:15 GMT
ENV INFLUXDB_PR=
# Fri, 17 Apr 2026 00:29:15 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Fri, 17 Apr 2026 00:29:15 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"         "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     tar -xvf "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influx'             'influxdb-*/influx_inspect'             'influxdb-*/influxd' &&     rm "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"        "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     apk del .build-deps # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
EXPOSE map[8086/tcp:{}]
# Fri, 17 Apr 2026 00:29:15 GMT
VOLUME [/var/lib/influxdb]
# Fri, 17 Apr 2026 00:29:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 17 Apr 2026 00:29:15 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc9611369db3ecb1526937d9f72c04921aa31dc4ba3d99a4e3b9c15767aa38c`  
		Last Modified: Fri, 17 Apr 2026 00:29:25 GMT  
		Size: 1.2 MB (1224170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f88fc8e5058960e45aee8b6cac82ff2bd50d7e2137e6cf885c0b4d623ae175b8`  
		Last Modified: Fri, 17 Apr 2026 00:29:26 GMT  
		Size: 43.1 MB (43124440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada70a5a02afde6bb6c3f103fa9ec3a499488396461d706bd57a9bac54ad1dbf`  
		Last Modified: Fri, 17 Apr 2026 00:29:25 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d47be05a8626fbeb060a3ac42397eec5b9faff395d564ed99c70f443120850`  
		Last Modified: Fri, 17 Apr 2026 00:29:25 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2249338bf3d212a5f9560aae8dae54182f0232814622fe938e2ea878e279faab`  
		Last Modified: Fri, 17 Apr 2026 00:29:26 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.4-data-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:78a86aa0d4d8e27d8e0afc24b8bac506e70b8877e920a0b0d532fad2c24f6d91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **796.1 KB (796066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eaafdeb7f35414723ace5c8693058a60536ee236f09cb0b7ee8cd56812f99a5`

```dockerfile
```

-	Layers:
	-	`sha256:2c95497e066bdcad88af076d5632e15c891f1c90d79ccc0cfc2ab77eac05e7bb`  
		Last Modified: Fri, 17 Apr 2026 00:29:25 GMT  
		Size: 780.5 KB (780536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:329b5b66f2e9143f7d74aaad874558e3fea3758d13aaf5008df91e8d3021223c`  
		Last Modified: Fri, 17 Apr 2026 00:29:25 GMT  
		Size: 15.5 KB (15530 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.12.4-meta`

```console
$ docker pull influxdb@sha256:0cf52fe713dd2d657d6d3f3ee8a0d8f91996c0f493a5830a2c0bb29e823bf2a3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12.4-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:3c9cb3807380eefbafed62bcf8c673417c0a17da8a054bcefc42121b7b3c2281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91939371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a15643e6e89bf39e49428c1e7bb7fb7f7a2d670cccf4f16da27cd4d82ff2589`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:25 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Tue, 25 Aug 2026 01:43:25 GMT
ENV INFLUXDB_PR=
# Tue, 25 Aug 2026 01:43:25 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Tue, 25 Aug 2026 01:43:25 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-meta_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:25 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Tue, 25 Aug 2026 01:43:25 GMT
EXPOSE map[8091/tcp:{}]
# Tue, 25 Aug 2026 01:43:25 GMT
VOLUME [/var/lib/influxdb]
# Tue, 25 Aug 2026 01:43:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:43:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:43:25 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86006cddea68591d57ec12b0482f3d33376e9edcfb635d48a1db1ec1dffb7cba`  
		Last Modified: Tue, 25 Aug 2026 01:43:34 GMT  
		Size: 19.4 MB (19385197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b610f803bfa6f04f4b703f8c96c5fa6d0ef729605097043c9f54c98f022ae4`  
		Last Modified: Tue, 25 Aug 2026 01:43:34 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c3ee9a66526f7724741fc2d703f3a632e07676d0ecfcab3550867b82c1e03e`  
		Last Modified: Tue, 25 Aug 2026 01:43:34 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.4-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:d001697724e9ea97f13fe9b772aba18833618c6aa16380daa027b128ab6d2eae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4611130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e30afce3d22462bc4c49942953523a896f645e92c84d40596b50b699a0133a5`

```dockerfile
```

-	Layers:
	-	`sha256:935aea44cb7b1e51fe0458e3ea1c863cdc17df9e09c943d9764fc97dba244040`  
		Last Modified: Tue, 25 Aug 2026 01:43:34 GMT  
		Size: 4.6 MB (4598466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd234e9286bd32e7ee2dc3e94097240b5acc07695f0f9dd62894b9d95877043c`  
		Last Modified: Tue, 25 Aug 2026 01:43:33 GMT  
		Size: 12.7 KB (12664 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.12.4-meta-alpine`

```console
$ docker pull influxdb@sha256:c1609e4b1a9966a278cbc63e39637d62a3798895d5f9dffb16f56642c345a470
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12.4-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:0c2d58c85a4eeef69b1067b8385427653ccd49a3c18b2fa5c406ecc061a3eff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24201677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c996d394ebe8422efb6cd5313a8b6d659f4361c8783ba7e2765a3495d82bf9a9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:29:31 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Fri, 17 Apr 2026 00:29:34 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Fri, 17 Apr 2026 00:29:34 GMT
ENV INFLUXDB_PR=
# Fri, 17 Apr 2026 00:29:34 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Fri, 17 Apr 2026 00:29:34 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"         "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     tar -xvf "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influxd-ctl'             'influxdb-*/influxd-meta' &&     rm "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"        "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     apk del .build-deps # buildkit
# Fri, 17 Apr 2026 00:29:34 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Fri, 17 Apr 2026 00:29:34 GMT
EXPOSE map[8091/tcp:{}]
# Fri, 17 Apr 2026 00:29:34 GMT
VOLUME [/var/lib/influxdb]
# Fri, 17 Apr 2026 00:29:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 17 Apr 2026 00:29:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 17 Apr 2026 00:29:34 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4fce14c04b1498e08f014d63ade6e29799ca92f77d6d5aee2e26f723fa47632`  
		Last Modified: Fri, 17 Apr 2026 00:29:41 GMT  
		Size: 1.2 MB (1224167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e592b60a790f783fefc22026e6f186aec24b3fb81e56fe43bc3ad4dfbccf3b`  
		Last Modified: Fri, 17 Apr 2026 00:29:42 GMT  
		Size: 19.3 MB (19330070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1f2ec0dd69b272c781c7c30754b98f78b843600b12cddc731b02a3b58f888a1`  
		Last Modified: Fri, 17 Apr 2026 00:29:41 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edc5145a28bfcd9c82912556bd7085dee977090f80a54a3c6ee097e29382fcbf`  
		Last Modified: Fri, 17 Apr 2026 00:29:41 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.4-meta-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:667228df4c2fe4090dfa788f0b272b45189b51414433b171b53980323a0ef648
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.3 KB (695321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b92baa71c20ea018ab004a2abf41df19c1368d9bff15dcda5fa2415c18b67e4`

```dockerfile
```

-	Layers:
	-	`sha256:0b0a0c460b5f111deb27700ed49900ddbe4a0e118ad09843c430e91a8668f979`  
		Last Modified: Fri, 17 Apr 2026 00:29:41 GMT  
		Size: 681.4 KB (681390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7168d592346505ecf69732a4af5308278302c2ca1cc6966560e75037b25b940c`  
		Last Modified: Fri, 17 Apr 2026 00:29:41 GMT  
		Size: 13.9 KB (13931 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.13-data`

```console
$ docker pull influxdb@sha256:34e97857f1339a0ba01e9568b534ee52ee463d8865d3c53b09dfb4a95bd39992
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.13-data` - linux; amd64

```console
$ docker pull influxdb@sha256:4d1208cd1182c3c58ac9cf0d0878d6a188e91f334060e4362c30d78f71052f0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126861062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4221ab448b3088b3d9dfb6364405791f30646f55aa473b5f8d2fd77d11404d39`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:42:39 GMT
ENV INFLUXDB_VERSION=1.13.0-c1.13.0
# Tue, 25 Aug 2026 01:42:39 GMT
ENV INFLUXDB_PR=
# Tue, 25 Aug 2026 01:42:39 GMT
ENV INFLUXDB_PV=1.13.0-c1.13.0
# Tue, 25 Aug 2026 01:42:39 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-data_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:42:39 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 25 Aug 2026 01:42:39 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 01:42:39 GMT
VOLUME [/var/lib/influxdb]
# Tue, 25 Aug 2026 01:42:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:42:39 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 25 Aug 2026 01:42:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:42:39 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094237b9711b629dacc9ba6cbefa57255563472ece4e48bfece4373e8bec22c7`  
		Last Modified: Tue, 25 Aug 2026 01:42:54 GMT  
		Size: 54.3 MB (54305678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b799c1de610c725cdfaea12d72ed5ab467c4f506f490927043fcd55824094f`  
		Last Modified: Tue, 25 Aug 2026 01:42:52 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea43933d4e6db81cb80725430dfe08c4acc7fb7227680a7edbbf1dd243a1900`  
		Last Modified: Tue, 25 Aug 2026 01:42:53 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10db67fcff4d7fd5af9d850e1b0cbad668f5c51ede12ea6cf4db0e610620f91`  
		Last Modified: Tue, 25 Aug 2026 01:42:53 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:1e316ba61cfd10944936563ed5e3e53907c89fc85093f17e29dfa0d1cf5fa080
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4724146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60a5ca7dbee174fa418d37ffcde5556ea19ed7911f4277720e546307a2685cb5`

```dockerfile
```

-	Layers:
	-	`sha256:9adc946d127e25b26fa8c95f959dc992f10eeb81c686c7d845fbd17af36a4123`  
		Last Modified: Tue, 25 Aug 2026 01:42:53 GMT  
		Size: 4.7 MB (4710290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:075696811446c5ecea9410ffeb1dbad056de6c713b7bb4180dc25da483712fac`  
		Last Modified: Tue, 25 Aug 2026 01:42:52 GMT  
		Size: 13.9 KB (13856 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.13-data-alpine`

```console
$ docker pull influxdb@sha256:0b0f4383d1d8b754b654f1ad8a871392effa9f7e3a021c0d210c0ca086448eb3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.13-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:caa972e923b812ba77ae6e581e3968d662a96e0a222c79339aa0381489585a7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59310681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a147c21c072c52900c3578a2ab04ac2e08771faaeac664d10b9a922462fdfeb1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 17:12:07 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Fri, 21 Aug 2026 17:12:11 GMT
ENV INFLUXDB_VERSION=1.13.0-c1.13.0
# Fri, 21 Aug 2026 17:12:11 GMT
ENV INFLUXDB_PR=
# Fri, 21 Aug 2026 17:12:11 GMT
ENV INFLUXDB_PV=1.13.0-c1.13.0
# Fri, 21 Aug 2026 17:12:11 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"         "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     tar -xvf "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influx'             'influxdb-*/influx_inspect'             'influxdb-*/influxd' &&     rm "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"        "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     apk del .build-deps # buildkit
# Fri, 21 Aug 2026 17:12:11 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Fri, 21 Aug 2026 17:12:11 GMT
EXPOSE map[8086/tcp:{}]
# Fri, 21 Aug 2026 17:12:11 GMT
VOLUME [/var/lib/influxdb]
# Fri, 21 Aug 2026 17:12:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 17:12:11 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Fri, 21 Aug 2026 17:12:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Aug 2026 17:12:11 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c991414ea4579dba1ba4f84fa6aac0fd75fef4c432328a9a1ec9299c29a8072`  
		Last Modified: Fri, 21 Aug 2026 17:12:23 GMT  
		Size: 1.2 MB (1221298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ff069c524f443c44413dcca79abdc431516b11de7dd49e62337087f9219c279`  
		Last Modified: Fri, 21 Aug 2026 17:12:24 GMT  
		Size: 54.2 MB (54243189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6d2c5ab907d83d9128be2020e72c72df952376c7e7389cb74227639f065249`  
		Last Modified: Fri, 21 Aug 2026 17:12:22 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae574959f4ad5afc10051f3354f2868e42bed229902ef57218ac2819c3784ce9`  
		Last Modified: Fri, 21 Aug 2026 17:12:22 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e569a2a7853e04f344b624b6a419bd0aa59f035dc83601acdbc92eb951f0580c`  
		Last Modified: Fri, 21 Aug 2026 17:12:24 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13-data-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:fb3bd7190361367a61f25981015842a029739916442e84748971944b5f94e0fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **793.4 KB (793415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4604a5cf92c9c6e3c769c12209f2356c303bf472b65355b219c43aeba41d270`

```dockerfile
```

-	Layers:
	-	`sha256:abc678c8098facc4c9d6fe5486366b6c4a9fabbb728935b89c608e00e133380f`  
		Last Modified: Fri, 21 Aug 2026 17:12:23 GMT  
		Size: 778.2 KB (778199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdd7b5ef45a202802b5517d8206a97aa8cc33262cc9e7ad0d0629f964ec4388b`  
		Last Modified: Fri, 21 Aug 2026 17:12:22 GMT  
		Size: 15.2 KB (15216 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.13-meta`

```console
$ docker pull influxdb@sha256:4c9e467a719c117890f097e79c071eb951c043de9cbed5b728a1fd21a99ebacf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.13-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:2645cb72b9d6ae21d9a3c906b7da9f191cbe1e53844ab56ce4796bea60ea6cda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96281392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24e1cd75b1bde59091fd2b2237a41c7237635ef78cb8770ac2d724be57acf7a2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:42:38 GMT
ENV INFLUXDB_VERSION=1.13.0-c1.13.0
# Tue, 25 Aug 2026 01:42:38 GMT
ENV INFLUXDB_PR=
# Tue, 25 Aug 2026 01:42:38 GMT
ENV INFLUXDB_PV=1.13.0-c1.13.0
# Tue, 25 Aug 2026 01:42:38 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-meta_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:42:38 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Tue, 25 Aug 2026 01:42:38 GMT
EXPOSE map[8091/tcp:{}]
# Tue, 25 Aug 2026 01:42:38 GMT
VOLUME [/var/lib/influxdb]
# Tue, 25 Aug 2026 01:42:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:42:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:42:38 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed75a2852fef2a6458e653337060477a029ada4a28f44e50069b5fc6f421b548`  
		Last Modified: Tue, 25 Aug 2026 01:42:52 GMT  
		Size: 23.7 MB (23727217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe010942aee509eeda142eb783897d1428b4ade3b2576fe18017eb0192d2fd8c`  
		Last Modified: Tue, 25 Aug 2026 01:42:51 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd33b62f066ed20b81836c4d4f8cb1b4e146d400536da875bc4aa05a5f03d2f`  
		Last Modified: Tue, 25 Aug 2026 01:42:52 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:7162cb30016e0406fce6284d0bcd6f4d5865db85e15be6104cd535546547e598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4614696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9709e7bd51037eb96e233f727dcd93d5686ae361f8c556f77719d5abe8ebac8c`

```dockerfile
```

-	Layers:
	-	`sha256:b8f415f9f5c9a6cf8243b7f839970c6f51d6ca80815586daa3a85984789a51a3`  
		Last Modified: Tue, 25 Aug 2026 01:42:52 GMT  
		Size: 4.6 MB (4602330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:417f944ebd3d1798c89b3bab1c589262ce704f144adf5232999187149345ad78`  
		Last Modified: Tue, 25 Aug 2026 01:42:52 GMT  
		Size: 12.4 KB (12366 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.13-meta-alpine`

```console
$ docker pull influxdb@sha256:3fce5a458269df01e78bfee5518ef40042dee7d0e5a83debc8cd4db64a696e5a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.13-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:cb5f277a51020f69b3452a6f2f484b20b13fcc6260b7ef5fb74bdfe67baa9630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.7 MB (28735863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2ccabab63a55130d801f1493802b9499bae4d47ad05075b5f5c0f312daa29e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 17:12:32 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Fri, 21 Aug 2026 17:12:35 GMT
ENV INFLUXDB_VERSION=1.13.0-c1.13.0
# Fri, 21 Aug 2026 17:12:35 GMT
ENV INFLUXDB_PR=
# Fri, 21 Aug 2026 17:12:35 GMT
ENV INFLUXDB_PV=1.13.0-c1.13.0
# Fri, 21 Aug 2026 17:12:35 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"         "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     tar -xvf "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influxd-ctl'             'influxdb-*/influxd-meta' &&     rm "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"        "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     apk del .build-deps # buildkit
# Fri, 21 Aug 2026 17:12:35 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Fri, 21 Aug 2026 17:12:35 GMT
EXPOSE map[8091/tcp:{}]
# Fri, 21 Aug 2026 17:12:35 GMT
VOLUME [/var/lib/influxdb]
# Fri, 21 Aug 2026 17:12:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 17:12:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Aug 2026 17:12:35 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60762b3298a779bfcffbc600fe1eae43b10077180dbc9e68b0aeb50b24c6d149`  
		Last Modified: Fri, 21 Aug 2026 17:12:43 GMT  
		Size: 1.2 MB (1221273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a86e73e2e9cf9f06ec9c8d6b086e81175467df14880cec7fee114c5e2a7f90ea`  
		Last Modified: Fri, 21 Aug 2026 17:12:44 GMT  
		Size: 23.7 MB (23669601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8273d7807dbf689b6b8a5c8b3c9dccb4252a5f6cd19044f904eb351836adc569`  
		Last Modified: Fri, 21 Aug 2026 17:12:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b08bc66603bc3c7bc891903afd8bbd28915aaeaef2f6491f8914253234202ca`  
		Last Modified: Fri, 21 Aug 2026 17:12:43 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13-meta-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:c25d028a184ff3a66ff0cf358ac12c98f982e92929b786f144c6c977b424c9e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **684.6 KB (684645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9225e3c378dbe96fc9502bc4306a22f269189dd2d4af546d9cc858168013810`

```dockerfile
```

-	Layers:
	-	`sha256:258aea5f4f233210e49578b571a8101a7e56b835bfd03ce3c295f3196951f09a`  
		Last Modified: Fri, 21 Aug 2026 17:12:43 GMT  
		Size: 671.0 KB (671025 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe61bbd4b15a52bed4fa59dccf256a7b7855a7e2c79e06590bc7bb73dbf2dd9a`  
		Last Modified: Fri, 21 Aug 2026 17:12:43 GMT  
		Size: 13.6 KB (13620 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.13.0-data`

```console
$ docker pull influxdb@sha256:34e97857f1339a0ba01e9568b534ee52ee463d8865d3c53b09dfb4a95bd39992
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.13.0-data` - linux; amd64

```console
$ docker pull influxdb@sha256:4d1208cd1182c3c58ac9cf0d0878d6a188e91f334060e4362c30d78f71052f0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126861062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4221ab448b3088b3d9dfb6364405791f30646f55aa473b5f8d2fd77d11404d39`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:42:39 GMT
ENV INFLUXDB_VERSION=1.13.0-c1.13.0
# Tue, 25 Aug 2026 01:42:39 GMT
ENV INFLUXDB_PR=
# Tue, 25 Aug 2026 01:42:39 GMT
ENV INFLUXDB_PV=1.13.0-c1.13.0
# Tue, 25 Aug 2026 01:42:39 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-data_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:42:39 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 25 Aug 2026 01:42:39 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 01:42:39 GMT
VOLUME [/var/lib/influxdb]
# Tue, 25 Aug 2026 01:42:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:42:39 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 25 Aug 2026 01:42:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:42:39 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094237b9711b629dacc9ba6cbefa57255563472ece4e48bfece4373e8bec22c7`  
		Last Modified: Tue, 25 Aug 2026 01:42:54 GMT  
		Size: 54.3 MB (54305678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b799c1de610c725cdfaea12d72ed5ab467c4f506f490927043fcd55824094f`  
		Last Modified: Tue, 25 Aug 2026 01:42:52 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea43933d4e6db81cb80725430dfe08c4acc7fb7227680a7edbbf1dd243a1900`  
		Last Modified: Tue, 25 Aug 2026 01:42:53 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10db67fcff4d7fd5af9d850e1b0cbad668f5c51ede12ea6cf4db0e610620f91`  
		Last Modified: Tue, 25 Aug 2026 01:42:53 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13.0-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:1e316ba61cfd10944936563ed5e3e53907c89fc85093f17e29dfa0d1cf5fa080
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4724146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60a5ca7dbee174fa418d37ffcde5556ea19ed7911f4277720e546307a2685cb5`

```dockerfile
```

-	Layers:
	-	`sha256:9adc946d127e25b26fa8c95f959dc992f10eeb81c686c7d845fbd17af36a4123`  
		Last Modified: Tue, 25 Aug 2026 01:42:53 GMT  
		Size: 4.7 MB (4710290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:075696811446c5ecea9410ffeb1dbad056de6c713b7bb4180dc25da483712fac`  
		Last Modified: Tue, 25 Aug 2026 01:42:52 GMT  
		Size: 13.9 KB (13856 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.13.0-data-alpine`

```console
$ docker pull influxdb@sha256:0b0f4383d1d8b754b654f1ad8a871392effa9f7e3a021c0d210c0ca086448eb3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.13.0-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:caa972e923b812ba77ae6e581e3968d662a96e0a222c79339aa0381489585a7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59310681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a147c21c072c52900c3578a2ab04ac2e08771faaeac664d10b9a922462fdfeb1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 17:12:07 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Fri, 21 Aug 2026 17:12:11 GMT
ENV INFLUXDB_VERSION=1.13.0-c1.13.0
# Fri, 21 Aug 2026 17:12:11 GMT
ENV INFLUXDB_PR=
# Fri, 21 Aug 2026 17:12:11 GMT
ENV INFLUXDB_PV=1.13.0-c1.13.0
# Fri, 21 Aug 2026 17:12:11 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"         "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     tar -xvf "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influx'             'influxdb-*/influx_inspect'             'influxdb-*/influxd' &&     rm "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"        "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     apk del .build-deps # buildkit
# Fri, 21 Aug 2026 17:12:11 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Fri, 21 Aug 2026 17:12:11 GMT
EXPOSE map[8086/tcp:{}]
# Fri, 21 Aug 2026 17:12:11 GMT
VOLUME [/var/lib/influxdb]
# Fri, 21 Aug 2026 17:12:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 17:12:11 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Fri, 21 Aug 2026 17:12:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Aug 2026 17:12:11 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c991414ea4579dba1ba4f84fa6aac0fd75fef4c432328a9a1ec9299c29a8072`  
		Last Modified: Fri, 21 Aug 2026 17:12:23 GMT  
		Size: 1.2 MB (1221298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ff069c524f443c44413dcca79abdc431516b11de7dd49e62337087f9219c279`  
		Last Modified: Fri, 21 Aug 2026 17:12:24 GMT  
		Size: 54.2 MB (54243189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6d2c5ab907d83d9128be2020e72c72df952376c7e7389cb74227639f065249`  
		Last Modified: Fri, 21 Aug 2026 17:12:22 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae574959f4ad5afc10051f3354f2868e42bed229902ef57218ac2819c3784ce9`  
		Last Modified: Fri, 21 Aug 2026 17:12:22 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e569a2a7853e04f344b624b6a419bd0aa59f035dc83601acdbc92eb951f0580c`  
		Last Modified: Fri, 21 Aug 2026 17:12:24 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13.0-data-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:fb3bd7190361367a61f25981015842a029739916442e84748971944b5f94e0fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **793.4 KB (793415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4604a5cf92c9c6e3c769c12209f2356c303bf472b65355b219c43aeba41d270`

```dockerfile
```

-	Layers:
	-	`sha256:abc678c8098facc4c9d6fe5486366b6c4a9fabbb728935b89c608e00e133380f`  
		Last Modified: Fri, 21 Aug 2026 17:12:23 GMT  
		Size: 778.2 KB (778199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdd7b5ef45a202802b5517d8206a97aa8cc33262cc9e7ad0d0629f964ec4388b`  
		Last Modified: Fri, 21 Aug 2026 17:12:22 GMT  
		Size: 15.2 KB (15216 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.13.0-meta`

```console
$ docker pull influxdb@sha256:4c9e467a719c117890f097e79c071eb951c043de9cbed5b728a1fd21a99ebacf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.13.0-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:2645cb72b9d6ae21d9a3c906b7da9f191cbe1e53844ab56ce4796bea60ea6cda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96281392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24e1cd75b1bde59091fd2b2237a41c7237635ef78cb8770ac2d724be57acf7a2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:42:38 GMT
ENV INFLUXDB_VERSION=1.13.0-c1.13.0
# Tue, 25 Aug 2026 01:42:38 GMT
ENV INFLUXDB_PR=
# Tue, 25 Aug 2026 01:42:38 GMT
ENV INFLUXDB_PV=1.13.0-c1.13.0
# Tue, 25 Aug 2026 01:42:38 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-meta_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:42:38 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Tue, 25 Aug 2026 01:42:38 GMT
EXPOSE map[8091/tcp:{}]
# Tue, 25 Aug 2026 01:42:38 GMT
VOLUME [/var/lib/influxdb]
# Tue, 25 Aug 2026 01:42:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:42:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:42:38 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed75a2852fef2a6458e653337060477a029ada4a28f44e50069b5fc6f421b548`  
		Last Modified: Tue, 25 Aug 2026 01:42:52 GMT  
		Size: 23.7 MB (23727217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe010942aee509eeda142eb783897d1428b4ade3b2576fe18017eb0192d2fd8c`  
		Last Modified: Tue, 25 Aug 2026 01:42:51 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd33b62f066ed20b81836c4d4f8cb1b4e146d400536da875bc4aa05a5f03d2f`  
		Last Modified: Tue, 25 Aug 2026 01:42:52 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13.0-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:7162cb30016e0406fce6284d0bcd6f4d5865db85e15be6104cd535546547e598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4614696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9709e7bd51037eb96e233f727dcd93d5686ae361f8c556f77719d5abe8ebac8c`

```dockerfile
```

-	Layers:
	-	`sha256:b8f415f9f5c9a6cf8243b7f839970c6f51d6ca80815586daa3a85984789a51a3`  
		Last Modified: Tue, 25 Aug 2026 01:42:52 GMT  
		Size: 4.6 MB (4602330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:417f944ebd3d1798c89b3bab1c589262ce704f144adf5232999187149345ad78`  
		Last Modified: Tue, 25 Aug 2026 01:42:52 GMT  
		Size: 12.4 KB (12366 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.13.0-meta-alpine`

```console
$ docker pull influxdb@sha256:3fce5a458269df01e78bfee5518ef40042dee7d0e5a83debc8cd4db64a696e5a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.13.0-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:cb5f277a51020f69b3452a6f2f484b20b13fcc6260b7ef5fb74bdfe67baa9630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.7 MB (28735863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2ccabab63a55130d801f1493802b9499bae4d47ad05075b5f5c0f312daa29e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 17:12:32 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Fri, 21 Aug 2026 17:12:35 GMT
ENV INFLUXDB_VERSION=1.13.0-c1.13.0
# Fri, 21 Aug 2026 17:12:35 GMT
ENV INFLUXDB_PR=
# Fri, 21 Aug 2026 17:12:35 GMT
ENV INFLUXDB_PV=1.13.0-c1.13.0
# Fri, 21 Aug 2026 17:12:35 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"         "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     tar -xvf "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influxd-ctl'             'influxdb-*/influxd-meta' &&     rm "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"        "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     apk del .build-deps # buildkit
# Fri, 21 Aug 2026 17:12:35 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Fri, 21 Aug 2026 17:12:35 GMT
EXPOSE map[8091/tcp:{}]
# Fri, 21 Aug 2026 17:12:35 GMT
VOLUME [/var/lib/influxdb]
# Fri, 21 Aug 2026 17:12:35 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 21 Aug 2026 17:12:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Aug 2026 17:12:35 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60762b3298a779bfcffbc600fe1eae43b10077180dbc9e68b0aeb50b24c6d149`  
		Last Modified: Fri, 21 Aug 2026 17:12:43 GMT  
		Size: 1.2 MB (1221273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a86e73e2e9cf9f06ec9c8d6b086e81175467df14880cec7fee114c5e2a7f90ea`  
		Last Modified: Fri, 21 Aug 2026 17:12:44 GMT  
		Size: 23.7 MB (23669601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8273d7807dbf689b6b8a5c8b3c9dccb4252a5f6cd19044f904eb351836adc569`  
		Last Modified: Fri, 21 Aug 2026 17:12:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b08bc66603bc3c7bc891903afd8bbd28915aaeaef2f6491f8914253234202ca`  
		Last Modified: Fri, 21 Aug 2026 17:12:43 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13.0-meta-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:c25d028a184ff3a66ff0cf358ac12c98f982e92929b786f144c6c977b424c9e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **684.6 KB (684645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9225e3c378dbe96fc9502bc4306a22f269189dd2d4af546d9cc858168013810`

```dockerfile
```

-	Layers:
	-	`sha256:258aea5f4f233210e49578b571a8101a7e56b835bfd03ce3c295f3196951f09a`  
		Last Modified: Fri, 21 Aug 2026 17:12:43 GMT  
		Size: 671.0 KB (671025 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe61bbd4b15a52bed4fa59dccf256a7b7855a7e2c79e06590bc7bb73dbf2dd9a`  
		Last Modified: Fri, 21 Aug 2026 17:12:43 GMT  
		Size: 13.6 KB (13620 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:2`

```console
$ docker pull influxdb@sha256:f75e48af0598e8aec7986e991a848d19a119101a7d563a2e5db1dfaac9c45daa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2` - linux; amd64

```console
$ docker pull influxdb@sha256:54ccb17391b0964f30ba9451d8a869ff8c7beefe76103e636f2c4a8502154e5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110818430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42603e14ab9ca094e595a264bbb69449f56f3d206a219d21add942dfa3651731`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:21 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:22 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 25 Aug 2026 00:52:22 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 25 Aug 2026 00:52:25 GMT
ENV INFLUXDB_VERSION=2.9.1
# Tue, 25 Aug 2026 00:52:25 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 25 Aug 2026 00:52:25 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Tue, 25 Aug 2026 00:52:26 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 25 Aug 2026 00:52:26 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 25 Aug 2026 00:52:26 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 25 Aug 2026 00:52:26 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 25 Aug 2026 00:52:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 00:52:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 00:52:26 GMT
CMD ["influxd"]
# Tue, 25 Aug 2026 00:52:26 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 00:52:26 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 25 Aug 2026 00:52:26 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 25 Aug 2026 00:52:26 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 25 Aug 2026 00:52:26 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:573c20ce328ee00d69474aa88510c7e1fb7a47d28fb264d5a3391af6d3c1ecd0`  
		Last Modified: Tue, 25 Aug 2026 00:52:38 GMT  
		Size: 9.8 MB (9820365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b666332ab0b4f9ac09935df5b3225436721d3c699ce82a1deb4ba6bc2343e7c7`  
		Last Modified: Tue, 25 Aug 2026 00:52:38 GMT  
		Size: 3.8 MB (3822788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b56ed1363977b928f6e20145c24cfce8118306ac73c59959cba5988cdb2c2a5`  
		Last Modified: Tue, 25 Aug 2026 00:52:38 GMT  
		Size: 3.2 KB (3230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00e0091fd5595e0c36b6b653404502f37e7d95a7ad9111923fbe13279ff5397`  
		Last Modified: Tue, 25 Aug 2026 00:52:39 GMT  
		Size: 56.5 MB (56510623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e13dc76fc9b131c9cd94926f285bd9c3bc468d3b8f31dbfbfe725379e9d74ce`  
		Last Modified: Tue, 25 Aug 2026 00:52:39 GMT  
		Size: 12.4 MB (12421825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81d6928acf75e25fa927d3d99db8cd22b5b9764b9dfa224fe27673ac559d4a46`  
		Last Modified: Tue, 25 Aug 2026 00:52:39 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba05685fbe242565fb25e7b6d854452592544aa736627878aaf361032d5b70c0`  
		Last Modified: Tue, 25 Aug 2026 00:52:39 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a71bf342900241ca53483c5d40e5e5a7ea1be9770eae90c01ab2fde9afede6f0`  
		Last Modified: Tue, 25 Aug 2026 00:52:40 GMT  
		Size: 6.5 KB (6501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2` - unknown; unknown

```console
$ docker pull influxdb@sha256:83b48ef4a4477ea81d552faa0222e8b392576373318ba0d64c49002f2972da9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2993300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcb8fe0577a07a49426a4d140f4125c08f728eddccf40156131247c72f63fae6`

```dockerfile
```

-	Layers:
	-	`sha256:88e29fba8d56ddd72483d27075640c32285d5262bfe97afa29396cb65e383c29`  
		Last Modified: Tue, 25 Aug 2026 00:52:38 GMT  
		Size: 3.0 MB (2964686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d36ca2ce49978c6376c07c0e6c7d88100cffabbbdab063d7a3e69ec42ec9b62`  
		Last Modified: Tue, 25 Aug 2026 00:52:37 GMT  
		Size: 28.6 KB (28614 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:f8af6f227b5932201b7714580b9d569a3fb88a8d63af9451a61f436f55c15d4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.3 MB (106346351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ff3a2c9c97df1e2ee8b9fb1af47269ebbc81ee75ba82f3ae151489c2a3eeb95`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:54:35 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:36 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 25 Aug 2026 00:54:36 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 25 Aug 2026 00:54:39 GMT
ENV INFLUXDB_VERSION=2.9.1
# Tue, 25 Aug 2026 00:54:39 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 25 Aug 2026 00:54:39 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Tue, 25 Aug 2026 00:54:40 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 25 Aug 2026 00:54:40 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 25 Aug 2026 00:54:40 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 25 Aug 2026 00:54:40 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 25 Aug 2026 00:54:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 00:54:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 00:54:40 GMT
CMD ["influxd"]
# Tue, 25 Aug 2026 00:54:40 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 00:54:40 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 25 Aug 2026 00:54:40 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 25 Aug 2026 00:54:40 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 25 Aug 2026 00:54:40 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be4a3a85cba26e3740ed0d7c4e95ff9338e94b7cc7b32098862e0a3196ffa58`  
		Last Modified: Tue, 25 Aug 2026 00:54:52 GMT  
		Size: 9.6 MB (9642612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f68c0310243dd00a42fbccd9b1ddae17ad6f980709b97a10a8e45ddfc31f58`  
		Last Modified: Tue, 25 Aug 2026 00:54:52 GMT  
		Size: 3.5 MB (3459170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a79605b2b591e355fc1d1fa9e722feb8f98188652f575d8a55445b120c9ee8`  
		Last Modified: Tue, 25 Aug 2026 00:54:51 GMT  
		Size: 3.2 KB (3233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ed692525c68caf840cda854a4aa4849997b727d18b87d5dfcb5ff2ce054fcb`  
		Last Modified: Tue, 25 Aug 2026 00:54:54 GMT  
		Size: 53.6 MB (53636815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f895831a6af0c751311d55a6fcd99d94bb7703ead79076c513492bb65871287c`  
		Last Modified: Tue, 25 Aug 2026 00:54:53 GMT  
		Size: 11.5 MB (11480291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e30eab3b9bf7b251cfab9f6aec90f76e119259c50df13e0666d20e039cd08c3`  
		Last Modified: Tue, 25 Aug 2026 00:54:53 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b6ad26339bf5969f86c9dee315d127351b183b3fd8eee4bf8247b73818a1b9`  
		Last Modified: Tue, 25 Aug 2026 00:54:53 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c055c0de443a05b84a1e86bdcca1a34299b7116a236c54169de57558628156`  
		Last Modified: Tue, 25 Aug 2026 00:54:54 GMT  
		Size: 6.5 KB (6500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2` - unknown; unknown

```console
$ docker pull influxdb@sha256:49b619a1a3713f33f29ea76e299876ca8abdf136ea95b6939bad27265ea833f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2992957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1605d7866684f8b130de747f1830979239c0bf4dd2a347e9779fb960299e2159`

```dockerfile
```

-	Layers:
	-	`sha256:9813f5510b5143be30dc061e4f97c93658252c17e42955e75523f57cc22d1f03`  
		Last Modified: Tue, 25 Aug 2026 00:54:52 GMT  
		Size: 3.0 MB (2964164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cf033b57e9a75ccea63737b4a0e43ba4b1a91a44dd225bf25edd057c3a2c1c2`  
		Last Modified: Tue, 25 Aug 2026 00:54:51 GMT  
		Size: 28.8 KB (28793 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:2-alpine`

```console
$ docker pull influxdb@sha256:243d7adc3edc2a3f98518e5395a9be725504acb43deb125bdcc78579b5c4bbd8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:818eb972f70c4b6b04b8b952b9ef54480221d92f2ee9cadf8f73c180efa69ac7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.8 MB (86761070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b096296ace6cf3ae6d76c243d555a7ab09f2c8728e9edfafe3d53fb285246929`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:09:05 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:09:06 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:09:07 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Mon, 22 Jun 2026 20:09:07 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Mon, 22 Jun 2026 20:09:09 GMT
ENV INFLUXDB_VERSION=2.9.1
# Mon, 22 Jun 2026 20:09:09 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Mon, 22 Jun 2026 20:09:09 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Mon, 22 Jun 2026 20:09:11 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Mon, 22 Jun 2026 20:09:11 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Mon, 22 Jun 2026 20:09:11 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Mon, 22 Jun 2026 20:09:11 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Mon, 22 Jun 2026 20:09:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:09:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:09:11 GMT
CMD ["influxd"]
# Mon, 22 Jun 2026 20:09:11 GMT
EXPOSE map[8086/tcp:{}]
# Mon, 22 Jun 2026 20:09:11 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Mon, 22 Jun 2026 20:09:11 GMT
ENV INFLUXD_INIT_PORT=9999
# Mon, 22 Jun 2026 20:09:11 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Mon, 22 Jun 2026 20:09:11 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815e4cbfb2c3ad1daa8f714c24a72c3d2b0e303f1111027d40b5312da53f31de`  
		Last Modified: Mon, 22 Jun 2026 20:09:21 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfa0863e35390742e4548bcf5d4e600c1be6d0755455ca8112ec638f514917f`  
		Last Modified: Mon, 22 Jun 2026 20:09:21 GMT  
		Size: 10.2 MB (10153309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c16c33fad802968c073de8ffffa8d98940359a5af641d9d05b3d2071e9f35dc`  
		Last Modified: Mon, 22 Jun 2026 20:09:21 GMT  
		Size: 3.8 MB (3822785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b5254f169ca7f4632bf1c4a6886be8c3ee24ffa1e3c7d272c6e61207b90691`  
		Last Modified: Mon, 22 Jun 2026 20:09:21 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c00901c9d827ec55083e4aa447c88e3e378e298ccfcba35973fe07e8fdda269a`  
		Last Modified: Mon, 22 Jun 2026 20:09:24 GMT  
		Size: 56.5 MB (56510565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1825355303a2ab6417b7c706fcf5ea913fe720042b5a4079626e769c316e6fe`  
		Last Modified: Mon, 22 Jun 2026 20:09:23 GMT  
		Size: 12.4 MB (12421830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b5d6296c0c0d7efca63b87bbc91abff262747443545664b1f815547245d11f9`  
		Last Modified: Mon, 22 Jun 2026 20:09:23 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb510e07f154987b609e67a3375ad656cf3cf0b54c4d995b03db16a636169806`  
		Last Modified: Mon, 22 Jun 2026 20:09:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73d8062e04e7b2675f34ef6027d0b3675741f596e699cf7a3429c82044e71c2c`  
		Last Modified: Mon, 22 Jun 2026 20:09:24 GMT  
		Size: 6.5 KB (6492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:b909722fbe18e31565de9f0388791e5072426eb9b96b73986d9911dde6dcec8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **964.1 KB (964077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a81d33f1c07105354816cca58dc95f1c19fbba37f61a1cf7d6f02a6d1a957a`

```dockerfile
```

-	Layers:
	-	`sha256:96f43458dc856669b2aceae57f8e1b0d5147450c3dfaa7918022becc39f9730a`  
		Last Modified: Mon, 22 Jun 2026 20:09:21 GMT  
		Size: 933.5 KB (933468 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3b73456f10634c97d1dfd78d72e2480b1f66779e757a35e695f8c5d702110e9`  
		Last Modified: Mon, 22 Jun 2026 20:09:21 GMT  
		Size: 30.6 KB (30609 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:6a4b5c4951f4a9c13581a0cf3a43e5a4d5a5a8b60e15864ecd43724f8a7c5cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82889238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:636ea576260a01ff5006284c916dd05e97d313acc823eabc64ad31d441f2ce62`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:02:10 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:02:11 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:02:12 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Mon, 22 Jun 2026 20:02:12 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Mon, 22 Jun 2026 20:02:15 GMT
ENV INFLUXDB_VERSION=2.9.1
# Mon, 22 Jun 2026 20:02:15 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Mon, 22 Jun 2026 20:02:15 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Mon, 22 Jun 2026 20:02:16 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Mon, 22 Jun 2026 20:02:16 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Mon, 22 Jun 2026 20:02:16 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Mon, 22 Jun 2026 20:02:16 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Mon, 22 Jun 2026 20:02:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:02:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:02:16 GMT
CMD ["influxd"]
# Mon, 22 Jun 2026 20:02:16 GMT
EXPOSE map[8086/tcp:{}]
# Mon, 22 Jun 2026 20:02:16 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Mon, 22 Jun 2026 20:02:16 GMT
ENV INFLUXD_INIT_PORT=9999
# Mon, 22 Jun 2026 20:02:16 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Mon, 22 Jun 2026 20:02:16 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edacd2d51faff6f48f2faf3e6d396d49d5183cf0c3ada0a95b2431dab1ffc1f8`  
		Last Modified: Mon, 22 Jun 2026 20:02:26 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc5aaaf51cb8d62c8e12d9219fcbe980bc1dadafe43e2c1b46c954b12a7b9176`  
		Last Modified: Mon, 22 Jun 2026 20:02:27 GMT  
		Size: 10.1 MB (10122926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1815eff9a2ea781805aff1e96afc1d10136f5e606ecea18f02a68fe299b9f01`  
		Last Modified: Mon, 22 Jun 2026 20:02:27 GMT  
		Size: 3.5 MB (3459172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090c4ea7909ad362cd9a477aa61908fc4c7c436550a45d1a4cdda2947e41b87f`  
		Last Modified: Mon, 22 Jun 2026 20:02:26 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e6657ca9b5adac502e3bdf8fa4af36ea4e23d7368c05b65348e52654922bc6`  
		Last Modified: Mon, 22 Jun 2026 20:02:30 GMT  
		Size: 53.6 MB (53636824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ffb2c6705a3ecf9ef6cb344eceedc4bcd23d002bd76247699124a08253a911`  
		Last Modified: Mon, 22 Jun 2026 20:02:28 GMT  
		Size: 11.5 MB (11480294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f669a9964c941948652e1e6a59afe7c3828c3511d80bd965b8ff287fa93c4a7`  
		Last Modified: Mon, 22 Jun 2026 20:02:28 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb5702b9165d688e2684dd980a734c9e367b800d01e5d613bce074c00276e63`  
		Last Modified: Mon, 22 Jun 2026 20:02:29 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca41adc90ce6a2fdc381ef91ccf0d6250809415be76050c4061ae155f2387b2`  
		Last Modified: Mon, 22 Jun 2026 20:02:29 GMT  
		Size: 6.5 KB (6492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:b58c3384dee6e2cf84bdd6cc6f1b973cf03e71a51dca1e9e1a4e883fe0aa851c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **962.9 KB (962870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51a574cef178a98e17e52022e92db9a65d510a5deddfbf2e47d70696506f545a`

```dockerfile
```

-	Layers:
	-	`sha256:9d49ccb5ade9b5a3ceb6f9ee6c0df708a11e818e19e69abf708bd00160a2918d`  
		Last Modified: Mon, 22 Jun 2026 20:02:26 GMT  
		Size: 932.1 KB (932067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0983355f8806d79c2a3e59548735b7e236a046ea9606377a031186e987e20940`  
		Last Modified: Mon, 22 Jun 2026 20:02:26 GMT  
		Size: 30.8 KB (30803 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:2.8`

```console
$ docker pull influxdb@sha256:571eb4514977b89bc09909f583b7b8ab473965011a75681ff8b6ca050e020c85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.8` - linux; amd64

```console
$ docker pull influxdb@sha256:59825b99ed493b56d727eef5fd251c98b84c07581efe35fd55ba86130522b374
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107259122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:555fae4b8fa10b579e404c2624fe976762a5a0163f49c6e8f0f0a1e931b7b964`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:14 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:14 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v2.8.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '21fda0a4dc3c779c42737eca4b37e4f187d7ab91ba6301eed97b801af84a9ea2  /usr/local/bin/dasel' ;;       arm64) echo '2c75e63f9884c37578f48788819dda5a5a5c32ec6c4a663eefc19839f44d6291  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel --version # buildkit
# Tue, 25 Aug 2026 00:52:15 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 25 Aug 2026 00:52:16 GMT
ENV GOSU_VER=1.19
# Tue, 25 Aug 2026 00:52:16 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     curl -fLo /usr/local/bin/gosu     "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-${arch}"          -fLo /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-${arch}.asc" &&     gpg --batch --verify /usr/local/bin/gosu.asc                          /usr/local/bin/gosu &&     rm -rf /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true # buildkit
# Tue, 25 Aug 2026 00:52:16 GMT
ENV INFLUXDB_VERSION=2.8.0
# Tue, 25 Aug 2026 00:52:16 GMT
ENV INFLUXDB_PR=-2
# Tue, 25 Aug 2026 00:52:16 GMT
ENV INFLUXDB_PV=2.8.0-2
# Tue, 25 Aug 2026 00:52:19 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/usr/bin/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 25 Aug 2026 00:52:19 GMT
ENV INFLUX_CLI_VERSION=2.7.5
# Tue, 25 Aug 2026 00:52:20 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 25 Aug 2026 00:52:20 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 25 Aug 2026 00:52:20 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 25 Aug 2026 00:52:20 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 25 Aug 2026 00:52:20 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 00:52:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 00:52:20 GMT
CMD ["influxd"]
# Tue, 25 Aug 2026 00:52:20 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 00:52:20 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 25 Aug 2026 00:52:20 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 25 Aug 2026 00:52:20 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 25 Aug 2026 00:52:20 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b5d71b1dcc6393ad2c43b75e56500c7f9358494b2852b7d6455cf663df35f0`  
		Last Modified: Tue, 25 Aug 2026 00:52:31 GMT  
		Size: 9.8 MB (9820354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ff633de2cc680c0e1ff0b7ae5ef5dfdf0b0e9cdad33701643db7c25b7613241`  
		Last Modified: Tue, 25 Aug 2026 00:52:31 GMT  
		Size: 6.2 MB (6156974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:875bfaefdb3ddac6d08f427ac51a6c5d40a42b450268538d00f44e493e3691dc`  
		Last Modified: Tue, 25 Aug 2026 00:52:31 GMT  
		Size: 3.2 KB (3232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b606a955b53f2998bd151198cee1a3b723cba9ea8d5e8a8a700fedda0d45f45c`  
		Last Modified: Tue, 25 Aug 2026 00:52:31 GMT  
		Size: 811.5 KB (811477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0336138b58215c0f8a18a07d930830572cdf67845a134bc3b0f50f024153a5b`  
		Last Modified: Tue, 25 Aug 2026 00:52:34 GMT  
		Size: 50.5 MB (50451813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a536563040c949241da7dd9e16d2e1979944e0b3701408be7956ea6c122549e6`  
		Last Modified: Tue, 25 Aug 2026 00:52:33 GMT  
		Size: 11.8 MB (11775889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5413be7e4ccccd9202afcc00b9a90985f3e8b894799254384365c086347c821e`  
		Last Modified: Tue, 25 Aug 2026 00:52:33 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d518c545abe658567063f804ba1f18ac968b959a24ea33d5cce19b6bd1bd23`  
		Last Modified: Tue, 25 Aug 2026 00:52:33 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:052460ee25f7507faf3a41483fd4aa11e94a544a7380fd561478cec7db1edaef`  
		Last Modified: Tue, 25 Aug 2026 00:52:34 GMT  
		Size: 6.3 KB (6285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.8` - unknown; unknown

```console
$ docker pull influxdb@sha256:060b398314c790f50dfde77f2321bdb25aebaf21733ae890c58fdb257a53e008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2971945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bed0e136be134f71cfbb208537a3c9dc55adb2e67bb16c43f6233013471a519`

```dockerfile
```

-	Layers:
	-	`sha256:6198c15bd50723090127b0f8e22371bfc59c4911bbd897943c49a99c76b3805c`  
		Last Modified: Tue, 25 Aug 2026 00:52:31 GMT  
		Size: 2.9 MB (2938918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c00e2e6ae2ed114cc5456a09cb853d554e970a0ba98089dee3ad9f492b18f10`  
		Last Modified: Tue, 25 Aug 2026 00:52:31 GMT  
		Size: 33.0 KB (33027 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.8` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:6f14f1e05bd0fb9b3efdd1c603d5db25db4801f53b5e1e1ba991ec6f05cd46f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.7 MB (103656526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a6e84454c73d3206505a944e0771a5b909ba0e28ab15f458fd75a03e26d5629`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:54:24 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:25 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v2.8.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '21fda0a4dc3c779c42737eca4b37e4f187d7ab91ba6301eed97b801af84a9ea2  /usr/local/bin/dasel' ;;       arm64) echo '2c75e63f9884c37578f48788819dda5a5a5c32ec6c4a663eefc19839f44d6291  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel --version # buildkit
# Tue, 25 Aug 2026 00:54:25 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 25 Aug 2026 00:54:27 GMT
ENV GOSU_VER=1.19
# Tue, 25 Aug 2026 00:54:27 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     curl -fLo /usr/local/bin/gosu     "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-${arch}"          -fLo /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-${arch}.asc" &&     gpg --batch --verify /usr/local/bin/gosu.asc                          /usr/local/bin/gosu &&     rm -rf /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true # buildkit
# Tue, 25 Aug 2026 00:54:27 GMT
ENV INFLUXDB_VERSION=2.8.0
# Tue, 25 Aug 2026 00:54:27 GMT
ENV INFLUXDB_PR=-2
# Tue, 25 Aug 2026 00:54:27 GMT
ENV INFLUXDB_PV=2.8.0-2
# Tue, 25 Aug 2026 00:54:29 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/usr/bin/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 25 Aug 2026 00:54:29 GMT
ENV INFLUX_CLI_VERSION=2.7.5
# Tue, 25 Aug 2026 00:54:31 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 25 Aug 2026 00:54:31 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 25 Aug 2026 00:54:31 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 25 Aug 2026 00:54:31 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 25 Aug 2026 00:54:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 00:54:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 00:54:31 GMT
CMD ["influxd"]
# Tue, 25 Aug 2026 00:54:31 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 00:54:31 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 25 Aug 2026 00:54:31 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 25 Aug 2026 00:54:31 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 25 Aug 2026 00:54:31 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b66c4b4d8a812688013b2afd46f4ff1e48d85cf6b05da9c6e5602efb84911e`  
		Last Modified: Tue, 25 Aug 2026 00:54:42 GMT  
		Size: 9.6 MB (9642585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccb3512fe0828d05364e8280be2e667380f0e8b0d3f39a85f99b722737e8aa87`  
		Last Modified: Tue, 25 Aug 2026 00:54:42 GMT  
		Size: 5.8 MB (5790424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c766f7480e4e48ff3b1c5b591e9220fd92018514a0b9e6cdc98acaf37af71e0a`  
		Last Modified: Tue, 25 Aug 2026 00:54:42 GMT  
		Size: 3.2 KB (3234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b05998abdbd7f17d6e809290f4867c736f6609450a24aa63cc6486dd2fcaa6b1`  
		Last Modified: Tue, 25 Aug 2026 00:54:42 GMT  
		Size: 766.4 KB (766376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26e27076e5738b86540fe9bbe049d4a6df97146ce751dca94c2389e48281c614`  
		Last Modified: Tue, 25 Aug 2026 00:54:44 GMT  
		Size: 48.2 MB (48229492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eaf3afe20ad49c8598a215ecbe1641f338d422648ba68bf31bd4522b14e049b`  
		Last Modified: Tue, 25 Aug 2026 00:54:44 GMT  
		Size: 11.1 MB (11100395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc091589d6a2308484f87e8b718e0338d629435c5561c29957e193366838790e`  
		Last Modified: Tue, 25 Aug 2026 00:54:43 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c8050da64c6f5fba2317ca008809cc9231d33fc52d068309962d86dec4c786`  
		Last Modified: Tue, 25 Aug 2026 00:54:43 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d4b96e89426cafe93c9570aa9030020153e78b0087007c933151fa2dbb7300`  
		Last Modified: Tue, 25 Aug 2026 00:54:44 GMT  
		Size: 6.3 KB (6287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.8` - unknown; unknown

```console
$ docker pull influxdb@sha256:17c4d70685f24f84a928bf53bf585a748c9fa43a212f38295e474ccfeb847a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2971571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44f59e7fb7d84a999fe5124466ab42b102a5c4e16e05f088514f89357cf9247b`

```dockerfile
```

-	Layers:
	-	`sha256:f5610384da5ad0167b8114621355597f80d1b6ae8d1ebe84693deb1a3139a332`  
		Last Modified: Tue, 25 Aug 2026 00:54:42 GMT  
		Size: 2.9 MB (2938374 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8154393c211b85f33d2ea031a7a288a859208562a1b0038bfc43594ed55481e0`  
		Last Modified: Tue, 25 Aug 2026 00:54:42 GMT  
		Size: 33.2 KB (33197 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:2.8-alpine`

```console
$ docker pull influxdb@sha256:0793da69d60d1906f925363f6fc9f013697af0412d4493d5e1cfc631b3378f56
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.8-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:35210becbfe831a709e18c9114ac17a2ad21cce52d9a57146bb2c7b54d744f0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82368601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e8883b6c3000d4157dc900b997d0bcf06285afd98d701479719e472b36c812a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:00:24 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:00:25 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       su-exec       tzdata &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:00:26 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v2.8.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '21fda0a4dc3c779c42737eca4b37e4f187d7ab91ba6301eed97b801af84a9ea2  /usr/local/bin/dasel' ;;       arm64) echo '2c75e63f9884c37578f48788819dda5a5a5c32ec6c4a663eefc19839f44d6291  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel --version # buildkit
# Mon, 22 Jun 2026 20:00:26 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Mon, 22 Jun 2026 20:00:28 GMT
ENV INFLUXDB_VERSION=2.8.0
# Mon, 22 Jun 2026 20:00:28 GMT
ENV INFLUXDB_PR=-2
# Mon, 22 Jun 2026 20:00:28 GMT
ENV INFLUXDB_PV=2.8.0-2
# Mon, 22 Jun 2026 20:00:28 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/usr/bin/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Mon, 22 Jun 2026 20:00:28 GMT
ENV INFLUX_CLI_VERSION=2.7.5
# Mon, 22 Jun 2026 20:00:30 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Mon, 22 Jun 2026 20:00:30 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Mon, 22 Jun 2026 20:00:30 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Mon, 22 Jun 2026 20:00:30 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Mon, 22 Jun 2026 20:00:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:00:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:00:30 GMT
CMD ["influxd"]
# Mon, 22 Jun 2026 20:00:30 GMT
EXPOSE map[8086/tcp:{}]
# Mon, 22 Jun 2026 20:00:30 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Mon, 22 Jun 2026 20:00:30 GMT
ENV INFLUXD_INIT_PORT=9999
# Mon, 22 Jun 2026 20:00:30 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Mon, 22 Jun 2026 20:00:30 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2de596e6e58599b275563cd7971ad9ea4ebcee65d366f85d02114624fbf249`  
		Last Modified: Mon, 22 Jun 2026 20:00:39 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e47010f8fa9aadd20f9b1272a1d48a10dec37a92b10cfc3b0e1e88293032f86`  
		Last Modified: Mon, 22 Jun 2026 20:00:40 GMT  
		Size: 10.1 MB (10131569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e2f0f00ca6c8b5a2f385f88fd56e2a2002c7f849280435818c54e7e67d886e1`  
		Last Modified: Mon, 22 Jun 2026 20:00:40 GMT  
		Size: 6.2 MB (6156985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae88b44184321c27f69f0d65225bf0345eb308adb40a51e0bc195dcf56706ab`  
		Last Modified: Mon, 22 Jun 2026 20:00:39 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9a9859a1ee557f7b97322fd3d9dfa42badd3bfad99562ab19885bb3c4ea9038`  
		Last Modified: Mon, 22 Jun 2026 20:00:42 GMT  
		Size: 50.5 MB (50451819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e42be4435d81fc2058dee513f5f73d1ebc9cf5d5fc2cf5bb9a7b199f8d6407`  
		Last Modified: Mon, 22 Jun 2026 20:00:42 GMT  
		Size: 11.8 MB (11775856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ad909451167dfa590943ac7172de1c00c460fce62d34c165c64beee93bf415`  
		Last Modified: Mon, 22 Jun 2026 20:00:41 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df943ce83f0bd48f291583d453235c9174d63676aa7582d1877620a5c238c182`  
		Last Modified: Mon, 22 Jun 2026 20:00:41 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d8872ea24f2334aed3b74c3af6bb2d3ad292f4c070ec47bffa3f88586e6d613`  
		Last Modified: Mon, 22 Jun 2026 20:00:42 GMT  
		Size: 6.3 KB (6281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.8-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:54585353d315cc20b3617d192a7893969bcd63cb83a894a805ed2542a1e13d58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **930.6 KB (930632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd9f04a07fb6a2b285f126a4972a6a8dddc003104fb21b42a429ba643d0fa7a`

```dockerfile
```

-	Layers:
	-	`sha256:2c0f18cf2d6735a4cf63165a9923007dfa2643039747b8b53e7e5f735b861144`  
		Last Modified: Mon, 22 Jun 2026 20:00:39 GMT  
		Size: 900.4 KB (900385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7effe877fe03342d070119ebdf5945e749a1bcd7abd8d4b2dacc4d3fadd39759`  
		Last Modified: Mon, 22 Jun 2026 20:00:39 GMT  
		Size: 30.2 KB (30247 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.8-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:682e3bc600359035af90f013a34cd66be95e02fa8f32dde664ae57255ca69412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79409097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9340a9118498084b062d5931b3b2abb9b82a637194ec244864a4c7a3b8a45d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:02:06 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:02:07 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       su-exec       tzdata &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:02:07 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v2.8.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '21fda0a4dc3c779c42737eca4b37e4f187d7ab91ba6301eed97b801af84a9ea2  /usr/local/bin/dasel' ;;       arm64) echo '2c75e63f9884c37578f48788819dda5a5a5c32ec6c4a663eefc19839f44d6291  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel --version # buildkit
# Mon, 22 Jun 2026 20:02:07 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Mon, 22 Jun 2026 20:02:10 GMT
ENV INFLUXDB_VERSION=2.8.0
# Mon, 22 Jun 2026 20:02:10 GMT
ENV INFLUXDB_PR=-2
# Mon, 22 Jun 2026 20:02:10 GMT
ENV INFLUXDB_PV=2.8.0-2
# Mon, 22 Jun 2026 20:02:10 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/usr/bin/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Mon, 22 Jun 2026 20:02:10 GMT
ENV INFLUX_CLI_VERSION=2.7.5
# Mon, 22 Jun 2026 20:02:11 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Mon, 22 Jun 2026 20:02:11 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Mon, 22 Jun 2026 20:02:11 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Mon, 22 Jun 2026 20:02:11 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Mon, 22 Jun 2026 20:02:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:02:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:02:11 GMT
CMD ["influxd"]
# Mon, 22 Jun 2026 20:02:11 GMT
EXPOSE map[8086/tcp:{}]
# Mon, 22 Jun 2026 20:02:11 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Mon, 22 Jun 2026 20:02:11 GMT
ENV INFLUXD_INIT_PORT=9999
# Mon, 22 Jun 2026 20:02:11 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Mon, 22 Jun 2026 20:02:11 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f922441b18ed983960868018586de078c1493717dd545696271d1bc1583fe2`  
		Last Modified: Mon, 22 Jun 2026 20:02:21 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d52270157bf6ce1eb285a71dfcdb1149a1329f6709186f6324de7812a047ae2`  
		Last Modified: Mon, 22 Jun 2026 20:02:22 GMT  
		Size: 10.1 MB (10098946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2038c557af79cd332c23d4291c6b12691e5921f3185662695855425f755b1989`  
		Last Modified: Mon, 22 Jun 2026 20:02:22 GMT  
		Size: 5.8 MB (5790430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c3532d109182a3b2a3e8736f15283bcb3651484145be8046eeec636d6b3a288`  
		Last Modified: Mon, 22 Jun 2026 20:02:21 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05e708d132c6f24b39bed500d05e7706f7ab5950ba30c41feaf42e4d3411949`  
		Last Modified: Mon, 22 Jun 2026 20:02:24 GMT  
		Size: 48.2 MB (48229526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c18622f02a6a7fef6c51ece3cf07f3693225cac0c68bb78f0ec635899f49a9`  
		Last Modified: Mon, 22 Jun 2026 20:02:23 GMT  
		Size: 11.1 MB (11100381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39af25bdeb053327d3bbb021f201694c3721f09142831fb3c4b8bf32f174184b`  
		Last Modified: Mon, 22 Jun 2026 20:02:23 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0be0f8a93aba06f1ec766e58861827c7b338f4b08e6dbf75290cd85c22a9404`  
		Last Modified: Mon, 22 Jun 2026 20:02:24 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f0f6b559aea8b8aa4c34e0dcdbc24d4e9c5dcd25c4fa0bfb4c9e83a6325036`  
		Last Modified: Mon, 22 Jun 2026 20:02:25 GMT  
		Size: 6.3 KB (6281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.8-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:686d52939dfc1e6999857228e09135ab349748d45652b6b7d13bb2f63999fbaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **929.4 KB (929379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e01754f3a30c7e09409b47d6e027d9b3d20bf072cd3d785f37ccc19dd93037`

```dockerfile
```

-	Layers:
	-	`sha256:23e62c23f283845c78cb7f3967b4819dcf1a1d552524afe775119fd732994fa0`  
		Last Modified: Mon, 22 Jun 2026 20:02:21 GMT  
		Size: 899.0 KB (898962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9391fd7ef6f04c5a83cb95b5609a6be334be4287bde88451f9ae75a397868a4`  
		Last Modified: Mon, 22 Jun 2026 20:02:21 GMT  
		Size: 30.4 KB (30417 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:2.8.0`

```console
$ docker pull influxdb@sha256:571eb4514977b89bc09909f583b7b8ab473965011a75681ff8b6ca050e020c85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.8.0` - linux; amd64

```console
$ docker pull influxdb@sha256:59825b99ed493b56d727eef5fd251c98b84c07581efe35fd55ba86130522b374
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107259122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:555fae4b8fa10b579e404c2624fe976762a5a0163f49c6e8f0f0a1e931b7b964`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:14 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:14 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v2.8.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '21fda0a4dc3c779c42737eca4b37e4f187d7ab91ba6301eed97b801af84a9ea2  /usr/local/bin/dasel' ;;       arm64) echo '2c75e63f9884c37578f48788819dda5a5a5c32ec6c4a663eefc19839f44d6291  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel --version # buildkit
# Tue, 25 Aug 2026 00:52:15 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 25 Aug 2026 00:52:16 GMT
ENV GOSU_VER=1.19
# Tue, 25 Aug 2026 00:52:16 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     curl -fLo /usr/local/bin/gosu     "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-${arch}"          -fLo /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-${arch}.asc" &&     gpg --batch --verify /usr/local/bin/gosu.asc                          /usr/local/bin/gosu &&     rm -rf /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true # buildkit
# Tue, 25 Aug 2026 00:52:16 GMT
ENV INFLUXDB_VERSION=2.8.0
# Tue, 25 Aug 2026 00:52:16 GMT
ENV INFLUXDB_PR=-2
# Tue, 25 Aug 2026 00:52:16 GMT
ENV INFLUXDB_PV=2.8.0-2
# Tue, 25 Aug 2026 00:52:19 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/usr/bin/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 25 Aug 2026 00:52:19 GMT
ENV INFLUX_CLI_VERSION=2.7.5
# Tue, 25 Aug 2026 00:52:20 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 25 Aug 2026 00:52:20 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 25 Aug 2026 00:52:20 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 25 Aug 2026 00:52:20 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 25 Aug 2026 00:52:20 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 00:52:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 00:52:20 GMT
CMD ["influxd"]
# Tue, 25 Aug 2026 00:52:20 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 00:52:20 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 25 Aug 2026 00:52:20 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 25 Aug 2026 00:52:20 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 25 Aug 2026 00:52:20 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b5d71b1dcc6393ad2c43b75e56500c7f9358494b2852b7d6455cf663df35f0`  
		Last Modified: Tue, 25 Aug 2026 00:52:31 GMT  
		Size: 9.8 MB (9820354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ff633de2cc680c0e1ff0b7ae5ef5dfdf0b0e9cdad33701643db7c25b7613241`  
		Last Modified: Tue, 25 Aug 2026 00:52:31 GMT  
		Size: 6.2 MB (6156974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:875bfaefdb3ddac6d08f427ac51a6c5d40a42b450268538d00f44e493e3691dc`  
		Last Modified: Tue, 25 Aug 2026 00:52:31 GMT  
		Size: 3.2 KB (3232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b606a955b53f2998bd151198cee1a3b723cba9ea8d5e8a8a700fedda0d45f45c`  
		Last Modified: Tue, 25 Aug 2026 00:52:31 GMT  
		Size: 811.5 KB (811477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0336138b58215c0f8a18a07d930830572cdf67845a134bc3b0f50f024153a5b`  
		Last Modified: Tue, 25 Aug 2026 00:52:34 GMT  
		Size: 50.5 MB (50451813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a536563040c949241da7dd9e16d2e1979944e0b3701408be7956ea6c122549e6`  
		Last Modified: Tue, 25 Aug 2026 00:52:33 GMT  
		Size: 11.8 MB (11775889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5413be7e4ccccd9202afcc00b9a90985f3e8b894799254384365c086347c821e`  
		Last Modified: Tue, 25 Aug 2026 00:52:33 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d518c545abe658567063f804ba1f18ac968b959a24ea33d5cce19b6bd1bd23`  
		Last Modified: Tue, 25 Aug 2026 00:52:33 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:052460ee25f7507faf3a41483fd4aa11e94a544a7380fd561478cec7db1edaef`  
		Last Modified: Tue, 25 Aug 2026 00:52:34 GMT  
		Size: 6.3 KB (6285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.8.0` - unknown; unknown

```console
$ docker pull influxdb@sha256:060b398314c790f50dfde77f2321bdb25aebaf21733ae890c58fdb257a53e008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2971945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bed0e136be134f71cfbb208537a3c9dc55adb2e67bb16c43f6233013471a519`

```dockerfile
```

-	Layers:
	-	`sha256:6198c15bd50723090127b0f8e22371bfc59c4911bbd897943c49a99c76b3805c`  
		Last Modified: Tue, 25 Aug 2026 00:52:31 GMT  
		Size: 2.9 MB (2938918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c00e2e6ae2ed114cc5456a09cb853d554e970a0ba98089dee3ad9f492b18f10`  
		Last Modified: Tue, 25 Aug 2026 00:52:31 GMT  
		Size: 33.0 KB (33027 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.8.0` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:6f14f1e05bd0fb9b3efdd1c603d5db25db4801f53b5e1e1ba991ec6f05cd46f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.7 MB (103656526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a6e84454c73d3206505a944e0771a5b909ba0e28ab15f458fd75a03e26d5629`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:54:24 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:25 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v2.8.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '21fda0a4dc3c779c42737eca4b37e4f187d7ab91ba6301eed97b801af84a9ea2  /usr/local/bin/dasel' ;;       arm64) echo '2c75e63f9884c37578f48788819dda5a5a5c32ec6c4a663eefc19839f44d6291  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel --version # buildkit
# Tue, 25 Aug 2026 00:54:25 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 25 Aug 2026 00:54:27 GMT
ENV GOSU_VER=1.19
# Tue, 25 Aug 2026 00:54:27 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     curl -fLo /usr/local/bin/gosu     "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-${arch}"          -fLo /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-${arch}.asc" &&     gpg --batch --verify /usr/local/bin/gosu.asc                          /usr/local/bin/gosu &&     rm -rf /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true # buildkit
# Tue, 25 Aug 2026 00:54:27 GMT
ENV INFLUXDB_VERSION=2.8.0
# Tue, 25 Aug 2026 00:54:27 GMT
ENV INFLUXDB_PR=-2
# Tue, 25 Aug 2026 00:54:27 GMT
ENV INFLUXDB_PV=2.8.0-2
# Tue, 25 Aug 2026 00:54:29 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/usr/bin/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 25 Aug 2026 00:54:29 GMT
ENV INFLUX_CLI_VERSION=2.7.5
# Tue, 25 Aug 2026 00:54:31 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 25 Aug 2026 00:54:31 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 25 Aug 2026 00:54:31 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 25 Aug 2026 00:54:31 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 25 Aug 2026 00:54:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 00:54:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 00:54:31 GMT
CMD ["influxd"]
# Tue, 25 Aug 2026 00:54:31 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 00:54:31 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 25 Aug 2026 00:54:31 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 25 Aug 2026 00:54:31 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 25 Aug 2026 00:54:31 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b66c4b4d8a812688013b2afd46f4ff1e48d85cf6b05da9c6e5602efb84911e`  
		Last Modified: Tue, 25 Aug 2026 00:54:42 GMT  
		Size: 9.6 MB (9642585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccb3512fe0828d05364e8280be2e667380f0e8b0d3f39a85f99b722737e8aa87`  
		Last Modified: Tue, 25 Aug 2026 00:54:42 GMT  
		Size: 5.8 MB (5790424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c766f7480e4e48ff3b1c5b591e9220fd92018514a0b9e6cdc98acaf37af71e0a`  
		Last Modified: Tue, 25 Aug 2026 00:54:42 GMT  
		Size: 3.2 KB (3234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b05998abdbd7f17d6e809290f4867c736f6609450a24aa63cc6486dd2fcaa6b1`  
		Last Modified: Tue, 25 Aug 2026 00:54:42 GMT  
		Size: 766.4 KB (766376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26e27076e5738b86540fe9bbe049d4a6df97146ce751dca94c2389e48281c614`  
		Last Modified: Tue, 25 Aug 2026 00:54:44 GMT  
		Size: 48.2 MB (48229492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eaf3afe20ad49c8598a215ecbe1641f338d422648ba68bf31bd4522b14e049b`  
		Last Modified: Tue, 25 Aug 2026 00:54:44 GMT  
		Size: 11.1 MB (11100395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc091589d6a2308484f87e8b718e0338d629435c5561c29957e193366838790e`  
		Last Modified: Tue, 25 Aug 2026 00:54:43 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c8050da64c6f5fba2317ca008809cc9231d33fc52d068309962d86dec4c786`  
		Last Modified: Tue, 25 Aug 2026 00:54:43 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d4b96e89426cafe93c9570aa9030020153e78b0087007c933151fa2dbb7300`  
		Last Modified: Tue, 25 Aug 2026 00:54:44 GMT  
		Size: 6.3 KB (6287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.8.0` - unknown; unknown

```console
$ docker pull influxdb@sha256:17c4d70685f24f84a928bf53bf585a748c9fa43a212f38295e474ccfeb847a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2971571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44f59e7fb7d84a999fe5124466ab42b102a5c4e16e05f088514f89357cf9247b`

```dockerfile
```

-	Layers:
	-	`sha256:f5610384da5ad0167b8114621355597f80d1b6ae8d1ebe84693deb1a3139a332`  
		Last Modified: Tue, 25 Aug 2026 00:54:42 GMT  
		Size: 2.9 MB (2938374 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8154393c211b85f33d2ea031a7a288a859208562a1b0038bfc43594ed55481e0`  
		Last Modified: Tue, 25 Aug 2026 00:54:42 GMT  
		Size: 33.2 KB (33197 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:2.8.0-alpine`

```console
$ docker pull influxdb@sha256:0793da69d60d1906f925363f6fc9f013697af0412d4493d5e1cfc631b3378f56
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.8.0-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:35210becbfe831a709e18c9114ac17a2ad21cce52d9a57146bb2c7b54d744f0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82368601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e8883b6c3000d4157dc900b997d0bcf06285afd98d701479719e472b36c812a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:00:24 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:00:25 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       su-exec       tzdata &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:00:26 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v2.8.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '21fda0a4dc3c779c42737eca4b37e4f187d7ab91ba6301eed97b801af84a9ea2  /usr/local/bin/dasel' ;;       arm64) echo '2c75e63f9884c37578f48788819dda5a5a5c32ec6c4a663eefc19839f44d6291  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel --version # buildkit
# Mon, 22 Jun 2026 20:00:26 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Mon, 22 Jun 2026 20:00:28 GMT
ENV INFLUXDB_VERSION=2.8.0
# Mon, 22 Jun 2026 20:00:28 GMT
ENV INFLUXDB_PR=-2
# Mon, 22 Jun 2026 20:00:28 GMT
ENV INFLUXDB_PV=2.8.0-2
# Mon, 22 Jun 2026 20:00:28 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/usr/bin/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Mon, 22 Jun 2026 20:00:28 GMT
ENV INFLUX_CLI_VERSION=2.7.5
# Mon, 22 Jun 2026 20:00:30 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Mon, 22 Jun 2026 20:00:30 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Mon, 22 Jun 2026 20:00:30 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Mon, 22 Jun 2026 20:00:30 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Mon, 22 Jun 2026 20:00:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:00:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:00:30 GMT
CMD ["influxd"]
# Mon, 22 Jun 2026 20:00:30 GMT
EXPOSE map[8086/tcp:{}]
# Mon, 22 Jun 2026 20:00:30 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Mon, 22 Jun 2026 20:00:30 GMT
ENV INFLUXD_INIT_PORT=9999
# Mon, 22 Jun 2026 20:00:30 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Mon, 22 Jun 2026 20:00:30 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2de596e6e58599b275563cd7971ad9ea4ebcee65d366f85d02114624fbf249`  
		Last Modified: Mon, 22 Jun 2026 20:00:39 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e47010f8fa9aadd20f9b1272a1d48a10dec37a92b10cfc3b0e1e88293032f86`  
		Last Modified: Mon, 22 Jun 2026 20:00:40 GMT  
		Size: 10.1 MB (10131569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e2f0f00ca6c8b5a2f385f88fd56e2a2002c7f849280435818c54e7e67d886e1`  
		Last Modified: Mon, 22 Jun 2026 20:00:40 GMT  
		Size: 6.2 MB (6156985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae88b44184321c27f69f0d65225bf0345eb308adb40a51e0bc195dcf56706ab`  
		Last Modified: Mon, 22 Jun 2026 20:00:39 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9a9859a1ee557f7b97322fd3d9dfa42badd3bfad99562ab19885bb3c4ea9038`  
		Last Modified: Mon, 22 Jun 2026 20:00:42 GMT  
		Size: 50.5 MB (50451819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e42be4435d81fc2058dee513f5f73d1ebc9cf5d5fc2cf5bb9a7b199f8d6407`  
		Last Modified: Mon, 22 Jun 2026 20:00:42 GMT  
		Size: 11.8 MB (11775856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ad909451167dfa590943ac7172de1c00c460fce62d34c165c64beee93bf415`  
		Last Modified: Mon, 22 Jun 2026 20:00:41 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df943ce83f0bd48f291583d453235c9174d63676aa7582d1877620a5c238c182`  
		Last Modified: Mon, 22 Jun 2026 20:00:41 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d8872ea24f2334aed3b74c3af6bb2d3ad292f4c070ec47bffa3f88586e6d613`  
		Last Modified: Mon, 22 Jun 2026 20:00:42 GMT  
		Size: 6.3 KB (6281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.8.0-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:54585353d315cc20b3617d192a7893969bcd63cb83a894a805ed2542a1e13d58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **930.6 KB (930632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd9f04a07fb6a2b285f126a4972a6a8dddc003104fb21b42a429ba643d0fa7a`

```dockerfile
```

-	Layers:
	-	`sha256:2c0f18cf2d6735a4cf63165a9923007dfa2643039747b8b53e7e5f735b861144`  
		Last Modified: Mon, 22 Jun 2026 20:00:39 GMT  
		Size: 900.4 KB (900385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7effe877fe03342d070119ebdf5945e749a1bcd7abd8d4b2dacc4d3fadd39759`  
		Last Modified: Mon, 22 Jun 2026 20:00:39 GMT  
		Size: 30.2 KB (30247 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.8.0-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:682e3bc600359035af90f013a34cd66be95e02fa8f32dde664ae57255ca69412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79409097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9340a9118498084b062d5931b3b2abb9b82a637194ec244864a4c7a3b8a45d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:02:06 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:02:07 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       su-exec       tzdata &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:02:07 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v2.8.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '21fda0a4dc3c779c42737eca4b37e4f187d7ab91ba6301eed97b801af84a9ea2  /usr/local/bin/dasel' ;;       arm64) echo '2c75e63f9884c37578f48788819dda5a5a5c32ec6c4a663eefc19839f44d6291  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel --version # buildkit
# Mon, 22 Jun 2026 20:02:07 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Mon, 22 Jun 2026 20:02:10 GMT
ENV INFLUXDB_VERSION=2.8.0
# Mon, 22 Jun 2026 20:02:10 GMT
ENV INFLUXDB_PR=-2
# Mon, 22 Jun 2026 20:02:10 GMT
ENV INFLUXDB_PV=2.8.0-2
# Mon, 22 Jun 2026 20:02:10 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/usr/bin/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Mon, 22 Jun 2026 20:02:10 GMT
ENV INFLUX_CLI_VERSION=2.7.5
# Mon, 22 Jun 2026 20:02:11 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Mon, 22 Jun 2026 20:02:11 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Mon, 22 Jun 2026 20:02:11 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Mon, 22 Jun 2026 20:02:11 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Mon, 22 Jun 2026 20:02:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:02:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:02:11 GMT
CMD ["influxd"]
# Mon, 22 Jun 2026 20:02:11 GMT
EXPOSE map[8086/tcp:{}]
# Mon, 22 Jun 2026 20:02:11 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Mon, 22 Jun 2026 20:02:11 GMT
ENV INFLUXD_INIT_PORT=9999
# Mon, 22 Jun 2026 20:02:11 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Mon, 22 Jun 2026 20:02:11 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f922441b18ed983960868018586de078c1493717dd545696271d1bc1583fe2`  
		Last Modified: Mon, 22 Jun 2026 20:02:21 GMT  
		Size: 284.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d52270157bf6ce1eb285a71dfcdb1149a1329f6709186f6324de7812a047ae2`  
		Last Modified: Mon, 22 Jun 2026 20:02:22 GMT  
		Size: 10.1 MB (10098946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2038c557af79cd332c23d4291c6b12691e5921f3185662695855425f755b1989`  
		Last Modified: Mon, 22 Jun 2026 20:02:22 GMT  
		Size: 5.8 MB (5790430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c3532d109182a3b2a3e8736f15283bcb3651484145be8046eeec636d6b3a288`  
		Last Modified: Mon, 22 Jun 2026 20:02:21 GMT  
		Size: 948.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e05e708d132c6f24b39bed500d05e7706f7ab5950ba30c41feaf42e4d3411949`  
		Last Modified: Mon, 22 Jun 2026 20:02:24 GMT  
		Size: 48.2 MB (48229526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c18622f02a6a7fef6c51ece3cf07f3693225cac0c68bb78f0ec635899f49a9`  
		Last Modified: Mon, 22 Jun 2026 20:02:23 GMT  
		Size: 11.1 MB (11100381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39af25bdeb053327d3bbb021f201694c3721f09142831fb3c4b8bf32f174184b`  
		Last Modified: Mon, 22 Jun 2026 20:02:23 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0be0f8a93aba06f1ec766e58861827c7b338f4b08e6dbf75290cd85c22a9404`  
		Last Modified: Mon, 22 Jun 2026 20:02:24 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f0f6b559aea8b8aa4c34e0dcdbc24d4e9c5dcd25c4fa0bfb4c9e83a6325036`  
		Last Modified: Mon, 22 Jun 2026 20:02:25 GMT  
		Size: 6.3 KB (6281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.8.0-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:686d52939dfc1e6999857228e09135ab349748d45652b6b7d13bb2f63999fbaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **929.4 KB (929379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e01754f3a30c7e09409b47d6e027d9b3d20bf072cd3d785f37ccc19dd93037`

```dockerfile
```

-	Layers:
	-	`sha256:23e62c23f283845c78cb7f3967b4819dcf1a1d552524afe775119fd732994fa0`  
		Last Modified: Mon, 22 Jun 2026 20:02:21 GMT  
		Size: 899.0 KB (898962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9391fd7ef6f04c5a83cb95b5609a6be334be4287bde88451f9ae75a397868a4`  
		Last Modified: Mon, 22 Jun 2026 20:02:21 GMT  
		Size: 30.4 KB (30417 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:2.9`

```console
$ docker pull influxdb@sha256:f75e48af0598e8aec7986e991a848d19a119101a7d563a2e5db1dfaac9c45daa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.9` - linux; amd64

```console
$ docker pull influxdb@sha256:54ccb17391b0964f30ba9451d8a869ff8c7beefe76103e636f2c4a8502154e5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110818430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42603e14ab9ca094e595a264bbb69449f56f3d206a219d21add942dfa3651731`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:21 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:22 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 25 Aug 2026 00:52:22 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 25 Aug 2026 00:52:25 GMT
ENV INFLUXDB_VERSION=2.9.1
# Tue, 25 Aug 2026 00:52:25 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 25 Aug 2026 00:52:25 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Tue, 25 Aug 2026 00:52:26 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 25 Aug 2026 00:52:26 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 25 Aug 2026 00:52:26 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 25 Aug 2026 00:52:26 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 25 Aug 2026 00:52:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 00:52:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 00:52:26 GMT
CMD ["influxd"]
# Tue, 25 Aug 2026 00:52:26 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 00:52:26 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 25 Aug 2026 00:52:26 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 25 Aug 2026 00:52:26 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 25 Aug 2026 00:52:26 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:573c20ce328ee00d69474aa88510c7e1fb7a47d28fb264d5a3391af6d3c1ecd0`  
		Last Modified: Tue, 25 Aug 2026 00:52:38 GMT  
		Size: 9.8 MB (9820365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b666332ab0b4f9ac09935df5b3225436721d3c699ce82a1deb4ba6bc2343e7c7`  
		Last Modified: Tue, 25 Aug 2026 00:52:38 GMT  
		Size: 3.8 MB (3822788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b56ed1363977b928f6e20145c24cfce8118306ac73c59959cba5988cdb2c2a5`  
		Last Modified: Tue, 25 Aug 2026 00:52:38 GMT  
		Size: 3.2 KB (3230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00e0091fd5595e0c36b6b653404502f37e7d95a7ad9111923fbe13279ff5397`  
		Last Modified: Tue, 25 Aug 2026 00:52:39 GMT  
		Size: 56.5 MB (56510623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e13dc76fc9b131c9cd94926f285bd9c3bc468d3b8f31dbfbfe725379e9d74ce`  
		Last Modified: Tue, 25 Aug 2026 00:52:39 GMT  
		Size: 12.4 MB (12421825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81d6928acf75e25fa927d3d99db8cd22b5b9764b9dfa224fe27673ac559d4a46`  
		Last Modified: Tue, 25 Aug 2026 00:52:39 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba05685fbe242565fb25e7b6d854452592544aa736627878aaf361032d5b70c0`  
		Last Modified: Tue, 25 Aug 2026 00:52:39 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a71bf342900241ca53483c5d40e5e5a7ea1be9770eae90c01ab2fde9afede6f0`  
		Last Modified: Tue, 25 Aug 2026 00:52:40 GMT  
		Size: 6.5 KB (6501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9` - unknown; unknown

```console
$ docker pull influxdb@sha256:83b48ef4a4477ea81d552faa0222e8b392576373318ba0d64c49002f2972da9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2993300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcb8fe0577a07a49426a4d140f4125c08f728eddccf40156131247c72f63fae6`

```dockerfile
```

-	Layers:
	-	`sha256:88e29fba8d56ddd72483d27075640c32285d5262bfe97afa29396cb65e383c29`  
		Last Modified: Tue, 25 Aug 2026 00:52:38 GMT  
		Size: 3.0 MB (2964686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d36ca2ce49978c6376c07c0e6c7d88100cffabbbdab063d7a3e69ec42ec9b62`  
		Last Modified: Tue, 25 Aug 2026 00:52:37 GMT  
		Size: 28.6 KB (28614 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.9` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:f8af6f227b5932201b7714580b9d569a3fb88a8d63af9451a61f436f55c15d4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.3 MB (106346351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ff3a2c9c97df1e2ee8b9fb1af47269ebbc81ee75ba82f3ae151489c2a3eeb95`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:54:35 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:36 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 25 Aug 2026 00:54:36 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 25 Aug 2026 00:54:39 GMT
ENV INFLUXDB_VERSION=2.9.1
# Tue, 25 Aug 2026 00:54:39 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 25 Aug 2026 00:54:39 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Tue, 25 Aug 2026 00:54:40 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 25 Aug 2026 00:54:40 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 25 Aug 2026 00:54:40 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 25 Aug 2026 00:54:40 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 25 Aug 2026 00:54:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 00:54:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 00:54:40 GMT
CMD ["influxd"]
# Tue, 25 Aug 2026 00:54:40 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 00:54:40 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 25 Aug 2026 00:54:40 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 25 Aug 2026 00:54:40 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 25 Aug 2026 00:54:40 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be4a3a85cba26e3740ed0d7c4e95ff9338e94b7cc7b32098862e0a3196ffa58`  
		Last Modified: Tue, 25 Aug 2026 00:54:52 GMT  
		Size: 9.6 MB (9642612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f68c0310243dd00a42fbccd9b1ddae17ad6f980709b97a10a8e45ddfc31f58`  
		Last Modified: Tue, 25 Aug 2026 00:54:52 GMT  
		Size: 3.5 MB (3459170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a79605b2b591e355fc1d1fa9e722feb8f98188652f575d8a55445b120c9ee8`  
		Last Modified: Tue, 25 Aug 2026 00:54:51 GMT  
		Size: 3.2 KB (3233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ed692525c68caf840cda854a4aa4849997b727d18b87d5dfcb5ff2ce054fcb`  
		Last Modified: Tue, 25 Aug 2026 00:54:54 GMT  
		Size: 53.6 MB (53636815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f895831a6af0c751311d55a6fcd99d94bb7703ead79076c513492bb65871287c`  
		Last Modified: Tue, 25 Aug 2026 00:54:53 GMT  
		Size: 11.5 MB (11480291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e30eab3b9bf7b251cfab9f6aec90f76e119259c50df13e0666d20e039cd08c3`  
		Last Modified: Tue, 25 Aug 2026 00:54:53 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b6ad26339bf5969f86c9dee315d127351b183b3fd8eee4bf8247b73818a1b9`  
		Last Modified: Tue, 25 Aug 2026 00:54:53 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c055c0de443a05b84a1e86bdcca1a34299b7116a236c54169de57558628156`  
		Last Modified: Tue, 25 Aug 2026 00:54:54 GMT  
		Size: 6.5 KB (6500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9` - unknown; unknown

```console
$ docker pull influxdb@sha256:49b619a1a3713f33f29ea76e299876ca8abdf136ea95b6939bad27265ea833f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2992957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1605d7866684f8b130de747f1830979239c0bf4dd2a347e9779fb960299e2159`

```dockerfile
```

-	Layers:
	-	`sha256:9813f5510b5143be30dc061e4f97c93658252c17e42955e75523f57cc22d1f03`  
		Last Modified: Tue, 25 Aug 2026 00:54:52 GMT  
		Size: 3.0 MB (2964164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cf033b57e9a75ccea63737b4a0e43ba4b1a91a44dd225bf25edd057c3a2c1c2`  
		Last Modified: Tue, 25 Aug 2026 00:54:51 GMT  
		Size: 28.8 KB (28793 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:2.9-alpine`

```console
$ docker pull influxdb@sha256:243d7adc3edc2a3f98518e5395a9be725504acb43deb125bdcc78579b5c4bbd8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.9-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:818eb972f70c4b6b04b8b952b9ef54480221d92f2ee9cadf8f73c180efa69ac7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.8 MB (86761070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b096296ace6cf3ae6d76c243d555a7ab09f2c8728e9edfafe3d53fb285246929`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:09:05 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:09:06 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:09:07 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Mon, 22 Jun 2026 20:09:07 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Mon, 22 Jun 2026 20:09:09 GMT
ENV INFLUXDB_VERSION=2.9.1
# Mon, 22 Jun 2026 20:09:09 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Mon, 22 Jun 2026 20:09:09 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Mon, 22 Jun 2026 20:09:11 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Mon, 22 Jun 2026 20:09:11 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Mon, 22 Jun 2026 20:09:11 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Mon, 22 Jun 2026 20:09:11 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Mon, 22 Jun 2026 20:09:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:09:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:09:11 GMT
CMD ["influxd"]
# Mon, 22 Jun 2026 20:09:11 GMT
EXPOSE map[8086/tcp:{}]
# Mon, 22 Jun 2026 20:09:11 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Mon, 22 Jun 2026 20:09:11 GMT
ENV INFLUXD_INIT_PORT=9999
# Mon, 22 Jun 2026 20:09:11 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Mon, 22 Jun 2026 20:09:11 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815e4cbfb2c3ad1daa8f714c24a72c3d2b0e303f1111027d40b5312da53f31de`  
		Last Modified: Mon, 22 Jun 2026 20:09:21 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfa0863e35390742e4548bcf5d4e600c1be6d0755455ca8112ec638f514917f`  
		Last Modified: Mon, 22 Jun 2026 20:09:21 GMT  
		Size: 10.2 MB (10153309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c16c33fad802968c073de8ffffa8d98940359a5af641d9d05b3d2071e9f35dc`  
		Last Modified: Mon, 22 Jun 2026 20:09:21 GMT  
		Size: 3.8 MB (3822785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b5254f169ca7f4632bf1c4a6886be8c3ee24ffa1e3c7d272c6e61207b90691`  
		Last Modified: Mon, 22 Jun 2026 20:09:21 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c00901c9d827ec55083e4aa447c88e3e378e298ccfcba35973fe07e8fdda269a`  
		Last Modified: Mon, 22 Jun 2026 20:09:24 GMT  
		Size: 56.5 MB (56510565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1825355303a2ab6417b7c706fcf5ea913fe720042b5a4079626e769c316e6fe`  
		Last Modified: Mon, 22 Jun 2026 20:09:23 GMT  
		Size: 12.4 MB (12421830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b5d6296c0c0d7efca63b87bbc91abff262747443545664b1f815547245d11f9`  
		Last Modified: Mon, 22 Jun 2026 20:09:23 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb510e07f154987b609e67a3375ad656cf3cf0b54c4d995b03db16a636169806`  
		Last Modified: Mon, 22 Jun 2026 20:09:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73d8062e04e7b2675f34ef6027d0b3675741f596e699cf7a3429c82044e71c2c`  
		Last Modified: Mon, 22 Jun 2026 20:09:24 GMT  
		Size: 6.5 KB (6492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:b909722fbe18e31565de9f0388791e5072426eb9b96b73986d9911dde6dcec8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **964.1 KB (964077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a81d33f1c07105354816cca58dc95f1c19fbba37f61a1cf7d6f02a6d1a957a`

```dockerfile
```

-	Layers:
	-	`sha256:96f43458dc856669b2aceae57f8e1b0d5147450c3dfaa7918022becc39f9730a`  
		Last Modified: Mon, 22 Jun 2026 20:09:21 GMT  
		Size: 933.5 KB (933468 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3b73456f10634c97d1dfd78d72e2480b1f66779e757a35e695f8c5d702110e9`  
		Last Modified: Mon, 22 Jun 2026 20:09:21 GMT  
		Size: 30.6 KB (30609 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.9-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:6a4b5c4951f4a9c13581a0cf3a43e5a4d5a5a8b60e15864ecd43724f8a7c5cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82889238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:636ea576260a01ff5006284c916dd05e97d313acc823eabc64ad31d441f2ce62`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:02:10 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:02:11 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:02:12 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Mon, 22 Jun 2026 20:02:12 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Mon, 22 Jun 2026 20:02:15 GMT
ENV INFLUXDB_VERSION=2.9.1
# Mon, 22 Jun 2026 20:02:15 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Mon, 22 Jun 2026 20:02:15 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Mon, 22 Jun 2026 20:02:16 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Mon, 22 Jun 2026 20:02:16 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Mon, 22 Jun 2026 20:02:16 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Mon, 22 Jun 2026 20:02:16 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Mon, 22 Jun 2026 20:02:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:02:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:02:16 GMT
CMD ["influxd"]
# Mon, 22 Jun 2026 20:02:16 GMT
EXPOSE map[8086/tcp:{}]
# Mon, 22 Jun 2026 20:02:16 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Mon, 22 Jun 2026 20:02:16 GMT
ENV INFLUXD_INIT_PORT=9999
# Mon, 22 Jun 2026 20:02:16 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Mon, 22 Jun 2026 20:02:16 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edacd2d51faff6f48f2faf3e6d396d49d5183cf0c3ada0a95b2431dab1ffc1f8`  
		Last Modified: Mon, 22 Jun 2026 20:02:26 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc5aaaf51cb8d62c8e12d9219fcbe980bc1dadafe43e2c1b46c954b12a7b9176`  
		Last Modified: Mon, 22 Jun 2026 20:02:27 GMT  
		Size: 10.1 MB (10122926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1815eff9a2ea781805aff1e96afc1d10136f5e606ecea18f02a68fe299b9f01`  
		Last Modified: Mon, 22 Jun 2026 20:02:27 GMT  
		Size: 3.5 MB (3459172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090c4ea7909ad362cd9a477aa61908fc4c7c436550a45d1a4cdda2947e41b87f`  
		Last Modified: Mon, 22 Jun 2026 20:02:26 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e6657ca9b5adac502e3bdf8fa4af36ea4e23d7368c05b65348e52654922bc6`  
		Last Modified: Mon, 22 Jun 2026 20:02:30 GMT  
		Size: 53.6 MB (53636824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ffb2c6705a3ecf9ef6cb344eceedc4bcd23d002bd76247699124a08253a911`  
		Last Modified: Mon, 22 Jun 2026 20:02:28 GMT  
		Size: 11.5 MB (11480294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f669a9964c941948652e1e6a59afe7c3828c3511d80bd965b8ff287fa93c4a7`  
		Last Modified: Mon, 22 Jun 2026 20:02:28 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb5702b9165d688e2684dd980a734c9e367b800d01e5d613bce074c00276e63`  
		Last Modified: Mon, 22 Jun 2026 20:02:29 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca41adc90ce6a2fdc381ef91ccf0d6250809415be76050c4061ae155f2387b2`  
		Last Modified: Mon, 22 Jun 2026 20:02:29 GMT  
		Size: 6.5 KB (6492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:b58c3384dee6e2cf84bdd6cc6f1b973cf03e71a51dca1e9e1a4e883fe0aa851c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **962.9 KB (962870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51a574cef178a98e17e52022e92db9a65d510a5deddfbf2e47d70696506f545a`

```dockerfile
```

-	Layers:
	-	`sha256:9d49ccb5ade9b5a3ceb6f9ee6c0df708a11e818e19e69abf708bd00160a2918d`  
		Last Modified: Mon, 22 Jun 2026 20:02:26 GMT  
		Size: 932.1 KB (932067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0983355f8806d79c2a3e59548735b7e236a046ea9606377a031186e987e20940`  
		Last Modified: Mon, 22 Jun 2026 20:02:26 GMT  
		Size: 30.8 KB (30803 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:2.9.1`

```console
$ docker pull influxdb@sha256:f75e48af0598e8aec7986e991a848d19a119101a7d563a2e5db1dfaac9c45daa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.9.1` - linux; amd64

```console
$ docker pull influxdb@sha256:54ccb17391b0964f30ba9451d8a869ff8c7beefe76103e636f2c4a8502154e5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110818430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42603e14ab9ca094e595a264bbb69449f56f3d206a219d21add942dfa3651731`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:21 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:22 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 25 Aug 2026 00:52:22 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 25 Aug 2026 00:52:25 GMT
ENV INFLUXDB_VERSION=2.9.1
# Tue, 25 Aug 2026 00:52:25 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 25 Aug 2026 00:52:25 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Tue, 25 Aug 2026 00:52:26 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 25 Aug 2026 00:52:26 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 25 Aug 2026 00:52:26 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 25 Aug 2026 00:52:26 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 25 Aug 2026 00:52:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 00:52:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 00:52:26 GMT
CMD ["influxd"]
# Tue, 25 Aug 2026 00:52:26 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 00:52:26 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 25 Aug 2026 00:52:26 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 25 Aug 2026 00:52:26 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 25 Aug 2026 00:52:26 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:573c20ce328ee00d69474aa88510c7e1fb7a47d28fb264d5a3391af6d3c1ecd0`  
		Last Modified: Tue, 25 Aug 2026 00:52:38 GMT  
		Size: 9.8 MB (9820365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b666332ab0b4f9ac09935df5b3225436721d3c699ce82a1deb4ba6bc2343e7c7`  
		Last Modified: Tue, 25 Aug 2026 00:52:38 GMT  
		Size: 3.8 MB (3822788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b56ed1363977b928f6e20145c24cfce8118306ac73c59959cba5988cdb2c2a5`  
		Last Modified: Tue, 25 Aug 2026 00:52:38 GMT  
		Size: 3.2 KB (3230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00e0091fd5595e0c36b6b653404502f37e7d95a7ad9111923fbe13279ff5397`  
		Last Modified: Tue, 25 Aug 2026 00:52:39 GMT  
		Size: 56.5 MB (56510623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e13dc76fc9b131c9cd94926f285bd9c3bc468d3b8f31dbfbfe725379e9d74ce`  
		Last Modified: Tue, 25 Aug 2026 00:52:39 GMT  
		Size: 12.4 MB (12421825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81d6928acf75e25fa927d3d99db8cd22b5b9764b9dfa224fe27673ac559d4a46`  
		Last Modified: Tue, 25 Aug 2026 00:52:39 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba05685fbe242565fb25e7b6d854452592544aa736627878aaf361032d5b70c0`  
		Last Modified: Tue, 25 Aug 2026 00:52:39 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a71bf342900241ca53483c5d40e5e5a7ea1be9770eae90c01ab2fde9afede6f0`  
		Last Modified: Tue, 25 Aug 2026 00:52:40 GMT  
		Size: 6.5 KB (6501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9.1` - unknown; unknown

```console
$ docker pull influxdb@sha256:83b48ef4a4477ea81d552faa0222e8b392576373318ba0d64c49002f2972da9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2993300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcb8fe0577a07a49426a4d140f4125c08f728eddccf40156131247c72f63fae6`

```dockerfile
```

-	Layers:
	-	`sha256:88e29fba8d56ddd72483d27075640c32285d5262bfe97afa29396cb65e383c29`  
		Last Modified: Tue, 25 Aug 2026 00:52:38 GMT  
		Size: 3.0 MB (2964686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d36ca2ce49978c6376c07c0e6c7d88100cffabbbdab063d7a3e69ec42ec9b62`  
		Last Modified: Tue, 25 Aug 2026 00:52:37 GMT  
		Size: 28.6 KB (28614 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.9.1` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:f8af6f227b5932201b7714580b9d569a3fb88a8d63af9451a61f436f55c15d4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.3 MB (106346351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ff3a2c9c97df1e2ee8b9fb1af47269ebbc81ee75ba82f3ae151489c2a3eeb95`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:54:35 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:36 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 25 Aug 2026 00:54:36 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 25 Aug 2026 00:54:39 GMT
ENV INFLUXDB_VERSION=2.9.1
# Tue, 25 Aug 2026 00:54:39 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 25 Aug 2026 00:54:39 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Tue, 25 Aug 2026 00:54:40 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 25 Aug 2026 00:54:40 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 25 Aug 2026 00:54:40 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 25 Aug 2026 00:54:40 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 25 Aug 2026 00:54:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 00:54:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 00:54:40 GMT
CMD ["influxd"]
# Tue, 25 Aug 2026 00:54:40 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 00:54:40 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 25 Aug 2026 00:54:40 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 25 Aug 2026 00:54:40 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 25 Aug 2026 00:54:40 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be4a3a85cba26e3740ed0d7c4e95ff9338e94b7cc7b32098862e0a3196ffa58`  
		Last Modified: Tue, 25 Aug 2026 00:54:52 GMT  
		Size: 9.6 MB (9642612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f68c0310243dd00a42fbccd9b1ddae17ad6f980709b97a10a8e45ddfc31f58`  
		Last Modified: Tue, 25 Aug 2026 00:54:52 GMT  
		Size: 3.5 MB (3459170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a79605b2b591e355fc1d1fa9e722feb8f98188652f575d8a55445b120c9ee8`  
		Last Modified: Tue, 25 Aug 2026 00:54:51 GMT  
		Size: 3.2 KB (3233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ed692525c68caf840cda854a4aa4849997b727d18b87d5dfcb5ff2ce054fcb`  
		Last Modified: Tue, 25 Aug 2026 00:54:54 GMT  
		Size: 53.6 MB (53636815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f895831a6af0c751311d55a6fcd99d94bb7703ead79076c513492bb65871287c`  
		Last Modified: Tue, 25 Aug 2026 00:54:53 GMT  
		Size: 11.5 MB (11480291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e30eab3b9bf7b251cfab9f6aec90f76e119259c50df13e0666d20e039cd08c3`  
		Last Modified: Tue, 25 Aug 2026 00:54:53 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b6ad26339bf5969f86c9dee315d127351b183b3fd8eee4bf8247b73818a1b9`  
		Last Modified: Tue, 25 Aug 2026 00:54:53 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c055c0de443a05b84a1e86bdcca1a34299b7116a236c54169de57558628156`  
		Last Modified: Tue, 25 Aug 2026 00:54:54 GMT  
		Size: 6.5 KB (6500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9.1` - unknown; unknown

```console
$ docker pull influxdb@sha256:49b619a1a3713f33f29ea76e299876ca8abdf136ea95b6939bad27265ea833f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2992957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1605d7866684f8b130de747f1830979239c0bf4dd2a347e9779fb960299e2159`

```dockerfile
```

-	Layers:
	-	`sha256:9813f5510b5143be30dc061e4f97c93658252c17e42955e75523f57cc22d1f03`  
		Last Modified: Tue, 25 Aug 2026 00:54:52 GMT  
		Size: 3.0 MB (2964164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cf033b57e9a75ccea63737b4a0e43ba4b1a91a44dd225bf25edd057c3a2c1c2`  
		Last Modified: Tue, 25 Aug 2026 00:54:51 GMT  
		Size: 28.8 KB (28793 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:2.9.1-alpine`

```console
$ docker pull influxdb@sha256:243d7adc3edc2a3f98518e5395a9be725504acb43deb125bdcc78579b5c4bbd8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.9.1-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:818eb972f70c4b6b04b8b952b9ef54480221d92f2ee9cadf8f73c180efa69ac7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.8 MB (86761070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b096296ace6cf3ae6d76c243d555a7ab09f2c8728e9edfafe3d53fb285246929`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:09:05 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:09:06 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:09:07 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Mon, 22 Jun 2026 20:09:07 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Mon, 22 Jun 2026 20:09:09 GMT
ENV INFLUXDB_VERSION=2.9.1
# Mon, 22 Jun 2026 20:09:09 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Mon, 22 Jun 2026 20:09:09 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Mon, 22 Jun 2026 20:09:11 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Mon, 22 Jun 2026 20:09:11 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Mon, 22 Jun 2026 20:09:11 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Mon, 22 Jun 2026 20:09:11 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Mon, 22 Jun 2026 20:09:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:09:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:09:11 GMT
CMD ["influxd"]
# Mon, 22 Jun 2026 20:09:11 GMT
EXPOSE map[8086/tcp:{}]
# Mon, 22 Jun 2026 20:09:11 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Mon, 22 Jun 2026 20:09:11 GMT
ENV INFLUXD_INIT_PORT=9999
# Mon, 22 Jun 2026 20:09:11 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Mon, 22 Jun 2026 20:09:11 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815e4cbfb2c3ad1daa8f714c24a72c3d2b0e303f1111027d40b5312da53f31de`  
		Last Modified: Mon, 22 Jun 2026 20:09:21 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfa0863e35390742e4548bcf5d4e600c1be6d0755455ca8112ec638f514917f`  
		Last Modified: Mon, 22 Jun 2026 20:09:21 GMT  
		Size: 10.2 MB (10153309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c16c33fad802968c073de8ffffa8d98940359a5af641d9d05b3d2071e9f35dc`  
		Last Modified: Mon, 22 Jun 2026 20:09:21 GMT  
		Size: 3.8 MB (3822785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b5254f169ca7f4632bf1c4a6886be8c3ee24ffa1e3c7d272c6e61207b90691`  
		Last Modified: Mon, 22 Jun 2026 20:09:21 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c00901c9d827ec55083e4aa447c88e3e378e298ccfcba35973fe07e8fdda269a`  
		Last Modified: Mon, 22 Jun 2026 20:09:24 GMT  
		Size: 56.5 MB (56510565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1825355303a2ab6417b7c706fcf5ea913fe720042b5a4079626e769c316e6fe`  
		Last Modified: Mon, 22 Jun 2026 20:09:23 GMT  
		Size: 12.4 MB (12421830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b5d6296c0c0d7efca63b87bbc91abff262747443545664b1f815547245d11f9`  
		Last Modified: Mon, 22 Jun 2026 20:09:23 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb510e07f154987b609e67a3375ad656cf3cf0b54c4d995b03db16a636169806`  
		Last Modified: Mon, 22 Jun 2026 20:09:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73d8062e04e7b2675f34ef6027d0b3675741f596e699cf7a3429c82044e71c2c`  
		Last Modified: Mon, 22 Jun 2026 20:09:24 GMT  
		Size: 6.5 KB (6492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9.1-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:b909722fbe18e31565de9f0388791e5072426eb9b96b73986d9911dde6dcec8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **964.1 KB (964077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a81d33f1c07105354816cca58dc95f1c19fbba37f61a1cf7d6f02a6d1a957a`

```dockerfile
```

-	Layers:
	-	`sha256:96f43458dc856669b2aceae57f8e1b0d5147450c3dfaa7918022becc39f9730a`  
		Last Modified: Mon, 22 Jun 2026 20:09:21 GMT  
		Size: 933.5 KB (933468 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3b73456f10634c97d1dfd78d72e2480b1f66779e757a35e695f8c5d702110e9`  
		Last Modified: Mon, 22 Jun 2026 20:09:21 GMT  
		Size: 30.6 KB (30609 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.9.1-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:6a4b5c4951f4a9c13581a0cf3a43e5a4d5a5a8b60e15864ecd43724f8a7c5cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82889238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:636ea576260a01ff5006284c916dd05e97d313acc823eabc64ad31d441f2ce62`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:02:10 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:02:11 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:02:12 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Mon, 22 Jun 2026 20:02:12 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Mon, 22 Jun 2026 20:02:15 GMT
ENV INFLUXDB_VERSION=2.9.1
# Mon, 22 Jun 2026 20:02:15 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Mon, 22 Jun 2026 20:02:15 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Mon, 22 Jun 2026 20:02:16 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Mon, 22 Jun 2026 20:02:16 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Mon, 22 Jun 2026 20:02:16 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Mon, 22 Jun 2026 20:02:16 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Mon, 22 Jun 2026 20:02:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:02:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:02:16 GMT
CMD ["influxd"]
# Mon, 22 Jun 2026 20:02:16 GMT
EXPOSE map[8086/tcp:{}]
# Mon, 22 Jun 2026 20:02:16 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Mon, 22 Jun 2026 20:02:16 GMT
ENV INFLUXD_INIT_PORT=9999
# Mon, 22 Jun 2026 20:02:16 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Mon, 22 Jun 2026 20:02:16 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edacd2d51faff6f48f2faf3e6d396d49d5183cf0c3ada0a95b2431dab1ffc1f8`  
		Last Modified: Mon, 22 Jun 2026 20:02:26 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc5aaaf51cb8d62c8e12d9219fcbe980bc1dadafe43e2c1b46c954b12a7b9176`  
		Last Modified: Mon, 22 Jun 2026 20:02:27 GMT  
		Size: 10.1 MB (10122926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1815eff9a2ea781805aff1e96afc1d10136f5e606ecea18f02a68fe299b9f01`  
		Last Modified: Mon, 22 Jun 2026 20:02:27 GMT  
		Size: 3.5 MB (3459172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090c4ea7909ad362cd9a477aa61908fc4c7c436550a45d1a4cdda2947e41b87f`  
		Last Modified: Mon, 22 Jun 2026 20:02:26 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e6657ca9b5adac502e3bdf8fa4af36ea4e23d7368c05b65348e52654922bc6`  
		Last Modified: Mon, 22 Jun 2026 20:02:30 GMT  
		Size: 53.6 MB (53636824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ffb2c6705a3ecf9ef6cb344eceedc4bcd23d002bd76247699124a08253a911`  
		Last Modified: Mon, 22 Jun 2026 20:02:28 GMT  
		Size: 11.5 MB (11480294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f669a9964c941948652e1e6a59afe7c3828c3511d80bd965b8ff287fa93c4a7`  
		Last Modified: Mon, 22 Jun 2026 20:02:28 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb5702b9165d688e2684dd980a734c9e367b800d01e5d613bce074c00276e63`  
		Last Modified: Mon, 22 Jun 2026 20:02:29 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca41adc90ce6a2fdc381ef91ccf0d6250809415be76050c4061ae155f2387b2`  
		Last Modified: Mon, 22 Jun 2026 20:02:29 GMT  
		Size: 6.5 KB (6492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9.1-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:b58c3384dee6e2cf84bdd6cc6f1b973cf03e71a51dca1e9e1a4e883fe0aa851c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **962.9 KB (962870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51a574cef178a98e17e52022e92db9a65d510a5deddfbf2e47d70696506f545a`

```dockerfile
```

-	Layers:
	-	`sha256:9d49ccb5ade9b5a3ceb6f9ee6c0df708a11e818e19e69abf708bd00160a2918d`  
		Last Modified: Mon, 22 Jun 2026 20:02:26 GMT  
		Size: 932.1 KB (932067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0983355f8806d79c2a3e59548735b7e236a046ea9606377a031186e987e20940`  
		Last Modified: Mon, 22 Jun 2026 20:02:26 GMT  
		Size: 30.8 KB (30803 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3-core`

```console
$ docker pull influxdb@sha256:f4a6d4a76f0ed0a196cc997da472cd0b7ae52a766430493a1bead807ab8c1217
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3-core` - linux; amd64

```console
$ docker pull influxdb@sha256:3fd7b4c049281b59941473d2ccfa2776b37097c7a598557374ebb6bd723a19ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148752544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657aa846b6ffad91a8f7ee9b316ee12305300e467d7b36760950420d25c54303`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 00:11:39 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 21 Aug 2026 00:11:39 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 21 Aug 2026 00:11:44 GMT
ENV INFLUXDB_VERSION=3.11.2
# Fri, 21 Aug 2026 00:11:44 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 21 Aug 2026 00:11:44 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 21 Aug 2026 00:11:44 GMT
USER influxdb3
# Fri, 21 Aug 2026 00:11:45 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 21 Aug 2026 00:11:45 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 21 Aug 2026 00:11:45 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 21 Aug 2026 00:11:45 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca5c734a9e8b1ee1738e726a6b0032a97524c9df918bb7d1ad9abc0b7179926`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 6.6 MB (6628662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869bfdd061f0884e41642343eb999dfa5725add2c0527afbecd0281e4bf75218`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1990311f832de26b9f2f8ead2190893c7b9aa4160de5411736659062f3a858a8`  
		Last Modified: Fri, 21 Aug 2026 00:12:05 GMT  
		Size: 112.4 MB (112366750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29bc24595019267a11de33569bcca7e600c8eed2df21b5c8e67dcfe252c95a8`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8db16aca7e821f467be353e192d1749fe0ae4639ff0281ce4d3fe6b40c7f56`  
		Last Modified: Fri, 21 Aug 2026 00:12:04 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:81a23a22fcb7208c141df3e4014dfc86c54840e087e0ce40b01fa5ba19918ab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4479f805cd516263057be17f6e8324fe575449410f5565c3848961e24ee82a`

```dockerfile
```

-	Layers:
	-	`sha256:aa2056c057b63ec911cecd253150da4673159d7cc2d783a642a867bd99a3f79a`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 2.3 MB (2294399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b431d281ead2b2cbf70d3cb893e97d75f778d5357d8bf68884f54c4f246bf224`  
		Last Modified: Fri, 21 Aug 2026 00:12:02 GMT  
		Size: 17.6 KB (17640 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:954889ddc239d076f5a2accc480561cb511e3991f1955cfc1fb20d12d1321514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (140020224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f159333ef0277d4b0685067586020123c1bcb61324afd8ce1ba5b32e8b31de`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 00:11:30 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 21 Aug 2026 00:11:31 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 21 Aug 2026 00:11:39 GMT
ENV INFLUXDB_VERSION=3.11.2
# Fri, 21 Aug 2026 00:11:39 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 21 Aug 2026 00:11:39 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 21 Aug 2026 00:11:39 GMT
USER influxdb3
# Fri, 21 Aug 2026 00:11:40 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 21 Aug 2026 00:11:40 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 21 Aug 2026 00:11:40 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 21 Aug 2026 00:11:40 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196fac50616879f64c1bfb593c970fdca576f2cdb93dd79a862cde5c4ced73c7`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 6.6 MB (6642945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d3c987ea49a5a21f6960392531cc691e18d722059515df3259dd2a7baf55d7`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 3.7 KB (3657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3e6cb4f07f841b318902907f29c695289029c300c43e54e0c43b711fe576884`  
		Last Modified: Fri, 21 Aug 2026 00:11:59 GMT  
		Size: 104.5 MB (104485718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc977fade2fc1da64e478206bd0a12f089fb1c2013ad72836cc16393b851e574`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:643c2b6aa95ca9cdd8546749c7f0f77542322b23094265796eba101a6f2c946f`  
		Last Modified: Fri, 21 Aug 2026 00:11:57 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:52f43d318e993f3bf1102af10efcd431c1cb854ad05ab094a3db6fdbd9b50d59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c68f7864c2b17a844f4b2ef7b6d3be1afe0b302d03b73fb3279259e73b23ae`

```dockerfile
```

-	Layers:
	-	`sha256:8b81a2105cabf39cbe112a3a431a30692975f95f6f3f38c25d1511bacd32a658`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 2.3 MB (2295481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:596ff1c375ac23dae3d89e88e74b3f0e12eb77d5320ad4fcae6ffb3cb4505ba6`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3-enterprise`

```console
$ docker pull influxdb@sha256:6ce2bf22499bac577c18ea21a6a28ad5fa4fcdf1ebc1ca47c2a723ee24c4ccca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:443933e285bc7814adaeb945c974504b52f660819001e7ae6112e495c3fc74bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.2 MB (183191964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6efc20e12d8889884d0eb5ab8cb6ca37f058c004c503573ac80277b8eb1067ef`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 00:11:39 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 21 Aug 2026 00:11:39 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 21 Aug 2026 00:12:18 GMT
ENV INFLUXDB_VERSION=3.11.2
# Fri, 21 Aug 2026 00:12:18 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 21 Aug 2026 00:12:18 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 21 Aug 2026 00:12:18 GMT
USER influxdb3
# Fri, 21 Aug 2026 00:12:18 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 21 Aug 2026 00:12:18 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 21 Aug 2026 00:12:18 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 21 Aug 2026 00:12:18 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 21 Aug 2026 00:12:18 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 21 Aug 2026 00:12:18 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 21 Aug 2026 00:12:18 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 21 Aug 2026 00:12:18 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 21 Aug 2026 00:12:18 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca5c734a9e8b1ee1738e726a6b0032a97524c9df918bb7d1ad9abc0b7179926`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 6.6 MB (6628662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869bfdd061f0884e41642343eb999dfa5725add2c0527afbecd0281e4bf75218`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a4c32ea7283eebe80c18980dba2e41c03c9c324d402c0bc86e7cfbd6b35b800`  
		Last Modified: Fri, 21 Aug 2026 00:12:43 GMT  
		Size: 146.8 MB (146806171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0baa2797004847c50a78a175fd64ff2310af11df59533add12d8512f3ea40ee`  
		Last Modified: Fri, 21 Aug 2026 00:12:39 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cfbaac37ca5b9422af5597997d4e6c823e80ade2cc43e45857cdf3afaf6bda5`  
		Last Modified: Fri, 21 Aug 2026 00:12:39 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:fd6227bc17d0850ed5ea948bf3771f0b051f2f008cc324242bc86282b685bdc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc5606751c181b4f7f4f2e310ca1f8c27d822177fa51eebf3d24709ac60c766`

```dockerfile
```

-	Layers:
	-	`sha256:1b92ac1dfc506ea254cbd9b94d6200651d67ef202e364945be911262ea53405d`  
		Last Modified: Fri, 21 Aug 2026 00:12:39 GMT  
		Size: 2.3 MB (2294447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:788cf47f9627f0a5604261cbbecad1949c9c99279c252d3e0fcbc7542e2f0bc4`  
		Last Modified: Fri, 21 Aug 2026 00:12:39 GMT  
		Size: 17.8 KB (17820 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:f13fbfcc4a911776ddffec62e64c9d9498877d6dc39687c6e789a4dfc7550ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173657800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40974e876245a810357a5ef4f655ce5d3a0d803aa3d5882bac6e410b66f2b58a`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 00:11:30 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 21 Aug 2026 00:11:31 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 21 Aug 2026 00:12:15 GMT
ENV INFLUXDB_VERSION=3.11.2
# Fri, 21 Aug 2026 00:12:15 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 21 Aug 2026 00:12:15 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 21 Aug 2026 00:12:15 GMT
USER influxdb3
# Fri, 21 Aug 2026 00:12:15 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 21 Aug 2026 00:12:15 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 21 Aug 2026 00:12:15 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 21 Aug 2026 00:12:15 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 21 Aug 2026 00:12:15 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 21 Aug 2026 00:12:15 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 21 Aug 2026 00:12:15 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 21 Aug 2026 00:12:15 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 21 Aug 2026 00:12:15 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196fac50616879f64c1bfb593c970fdca576f2cdb93dd79a862cde5c4ced73c7`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 6.6 MB (6642945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d3c987ea49a5a21f6960392531cc691e18d722059515df3259dd2a7baf55d7`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 3.7 KB (3657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6cdc141a1a86d823a5e3ad3bb58ba48a2f4d086e96f3cb953367beb1bc4a69`  
		Last Modified: Fri, 21 Aug 2026 00:12:37 GMT  
		Size: 138.1 MB (138123293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02f84da1e60f1e783415a2d136487cdd43ef5aa366f0e2f797934ac9068b506`  
		Last Modified: Fri, 21 Aug 2026 00:12:34 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab66e68a6248369e983837f355420d907f6a8b394ed8eb6b6a1eaf17a6bdeecc`  
		Last Modified: Fri, 21 Aug 2026 00:12:34 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:540efd2f723b61e8cc24099da2ecadf8b782b214a07a5b4bd57191af3c18f3f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31baa2926667f7de7f5bace59f1b7f1e9839b4cfeb44b7825c738f63b317bf82`

```dockerfile
```

-	Layers:
	-	`sha256:7ae4c08733ec2746920b777383322cc30ff2c49ae04b7899e6b7d28a4ff62e55`  
		Last Modified: Fri, 21 Aug 2026 00:12:34 GMT  
		Size: 2.3 MB (2295529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d15ad4e71446f37d5ba6c52200ae7ba1192684f93360db80ca5bf12c10d72345`  
		Last Modified: Fri, 21 Aug 2026 00:12:34 GMT  
		Size: 18.0 KB (17970 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.10-core`

```console
$ docker pull influxdb@sha256:695a8063ff105c66dbc37c03da80b1ed98e0909dc98e03192fbdec2c09c06ab6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.10-core` - linux; amd64

```console
$ docker pull influxdb@sha256:78bc2752ec904e9e1264fca5cd6163fbd4ad709505c162cb228060f2c71f0471
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.5 MB (149544951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fda7774b39783783db0b3959310ae4babcade785695c343d5040eecc2c629e8`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:23:08 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 18 Aug 2026 19:23:09 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 18 Aug 2026 19:23:18 GMT
ENV INFLUXDB_VERSION=3.10.5
# Tue, 18 Aug 2026 19:23:18 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 18 Aug 2026 19:23:18 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:23:18 GMT
USER influxdb3
# Tue, 18 Aug 2026 19:23:19 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 18 Aug 2026 19:23:19 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 18 Aug 2026 19:23:19 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 18 Aug 2026 19:23:19 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 18 Aug 2026 19:23:19 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 18 Aug 2026 19:23:19 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 18 Aug 2026 19:23:19 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 18 Aug 2026 19:23:19 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 18 Aug 2026 19:23:19 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edddf995b9a8d879d4df5f78a907c64034e0f9a011881ef0b654da1ef07542ae`  
		Last Modified: Tue, 18 Aug 2026 19:23:38 GMT  
		Size: 6.6 MB (6628129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:348299fca9835c12bb3c3576050aca4e34e8c0359d41b8bd2b857c14d14e03b3`  
		Last Modified: Tue, 18 Aug 2026 19:23:37 GMT  
		Size: 3.7 KB (3660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaafe726094b5d1efcaf8c2c847fe32ab6780a0db0a2e5d2e172ba41d1dcc5de`  
		Last Modified: Tue, 18 Aug 2026 19:23:41 GMT  
		Size: 113.2 MB (113159685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d09d4ce4f7c2eab3f08e567d694771bcf70f1f38d37f4dd7116dd94b7e31bcf9`  
		Last Modified: Tue, 18 Aug 2026 19:23:38 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9312421a02105948e43cab3a3e2baf46f667257bcbaf64bc6a67bb4ce3f320a4`  
		Last Modified: Tue, 18 Aug 2026 19:23:39 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.10-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:c54b56e617fccc41cc1f1ea0f99b243437b35f283d263c6a71b18e119dfcb125
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a21b901362d2df7601914927f93bcbdae1b5772f106754f49185a136bdf6ed1`

```dockerfile
```

-	Layers:
	-	`sha256:2c11763235b90a464241cd3928bb8c1df4c09e3f0a543145b0685cc8a7642a50`  
		Last Modified: Tue, 18 Aug 2026 19:23:38 GMT  
		Size: 2.3 MB (2293799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:800e703333502cbad431f4fcecf631be4f695339818b86a088ba04c01905cce6`  
		Last Modified: Tue, 18 Aug 2026 19:23:37 GMT  
		Size: 17.0 KB (17041 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.10-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:b9ccda2b7f523d8996f4da41804df7a0466a37e1ca9b35109c3072124911046b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.8 MB (140807677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0adbe6214346aba85fc52f2f14e22fc99c4066c313b440a21938cc76fb000b2`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:22:43 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 18 Aug 2026 19:22:43 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 18 Aug 2026 19:23:22 GMT
ENV INFLUXDB_VERSION=3.10.5
# Tue, 18 Aug 2026 19:23:22 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 18 Aug 2026 19:23:22 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:23:22 GMT
USER influxdb3
# Tue, 18 Aug 2026 19:23:22 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 18 Aug 2026 19:23:22 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 18 Aug 2026 19:23:22 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 18 Aug 2026 19:23:22 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 18 Aug 2026 19:23:22 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 18 Aug 2026 19:23:22 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 18 Aug 2026 19:23:22 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 18 Aug 2026 19:23:22 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 18 Aug 2026 19:23:22 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12274f31c8e7b149351e8db8cd934f7cd091adbd4a01a8a021a1b3501c3149b1`  
		Last Modified: Tue, 18 Aug 2026 19:23:07 GMT  
		Size: 6.6 MB (6642196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f6f48fd995e54af9b980337fe34a42190438aea49fab44766c63b14a8bb2e56`  
		Last Modified: Tue, 18 Aug 2026 19:23:06 GMT  
		Size: 3.7 KB (3652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c52e2b9549c6347e2050c66752f891fc47e35940b59c7a03c7d22c92c98a913`  
		Last Modified: Tue, 18 Aug 2026 19:23:40 GMT  
		Size: 105.3 MB (105273925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f5388737910d456b7fce0f4bc70f7ee51bff76bf468b4711828b199b4aafb3`  
		Last Modified: Tue, 18 Aug 2026 19:23:38 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4252487f3767e0249963c8a212f5a7903712cb12a8c3f0e79c6fcbe13f0960c6`  
		Last Modified: Tue, 18 Aug 2026 19:23:38 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.10-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:5db0a0613a79b8a813be78db0e6bb809d6ee9bd3d340ea22c49179ea9749477b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7774a9aff9b8a00c4fed90ffc5e313f1573e07bddd31f6048e5d6f6ec8f30503`

```dockerfile
```

-	Layers:
	-	`sha256:16332d34fecd4695143be7122500a33797229b5c43a62f1b72ae692136963ccc`  
		Last Modified: Tue, 18 Aug 2026 19:23:38 GMT  
		Size: 2.3 MB (2294857 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5a257920fb75a0dc99d0e18cc3e4d6827adfb7e5c95afc124e5e6f1f7bdbd9a`  
		Last Modified: Tue, 18 Aug 2026 19:23:38 GMT  
		Size: 17.2 KB (17166 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.10-enterprise`

```console
$ docker pull influxdb@sha256:87ee744b556f054afaac338651d2080681d3873812c873eef7d3a6fca10b9fd6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.10-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:4f269bba08582bbec58996024871811e86508c931977c7f8ab2f6907752746fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164645895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0c6e128147e80a6c77b2c478df793aecf2a2f7c92ecd461f0cd1794b77668c0`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:23:20 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 18 Aug 2026 19:23:20 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 18 Aug 2026 19:23:27 GMT
ENV INFLUXDB_VERSION=3.10.5
# Tue, 18 Aug 2026 19:23:27 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 18 Aug 2026 19:23:27 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:23:27 GMT
USER influxdb3
# Tue, 18 Aug 2026 19:23:27 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 18 Aug 2026 19:23:27 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 18 Aug 2026 19:23:27 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 18 Aug 2026 19:23:27 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 18 Aug 2026 19:23:27 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 18 Aug 2026 19:23:27 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 18 Aug 2026 19:23:27 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 18 Aug 2026 19:23:27 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 18 Aug 2026 19:23:27 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2a709fbb74c7804b60264d3b1eb7c7ef47b3c2ae5a50bb9514619c01755f62e`  
		Last Modified: Tue, 18 Aug 2026 19:23:46 GMT  
		Size: 6.6 MB (6628164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d9512abd75f519717507a13fb6e5bdb3a272ef60e8fad399fb03239edbed1db`  
		Last Modified: Tue, 18 Aug 2026 19:23:45 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d47634889814e6264c08f0a0c653a769e3de7508acaec870bd20e22113fe43`  
		Last Modified: Tue, 18 Aug 2026 19:23:48 GMT  
		Size: 128.3 MB (128260602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f64e213e960db4b4541f8395b7dd849e3e1538f3f4e4ce58d7186d069035606`  
		Last Modified: Tue, 18 Aug 2026 19:23:46 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb3d290c5e186563bbd1e9e3dfd6134f5d87d54cca0f5eca6c6da86017ad8c20`  
		Last Modified: Tue, 18 Aug 2026 19:23:47 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.10-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:2ffa8d4cac0e0a23283feaa697f00d6c138456c6925c3bef597126c1f81550fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d34a8ab0c1a4923cf92daf8d4fbbb5419daa95e036a03a3c55492f8991f573e5`

```dockerfile
```

-	Layers:
	-	`sha256:7f63411a7491ef7fc64206ee91805e4e21418780f4a3c30bfc48e94308e98f12`  
		Last Modified: Tue, 18 Aug 2026 19:23:46 GMT  
		Size: 2.3 MB (2293823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb92636a7c73da0ddc21b711c0781b2b36531a3b8b6b224a51cb3d962ed21b5e`  
		Last Modified: Tue, 18 Aug 2026 19:23:46 GMT  
		Size: 17.2 KB (17197 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.10-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:b59e307abe31443feb363f00d812bfca011234b1cc535c41bcd870915a52098f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.6 MB (155623725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb4efb349121ad7c30c924a46a9ac90b5c939c8972b5abfadddb6a3e77c3e8e`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:23:09 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 18 Aug 2026 19:23:10 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 18 Aug 2026 19:23:17 GMT
ENV INFLUXDB_VERSION=3.10.5
# Tue, 18 Aug 2026 19:23:17 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 18 Aug 2026 19:23:17 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:23:17 GMT
USER influxdb3
# Tue, 18 Aug 2026 19:23:17 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 18 Aug 2026 19:23:17 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 18 Aug 2026 19:23:17 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 18 Aug 2026 19:23:17 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 18 Aug 2026 19:23:17 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 18 Aug 2026 19:23:17 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 18 Aug 2026 19:23:17 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 18 Aug 2026 19:23:17 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 18 Aug 2026 19:23:17 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f81b2ca6bf4a127e4be40915d2148346188afcc522a338fc9a25fd5a5c9a38c`  
		Last Modified: Tue, 18 Aug 2026 19:23:35 GMT  
		Size: 6.6 MB (6642249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9187739f7b8334ff01dc2700967032b0440de32eb839e01ba019b203c934f227`  
		Last Modified: Tue, 18 Aug 2026 19:23:35 GMT  
		Size: 3.7 KB (3652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68520c3cd83ae7912813983d727d584c6b4b9439b94ccf413e1c0356e504b751`  
		Last Modified: Tue, 18 Aug 2026 19:23:38 GMT  
		Size: 120.1 MB (120089920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146a600f73d4dd3828c45901123a5c03233c23f4aca053dd5a33a48bd433d2d1`  
		Last Modified: Tue, 18 Aug 2026 19:23:35 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0413b8cf46fcfad122f90578276b0e45fb82db227c3e6df316f7266c14a778f`  
		Last Modified: Tue, 18 Aug 2026 19:23:36 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.10-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:0f2ce6f82143b95221f3b6b30f6c30f43c7b6eabf49da56916011cebc58927ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5023d1a47530677746506b7242cf593ae2e0668adabbb4c635f2405d8df57358`

```dockerfile
```

-	Layers:
	-	`sha256:c771b8e5299e00eb63daf541262d0afbae6b5282c242871fcf74c65c1ae5cdd3`  
		Last Modified: Tue, 18 Aug 2026 19:23:35 GMT  
		Size: 2.3 MB (2294881 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5eb165e9eefb26e1b9911924116db496854b5ce209a195a07a03ec6c97cc1e9`  
		Last Modified: Tue, 18 Aug 2026 19:23:35 GMT  
		Size: 17.3 KB (17322 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.10.5-core`

```console
$ docker pull influxdb@sha256:695a8063ff105c66dbc37c03da80b1ed98e0909dc98e03192fbdec2c09c06ab6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.10.5-core` - linux; amd64

```console
$ docker pull influxdb@sha256:78bc2752ec904e9e1264fca5cd6163fbd4ad709505c162cb228060f2c71f0471
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.5 MB (149544951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fda7774b39783783db0b3959310ae4babcade785695c343d5040eecc2c629e8`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:23:08 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 18 Aug 2026 19:23:09 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 18 Aug 2026 19:23:18 GMT
ENV INFLUXDB_VERSION=3.10.5
# Tue, 18 Aug 2026 19:23:18 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 18 Aug 2026 19:23:18 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:23:18 GMT
USER influxdb3
# Tue, 18 Aug 2026 19:23:19 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 18 Aug 2026 19:23:19 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 18 Aug 2026 19:23:19 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 18 Aug 2026 19:23:19 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 18 Aug 2026 19:23:19 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 18 Aug 2026 19:23:19 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 18 Aug 2026 19:23:19 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 18 Aug 2026 19:23:19 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 18 Aug 2026 19:23:19 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edddf995b9a8d879d4df5f78a907c64034e0f9a011881ef0b654da1ef07542ae`  
		Last Modified: Tue, 18 Aug 2026 19:23:38 GMT  
		Size: 6.6 MB (6628129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:348299fca9835c12bb3c3576050aca4e34e8c0359d41b8bd2b857c14d14e03b3`  
		Last Modified: Tue, 18 Aug 2026 19:23:37 GMT  
		Size: 3.7 KB (3660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaafe726094b5d1efcaf8c2c847fe32ab6780a0db0a2e5d2e172ba41d1dcc5de`  
		Last Modified: Tue, 18 Aug 2026 19:23:41 GMT  
		Size: 113.2 MB (113159685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d09d4ce4f7c2eab3f08e567d694771bcf70f1f38d37f4dd7116dd94b7e31bcf9`  
		Last Modified: Tue, 18 Aug 2026 19:23:38 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9312421a02105948e43cab3a3e2baf46f667257bcbaf64bc6a67bb4ce3f320a4`  
		Last Modified: Tue, 18 Aug 2026 19:23:39 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.10.5-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:c54b56e617fccc41cc1f1ea0f99b243437b35f283d263c6a71b18e119dfcb125
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a21b901362d2df7601914927f93bcbdae1b5772f106754f49185a136bdf6ed1`

```dockerfile
```

-	Layers:
	-	`sha256:2c11763235b90a464241cd3928bb8c1df4c09e3f0a543145b0685cc8a7642a50`  
		Last Modified: Tue, 18 Aug 2026 19:23:38 GMT  
		Size: 2.3 MB (2293799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:800e703333502cbad431f4fcecf631be4f695339818b86a088ba04c01905cce6`  
		Last Modified: Tue, 18 Aug 2026 19:23:37 GMT  
		Size: 17.0 KB (17041 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.10.5-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:b9ccda2b7f523d8996f4da41804df7a0466a37e1ca9b35109c3072124911046b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.8 MB (140807677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0adbe6214346aba85fc52f2f14e22fc99c4066c313b440a21938cc76fb000b2`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:22:43 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 18 Aug 2026 19:22:43 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 18 Aug 2026 19:23:22 GMT
ENV INFLUXDB_VERSION=3.10.5
# Tue, 18 Aug 2026 19:23:22 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 18 Aug 2026 19:23:22 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:23:22 GMT
USER influxdb3
# Tue, 18 Aug 2026 19:23:22 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 18 Aug 2026 19:23:22 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 18 Aug 2026 19:23:22 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 18 Aug 2026 19:23:22 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 18 Aug 2026 19:23:22 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 18 Aug 2026 19:23:22 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 18 Aug 2026 19:23:22 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 18 Aug 2026 19:23:22 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 18 Aug 2026 19:23:22 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12274f31c8e7b149351e8db8cd934f7cd091adbd4a01a8a021a1b3501c3149b1`  
		Last Modified: Tue, 18 Aug 2026 19:23:07 GMT  
		Size: 6.6 MB (6642196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f6f48fd995e54af9b980337fe34a42190438aea49fab44766c63b14a8bb2e56`  
		Last Modified: Tue, 18 Aug 2026 19:23:06 GMT  
		Size: 3.7 KB (3652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c52e2b9549c6347e2050c66752f891fc47e35940b59c7a03c7d22c92c98a913`  
		Last Modified: Tue, 18 Aug 2026 19:23:40 GMT  
		Size: 105.3 MB (105273925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f5388737910d456b7fce0f4bc70f7ee51bff76bf468b4711828b199b4aafb3`  
		Last Modified: Tue, 18 Aug 2026 19:23:38 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4252487f3767e0249963c8a212f5a7903712cb12a8c3f0e79c6fcbe13f0960c6`  
		Last Modified: Tue, 18 Aug 2026 19:23:38 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.10.5-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:5db0a0613a79b8a813be78db0e6bb809d6ee9bd3d340ea22c49179ea9749477b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7774a9aff9b8a00c4fed90ffc5e313f1573e07bddd31f6048e5d6f6ec8f30503`

```dockerfile
```

-	Layers:
	-	`sha256:16332d34fecd4695143be7122500a33797229b5c43a62f1b72ae692136963ccc`  
		Last Modified: Tue, 18 Aug 2026 19:23:38 GMT  
		Size: 2.3 MB (2294857 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5a257920fb75a0dc99d0e18cc3e4d6827adfb7e5c95afc124e5e6f1f7bdbd9a`  
		Last Modified: Tue, 18 Aug 2026 19:23:38 GMT  
		Size: 17.2 KB (17166 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.10.5-enterprise`

```console
$ docker pull influxdb@sha256:87ee744b556f054afaac338651d2080681d3873812c873eef7d3a6fca10b9fd6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.10.5-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:4f269bba08582bbec58996024871811e86508c931977c7f8ab2f6907752746fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164645895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0c6e128147e80a6c77b2c478df793aecf2a2f7c92ecd461f0cd1794b77668c0`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:23:20 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 18 Aug 2026 19:23:20 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 18 Aug 2026 19:23:27 GMT
ENV INFLUXDB_VERSION=3.10.5
# Tue, 18 Aug 2026 19:23:27 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 18 Aug 2026 19:23:27 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:23:27 GMT
USER influxdb3
# Tue, 18 Aug 2026 19:23:27 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 18 Aug 2026 19:23:27 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 18 Aug 2026 19:23:27 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 18 Aug 2026 19:23:27 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 18 Aug 2026 19:23:27 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 18 Aug 2026 19:23:27 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 18 Aug 2026 19:23:27 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 18 Aug 2026 19:23:27 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 18 Aug 2026 19:23:27 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2a709fbb74c7804b60264d3b1eb7c7ef47b3c2ae5a50bb9514619c01755f62e`  
		Last Modified: Tue, 18 Aug 2026 19:23:46 GMT  
		Size: 6.6 MB (6628164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d9512abd75f519717507a13fb6e5bdb3a272ef60e8fad399fb03239edbed1db`  
		Last Modified: Tue, 18 Aug 2026 19:23:45 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d47634889814e6264c08f0a0c653a769e3de7508acaec870bd20e22113fe43`  
		Last Modified: Tue, 18 Aug 2026 19:23:48 GMT  
		Size: 128.3 MB (128260602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f64e213e960db4b4541f8395b7dd849e3e1538f3f4e4ce58d7186d069035606`  
		Last Modified: Tue, 18 Aug 2026 19:23:46 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb3d290c5e186563bbd1e9e3dfd6134f5d87d54cca0f5eca6c6da86017ad8c20`  
		Last Modified: Tue, 18 Aug 2026 19:23:47 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.10.5-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:2ffa8d4cac0e0a23283feaa697f00d6c138456c6925c3bef597126c1f81550fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d34a8ab0c1a4923cf92daf8d4fbbb5419daa95e036a03a3c55492f8991f573e5`

```dockerfile
```

-	Layers:
	-	`sha256:7f63411a7491ef7fc64206ee91805e4e21418780f4a3c30bfc48e94308e98f12`  
		Last Modified: Tue, 18 Aug 2026 19:23:46 GMT  
		Size: 2.3 MB (2293823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb92636a7c73da0ddc21b711c0781b2b36531a3b8b6b224a51cb3d962ed21b5e`  
		Last Modified: Tue, 18 Aug 2026 19:23:46 GMT  
		Size: 17.2 KB (17197 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.10.5-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:b59e307abe31443feb363f00d812bfca011234b1cc535c41bcd870915a52098f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.6 MB (155623725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb4efb349121ad7c30c924a46a9ac90b5c939c8972b5abfadddb6a3e77c3e8e`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:23:09 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 18 Aug 2026 19:23:10 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 18 Aug 2026 19:23:17 GMT
ENV INFLUXDB_VERSION=3.10.5
# Tue, 18 Aug 2026 19:23:17 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 18 Aug 2026 19:23:17 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:23:17 GMT
USER influxdb3
# Tue, 18 Aug 2026 19:23:17 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 18 Aug 2026 19:23:17 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 18 Aug 2026 19:23:17 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 18 Aug 2026 19:23:17 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 18 Aug 2026 19:23:17 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 18 Aug 2026 19:23:17 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 18 Aug 2026 19:23:17 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 18 Aug 2026 19:23:17 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 18 Aug 2026 19:23:17 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f81b2ca6bf4a127e4be40915d2148346188afcc522a338fc9a25fd5a5c9a38c`  
		Last Modified: Tue, 18 Aug 2026 19:23:35 GMT  
		Size: 6.6 MB (6642249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9187739f7b8334ff01dc2700967032b0440de32eb839e01ba019b203c934f227`  
		Last Modified: Tue, 18 Aug 2026 19:23:35 GMT  
		Size: 3.7 KB (3652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68520c3cd83ae7912813983d727d584c6b4b9439b94ccf413e1c0356e504b751`  
		Last Modified: Tue, 18 Aug 2026 19:23:38 GMT  
		Size: 120.1 MB (120089920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146a600f73d4dd3828c45901123a5c03233c23f4aca053dd5a33a48bd433d2d1`  
		Last Modified: Tue, 18 Aug 2026 19:23:35 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0413b8cf46fcfad122f90578276b0e45fb82db227c3e6df316f7266c14a778f`  
		Last Modified: Tue, 18 Aug 2026 19:23:36 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.10.5-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:0f2ce6f82143b95221f3b6b30f6c30f43c7b6eabf49da56916011cebc58927ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5023d1a47530677746506b7242cf593ae2e0668adabbb4c635f2405d8df57358`

```dockerfile
```

-	Layers:
	-	`sha256:c771b8e5299e00eb63daf541262d0afbae6b5282c242871fcf74c65c1ae5cdd3`  
		Last Modified: Tue, 18 Aug 2026 19:23:35 GMT  
		Size: 2.3 MB (2294881 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5eb165e9eefb26e1b9911924116db496854b5ce209a195a07a03ec6c97cc1e9`  
		Last Modified: Tue, 18 Aug 2026 19:23:35 GMT  
		Size: 17.3 KB (17322 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.11-core`

```console
$ docker pull influxdb@sha256:f4a6d4a76f0ed0a196cc997da472cd0b7ae52a766430493a1bead807ab8c1217
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.11-core` - linux; amd64

```console
$ docker pull influxdb@sha256:3fd7b4c049281b59941473d2ccfa2776b37097c7a598557374ebb6bd723a19ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148752544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657aa846b6ffad91a8f7ee9b316ee12305300e467d7b36760950420d25c54303`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 00:11:39 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 21 Aug 2026 00:11:39 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 21 Aug 2026 00:11:44 GMT
ENV INFLUXDB_VERSION=3.11.2
# Fri, 21 Aug 2026 00:11:44 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 21 Aug 2026 00:11:44 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 21 Aug 2026 00:11:44 GMT
USER influxdb3
# Fri, 21 Aug 2026 00:11:45 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 21 Aug 2026 00:11:45 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 21 Aug 2026 00:11:45 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 21 Aug 2026 00:11:45 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca5c734a9e8b1ee1738e726a6b0032a97524c9df918bb7d1ad9abc0b7179926`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 6.6 MB (6628662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869bfdd061f0884e41642343eb999dfa5725add2c0527afbecd0281e4bf75218`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1990311f832de26b9f2f8ead2190893c7b9aa4160de5411736659062f3a858a8`  
		Last Modified: Fri, 21 Aug 2026 00:12:05 GMT  
		Size: 112.4 MB (112366750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29bc24595019267a11de33569bcca7e600c8eed2df21b5c8e67dcfe252c95a8`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8db16aca7e821f467be353e192d1749fe0ae4639ff0281ce4d3fe6b40c7f56`  
		Last Modified: Fri, 21 Aug 2026 00:12:04 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:81a23a22fcb7208c141df3e4014dfc86c54840e087e0ce40b01fa5ba19918ab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4479f805cd516263057be17f6e8324fe575449410f5565c3848961e24ee82a`

```dockerfile
```

-	Layers:
	-	`sha256:aa2056c057b63ec911cecd253150da4673159d7cc2d783a642a867bd99a3f79a`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 2.3 MB (2294399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b431d281ead2b2cbf70d3cb893e97d75f778d5357d8bf68884f54c4f246bf224`  
		Last Modified: Fri, 21 Aug 2026 00:12:02 GMT  
		Size: 17.6 KB (17640 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.11-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:954889ddc239d076f5a2accc480561cb511e3991f1955cfc1fb20d12d1321514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (140020224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f159333ef0277d4b0685067586020123c1bcb61324afd8ce1ba5b32e8b31de`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 00:11:30 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 21 Aug 2026 00:11:31 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 21 Aug 2026 00:11:39 GMT
ENV INFLUXDB_VERSION=3.11.2
# Fri, 21 Aug 2026 00:11:39 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 21 Aug 2026 00:11:39 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 21 Aug 2026 00:11:39 GMT
USER influxdb3
# Fri, 21 Aug 2026 00:11:40 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 21 Aug 2026 00:11:40 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 21 Aug 2026 00:11:40 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 21 Aug 2026 00:11:40 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196fac50616879f64c1bfb593c970fdca576f2cdb93dd79a862cde5c4ced73c7`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 6.6 MB (6642945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d3c987ea49a5a21f6960392531cc691e18d722059515df3259dd2a7baf55d7`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 3.7 KB (3657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3e6cb4f07f841b318902907f29c695289029c300c43e54e0c43b711fe576884`  
		Last Modified: Fri, 21 Aug 2026 00:11:59 GMT  
		Size: 104.5 MB (104485718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc977fade2fc1da64e478206bd0a12f089fb1c2013ad72836cc16393b851e574`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:643c2b6aa95ca9cdd8546749c7f0f77542322b23094265796eba101a6f2c946f`  
		Last Modified: Fri, 21 Aug 2026 00:11:57 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:52f43d318e993f3bf1102af10efcd431c1cb854ad05ab094a3db6fdbd9b50d59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c68f7864c2b17a844f4b2ef7b6d3be1afe0b302d03b73fb3279259e73b23ae`

```dockerfile
```

-	Layers:
	-	`sha256:8b81a2105cabf39cbe112a3a431a30692975f95f6f3f38c25d1511bacd32a658`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 2.3 MB (2295481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:596ff1c375ac23dae3d89e88e74b3f0e12eb77d5320ad4fcae6ffb3cb4505ba6`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.11-enterprise`

```console
$ docker pull influxdb@sha256:6ce2bf22499bac577c18ea21a6a28ad5fa4fcdf1ebc1ca47c2a723ee24c4ccca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.11-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:443933e285bc7814adaeb945c974504b52f660819001e7ae6112e495c3fc74bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.2 MB (183191964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6efc20e12d8889884d0eb5ab8cb6ca37f058c004c503573ac80277b8eb1067ef`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 00:11:39 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 21 Aug 2026 00:11:39 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 21 Aug 2026 00:12:18 GMT
ENV INFLUXDB_VERSION=3.11.2
# Fri, 21 Aug 2026 00:12:18 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 21 Aug 2026 00:12:18 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 21 Aug 2026 00:12:18 GMT
USER influxdb3
# Fri, 21 Aug 2026 00:12:18 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 21 Aug 2026 00:12:18 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 21 Aug 2026 00:12:18 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 21 Aug 2026 00:12:18 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 21 Aug 2026 00:12:18 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 21 Aug 2026 00:12:18 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 21 Aug 2026 00:12:18 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 21 Aug 2026 00:12:18 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 21 Aug 2026 00:12:18 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca5c734a9e8b1ee1738e726a6b0032a97524c9df918bb7d1ad9abc0b7179926`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 6.6 MB (6628662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869bfdd061f0884e41642343eb999dfa5725add2c0527afbecd0281e4bf75218`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a4c32ea7283eebe80c18980dba2e41c03c9c324d402c0bc86e7cfbd6b35b800`  
		Last Modified: Fri, 21 Aug 2026 00:12:43 GMT  
		Size: 146.8 MB (146806171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0baa2797004847c50a78a175fd64ff2310af11df59533add12d8512f3ea40ee`  
		Last Modified: Fri, 21 Aug 2026 00:12:39 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cfbaac37ca5b9422af5597997d4e6c823e80ade2cc43e45857cdf3afaf6bda5`  
		Last Modified: Fri, 21 Aug 2026 00:12:39 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:fd6227bc17d0850ed5ea948bf3771f0b051f2f008cc324242bc86282b685bdc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc5606751c181b4f7f4f2e310ca1f8c27d822177fa51eebf3d24709ac60c766`

```dockerfile
```

-	Layers:
	-	`sha256:1b92ac1dfc506ea254cbd9b94d6200651d67ef202e364945be911262ea53405d`  
		Last Modified: Fri, 21 Aug 2026 00:12:39 GMT  
		Size: 2.3 MB (2294447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:788cf47f9627f0a5604261cbbecad1949c9c99279c252d3e0fcbc7542e2f0bc4`  
		Last Modified: Fri, 21 Aug 2026 00:12:39 GMT  
		Size: 17.8 KB (17820 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.11-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:f13fbfcc4a911776ddffec62e64c9d9498877d6dc39687c6e789a4dfc7550ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173657800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40974e876245a810357a5ef4f655ce5d3a0d803aa3d5882bac6e410b66f2b58a`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 00:11:30 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 21 Aug 2026 00:11:31 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 21 Aug 2026 00:12:15 GMT
ENV INFLUXDB_VERSION=3.11.2
# Fri, 21 Aug 2026 00:12:15 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 21 Aug 2026 00:12:15 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 21 Aug 2026 00:12:15 GMT
USER influxdb3
# Fri, 21 Aug 2026 00:12:15 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 21 Aug 2026 00:12:15 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 21 Aug 2026 00:12:15 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 21 Aug 2026 00:12:15 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 21 Aug 2026 00:12:15 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 21 Aug 2026 00:12:15 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 21 Aug 2026 00:12:15 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 21 Aug 2026 00:12:15 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 21 Aug 2026 00:12:15 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196fac50616879f64c1bfb593c970fdca576f2cdb93dd79a862cde5c4ced73c7`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 6.6 MB (6642945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d3c987ea49a5a21f6960392531cc691e18d722059515df3259dd2a7baf55d7`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 3.7 KB (3657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6cdc141a1a86d823a5e3ad3bb58ba48a2f4d086e96f3cb953367beb1bc4a69`  
		Last Modified: Fri, 21 Aug 2026 00:12:37 GMT  
		Size: 138.1 MB (138123293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02f84da1e60f1e783415a2d136487cdd43ef5aa366f0e2f797934ac9068b506`  
		Last Modified: Fri, 21 Aug 2026 00:12:34 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab66e68a6248369e983837f355420d907f6a8b394ed8eb6b6a1eaf17a6bdeecc`  
		Last Modified: Fri, 21 Aug 2026 00:12:34 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:540efd2f723b61e8cc24099da2ecadf8b782b214a07a5b4bd57191af3c18f3f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31baa2926667f7de7f5bace59f1b7f1e9839b4cfeb44b7825c738f63b317bf82`

```dockerfile
```

-	Layers:
	-	`sha256:7ae4c08733ec2746920b777383322cc30ff2c49ae04b7899e6b7d28a4ff62e55`  
		Last Modified: Fri, 21 Aug 2026 00:12:34 GMT  
		Size: 2.3 MB (2295529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d15ad4e71446f37d5ba6c52200ae7ba1192684f93360db80ca5bf12c10d72345`  
		Last Modified: Fri, 21 Aug 2026 00:12:34 GMT  
		Size: 18.0 KB (17970 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.11.2-core`

```console
$ docker pull influxdb@sha256:f4a6d4a76f0ed0a196cc997da472cd0b7ae52a766430493a1bead807ab8c1217
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.11.2-core` - linux; amd64

```console
$ docker pull influxdb@sha256:3fd7b4c049281b59941473d2ccfa2776b37097c7a598557374ebb6bd723a19ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148752544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657aa846b6ffad91a8f7ee9b316ee12305300e467d7b36760950420d25c54303`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 00:11:39 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 21 Aug 2026 00:11:39 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 21 Aug 2026 00:11:44 GMT
ENV INFLUXDB_VERSION=3.11.2
# Fri, 21 Aug 2026 00:11:44 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 21 Aug 2026 00:11:44 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 21 Aug 2026 00:11:44 GMT
USER influxdb3
# Fri, 21 Aug 2026 00:11:45 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 21 Aug 2026 00:11:45 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 21 Aug 2026 00:11:45 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 21 Aug 2026 00:11:45 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca5c734a9e8b1ee1738e726a6b0032a97524c9df918bb7d1ad9abc0b7179926`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 6.6 MB (6628662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869bfdd061f0884e41642343eb999dfa5725add2c0527afbecd0281e4bf75218`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1990311f832de26b9f2f8ead2190893c7b9aa4160de5411736659062f3a858a8`  
		Last Modified: Fri, 21 Aug 2026 00:12:05 GMT  
		Size: 112.4 MB (112366750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29bc24595019267a11de33569bcca7e600c8eed2df21b5c8e67dcfe252c95a8`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8db16aca7e821f467be353e192d1749fe0ae4639ff0281ce4d3fe6b40c7f56`  
		Last Modified: Fri, 21 Aug 2026 00:12:04 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11.2-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:81a23a22fcb7208c141df3e4014dfc86c54840e087e0ce40b01fa5ba19918ab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4479f805cd516263057be17f6e8324fe575449410f5565c3848961e24ee82a`

```dockerfile
```

-	Layers:
	-	`sha256:aa2056c057b63ec911cecd253150da4673159d7cc2d783a642a867bd99a3f79a`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 2.3 MB (2294399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b431d281ead2b2cbf70d3cb893e97d75f778d5357d8bf68884f54c4f246bf224`  
		Last Modified: Fri, 21 Aug 2026 00:12:02 GMT  
		Size: 17.6 KB (17640 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.11.2-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:954889ddc239d076f5a2accc480561cb511e3991f1955cfc1fb20d12d1321514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (140020224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f159333ef0277d4b0685067586020123c1bcb61324afd8ce1ba5b32e8b31de`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 00:11:30 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 21 Aug 2026 00:11:31 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 21 Aug 2026 00:11:39 GMT
ENV INFLUXDB_VERSION=3.11.2
# Fri, 21 Aug 2026 00:11:39 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 21 Aug 2026 00:11:39 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 21 Aug 2026 00:11:39 GMT
USER influxdb3
# Fri, 21 Aug 2026 00:11:40 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 21 Aug 2026 00:11:40 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 21 Aug 2026 00:11:40 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 21 Aug 2026 00:11:40 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196fac50616879f64c1bfb593c970fdca576f2cdb93dd79a862cde5c4ced73c7`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 6.6 MB (6642945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d3c987ea49a5a21f6960392531cc691e18d722059515df3259dd2a7baf55d7`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 3.7 KB (3657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3e6cb4f07f841b318902907f29c695289029c300c43e54e0c43b711fe576884`  
		Last Modified: Fri, 21 Aug 2026 00:11:59 GMT  
		Size: 104.5 MB (104485718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc977fade2fc1da64e478206bd0a12f089fb1c2013ad72836cc16393b851e574`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:643c2b6aa95ca9cdd8546749c7f0f77542322b23094265796eba101a6f2c946f`  
		Last Modified: Fri, 21 Aug 2026 00:11:57 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11.2-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:52f43d318e993f3bf1102af10efcd431c1cb854ad05ab094a3db6fdbd9b50d59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c68f7864c2b17a844f4b2ef7b6d3be1afe0b302d03b73fb3279259e73b23ae`

```dockerfile
```

-	Layers:
	-	`sha256:8b81a2105cabf39cbe112a3a431a30692975f95f6f3f38c25d1511bacd32a658`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 2.3 MB (2295481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:596ff1c375ac23dae3d89e88e74b3f0e12eb77d5320ad4fcae6ffb3cb4505ba6`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.11.2-enterprise`

```console
$ docker pull influxdb@sha256:6ce2bf22499bac577c18ea21a6a28ad5fa4fcdf1ebc1ca47c2a723ee24c4ccca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.11.2-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:443933e285bc7814adaeb945c974504b52f660819001e7ae6112e495c3fc74bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.2 MB (183191964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6efc20e12d8889884d0eb5ab8cb6ca37f058c004c503573ac80277b8eb1067ef`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 00:11:39 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 21 Aug 2026 00:11:39 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 21 Aug 2026 00:12:18 GMT
ENV INFLUXDB_VERSION=3.11.2
# Fri, 21 Aug 2026 00:12:18 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 21 Aug 2026 00:12:18 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 21 Aug 2026 00:12:18 GMT
USER influxdb3
# Fri, 21 Aug 2026 00:12:18 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 21 Aug 2026 00:12:18 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 21 Aug 2026 00:12:18 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 21 Aug 2026 00:12:18 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 21 Aug 2026 00:12:18 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 21 Aug 2026 00:12:18 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 21 Aug 2026 00:12:18 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 21 Aug 2026 00:12:18 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 21 Aug 2026 00:12:18 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca5c734a9e8b1ee1738e726a6b0032a97524c9df918bb7d1ad9abc0b7179926`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 6.6 MB (6628662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869bfdd061f0884e41642343eb999dfa5725add2c0527afbecd0281e4bf75218`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a4c32ea7283eebe80c18980dba2e41c03c9c324d402c0bc86e7cfbd6b35b800`  
		Last Modified: Fri, 21 Aug 2026 00:12:43 GMT  
		Size: 146.8 MB (146806171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0baa2797004847c50a78a175fd64ff2310af11df59533add12d8512f3ea40ee`  
		Last Modified: Fri, 21 Aug 2026 00:12:39 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cfbaac37ca5b9422af5597997d4e6c823e80ade2cc43e45857cdf3afaf6bda5`  
		Last Modified: Fri, 21 Aug 2026 00:12:39 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11.2-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:fd6227bc17d0850ed5ea948bf3771f0b051f2f008cc324242bc86282b685bdc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc5606751c181b4f7f4f2e310ca1f8c27d822177fa51eebf3d24709ac60c766`

```dockerfile
```

-	Layers:
	-	`sha256:1b92ac1dfc506ea254cbd9b94d6200651d67ef202e364945be911262ea53405d`  
		Last Modified: Fri, 21 Aug 2026 00:12:39 GMT  
		Size: 2.3 MB (2294447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:788cf47f9627f0a5604261cbbecad1949c9c99279c252d3e0fcbc7542e2f0bc4`  
		Last Modified: Fri, 21 Aug 2026 00:12:39 GMT  
		Size: 17.8 KB (17820 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.11.2-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:f13fbfcc4a911776ddffec62e64c9d9498877d6dc39687c6e789a4dfc7550ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173657800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40974e876245a810357a5ef4f655ce5d3a0d803aa3d5882bac6e410b66f2b58a`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 00:11:30 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 21 Aug 2026 00:11:31 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 21 Aug 2026 00:12:15 GMT
ENV INFLUXDB_VERSION=3.11.2
# Fri, 21 Aug 2026 00:12:15 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 21 Aug 2026 00:12:15 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 21 Aug 2026 00:12:15 GMT
USER influxdb3
# Fri, 21 Aug 2026 00:12:15 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 21 Aug 2026 00:12:15 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 21 Aug 2026 00:12:15 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 21 Aug 2026 00:12:15 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 21 Aug 2026 00:12:15 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 21 Aug 2026 00:12:15 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 21 Aug 2026 00:12:15 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 21 Aug 2026 00:12:15 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 21 Aug 2026 00:12:15 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196fac50616879f64c1bfb593c970fdca576f2cdb93dd79a862cde5c4ced73c7`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 6.6 MB (6642945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d3c987ea49a5a21f6960392531cc691e18d722059515df3259dd2a7baf55d7`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 3.7 KB (3657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6cdc141a1a86d823a5e3ad3bb58ba48a2f4d086e96f3cb953367beb1bc4a69`  
		Last Modified: Fri, 21 Aug 2026 00:12:37 GMT  
		Size: 138.1 MB (138123293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02f84da1e60f1e783415a2d136487cdd43ef5aa366f0e2f797934ac9068b506`  
		Last Modified: Fri, 21 Aug 2026 00:12:34 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab66e68a6248369e983837f355420d907f6a8b394ed8eb6b6a1eaf17a6bdeecc`  
		Last Modified: Fri, 21 Aug 2026 00:12:34 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11.2-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:540efd2f723b61e8cc24099da2ecadf8b782b214a07a5b4bd57191af3c18f3f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31baa2926667f7de7f5bace59f1b7f1e9839b4cfeb44b7825c738f63b317bf82`

```dockerfile
```

-	Layers:
	-	`sha256:7ae4c08733ec2746920b777383322cc30ff2c49ae04b7899e6b7d28a4ff62e55`  
		Last Modified: Fri, 21 Aug 2026 00:12:34 GMT  
		Size: 2.3 MB (2295529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d15ad4e71446f37d5ba6c52200ae7ba1192684f93360db80ca5bf12c10d72345`  
		Last Modified: Fri, 21 Aug 2026 00:12:34 GMT  
		Size: 18.0 KB (17970 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.9-core`

```console
$ docker pull influxdb@sha256:1fdfb58ee862d9eb7e1a73d4bbd44d49839a210882f1d6953831786cea4df634
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.9-core` - linux; amd64

```console
$ docker pull influxdb@sha256:01453c9c38ad4cc9e97f2ebb7ce2b641e4cd7c25e85f02f22dadd6ef7c771b46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.7 MB (148697515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a375daeb23274dc622d5f5915a2b249a9523c6eee96963ffeba117c36db650f`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:22:46 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 18 Aug 2026 19:22:46 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 18 Aug 2026 19:22:53 GMT
ENV INFLUXDB_VERSION=3.9.11
# Tue, 18 Aug 2026 19:22:53 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 18 Aug 2026 19:22:53 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:22:53 GMT
USER influxdb3
# Tue, 18 Aug 2026 19:22:53 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 18 Aug 2026 19:22:53 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 18 Aug 2026 19:22:53 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 18 Aug 2026 19:22:53 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 18 Aug 2026 19:22:53 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 18 Aug 2026 19:22:53 GMT
ENV LOG_FILTER=info
# Tue, 18 Aug 2026 19:22:53 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 18 Aug 2026 19:22:53 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 18 Aug 2026 19:22:53 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb55e32f6bed739bd73adf3ace53514f865061056039a31e6626adf6279096b6`  
		Last Modified: Tue, 18 Aug 2026 19:23:12 GMT  
		Size: 6.6 MB (6628208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f8480397789db4a90f24e964205abacad086de31d43bf8824ef42167da1cce`  
		Last Modified: Tue, 18 Aug 2026 19:23:12 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd472bfac0d707b16ae7dad7519c6a249883700f114aa985c352fda9896c8647`  
		Last Modified: Tue, 18 Aug 2026 19:23:15 GMT  
		Size: 112.3 MB (112312175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b01653ab8359e9da117f98558cbddf682bbfe8b8693407043a1a419ef88eeaf2`  
		Last Modified: Tue, 18 Aug 2026 19:23:12 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3210a62126d4c6b950e2d308da4a108b5d80bc6aaef048f898ad9d7f1ee1a9e`  
		Last Modified: Tue, 18 Aug 2026 19:23:13 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.9-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:29a8bbc8b8bc37a7bf0085f086cae9fd7d148e305d4b9e32a86fe69f6f97c751
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c70ac7bbc9f8f53b9addc6b2f71f0ffef4ff040e2805b220555e45832dc8ebac`

```dockerfile
```

-	Layers:
	-	`sha256:78877d4d7f9998bb47456f50bdbf23dfb5129db53e1865a9d1406495a15b1f2b`  
		Last Modified: Tue, 18 Aug 2026 19:23:12 GMT  
		Size: 2.3 MB (2293797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12afb72e6ad866de7f04c488b64f4263d3bf3c8aba11170d129d4b9d0b8b7ccb`  
		Last Modified: Tue, 18 Aug 2026 19:23:12 GMT  
		Size: 17.0 KB (17023 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.9-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:71149ea2364ea6ad4fda295e22a08cb40952720759cb25f4b45e68cbf41431ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.9 MB (139948128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90b7db6051796d7952add13709077e6cdee7eeaf1fa0e956480591e7544a0d62`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:22:43 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 18 Aug 2026 19:22:43 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 18 Aug 2026 19:22:50 GMT
ENV INFLUXDB_VERSION=3.9.11
# Tue, 18 Aug 2026 19:22:50 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 18 Aug 2026 19:22:50 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:22:50 GMT
USER influxdb3
# Tue, 18 Aug 2026 19:22:50 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 18 Aug 2026 19:22:50 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 18 Aug 2026 19:22:50 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 18 Aug 2026 19:22:50 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 18 Aug 2026 19:22:50 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 18 Aug 2026 19:22:50 GMT
ENV LOG_FILTER=info
# Tue, 18 Aug 2026 19:22:50 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 18 Aug 2026 19:22:50 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 18 Aug 2026 19:22:50 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12274f31c8e7b149351e8db8cd934f7cd091adbd4a01a8a021a1b3501c3149b1`  
		Last Modified: Tue, 18 Aug 2026 19:23:07 GMT  
		Size: 6.6 MB (6642196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f6f48fd995e54af9b980337fe34a42190438aea49fab44766c63b14a8bb2e56`  
		Last Modified: Tue, 18 Aug 2026 19:23:06 GMT  
		Size: 3.7 KB (3652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a8b318189881634668ea6f03c1c187547be174e502bb48b8ddbe421c6a0f234`  
		Last Modified: Tue, 18 Aug 2026 19:23:09 GMT  
		Size: 104.4 MB (104414374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7980dc6a528c45dab374f5a5527a5923dfe7b979371cd8c8bb3849120bb6f656`  
		Last Modified: Tue, 18 Aug 2026 19:23:06 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efb75b9a3f13fe5211dc6b50397050fbce452345865deb47133140a33e90e1c`  
		Last Modified: Tue, 18 Aug 2026 19:23:07 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.9-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:0e650821d95ef40cc201cdc424186bb408e54e92c53064efcda9327c2dcdd5c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:675badad1522dc75032476aa824689b545985fc276d053b9029faa50ab748635`

```dockerfile
```

-	Layers:
	-	`sha256:82d5f71d80fcc815ba24918c459808f993bede5a58ab8de2ef83db90dd4f6322`  
		Last Modified: Tue, 18 Aug 2026 19:23:06 GMT  
		Size: 2.3 MB (2294855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70763bbb474845819781a2a60a10e9c6605efed9b9a37073f9f20dbd39cc1339`  
		Last Modified: Tue, 18 Aug 2026 19:23:06 GMT  
		Size: 17.1 KB (17148 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.9-enterprise`

```console
$ docker pull influxdb@sha256:f6446914a8eb2a17ffd7c8c4c20112306abadf3509ef476dbadfc19b64cb7be7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.9-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:0056f6deffa1346b9e8e5132d209b2bb994fd5a6ed862a6fe234771050acbd99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159448846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7db7df81af113c294d5f06353aa5091ea36ff96b29708791fbbd2f7e896b7dcd`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:22:50 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 18 Aug 2026 19:22:50 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 18 Aug 2026 19:22:58 GMT
ENV INFLUXDB_VERSION=3.9.11
# Tue, 18 Aug 2026 19:22:58 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 18 Aug 2026 19:22:58 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:22:58 GMT
USER influxdb3
# Tue, 18 Aug 2026 19:22:58 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 18 Aug 2026 19:22:58 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 18 Aug 2026 19:22:58 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 18 Aug 2026 19:22:58 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 18 Aug 2026 19:22:58 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 18 Aug 2026 19:22:58 GMT
ENV LOG_FILTER=info
# Tue, 18 Aug 2026 19:22:58 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 18 Aug 2026 19:22:58 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 18 Aug 2026 19:22:58 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f7fe0d14e778288aba84107cb97ba8ce6306c58621f419f9f8b645dff9efc2`  
		Last Modified: Tue, 18 Aug 2026 19:23:18 GMT  
		Size: 6.6 MB (6628185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ac413070ccf417971e293ff6a7598c48b69a17335969662d8b05ef9ad5986ad`  
		Last Modified: Tue, 18 Aug 2026 19:23:18 GMT  
		Size: 3.7 KB (3657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6759168ab8950999b71b56654ca44090958eb8417d0346717638d6a8169cc388`  
		Last Modified: Tue, 18 Aug 2026 19:23:21 GMT  
		Size: 123.1 MB (123063529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c0c08ee8a4b54ca91ae06832780fabe71c87fe682c9c4983dff7ac37e8fe8cd`  
		Last Modified: Tue, 18 Aug 2026 19:23:18 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1020b87c162a1dc2fe569d4e8ca2a67aa446d3f2c147851af636d4dc4d28bda`  
		Last Modified: Tue, 18 Aug 2026 19:23:19 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.9-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:cbd3e63708cad116c752527f7f5b9db507ee348c9b4e19069ab46d441d32f8b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:692223e7e1c940bf5b1d6668a2366504ef999d0d3a6f0468addfb5527a01a7b0`

```dockerfile
```

-	Layers:
	-	`sha256:9b9e7891c2d28fc99670bb6c0b520168cc70dd217207f758bd36b579aa76eb19`  
		Last Modified: Tue, 18 Aug 2026 19:23:18 GMT  
		Size: 2.3 MB (2293821 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b65cd22832dc08c3b639bfaffb2327130505df58b57ed78f5cb5a7fba3923bf`  
		Last Modified: Tue, 18 Aug 2026 19:23:18 GMT  
		Size: 17.2 KB (17180 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.9-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:15a2eb59daf3129260b8e737401a1c54893354eb2368836192a1efb2a08cd0fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150542995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6922376cd7d2127f28969aeaff1155e23d0f7cbb409e5f6221df68b8fc49887`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:22:47 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 18 Aug 2026 19:22:47 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 18 Aug 2026 19:22:54 GMT
ENV INFLUXDB_VERSION=3.9.11
# Tue, 18 Aug 2026 19:22:54 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 18 Aug 2026 19:22:54 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:22:54 GMT
USER influxdb3
# Tue, 18 Aug 2026 19:22:54 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 18 Aug 2026 19:22:54 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 18 Aug 2026 19:22:54 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 18 Aug 2026 19:22:54 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 18 Aug 2026 19:22:54 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 18 Aug 2026 19:22:54 GMT
ENV LOG_FILTER=info
# Tue, 18 Aug 2026 19:22:54 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 18 Aug 2026 19:22:54 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 18 Aug 2026 19:22:54 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f249ca4e5af0779972f19ff326dcb2fc6ea6a0e4c52c632cb93b60cff0d2deb1`  
		Last Modified: Tue, 18 Aug 2026 19:23:11 GMT  
		Size: 6.6 MB (6642258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d1e30ebb943b9800ceba8507c130ff0d4739baa6699f23a5d9a6549e14108da`  
		Last Modified: Tue, 18 Aug 2026 19:23:11 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ea08850005e061848760009541a0fbf6ec0ed1201e320531acd289bf2f9d7d`  
		Last Modified: Tue, 18 Aug 2026 19:23:14 GMT  
		Size: 115.0 MB (115009179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914e1b4e9fd41f5aad1b6a8b96de7d979037cab585efe508c7b6b243b30bb077`  
		Last Modified: Tue, 18 Aug 2026 19:23:11 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:680d13dcfc12e132b660e3718760ab4af014bd061fe6ed0bcdc5989460186f21`  
		Last Modified: Tue, 18 Aug 2026 19:23:12 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.9-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:aa84998653ffdbd170033b8cb83d7e346454365bed9c9c2472e2aece5f8d8794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bd8ee45c7f8dd66542dd533d40b3e87706b16a96fa616ea8d2080bb62b789cb`

```dockerfile
```

-	Layers:
	-	`sha256:c319dfe23ad20122c3d186d8af651f9357629b572f8b2d5b56c58e728fc5ceda`  
		Last Modified: Tue, 18 Aug 2026 19:23:11 GMT  
		Size: 2.3 MB (2294879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6954e6c5c7924757b5bb31cc7497638335bc6052a5c902a30fe4a61cc2f65d24`  
		Last Modified: Tue, 18 Aug 2026 19:23:11 GMT  
		Size: 17.3 KB (17305 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.9.11-core`

```console
$ docker pull influxdb@sha256:1fdfb58ee862d9eb7e1a73d4bbd44d49839a210882f1d6953831786cea4df634
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.9.11-core` - linux; amd64

```console
$ docker pull influxdb@sha256:01453c9c38ad4cc9e97f2ebb7ce2b641e4cd7c25e85f02f22dadd6ef7c771b46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.7 MB (148697515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a375daeb23274dc622d5f5915a2b249a9523c6eee96963ffeba117c36db650f`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:22:46 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 18 Aug 2026 19:22:46 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 18 Aug 2026 19:22:53 GMT
ENV INFLUXDB_VERSION=3.9.11
# Tue, 18 Aug 2026 19:22:53 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 18 Aug 2026 19:22:53 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:22:53 GMT
USER influxdb3
# Tue, 18 Aug 2026 19:22:53 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 18 Aug 2026 19:22:53 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 18 Aug 2026 19:22:53 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 18 Aug 2026 19:22:53 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 18 Aug 2026 19:22:53 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 18 Aug 2026 19:22:53 GMT
ENV LOG_FILTER=info
# Tue, 18 Aug 2026 19:22:53 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 18 Aug 2026 19:22:53 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 18 Aug 2026 19:22:53 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb55e32f6bed739bd73adf3ace53514f865061056039a31e6626adf6279096b6`  
		Last Modified: Tue, 18 Aug 2026 19:23:12 GMT  
		Size: 6.6 MB (6628208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f8480397789db4a90f24e964205abacad086de31d43bf8824ef42167da1cce`  
		Last Modified: Tue, 18 Aug 2026 19:23:12 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd472bfac0d707b16ae7dad7519c6a249883700f114aa985c352fda9896c8647`  
		Last Modified: Tue, 18 Aug 2026 19:23:15 GMT  
		Size: 112.3 MB (112312175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b01653ab8359e9da117f98558cbddf682bbfe8b8693407043a1a419ef88eeaf2`  
		Last Modified: Tue, 18 Aug 2026 19:23:12 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3210a62126d4c6b950e2d308da4a108b5d80bc6aaef048f898ad9d7f1ee1a9e`  
		Last Modified: Tue, 18 Aug 2026 19:23:13 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.9.11-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:29a8bbc8b8bc37a7bf0085f086cae9fd7d148e305d4b9e32a86fe69f6f97c751
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c70ac7bbc9f8f53b9addc6b2f71f0ffef4ff040e2805b220555e45832dc8ebac`

```dockerfile
```

-	Layers:
	-	`sha256:78877d4d7f9998bb47456f50bdbf23dfb5129db53e1865a9d1406495a15b1f2b`  
		Last Modified: Tue, 18 Aug 2026 19:23:12 GMT  
		Size: 2.3 MB (2293797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12afb72e6ad866de7f04c488b64f4263d3bf3c8aba11170d129d4b9d0b8b7ccb`  
		Last Modified: Tue, 18 Aug 2026 19:23:12 GMT  
		Size: 17.0 KB (17023 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.9.11-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:71149ea2364ea6ad4fda295e22a08cb40952720759cb25f4b45e68cbf41431ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.9 MB (139948128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90b7db6051796d7952add13709077e6cdee7eeaf1fa0e956480591e7544a0d62`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:22:43 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 18 Aug 2026 19:22:43 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 18 Aug 2026 19:22:50 GMT
ENV INFLUXDB_VERSION=3.9.11
# Tue, 18 Aug 2026 19:22:50 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 18 Aug 2026 19:22:50 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:22:50 GMT
USER influxdb3
# Tue, 18 Aug 2026 19:22:50 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 18 Aug 2026 19:22:50 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 18 Aug 2026 19:22:50 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 18 Aug 2026 19:22:50 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 18 Aug 2026 19:22:50 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 18 Aug 2026 19:22:50 GMT
ENV LOG_FILTER=info
# Tue, 18 Aug 2026 19:22:50 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 18 Aug 2026 19:22:50 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 18 Aug 2026 19:22:50 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12274f31c8e7b149351e8db8cd934f7cd091adbd4a01a8a021a1b3501c3149b1`  
		Last Modified: Tue, 18 Aug 2026 19:23:07 GMT  
		Size: 6.6 MB (6642196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f6f48fd995e54af9b980337fe34a42190438aea49fab44766c63b14a8bb2e56`  
		Last Modified: Tue, 18 Aug 2026 19:23:06 GMT  
		Size: 3.7 KB (3652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a8b318189881634668ea6f03c1c187547be174e502bb48b8ddbe421c6a0f234`  
		Last Modified: Tue, 18 Aug 2026 19:23:09 GMT  
		Size: 104.4 MB (104414374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7980dc6a528c45dab374f5a5527a5923dfe7b979371cd8c8bb3849120bb6f656`  
		Last Modified: Tue, 18 Aug 2026 19:23:06 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efb75b9a3f13fe5211dc6b50397050fbce452345865deb47133140a33e90e1c`  
		Last Modified: Tue, 18 Aug 2026 19:23:07 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.9.11-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:0e650821d95ef40cc201cdc424186bb408e54e92c53064efcda9327c2dcdd5c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:675badad1522dc75032476aa824689b545985fc276d053b9029faa50ab748635`

```dockerfile
```

-	Layers:
	-	`sha256:82d5f71d80fcc815ba24918c459808f993bede5a58ab8de2ef83db90dd4f6322`  
		Last Modified: Tue, 18 Aug 2026 19:23:06 GMT  
		Size: 2.3 MB (2294855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70763bbb474845819781a2a60a10e9c6605efed9b9a37073f9f20dbd39cc1339`  
		Last Modified: Tue, 18 Aug 2026 19:23:06 GMT  
		Size: 17.1 KB (17148 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.9.11-enterprise`

```console
$ docker pull influxdb@sha256:f6446914a8eb2a17ffd7c8c4c20112306abadf3509ef476dbadfc19b64cb7be7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.9.11-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:0056f6deffa1346b9e8e5132d209b2bb994fd5a6ed862a6fe234771050acbd99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159448846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7db7df81af113c294d5f06353aa5091ea36ff96b29708791fbbd2f7e896b7dcd`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:22:50 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 18 Aug 2026 19:22:50 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 18 Aug 2026 19:22:58 GMT
ENV INFLUXDB_VERSION=3.9.11
# Tue, 18 Aug 2026 19:22:58 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 18 Aug 2026 19:22:58 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:22:58 GMT
USER influxdb3
# Tue, 18 Aug 2026 19:22:58 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 18 Aug 2026 19:22:58 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 18 Aug 2026 19:22:58 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 18 Aug 2026 19:22:58 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 18 Aug 2026 19:22:58 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 18 Aug 2026 19:22:58 GMT
ENV LOG_FILTER=info
# Tue, 18 Aug 2026 19:22:58 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 18 Aug 2026 19:22:58 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 18 Aug 2026 19:22:58 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f7fe0d14e778288aba84107cb97ba8ce6306c58621f419f9f8b645dff9efc2`  
		Last Modified: Tue, 18 Aug 2026 19:23:18 GMT  
		Size: 6.6 MB (6628185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ac413070ccf417971e293ff6a7598c48b69a17335969662d8b05ef9ad5986ad`  
		Last Modified: Tue, 18 Aug 2026 19:23:18 GMT  
		Size: 3.7 KB (3657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6759168ab8950999b71b56654ca44090958eb8417d0346717638d6a8169cc388`  
		Last Modified: Tue, 18 Aug 2026 19:23:21 GMT  
		Size: 123.1 MB (123063529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c0c08ee8a4b54ca91ae06832780fabe71c87fe682c9c4983dff7ac37e8fe8cd`  
		Last Modified: Tue, 18 Aug 2026 19:23:18 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1020b87c162a1dc2fe569d4e8ca2a67aa446d3f2c147851af636d4dc4d28bda`  
		Last Modified: Tue, 18 Aug 2026 19:23:19 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.9.11-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:cbd3e63708cad116c752527f7f5b9db507ee348c9b4e19069ab46d441d32f8b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:692223e7e1c940bf5b1d6668a2366504ef999d0d3a6f0468addfb5527a01a7b0`

```dockerfile
```

-	Layers:
	-	`sha256:9b9e7891c2d28fc99670bb6c0b520168cc70dd217207f758bd36b579aa76eb19`  
		Last Modified: Tue, 18 Aug 2026 19:23:18 GMT  
		Size: 2.3 MB (2293821 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b65cd22832dc08c3b639bfaffb2327130505df58b57ed78f5cb5a7fba3923bf`  
		Last Modified: Tue, 18 Aug 2026 19:23:18 GMT  
		Size: 17.2 KB (17180 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.9.11-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:15a2eb59daf3129260b8e737401a1c54893354eb2368836192a1efb2a08cd0fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150542995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6922376cd7d2127f28969aeaff1155e23d0f7cbb409e5f6221df68b8fc49887`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:22:47 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 18 Aug 2026 19:22:47 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 18 Aug 2026 19:22:54 GMT
ENV INFLUXDB_VERSION=3.9.11
# Tue, 18 Aug 2026 19:22:54 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 18 Aug 2026 19:22:54 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:22:54 GMT
USER influxdb3
# Tue, 18 Aug 2026 19:22:54 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 18 Aug 2026 19:22:54 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 18 Aug 2026 19:22:54 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 18 Aug 2026 19:22:54 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 18 Aug 2026 19:22:54 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 18 Aug 2026 19:22:54 GMT
ENV LOG_FILTER=info
# Tue, 18 Aug 2026 19:22:54 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 18 Aug 2026 19:22:54 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 18 Aug 2026 19:22:54 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f249ca4e5af0779972f19ff326dcb2fc6ea6a0e4c52c632cb93b60cff0d2deb1`  
		Last Modified: Tue, 18 Aug 2026 19:23:11 GMT  
		Size: 6.6 MB (6642258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d1e30ebb943b9800ceba8507c130ff0d4739baa6699f23a5d9a6549e14108da`  
		Last Modified: Tue, 18 Aug 2026 19:23:11 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ea08850005e061848760009541a0fbf6ec0ed1201e320531acd289bf2f9d7d`  
		Last Modified: Tue, 18 Aug 2026 19:23:14 GMT  
		Size: 115.0 MB (115009179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914e1b4e9fd41f5aad1b6a8b96de7d979037cab585efe508c7b6b243b30bb077`  
		Last Modified: Tue, 18 Aug 2026 19:23:11 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:680d13dcfc12e132b660e3718760ab4af014bd061fe6ed0bcdc5989460186f21`  
		Last Modified: Tue, 18 Aug 2026 19:23:12 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.9.11-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:aa84998653ffdbd170033b8cb83d7e346454365bed9c9c2472e2aece5f8d8794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bd8ee45c7f8dd66542dd533d40b3e87706b16a96fa616ea8d2080bb62b789cb`

```dockerfile
```

-	Layers:
	-	`sha256:c319dfe23ad20122c3d186d8af651f9357629b572f8b2d5b56c58e728fc5ceda`  
		Last Modified: Tue, 18 Aug 2026 19:23:11 GMT  
		Size: 2.3 MB (2294879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6954e6c5c7924757b5bb31cc7497638335bc6052a5c902a30fe4a61cc2f65d24`  
		Last Modified: Tue, 18 Aug 2026 19:23:11 GMT  
		Size: 17.3 KB (17305 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:243d7adc3edc2a3f98518e5395a9be725504acb43deb125bdcc78579b5c4bbd8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:818eb972f70c4b6b04b8b952b9ef54480221d92f2ee9cadf8f73c180efa69ac7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.8 MB (86761070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b096296ace6cf3ae6d76c243d555a7ab09f2c8728e9edfafe3d53fb285246929`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:09:05 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:09:06 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:09:07 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Mon, 22 Jun 2026 20:09:07 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Mon, 22 Jun 2026 20:09:09 GMT
ENV INFLUXDB_VERSION=2.9.1
# Mon, 22 Jun 2026 20:09:09 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Mon, 22 Jun 2026 20:09:09 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Mon, 22 Jun 2026 20:09:11 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Mon, 22 Jun 2026 20:09:11 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Mon, 22 Jun 2026 20:09:11 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Mon, 22 Jun 2026 20:09:11 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Mon, 22 Jun 2026 20:09:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:09:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:09:11 GMT
CMD ["influxd"]
# Mon, 22 Jun 2026 20:09:11 GMT
EXPOSE map[8086/tcp:{}]
# Mon, 22 Jun 2026 20:09:11 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Mon, 22 Jun 2026 20:09:11 GMT
ENV INFLUXD_INIT_PORT=9999
# Mon, 22 Jun 2026 20:09:11 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Mon, 22 Jun 2026 20:09:11 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815e4cbfb2c3ad1daa8f714c24a72c3d2b0e303f1111027d40b5312da53f31de`  
		Last Modified: Mon, 22 Jun 2026 20:09:21 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfa0863e35390742e4548bcf5d4e600c1be6d0755455ca8112ec638f514917f`  
		Last Modified: Mon, 22 Jun 2026 20:09:21 GMT  
		Size: 10.2 MB (10153309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c16c33fad802968c073de8ffffa8d98940359a5af641d9d05b3d2071e9f35dc`  
		Last Modified: Mon, 22 Jun 2026 20:09:21 GMT  
		Size: 3.8 MB (3822785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b5254f169ca7f4632bf1c4a6886be8c3ee24ffa1e3c7d272c6e61207b90691`  
		Last Modified: Mon, 22 Jun 2026 20:09:21 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c00901c9d827ec55083e4aa447c88e3e378e298ccfcba35973fe07e8fdda269a`  
		Last Modified: Mon, 22 Jun 2026 20:09:24 GMT  
		Size: 56.5 MB (56510565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1825355303a2ab6417b7c706fcf5ea913fe720042b5a4079626e769c316e6fe`  
		Last Modified: Mon, 22 Jun 2026 20:09:23 GMT  
		Size: 12.4 MB (12421830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b5d6296c0c0d7efca63b87bbc91abff262747443545664b1f815547245d11f9`  
		Last Modified: Mon, 22 Jun 2026 20:09:23 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb510e07f154987b609e67a3375ad656cf3cf0b54c4d995b03db16a636169806`  
		Last Modified: Mon, 22 Jun 2026 20:09:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73d8062e04e7b2675f34ef6027d0b3675741f596e699cf7a3429c82044e71c2c`  
		Last Modified: Mon, 22 Jun 2026 20:09:24 GMT  
		Size: 6.5 KB (6492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:b909722fbe18e31565de9f0388791e5072426eb9b96b73986d9911dde6dcec8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **964.1 KB (964077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a81d33f1c07105354816cca58dc95f1c19fbba37f61a1cf7d6f02a6d1a957a`

```dockerfile
```

-	Layers:
	-	`sha256:96f43458dc856669b2aceae57f8e1b0d5147450c3dfaa7918022becc39f9730a`  
		Last Modified: Mon, 22 Jun 2026 20:09:21 GMT  
		Size: 933.5 KB (933468 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3b73456f10634c97d1dfd78d72e2480b1f66779e757a35e695f8c5d702110e9`  
		Last Modified: Mon, 22 Jun 2026 20:09:21 GMT  
		Size: 30.6 KB (30609 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:6a4b5c4951f4a9c13581a0cf3a43e5a4d5a5a8b60e15864ecd43724f8a7c5cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82889238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:636ea576260a01ff5006284c916dd05e97d313acc823eabc64ad31d441f2ce62`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:02:10 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Mon, 22 Jun 2026 20:02:11 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Mon, 22 Jun 2026 20:02:12 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Mon, 22 Jun 2026 20:02:12 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Mon, 22 Jun 2026 20:02:15 GMT
ENV INFLUXDB_VERSION=2.9.1
# Mon, 22 Jun 2026 20:02:15 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Mon, 22 Jun 2026 20:02:15 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Mon, 22 Jun 2026 20:02:16 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Mon, 22 Jun 2026 20:02:16 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Mon, 22 Jun 2026 20:02:16 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Mon, 22 Jun 2026 20:02:16 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Mon, 22 Jun 2026 20:02:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 22 Jun 2026 20:02:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Jun 2026 20:02:16 GMT
CMD ["influxd"]
# Mon, 22 Jun 2026 20:02:16 GMT
EXPOSE map[8086/tcp:{}]
# Mon, 22 Jun 2026 20:02:16 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Mon, 22 Jun 2026 20:02:16 GMT
ENV INFLUXD_INIT_PORT=9999
# Mon, 22 Jun 2026 20:02:16 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Mon, 22 Jun 2026 20:02:16 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edacd2d51faff6f48f2faf3e6d396d49d5183cf0c3ada0a95b2431dab1ffc1f8`  
		Last Modified: Mon, 22 Jun 2026 20:02:26 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc5aaaf51cb8d62c8e12d9219fcbe980bc1dadafe43e2c1b46c954b12a7b9176`  
		Last Modified: Mon, 22 Jun 2026 20:02:27 GMT  
		Size: 10.1 MB (10122926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1815eff9a2ea781805aff1e96afc1d10136f5e606ecea18f02a68fe299b9f01`  
		Last Modified: Mon, 22 Jun 2026 20:02:27 GMT  
		Size: 3.5 MB (3459172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090c4ea7909ad362cd9a477aa61908fc4c7c436550a45d1a4cdda2947e41b87f`  
		Last Modified: Mon, 22 Jun 2026 20:02:26 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e6657ca9b5adac502e3bdf8fa4af36ea4e23d7368c05b65348e52654922bc6`  
		Last Modified: Mon, 22 Jun 2026 20:02:30 GMT  
		Size: 53.6 MB (53636824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ffb2c6705a3ecf9ef6cb344eceedc4bcd23d002bd76247699124a08253a911`  
		Last Modified: Mon, 22 Jun 2026 20:02:28 GMT  
		Size: 11.5 MB (11480294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f669a9964c941948652e1e6a59afe7c3828c3511d80bd965b8ff287fa93c4a7`  
		Last Modified: Mon, 22 Jun 2026 20:02:28 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb5702b9165d688e2684dd980a734c9e367b800d01e5d613bce074c00276e63`  
		Last Modified: Mon, 22 Jun 2026 20:02:29 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca41adc90ce6a2fdc381ef91ccf0d6250809415be76050c4061ae155f2387b2`  
		Last Modified: Mon, 22 Jun 2026 20:02:29 GMT  
		Size: 6.5 KB (6492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:b58c3384dee6e2cf84bdd6cc6f1b973cf03e71a51dca1e9e1a4e883fe0aa851c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **962.9 KB (962870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51a574cef178a98e17e52022e92db9a65d510a5deddfbf2e47d70696506f545a`

```dockerfile
```

-	Layers:
	-	`sha256:9d49ccb5ade9b5a3ceb6f9ee6c0df708a11e818e19e69abf708bd00160a2918d`  
		Last Modified: Mon, 22 Jun 2026 20:02:26 GMT  
		Size: 932.1 KB (932067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0983355f8806d79c2a3e59548735b7e236a046ea9606377a031186e987e20940`  
		Last Modified: Mon, 22 Jun 2026 20:02:26 GMT  
		Size: 30.8 KB (30803 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:core`

```console
$ docker pull influxdb@sha256:f4a6d4a76f0ed0a196cc997da472cd0b7ae52a766430493a1bead807ab8c1217
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:core` - linux; amd64

```console
$ docker pull influxdb@sha256:3fd7b4c049281b59941473d2ccfa2776b37097c7a598557374ebb6bd723a19ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148752544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657aa846b6ffad91a8f7ee9b316ee12305300e467d7b36760950420d25c54303`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 00:11:39 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 21 Aug 2026 00:11:39 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 21 Aug 2026 00:11:44 GMT
ENV INFLUXDB_VERSION=3.11.2
# Fri, 21 Aug 2026 00:11:44 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 21 Aug 2026 00:11:44 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 21 Aug 2026 00:11:44 GMT
USER influxdb3
# Fri, 21 Aug 2026 00:11:45 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 21 Aug 2026 00:11:45 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 21 Aug 2026 00:11:45 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 21 Aug 2026 00:11:45 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 21 Aug 2026 00:11:45 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca5c734a9e8b1ee1738e726a6b0032a97524c9df918bb7d1ad9abc0b7179926`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 6.6 MB (6628662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869bfdd061f0884e41642343eb999dfa5725add2c0527afbecd0281e4bf75218`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1990311f832de26b9f2f8ead2190893c7b9aa4160de5411736659062f3a858a8`  
		Last Modified: Fri, 21 Aug 2026 00:12:05 GMT  
		Size: 112.4 MB (112366750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29bc24595019267a11de33569bcca7e600c8eed2df21b5c8e67dcfe252c95a8`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8db16aca7e821f467be353e192d1749fe0ae4639ff0281ce4d3fe6b40c7f56`  
		Last Modified: Fri, 21 Aug 2026 00:12:04 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:core` - unknown; unknown

```console
$ docker pull influxdb@sha256:81a23a22fcb7208c141df3e4014dfc86c54840e087e0ce40b01fa5ba19918ab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4479f805cd516263057be17f6e8324fe575449410f5565c3848961e24ee82a`

```dockerfile
```

-	Layers:
	-	`sha256:aa2056c057b63ec911cecd253150da4673159d7cc2d783a642a867bd99a3f79a`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 2.3 MB (2294399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b431d281ead2b2cbf70d3cb893e97d75f778d5357d8bf68884f54c4f246bf224`  
		Last Modified: Fri, 21 Aug 2026 00:12:02 GMT  
		Size: 17.6 KB (17640 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:954889ddc239d076f5a2accc480561cb511e3991f1955cfc1fb20d12d1321514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (140020224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f159333ef0277d4b0685067586020123c1bcb61324afd8ce1ba5b32e8b31de`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 00:11:30 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 21 Aug 2026 00:11:31 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 21 Aug 2026 00:11:39 GMT
ENV INFLUXDB_VERSION=3.11.2
# Fri, 21 Aug 2026 00:11:39 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 21 Aug 2026 00:11:39 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 21 Aug 2026 00:11:39 GMT
USER influxdb3
# Fri, 21 Aug 2026 00:11:40 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 21 Aug 2026 00:11:40 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 21 Aug 2026 00:11:40 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 21 Aug 2026 00:11:40 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 21 Aug 2026 00:11:40 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196fac50616879f64c1bfb593c970fdca576f2cdb93dd79a862cde5c4ced73c7`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 6.6 MB (6642945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d3c987ea49a5a21f6960392531cc691e18d722059515df3259dd2a7baf55d7`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 3.7 KB (3657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3e6cb4f07f841b318902907f29c695289029c300c43e54e0c43b711fe576884`  
		Last Modified: Fri, 21 Aug 2026 00:11:59 GMT  
		Size: 104.5 MB (104485718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc977fade2fc1da64e478206bd0a12f089fb1c2013ad72836cc16393b851e574`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:643c2b6aa95ca9cdd8546749c7f0f77542322b23094265796eba101a6f2c946f`  
		Last Modified: Fri, 21 Aug 2026 00:11:57 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:core` - unknown; unknown

```console
$ docker pull influxdb@sha256:52f43d318e993f3bf1102af10efcd431c1cb854ad05ab094a3db6fdbd9b50d59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c68f7864c2b17a844f4b2ef7b6d3be1afe0b302d03b73fb3279259e73b23ae`

```dockerfile
```

-	Layers:
	-	`sha256:8b81a2105cabf39cbe112a3a431a30692975f95f6f3f38c25d1511bacd32a658`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 2.3 MB (2295481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:596ff1c375ac23dae3d89e88e74b3f0e12eb77d5320ad4fcae6ffb3cb4505ba6`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:data`

```console
$ docker pull influxdb@sha256:9235d8a6c47c211bcc48801f1f0a0c01fad75f9f049fe0277886829323d1ff27
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:data` - linux; amd64

```console
$ docker pull influxdb@sha256:c560c6fc4a05818e723da08d7422737f6b229efa102a181b9a6a8b98e1c48fab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115745252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:332fe760fd12e5ddc0d94fd858104fa5bc138260d08f4f5d92a3f17c51f25304`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:04 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Tue, 25 Aug 2026 01:43:04 GMT
ENV INFLUXDB_PR=
# Tue, 25 Aug 2026 01:43:04 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Tue, 25 Aug 2026 01:43:04 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-data_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:04 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 25 Aug 2026 01:43:04 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 01:43:04 GMT
VOLUME [/var/lib/influxdb]
# Tue, 25 Aug 2026 01:43:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:43:04 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 25 Aug 2026 01:43:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:43:04 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9236f6e1ba3c62aec3ff9a62e85ee4a7faad6fef56ab74cdfef638a2a5c334d`  
		Last Modified: Tue, 25 Aug 2026 01:43:17 GMT  
		Size: 43.2 MB (43189864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd0b2ff3d3321329ae80b159f3201174985b5234424cce9393b21397406e4b49`  
		Last Modified: Tue, 25 Aug 2026 01:43:16 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89a159a84cca101eee23420359c8b54abf998e9f83a5f0f955faa1135cb21fb9`  
		Last Modified: Tue, 25 Aug 2026 01:43:16 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be61f3bad8f060ed5339c29d27d1e4891189ebedbb6684ae52e5a56278e3197`  
		Last Modified: Tue, 25 Aug 2026 01:43:16 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:data` - unknown; unknown

```console
$ docker pull influxdb@sha256:f73891a3d24c4b5434530e51eba337ce4b70d6f5d5b2cdd191c4c3e5b0acfedf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4712552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40b0147ea2f973561c124afb118e18ae0c9f107438696158fbfa44cf76c5d8cb`

```dockerfile
```

-	Layers:
	-	`sha256:3106d52563a68fbcf260c8efecd363035ca22d6713ff9bf730db6406cb4139f5`  
		Last Modified: Tue, 25 Aug 2026 01:43:16 GMT  
		Size: 4.7 MB (4698398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e85861b3912b3e51af3e2e315bd8cf155f6dce312afbb88131a797ff56f50359`  
		Last Modified: Tue, 25 Aug 2026 01:43:16 GMT  
		Size: 14.2 KB (14154 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:data-alpine`

```console
$ docker pull influxdb@sha256:97455dc1763d0603ac9b2c08bb015eeafa3a4293efdb6da2dcac20989499411b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:9e565c7fd49e5d8f35ed01c97673730f73fe99480f2bcc42df2ebaeb6670e25f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (47997256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63094d0e7597666e3a6319a4c087f71fe682814c16de22d762b1de6dd9c5cca7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:29:12 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Fri, 17 Apr 2026 00:29:15 GMT
ENV INFLUXDB_PR=
# Fri, 17 Apr 2026 00:29:15 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Fri, 17 Apr 2026 00:29:15 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"         "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     tar -xvf "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influx'             'influxdb-*/influx_inspect'             'influxdb-*/influxd' &&     rm "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"        "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     apk del .build-deps # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
EXPOSE map[8086/tcp:{}]
# Fri, 17 Apr 2026 00:29:15 GMT
VOLUME [/var/lib/influxdb]
# Fri, 17 Apr 2026 00:29:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Fri, 17 Apr 2026 00:29:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 17 Apr 2026 00:29:15 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc9611369db3ecb1526937d9f72c04921aa31dc4ba3d99a4e3b9c15767aa38c`  
		Last Modified: Fri, 17 Apr 2026 00:29:25 GMT  
		Size: 1.2 MB (1224170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f88fc8e5058960e45aee8b6cac82ff2bd50d7e2137e6cf885c0b4d623ae175b8`  
		Last Modified: Fri, 17 Apr 2026 00:29:26 GMT  
		Size: 43.1 MB (43124440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada70a5a02afde6bb6c3f103fa9ec3a499488396461d706bd57a9bac54ad1dbf`  
		Last Modified: Fri, 17 Apr 2026 00:29:25 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d47be05a8626fbeb060a3ac42397eec5b9faff395d564ed99c70f443120850`  
		Last Modified: Fri, 17 Apr 2026 00:29:25 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2249338bf3d212a5f9560aae8dae54182f0232814622fe938e2ea878e279faab`  
		Last Modified: Fri, 17 Apr 2026 00:29:26 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:data-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:78a86aa0d4d8e27d8e0afc24b8bac506e70b8877e920a0b0d532fad2c24f6d91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **796.1 KB (796066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eaafdeb7f35414723ace5c8693058a60536ee236f09cb0b7ee8cd56812f99a5`

```dockerfile
```

-	Layers:
	-	`sha256:2c95497e066bdcad88af076d5632e15c891f1c90d79ccc0cfc2ab77eac05e7bb`  
		Last Modified: Fri, 17 Apr 2026 00:29:25 GMT  
		Size: 780.5 KB (780536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:329b5b66f2e9143f7d74aaad874558e3fea3758d13aaf5008df91e8d3021223c`  
		Last Modified: Fri, 17 Apr 2026 00:29:25 GMT  
		Size: 15.5 KB (15530 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:enterprise`

```console
$ docker pull influxdb@sha256:6ce2bf22499bac577c18ea21a6a28ad5fa4fcdf1ebc1ca47c2a723ee24c4ccca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:443933e285bc7814adaeb945c974504b52f660819001e7ae6112e495c3fc74bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.2 MB (183191964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6efc20e12d8889884d0eb5ab8cb6ca37f058c004c503573ac80277b8eb1067ef`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 00:11:39 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 21 Aug 2026 00:11:39 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 21 Aug 2026 00:12:18 GMT
ENV INFLUXDB_VERSION=3.11.2
# Fri, 21 Aug 2026 00:12:18 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 21 Aug 2026 00:12:18 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 21 Aug 2026 00:12:18 GMT
USER influxdb3
# Fri, 21 Aug 2026 00:12:18 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 21 Aug 2026 00:12:18 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 21 Aug 2026 00:12:18 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 21 Aug 2026 00:12:18 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 21 Aug 2026 00:12:18 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 21 Aug 2026 00:12:18 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 21 Aug 2026 00:12:18 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 21 Aug 2026 00:12:18 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 21 Aug 2026 00:12:18 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca5c734a9e8b1ee1738e726a6b0032a97524c9df918bb7d1ad9abc0b7179926`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 6.6 MB (6628662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869bfdd061f0884e41642343eb999dfa5725add2c0527afbecd0281e4bf75218`  
		Last Modified: Fri, 21 Aug 2026 00:12:03 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a4c32ea7283eebe80c18980dba2e41c03c9c324d402c0bc86e7cfbd6b35b800`  
		Last Modified: Fri, 21 Aug 2026 00:12:43 GMT  
		Size: 146.8 MB (146806171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0baa2797004847c50a78a175fd64ff2310af11df59533add12d8512f3ea40ee`  
		Last Modified: Fri, 21 Aug 2026 00:12:39 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cfbaac37ca5b9422af5597997d4e6c823e80ade2cc43e45857cdf3afaf6bda5`  
		Last Modified: Fri, 21 Aug 2026 00:12:39 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:fd6227bc17d0850ed5ea948bf3771f0b051f2f008cc324242bc86282b685bdc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc5606751c181b4f7f4f2e310ca1f8c27d822177fa51eebf3d24709ac60c766`

```dockerfile
```

-	Layers:
	-	`sha256:1b92ac1dfc506ea254cbd9b94d6200651d67ef202e364945be911262ea53405d`  
		Last Modified: Fri, 21 Aug 2026 00:12:39 GMT  
		Size: 2.3 MB (2294447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:788cf47f9627f0a5604261cbbecad1949c9c99279c252d3e0fcbc7542e2f0bc4`  
		Last Modified: Fri, 21 Aug 2026 00:12:39 GMT  
		Size: 17.8 KB (17820 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:f13fbfcc4a911776ddffec62e64c9d9498877d6dc39687c6e789a4dfc7550ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173657800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40974e876245a810357a5ef4f655ce5d3a0d803aa3d5882bac6e410b66f2b58a`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 00:11:30 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 21 Aug 2026 00:11:31 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 21 Aug 2026 00:12:15 GMT
ENV INFLUXDB_VERSION=3.11.2
# Fri, 21 Aug 2026 00:12:15 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 21 Aug 2026 00:12:15 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 21 Aug 2026 00:12:15 GMT
USER influxdb3
# Fri, 21 Aug 2026 00:12:15 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 21 Aug 2026 00:12:15 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 21 Aug 2026 00:12:15 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 21 Aug 2026 00:12:15 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 21 Aug 2026 00:12:15 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 21 Aug 2026 00:12:15 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 21 Aug 2026 00:12:15 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 21 Aug 2026 00:12:15 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 21 Aug 2026 00:12:15 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196fac50616879f64c1bfb593c970fdca576f2cdb93dd79a862cde5c4ced73c7`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 6.6 MB (6642945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d3c987ea49a5a21f6960392531cc691e18d722059515df3259dd2a7baf55d7`  
		Last Modified: Fri, 21 Aug 2026 00:11:56 GMT  
		Size: 3.7 KB (3657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6cdc141a1a86d823a5e3ad3bb58ba48a2f4d086e96f3cb953367beb1bc4a69`  
		Last Modified: Fri, 21 Aug 2026 00:12:37 GMT  
		Size: 138.1 MB (138123293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02f84da1e60f1e783415a2d136487cdd43ef5aa366f0e2f797934ac9068b506`  
		Last Modified: Fri, 21 Aug 2026 00:12:34 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab66e68a6248369e983837f355420d907f6a8b394ed8eb6b6a1eaf17a6bdeecc`  
		Last Modified: Fri, 21 Aug 2026 00:12:34 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:540efd2f723b61e8cc24099da2ecadf8b782b214a07a5b4bd57191af3c18f3f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31baa2926667f7de7f5bace59f1b7f1e9839b4cfeb44b7825c738f63b317bf82`

```dockerfile
```

-	Layers:
	-	`sha256:7ae4c08733ec2746920b777383322cc30ff2c49ae04b7899e6b7d28a4ff62e55`  
		Last Modified: Fri, 21 Aug 2026 00:12:34 GMT  
		Size: 2.3 MB (2295529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d15ad4e71446f37d5ba6c52200ae7ba1192684f93360db80ca5bf12c10d72345`  
		Last Modified: Fri, 21 Aug 2026 00:12:34 GMT  
		Size: 18.0 KB (17970 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:f75e48af0598e8aec7986e991a848d19a119101a7d563a2e5db1dfaac9c45daa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:latest` - linux; amd64

```console
$ docker pull influxdb@sha256:54ccb17391b0964f30ba9451d8a869ff8c7beefe76103e636f2c4a8502154e5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110818430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42603e14ab9ca094e595a264bbb69449f56f3d206a219d21add942dfa3651731`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:21 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:22 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 25 Aug 2026 00:52:22 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 25 Aug 2026 00:52:25 GMT
ENV INFLUXDB_VERSION=2.9.1
# Tue, 25 Aug 2026 00:52:25 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 25 Aug 2026 00:52:25 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Tue, 25 Aug 2026 00:52:26 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 25 Aug 2026 00:52:26 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 25 Aug 2026 00:52:26 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 25 Aug 2026 00:52:26 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 25 Aug 2026 00:52:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 00:52:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 00:52:26 GMT
CMD ["influxd"]
# Tue, 25 Aug 2026 00:52:26 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 00:52:26 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 25 Aug 2026 00:52:26 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 25 Aug 2026 00:52:26 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 25 Aug 2026 00:52:26 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:573c20ce328ee00d69474aa88510c7e1fb7a47d28fb264d5a3391af6d3c1ecd0`  
		Last Modified: Tue, 25 Aug 2026 00:52:38 GMT  
		Size: 9.8 MB (9820365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b666332ab0b4f9ac09935df5b3225436721d3c699ce82a1deb4ba6bc2343e7c7`  
		Last Modified: Tue, 25 Aug 2026 00:52:38 GMT  
		Size: 3.8 MB (3822788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b56ed1363977b928f6e20145c24cfce8118306ac73c59959cba5988cdb2c2a5`  
		Last Modified: Tue, 25 Aug 2026 00:52:38 GMT  
		Size: 3.2 KB (3230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00e0091fd5595e0c36b6b653404502f37e7d95a7ad9111923fbe13279ff5397`  
		Last Modified: Tue, 25 Aug 2026 00:52:39 GMT  
		Size: 56.5 MB (56510623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e13dc76fc9b131c9cd94926f285bd9c3bc468d3b8f31dbfbfe725379e9d74ce`  
		Last Modified: Tue, 25 Aug 2026 00:52:39 GMT  
		Size: 12.4 MB (12421825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81d6928acf75e25fa927d3d99db8cd22b5b9764b9dfa224fe27673ac559d4a46`  
		Last Modified: Tue, 25 Aug 2026 00:52:39 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba05685fbe242565fb25e7b6d854452592544aa736627878aaf361032d5b70c0`  
		Last Modified: Tue, 25 Aug 2026 00:52:39 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a71bf342900241ca53483c5d40e5e5a7ea1be9770eae90c01ab2fde9afede6f0`  
		Last Modified: Tue, 25 Aug 2026 00:52:40 GMT  
		Size: 6.5 KB (6501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:latest` - unknown; unknown

```console
$ docker pull influxdb@sha256:83b48ef4a4477ea81d552faa0222e8b392576373318ba0d64c49002f2972da9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2993300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcb8fe0577a07a49426a4d140f4125c08f728eddccf40156131247c72f63fae6`

```dockerfile
```

-	Layers:
	-	`sha256:88e29fba8d56ddd72483d27075640c32285d5262bfe97afa29396cb65e383c29`  
		Last Modified: Tue, 25 Aug 2026 00:52:38 GMT  
		Size: 3.0 MB (2964686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d36ca2ce49978c6376c07c0e6c7d88100cffabbbdab063d7a3e69ec42ec9b62`  
		Last Modified: Tue, 25 Aug 2026 00:52:37 GMT  
		Size: 28.6 KB (28614 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:latest` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:f8af6f227b5932201b7714580b9d569a3fb88a8d63af9451a61f436f55c15d4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.3 MB (106346351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ff3a2c9c97df1e2ee8b9fb1af47269ebbc81ee75ba82f3ae151489c2a3eeb95`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:54:35 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:54:36 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 25 Aug 2026 00:54:36 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 25 Aug 2026 00:54:39 GMT
ENV INFLUXDB_VERSION=2.9.1
# Tue, 25 Aug 2026 00:54:39 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 25 Aug 2026 00:54:39 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Tue, 25 Aug 2026 00:54:40 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 25 Aug 2026 00:54:40 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 25 Aug 2026 00:54:40 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 25 Aug 2026 00:54:40 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 25 Aug 2026 00:54:40 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 00:54:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 00:54:40 GMT
CMD ["influxd"]
# Tue, 25 Aug 2026 00:54:40 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 25 Aug 2026 00:54:40 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 25 Aug 2026 00:54:40 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 25 Aug 2026 00:54:40 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 25 Aug 2026 00:54:40 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be4a3a85cba26e3740ed0d7c4e95ff9338e94b7cc7b32098862e0a3196ffa58`  
		Last Modified: Tue, 25 Aug 2026 00:54:52 GMT  
		Size: 9.6 MB (9642612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f68c0310243dd00a42fbccd9b1ddae17ad6f980709b97a10a8e45ddfc31f58`  
		Last Modified: Tue, 25 Aug 2026 00:54:52 GMT  
		Size: 3.5 MB (3459170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a79605b2b591e355fc1d1fa9e722feb8f98188652f575d8a55445b120c9ee8`  
		Last Modified: Tue, 25 Aug 2026 00:54:51 GMT  
		Size: 3.2 KB (3233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ed692525c68caf840cda854a4aa4849997b727d18b87d5dfcb5ff2ce054fcb`  
		Last Modified: Tue, 25 Aug 2026 00:54:54 GMT  
		Size: 53.6 MB (53636815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f895831a6af0c751311d55a6fcd99d94bb7703ead79076c513492bb65871287c`  
		Last Modified: Tue, 25 Aug 2026 00:54:53 GMT  
		Size: 11.5 MB (11480291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e30eab3b9bf7b251cfab9f6aec90f76e119259c50df13e0666d20e039cd08c3`  
		Last Modified: Tue, 25 Aug 2026 00:54:53 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b6ad26339bf5969f86c9dee315d127351b183b3fd8eee4bf8247b73818a1b9`  
		Last Modified: Tue, 25 Aug 2026 00:54:53 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c055c0de443a05b84a1e86bdcca1a34299b7116a236c54169de57558628156`  
		Last Modified: Tue, 25 Aug 2026 00:54:54 GMT  
		Size: 6.5 KB (6500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:latest` - unknown; unknown

```console
$ docker pull influxdb@sha256:49b619a1a3713f33f29ea76e299876ca8abdf136ea95b6939bad27265ea833f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2992957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1605d7866684f8b130de747f1830979239c0bf4dd2a347e9779fb960299e2159`

```dockerfile
```

-	Layers:
	-	`sha256:9813f5510b5143be30dc061e4f97c93658252c17e42955e75523f57cc22d1f03`  
		Last Modified: Tue, 25 Aug 2026 00:54:52 GMT  
		Size: 3.0 MB (2964164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cf033b57e9a75ccea63737b4a0e43ba4b1a91a44dd225bf25edd057c3a2c1c2`  
		Last Modified: Tue, 25 Aug 2026 00:54:51 GMT  
		Size: 28.8 KB (28793 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:meta`

```console
$ docker pull influxdb@sha256:0cf52fe713dd2d657d6d3f3ee8a0d8f91996c0f493a5830a2c0bb29e823bf2a3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:meta` - linux; amd64

```console
$ docker pull influxdb@sha256:3c9cb3807380eefbafed62bcf8c673417c0a17da8a054bcefc42121b7b3c2281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91939371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a15643e6e89bf39e49428c1e7bb7fb7f7a2d670cccf4f16da27cd4d82ff2589`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:25 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Tue, 25 Aug 2026 01:43:25 GMT
ENV INFLUXDB_PR=
# Tue, 25 Aug 2026 01:43:25 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Tue, 25 Aug 2026 01:43:25 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-meta_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:25 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Tue, 25 Aug 2026 01:43:25 GMT
EXPOSE map[8091/tcp:{}]
# Tue, 25 Aug 2026 01:43:25 GMT
VOLUME [/var/lib/influxdb]
# Tue, 25 Aug 2026 01:43:25 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 01:43:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 01:43:25 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86006cddea68591d57ec12b0482f3d33376e9edcfb635d48a1db1ec1dffb7cba`  
		Last Modified: Tue, 25 Aug 2026 01:43:34 GMT  
		Size: 19.4 MB (19385197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b610f803bfa6f04f4b703f8c96c5fa6d0ef729605097043c9f54c98f022ae4`  
		Last Modified: Tue, 25 Aug 2026 01:43:34 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c3ee9a66526f7724741fc2d703f3a632e07676d0ecfcab3550867b82c1e03e`  
		Last Modified: Tue, 25 Aug 2026 01:43:34 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:d001697724e9ea97f13fe9b772aba18833618c6aa16380daa027b128ab6d2eae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4611130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e30afce3d22462bc4c49942953523a896f645e92c84d40596b50b699a0133a5`

```dockerfile
```

-	Layers:
	-	`sha256:935aea44cb7b1e51fe0458e3ea1c863cdc17df9e09c943d9764fc97dba244040`  
		Last Modified: Tue, 25 Aug 2026 01:43:34 GMT  
		Size: 4.6 MB (4598466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd234e9286bd32e7ee2dc3e94097240b5acc07695f0f9dd62894b9d95877043c`  
		Last Modified: Tue, 25 Aug 2026 01:43:33 GMT  
		Size: 12.7 KB (12664 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:meta-alpine`

```console
$ docker pull influxdb@sha256:c1609e4b1a9966a278cbc63e39637d62a3798895d5f9dffb16f56642c345a470
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:0c2d58c85a4eeef69b1067b8385427653ccd49a3c18b2fa5c406ecc061a3eff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24201677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c996d394ebe8422efb6cd5313a8b6d659f4361c8783ba7e2765a3495d82bf9a9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Fri, 17 Apr 2026 00:29:31 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Fri, 17 Apr 2026 00:29:34 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Fri, 17 Apr 2026 00:29:34 GMT
ENV INFLUXDB_PR=
# Fri, 17 Apr 2026 00:29:34 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Fri, 17 Apr 2026 00:29:34 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"         "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     tar -xvf "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influxd-ctl'             'influxdb-*/influxd-meta' &&     rm "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"        "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     apk del .build-deps # buildkit
# Fri, 17 Apr 2026 00:29:34 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Fri, 17 Apr 2026 00:29:34 GMT
EXPOSE map[8091/tcp:{}]
# Fri, 17 Apr 2026 00:29:34 GMT
VOLUME [/var/lib/influxdb]
# Fri, 17 Apr 2026 00:29:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 17 Apr 2026 00:29:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 17 Apr 2026 00:29:34 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4fce14c04b1498e08f014d63ade6e29799ca92f77d6d5aee2e26f723fa47632`  
		Last Modified: Fri, 17 Apr 2026 00:29:41 GMT  
		Size: 1.2 MB (1224167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e592b60a790f783fefc22026e6f186aec24b3fb81e56fe43bc3ad4dfbccf3b`  
		Last Modified: Fri, 17 Apr 2026 00:29:42 GMT  
		Size: 19.3 MB (19330070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1f2ec0dd69b272c781c7c30754b98f78b843600b12cddc731b02a3b58f888a1`  
		Last Modified: Fri, 17 Apr 2026 00:29:41 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edc5145a28bfcd9c82912556bd7085dee977090f80a54a3c6ee097e29382fcbf`  
		Last Modified: Fri, 17 Apr 2026 00:29:41 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:meta-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:667228df4c2fe4090dfa788f0b272b45189b51414433b171b53980323a0ef648
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.3 KB (695321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b92baa71c20ea018ab004a2abf41df19c1368d9bff15dcda5fa2415c18b67e4`

```dockerfile
```

-	Layers:
	-	`sha256:0b0a0c460b5f111deb27700ed49900ddbe4a0e118ad09843c430e91a8668f979`  
		Last Modified: Fri, 17 Apr 2026 00:29:41 GMT  
		Size: 681.4 KB (681390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7168d592346505ecf69732a4af5308278302c2ca1cc6966560e75037b25b940c`  
		Last Modified: Fri, 17 Apr 2026 00:29:41 GMT  
		Size: 13.9 KB (13931 bytes)  
		MIME: application/vnd.in-toto+json
