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
-	[`influxdb:3.11.0-core`](#influxdb3110-core)
-	[`influxdb:3.11.0-enterprise`](#influxdb3110-enterprise)
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
$ docker pull influxdb@sha256:25afdfb0c072c568cdf6e03bd3c561bd0d0135a8904471219c982ca3fca43aa2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.11` - linux; amd64

```console
$ docker pull influxdb@sha256:8cd3506eed8e1a7d75ead3e5373749fe5f1dca082efcd760014c9ddf87b22078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116202197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:318cc361df58b32bce11f7cbc2b971358626e780abbb0e8a1be12c6e0937de17`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:33:09 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 14 Jul 2026 02:33:17 GMT
ARG INFLUXDB_VERSION=1.11.8
# Tue, 14 Jul 2026 02:33:17 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     case "$(dpkg --print-architecture)" in       *amd64) ARCH=amd64 ;;       *arm64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_DEB=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_DEB}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_DEB}" &&     apt-get install -y "./${INFLUXDB_DEB}" &&     rm -rf "${INFLUXDB_DEB}"            "${INFLUXDB_ASC}" 	   /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:33:17 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 14 Jul 2026 02:33:17 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 02:33:17 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Jul 2026 02:33:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:33:17 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 14 Jul 2026 02:33:17 GMT
USER influxdb
# Tue, 14 Jul 2026 02:33:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:33:17 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3141963e5ad901d8e4c13a9ec77c59435161ce2fb98e6ad29d15bbcdddbea3ee`  
		Last Modified: Tue, 14 Jul 2026 02:33:28 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a993ed2d0023b648764e29648c84cf70f726c47dd6cf4f5ce8da1123bd41ec2`  
		Last Modified: Tue, 14 Jul 2026 02:33:30 GMT  
		Size: 43.7 MB (43657782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c96a2982b5ef5c3850399a87aed2bf48ad8000fc39626bfaac2ccf5f3cb7c76`  
		Last Modified: Tue, 14 Jul 2026 02:33:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333bf4fda04162c41e1faeead1cdcebd73b8ea9bd2eee93d1e4c909b72f574a9`  
		Last Modified: Tue, 14 Jul 2026 02:33:28 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11d3df832f2a05153552a682c9482412c4235fbe6d0255a06952e51f7007ecb`  
		Last Modified: Tue, 14 Jul 2026 02:33:25 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11` - unknown; unknown

```console
$ docker pull influxdb@sha256:eded3c1b9ed19d38276cc4b51a9aa338f8c9fbb74d4f90e6dbeb3afc3ee64449
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5094829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39ef3c172706ed0111f5d28c6c02f93cb945a6bf7b77d56dc3652194923d666b`

```dockerfile
```

-	Layers:
	-	`sha256:c6ec9c851dd875e055c40a6df2ac05f2025b8b92dd907a241eb911326f198db6`  
		Last Modified: Tue, 14 Jul 2026 02:33:28 GMT  
		Size: 5.1 MB (5079343 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c31e5eaa9e61d8acca14865075f2edda9d65f0d726dbce0e15e676c766404fe`  
		Last Modified: Tue, 14 Jul 2026 02:33:28 GMT  
		Size: 15.5 KB (15486 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.11` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:8b1a326947bd02b62417af209b7fa27b1e36dcb992f087bce3e4706a1ff42353
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113127731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:718e860bfedc744960e3f6afc2dcadf794bbee747f0afa4635d90c78dbd2fcaa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:40:33 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 14 Jul 2026 02:40:42 GMT
ARG INFLUXDB_VERSION=1.11.8
# Tue, 14 Jul 2026 02:40:42 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     case "$(dpkg --print-architecture)" in       *amd64) ARCH=amd64 ;;       *arm64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_DEB=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_DEB}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_DEB}" &&     apt-get install -y "./${INFLUXDB_DEB}" &&     rm -rf "${INFLUXDB_DEB}"            "${INFLUXDB_ASC}" 	   /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:40:42 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 14 Jul 2026 02:40:42 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 02:40:42 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Jul 2026 02:40:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:40:42 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 14 Jul 2026 02:40:42 GMT
USER influxdb
# Tue, 14 Jul 2026 02:40:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:40:42 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3bfe7e3c6a92e1bda6d3ddde9de882610239eba4323fd75d10ba1bccee7876`  
		Last Modified: Tue, 14 Jul 2026 01:46:42 GMT  
		Size: 23.6 MB (23612703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec95ebf0ca7c6494de0b90e59b947ae389be68fa26fbbe40625365a572c737df`  
		Last Modified: Tue, 14 Jul 2026 02:40:56 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5610c8231746ad66148c1f0c7525808e6775ceb431fdd713f3cd2da782e46c0c`  
		Last Modified: Tue, 14 Jul 2026 02:40:57 GMT  
		Size: 41.1 MB (41128430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0557ddc8b911866c23b6d720e127bdf6a9189fc544ef54db82d13f879a51c583`  
		Last Modified: Tue, 14 Jul 2026 02:40:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6c0ec694b20c83a993efdcc781fb7146de65113d342fb970b8f4d8504b72a7e`  
		Last Modified: Tue, 14 Jul 2026 02:40:56 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d7737be77743a4ed6bc3683fc830cd142f3539d9dcd62d4ae162a55aed13539`  
		Last Modified: Tue, 14 Jul 2026 02:40:57 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11` - unknown; unknown

```console
$ docker pull influxdb@sha256:4956d1f89020103d50d613e54caf7b5435b5f3dad29e8a32bd67ca2a98400ed1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5094389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b8d8dd9d9280d7751fd76846cc9f5d5a30735a00382bb28cce2f3d7a45c5a5f`

```dockerfile
```

-	Layers:
	-	`sha256:37e739ce05d02e6d4d97c95cd97509d806439be0874d497e5e10d69a47e20012`  
		Last Modified: Tue, 14 Jul 2026 02:40:56 GMT  
		Size: 5.1 MB (5078808 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae9860f85481ffef4fb4a5fb789e0d0e9977125416b1b5ca1106493b0ec6246d`  
		Last Modified: Tue, 14 Jul 2026 02:40:56 GMT  
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
$ docker pull influxdb@sha256:ccc791d212bd292823026848fb51dd2a08226ce1c01f6c9b373cc8982631ee67
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11-data` - linux; amd64

```console
$ docker pull influxdb@sha256:012edc153bd1d663323de2174f05743273b91dbbd8586b7399c375534b3aa6d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114714035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d91aa1507db5e7733b9696416a1b022c7e747e69817907d828ba1bd8e5ed6a6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:33:10 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 02:33:12 GMT
ENV INFLUXDB_VERSION=1.11.9-c1.11.9
# Tue, 14 Jul 2026 02:33:12 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb* # buildkit
# Tue, 14 Jul 2026 02:33:12 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 14 Jul 2026 02:33:12 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 02:33:12 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Jul 2026 02:33:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:33:12 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 14 Jul 2026 02:33:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:33:12 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6114c6133b66de0acd4f3d5ded5a3779415a20ca11da8f69ff8b3744d9c8ff66`  
		Last Modified: Tue, 14 Jul 2026 02:33:24 GMT  
		Size: 5.1 KB (5053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad5f6431283331c2128183c9af7f9b6f4ef287dd957c0cb567ff6333b81cf09`  
		Last Modified: Tue, 14 Jul 2026 02:33:25 GMT  
		Size: 42.2 MB (42165701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97594bd0ce6087946f09c8342682617b6314a6d9ec08ce26e15e8cb0430b4e9f`  
		Last Modified: Tue, 14 Jul 2026 02:33:24 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372148d2d997eba104a6cad9a44f9200363155d437fe725798fe3349b07c57de`  
		Last Modified: Tue, 14 Jul 2026 02:33:24 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11d3df832f2a05153552a682c9482412c4235fbe6d0255a06952e51f7007ecb`  
		Last Modified: Tue, 14 Jul 2026 02:33:25 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:f8d8b6117e3404fe022e2c0c21a8ec3530a6b331a75d323fbcf1ed9f0b595187
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4699143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6881271d596386168e00c16801ca06652cdc8f18d3c6e52dd91af12ffbf0b337`

```dockerfile
```

-	Layers:
	-	`sha256:fdba2646facae1a21ba95c16c0d1362c82a73f893733dea437e63312e70fc6ca`  
		Last Modified: Tue, 14 Jul 2026 02:33:24 GMT  
		Size: 4.7 MB (4684478 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45fe2e3764f208149d1d1cf7aeb50ee25d55e60beb864ea24d7e6d30b037db07`  
		Last Modified: Tue, 14 Jul 2026 02:33:24 GMT  
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
$ docker pull influxdb@sha256:c375fe242c41d3db7e1517d899067e596fcdfb44f626adc4f4c3f2fdae349550
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:09843dc95ea08249bf7350a28dd0456afc6754bde7a55e988f8df0afc85ea321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.1 MB (91143248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0025f1f574bf8e887c991aaf110622fb760145e3abb9c52f4bdcfc8a27cbb656`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:33:17 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 02:33:18 GMT
ENV INFLUXDB_VERSION=1.11.9-c1.11.9
# Tue, 14 Jul 2026 02:33:18 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb* # buildkit
# Tue, 14 Jul 2026 02:33:18 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Tue, 14 Jul 2026 02:33:18 GMT
EXPOSE map[8091/tcp:{}]
# Tue, 14 Jul 2026 02:33:18 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Jul 2026 02:33:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:33:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:33:18 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762b9363df71eccdf91cba3aa0701867bd0364866bd7c3ee936de7cc05712eed`  
		Last Modified: Tue, 14 Jul 2026 02:33:27 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a7b930e616ee806305972ae6e704518df9dfd41d714008ad34cc3453cd9259`  
		Last Modified: Tue, 14 Jul 2026 02:33:27 GMT  
		Size: 18.6 MB (18596110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a99a7d22b7128b0ea5a886648572408f7ca3c6398ecbe1465938507f7f16429`  
		Last Modified: Tue, 14 Jul 2026 02:33:27 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c2073c327d75342b979ee373f5cfe4d0a7983ee21cc5f199cf6c68d2f48528`  
		Last Modified: Tue, 14 Jul 2026 02:33:27 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:ebcd1b4b81bc7c094c3361c6084f5497c8582b1235d5cab855e510f286c6d21b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4604345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d92b83c85ed0c92f71e407eb13e319d961d5ef0dbbcf61fbad054f2afa1995db`

```dockerfile
```

-	Layers:
	-	`sha256:02da2330fd6155f9da43e1a5190b88ddf4d544ae6ff9206155077a8aa4859091`  
		Last Modified: Tue, 14 Jul 2026 02:33:27 GMT  
		Size: 4.6 MB (4591321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a06837bae5069a7f067f369a261eacfbb2e4b7cecc391d135a32a0a598351366`  
		Last Modified: Tue, 14 Jul 2026 02:33:27 GMT  
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
$ docker pull influxdb@sha256:25afdfb0c072c568cdf6e03bd3c561bd0d0135a8904471219c982ca3fca43aa2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.11.8` - linux; amd64

```console
$ docker pull influxdb@sha256:8cd3506eed8e1a7d75ead3e5373749fe5f1dca082efcd760014c9ddf87b22078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116202197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:318cc361df58b32bce11f7cbc2b971358626e780abbb0e8a1be12c6e0937de17`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:33:09 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 14 Jul 2026 02:33:17 GMT
ARG INFLUXDB_VERSION=1.11.8
# Tue, 14 Jul 2026 02:33:17 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     case "$(dpkg --print-architecture)" in       *amd64) ARCH=amd64 ;;       *arm64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_DEB=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_DEB}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_DEB}" &&     apt-get install -y "./${INFLUXDB_DEB}" &&     rm -rf "${INFLUXDB_DEB}"            "${INFLUXDB_ASC}" 	   /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:33:17 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 14 Jul 2026 02:33:17 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 02:33:17 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Jul 2026 02:33:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:33:17 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 14 Jul 2026 02:33:17 GMT
USER influxdb
# Tue, 14 Jul 2026 02:33:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:33:17 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3141963e5ad901d8e4c13a9ec77c59435161ce2fb98e6ad29d15bbcdddbea3ee`  
		Last Modified: Tue, 14 Jul 2026 02:33:28 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a993ed2d0023b648764e29648c84cf70f726c47dd6cf4f5ce8da1123bd41ec2`  
		Last Modified: Tue, 14 Jul 2026 02:33:30 GMT  
		Size: 43.7 MB (43657782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c96a2982b5ef5c3850399a87aed2bf48ad8000fc39626bfaac2ccf5f3cb7c76`  
		Last Modified: Tue, 14 Jul 2026 02:33:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333bf4fda04162c41e1faeead1cdcebd73b8ea9bd2eee93d1e4c909b72f574a9`  
		Last Modified: Tue, 14 Jul 2026 02:33:28 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11d3df832f2a05153552a682c9482412c4235fbe6d0255a06952e51f7007ecb`  
		Last Modified: Tue, 14 Jul 2026 02:33:25 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.8` - unknown; unknown

```console
$ docker pull influxdb@sha256:eded3c1b9ed19d38276cc4b51a9aa338f8c9fbb74d4f90e6dbeb3afc3ee64449
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5094829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39ef3c172706ed0111f5d28c6c02f93cb945a6bf7b77d56dc3652194923d666b`

```dockerfile
```

-	Layers:
	-	`sha256:c6ec9c851dd875e055c40a6df2ac05f2025b8b92dd907a241eb911326f198db6`  
		Last Modified: Tue, 14 Jul 2026 02:33:28 GMT  
		Size: 5.1 MB (5079343 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c31e5eaa9e61d8acca14865075f2edda9d65f0d726dbce0e15e676c766404fe`  
		Last Modified: Tue, 14 Jul 2026 02:33:28 GMT  
		Size: 15.5 KB (15486 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.11.8` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:8b1a326947bd02b62417af209b7fa27b1e36dcb992f087bce3e4706a1ff42353
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113127731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:718e860bfedc744960e3f6afc2dcadf794bbee747f0afa4635d90c78dbd2fcaa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:40:33 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 14 Jul 2026 02:40:42 GMT
ARG INFLUXDB_VERSION=1.11.8
# Tue, 14 Jul 2026 02:40:42 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     case "$(dpkg --print-architecture)" in       *amd64) ARCH=amd64 ;;       *arm64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_DEB=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_DEB}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_DEB}" &&     apt-get install -y "./${INFLUXDB_DEB}" &&     rm -rf "${INFLUXDB_DEB}"            "${INFLUXDB_ASC}" 	   /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:40:42 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 14 Jul 2026 02:40:42 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 02:40:42 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Jul 2026 02:40:42 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:40:42 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 14 Jul 2026 02:40:42 GMT
USER influxdb
# Tue, 14 Jul 2026 02:40:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:40:42 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3bfe7e3c6a92e1bda6d3ddde9de882610239eba4323fd75d10ba1bccee7876`  
		Last Modified: Tue, 14 Jul 2026 01:46:42 GMT  
		Size: 23.6 MB (23612703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec95ebf0ca7c6494de0b90e59b947ae389be68fa26fbbe40625365a572c737df`  
		Last Modified: Tue, 14 Jul 2026 02:40:56 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5610c8231746ad66148c1f0c7525808e6775ceb431fdd713f3cd2da782e46c0c`  
		Last Modified: Tue, 14 Jul 2026 02:40:57 GMT  
		Size: 41.1 MB (41128430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0557ddc8b911866c23b6d720e127bdf6a9189fc544ef54db82d13f879a51c583`  
		Last Modified: Tue, 14 Jul 2026 02:40:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6c0ec694b20c83a993efdcc781fb7146de65113d342fb970b8f4d8504b72a7e`  
		Last Modified: Tue, 14 Jul 2026 02:40:56 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d7737be77743a4ed6bc3683fc830cd142f3539d9dcd62d4ae162a55aed13539`  
		Last Modified: Tue, 14 Jul 2026 02:40:57 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.8` - unknown; unknown

```console
$ docker pull influxdb@sha256:4956d1f89020103d50d613e54caf7b5435b5f3dad29e8a32bd67ca2a98400ed1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5094389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b8d8dd9d9280d7751fd76846cc9f5d5a30735a00382bb28cce2f3d7a45c5a5f`

```dockerfile
```

-	Layers:
	-	`sha256:37e739ce05d02e6d4d97c95cd97509d806439be0874d497e5e10d69a47e20012`  
		Last Modified: Tue, 14 Jul 2026 02:40:56 GMT  
		Size: 5.1 MB (5078808 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae9860f85481ffef4fb4a5fb789e0d0e9977125416b1b5ca1106493b0ec6246d`  
		Last Modified: Tue, 14 Jul 2026 02:40:56 GMT  
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
$ docker pull influxdb@sha256:ccc791d212bd292823026848fb51dd2a08226ce1c01f6c9b373cc8982631ee67
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11.9-data` - linux; amd64

```console
$ docker pull influxdb@sha256:012edc153bd1d663323de2174f05743273b91dbbd8586b7399c375534b3aa6d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114714035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d91aa1507db5e7733b9696416a1b022c7e747e69817907d828ba1bd8e5ed6a6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:33:10 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 02:33:12 GMT
ENV INFLUXDB_VERSION=1.11.9-c1.11.9
# Tue, 14 Jul 2026 02:33:12 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb* # buildkit
# Tue, 14 Jul 2026 02:33:12 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 14 Jul 2026 02:33:12 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 02:33:12 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Jul 2026 02:33:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:33:12 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 14 Jul 2026 02:33:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:33:12 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6114c6133b66de0acd4f3d5ded5a3779415a20ca11da8f69ff8b3744d9c8ff66`  
		Last Modified: Tue, 14 Jul 2026 02:33:24 GMT  
		Size: 5.1 KB (5053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad5f6431283331c2128183c9af7f9b6f4ef287dd957c0cb567ff6333b81cf09`  
		Last Modified: Tue, 14 Jul 2026 02:33:25 GMT  
		Size: 42.2 MB (42165701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97594bd0ce6087946f09c8342682617b6314a6d9ec08ce26e15e8cb0430b4e9f`  
		Last Modified: Tue, 14 Jul 2026 02:33:24 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372148d2d997eba104a6cad9a44f9200363155d437fe725798fe3349b07c57de`  
		Last Modified: Tue, 14 Jul 2026 02:33:24 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11d3df832f2a05153552a682c9482412c4235fbe6d0255a06952e51f7007ecb`  
		Last Modified: Tue, 14 Jul 2026 02:33:25 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.9-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:f8d8b6117e3404fe022e2c0c21a8ec3530a6b331a75d323fbcf1ed9f0b595187
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4699143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6881271d596386168e00c16801ca06652cdc8f18d3c6e52dd91af12ffbf0b337`

```dockerfile
```

-	Layers:
	-	`sha256:fdba2646facae1a21ba95c16c0d1362c82a73f893733dea437e63312e70fc6ca`  
		Last Modified: Tue, 14 Jul 2026 02:33:24 GMT  
		Size: 4.7 MB (4684478 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45fe2e3764f208149d1d1cf7aeb50ee25d55e60beb864ea24d7e6d30b037db07`  
		Last Modified: Tue, 14 Jul 2026 02:33:24 GMT  
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
$ docker pull influxdb@sha256:c375fe242c41d3db7e1517d899067e596fcdfb44f626adc4f4c3f2fdae349550
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11.9-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:09843dc95ea08249bf7350a28dd0456afc6754bde7a55e988f8df0afc85ea321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.1 MB (91143248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0025f1f574bf8e887c991aaf110622fb760145e3abb9c52f4bdcfc8a27cbb656`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:33:17 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 14 Jul 2026 02:33:18 GMT
ENV INFLUXDB_VERSION=1.11.9-c1.11.9
# Tue, 14 Jul 2026 02:33:18 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb* # buildkit
# Tue, 14 Jul 2026 02:33:18 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Tue, 14 Jul 2026 02:33:18 GMT
EXPOSE map[8091/tcp:{}]
# Tue, 14 Jul 2026 02:33:18 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Jul 2026 02:33:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:33:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:33:18 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762b9363df71eccdf91cba3aa0701867bd0364866bd7c3ee936de7cc05712eed`  
		Last Modified: Tue, 14 Jul 2026 02:33:27 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a7b930e616ee806305972ae6e704518df9dfd41d714008ad34cc3453cd9259`  
		Last Modified: Tue, 14 Jul 2026 02:33:27 GMT  
		Size: 18.6 MB (18596110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a99a7d22b7128b0ea5a886648572408f7ca3c6398ecbe1465938507f7f16429`  
		Last Modified: Tue, 14 Jul 2026 02:33:27 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c2073c327d75342b979ee373f5cfe4d0a7983ee21cc5f199cf6c68d2f48528`  
		Last Modified: Tue, 14 Jul 2026 02:33:27 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.9-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:ebcd1b4b81bc7c094c3361c6084f5497c8582b1235d5cab855e510f286c6d21b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4604345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d92b83c85ed0c92f71e407eb13e319d961d5ef0dbbcf61fbad054f2afa1995db`

```dockerfile
```

-	Layers:
	-	`sha256:02da2330fd6155f9da43e1a5190b88ddf4d544ae6ff9206155077a8aa4859091`  
		Last Modified: Tue, 14 Jul 2026 02:33:27 GMT  
		Size: 4.6 MB (4591321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a06837bae5069a7f067f369a261eacfbb2e4b7cecc391d135a32a0a598351366`  
		Last Modified: Tue, 14 Jul 2026 02:33:27 GMT  
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
$ docker pull influxdb@sha256:7f65020ddef923f0366dfee0ce753adc0d20b97b0b110b0988c03e0426932396
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.12` - linux; amd64

```console
$ docker pull influxdb@sha256:571e7612fd44b49d5190f3f147f7894542ec74c3b52c792857cd70b3a943c1cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114670691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa07f7ed140e64513c939c4e704b6ccf428f79e0472081b2c9ee0719ffe8f452`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:32:46 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 14 Jul 2026 02:32:50 GMT
ENV INFLUXDB_VERSION=1.12.4
# Tue, 14 Jul 2026 02:32:50 GMT
ENV INFLUXDB_PR=-1
# Tue, 14 Jul 2026 02:32:50 GMT
ENV INFLUXDB_PV=1.12.4-1
# Tue, 14 Jul 2026 02:32:50 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:32:50 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 14 Jul 2026 02:32:50 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 02:32:50 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Jul 2026 02:32:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:32:51 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 14 Jul 2026 02:32:51 GMT
USER influxdb
# Tue, 14 Jul 2026 02:32:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:32:51 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e274373e97596653a327e7c9958dda0371c5c4094b6c98f0dceda59b8279f41f`  
		Last Modified: Tue, 14 Jul 2026 02:33:03 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f92a18ef04798171302f051a7a4b6a19ebe6ea447fcd06ad7ff6fe1ae296c367`  
		Last Modified: Tue, 14 Jul 2026 02:33:04 GMT  
		Size: 42.1 MB (42126282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b187175032325bf30d51ee23c0eb3c76be027545b232a9fbb45d17b5640531`  
		Last Modified: Tue, 14 Jul 2026 02:33:03 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2e7ae007a68dc16213cfc1e802235a2e49c263acf1296d13823b4e38d8037aa`  
		Last Modified: Tue, 14 Jul 2026 02:33:03 GMT  
		Size: 207.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c974afa9ec4fdd0bff4f340064ec12cf01ec34c26751d068e263c997eb6b7d7d`  
		Last Modified: Tue, 14 Jul 2026 02:33:04 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12` - unknown; unknown

```console
$ docker pull influxdb@sha256:7693eb2e7e1880ecd27ca22bffab352d50395224325250114af3f584da676256
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4694734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c5f437957770ef56d9598613ba2f41d772d29ae30ea63723fbb61a75483cca4`

```dockerfile
```

-	Layers:
	-	`sha256:c62c5d456931b6da0330bb419ceeca1bb1117829718e10d48a748bb3c613043e`  
		Last Modified: Tue, 14 Jul 2026 02:33:03 GMT  
		Size: 4.7 MB (4678205 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:276d69c7a824f31f4a7fb50b023333968968793d2f82c197fe198f0256e3d879`  
		Last Modified: Tue, 14 Jul 2026 02:33:03 GMT  
		Size: 16.5 KB (16529 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.12` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:322e030bc22636b3fc1ef881a7b910d12f3234656732e1a28c2c33f2c10c5f72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110753601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9439d2a2db2440e6daa5577f47fec54d0355339e3f52ce1ff10d1ea83d962e1d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:40:29 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 14 Jul 2026 02:40:34 GMT
ENV INFLUXDB_VERSION=1.12.4
# Tue, 14 Jul 2026 02:40:34 GMT
ENV INFLUXDB_PR=-1
# Tue, 14 Jul 2026 02:40:34 GMT
ENV INFLUXDB_PV=1.12.4-1
# Tue, 14 Jul 2026 02:40:34 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:40:34 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 14 Jul 2026 02:40:34 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 02:40:34 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Jul 2026 02:40:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:40:34 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 14 Jul 2026 02:40:34 GMT
USER influxdb
# Tue, 14 Jul 2026 02:40:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:40:34 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3bfe7e3c6a92e1bda6d3ddde9de882610239eba4323fd75d10ba1bccee7876`  
		Last Modified: Tue, 14 Jul 2026 01:46:42 GMT  
		Size: 23.6 MB (23612703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f738c7d88b0c4377ac8f1dad8f6cc60693fdb365b240fbcfbe716e536eeb9caf`  
		Last Modified: Tue, 14 Jul 2026 02:40:48 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4b309d15077d77f4327eef22f5e5744f86b414af3345aa778e2a6b95b6f1e6`  
		Last Modified: Tue, 14 Jul 2026 02:40:49 GMT  
		Size: 38.8 MB (38754298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75bbdfbcd325bf99897da32785f3e92221146a2a4d43199d4329e5af497303eb`  
		Last Modified: Tue, 14 Jul 2026 02:40:48 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb1c2649405addebbfd112c837bc1d0e9da459f5d3e63d0e0d0a282a92f85511`  
		Last Modified: Tue, 14 Jul 2026 02:40:48 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db6bb5fe9bd4ba9c3b5b6278e62f876225d69483c7a6579d0580dad07f4d1de`  
		Last Modified: Tue, 14 Jul 2026 02:40:49 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12` - unknown; unknown

```console
$ docker pull influxdb@sha256:8443737f0cb56f3ea5d683a63a02c5641560e504845baa444dce9112e9e6dc8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4694284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ab86a36ac56cf46d6894daa3be2adf8ff5a5e68e0ec3e405a89314d1731135`

```dockerfile
```

-	Layers:
	-	`sha256:40be4a4e81cdc1f2eddf9c88d8a7fa6ffbb7a24345db3d13647a948b2a3dbb1d`  
		Last Modified: Tue, 14 Jul 2026 02:40:48 GMT  
		Size: 4.7 MB (4677661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c48b11e06be85969a6bb967959d16f6c70974b01c9a716a5194791d7af7b7c81`  
		Last Modified: Tue, 14 Jul 2026 02:40:48 GMT  
		Size: 16.6 KB (16623 bytes)  
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
$ docker pull influxdb@sha256:35fc7bdcf7aaf4f21792e2c7f909e8907c1ce75ced5e15377be5e7a0437ba737
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12-data` - linux; amd64

```console
$ docker pull influxdb@sha256:5c940ec4adaa83077da53478180b23812db862f964c14c37779cfcc1aec32be7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115733153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e13a6085c07c19e5773153d0ba50801d236c3fc93491624fa49e74d4742312e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:32:57 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Tue, 14 Jul 2026 02:32:57 GMT
ENV INFLUXDB_PR=
# Tue, 14 Jul 2026 02:32:57 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Tue, 14 Jul 2026 02:32:57 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-data_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:32:57 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 14 Jul 2026 02:32:57 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 02:32:57 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Jul 2026 02:32:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:32:57 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 14 Jul 2026 02:32:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:32:57 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a5359bb97d04c0782d59ccd858060cd9564789868c8277af9c018ea3e43c8c`  
		Last Modified: Tue, 14 Jul 2026 02:33:15 GMT  
		Size: 43.2 MB (43189875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431473c02e00defcd602aaddb4d1ac383ba0bbf61f68371addb24085f9d52ec7`  
		Last Modified: Tue, 14 Jul 2026 02:33:13 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:676a9d7ad6279191c750a0b0f6911638e39cd9e8e5585c0e15a8b9da887d51b9`  
		Last Modified: Tue, 14 Jul 2026 02:33:13 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64e493e61cb731b9642fdfe571de74c3e79b1e2f899931f8f09403eb655f1599`  
		Last Modified: Tue, 14 Jul 2026 02:33:13 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:1e15b88a6badb019deabaae1fb1eb4a56ea8c9b33e44dc95b926adc036517a70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4707349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5cc92df30fa74bef73702b9fafcf0c4d539226ac76ff6b7e4f8f305a52ef11b`

```dockerfile
```

-	Layers:
	-	`sha256:f5ef7442f9bc0b641ec52015068b8ce5ab63ab59b0c254fa6ac202b4a3f10524`  
		Last Modified: Tue, 14 Jul 2026 02:33:14 GMT  
		Size: 4.7 MB (4693195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca81c5b3563dbe0fe83a941afc51e7bab6f6ada1782625fbfa1d3d5c06886f4f`  
		Last Modified: Tue, 14 Jul 2026 02:33:13 GMT  
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
$ docker pull influxdb@sha256:eec698cc45350f4f5b9bea16ae5a837322e8868fb886519f7572bd95168267dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:f6bfed1cc463f0e511d2ef1f0277a450838f117defdc47e29458f01c62ef9aa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91927218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:219e807e63c402cc171c6b59f28656da64823bbaffe0e00418f67b8d0c77b5e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:33:01 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Tue, 14 Jul 2026 02:33:01 GMT
ENV INFLUXDB_PR=
# Tue, 14 Jul 2026 02:33:01 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Tue, 14 Jul 2026 02:33:01 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-meta_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:33:01 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Tue, 14 Jul 2026 02:33:01 GMT
EXPOSE map[8091/tcp:{}]
# Tue, 14 Jul 2026 02:33:01 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Jul 2026 02:33:01 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:33:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:33:01 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cc34f043ca9c3ea49bbe7851c51be641daa3304a7d70d34b081ac78205f7cd5`  
		Last Modified: Tue, 14 Jul 2026 02:33:11 GMT  
		Size: 19.4 MB (19385152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a943df5f144640934b1392ff377e8951b4ca45b95aa2d805e964663eb11edb`  
		Last Modified: Tue, 14 Jul 2026 02:33:10 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:159d2f22536e9feeb2bd927f7127bd1d562d2896b4e60b4a7bb46db0e6a364b5`  
		Last Modified: Tue, 14 Jul 2026 02:33:10 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:57b4e08fabc35359d7c358040c5d8d51545d46c893b1f01f03b50ca64b6309e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4605927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f59393d0a38d18e6b318cd69e97401ee91569ef3ee1b24b2efc043037f5171e`

```dockerfile
```

-	Layers:
	-	`sha256:20a5fe18bfef65a8d9f1139ef28203999aa06f0d194fcb4b1a980c389edaf12b`  
		Last Modified: Tue, 14 Jul 2026 02:33:10 GMT  
		Size: 4.6 MB (4593263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d38b8439e69ceffd16d7f1d2f3a68ce6d6c46361b7b0f4da1bc6ab41f94cd26`  
		Last Modified: Tue, 14 Jul 2026 02:33:10 GMT  
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
$ docker pull influxdb@sha256:7f65020ddef923f0366dfee0ce753adc0d20b97b0b110b0988c03e0426932396
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.12.4` - linux; amd64

```console
$ docker pull influxdb@sha256:571e7612fd44b49d5190f3f147f7894542ec74c3b52c792857cd70b3a943c1cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114670691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa07f7ed140e64513c939c4e704b6ccf428f79e0472081b2c9ee0719ffe8f452`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:32:46 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 14 Jul 2026 02:32:50 GMT
ENV INFLUXDB_VERSION=1.12.4
# Tue, 14 Jul 2026 02:32:50 GMT
ENV INFLUXDB_PR=-1
# Tue, 14 Jul 2026 02:32:50 GMT
ENV INFLUXDB_PV=1.12.4-1
# Tue, 14 Jul 2026 02:32:50 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:32:50 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 14 Jul 2026 02:32:50 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 02:32:50 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Jul 2026 02:32:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:32:51 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 14 Jul 2026 02:32:51 GMT
USER influxdb
# Tue, 14 Jul 2026 02:32:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:32:51 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e274373e97596653a327e7c9958dda0371c5c4094b6c98f0dceda59b8279f41f`  
		Last Modified: Tue, 14 Jul 2026 02:33:03 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f92a18ef04798171302f051a7a4b6a19ebe6ea447fcd06ad7ff6fe1ae296c367`  
		Last Modified: Tue, 14 Jul 2026 02:33:04 GMT  
		Size: 42.1 MB (42126282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b187175032325bf30d51ee23c0eb3c76be027545b232a9fbb45d17b5640531`  
		Last Modified: Tue, 14 Jul 2026 02:33:03 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2e7ae007a68dc16213cfc1e802235a2e49c263acf1296d13823b4e38d8037aa`  
		Last Modified: Tue, 14 Jul 2026 02:33:03 GMT  
		Size: 207.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c974afa9ec4fdd0bff4f340064ec12cf01ec34c26751d068e263c997eb6b7d7d`  
		Last Modified: Tue, 14 Jul 2026 02:33:04 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.4` - unknown; unknown

```console
$ docker pull influxdb@sha256:7693eb2e7e1880ecd27ca22bffab352d50395224325250114af3f584da676256
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4694734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c5f437957770ef56d9598613ba2f41d772d29ae30ea63723fbb61a75483cca4`

```dockerfile
```

-	Layers:
	-	`sha256:c62c5d456931b6da0330bb419ceeca1bb1117829718e10d48a748bb3c613043e`  
		Last Modified: Tue, 14 Jul 2026 02:33:03 GMT  
		Size: 4.7 MB (4678205 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:276d69c7a824f31f4a7fb50b023333968968793d2f82c197fe198f0256e3d879`  
		Last Modified: Tue, 14 Jul 2026 02:33:03 GMT  
		Size: 16.5 KB (16529 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.12.4` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:322e030bc22636b3fc1ef881a7b910d12f3234656732e1a28c2c33f2c10c5f72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110753601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9439d2a2db2440e6daa5577f47fec54d0355339e3f52ce1ff10d1ea83d962e1d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:40:29 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 14 Jul 2026 02:40:34 GMT
ENV INFLUXDB_VERSION=1.12.4
# Tue, 14 Jul 2026 02:40:34 GMT
ENV INFLUXDB_PR=-1
# Tue, 14 Jul 2026 02:40:34 GMT
ENV INFLUXDB_PV=1.12.4-1
# Tue, 14 Jul 2026 02:40:34 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:40:34 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 14 Jul 2026 02:40:34 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 02:40:34 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Jul 2026 02:40:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:40:34 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 14 Jul 2026 02:40:34 GMT
USER influxdb
# Tue, 14 Jul 2026 02:40:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:40:34 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3bfe7e3c6a92e1bda6d3ddde9de882610239eba4323fd75d10ba1bccee7876`  
		Last Modified: Tue, 14 Jul 2026 01:46:42 GMT  
		Size: 23.6 MB (23612703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f738c7d88b0c4377ac8f1dad8f6cc60693fdb365b240fbcfbe716e536eeb9caf`  
		Last Modified: Tue, 14 Jul 2026 02:40:48 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4b309d15077d77f4327eef22f5e5744f86b414af3345aa778e2a6b95b6f1e6`  
		Last Modified: Tue, 14 Jul 2026 02:40:49 GMT  
		Size: 38.8 MB (38754298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75bbdfbcd325bf99897da32785f3e92221146a2a4d43199d4329e5af497303eb`  
		Last Modified: Tue, 14 Jul 2026 02:40:48 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb1c2649405addebbfd112c837bc1d0e9da459f5d3e63d0e0d0a282a92f85511`  
		Last Modified: Tue, 14 Jul 2026 02:40:48 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db6bb5fe9bd4ba9c3b5b6278e62f876225d69483c7a6579d0580dad07f4d1de`  
		Last Modified: Tue, 14 Jul 2026 02:40:49 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.4` - unknown; unknown

```console
$ docker pull influxdb@sha256:8443737f0cb56f3ea5d683a63a02c5641560e504845baa444dce9112e9e6dc8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4694284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ab86a36ac56cf46d6894daa3be2adf8ff5a5e68e0ec3e405a89314d1731135`

```dockerfile
```

-	Layers:
	-	`sha256:40be4a4e81cdc1f2eddf9c88d8a7fa6ffbb7a24345db3d13647a948b2a3dbb1d`  
		Last Modified: Tue, 14 Jul 2026 02:40:48 GMT  
		Size: 4.7 MB (4677661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c48b11e06be85969a6bb967959d16f6c70974b01c9a716a5194791d7af7b7c81`  
		Last Modified: Tue, 14 Jul 2026 02:40:48 GMT  
		Size: 16.6 KB (16623 bytes)  
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
$ docker pull influxdb@sha256:35fc7bdcf7aaf4f21792e2c7f909e8907c1ce75ced5e15377be5e7a0437ba737
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12.4-data` - linux; amd64

```console
$ docker pull influxdb@sha256:5c940ec4adaa83077da53478180b23812db862f964c14c37779cfcc1aec32be7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115733153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e13a6085c07c19e5773153d0ba50801d236c3fc93491624fa49e74d4742312e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:32:57 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Tue, 14 Jul 2026 02:32:57 GMT
ENV INFLUXDB_PR=
# Tue, 14 Jul 2026 02:32:57 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Tue, 14 Jul 2026 02:32:57 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-data_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:32:57 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 14 Jul 2026 02:32:57 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 02:32:57 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Jul 2026 02:32:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:32:57 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 14 Jul 2026 02:32:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:32:57 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a5359bb97d04c0782d59ccd858060cd9564789868c8277af9c018ea3e43c8c`  
		Last Modified: Tue, 14 Jul 2026 02:33:15 GMT  
		Size: 43.2 MB (43189875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431473c02e00defcd602aaddb4d1ac383ba0bbf61f68371addb24085f9d52ec7`  
		Last Modified: Tue, 14 Jul 2026 02:33:13 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:676a9d7ad6279191c750a0b0f6911638e39cd9e8e5585c0e15a8b9da887d51b9`  
		Last Modified: Tue, 14 Jul 2026 02:33:13 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64e493e61cb731b9642fdfe571de74c3e79b1e2f899931f8f09403eb655f1599`  
		Last Modified: Tue, 14 Jul 2026 02:33:13 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.4-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:1e15b88a6badb019deabaae1fb1eb4a56ea8c9b33e44dc95b926adc036517a70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4707349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5cc92df30fa74bef73702b9fafcf0c4d539226ac76ff6b7e4f8f305a52ef11b`

```dockerfile
```

-	Layers:
	-	`sha256:f5ef7442f9bc0b641ec52015068b8ce5ab63ab59b0c254fa6ac202b4a3f10524`  
		Last Modified: Tue, 14 Jul 2026 02:33:14 GMT  
		Size: 4.7 MB (4693195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca81c5b3563dbe0fe83a941afc51e7bab6f6ada1782625fbfa1d3d5c06886f4f`  
		Last Modified: Tue, 14 Jul 2026 02:33:13 GMT  
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
$ docker pull influxdb@sha256:eec698cc45350f4f5b9bea16ae5a837322e8868fb886519f7572bd95168267dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12.4-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:f6bfed1cc463f0e511d2ef1f0277a450838f117defdc47e29458f01c62ef9aa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91927218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:219e807e63c402cc171c6b59f28656da64823bbaffe0e00418f67b8d0c77b5e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:33:01 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Tue, 14 Jul 2026 02:33:01 GMT
ENV INFLUXDB_PR=
# Tue, 14 Jul 2026 02:33:01 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Tue, 14 Jul 2026 02:33:01 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-meta_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:33:01 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Tue, 14 Jul 2026 02:33:01 GMT
EXPOSE map[8091/tcp:{}]
# Tue, 14 Jul 2026 02:33:01 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Jul 2026 02:33:01 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:33:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:33:01 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cc34f043ca9c3ea49bbe7851c51be641daa3304a7d70d34b081ac78205f7cd5`  
		Last Modified: Tue, 14 Jul 2026 02:33:11 GMT  
		Size: 19.4 MB (19385152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a943df5f144640934b1392ff377e8951b4ca45b95aa2d805e964663eb11edb`  
		Last Modified: Tue, 14 Jul 2026 02:33:10 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:159d2f22536e9feeb2bd927f7127bd1d562d2896b4e60b4a7bb46db0e6a364b5`  
		Last Modified: Tue, 14 Jul 2026 02:33:10 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.4-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:57b4e08fabc35359d7c358040c5d8d51545d46c893b1f01f03b50ca64b6309e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4605927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f59393d0a38d18e6b318cd69e97401ee91569ef3ee1b24b2efc043037f5171e`

```dockerfile
```

-	Layers:
	-	`sha256:20a5fe18bfef65a8d9f1139ef28203999aa06f0d194fcb4b1a980c389edaf12b`  
		Last Modified: Tue, 14 Jul 2026 02:33:10 GMT  
		Size: 4.6 MB (4593263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d38b8439e69ceffd16d7f1d2f3a68ce6d6c46361b7b0f4da1bc6ab41f94cd26`  
		Last Modified: Tue, 14 Jul 2026 02:33:10 GMT  
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

## `influxdb:2`

```console
$ docker pull influxdb@sha256:9f29465df7a15d427e046681cfc7b3da9753e75825c6864f8d3cf5b3aa3cca3d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2` - linux; amd64

```console
$ docker pull influxdb@sha256:59f2d3b995aae37426ddc7e1007ae974cb1b80e13ba03b138de9449ea14da118
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110798766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc03bd8164f0515b80d096355e8c0eb6ade1e3dd488b681cd0dc9d85aaf643d4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:44:59 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:45:00 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 14 Jul 2026 01:45:00 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 14 Jul 2026 01:45:03 GMT
ENV INFLUXDB_VERSION=2.9.1
# Tue, 14 Jul 2026 01:45:03 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 14 Jul 2026 01:45:03 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Tue, 14 Jul 2026 01:45:04 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 14 Jul 2026 01:45:04 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 14 Jul 2026 01:45:04 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 14 Jul 2026 01:45:04 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 14 Jul 2026 01:45:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 01:45:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 01:45:04 GMT
CMD ["influxd"]
# Tue, 14 Jul 2026 01:45:04 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 01:45:04 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 14 Jul 2026 01:45:04 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 14 Jul 2026 01:45:04 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 14 Jul 2026 01:45:04 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d77f05b47f9a4af9594c6253acea752a76884da3c06ef4dacf40b7deba41aea`  
		Last Modified: Tue, 14 Jul 2026 01:45:17 GMT  
		Size: 9.8 MB (9800775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5d0f60c01be70fc5432699a32b77193193aa8f801a77a18f1d5f4f4eca31f8f`  
		Last Modified: Tue, 14 Jul 2026 01:45:17 GMT  
		Size: 3.8 MB (3822786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2e2ae139e2b1c2823a9420f6826f7fcb5761d29fa389dd343789c4f6283362d`  
		Last Modified: Tue, 14 Jul 2026 01:45:17 GMT  
		Size: 3.2 KB (3230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2b171f084180327473e3af462bc6c935e9afc3099a3ea362436806febb92c31`  
		Last Modified: Tue, 14 Jul 2026 01:45:19 GMT  
		Size: 56.5 MB (56510574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f924a3c7b24cf52dd68ca02f93800982a7b7aef4be497077824a01c70267fd88`  
		Last Modified: Tue, 14 Jul 2026 01:45:18 GMT  
		Size: 12.4 MB (12421819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9340669a63a69df0f3515f0f846558b51afea11dc6ae943901837e6ad60f2cef`  
		Last Modified: Tue, 14 Jul 2026 01:45:18 GMT  
		Size: 207.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9985a462188065ee7ad1a36871a649f061c45554b93e46641ebf028f1ca4754f`  
		Last Modified: Tue, 14 Jul 2026 01:45:19 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d24757e5edfa3c52c6e63de2dcf8118034dd29bdcd1bd3337a081cead9d81483`  
		Last Modified: Tue, 14 Jul 2026 01:45:20 GMT  
		Size: 6.5 KB (6499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2` - unknown; unknown

```console
$ docker pull influxdb@sha256:0da905e83c23934be547111c4b8368c7dc2f6d487e75430618df5f74e5f10f1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2988097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:308d9e8d1c477d8671bf3c13e5aa2d64c18b8dd87f4806d8088ad123c93c3225`

```dockerfile
```

-	Layers:
	-	`sha256:8ae2fc0d1ba1fb8fea4e0ceeb2d64dfaf166eb9008019065813f81b669a07bd6`  
		Last Modified: Tue, 14 Jul 2026 01:45:17 GMT  
		Size: 3.0 MB (2959483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5c88026d22229d2b37b2f2bbfec85d4bf2fce7577337a2cb2538c27c15cdbb5`  
		Last Modified: Tue, 14 Jul 2026 01:45:17 GMT  
		Size: 28.6 KB (28614 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:e464d5a2b7c70df0a30e5ae5f21687233b3d29f2d4ef8c06bebed04b70e27f95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.3 MB (106332804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80c2c0d9944580599c1a282353adf4f54e415049917685ee3b63c28d9398b7fd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:48:14 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:15 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 14 Jul 2026 01:48:15 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 14 Jul 2026 01:48:18 GMT
ENV INFLUXDB_VERSION=2.9.1
# Tue, 14 Jul 2026 01:48:18 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 14 Jul 2026 01:48:18 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Tue, 14 Jul 2026 01:48:19 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 14 Jul 2026 01:48:19 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 14 Jul 2026 01:48:19 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 14 Jul 2026 01:48:19 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 14 Jul 2026 01:48:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 01:48:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 01:48:19 GMT
CMD ["influxd"]
# Tue, 14 Jul 2026 01:48:19 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 01:48:19 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 14 Jul 2026 01:48:19 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 14 Jul 2026 01:48:19 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 14 Jul 2026 01:48:19 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2725f8a1e352f0c8dd4c3109c988bd688d95f14c5f5256e949472ed6e5c73370`  
		Last Modified: Tue, 14 Jul 2026 01:48:31 GMT  
		Size: 9.6 MB (9629101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4995e1128d797823529996ae49875e7e33da39d1f9463dbae6dc4a4290966d01`  
		Last Modified: Tue, 14 Jul 2026 01:48:31 GMT  
		Size: 3.5 MB (3459177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aa128aead64d9df68630b58212b19cba41d6e7bcdce4d36a951fcc0929efb7a`  
		Last Modified: Tue, 14 Jul 2026 01:48:31 GMT  
		Size: 3.2 KB (3227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cca7b356385721bebde91e44ccb6df84f4ea1ff6a85b6bbf5edab3ce848b2e72`  
		Last Modified: Tue, 14 Jul 2026 01:48:33 GMT  
		Size: 53.6 MB (53636819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b96df2659768440a6e8042892594d178148c7c4403ea4263ae9908f07fdd1e6`  
		Last Modified: Tue, 14 Jul 2026 01:48:32 GMT  
		Size: 11.5 MB (11480286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20521921f6f7ba30639d804185b7c80f0382efe2ad0ff175e80b09ada10d4245`  
		Last Modified: Tue, 14 Jul 2026 01:48:32 GMT  
		Size: 207.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c12502fbfc8225f28ce09bf070830cda67d9c2d2ffccd93af121495252e4da7f`  
		Last Modified: Tue, 14 Jul 2026 01:48:33 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d40d5ae1d6a9dd3798167472eb03642f0c6d57cfc939b1f0fd74aa03fe16273`  
		Last Modified: Tue, 14 Jul 2026 01:48:34 GMT  
		Size: 6.5 KB (6499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2` - unknown; unknown

```console
$ docker pull influxdb@sha256:add056668fc9ca4b3009e7819771e51b121eb448ab26253656f8a9aeeb1d31ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2987753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b95cdf06914348bc421eccfb0532ea6f8523d88b82873e0a87ac1419cd6ec6a`

```dockerfile
```

-	Layers:
	-	`sha256:0c9d3d19d3a8d25ea1d16ab82589406e7bf40af13629b5c2562d7255b888f348`  
		Last Modified: Tue, 14 Jul 2026 01:48:31 GMT  
		Size: 3.0 MB (2958961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3b1dbc61ae0d6d7b3a504f8770f71f7cf73ab373c8e454d7f1e33a7810bd67e`  
		Last Modified: Tue, 14 Jul 2026 01:48:31 GMT  
		Size: 28.8 KB (28792 bytes)  
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
$ docker pull influxdb@sha256:51f4c0c9da7cca8d29b7e150871f52a57d8172d868e673d2dacb11e89c9e94f1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.8` - linux; amd64

```console
$ docker pull influxdb@sha256:f14179ca57d4b32c496dff76a75c19ea1ff4b87653391b291fd4ea97d85d8294
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107239477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79c06a3be8d803027f0d5e3d7174290b058c4cacba48da9ebb49bb13b4326c62`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:45:05 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:45:05 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v2.8.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '21fda0a4dc3c779c42737eca4b37e4f187d7ab91ba6301eed97b801af84a9ea2  /usr/local/bin/dasel' ;;       arm64) echo '2c75e63f9884c37578f48788819dda5a5a5c32ec6c4a663eefc19839f44d6291  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel --version # buildkit
# Tue, 14 Jul 2026 01:45:05 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 14 Jul 2026 01:45:07 GMT
ENV GOSU_VER=1.19
# Tue, 14 Jul 2026 01:45:07 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     curl -fLo /usr/local/bin/gosu     "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-${arch}"          -fLo /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-${arch}.asc" &&     gpg --batch --verify /usr/local/bin/gosu.asc                          /usr/local/bin/gosu &&     rm -rf /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:45:07 GMT
ENV INFLUXDB_VERSION=2.8.0
# Tue, 14 Jul 2026 01:45:07 GMT
ENV INFLUXDB_PR=-2
# Tue, 14 Jul 2026 01:45:07 GMT
ENV INFLUXDB_PV=2.8.0-2
# Tue, 14 Jul 2026 01:45:09 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/usr/bin/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 14 Jul 2026 01:45:09 GMT
ENV INFLUX_CLI_VERSION=2.7.5
# Tue, 14 Jul 2026 01:45:11 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 14 Jul 2026 01:45:11 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 14 Jul 2026 01:45:11 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 14 Jul 2026 01:45:11 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 14 Jul 2026 01:45:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 01:45:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 01:45:11 GMT
CMD ["influxd"]
# Tue, 14 Jul 2026 01:45:11 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 01:45:11 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 14 Jul 2026 01:45:11 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 14 Jul 2026 01:45:11 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 14 Jul 2026 01:45:11 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d9c64f1cbdc1fa66526485c2926974c0d1a645309dc8ad1362c707c098face3`  
		Last Modified: Tue, 14 Jul 2026 01:45:22 GMT  
		Size: 9.8 MB (9800724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bafc43f7a49f3d8e94ba135d5487de0f5fca990246a9412d8636616247270b1f`  
		Last Modified: Tue, 14 Jul 2026 01:45:22 GMT  
		Size: 6.2 MB (6156970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4934edea88c4ef8bf948682793a2d349fedbec7646e31d8abc13681d9f65262`  
		Last Modified: Tue, 14 Jul 2026 01:45:22 GMT  
		Size: 3.2 KB (3229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5eed71dc9105141a32e0a4a3fad2353aee42d287bebfa3189559a58fcb62626`  
		Last Modified: Tue, 14 Jul 2026 01:45:22 GMT  
		Size: 811.5 KB (811477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a65cc980cba0667d11fda3843a27f2d55385d4371581777f3978d4cba23a9b9`  
		Last Modified: Tue, 14 Jul 2026 01:45:25 GMT  
		Size: 50.5 MB (50451825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d147f51349da4670b18a44d977f8a22190bd1819222711e1cdc7ff56572145`  
		Last Modified: Tue, 14 Jul 2026 01:45:24 GMT  
		Size: 11.8 MB (11775887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:691aa6d45a1e0aaef5e3a415b58b7b6ec366b119a125c4d81fd10a9e0df12858`  
		Last Modified: Tue, 14 Jul 2026 01:45:24 GMT  
		Size: 207.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9009e7c30064430cd5c961cf034b5404e1df6f6fe00f00c5ca9af7b1b22dd9fe`  
		Last Modified: Tue, 14 Jul 2026 01:45:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5479f2ee3625041ff21d0d5818b1d2bcdd16620629c9a59d992b1f71108764f1`  
		Last Modified: Tue, 14 Jul 2026 01:45:25 GMT  
		Size: 6.3 KB (6284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.8` - unknown; unknown

```console
$ docker pull influxdb@sha256:dc1da112cc3d37667bcf37a562311d07603dffa24db539140f37378558128833
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2966740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e97650bb3fe16c8563606579b32458b4a5a04fdcd27ea4aed3e24d4a8c771ff4`

```dockerfile
```

-	Layers:
	-	`sha256:ea2837c412e95628df981733056c2216c06f9fa143c7f61c99b512000e5cd483`  
		Last Modified: Tue, 14 Jul 2026 01:45:22 GMT  
		Size: 2.9 MB (2933715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fce5b029b0b58f3b87ca94f31d95ddf4a5ca9f5044dc9d9e351096f1210023a6`  
		Last Modified: Tue, 14 Jul 2026 01:45:22 GMT  
		Size: 33.0 KB (33025 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.8` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:c8909bf3f63aaae1fb6c269b0241b0b1646f927686aa26a66fd2555c11399dd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.6 MB (103642965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e865ad19f7d4c865206874c65a4664c787181a4fd4c607998e8de005cc0e4d5f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:48:11 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:12 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v2.8.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '21fda0a4dc3c779c42737eca4b37e4f187d7ab91ba6301eed97b801af84a9ea2  /usr/local/bin/dasel' ;;       arm64) echo '2c75e63f9884c37578f48788819dda5a5a5c32ec6c4a663eefc19839f44d6291  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel --version # buildkit
# Tue, 14 Jul 2026 01:48:12 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 14 Jul 2026 01:48:14 GMT
ENV GOSU_VER=1.19
# Tue, 14 Jul 2026 01:48:14 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     curl -fLo /usr/local/bin/gosu     "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-${arch}"          -fLo /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-${arch}.asc" &&     gpg --batch --verify /usr/local/bin/gosu.asc                          /usr/local/bin/gosu &&     rm -rf /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:48:14 GMT
ENV INFLUXDB_VERSION=2.8.0
# Tue, 14 Jul 2026 01:48:14 GMT
ENV INFLUXDB_PR=-2
# Tue, 14 Jul 2026 01:48:14 GMT
ENV INFLUXDB_PV=2.8.0-2
# Tue, 14 Jul 2026 01:48:17 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/usr/bin/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 14 Jul 2026 01:48:17 GMT
ENV INFLUX_CLI_VERSION=2.7.5
# Tue, 14 Jul 2026 01:48:18 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 14 Jul 2026 01:48:18 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 14 Jul 2026 01:48:18 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 14 Jul 2026 01:48:18 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 14 Jul 2026 01:48:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 01:48:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 01:48:18 GMT
CMD ["influxd"]
# Tue, 14 Jul 2026 01:48:18 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 01:48:18 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 14 Jul 2026 01:48:18 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 14 Jul 2026 01:48:18 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 14 Jul 2026 01:48:18 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caa78668a52a47c2245ab02ee64a510f84c99d4bdb299165089f90df5f414b35`  
		Last Modified: Tue, 14 Jul 2026 01:48:29 GMT  
		Size: 9.6 MB (9629032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62f55cc64a86874950d45322b5e470dc1a95bb77db93a779f9517efa9c8f31d4`  
		Last Modified: Tue, 14 Jul 2026 01:48:29 GMT  
		Size: 5.8 MB (5790416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a57ba153f69aa6aea7bce236c055e905087e4fe21ec244590bdaf030ae49ec`  
		Last Modified: Tue, 14 Jul 2026 01:48:28 GMT  
		Size: 3.2 KB (3229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa26931c4239617ede0eaf47b58c38399270395d6c27a56c2316dbda9c38aa0`  
		Last Modified: Tue, 14 Jul 2026 01:48:29 GMT  
		Size: 766.4 KB (766371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a33e7abdea7c1aa5af9551021dfa00b4ceb8dc2cfce9240c71abda1439da64`  
		Last Modified: Tue, 14 Jul 2026 01:48:31 GMT  
		Size: 48.2 MB (48229542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d2772cf7bd519d32fde9af2e3b11a45893611f788a86a95585aa7dac16a57e`  
		Last Modified: Tue, 14 Jul 2026 01:48:30 GMT  
		Size: 11.1 MB (11100394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3d6e94e1af908d6d6711e85e1bc1c7165dd0918ea668082595cd9899b46b641`  
		Last Modified: Tue, 14 Jul 2026 01:48:30 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e7f401a2c3b000403b2433ee6d84ea13729f29869b7811a9b47e4d5026fab83`  
		Last Modified: Tue, 14 Jul 2026 01:48:30 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed87d237267e197e53e531a0911caccb6b9a5c0e0d8702cb6dbf71205530bf5`  
		Last Modified: Tue, 14 Jul 2026 01:48:31 GMT  
		Size: 6.3 KB (6285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.8` - unknown; unknown

```console
$ docker pull influxdb@sha256:7db9248b1a35da343879435080446ec0737b33aac0b75afb8cf8ba3d4e5e5195
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2966368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b641780b30b5677d9556a04dd37a5df2339e4ea8622294aa887b2e512ce131`

```dockerfile
```

-	Layers:
	-	`sha256:34d053d418c472f88992998a780e6a4606ae2cce27ac99d5e24d8692406e55b3`  
		Last Modified: Tue, 14 Jul 2026 01:48:29 GMT  
		Size: 2.9 MB (2933171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e90e7d9c761b05d5217c7cd32d5941475fa10147afb5a7e89a40ab50978de97`  
		Last Modified: Tue, 14 Jul 2026 01:48:28 GMT  
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
$ docker pull influxdb@sha256:51f4c0c9da7cca8d29b7e150871f52a57d8172d868e673d2dacb11e89c9e94f1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.8.0` - linux; amd64

```console
$ docker pull influxdb@sha256:f14179ca57d4b32c496dff76a75c19ea1ff4b87653391b291fd4ea97d85d8294
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107239477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79c06a3be8d803027f0d5e3d7174290b058c4cacba48da9ebb49bb13b4326c62`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:45:05 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:45:05 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v2.8.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '21fda0a4dc3c779c42737eca4b37e4f187d7ab91ba6301eed97b801af84a9ea2  /usr/local/bin/dasel' ;;       arm64) echo '2c75e63f9884c37578f48788819dda5a5a5c32ec6c4a663eefc19839f44d6291  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel --version # buildkit
# Tue, 14 Jul 2026 01:45:05 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 14 Jul 2026 01:45:07 GMT
ENV GOSU_VER=1.19
# Tue, 14 Jul 2026 01:45:07 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     curl -fLo /usr/local/bin/gosu     "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-${arch}"          -fLo /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-${arch}.asc" &&     gpg --batch --verify /usr/local/bin/gosu.asc                          /usr/local/bin/gosu &&     rm -rf /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:45:07 GMT
ENV INFLUXDB_VERSION=2.8.0
# Tue, 14 Jul 2026 01:45:07 GMT
ENV INFLUXDB_PR=-2
# Tue, 14 Jul 2026 01:45:07 GMT
ENV INFLUXDB_PV=2.8.0-2
# Tue, 14 Jul 2026 01:45:09 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/usr/bin/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 14 Jul 2026 01:45:09 GMT
ENV INFLUX_CLI_VERSION=2.7.5
# Tue, 14 Jul 2026 01:45:11 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 14 Jul 2026 01:45:11 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 14 Jul 2026 01:45:11 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 14 Jul 2026 01:45:11 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 14 Jul 2026 01:45:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 01:45:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 01:45:11 GMT
CMD ["influxd"]
# Tue, 14 Jul 2026 01:45:11 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 01:45:11 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 14 Jul 2026 01:45:11 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 14 Jul 2026 01:45:11 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 14 Jul 2026 01:45:11 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d9c64f1cbdc1fa66526485c2926974c0d1a645309dc8ad1362c707c098face3`  
		Last Modified: Tue, 14 Jul 2026 01:45:22 GMT  
		Size: 9.8 MB (9800724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bafc43f7a49f3d8e94ba135d5487de0f5fca990246a9412d8636616247270b1f`  
		Last Modified: Tue, 14 Jul 2026 01:45:22 GMT  
		Size: 6.2 MB (6156970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4934edea88c4ef8bf948682793a2d349fedbec7646e31d8abc13681d9f65262`  
		Last Modified: Tue, 14 Jul 2026 01:45:22 GMT  
		Size: 3.2 KB (3229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5eed71dc9105141a32e0a4a3fad2353aee42d287bebfa3189559a58fcb62626`  
		Last Modified: Tue, 14 Jul 2026 01:45:22 GMT  
		Size: 811.5 KB (811477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a65cc980cba0667d11fda3843a27f2d55385d4371581777f3978d4cba23a9b9`  
		Last Modified: Tue, 14 Jul 2026 01:45:25 GMT  
		Size: 50.5 MB (50451825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d147f51349da4670b18a44d977f8a22190bd1819222711e1cdc7ff56572145`  
		Last Modified: Tue, 14 Jul 2026 01:45:24 GMT  
		Size: 11.8 MB (11775887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:691aa6d45a1e0aaef5e3a415b58b7b6ec366b119a125c4d81fd10a9e0df12858`  
		Last Modified: Tue, 14 Jul 2026 01:45:24 GMT  
		Size: 207.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9009e7c30064430cd5c961cf034b5404e1df6f6fe00f00c5ca9af7b1b22dd9fe`  
		Last Modified: Tue, 14 Jul 2026 01:45:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5479f2ee3625041ff21d0d5818b1d2bcdd16620629c9a59d992b1f71108764f1`  
		Last Modified: Tue, 14 Jul 2026 01:45:25 GMT  
		Size: 6.3 KB (6284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.8.0` - unknown; unknown

```console
$ docker pull influxdb@sha256:dc1da112cc3d37667bcf37a562311d07603dffa24db539140f37378558128833
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2966740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e97650bb3fe16c8563606579b32458b4a5a04fdcd27ea4aed3e24d4a8c771ff4`

```dockerfile
```

-	Layers:
	-	`sha256:ea2837c412e95628df981733056c2216c06f9fa143c7f61c99b512000e5cd483`  
		Last Modified: Tue, 14 Jul 2026 01:45:22 GMT  
		Size: 2.9 MB (2933715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fce5b029b0b58f3b87ca94f31d95ddf4a5ca9f5044dc9d9e351096f1210023a6`  
		Last Modified: Tue, 14 Jul 2026 01:45:22 GMT  
		Size: 33.0 KB (33025 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.8.0` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:c8909bf3f63aaae1fb6c269b0241b0b1646f927686aa26a66fd2555c11399dd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.6 MB (103642965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e865ad19f7d4c865206874c65a4664c787181a4fd4c607998e8de005cc0e4d5f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:48:11 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:12 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v2.8.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '21fda0a4dc3c779c42737eca4b37e4f187d7ab91ba6301eed97b801af84a9ea2  /usr/local/bin/dasel' ;;       arm64) echo '2c75e63f9884c37578f48788819dda5a5a5c32ec6c4a663eefc19839f44d6291  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel --version # buildkit
# Tue, 14 Jul 2026 01:48:12 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 14 Jul 2026 01:48:14 GMT
ENV GOSU_VER=1.19
# Tue, 14 Jul 2026 01:48:14 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     curl -fLo /usr/local/bin/gosu     "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-${arch}"          -fLo /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-${arch}.asc" &&     gpg --batch --verify /usr/local/bin/gosu.asc                          /usr/local/bin/gosu &&     rm -rf /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true # buildkit
# Tue, 14 Jul 2026 01:48:14 GMT
ENV INFLUXDB_VERSION=2.8.0
# Tue, 14 Jul 2026 01:48:14 GMT
ENV INFLUXDB_PR=-2
# Tue, 14 Jul 2026 01:48:14 GMT
ENV INFLUXDB_PV=2.8.0-2
# Tue, 14 Jul 2026 01:48:17 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/usr/bin/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 14 Jul 2026 01:48:17 GMT
ENV INFLUX_CLI_VERSION=2.7.5
# Tue, 14 Jul 2026 01:48:18 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 14 Jul 2026 01:48:18 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 14 Jul 2026 01:48:18 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 14 Jul 2026 01:48:18 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 14 Jul 2026 01:48:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 01:48:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 01:48:18 GMT
CMD ["influxd"]
# Tue, 14 Jul 2026 01:48:18 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 01:48:18 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 14 Jul 2026 01:48:18 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 14 Jul 2026 01:48:18 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 14 Jul 2026 01:48:18 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caa78668a52a47c2245ab02ee64a510f84c99d4bdb299165089f90df5f414b35`  
		Last Modified: Tue, 14 Jul 2026 01:48:29 GMT  
		Size: 9.6 MB (9629032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62f55cc64a86874950d45322b5e470dc1a95bb77db93a779f9517efa9c8f31d4`  
		Last Modified: Tue, 14 Jul 2026 01:48:29 GMT  
		Size: 5.8 MB (5790416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a57ba153f69aa6aea7bce236c055e905087e4fe21ec244590bdaf030ae49ec`  
		Last Modified: Tue, 14 Jul 2026 01:48:28 GMT  
		Size: 3.2 KB (3229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa26931c4239617ede0eaf47b58c38399270395d6c27a56c2316dbda9c38aa0`  
		Last Modified: Tue, 14 Jul 2026 01:48:29 GMT  
		Size: 766.4 KB (766371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a33e7abdea7c1aa5af9551021dfa00b4ceb8dc2cfce9240c71abda1439da64`  
		Last Modified: Tue, 14 Jul 2026 01:48:31 GMT  
		Size: 48.2 MB (48229542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d2772cf7bd519d32fde9af2e3b11a45893611f788a86a95585aa7dac16a57e`  
		Last Modified: Tue, 14 Jul 2026 01:48:30 GMT  
		Size: 11.1 MB (11100394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3d6e94e1af908d6d6711e85e1bc1c7165dd0918ea668082595cd9899b46b641`  
		Last Modified: Tue, 14 Jul 2026 01:48:30 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e7f401a2c3b000403b2433ee6d84ea13729f29869b7811a9b47e4d5026fab83`  
		Last Modified: Tue, 14 Jul 2026 01:48:30 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed87d237267e197e53e531a0911caccb6b9a5c0e0d8702cb6dbf71205530bf5`  
		Last Modified: Tue, 14 Jul 2026 01:48:31 GMT  
		Size: 6.3 KB (6285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.8.0` - unknown; unknown

```console
$ docker pull influxdb@sha256:7db9248b1a35da343879435080446ec0737b33aac0b75afb8cf8ba3d4e5e5195
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2966368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b641780b30b5677d9556a04dd37a5df2339e4ea8622294aa887b2e512ce131`

```dockerfile
```

-	Layers:
	-	`sha256:34d053d418c472f88992998a780e6a4606ae2cce27ac99d5e24d8692406e55b3`  
		Last Modified: Tue, 14 Jul 2026 01:48:29 GMT  
		Size: 2.9 MB (2933171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e90e7d9c761b05d5217c7cd32d5941475fa10147afb5a7e89a40ab50978de97`  
		Last Modified: Tue, 14 Jul 2026 01:48:28 GMT  
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
$ docker pull influxdb@sha256:9f29465df7a15d427e046681cfc7b3da9753e75825c6864f8d3cf5b3aa3cca3d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.9` - linux; amd64

```console
$ docker pull influxdb@sha256:59f2d3b995aae37426ddc7e1007ae974cb1b80e13ba03b138de9449ea14da118
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110798766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc03bd8164f0515b80d096355e8c0eb6ade1e3dd488b681cd0dc9d85aaf643d4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:44:59 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:45:00 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 14 Jul 2026 01:45:00 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 14 Jul 2026 01:45:03 GMT
ENV INFLUXDB_VERSION=2.9.1
# Tue, 14 Jul 2026 01:45:03 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 14 Jul 2026 01:45:03 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Tue, 14 Jul 2026 01:45:04 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 14 Jul 2026 01:45:04 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 14 Jul 2026 01:45:04 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 14 Jul 2026 01:45:04 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 14 Jul 2026 01:45:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 01:45:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 01:45:04 GMT
CMD ["influxd"]
# Tue, 14 Jul 2026 01:45:04 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 01:45:04 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 14 Jul 2026 01:45:04 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 14 Jul 2026 01:45:04 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 14 Jul 2026 01:45:04 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d77f05b47f9a4af9594c6253acea752a76884da3c06ef4dacf40b7deba41aea`  
		Last Modified: Tue, 14 Jul 2026 01:45:17 GMT  
		Size: 9.8 MB (9800775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5d0f60c01be70fc5432699a32b77193193aa8f801a77a18f1d5f4f4eca31f8f`  
		Last Modified: Tue, 14 Jul 2026 01:45:17 GMT  
		Size: 3.8 MB (3822786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2e2ae139e2b1c2823a9420f6826f7fcb5761d29fa389dd343789c4f6283362d`  
		Last Modified: Tue, 14 Jul 2026 01:45:17 GMT  
		Size: 3.2 KB (3230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2b171f084180327473e3af462bc6c935e9afc3099a3ea362436806febb92c31`  
		Last Modified: Tue, 14 Jul 2026 01:45:19 GMT  
		Size: 56.5 MB (56510574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f924a3c7b24cf52dd68ca02f93800982a7b7aef4be497077824a01c70267fd88`  
		Last Modified: Tue, 14 Jul 2026 01:45:18 GMT  
		Size: 12.4 MB (12421819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9340669a63a69df0f3515f0f846558b51afea11dc6ae943901837e6ad60f2cef`  
		Last Modified: Tue, 14 Jul 2026 01:45:18 GMT  
		Size: 207.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9985a462188065ee7ad1a36871a649f061c45554b93e46641ebf028f1ca4754f`  
		Last Modified: Tue, 14 Jul 2026 01:45:19 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d24757e5edfa3c52c6e63de2dcf8118034dd29bdcd1bd3337a081cead9d81483`  
		Last Modified: Tue, 14 Jul 2026 01:45:20 GMT  
		Size: 6.5 KB (6499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9` - unknown; unknown

```console
$ docker pull influxdb@sha256:0da905e83c23934be547111c4b8368c7dc2f6d487e75430618df5f74e5f10f1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2988097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:308d9e8d1c477d8671bf3c13e5aa2d64c18b8dd87f4806d8088ad123c93c3225`

```dockerfile
```

-	Layers:
	-	`sha256:8ae2fc0d1ba1fb8fea4e0ceeb2d64dfaf166eb9008019065813f81b669a07bd6`  
		Last Modified: Tue, 14 Jul 2026 01:45:17 GMT  
		Size: 3.0 MB (2959483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5c88026d22229d2b37b2f2bbfec85d4bf2fce7577337a2cb2538c27c15cdbb5`  
		Last Modified: Tue, 14 Jul 2026 01:45:17 GMT  
		Size: 28.6 KB (28614 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.9` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:e464d5a2b7c70df0a30e5ae5f21687233b3d29f2d4ef8c06bebed04b70e27f95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.3 MB (106332804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80c2c0d9944580599c1a282353adf4f54e415049917685ee3b63c28d9398b7fd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:48:14 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:15 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 14 Jul 2026 01:48:15 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 14 Jul 2026 01:48:18 GMT
ENV INFLUXDB_VERSION=2.9.1
# Tue, 14 Jul 2026 01:48:18 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 14 Jul 2026 01:48:18 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Tue, 14 Jul 2026 01:48:19 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 14 Jul 2026 01:48:19 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 14 Jul 2026 01:48:19 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 14 Jul 2026 01:48:19 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 14 Jul 2026 01:48:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 01:48:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 01:48:19 GMT
CMD ["influxd"]
# Tue, 14 Jul 2026 01:48:19 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 01:48:19 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 14 Jul 2026 01:48:19 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 14 Jul 2026 01:48:19 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 14 Jul 2026 01:48:19 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2725f8a1e352f0c8dd4c3109c988bd688d95f14c5f5256e949472ed6e5c73370`  
		Last Modified: Tue, 14 Jul 2026 01:48:31 GMT  
		Size: 9.6 MB (9629101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4995e1128d797823529996ae49875e7e33da39d1f9463dbae6dc4a4290966d01`  
		Last Modified: Tue, 14 Jul 2026 01:48:31 GMT  
		Size: 3.5 MB (3459177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aa128aead64d9df68630b58212b19cba41d6e7bcdce4d36a951fcc0929efb7a`  
		Last Modified: Tue, 14 Jul 2026 01:48:31 GMT  
		Size: 3.2 KB (3227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cca7b356385721bebde91e44ccb6df84f4ea1ff6a85b6bbf5edab3ce848b2e72`  
		Last Modified: Tue, 14 Jul 2026 01:48:33 GMT  
		Size: 53.6 MB (53636819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b96df2659768440a6e8042892594d178148c7c4403ea4263ae9908f07fdd1e6`  
		Last Modified: Tue, 14 Jul 2026 01:48:32 GMT  
		Size: 11.5 MB (11480286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20521921f6f7ba30639d804185b7c80f0382efe2ad0ff175e80b09ada10d4245`  
		Last Modified: Tue, 14 Jul 2026 01:48:32 GMT  
		Size: 207.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c12502fbfc8225f28ce09bf070830cda67d9c2d2ffccd93af121495252e4da7f`  
		Last Modified: Tue, 14 Jul 2026 01:48:33 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d40d5ae1d6a9dd3798167472eb03642f0c6d57cfc939b1f0fd74aa03fe16273`  
		Last Modified: Tue, 14 Jul 2026 01:48:34 GMT  
		Size: 6.5 KB (6499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9` - unknown; unknown

```console
$ docker pull influxdb@sha256:add056668fc9ca4b3009e7819771e51b121eb448ab26253656f8a9aeeb1d31ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2987753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b95cdf06914348bc421eccfb0532ea6f8523d88b82873e0a87ac1419cd6ec6a`

```dockerfile
```

-	Layers:
	-	`sha256:0c9d3d19d3a8d25ea1d16ab82589406e7bf40af13629b5c2562d7255b888f348`  
		Last Modified: Tue, 14 Jul 2026 01:48:31 GMT  
		Size: 3.0 MB (2958961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3b1dbc61ae0d6d7b3a504f8770f71f7cf73ab373c8e454d7f1e33a7810bd67e`  
		Last Modified: Tue, 14 Jul 2026 01:48:31 GMT  
		Size: 28.8 KB (28792 bytes)  
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
$ docker pull influxdb@sha256:9f29465df7a15d427e046681cfc7b3da9753e75825c6864f8d3cf5b3aa3cca3d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.9.1` - linux; amd64

```console
$ docker pull influxdb@sha256:59f2d3b995aae37426ddc7e1007ae974cb1b80e13ba03b138de9449ea14da118
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110798766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc03bd8164f0515b80d096355e8c0eb6ade1e3dd488b681cd0dc9d85aaf643d4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:44:59 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:45:00 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 14 Jul 2026 01:45:00 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 14 Jul 2026 01:45:03 GMT
ENV INFLUXDB_VERSION=2.9.1
# Tue, 14 Jul 2026 01:45:03 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 14 Jul 2026 01:45:03 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Tue, 14 Jul 2026 01:45:04 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 14 Jul 2026 01:45:04 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 14 Jul 2026 01:45:04 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 14 Jul 2026 01:45:04 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 14 Jul 2026 01:45:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 01:45:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 01:45:04 GMT
CMD ["influxd"]
# Tue, 14 Jul 2026 01:45:04 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 01:45:04 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 14 Jul 2026 01:45:04 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 14 Jul 2026 01:45:04 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 14 Jul 2026 01:45:04 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d77f05b47f9a4af9594c6253acea752a76884da3c06ef4dacf40b7deba41aea`  
		Last Modified: Tue, 14 Jul 2026 01:45:17 GMT  
		Size: 9.8 MB (9800775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5d0f60c01be70fc5432699a32b77193193aa8f801a77a18f1d5f4f4eca31f8f`  
		Last Modified: Tue, 14 Jul 2026 01:45:17 GMT  
		Size: 3.8 MB (3822786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2e2ae139e2b1c2823a9420f6826f7fcb5761d29fa389dd343789c4f6283362d`  
		Last Modified: Tue, 14 Jul 2026 01:45:17 GMT  
		Size: 3.2 KB (3230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2b171f084180327473e3af462bc6c935e9afc3099a3ea362436806febb92c31`  
		Last Modified: Tue, 14 Jul 2026 01:45:19 GMT  
		Size: 56.5 MB (56510574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f924a3c7b24cf52dd68ca02f93800982a7b7aef4be497077824a01c70267fd88`  
		Last Modified: Tue, 14 Jul 2026 01:45:18 GMT  
		Size: 12.4 MB (12421819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9340669a63a69df0f3515f0f846558b51afea11dc6ae943901837e6ad60f2cef`  
		Last Modified: Tue, 14 Jul 2026 01:45:18 GMT  
		Size: 207.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9985a462188065ee7ad1a36871a649f061c45554b93e46641ebf028f1ca4754f`  
		Last Modified: Tue, 14 Jul 2026 01:45:19 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d24757e5edfa3c52c6e63de2dcf8118034dd29bdcd1bd3337a081cead9d81483`  
		Last Modified: Tue, 14 Jul 2026 01:45:20 GMT  
		Size: 6.5 KB (6499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9.1` - unknown; unknown

```console
$ docker pull influxdb@sha256:0da905e83c23934be547111c4b8368c7dc2f6d487e75430618df5f74e5f10f1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2988097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:308d9e8d1c477d8671bf3c13e5aa2d64c18b8dd87f4806d8088ad123c93c3225`

```dockerfile
```

-	Layers:
	-	`sha256:8ae2fc0d1ba1fb8fea4e0ceeb2d64dfaf166eb9008019065813f81b669a07bd6`  
		Last Modified: Tue, 14 Jul 2026 01:45:17 GMT  
		Size: 3.0 MB (2959483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5c88026d22229d2b37b2f2bbfec85d4bf2fce7577337a2cb2538c27c15cdbb5`  
		Last Modified: Tue, 14 Jul 2026 01:45:17 GMT  
		Size: 28.6 KB (28614 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.9.1` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:e464d5a2b7c70df0a30e5ae5f21687233b3d29f2d4ef8c06bebed04b70e27f95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.3 MB (106332804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80c2c0d9944580599c1a282353adf4f54e415049917685ee3b63c28d9398b7fd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:48:14 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:15 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 14 Jul 2026 01:48:15 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 14 Jul 2026 01:48:18 GMT
ENV INFLUXDB_VERSION=2.9.1
# Tue, 14 Jul 2026 01:48:18 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 14 Jul 2026 01:48:18 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Tue, 14 Jul 2026 01:48:19 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 14 Jul 2026 01:48:19 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 14 Jul 2026 01:48:19 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 14 Jul 2026 01:48:19 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 14 Jul 2026 01:48:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 01:48:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 01:48:19 GMT
CMD ["influxd"]
# Tue, 14 Jul 2026 01:48:19 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 01:48:19 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 14 Jul 2026 01:48:19 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 14 Jul 2026 01:48:19 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 14 Jul 2026 01:48:19 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2725f8a1e352f0c8dd4c3109c988bd688d95f14c5f5256e949472ed6e5c73370`  
		Last Modified: Tue, 14 Jul 2026 01:48:31 GMT  
		Size: 9.6 MB (9629101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4995e1128d797823529996ae49875e7e33da39d1f9463dbae6dc4a4290966d01`  
		Last Modified: Tue, 14 Jul 2026 01:48:31 GMT  
		Size: 3.5 MB (3459177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aa128aead64d9df68630b58212b19cba41d6e7bcdce4d36a951fcc0929efb7a`  
		Last Modified: Tue, 14 Jul 2026 01:48:31 GMT  
		Size: 3.2 KB (3227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cca7b356385721bebde91e44ccb6df84f4ea1ff6a85b6bbf5edab3ce848b2e72`  
		Last Modified: Tue, 14 Jul 2026 01:48:33 GMT  
		Size: 53.6 MB (53636819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b96df2659768440a6e8042892594d178148c7c4403ea4263ae9908f07fdd1e6`  
		Last Modified: Tue, 14 Jul 2026 01:48:32 GMT  
		Size: 11.5 MB (11480286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20521921f6f7ba30639d804185b7c80f0382efe2ad0ff175e80b09ada10d4245`  
		Last Modified: Tue, 14 Jul 2026 01:48:32 GMT  
		Size: 207.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c12502fbfc8225f28ce09bf070830cda67d9c2d2ffccd93af121495252e4da7f`  
		Last Modified: Tue, 14 Jul 2026 01:48:33 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d40d5ae1d6a9dd3798167472eb03642f0c6d57cfc939b1f0fd74aa03fe16273`  
		Last Modified: Tue, 14 Jul 2026 01:48:34 GMT  
		Size: 6.5 KB (6499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9.1` - unknown; unknown

```console
$ docker pull influxdb@sha256:add056668fc9ca4b3009e7819771e51b121eb448ab26253656f8a9aeeb1d31ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2987753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b95cdf06914348bc421eccfb0532ea6f8523d88b82873e0a87ac1419cd6ec6a`

```dockerfile
```

-	Layers:
	-	`sha256:0c9d3d19d3a8d25ea1d16ab82589406e7bf40af13629b5c2562d7255b888f348`  
		Last Modified: Tue, 14 Jul 2026 01:48:31 GMT  
		Size: 3.0 MB (2958961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3b1dbc61ae0d6d7b3a504f8770f71f7cf73ab373c8e454d7f1e33a7810bd67e`  
		Last Modified: Tue, 14 Jul 2026 01:48:31 GMT  
		Size: 28.8 KB (28792 bytes)  
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
$ docker pull influxdb@sha256:06ae73b2e869bf78422bdbbc084ab74347102e0f9e84bfd9245cb1c85b379119
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3-core` - linux; amd64

```console
$ docker pull influxdb@sha256:497435140652177c4da54c94839c9f665aef804bf80d326ed806b47b6f133748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151073224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d080332b6f6b76acae310d6f97fcb2e8085753f8146bd2c303b4498b94ca61c2`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:48 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:49 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:39:54 GMT
ENV INFLUXDB_VERSION=3.11.0
# Tue, 04 Aug 2026 01:39:54 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:39:54 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:39:54 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:39:54 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:39:54 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:39:54 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:39:54 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:39:54 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:39:54 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 04 Aug 2026 01:39:54 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:39:54 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:39:54 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bf07841b7cf27462015e3ecc42223fe89263c511eda21a50636bd7619c4aed`  
		Last Modified: Tue, 04 Aug 2026 01:40:12 GMT  
		Size: 9.0 MB (9033745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09452cb5bf63eb175d0b81ba0ba3ac5990f8c81b7e16a5e22362d78755aedcaf`  
		Last Modified: Tue, 04 Aug 2026 01:40:12 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f022720a44a5e430a65ad79ba4abc8220b23c705d95910cc1d84adb1456833a`  
		Last Modified: Tue, 04 Aug 2026 01:40:15 GMT  
		Size: 112.3 MB (112284047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5e0b146a5310e555a4fb674a58b4ba482cf6cdddf54c6d0fc7bd5decd1e510c`  
		Last Modified: Tue, 04 Aug 2026 01:40:12 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fc36bbb2b24cbc998c0f79e0cb8b87cba72fc9bc0c0abb38f13e0efc8536197`  
		Last Modified: Tue, 04 Aug 2026 01:40:13 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:52e51940360b914a486396d19ae345327cc8b7a0900a3d467f9dbd9130d566f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd29557d4522dd2eee0ce5c25cfef71c208b2301c39d39fd0dd8c50771f5483b`

```dockerfile
```

-	Layers:
	-	`sha256:8789f6b667bf5e66da55e64486d41eb046e7fe4d5d669ad94173b287949922dc`  
		Last Modified: Tue, 04 Aug 2026 01:40:12 GMT  
		Size: 2.3 MB (2294399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0947e98d45acef801810113b62e0e25fd9b200bc378338fde770e4dd8f09c1af`  
		Last Modified: Tue, 04 Aug 2026 01:40:12 GMT  
		Size: 17.6 KB (17641 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:ad5cefa012aaca107267256c659e2f58af50d827832141f42fc0380b3e686a3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (139954504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:750fe1a5b3eeec153425879909f5593302acbec3f4b6afb4e57e9786530fdef1`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:52 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:52 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:39:57 GMT
ENV INFLUXDB_VERSION=3.11.0
# Tue, 04 Aug 2026 01:39:57 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:39:57 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:39:57 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:39:58 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:39:58 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:39:58 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:39:58 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:39:58 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:39:58 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 04 Aug 2026 01:39:58 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:39:58 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:39:58 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f164738877fe86a67959dff0a6e5151efa49b25afbf8d1d2ddb5d4b96afec85`  
		Last Modified: Tue, 04 Aug 2026 01:40:14 GMT  
		Size: 6.6 MB (6641726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f16d51f7fb29c3bf69c200ad79b8f6c4be901c79527465d68b127f23cd6bac1d`  
		Last Modified: Tue, 04 Aug 2026 01:40:13 GMT  
		Size: 3.6 KB (3649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd377b2cc683c0b6ca66ab89e45ed4adfa583a05207545d2c24d06169d98a08e`  
		Last Modified: Tue, 04 Aug 2026 01:40:17 GMT  
		Size: 104.4 MB (104421643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91418578df86b6873e8f3a4e44e41777c691078a1eec413b50a6302b727314cc`  
		Last Modified: Tue, 04 Aug 2026 01:40:14 GMT  
		Size: 518.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0201f9571723557c0a003f121a637f278eae72af7fb69e4f73d479087e8aad`  
		Last Modified: Tue, 04 Aug 2026 01:40:15 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:214fd2218622a074d59d131f7836b0b6fa22050c17ca5b6711362299a7023fd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f2ffafcde9650baa28c15f4203a0795a24d7876e36b331759dee876f077d0b`

```dockerfile
```

-	Layers:
	-	`sha256:22f6ea66537ffc1f5a547e93ed85791cff32489c345174ae94f810df8510b1e3`  
		Last Modified: Tue, 04 Aug 2026 01:40:14 GMT  
		Size: 2.3 MB (2295481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faffc7a199ab765bb7998826ada62721be1b49f8f560ff8168b00bd766387df0`  
		Last Modified: Tue, 04 Aug 2026 01:40:13 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3-enterprise`

```console
$ docker pull influxdb@sha256:89b43bbba5973ff22723c72f42195d8523cbd7a00f8509381f01c5832d01c712
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:5a607eb9bf3184aa3a810be45699e8328ae062014b2f68b87c9e6405511b71d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.9 MB (184854234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e211981a212e48d3d1f5e201630bcad45b37019967ce3ec56da97f2e42cc7bd`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:55 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:55 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB_VERSION=3.11.0
# Tue, 04 Aug 2026 01:40:02 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:40:02 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 04 Aug 2026 01:40:02 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:40:02 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:40:02 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae6e94cf64f505b5e22208a4a6eeb5725fc754abc301d03bfe9365ab1a897e0b`  
		Last Modified: Tue, 04 Aug 2026 01:40:24 GMT  
		Size: 9.0 MB (9033728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d44800e7887223208c45b7b938216ceaa3b8cd2b59b0b811026427813fe870`  
		Last Modified: Tue, 04 Aug 2026 01:40:24 GMT  
		Size: 3.6 KB (3650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11462492c236a7cc603179e4b3aaffa19220c8ac4f84c774a66ad4948ab39568`  
		Last Modified: Tue, 04 Aug 2026 01:40:27 GMT  
		Size: 146.1 MB (146065078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c59be6e3b71269663670504ef8b89d784706475916ff423ba9c27ec62bc774`  
		Last Modified: Tue, 04 Aug 2026 01:40:24 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fcebc6bdbffd854af187a94c0897a2db8e33fae5b1d473a4cc11dac8800cc10`  
		Last Modified: Tue, 04 Aug 2026 01:40:25 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:a37f33d57d40a94e0af7cb77ef8c596b5bdcce018f71d12e750a3e82a037d8e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa94d76b33e274253bf95dc5be9c598006f0aa34c1e30b28e942922fc52e9e4d`

```dockerfile
```

-	Layers:
	-	`sha256:104b19f8e66fe96d094971b2045bb1975d1c7dd5b8c3b20ed3067b5abba525a3`  
		Last Modified: Tue, 04 Aug 2026 01:40:24 GMT  
		Size: 2.3 MB (2294447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de79eb1af341d21663152af472bc93244fa7729f40dbdafab3452e77e0d27c87`  
		Last Modified: Tue, 04 Aug 2026 01:40:23 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:089b5e5b4ec0a9c6e7c3f86117a14ad80b780cd775222d6d3aa512d92c1fb08a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172911889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:526284a2389ac9e707c4a4577358dabe9d354cb46bc48f9796ee6f3190b1b8ad`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:56 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:56 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB_VERSION=3.11.0
# Tue, 04 Aug 2026 01:40:02 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:40:03 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:40:03 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:40:03 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:40:03 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:40:03 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:40:03 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 04 Aug 2026 01:40:03 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:40:03 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:40:03 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eccf53263c65d49bf07fb2344153f805f8408db860b8dddf359bc31db67c7a33`  
		Last Modified: Tue, 04 Aug 2026 01:40:22 GMT  
		Size: 6.6 MB (6641746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb82346005d509127022c861e6fa164ff43c0b857cf835ae644b491387c9879`  
		Last Modified: Tue, 04 Aug 2026 01:40:21 GMT  
		Size: 3.6 KB (3650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54a01188b20667bb90adc1b5ccedf9b46ddfce8415ee27e786465d8ba30833c4`  
		Last Modified: Tue, 04 Aug 2026 01:40:25 GMT  
		Size: 137.4 MB (137379007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d19bdf586bdae26347d8db35c204523d9f86765f90690aebf01f3121c034ed`  
		Last Modified: Tue, 04 Aug 2026 01:40:21 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c9f3f29f3870f291b182565b329c2c2a0221b6be3c0f18ee721cf82c0ae9fa`  
		Last Modified: Tue, 04 Aug 2026 01:40:23 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:e14da930fbd32355d23696cc843aa3aac0b49628cd222523f9d77b7aff72940d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e66d8f8dbe4daf92f47a0abe26601bfeae061bf678462f7fc8f661b58a27d85`

```dockerfile
```

-	Layers:
	-	`sha256:baa1418806f59a33bfc7d5c2430df5f16cec1c925b7abea53cfffd42b85ed4d3`  
		Last Modified: Tue, 04 Aug 2026 01:40:22 GMT  
		Size: 2.3 MB (2295529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06776dd425ee48038cfbc1611cc2a7d1e10cea5769ed726225131c14f14e20b4`  
		Last Modified: Tue, 04 Aug 2026 01:40:21 GMT  
		Size: 18.0 KB (17970 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.10-core`

```console
$ docker pull influxdb@sha256:d38183963bee0e7cfbbaa024498a283acef58527be2fa7193d6656608bcafdd8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.10-core` - linux; amd64

```console
$ docker pull influxdb@sha256:a874af0d1a33770a43ac626a4196a9f93407433399ab4e04c931470acefc4a3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151948814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f1f00b043a72127215c521e7599e00ba14d3632dfa0bac97edb34075b651b2e`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:32 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:32 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:39:38 GMT
ENV INFLUXDB_VERSION=3.10.5
# Tue, 04 Aug 2026 01:39:38 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:39:38 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:39:38 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:39:38 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:39:38 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:39:38 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:39:38 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:39:38 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:39:38 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 04 Aug 2026 01:39:38 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:39:38 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:39:38 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:842798e57f656a6d58fe178be1bc94aed6e902292a8059f48496d18c0ae73f62`  
		Last Modified: Tue, 04 Aug 2026 01:39:57 GMT  
		Size: 9.0 MB (9033753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:620ce66bf9061919f5c272e466afb4cdb51bd994150190bfca03bb52b64fd1bc`  
		Last Modified: Tue, 04 Aug 2026 01:39:56 GMT  
		Size: 3.6 KB (3650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0c4f7372f396049f1e44a1500afa8f7b605b7e03188ab1dd39888746b0d4d07`  
		Last Modified: Tue, 04 Aug 2026 01:39:59 GMT  
		Size: 113.2 MB (113159635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:745d3ad5a5f939e8f108ce1227369abdd375a93571318208a10fd2da18551348`  
		Last Modified: Tue, 04 Aug 2026 01:39:57 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b2342aaa71b51ac9570fd5b94a33601a6fa41cfffd1f3a835ab6f862416c8a`  
		Last Modified: Tue, 04 Aug 2026 01:39:58 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.10-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:b15c69ef9ae5e5aa2c0339a03b271a4c3506fac3cc87bb0b703127929db76907
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf0bcd3ee2c78a88f9e74bec4d311fe7013150cbff394231c9cadcd96374cc26`

```dockerfile
```

-	Layers:
	-	`sha256:2afbc5af646196d67d9eec6162fdfcc91617cde1db0411b722d5561d13e92987`  
		Last Modified: Tue, 04 Aug 2026 01:39:57 GMT  
		Size: 2.3 MB (2293799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:031a20dab3ffa710408db971b981bdfd9561cf02d0c8b7775d39a4ed033b0654`  
		Last Modified: Tue, 04 Aug 2026 01:39:57 GMT  
		Size: 17.0 KB (17040 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.10-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:9505fd250e027ee95fbd1ae6ae82a2b898f26da930a27c93b2a02c38d7e02da9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.8 MB (140806892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2769d869a59b9d87690f9ef8f970e54c010ee624ca0201b9c04cb6f0c90619fb`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:19 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:20 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:39:25 GMT
ENV INFLUXDB_VERSION=3.10.5
# Tue, 04 Aug 2026 01:39:25 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:39:25 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:39:25 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:39:25 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:39:25 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:39:25 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:39:25 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:39:25 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:39:25 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 04 Aug 2026 01:39:25 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:39:25 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:39:25 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fdeec76caa2795989874a5b9f3c7709760d62eb7c0c7685bbd6ad6270504a6`  
		Last Modified: Tue, 04 Aug 2026 01:39:41 GMT  
		Size: 6.6 MB (6641737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e01453d5d0c0f6aae5d81625a886ab1b42304743c85c19d34d49fa66bdff9a6e`  
		Last Modified: Tue, 04 Aug 2026 01:39:41 GMT  
		Size: 3.6 KB (3649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba810b13e4fad096d323cb4e18de1f845e681ce91a2cd2e7cf7b68a03c00541`  
		Last Modified: Tue, 04 Aug 2026 01:39:43 GMT  
		Size: 105.3 MB (105274019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec5bd4b788d4b1946e6860be6ecaf04eb2d4646c73ab040d3589387f9751400c`  
		Last Modified: Tue, 04 Aug 2026 01:39:41 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fb4fd7bf78040600a3c2ea18b203c70afb6103dd3f431a2d4e722477e34023`  
		Last Modified: Tue, 04 Aug 2026 01:39:42 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.10-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:1e86dc2b0075b06c62c01073d8fee4f8da3d2695de7e292b1be6338e1628e560
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:386b2463d5881b85091dbfe84054c6211cae96bea99e3b91f7b5b020d21cf85b`

```dockerfile
```

-	Layers:
	-	`sha256:07b05236443f07f5c6da1e3bc89371f77df64a3240132abb80e699fc760191e6`  
		Last Modified: Tue, 04 Aug 2026 01:39:41 GMT  
		Size: 2.3 MB (2294857 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7665819f8f3fb420ddfdf8d8685fefb32d66cba75d2cdee0bca67a437ee4693b`  
		Last Modified: Tue, 04 Aug 2026 01:39:41 GMT  
		Size: 17.2 KB (17166 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.10-enterprise`

```console
$ docker pull influxdb@sha256:23a86a8c7293ce6068e14dfe5f97aa9005a25586c40c7290d5657d8147dc6768
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.10-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:6d35dff10a5b0a013bd826fcb520a854583b3fcdcb4231c986aca9a06dee79e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (167049780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b2568e08e4c26f89b12b5c7fd49f44fd4e9027efc9455d32ddfa6049f61caff`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:54 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:54 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:40:01 GMT
ENV INFLUXDB_VERSION=3.10.5
# Tue, 04 Aug 2026 01:40:01 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:40:01 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:40:01 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:40:01 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:40:01 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:40:01 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:40:01 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:40:01 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:40:01 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 04 Aug 2026 01:40:01 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:40:01 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:40:01 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d617c02a335a6f47adbf2635d4cdbf6589b00d56cc3d4346730379bbaa4669e9`  
		Last Modified: Tue, 04 Aug 2026 01:40:22 GMT  
		Size: 9.0 MB (9033731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9899745b1264cd8f78099b2a7e06285a83bb69556b8c0f332c948116a18d96da`  
		Last Modified: Tue, 04 Aug 2026 01:40:22 GMT  
		Size: 3.7 KB (3651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abc5b4a667fe0488e26c9a4f589c6fa7128cfbecfb695bd151f3bb4a9fff68a`  
		Last Modified: Tue, 04 Aug 2026 01:40:25 GMT  
		Size: 128.3 MB (128260618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1a38e7e9b2f7c0ad784a711a5d572c44cbe541c1263d1b7ac4f8dd819c7287`  
		Last Modified: Tue, 04 Aug 2026 01:40:22 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a307b8709bda63eb514dd576097bc8047d9f09dd4b11240bce360ecab6625990`  
		Last Modified: Tue, 04 Aug 2026 01:40:23 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.10-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:7ab4d98e6ba266eb46c7211982eaca8e9b7dcde8efa67551f222b1d0e931e081
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10e6156c5e56d5a6872cb4b41343cb39a1a537334f22ead128ec0601e15d06e9`

```dockerfile
```

-	Layers:
	-	`sha256:0849d304f72bd656cf30e6323a190d15f19f6b1bd26295da6a7449d77d6cdb65`  
		Last Modified: Tue, 04 Aug 2026 01:40:22 GMT  
		Size: 2.3 MB (2293823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7924cb8c77ea4456476505b526ba6abb077275a138208607171a450b0a1b59ae`  
		Last Modified: Tue, 04 Aug 2026 01:40:22 GMT  
		Size: 17.2 KB (17197 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.10-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:5d608126b8530610d1a59ea2ca81be0b9ca809dbc1bd8058de60fd60bddeab1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.6 MB (155622686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb03d55e4ab04533c2164aac41eee1be6a3f08aa0135efdb17c4df7f8d1a25df`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:29 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:29 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:39:35 GMT
ENV INFLUXDB_VERSION=3.10.5
# Tue, 04 Aug 2026 01:39:35 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:39:35 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:39:35 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:39:35 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:39:35 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:39:35 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:39:35 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:39:35 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:39:35 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 04 Aug 2026 01:39:35 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:39:35 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:39:35 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:459ad3cbadf80cb6d2b1f8c1a06ecdcbe79216509ee67ae12131fd35bb3c3e25`  
		Last Modified: Tue, 04 Aug 2026 01:39:53 GMT  
		Size: 6.6 MB (6641708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48715c3930d4fe30cc97345fd8e79000c1d92b9f855c4b256812755163c41136`  
		Last Modified: Tue, 04 Aug 2026 01:39:53 GMT  
		Size: 3.6 KB (3648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb82b7e833c386a8dbccd509d1f346383ddc1b94034e15b50be53a91b0fd389`  
		Last Modified: Tue, 04 Aug 2026 01:39:56 GMT  
		Size: 120.1 MB (120089846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c44317475c89d741e3452c87889cb6183d322f0bc38586e10104e7c2ec0e37c8`  
		Last Modified: Tue, 04 Aug 2026 01:39:53 GMT  
		Size: 518.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fae749384a5d457fbeb926a2789974aa4badeca7fa21ee4a7ef2437924710f2`  
		Last Modified: Tue, 04 Aug 2026 01:39:54 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.10-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:d0b5d2805f1977d90550573caf210af41d6c0a015541bdbf9ad95899133efbc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae3541c39811a470163a539429bd3f9325d3172a91565079ec22fa3c92ebeecd`

```dockerfile
```

-	Layers:
	-	`sha256:03b4350e85c36bd1c47d2f809442d196279400a50bb9d8cadcdf6e7aef4a663c`  
		Last Modified: Tue, 04 Aug 2026 01:39:53 GMT  
		Size: 2.3 MB (2294881 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:052ab7c1db14c65157782726d776ed0cd415366670e94dafd05e738e8fe53df0`  
		Last Modified: Tue, 04 Aug 2026 01:39:53 GMT  
		Size: 17.3 KB (17322 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.10.5-core`

```console
$ docker pull influxdb@sha256:d38183963bee0e7cfbbaa024498a283acef58527be2fa7193d6656608bcafdd8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.10.5-core` - linux; amd64

```console
$ docker pull influxdb@sha256:a874af0d1a33770a43ac626a4196a9f93407433399ab4e04c931470acefc4a3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151948814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f1f00b043a72127215c521e7599e00ba14d3632dfa0bac97edb34075b651b2e`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:32 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:32 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:39:38 GMT
ENV INFLUXDB_VERSION=3.10.5
# Tue, 04 Aug 2026 01:39:38 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:39:38 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:39:38 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:39:38 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:39:38 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:39:38 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:39:38 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:39:38 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:39:38 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 04 Aug 2026 01:39:38 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:39:38 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:39:38 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:842798e57f656a6d58fe178be1bc94aed6e902292a8059f48496d18c0ae73f62`  
		Last Modified: Tue, 04 Aug 2026 01:39:57 GMT  
		Size: 9.0 MB (9033753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:620ce66bf9061919f5c272e466afb4cdb51bd994150190bfca03bb52b64fd1bc`  
		Last Modified: Tue, 04 Aug 2026 01:39:56 GMT  
		Size: 3.6 KB (3650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0c4f7372f396049f1e44a1500afa8f7b605b7e03188ab1dd39888746b0d4d07`  
		Last Modified: Tue, 04 Aug 2026 01:39:59 GMT  
		Size: 113.2 MB (113159635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:745d3ad5a5f939e8f108ce1227369abdd375a93571318208a10fd2da18551348`  
		Last Modified: Tue, 04 Aug 2026 01:39:57 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b2342aaa71b51ac9570fd5b94a33601a6fa41cfffd1f3a835ab6f862416c8a`  
		Last Modified: Tue, 04 Aug 2026 01:39:58 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.10.5-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:b15c69ef9ae5e5aa2c0339a03b271a4c3506fac3cc87bb0b703127929db76907
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf0bcd3ee2c78a88f9e74bec4d311fe7013150cbff394231c9cadcd96374cc26`

```dockerfile
```

-	Layers:
	-	`sha256:2afbc5af646196d67d9eec6162fdfcc91617cde1db0411b722d5561d13e92987`  
		Last Modified: Tue, 04 Aug 2026 01:39:57 GMT  
		Size: 2.3 MB (2293799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:031a20dab3ffa710408db971b981bdfd9561cf02d0c8b7775d39a4ed033b0654`  
		Last Modified: Tue, 04 Aug 2026 01:39:57 GMT  
		Size: 17.0 KB (17040 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.10.5-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:9505fd250e027ee95fbd1ae6ae82a2b898f26da930a27c93b2a02c38d7e02da9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.8 MB (140806892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2769d869a59b9d87690f9ef8f970e54c010ee624ca0201b9c04cb6f0c90619fb`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:19 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:20 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:39:25 GMT
ENV INFLUXDB_VERSION=3.10.5
# Tue, 04 Aug 2026 01:39:25 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:39:25 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:39:25 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:39:25 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:39:25 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:39:25 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:39:25 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:39:25 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:39:25 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 04 Aug 2026 01:39:25 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:39:25 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:39:25 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fdeec76caa2795989874a5b9f3c7709760d62eb7c0c7685bbd6ad6270504a6`  
		Last Modified: Tue, 04 Aug 2026 01:39:41 GMT  
		Size: 6.6 MB (6641737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e01453d5d0c0f6aae5d81625a886ab1b42304743c85c19d34d49fa66bdff9a6e`  
		Last Modified: Tue, 04 Aug 2026 01:39:41 GMT  
		Size: 3.6 KB (3649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba810b13e4fad096d323cb4e18de1f845e681ce91a2cd2e7cf7b68a03c00541`  
		Last Modified: Tue, 04 Aug 2026 01:39:43 GMT  
		Size: 105.3 MB (105274019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec5bd4b788d4b1946e6860be6ecaf04eb2d4646c73ab040d3589387f9751400c`  
		Last Modified: Tue, 04 Aug 2026 01:39:41 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fb4fd7bf78040600a3c2ea18b203c70afb6103dd3f431a2d4e722477e34023`  
		Last Modified: Tue, 04 Aug 2026 01:39:42 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.10.5-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:1e86dc2b0075b06c62c01073d8fee4f8da3d2695de7e292b1be6338e1628e560
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:386b2463d5881b85091dbfe84054c6211cae96bea99e3b91f7b5b020d21cf85b`

```dockerfile
```

-	Layers:
	-	`sha256:07b05236443f07f5c6da1e3bc89371f77df64a3240132abb80e699fc760191e6`  
		Last Modified: Tue, 04 Aug 2026 01:39:41 GMT  
		Size: 2.3 MB (2294857 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7665819f8f3fb420ddfdf8d8685fefb32d66cba75d2cdee0bca67a437ee4693b`  
		Last Modified: Tue, 04 Aug 2026 01:39:41 GMT  
		Size: 17.2 KB (17166 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.10.5-enterprise`

```console
$ docker pull influxdb@sha256:23a86a8c7293ce6068e14dfe5f97aa9005a25586c40c7290d5657d8147dc6768
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.10.5-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:6d35dff10a5b0a013bd826fcb520a854583b3fcdcb4231c986aca9a06dee79e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (167049780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b2568e08e4c26f89b12b5c7fd49f44fd4e9027efc9455d32ddfa6049f61caff`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:54 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:54 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:40:01 GMT
ENV INFLUXDB_VERSION=3.10.5
# Tue, 04 Aug 2026 01:40:01 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:40:01 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:40:01 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:40:01 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:40:01 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:40:01 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:40:01 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:40:01 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:40:01 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 04 Aug 2026 01:40:01 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:40:01 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:40:01 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d617c02a335a6f47adbf2635d4cdbf6589b00d56cc3d4346730379bbaa4669e9`  
		Last Modified: Tue, 04 Aug 2026 01:40:22 GMT  
		Size: 9.0 MB (9033731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9899745b1264cd8f78099b2a7e06285a83bb69556b8c0f332c948116a18d96da`  
		Last Modified: Tue, 04 Aug 2026 01:40:22 GMT  
		Size: 3.7 KB (3651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abc5b4a667fe0488e26c9a4f589c6fa7128cfbecfb695bd151f3bb4a9fff68a`  
		Last Modified: Tue, 04 Aug 2026 01:40:25 GMT  
		Size: 128.3 MB (128260618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1a38e7e9b2f7c0ad784a711a5d572c44cbe541c1263d1b7ac4f8dd819c7287`  
		Last Modified: Tue, 04 Aug 2026 01:40:22 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a307b8709bda63eb514dd576097bc8047d9f09dd4b11240bce360ecab6625990`  
		Last Modified: Tue, 04 Aug 2026 01:40:23 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.10.5-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:7ab4d98e6ba266eb46c7211982eaca8e9b7dcde8efa67551f222b1d0e931e081
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10e6156c5e56d5a6872cb4b41343cb39a1a537334f22ead128ec0601e15d06e9`

```dockerfile
```

-	Layers:
	-	`sha256:0849d304f72bd656cf30e6323a190d15f19f6b1bd26295da6a7449d77d6cdb65`  
		Last Modified: Tue, 04 Aug 2026 01:40:22 GMT  
		Size: 2.3 MB (2293823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7924cb8c77ea4456476505b526ba6abb077275a138208607171a450b0a1b59ae`  
		Last Modified: Tue, 04 Aug 2026 01:40:22 GMT  
		Size: 17.2 KB (17197 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.10.5-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:5d608126b8530610d1a59ea2ca81be0b9ca809dbc1bd8058de60fd60bddeab1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.6 MB (155622686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb03d55e4ab04533c2164aac41eee1be6a3f08aa0135efdb17c4df7f8d1a25df`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:29 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:29 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:39:35 GMT
ENV INFLUXDB_VERSION=3.10.5
# Tue, 04 Aug 2026 01:39:35 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:39:35 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:39:35 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:39:35 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:39:35 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:39:35 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:39:35 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:39:35 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:39:35 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 04 Aug 2026 01:39:35 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:39:35 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:39:35 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:459ad3cbadf80cb6d2b1f8c1a06ecdcbe79216509ee67ae12131fd35bb3c3e25`  
		Last Modified: Tue, 04 Aug 2026 01:39:53 GMT  
		Size: 6.6 MB (6641708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48715c3930d4fe30cc97345fd8e79000c1d92b9f855c4b256812755163c41136`  
		Last Modified: Tue, 04 Aug 2026 01:39:53 GMT  
		Size: 3.6 KB (3648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb82b7e833c386a8dbccd509d1f346383ddc1b94034e15b50be53a91b0fd389`  
		Last Modified: Tue, 04 Aug 2026 01:39:56 GMT  
		Size: 120.1 MB (120089846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c44317475c89d741e3452c87889cb6183d322f0bc38586e10104e7c2ec0e37c8`  
		Last Modified: Tue, 04 Aug 2026 01:39:53 GMT  
		Size: 518.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fae749384a5d457fbeb926a2789974aa4badeca7fa21ee4a7ef2437924710f2`  
		Last Modified: Tue, 04 Aug 2026 01:39:54 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.10.5-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:d0b5d2805f1977d90550573caf210af41d6c0a015541bdbf9ad95899133efbc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae3541c39811a470163a539429bd3f9325d3172a91565079ec22fa3c92ebeecd`

```dockerfile
```

-	Layers:
	-	`sha256:03b4350e85c36bd1c47d2f809442d196279400a50bb9d8cadcdf6e7aef4a663c`  
		Last Modified: Tue, 04 Aug 2026 01:39:53 GMT  
		Size: 2.3 MB (2294881 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:052ab7c1db14c65157782726d776ed0cd415366670e94dafd05e738e8fe53df0`  
		Last Modified: Tue, 04 Aug 2026 01:39:53 GMT  
		Size: 17.3 KB (17322 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.11-core`

```console
$ docker pull influxdb@sha256:06ae73b2e869bf78422bdbbc084ab74347102e0f9e84bfd9245cb1c85b379119
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.11-core` - linux; amd64

```console
$ docker pull influxdb@sha256:497435140652177c4da54c94839c9f665aef804bf80d326ed806b47b6f133748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151073224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d080332b6f6b76acae310d6f97fcb2e8085753f8146bd2c303b4498b94ca61c2`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:48 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:49 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:39:54 GMT
ENV INFLUXDB_VERSION=3.11.0
# Tue, 04 Aug 2026 01:39:54 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:39:54 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:39:54 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:39:54 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:39:54 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:39:54 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:39:54 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:39:54 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:39:54 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 04 Aug 2026 01:39:54 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:39:54 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:39:54 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bf07841b7cf27462015e3ecc42223fe89263c511eda21a50636bd7619c4aed`  
		Last Modified: Tue, 04 Aug 2026 01:40:12 GMT  
		Size: 9.0 MB (9033745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09452cb5bf63eb175d0b81ba0ba3ac5990f8c81b7e16a5e22362d78755aedcaf`  
		Last Modified: Tue, 04 Aug 2026 01:40:12 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f022720a44a5e430a65ad79ba4abc8220b23c705d95910cc1d84adb1456833a`  
		Last Modified: Tue, 04 Aug 2026 01:40:15 GMT  
		Size: 112.3 MB (112284047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5e0b146a5310e555a4fb674a58b4ba482cf6cdddf54c6d0fc7bd5decd1e510c`  
		Last Modified: Tue, 04 Aug 2026 01:40:12 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fc36bbb2b24cbc998c0f79e0cb8b87cba72fc9bc0c0abb38f13e0efc8536197`  
		Last Modified: Tue, 04 Aug 2026 01:40:13 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:52e51940360b914a486396d19ae345327cc8b7a0900a3d467f9dbd9130d566f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd29557d4522dd2eee0ce5c25cfef71c208b2301c39d39fd0dd8c50771f5483b`

```dockerfile
```

-	Layers:
	-	`sha256:8789f6b667bf5e66da55e64486d41eb046e7fe4d5d669ad94173b287949922dc`  
		Last Modified: Tue, 04 Aug 2026 01:40:12 GMT  
		Size: 2.3 MB (2294399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0947e98d45acef801810113b62e0e25fd9b200bc378338fde770e4dd8f09c1af`  
		Last Modified: Tue, 04 Aug 2026 01:40:12 GMT  
		Size: 17.6 KB (17641 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.11-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:ad5cefa012aaca107267256c659e2f58af50d827832141f42fc0380b3e686a3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (139954504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:750fe1a5b3eeec153425879909f5593302acbec3f4b6afb4e57e9786530fdef1`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:52 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:52 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:39:57 GMT
ENV INFLUXDB_VERSION=3.11.0
# Tue, 04 Aug 2026 01:39:57 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:39:57 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:39:57 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:39:58 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:39:58 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:39:58 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:39:58 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:39:58 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:39:58 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 04 Aug 2026 01:39:58 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:39:58 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:39:58 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f164738877fe86a67959dff0a6e5151efa49b25afbf8d1d2ddb5d4b96afec85`  
		Last Modified: Tue, 04 Aug 2026 01:40:14 GMT  
		Size: 6.6 MB (6641726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f16d51f7fb29c3bf69c200ad79b8f6c4be901c79527465d68b127f23cd6bac1d`  
		Last Modified: Tue, 04 Aug 2026 01:40:13 GMT  
		Size: 3.6 KB (3649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd377b2cc683c0b6ca66ab89e45ed4adfa583a05207545d2c24d06169d98a08e`  
		Last Modified: Tue, 04 Aug 2026 01:40:17 GMT  
		Size: 104.4 MB (104421643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91418578df86b6873e8f3a4e44e41777c691078a1eec413b50a6302b727314cc`  
		Last Modified: Tue, 04 Aug 2026 01:40:14 GMT  
		Size: 518.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0201f9571723557c0a003f121a637f278eae72af7fb69e4f73d479087e8aad`  
		Last Modified: Tue, 04 Aug 2026 01:40:15 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:214fd2218622a074d59d131f7836b0b6fa22050c17ca5b6711362299a7023fd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f2ffafcde9650baa28c15f4203a0795a24d7876e36b331759dee876f077d0b`

```dockerfile
```

-	Layers:
	-	`sha256:22f6ea66537ffc1f5a547e93ed85791cff32489c345174ae94f810df8510b1e3`  
		Last Modified: Tue, 04 Aug 2026 01:40:14 GMT  
		Size: 2.3 MB (2295481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faffc7a199ab765bb7998826ada62721be1b49f8f560ff8168b00bd766387df0`  
		Last Modified: Tue, 04 Aug 2026 01:40:13 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.11-enterprise`

```console
$ docker pull influxdb@sha256:89b43bbba5973ff22723c72f42195d8523cbd7a00f8509381f01c5832d01c712
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.11-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:5a607eb9bf3184aa3a810be45699e8328ae062014b2f68b87c9e6405511b71d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.9 MB (184854234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e211981a212e48d3d1f5e201630bcad45b37019967ce3ec56da97f2e42cc7bd`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:55 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:55 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB_VERSION=3.11.0
# Tue, 04 Aug 2026 01:40:02 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:40:02 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 04 Aug 2026 01:40:02 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:40:02 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:40:02 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae6e94cf64f505b5e22208a4a6eeb5725fc754abc301d03bfe9365ab1a897e0b`  
		Last Modified: Tue, 04 Aug 2026 01:40:24 GMT  
		Size: 9.0 MB (9033728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d44800e7887223208c45b7b938216ceaa3b8cd2b59b0b811026427813fe870`  
		Last Modified: Tue, 04 Aug 2026 01:40:24 GMT  
		Size: 3.6 KB (3650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11462492c236a7cc603179e4b3aaffa19220c8ac4f84c774a66ad4948ab39568`  
		Last Modified: Tue, 04 Aug 2026 01:40:27 GMT  
		Size: 146.1 MB (146065078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c59be6e3b71269663670504ef8b89d784706475916ff423ba9c27ec62bc774`  
		Last Modified: Tue, 04 Aug 2026 01:40:24 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fcebc6bdbffd854af187a94c0897a2db8e33fae5b1d473a4cc11dac8800cc10`  
		Last Modified: Tue, 04 Aug 2026 01:40:25 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:a37f33d57d40a94e0af7cb77ef8c596b5bdcce018f71d12e750a3e82a037d8e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa94d76b33e274253bf95dc5be9c598006f0aa34c1e30b28e942922fc52e9e4d`

```dockerfile
```

-	Layers:
	-	`sha256:104b19f8e66fe96d094971b2045bb1975d1c7dd5b8c3b20ed3067b5abba525a3`  
		Last Modified: Tue, 04 Aug 2026 01:40:24 GMT  
		Size: 2.3 MB (2294447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de79eb1af341d21663152af472bc93244fa7729f40dbdafab3452e77e0d27c87`  
		Last Modified: Tue, 04 Aug 2026 01:40:23 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.11-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:089b5e5b4ec0a9c6e7c3f86117a14ad80b780cd775222d6d3aa512d92c1fb08a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172911889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:526284a2389ac9e707c4a4577358dabe9d354cb46bc48f9796ee6f3190b1b8ad`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:56 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:56 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB_VERSION=3.11.0
# Tue, 04 Aug 2026 01:40:02 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:40:03 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:40:03 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:40:03 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:40:03 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:40:03 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:40:03 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 04 Aug 2026 01:40:03 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:40:03 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:40:03 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eccf53263c65d49bf07fb2344153f805f8408db860b8dddf359bc31db67c7a33`  
		Last Modified: Tue, 04 Aug 2026 01:40:22 GMT  
		Size: 6.6 MB (6641746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb82346005d509127022c861e6fa164ff43c0b857cf835ae644b491387c9879`  
		Last Modified: Tue, 04 Aug 2026 01:40:21 GMT  
		Size: 3.6 KB (3650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54a01188b20667bb90adc1b5ccedf9b46ddfce8415ee27e786465d8ba30833c4`  
		Last Modified: Tue, 04 Aug 2026 01:40:25 GMT  
		Size: 137.4 MB (137379007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d19bdf586bdae26347d8db35c204523d9f86765f90690aebf01f3121c034ed`  
		Last Modified: Tue, 04 Aug 2026 01:40:21 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c9f3f29f3870f291b182565b329c2c2a0221b6be3c0f18ee721cf82c0ae9fa`  
		Last Modified: Tue, 04 Aug 2026 01:40:23 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:e14da930fbd32355d23696cc843aa3aac0b49628cd222523f9d77b7aff72940d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e66d8f8dbe4daf92f47a0abe26601bfeae061bf678462f7fc8f661b58a27d85`

```dockerfile
```

-	Layers:
	-	`sha256:baa1418806f59a33bfc7d5c2430df5f16cec1c925b7abea53cfffd42b85ed4d3`  
		Last Modified: Tue, 04 Aug 2026 01:40:22 GMT  
		Size: 2.3 MB (2295529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06776dd425ee48038cfbc1611cc2a7d1e10cea5769ed726225131c14f14e20b4`  
		Last Modified: Tue, 04 Aug 2026 01:40:21 GMT  
		Size: 18.0 KB (17970 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.11.0-core`

```console
$ docker pull influxdb@sha256:06ae73b2e869bf78422bdbbc084ab74347102e0f9e84bfd9245cb1c85b379119
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.11.0-core` - linux; amd64

```console
$ docker pull influxdb@sha256:497435140652177c4da54c94839c9f665aef804bf80d326ed806b47b6f133748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151073224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d080332b6f6b76acae310d6f97fcb2e8085753f8146bd2c303b4498b94ca61c2`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:48 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:49 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:39:54 GMT
ENV INFLUXDB_VERSION=3.11.0
# Tue, 04 Aug 2026 01:39:54 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:39:54 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:39:54 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:39:54 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:39:54 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:39:54 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:39:54 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:39:54 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:39:54 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 04 Aug 2026 01:39:54 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:39:54 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:39:54 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bf07841b7cf27462015e3ecc42223fe89263c511eda21a50636bd7619c4aed`  
		Last Modified: Tue, 04 Aug 2026 01:40:12 GMT  
		Size: 9.0 MB (9033745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09452cb5bf63eb175d0b81ba0ba3ac5990f8c81b7e16a5e22362d78755aedcaf`  
		Last Modified: Tue, 04 Aug 2026 01:40:12 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f022720a44a5e430a65ad79ba4abc8220b23c705d95910cc1d84adb1456833a`  
		Last Modified: Tue, 04 Aug 2026 01:40:15 GMT  
		Size: 112.3 MB (112284047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5e0b146a5310e555a4fb674a58b4ba482cf6cdddf54c6d0fc7bd5decd1e510c`  
		Last Modified: Tue, 04 Aug 2026 01:40:12 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fc36bbb2b24cbc998c0f79e0cb8b87cba72fc9bc0c0abb38f13e0efc8536197`  
		Last Modified: Tue, 04 Aug 2026 01:40:13 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11.0-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:52e51940360b914a486396d19ae345327cc8b7a0900a3d467f9dbd9130d566f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd29557d4522dd2eee0ce5c25cfef71c208b2301c39d39fd0dd8c50771f5483b`

```dockerfile
```

-	Layers:
	-	`sha256:8789f6b667bf5e66da55e64486d41eb046e7fe4d5d669ad94173b287949922dc`  
		Last Modified: Tue, 04 Aug 2026 01:40:12 GMT  
		Size: 2.3 MB (2294399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0947e98d45acef801810113b62e0e25fd9b200bc378338fde770e4dd8f09c1af`  
		Last Modified: Tue, 04 Aug 2026 01:40:12 GMT  
		Size: 17.6 KB (17641 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.11.0-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:ad5cefa012aaca107267256c659e2f58af50d827832141f42fc0380b3e686a3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (139954504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:750fe1a5b3eeec153425879909f5593302acbec3f4b6afb4e57e9786530fdef1`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:52 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:52 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:39:57 GMT
ENV INFLUXDB_VERSION=3.11.0
# Tue, 04 Aug 2026 01:39:57 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:39:57 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:39:57 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:39:58 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:39:58 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:39:58 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:39:58 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:39:58 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:39:58 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 04 Aug 2026 01:39:58 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:39:58 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:39:58 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f164738877fe86a67959dff0a6e5151efa49b25afbf8d1d2ddb5d4b96afec85`  
		Last Modified: Tue, 04 Aug 2026 01:40:14 GMT  
		Size: 6.6 MB (6641726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f16d51f7fb29c3bf69c200ad79b8f6c4be901c79527465d68b127f23cd6bac1d`  
		Last Modified: Tue, 04 Aug 2026 01:40:13 GMT  
		Size: 3.6 KB (3649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd377b2cc683c0b6ca66ab89e45ed4adfa583a05207545d2c24d06169d98a08e`  
		Last Modified: Tue, 04 Aug 2026 01:40:17 GMT  
		Size: 104.4 MB (104421643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91418578df86b6873e8f3a4e44e41777c691078a1eec413b50a6302b727314cc`  
		Last Modified: Tue, 04 Aug 2026 01:40:14 GMT  
		Size: 518.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0201f9571723557c0a003f121a637f278eae72af7fb69e4f73d479087e8aad`  
		Last Modified: Tue, 04 Aug 2026 01:40:15 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11.0-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:214fd2218622a074d59d131f7836b0b6fa22050c17ca5b6711362299a7023fd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f2ffafcde9650baa28c15f4203a0795a24d7876e36b331759dee876f077d0b`

```dockerfile
```

-	Layers:
	-	`sha256:22f6ea66537ffc1f5a547e93ed85791cff32489c345174ae94f810df8510b1e3`  
		Last Modified: Tue, 04 Aug 2026 01:40:14 GMT  
		Size: 2.3 MB (2295481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faffc7a199ab765bb7998826ada62721be1b49f8f560ff8168b00bd766387df0`  
		Last Modified: Tue, 04 Aug 2026 01:40:13 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.11.0-enterprise`

```console
$ docker pull influxdb@sha256:89b43bbba5973ff22723c72f42195d8523cbd7a00f8509381f01c5832d01c712
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.11.0-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:5a607eb9bf3184aa3a810be45699e8328ae062014b2f68b87c9e6405511b71d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.9 MB (184854234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e211981a212e48d3d1f5e201630bcad45b37019967ce3ec56da97f2e42cc7bd`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:55 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:55 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB_VERSION=3.11.0
# Tue, 04 Aug 2026 01:40:02 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:40:02 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 04 Aug 2026 01:40:02 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:40:02 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:40:02 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae6e94cf64f505b5e22208a4a6eeb5725fc754abc301d03bfe9365ab1a897e0b`  
		Last Modified: Tue, 04 Aug 2026 01:40:24 GMT  
		Size: 9.0 MB (9033728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d44800e7887223208c45b7b938216ceaa3b8cd2b59b0b811026427813fe870`  
		Last Modified: Tue, 04 Aug 2026 01:40:24 GMT  
		Size: 3.6 KB (3650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11462492c236a7cc603179e4b3aaffa19220c8ac4f84c774a66ad4948ab39568`  
		Last Modified: Tue, 04 Aug 2026 01:40:27 GMT  
		Size: 146.1 MB (146065078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c59be6e3b71269663670504ef8b89d784706475916ff423ba9c27ec62bc774`  
		Last Modified: Tue, 04 Aug 2026 01:40:24 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fcebc6bdbffd854af187a94c0897a2db8e33fae5b1d473a4cc11dac8800cc10`  
		Last Modified: Tue, 04 Aug 2026 01:40:25 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11.0-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:a37f33d57d40a94e0af7cb77ef8c596b5bdcce018f71d12e750a3e82a037d8e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa94d76b33e274253bf95dc5be9c598006f0aa34c1e30b28e942922fc52e9e4d`

```dockerfile
```

-	Layers:
	-	`sha256:104b19f8e66fe96d094971b2045bb1975d1c7dd5b8c3b20ed3067b5abba525a3`  
		Last Modified: Tue, 04 Aug 2026 01:40:24 GMT  
		Size: 2.3 MB (2294447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de79eb1af341d21663152af472bc93244fa7729f40dbdafab3452e77e0d27c87`  
		Last Modified: Tue, 04 Aug 2026 01:40:23 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.11.0-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:089b5e5b4ec0a9c6e7c3f86117a14ad80b780cd775222d6d3aa512d92c1fb08a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172911889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:526284a2389ac9e707c4a4577358dabe9d354cb46bc48f9796ee6f3190b1b8ad`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:56 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:56 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB_VERSION=3.11.0
# Tue, 04 Aug 2026 01:40:02 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:40:03 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:40:03 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:40:03 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:40:03 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:40:03 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:40:03 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 04 Aug 2026 01:40:03 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:40:03 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:40:03 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eccf53263c65d49bf07fb2344153f805f8408db860b8dddf359bc31db67c7a33`  
		Last Modified: Tue, 04 Aug 2026 01:40:22 GMT  
		Size: 6.6 MB (6641746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb82346005d509127022c861e6fa164ff43c0b857cf835ae644b491387c9879`  
		Last Modified: Tue, 04 Aug 2026 01:40:21 GMT  
		Size: 3.6 KB (3650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54a01188b20667bb90adc1b5ccedf9b46ddfce8415ee27e786465d8ba30833c4`  
		Last Modified: Tue, 04 Aug 2026 01:40:25 GMT  
		Size: 137.4 MB (137379007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d19bdf586bdae26347d8db35c204523d9f86765f90690aebf01f3121c034ed`  
		Last Modified: Tue, 04 Aug 2026 01:40:21 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c9f3f29f3870f291b182565b329c2c2a0221b6be3c0f18ee721cf82c0ae9fa`  
		Last Modified: Tue, 04 Aug 2026 01:40:23 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11.0-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:e14da930fbd32355d23696cc843aa3aac0b49628cd222523f9d77b7aff72940d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e66d8f8dbe4daf92f47a0abe26601bfeae061bf678462f7fc8f661b58a27d85`

```dockerfile
```

-	Layers:
	-	`sha256:baa1418806f59a33bfc7d5c2430df5f16cec1c925b7abea53cfffd42b85ed4d3`  
		Last Modified: Tue, 04 Aug 2026 01:40:22 GMT  
		Size: 2.3 MB (2295529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06776dd425ee48038cfbc1611cc2a7d1e10cea5769ed726225131c14f14e20b4`  
		Last Modified: Tue, 04 Aug 2026 01:40:21 GMT  
		Size: 18.0 KB (17970 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.9-core`

```console
$ docker pull influxdb@sha256:c24922bb2b6a3520e2bef2294b203f8ef71e7f5f88d2f917ea37bb8d34ca36df
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.9-core` - linux; amd64

```console
$ docker pull influxdb@sha256:b9f6520262a8813004c9b4b335ac6af254553648227c54247e42d4905ddcada8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151101322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d5081906383a90031d073be50f9168e903a0eeefa59bd2f4b4769762f278409`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:25 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:25 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:39:30 GMT
ENV INFLUXDB_VERSION=3.9.11
# Tue, 04 Aug 2026 01:39:30 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:39:30 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:39:30 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:39:31 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:39:31 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:39:31 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:39:31 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:39:31 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:39:31 GMT
ENV LOG_FILTER=info
# Tue, 04 Aug 2026 01:39:31 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:39:31 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:39:31 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5971341e1763a0231d9165ca3bb2c32af4499997b89ffecdd5abfd1dac1562dc`  
		Last Modified: Tue, 04 Aug 2026 01:39:48 GMT  
		Size: 9.0 MB (9033725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be9451fe3b8e961bd1a38bf542f21f863dbf5a27267d4e12d3562d488d5fd148`  
		Last Modified: Tue, 04 Aug 2026 01:39:48 GMT  
		Size: 3.6 KB (3650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4dbe2d427de6b685f38663a0c1ef845ac89da990cb82ccdbba46a7a8e59e88f`  
		Last Modified: Tue, 04 Aug 2026 01:39:51 GMT  
		Size: 112.3 MB (112312170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5cc46b854a3fd4903bf5b6da9b576c01c6427c32f95cba65056e3945a96fd3`  
		Last Modified: Tue, 04 Aug 2026 01:39:48 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ac9a13ace96bd6c7a58d510e28fef48d37f89af461805c879c7429b6c88b5b`  
		Last Modified: Tue, 04 Aug 2026 01:39:49 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.9-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:6b9f4623c1c6891c3ce6605aa92fd71249fa090cfecb3b51c1438cd394bb96f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90ed50eb0d00f3c4045affe4fd6e62357f13252a59fe34ce3462f92534b4c21f`

```dockerfile
```

-	Layers:
	-	`sha256:5ba0116c57f97014ff4534aebd25d8a109982ac28279809b91999d81e6a59bd2`  
		Last Modified: Tue, 04 Aug 2026 01:39:48 GMT  
		Size: 2.3 MB (2293797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:009d0fcbcd56dbcd4ab8e64b56aaf9f14b0c815f89fc0bbb4399ee1cc754f2ce`  
		Last Modified: Tue, 04 Aug 2026 01:39:48 GMT  
		Size: 17.0 KB (17024 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.9-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:a540ec8e699d134789f3594eeaa9357634bd1202fd5d4e7bdd54cd9e86d2b4c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.9 MB (139947219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fab6a53b7f099a7bb48c6341080b45bb607c9266e48880c2b1d7518a2c9799b`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:15 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:15 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:39:21 GMT
ENV INFLUXDB_VERSION=3.9.11
# Tue, 04 Aug 2026 01:39:21 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:39:21 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:39:21 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:39:21 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:39:21 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:39:21 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:39:21 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:39:21 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:39:21 GMT
ENV LOG_FILTER=info
# Tue, 04 Aug 2026 01:39:21 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:39:21 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:39:21 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da9ecb9d00749268e4ee7ea847d1f112354c4ea0347a78e21e5872908ada327`  
		Last Modified: Tue, 04 Aug 2026 01:39:37 GMT  
		Size: 6.6 MB (6641714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb196f5f6db209b77ea445571a656dd343f9112493dcc5a741970109b48917f`  
		Last Modified: Tue, 04 Aug 2026 01:39:36 GMT  
		Size: 3.6 KB (3648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b8b6fdb24f602c316bf36930721d8f2127c4a81dd346c92bd69712cc1ab5a0`  
		Last Modified: Tue, 04 Aug 2026 01:39:39 GMT  
		Size: 104.4 MB (104414369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e42293e9dc03dd34b0462bfcdb0d97f828801198411f9083bfdcf888ca0c6b9`  
		Last Modified: Tue, 04 Aug 2026 01:39:36 GMT  
		Size: 522.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde6b99e4bb68a1b5cfabb1d95d4630a13bb197204640a55fce168eb00fbbe3a`  
		Last Modified: Tue, 04 Aug 2026 01:39:37 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.9-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:d8464bc2e4aa7c4e938523ec64da657075bad6efcf055f9757f594b953fbb198
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8bb74bb698dace64d775380ba4094ac11fed37932541beaa0150fd1f1b15226`

```dockerfile
```

-	Layers:
	-	`sha256:2f918011f426cf883888d0d33a75c5a5570b247aeabf6df7d8b445bc75998196`  
		Last Modified: Tue, 04 Aug 2026 01:39:36 GMT  
		Size: 2.3 MB (2294855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bbd18c23f6cf0228edd5adf1578bcdec390065dcb676289149bf62c8309c706c`  
		Last Modified: Tue, 04 Aug 2026 01:39:36 GMT  
		Size: 17.1 KB (17149 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.9-enterprise`

```console
$ docker pull influxdb@sha256:5e65ef5a68f660f7cebf108700feab8bcbfd86d949c6d2f9105dbeaca587ede4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.9-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:9a500c7f5835baa19e3ea71fb3e3ad63739f5f6826015084074df0cacb04734c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.9 MB (161852659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90149bf2eeba6dae78141df92ae737db4eb17c884022b63dee94f275d77203a9`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:25 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:25 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:39:33 GMT
ENV INFLUXDB_VERSION=3.9.11
# Tue, 04 Aug 2026 01:39:33 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:39:33 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:39:33 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:39:33 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:39:33 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:39:33 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:39:33 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:39:33 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:39:33 GMT
ENV LOG_FILTER=info
# Tue, 04 Aug 2026 01:39:33 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:39:33 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:39:33 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:542dfa88e912c0c9abc5c5b464a0b118723736f969379e429b31694c26844a46`  
		Last Modified: Tue, 04 Aug 2026 01:39:53 GMT  
		Size: 9.0 MB (9033718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be9451fe3b8e961bd1a38bf542f21f863dbf5a27267d4e12d3562d488d5fd148`  
		Last Modified: Tue, 04 Aug 2026 01:39:48 GMT  
		Size: 3.6 KB (3650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c745adaa818660d88eb080b9894e1876b846b8d33834db0e1b9d625f9c3e7219`  
		Last Modified: Tue, 04 Aug 2026 01:39:55 GMT  
		Size: 123.1 MB (123063513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b498fbfd507c58c0f5003a3b0be9e43d3a308f3fd8b4ae891471de7111598ce5`  
		Last Modified: Tue, 04 Aug 2026 01:39:53 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02a7b3a1ebc43050810980edb0cc03039c874ea10d513202e473508cbd80b6d`  
		Last Modified: Tue, 04 Aug 2026 01:39:53 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.9-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:bf5be1f1ee72d5ccef6ac2a335451e5f4b683c5b9f6893f62706a1e1f71dbdba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384a7deafbbdf6dcfdf00e23bf4929df0e953abb22fb65e16ab3db4921c3cc5c`

```dockerfile
```

-	Layers:
	-	`sha256:c7b2beea5a92592dc6d5a55e40d8eb7b064a04ba7a147ec5cedcbdd75ec1b5f8`  
		Last Modified: Tue, 04 Aug 2026 01:39:53 GMT  
		Size: 2.3 MB (2293821 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f693aa3993e06ba5d15768042097877ad35ed3792800c31e3c158d2145c447f0`  
		Last Modified: Tue, 04 Aug 2026 01:39:52 GMT  
		Size: 17.2 KB (17180 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.9-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:750e642971ad8403550a370ba747de6bf6dfe41ad8b077e4c7f362fad6791b4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150542000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4348e3a450673dd4e7e37520fd848cf5ceee56f4035434de31f357d43efe68e3`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:18 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:18 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:39:24 GMT
ENV INFLUXDB_VERSION=3.9.11
# Tue, 04 Aug 2026 01:39:24 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:39:24 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:39:24 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:39:24 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:39:24 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:39:24 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:39:24 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:39:24 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:39:24 GMT
ENV LOG_FILTER=info
# Tue, 04 Aug 2026 01:39:24 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:39:24 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:39:24 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dceb3b6de3e3ea5c4e59d5ff8a9d5582fae5e23c744f1d65eb358dd358776afc`  
		Last Modified: Tue, 04 Aug 2026 01:39:41 GMT  
		Size: 6.6 MB (6641672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a8a275eb4066810a24b1db32eb14f72265da1db9b32b5bcc01c7e35bb96d77f`  
		Last Modified: Tue, 04 Aug 2026 01:39:41 GMT  
		Size: 3.6 KB (3646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96ee4b9fa8c0a8e5c33ee3139dfeccec778af7d5b952d30f06baff0c8645f113`  
		Last Modified: Tue, 04 Aug 2026 01:39:44 GMT  
		Size: 115.0 MB (115009195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c19123fa8d0fb3f7f489f991246a7b5d5f46a33a1bb12e92aad8f3c11aaa37b`  
		Last Modified: Tue, 04 Aug 2026 01:39:41 GMT  
		Size: 522.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4986b32a8066c0ca9f080d4aeffc95f4ae674206e268500fc4ccc123b32e1427`  
		Last Modified: Tue, 04 Aug 2026 01:39:42 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.9-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:adcb5161600df701ca1c0338fb68d1fcb9b355bdd5995786adabc22173e7cbc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f661747d1d06a4e493c0288051eaebe901082e69ee08d3c23152589198b9e026`

```dockerfile
```

-	Layers:
	-	`sha256:80e042b755cf507d140a6a7e583c81141d2d509df120806d381c259180433689`  
		Last Modified: Tue, 04 Aug 2026 01:39:41 GMT  
		Size: 2.3 MB (2294879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52d0a95284d9e759ccdef70ff8dc4225b066a8c8ab2d57a26ddeefb12ac9a520`  
		Last Modified: Tue, 04 Aug 2026 01:39:41 GMT  
		Size: 17.3 KB (17305 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.9.11-core`

```console
$ docker pull influxdb@sha256:c24922bb2b6a3520e2bef2294b203f8ef71e7f5f88d2f917ea37bb8d34ca36df
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.9.11-core` - linux; amd64

```console
$ docker pull influxdb@sha256:b9f6520262a8813004c9b4b335ac6af254553648227c54247e42d4905ddcada8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151101322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d5081906383a90031d073be50f9168e903a0eeefa59bd2f4b4769762f278409`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:25 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:25 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:39:30 GMT
ENV INFLUXDB_VERSION=3.9.11
# Tue, 04 Aug 2026 01:39:30 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:39:30 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:39:30 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:39:31 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:39:31 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:39:31 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:39:31 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:39:31 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:39:31 GMT
ENV LOG_FILTER=info
# Tue, 04 Aug 2026 01:39:31 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:39:31 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:39:31 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5971341e1763a0231d9165ca3bb2c32af4499997b89ffecdd5abfd1dac1562dc`  
		Last Modified: Tue, 04 Aug 2026 01:39:48 GMT  
		Size: 9.0 MB (9033725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be9451fe3b8e961bd1a38bf542f21f863dbf5a27267d4e12d3562d488d5fd148`  
		Last Modified: Tue, 04 Aug 2026 01:39:48 GMT  
		Size: 3.6 KB (3650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4dbe2d427de6b685f38663a0c1ef845ac89da990cb82ccdbba46a7a8e59e88f`  
		Last Modified: Tue, 04 Aug 2026 01:39:51 GMT  
		Size: 112.3 MB (112312170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5cc46b854a3fd4903bf5b6da9b576c01c6427c32f95cba65056e3945a96fd3`  
		Last Modified: Tue, 04 Aug 2026 01:39:48 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ac9a13ace96bd6c7a58d510e28fef48d37f89af461805c879c7429b6c88b5b`  
		Last Modified: Tue, 04 Aug 2026 01:39:49 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.9.11-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:6b9f4623c1c6891c3ce6605aa92fd71249fa090cfecb3b51c1438cd394bb96f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90ed50eb0d00f3c4045affe4fd6e62357f13252a59fe34ce3462f92534b4c21f`

```dockerfile
```

-	Layers:
	-	`sha256:5ba0116c57f97014ff4534aebd25d8a109982ac28279809b91999d81e6a59bd2`  
		Last Modified: Tue, 04 Aug 2026 01:39:48 GMT  
		Size: 2.3 MB (2293797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:009d0fcbcd56dbcd4ab8e64b56aaf9f14b0c815f89fc0bbb4399ee1cc754f2ce`  
		Last Modified: Tue, 04 Aug 2026 01:39:48 GMT  
		Size: 17.0 KB (17024 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.9.11-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:a540ec8e699d134789f3594eeaa9357634bd1202fd5d4e7bdd54cd9e86d2b4c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.9 MB (139947219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fab6a53b7f099a7bb48c6341080b45bb607c9266e48880c2b1d7518a2c9799b`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:15 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:15 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:39:21 GMT
ENV INFLUXDB_VERSION=3.9.11
# Tue, 04 Aug 2026 01:39:21 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:39:21 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:39:21 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:39:21 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:39:21 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:39:21 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:39:21 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:39:21 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:39:21 GMT
ENV LOG_FILTER=info
# Tue, 04 Aug 2026 01:39:21 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:39:21 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:39:21 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da9ecb9d00749268e4ee7ea847d1f112354c4ea0347a78e21e5872908ada327`  
		Last Modified: Tue, 04 Aug 2026 01:39:37 GMT  
		Size: 6.6 MB (6641714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb196f5f6db209b77ea445571a656dd343f9112493dcc5a741970109b48917f`  
		Last Modified: Tue, 04 Aug 2026 01:39:36 GMT  
		Size: 3.6 KB (3648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b8b6fdb24f602c316bf36930721d8f2127c4a81dd346c92bd69712cc1ab5a0`  
		Last Modified: Tue, 04 Aug 2026 01:39:39 GMT  
		Size: 104.4 MB (104414369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e42293e9dc03dd34b0462bfcdb0d97f828801198411f9083bfdcf888ca0c6b9`  
		Last Modified: Tue, 04 Aug 2026 01:39:36 GMT  
		Size: 522.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde6b99e4bb68a1b5cfabb1d95d4630a13bb197204640a55fce168eb00fbbe3a`  
		Last Modified: Tue, 04 Aug 2026 01:39:37 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.9.11-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:d8464bc2e4aa7c4e938523ec64da657075bad6efcf055f9757f594b953fbb198
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8bb74bb698dace64d775380ba4094ac11fed37932541beaa0150fd1f1b15226`

```dockerfile
```

-	Layers:
	-	`sha256:2f918011f426cf883888d0d33a75c5a5570b247aeabf6df7d8b445bc75998196`  
		Last Modified: Tue, 04 Aug 2026 01:39:36 GMT  
		Size: 2.3 MB (2294855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bbd18c23f6cf0228edd5adf1578bcdec390065dcb676289149bf62c8309c706c`  
		Last Modified: Tue, 04 Aug 2026 01:39:36 GMT  
		Size: 17.1 KB (17149 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.9.11-enterprise`

```console
$ docker pull influxdb@sha256:5e65ef5a68f660f7cebf108700feab8bcbfd86d949c6d2f9105dbeaca587ede4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.9.11-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:9a500c7f5835baa19e3ea71fb3e3ad63739f5f6826015084074df0cacb04734c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.9 MB (161852659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90149bf2eeba6dae78141df92ae737db4eb17c884022b63dee94f275d77203a9`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:25 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:25 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:39:33 GMT
ENV INFLUXDB_VERSION=3.9.11
# Tue, 04 Aug 2026 01:39:33 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:39:33 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:39:33 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:39:33 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:39:33 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:39:33 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:39:33 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:39:33 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:39:33 GMT
ENV LOG_FILTER=info
# Tue, 04 Aug 2026 01:39:33 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:39:33 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:39:33 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:542dfa88e912c0c9abc5c5b464a0b118723736f969379e429b31694c26844a46`  
		Last Modified: Tue, 04 Aug 2026 01:39:53 GMT  
		Size: 9.0 MB (9033718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be9451fe3b8e961bd1a38bf542f21f863dbf5a27267d4e12d3562d488d5fd148`  
		Last Modified: Tue, 04 Aug 2026 01:39:48 GMT  
		Size: 3.6 KB (3650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c745adaa818660d88eb080b9894e1876b846b8d33834db0e1b9d625f9c3e7219`  
		Last Modified: Tue, 04 Aug 2026 01:39:55 GMT  
		Size: 123.1 MB (123063513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b498fbfd507c58c0f5003a3b0be9e43d3a308f3fd8b4ae891471de7111598ce5`  
		Last Modified: Tue, 04 Aug 2026 01:39:53 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02a7b3a1ebc43050810980edb0cc03039c874ea10d513202e473508cbd80b6d`  
		Last Modified: Tue, 04 Aug 2026 01:39:53 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.9.11-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:bf5be1f1ee72d5ccef6ac2a335451e5f4b683c5b9f6893f62706a1e1f71dbdba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384a7deafbbdf6dcfdf00e23bf4929df0e953abb22fb65e16ab3db4921c3cc5c`

```dockerfile
```

-	Layers:
	-	`sha256:c7b2beea5a92592dc6d5a55e40d8eb7b064a04ba7a147ec5cedcbdd75ec1b5f8`  
		Last Modified: Tue, 04 Aug 2026 01:39:53 GMT  
		Size: 2.3 MB (2293821 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f693aa3993e06ba5d15768042097877ad35ed3792800c31e3c158d2145c447f0`  
		Last Modified: Tue, 04 Aug 2026 01:39:52 GMT  
		Size: 17.2 KB (17180 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.9.11-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:750e642971ad8403550a370ba747de6bf6dfe41ad8b077e4c7f362fad6791b4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.5 MB (150542000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4348e3a450673dd4e7e37520fd848cf5ceee56f4035434de31f357d43efe68e3`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:18 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:18 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:39:24 GMT
ENV INFLUXDB_VERSION=3.9.11
# Tue, 04 Aug 2026 01:39:24 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:39:24 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:39:24 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:39:24 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:39:24 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:39:24 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:39:24 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:39:24 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:39:24 GMT
ENV LOG_FILTER=info
# Tue, 04 Aug 2026 01:39:24 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:39:24 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:39:24 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dceb3b6de3e3ea5c4e59d5ff8a9d5582fae5e23c744f1d65eb358dd358776afc`  
		Last Modified: Tue, 04 Aug 2026 01:39:41 GMT  
		Size: 6.6 MB (6641672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a8a275eb4066810a24b1db32eb14f72265da1db9b32b5bcc01c7e35bb96d77f`  
		Last Modified: Tue, 04 Aug 2026 01:39:41 GMT  
		Size: 3.6 KB (3646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96ee4b9fa8c0a8e5c33ee3139dfeccec778af7d5b952d30f06baff0c8645f113`  
		Last Modified: Tue, 04 Aug 2026 01:39:44 GMT  
		Size: 115.0 MB (115009195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c19123fa8d0fb3f7f489f991246a7b5d5f46a33a1bb12e92aad8f3c11aaa37b`  
		Last Modified: Tue, 04 Aug 2026 01:39:41 GMT  
		Size: 522.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4986b32a8066c0ca9f080d4aeffc95f4ae674206e268500fc4ccc123b32e1427`  
		Last Modified: Tue, 04 Aug 2026 01:39:42 GMT  
		Size: 147.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.9.11-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:adcb5161600df701ca1c0338fb68d1fcb9b355bdd5995786adabc22173e7cbc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f661747d1d06a4e493c0288051eaebe901082e69ee08d3c23152589198b9e026`

```dockerfile
```

-	Layers:
	-	`sha256:80e042b755cf507d140a6a7e583c81141d2d509df120806d381c259180433689`  
		Last Modified: Tue, 04 Aug 2026 01:39:41 GMT  
		Size: 2.3 MB (2294879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52d0a95284d9e759ccdef70ff8dc4225b066a8c8ab2d57a26ddeefb12ac9a520`  
		Last Modified: Tue, 04 Aug 2026 01:39:41 GMT  
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
$ docker pull influxdb@sha256:06ae73b2e869bf78422bdbbc084ab74347102e0f9e84bfd9245cb1c85b379119
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:core` - linux; amd64

```console
$ docker pull influxdb@sha256:497435140652177c4da54c94839c9f665aef804bf80d326ed806b47b6f133748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151073224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d080332b6f6b76acae310d6f97fcb2e8085753f8146bd2c303b4498b94ca61c2`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:48 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:49 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:39:54 GMT
ENV INFLUXDB_VERSION=3.11.0
# Tue, 04 Aug 2026 01:39:54 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:39:54 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:39:54 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:39:54 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:39:54 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:39:54 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:39:54 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:39:54 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:39:54 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 04 Aug 2026 01:39:54 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:39:54 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:39:54 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bf07841b7cf27462015e3ecc42223fe89263c511eda21a50636bd7619c4aed`  
		Last Modified: Tue, 04 Aug 2026 01:40:12 GMT  
		Size: 9.0 MB (9033745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09452cb5bf63eb175d0b81ba0ba3ac5990f8c81b7e16a5e22362d78755aedcaf`  
		Last Modified: Tue, 04 Aug 2026 01:40:12 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f022720a44a5e430a65ad79ba4abc8220b23c705d95910cc1d84adb1456833a`  
		Last Modified: Tue, 04 Aug 2026 01:40:15 GMT  
		Size: 112.3 MB (112284047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5e0b146a5310e555a4fb674a58b4ba482cf6cdddf54c6d0fc7bd5decd1e510c`  
		Last Modified: Tue, 04 Aug 2026 01:40:12 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fc36bbb2b24cbc998c0f79e0cb8b87cba72fc9bc0c0abb38f13e0efc8536197`  
		Last Modified: Tue, 04 Aug 2026 01:40:13 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:core` - unknown; unknown

```console
$ docker pull influxdb@sha256:52e51940360b914a486396d19ae345327cc8b7a0900a3d467f9dbd9130d566f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd29557d4522dd2eee0ce5c25cfef71c208b2301c39d39fd0dd8c50771f5483b`

```dockerfile
```

-	Layers:
	-	`sha256:8789f6b667bf5e66da55e64486d41eb046e7fe4d5d669ad94173b287949922dc`  
		Last Modified: Tue, 04 Aug 2026 01:40:12 GMT  
		Size: 2.3 MB (2294399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0947e98d45acef801810113b62e0e25fd9b200bc378338fde770e4dd8f09c1af`  
		Last Modified: Tue, 04 Aug 2026 01:40:12 GMT  
		Size: 17.6 KB (17641 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:ad5cefa012aaca107267256c659e2f58af50d827832141f42fc0380b3e686a3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (139954504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:750fe1a5b3eeec153425879909f5593302acbec3f4b6afb4e57e9786530fdef1`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:52 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:52 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:39:57 GMT
ENV INFLUXDB_VERSION=3.11.0
# Tue, 04 Aug 2026 01:39:57 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:39:57 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:39:57 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:39:58 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:39:58 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:39:58 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:39:58 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:39:58 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:39:58 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 04 Aug 2026 01:39:58 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:39:58 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:39:58 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f164738877fe86a67959dff0a6e5151efa49b25afbf8d1d2ddb5d4b96afec85`  
		Last Modified: Tue, 04 Aug 2026 01:40:14 GMT  
		Size: 6.6 MB (6641726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f16d51f7fb29c3bf69c200ad79b8f6c4be901c79527465d68b127f23cd6bac1d`  
		Last Modified: Tue, 04 Aug 2026 01:40:13 GMT  
		Size: 3.6 KB (3649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd377b2cc683c0b6ca66ab89e45ed4adfa583a05207545d2c24d06169d98a08e`  
		Last Modified: Tue, 04 Aug 2026 01:40:17 GMT  
		Size: 104.4 MB (104421643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91418578df86b6873e8f3a4e44e41777c691078a1eec413b50a6302b727314cc`  
		Last Modified: Tue, 04 Aug 2026 01:40:14 GMT  
		Size: 518.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0201f9571723557c0a003f121a637f278eae72af7fb69e4f73d479087e8aad`  
		Last Modified: Tue, 04 Aug 2026 01:40:15 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:core` - unknown; unknown

```console
$ docker pull influxdb@sha256:214fd2218622a074d59d131f7836b0b6fa22050c17ca5b6711362299a7023fd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f2ffafcde9650baa28c15f4203a0795a24d7876e36b331759dee876f077d0b`

```dockerfile
```

-	Layers:
	-	`sha256:22f6ea66537ffc1f5a547e93ed85791cff32489c345174ae94f810df8510b1e3`  
		Last Modified: Tue, 04 Aug 2026 01:40:14 GMT  
		Size: 2.3 MB (2295481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faffc7a199ab765bb7998826ada62721be1b49f8f560ff8168b00bd766387df0`  
		Last Modified: Tue, 04 Aug 2026 01:40:13 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:data`

```console
$ docker pull influxdb@sha256:35fc7bdcf7aaf4f21792e2c7f909e8907c1ce75ced5e15377be5e7a0437ba737
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:data` - linux; amd64

```console
$ docker pull influxdb@sha256:5c940ec4adaa83077da53478180b23812db862f964c14c37779cfcc1aec32be7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115733153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e13a6085c07c19e5773153d0ba50801d236c3fc93491624fa49e74d4742312e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:32:57 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Tue, 14 Jul 2026 02:32:57 GMT
ENV INFLUXDB_PR=
# Tue, 14 Jul 2026 02:32:57 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Tue, 14 Jul 2026 02:32:57 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-data_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:32:57 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 14 Jul 2026 02:32:57 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 02:32:57 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Jul 2026 02:32:57 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:32:57 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 14 Jul 2026 02:32:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:32:57 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a5359bb97d04c0782d59ccd858060cd9564789868c8277af9c018ea3e43c8c`  
		Last Modified: Tue, 14 Jul 2026 02:33:15 GMT  
		Size: 43.2 MB (43189875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431473c02e00defcd602aaddb4d1ac383ba0bbf61f68371addb24085f9d52ec7`  
		Last Modified: Tue, 14 Jul 2026 02:33:13 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:676a9d7ad6279191c750a0b0f6911638e39cd9e8e5585c0e15a8b9da887d51b9`  
		Last Modified: Tue, 14 Jul 2026 02:33:13 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64e493e61cb731b9642fdfe571de74c3e79b1e2f899931f8f09403eb655f1599`  
		Last Modified: Tue, 14 Jul 2026 02:33:13 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:data` - unknown; unknown

```console
$ docker pull influxdb@sha256:1e15b88a6badb019deabaae1fb1eb4a56ea8c9b33e44dc95b926adc036517a70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4707349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5cc92df30fa74bef73702b9fafcf0c4d539226ac76ff6b7e4f8f305a52ef11b`

```dockerfile
```

-	Layers:
	-	`sha256:f5ef7442f9bc0b641ec52015068b8ce5ab63ab59b0c254fa6ac202b4a3f10524`  
		Last Modified: Tue, 14 Jul 2026 02:33:14 GMT  
		Size: 4.7 MB (4693195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca81c5b3563dbe0fe83a941afc51e7bab6f6ada1782625fbfa1d3d5c06886f4f`  
		Last Modified: Tue, 14 Jul 2026 02:33:13 GMT  
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
$ docker pull influxdb@sha256:89b43bbba5973ff22723c72f42195d8523cbd7a00f8509381f01c5832d01c712
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:5a607eb9bf3184aa3a810be45699e8328ae062014b2f68b87c9e6405511b71d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.9 MB (184854234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e211981a212e48d3d1f5e201630bcad45b37019967ce3ec56da97f2e42cc7bd`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:55 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:55 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB_VERSION=3.11.0
# Tue, 04 Aug 2026 01:40:02 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:40:02 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 04 Aug 2026 01:40:02 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:40:02 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:40:02 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae6e94cf64f505b5e22208a4a6eeb5725fc754abc301d03bfe9365ab1a897e0b`  
		Last Modified: Tue, 04 Aug 2026 01:40:24 GMT  
		Size: 9.0 MB (9033728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d44800e7887223208c45b7b938216ceaa3b8cd2b59b0b811026427813fe870`  
		Last Modified: Tue, 04 Aug 2026 01:40:24 GMT  
		Size: 3.6 KB (3650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11462492c236a7cc603179e4b3aaffa19220c8ac4f84c774a66ad4948ab39568`  
		Last Modified: Tue, 04 Aug 2026 01:40:27 GMT  
		Size: 146.1 MB (146065078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c59be6e3b71269663670504ef8b89d784706475916ff423ba9c27ec62bc774`  
		Last Modified: Tue, 04 Aug 2026 01:40:24 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fcebc6bdbffd854af187a94c0897a2db8e33fae5b1d473a4cc11dac8800cc10`  
		Last Modified: Tue, 04 Aug 2026 01:40:25 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:a37f33d57d40a94e0af7cb77ef8c596b5bdcce018f71d12e750a3e82a037d8e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa94d76b33e274253bf95dc5be9c598006f0aa34c1e30b28e942922fc52e9e4d`

```dockerfile
```

-	Layers:
	-	`sha256:104b19f8e66fe96d094971b2045bb1975d1c7dd5b8c3b20ed3067b5abba525a3`  
		Last Modified: Tue, 04 Aug 2026 01:40:24 GMT  
		Size: 2.3 MB (2294447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de79eb1af341d21663152af472bc93244fa7729f40dbdafab3452e77e0d27c87`  
		Last Modified: Tue, 04 Aug 2026 01:40:23 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:089b5e5b4ec0a9c6e7c3f86117a14ad80b780cd775222d6d3aa512d92c1fb08a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172911889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:526284a2389ac9e707c4a4577358dabe9d354cb46bc48f9796ee6f3190b1b8ad`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:56 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 04 Aug 2026 01:39:56 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
ENV INFLUXDB_VERSION=3.11.0
# Tue, 04 Aug 2026 01:40:02 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:40:02 GMT
USER influxdb3
# Tue, 04 Aug 2026 01:40:03 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 04 Aug 2026 01:40:03 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 04 Aug 2026 01:40:03 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 04 Aug 2026 01:40:03 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 04 Aug 2026 01:40:03 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 04 Aug 2026 01:40:03 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 04 Aug 2026 01:40:03 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 04 Aug 2026 01:40:03 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 04 Aug 2026 01:40:03 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eccf53263c65d49bf07fb2344153f805f8408db860b8dddf359bc31db67c7a33`  
		Last Modified: Tue, 04 Aug 2026 01:40:22 GMT  
		Size: 6.6 MB (6641746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb82346005d509127022c861e6fa164ff43c0b857cf835ae644b491387c9879`  
		Last Modified: Tue, 04 Aug 2026 01:40:21 GMT  
		Size: 3.6 KB (3650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54a01188b20667bb90adc1b5ccedf9b46ddfce8415ee27e786465d8ba30833c4`  
		Last Modified: Tue, 04 Aug 2026 01:40:25 GMT  
		Size: 137.4 MB (137379007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d19bdf586bdae26347d8db35c204523d9f86765f90690aebf01f3121c034ed`  
		Last Modified: Tue, 04 Aug 2026 01:40:21 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c9f3f29f3870f291b182565b329c2c2a0221b6be3c0f18ee721cf82c0ae9fa`  
		Last Modified: Tue, 04 Aug 2026 01:40:23 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:e14da930fbd32355d23696cc843aa3aac0b49628cd222523f9d77b7aff72940d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e66d8f8dbe4daf92f47a0abe26601bfeae061bf678462f7fc8f661b58a27d85`

```dockerfile
```

-	Layers:
	-	`sha256:baa1418806f59a33bfc7d5c2430df5f16cec1c925b7abea53cfffd42b85ed4d3`  
		Last Modified: Tue, 04 Aug 2026 01:40:22 GMT  
		Size: 2.3 MB (2295529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06776dd425ee48038cfbc1611cc2a7d1e10cea5769ed726225131c14f14e20b4`  
		Last Modified: Tue, 04 Aug 2026 01:40:21 GMT  
		Size: 18.0 KB (17970 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:9f29465df7a15d427e046681cfc7b3da9753e75825c6864f8d3cf5b3aa3cca3d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:latest` - linux; amd64

```console
$ docker pull influxdb@sha256:59f2d3b995aae37426ddc7e1007ae974cb1b80e13ba03b138de9449ea14da118
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110798766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc03bd8164f0515b80d096355e8c0eb6ade1e3dd488b681cd0dc9d85aaf643d4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:44:59 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:45:00 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 14 Jul 2026 01:45:00 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 14 Jul 2026 01:45:03 GMT
ENV INFLUXDB_VERSION=2.9.1
# Tue, 14 Jul 2026 01:45:03 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 14 Jul 2026 01:45:03 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Tue, 14 Jul 2026 01:45:04 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 14 Jul 2026 01:45:04 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 14 Jul 2026 01:45:04 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 14 Jul 2026 01:45:04 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 14 Jul 2026 01:45:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 01:45:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 01:45:04 GMT
CMD ["influxd"]
# Tue, 14 Jul 2026 01:45:04 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 01:45:04 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 14 Jul 2026 01:45:04 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 14 Jul 2026 01:45:04 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 14 Jul 2026 01:45:04 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d77f05b47f9a4af9594c6253acea752a76884da3c06ef4dacf40b7deba41aea`  
		Last Modified: Tue, 14 Jul 2026 01:45:17 GMT  
		Size: 9.8 MB (9800775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5d0f60c01be70fc5432699a32b77193193aa8f801a77a18f1d5f4f4eca31f8f`  
		Last Modified: Tue, 14 Jul 2026 01:45:17 GMT  
		Size: 3.8 MB (3822786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2e2ae139e2b1c2823a9420f6826f7fcb5761d29fa389dd343789c4f6283362d`  
		Last Modified: Tue, 14 Jul 2026 01:45:17 GMT  
		Size: 3.2 KB (3230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2b171f084180327473e3af462bc6c935e9afc3099a3ea362436806febb92c31`  
		Last Modified: Tue, 14 Jul 2026 01:45:19 GMT  
		Size: 56.5 MB (56510574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f924a3c7b24cf52dd68ca02f93800982a7b7aef4be497077824a01c70267fd88`  
		Last Modified: Tue, 14 Jul 2026 01:45:18 GMT  
		Size: 12.4 MB (12421819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9340669a63a69df0f3515f0f846558b51afea11dc6ae943901837e6ad60f2cef`  
		Last Modified: Tue, 14 Jul 2026 01:45:18 GMT  
		Size: 207.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9985a462188065ee7ad1a36871a649f061c45554b93e46641ebf028f1ca4754f`  
		Last Modified: Tue, 14 Jul 2026 01:45:19 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d24757e5edfa3c52c6e63de2dcf8118034dd29bdcd1bd3337a081cead9d81483`  
		Last Modified: Tue, 14 Jul 2026 01:45:20 GMT  
		Size: 6.5 KB (6499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:latest` - unknown; unknown

```console
$ docker pull influxdb@sha256:0da905e83c23934be547111c4b8368c7dc2f6d487e75430618df5f74e5f10f1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2988097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:308d9e8d1c477d8671bf3c13e5aa2d64c18b8dd87f4806d8088ad123c93c3225`

```dockerfile
```

-	Layers:
	-	`sha256:8ae2fc0d1ba1fb8fea4e0ceeb2d64dfaf166eb9008019065813f81b669a07bd6`  
		Last Modified: Tue, 14 Jul 2026 01:45:17 GMT  
		Size: 3.0 MB (2959483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5c88026d22229d2b37b2f2bbfec85d4bf2fce7577337a2cb2538c27c15cdbb5`  
		Last Modified: Tue, 14 Jul 2026 01:45:17 GMT  
		Size: 28.6 KB (28614 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:latest` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:e464d5a2b7c70df0a30e5ae5f21687233b3d29f2d4ef8c06bebed04b70e27f95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.3 MB (106332804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80c2c0d9944580599c1a282353adf4f54e415049917685ee3b63c28d9398b7fd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:48:14 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:15 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 14 Jul 2026 01:48:15 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 14 Jul 2026 01:48:18 GMT
ENV INFLUXDB_VERSION=2.9.1
# Tue, 14 Jul 2026 01:48:18 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 14 Jul 2026 01:48:18 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Tue, 14 Jul 2026 01:48:19 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 14 Jul 2026 01:48:19 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 14 Jul 2026 01:48:19 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 14 Jul 2026 01:48:19 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 14 Jul 2026 01:48:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 01:48:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 01:48:19 GMT
CMD ["influxd"]
# Tue, 14 Jul 2026 01:48:19 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 14 Jul 2026 01:48:19 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 14 Jul 2026 01:48:19 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 14 Jul 2026 01:48:19 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 14 Jul 2026 01:48:19 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2725f8a1e352f0c8dd4c3109c988bd688d95f14c5f5256e949472ed6e5c73370`  
		Last Modified: Tue, 14 Jul 2026 01:48:31 GMT  
		Size: 9.6 MB (9629101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4995e1128d797823529996ae49875e7e33da39d1f9463dbae6dc4a4290966d01`  
		Last Modified: Tue, 14 Jul 2026 01:48:31 GMT  
		Size: 3.5 MB (3459177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aa128aead64d9df68630b58212b19cba41d6e7bcdce4d36a951fcc0929efb7a`  
		Last Modified: Tue, 14 Jul 2026 01:48:31 GMT  
		Size: 3.2 KB (3227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cca7b356385721bebde91e44ccb6df84f4ea1ff6a85b6bbf5edab3ce848b2e72`  
		Last Modified: Tue, 14 Jul 2026 01:48:33 GMT  
		Size: 53.6 MB (53636819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b96df2659768440a6e8042892594d178148c7c4403ea4263ae9908f07fdd1e6`  
		Last Modified: Tue, 14 Jul 2026 01:48:32 GMT  
		Size: 11.5 MB (11480286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20521921f6f7ba30639d804185b7c80f0382efe2ad0ff175e80b09ada10d4245`  
		Last Modified: Tue, 14 Jul 2026 01:48:32 GMT  
		Size: 207.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c12502fbfc8225f28ce09bf070830cda67d9c2d2ffccd93af121495252e4da7f`  
		Last Modified: Tue, 14 Jul 2026 01:48:33 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d40d5ae1d6a9dd3798167472eb03642f0c6d57cfc939b1f0fd74aa03fe16273`  
		Last Modified: Tue, 14 Jul 2026 01:48:34 GMT  
		Size: 6.5 KB (6499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:latest` - unknown; unknown

```console
$ docker pull influxdb@sha256:add056668fc9ca4b3009e7819771e51b121eb448ab26253656f8a9aeeb1d31ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2987753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b95cdf06914348bc421eccfb0532ea6f8523d88b82873e0a87ac1419cd6ec6a`

```dockerfile
```

-	Layers:
	-	`sha256:0c9d3d19d3a8d25ea1d16ab82589406e7bf40af13629b5c2562d7255b888f348`  
		Last Modified: Tue, 14 Jul 2026 01:48:31 GMT  
		Size: 3.0 MB (2958961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3b1dbc61ae0d6d7b3a504f8770f71f7cf73ab373c8e454d7f1e33a7810bd67e`  
		Last Modified: Tue, 14 Jul 2026 01:48:31 GMT  
		Size: 28.8 KB (28792 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:meta`

```console
$ docker pull influxdb@sha256:eec698cc45350f4f5b9bea16ae5a837322e8868fb886519f7572bd95168267dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:meta` - linux; amd64

```console
$ docker pull influxdb@sha256:f6bfed1cc463f0e511d2ef1f0277a450838f117defdc47e29458f01c62ef9aa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91927218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:219e807e63c402cc171c6b59f28656da64823bbaffe0e00418f67b8d0c77b5e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:33:01 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Tue, 14 Jul 2026 02:33:01 GMT
ENV INFLUXDB_PR=
# Tue, 14 Jul 2026 02:33:01 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Tue, 14 Jul 2026 02:33:01 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-meta_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:33:01 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Tue, 14 Jul 2026 02:33:01 GMT
EXPOSE map[8091/tcp:{}]
# Tue, 14 Jul 2026 02:33:01 GMT
VOLUME [/var/lib/influxdb]
# Tue, 14 Jul 2026 02:33:01 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 14 Jul 2026 02:33:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 14 Jul 2026 02:33:01 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cc34f043ca9c3ea49bbe7851c51be641daa3304a7d70d34b081ac78205f7cd5`  
		Last Modified: Tue, 14 Jul 2026 02:33:11 GMT  
		Size: 19.4 MB (19385152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a943df5f144640934b1392ff377e8951b4ca45b95aa2d805e964663eb11edb`  
		Last Modified: Tue, 14 Jul 2026 02:33:10 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:159d2f22536e9feeb2bd927f7127bd1d562d2896b4e60b4a7bb46db0e6a364b5`  
		Last Modified: Tue, 14 Jul 2026 02:33:10 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:57b4e08fabc35359d7c358040c5d8d51545d46c893b1f01f03b50ca64b6309e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4605927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f59393d0a38d18e6b318cd69e97401ee91569ef3ee1b24b2efc043037f5171e`

```dockerfile
```

-	Layers:
	-	`sha256:20a5fe18bfef65a8d9f1139ef28203999aa06f0d194fcb4b1a980c389edaf12b`  
		Last Modified: Tue, 14 Jul 2026 02:33:10 GMT  
		Size: 4.6 MB (4593263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d38b8439e69ceffd16d7f1d2f3a68ce6d6c46361b7b0f4da1bc6ab41f94cd26`  
		Last Modified: Tue, 14 Jul 2026 02:33:10 GMT  
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
