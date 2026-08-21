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
$ docker pull influxdb@sha256:6fb6b355bb22528c2576fd21be0763502e96e6a5351acd251548c11524d9ebde
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.11` - linux; amd64

```console
$ docker pull influxdb@sha256:9915caccb27270409c2ecfd48d16b4a2195ea0e16cd399cd23ead8f18574b3b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116201984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ea33124bff936303014acfc5f096c47f107f853451182fff1b3154a2147b7c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:36:41 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Wed, 05 Aug 2026 01:36:49 GMT
ARG INFLUXDB_VERSION=1.11.8
# Wed, 05 Aug 2026 01:36:49 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     case "$(dpkg --print-architecture)" in       *amd64) ARCH=amd64 ;;       *arm64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_DEB=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_DEB}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_DEB}" &&     apt-get install -y "./${INFLUXDB_DEB}" &&     rm -rf "${INFLUXDB_DEB}"            "${INFLUXDB_ASC}" 	   /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:36:49 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 05 Aug 2026 01:36:49 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 01:36:49 GMT
VOLUME [/var/lib/influxdb]
# Wed, 05 Aug 2026 01:36:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:36:49 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 05 Aug 2026 01:36:49 GMT
USER influxdb
# Wed, 05 Aug 2026 01:36:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:36:49 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a500aeafa83b8499bfc3689c20589017c579e7a7453c18114ae115e65f705c09`  
		Last Modified: Wed, 05 Aug 2026 01:37:04 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaca5d197f2ae247e0097821495a87d3056dc2997c6a08a2728e918831529b35`  
		Last Modified: Wed, 05 Aug 2026 01:37:05 GMT  
		Size: 43.7 MB (43657845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7791c52fd329fe6987e0f3bdb77fa0f597ad31e63315db1f730d2f2d3c2e6530`  
		Last Modified: Wed, 05 Aug 2026 01:37:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:204088aa58186cfd13327fa6369ca425054196190034b848de53a081575849cf`  
		Last Modified: Wed, 05 Aug 2026 01:37:04 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b96aa423c06de9c9b89722f296dfb35915702a800df5d148acba240ff04cd0`  
		Last Modified: Wed, 05 Aug 2026 01:37:05 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11` - unknown; unknown

```console
$ docker pull influxdb@sha256:faa866c190170a3bbaa0283355d88f5cb7405a6a3f15d82f7a3d67eed36db8db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5094829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59dc10c5a1d00b328e9fdc5db1d3158c63d56d6e86803777c3cc0f47fd935261`

```dockerfile
```

-	Layers:
	-	`sha256:3df978bfcf8384f1bfb5e2c7a552e8f55360fc0816754ab6126059b52d04d5ff`  
		Last Modified: Wed, 05 Aug 2026 01:37:04 GMT  
		Size: 5.1 MB (5079343 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:285b81e01ee550c1d1344dc46aad1770bb4c19f0527741dec7ccc00e27bc2637`  
		Last Modified: Wed, 05 Aug 2026 01:37:04 GMT  
		Size: 15.5 KB (15486 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.11` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:ca15fd67681f40fd31f2c2125ec83b438e0db503135ea8438a18bb069c5ef16a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113127363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c365808ded183a2722ea4f4cfcafbf91d4275ce7fb211a8b3e7205f1c72d50a7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:43:08 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Wed, 05 Aug 2026 01:43:15 GMT
ARG INFLUXDB_VERSION=1.11.8
# Wed, 05 Aug 2026 01:43:15 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     case "$(dpkg --print-architecture)" in       *amd64) ARCH=amd64 ;;       *arm64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_DEB=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_DEB}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_DEB}" &&     apt-get install -y "./${INFLUXDB_DEB}" &&     rm -rf "${INFLUXDB_DEB}"            "${INFLUXDB_ASC}" 	   /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:43:15 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 05 Aug 2026 01:43:15 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 01:43:15 GMT
VOLUME [/var/lib/influxdb]
# Wed, 05 Aug 2026 01:43:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:43:15 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 05 Aug 2026 01:43:15 GMT
USER influxdb
# Wed, 05 Aug 2026 01:43:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:43:15 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da1df726eda53c9ea486ca06f34cf9a6da54e5fe75a8aed10faf8652ffe6cdf8`  
		Last Modified: Wed, 05 Aug 2026 01:43:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d5cf37be0dfed90da4ae2dbd56001edd6530fc5b1e6e54dfa05f140a286337`  
		Last Modified: Wed, 05 Aug 2026 01:43:28 GMT  
		Size: 41.1 MB (41128397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6eaedcd1b040a4eb7fb4302bd931b3eb05ad832313a07476be40be88019a457`  
		Last Modified: Wed, 05 Aug 2026 01:43:27 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf1c463766123c4e90323a36c84f81bb2835775184c8009c6fffc2c8ffefb5d`  
		Last Modified: Wed, 05 Aug 2026 01:43:27 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c3255cb06ea08ddca4bc036c4a6402c2741fcd5f813387f8966df7640ab84e5`  
		Last Modified: Wed, 05 Aug 2026 01:43:28 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11` - unknown; unknown

```console
$ docker pull influxdb@sha256:63eaefbfd054996d2575b85a1190236cd0d58cce5e814f2a9dd169578536f06f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5094388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50723908b44b21edcb240bc6d584b0af2fa78a4db8df491a53f5299fb723f13c`

```dockerfile
```

-	Layers:
	-	`sha256:00d1dcce3425519cd3b3de673e7e4b5407fd216edd34d0090d2e523a9557d852`  
		Last Modified: Wed, 05 Aug 2026 01:43:27 GMT  
		Size: 5.1 MB (5078808 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:134b536b309c17c70472d5cc05cb64a8264e94f250c824b65963db93dcc88af1`  
		Last Modified: Wed, 05 Aug 2026 01:43:26 GMT  
		Size: 15.6 KB (15580 bytes)  
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
$ docker pull influxdb@sha256:55f2ff5b54dcf29f1620a921c16d83c4b472711600cfdd111ad988f2d60a3b25
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11-data` - linux; amd64

```console
$ docker pull influxdb@sha256:4995f2d4cd2e25335544f01ec299114667d9a6a949431e504223015aae1e3591
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114713777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:056e7f8300c2be00055ba9e7db4f16393db2e22136627bdd67847e4501989cd7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:36:36 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 01:36:38 GMT
ENV INFLUXDB_VERSION=1.11.9-c1.11.9
# Wed, 05 Aug 2026 01:36:38 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb* # buildkit
# Wed, 05 Aug 2026 01:36:38 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 05 Aug 2026 01:36:38 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 01:36:38 GMT
VOLUME [/var/lib/influxdb]
# Wed, 05 Aug 2026 01:36:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:36:38 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 05 Aug 2026 01:36:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:36:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1a5a216447b7e3e7eb3417d6065ce0df10bba0588e3cb0ee076e90315da3367`  
		Last Modified: Wed, 05 Aug 2026 01:36:50 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2e9b91fd83d34aea5ce1c61e96844f19cb4f80aff6d19a8c7bc5d6107665d2`  
		Last Modified: Wed, 05 Aug 2026 01:36:51 GMT  
		Size: 42.2 MB (42165703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ec2089c446cb24d9881a93674a44b72691be658aa72869e5c69647eb5d7018b`  
		Last Modified: Wed, 05 Aug 2026 01:36:50 GMT  
		Size: 241.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef958f9fcfa9efa813741a8e5ca7cd8864db654c3419502723bb06268fce456b`  
		Last Modified: Wed, 05 Aug 2026 01:36:50 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4263197f69e33300169919164f5028adedf0f302edd579439f760c67c21f4dd`  
		Last Modified: Wed, 05 Aug 2026 01:36:51 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:2330410b0bd8a388bcbf5f41900ce86e1fd9468e591ac6f19c7ef1f359c36fd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4699142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45089ed4b9a599661b51d982e0df750a18e77796e36cb416fd8fe4c644105c9`

```dockerfile
```

-	Layers:
	-	`sha256:460a5fe99ad3834e84c9fec269eacbc87e17364c9d44454ccbb157535cfe89bc`  
		Last Modified: Wed, 05 Aug 2026 01:36:50 GMT  
		Size: 4.7 MB (4684478 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb20a2a6a210ab7cb8ed04b13ad155b7b879c073b6562948a1f6f47e18de734d`  
		Last Modified: Wed, 05 Aug 2026 01:36:50 GMT  
		Size: 14.7 KB (14664 bytes)  
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
$ docker pull influxdb@sha256:d9eab712feb60f912b38443289687e1d5cec54d81d741d2348d4b0cbd26fe691
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:381bd8952d7a33ec0f5641355571d17e8f74d5022e72b401309ba975446cdee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.1 MB (91142986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df14bdba902d7884f5fedfa02f73d8bedf6fa6dd577450f92de70665f60f0b95`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:36:37 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 01:36:39 GMT
ENV INFLUXDB_VERSION=1.11.9-c1.11.9
# Wed, 05 Aug 2026 01:36:39 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb* # buildkit
# Wed, 05 Aug 2026 01:36:39 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Wed, 05 Aug 2026 01:36:39 GMT
EXPOSE map[8091/tcp:{}]
# Wed, 05 Aug 2026 01:36:39 GMT
VOLUME [/var/lib/influxdb]
# Wed, 05 Aug 2026 01:36:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:36:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:36:39 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1811ec9b76c0c7da43b8e3471fc6524ec5fb0ceb249f1f766403fefc54c8eedf`  
		Last Modified: Wed, 05 Aug 2026 01:36:48 GMT  
		Size: 5.1 KB (5054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55a77d3721dc751369af55cba7b8c3774d94b004dd1fb95f08d103c880d98d7c`  
		Last Modified: Wed, 05 Aug 2026 01:36:48 GMT  
		Size: 18.6 MB (18596135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5167fc9702491ff5b120c931b4b13694d935c8a6b2d345ce4b5bcf940d9dc3cc`  
		Last Modified: Wed, 05 Aug 2026 01:36:48 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeef6b103336fa0b7c801491c2fb0da3d00ef0192beae3a52a95aa026f234822`  
		Last Modified: Wed, 05 Aug 2026 01:36:48 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:3cd7cf0db086305339d7fc5de7baf953a12e6923d79761dce23d234d7d1dc072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4604343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a844788d48c22b3acef1bfc1e2041e22c722e0b6cb43a7aa9fdf1ca8b275d7af`

```dockerfile
```

-	Layers:
	-	`sha256:9c7261ae08bad92f3c2acbf05fb9eba7bb8cb9fb5a6005ed1458947c56d86f75`  
		Last Modified: Wed, 05 Aug 2026 01:36:48 GMT  
		Size: 4.6 MB (4591321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39c8fe39df9405bca1420fbb5c35e94af588ab50eb25e3c1b4b57151859aa54c`  
		Last Modified: Wed, 05 Aug 2026 01:36:48 GMT  
		Size: 13.0 KB (13022 bytes)  
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
$ docker pull influxdb@sha256:6fb6b355bb22528c2576fd21be0763502e96e6a5351acd251548c11524d9ebde
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.11.8` - linux; amd64

```console
$ docker pull influxdb@sha256:9915caccb27270409c2ecfd48d16b4a2195ea0e16cd399cd23ead8f18574b3b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116201984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ea33124bff936303014acfc5f096c47f107f853451182fff1b3154a2147b7c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:36:41 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Wed, 05 Aug 2026 01:36:49 GMT
ARG INFLUXDB_VERSION=1.11.8
# Wed, 05 Aug 2026 01:36:49 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     case "$(dpkg --print-architecture)" in       *amd64) ARCH=amd64 ;;       *arm64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_DEB=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_DEB}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_DEB}" &&     apt-get install -y "./${INFLUXDB_DEB}" &&     rm -rf "${INFLUXDB_DEB}"            "${INFLUXDB_ASC}" 	   /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:36:49 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 05 Aug 2026 01:36:49 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 01:36:49 GMT
VOLUME [/var/lib/influxdb]
# Wed, 05 Aug 2026 01:36:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:36:49 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 05 Aug 2026 01:36:49 GMT
USER influxdb
# Wed, 05 Aug 2026 01:36:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:36:49 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a500aeafa83b8499bfc3689c20589017c579e7a7453c18114ae115e65f705c09`  
		Last Modified: Wed, 05 Aug 2026 01:37:04 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaca5d197f2ae247e0097821495a87d3056dc2997c6a08a2728e918831529b35`  
		Last Modified: Wed, 05 Aug 2026 01:37:05 GMT  
		Size: 43.7 MB (43657845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7791c52fd329fe6987e0f3bdb77fa0f597ad31e63315db1f730d2f2d3c2e6530`  
		Last Modified: Wed, 05 Aug 2026 01:37:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:204088aa58186cfd13327fa6369ca425054196190034b848de53a081575849cf`  
		Last Modified: Wed, 05 Aug 2026 01:37:04 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b96aa423c06de9c9b89722f296dfb35915702a800df5d148acba240ff04cd0`  
		Last Modified: Wed, 05 Aug 2026 01:37:05 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.8` - unknown; unknown

```console
$ docker pull influxdb@sha256:faa866c190170a3bbaa0283355d88f5cb7405a6a3f15d82f7a3d67eed36db8db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5094829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59dc10c5a1d00b328e9fdc5db1d3158c63d56d6e86803777c3cc0f47fd935261`

```dockerfile
```

-	Layers:
	-	`sha256:3df978bfcf8384f1bfb5e2c7a552e8f55360fc0816754ab6126059b52d04d5ff`  
		Last Modified: Wed, 05 Aug 2026 01:37:04 GMT  
		Size: 5.1 MB (5079343 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:285b81e01ee550c1d1344dc46aad1770bb4c19f0527741dec7ccc00e27bc2637`  
		Last Modified: Wed, 05 Aug 2026 01:37:04 GMT  
		Size: 15.5 KB (15486 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.11.8` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:ca15fd67681f40fd31f2c2125ec83b438e0db503135ea8438a18bb069c5ef16a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113127363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c365808ded183a2722ea4f4cfcafbf91d4275ce7fb211a8b3e7205f1c72d50a7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:43:08 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Wed, 05 Aug 2026 01:43:15 GMT
ARG INFLUXDB_VERSION=1.11.8
# Wed, 05 Aug 2026 01:43:15 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     case "$(dpkg --print-architecture)" in       *amd64) ARCH=amd64 ;;       *arm64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_DEB=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_DEB}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_DEB}" &&     apt-get install -y "./${INFLUXDB_DEB}" &&     rm -rf "${INFLUXDB_DEB}"            "${INFLUXDB_ASC}" 	   /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:43:15 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 05 Aug 2026 01:43:15 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 01:43:15 GMT
VOLUME [/var/lib/influxdb]
# Wed, 05 Aug 2026 01:43:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:43:15 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 05 Aug 2026 01:43:15 GMT
USER influxdb
# Wed, 05 Aug 2026 01:43:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:43:15 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da1df726eda53c9ea486ca06f34cf9a6da54e5fe75a8aed10faf8652ffe6cdf8`  
		Last Modified: Wed, 05 Aug 2026 01:43:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d5cf37be0dfed90da4ae2dbd56001edd6530fc5b1e6e54dfa05f140a286337`  
		Last Modified: Wed, 05 Aug 2026 01:43:28 GMT  
		Size: 41.1 MB (41128397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6eaedcd1b040a4eb7fb4302bd931b3eb05ad832313a07476be40be88019a457`  
		Last Modified: Wed, 05 Aug 2026 01:43:27 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf1c463766123c4e90323a36c84f81bb2835775184c8009c6fffc2c8ffefb5d`  
		Last Modified: Wed, 05 Aug 2026 01:43:27 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c3255cb06ea08ddca4bc036c4a6402c2741fcd5f813387f8966df7640ab84e5`  
		Last Modified: Wed, 05 Aug 2026 01:43:28 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.8` - unknown; unknown

```console
$ docker pull influxdb@sha256:63eaefbfd054996d2575b85a1190236cd0d58cce5e814f2a9dd169578536f06f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5094388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50723908b44b21edcb240bc6d584b0af2fa78a4db8df491a53f5299fb723f13c`

```dockerfile
```

-	Layers:
	-	`sha256:00d1dcce3425519cd3b3de673e7e4b5407fd216edd34d0090d2e523a9557d852`  
		Last Modified: Wed, 05 Aug 2026 01:43:27 GMT  
		Size: 5.1 MB (5078808 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:134b536b309c17c70472d5cc05cb64a8264e94f250c824b65963db93dcc88af1`  
		Last Modified: Wed, 05 Aug 2026 01:43:26 GMT  
		Size: 15.6 KB (15580 bytes)  
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
$ docker pull influxdb@sha256:55f2ff5b54dcf29f1620a921c16d83c4b472711600cfdd111ad988f2d60a3b25
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11.9-data` - linux; amd64

```console
$ docker pull influxdb@sha256:4995f2d4cd2e25335544f01ec299114667d9a6a949431e504223015aae1e3591
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114713777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:056e7f8300c2be00055ba9e7db4f16393db2e22136627bdd67847e4501989cd7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:36:36 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 01:36:38 GMT
ENV INFLUXDB_VERSION=1.11.9-c1.11.9
# Wed, 05 Aug 2026 01:36:38 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}-1_amd64.deb* # buildkit
# Wed, 05 Aug 2026 01:36:38 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 05 Aug 2026 01:36:38 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 01:36:38 GMT
VOLUME [/var/lib/influxdb]
# Wed, 05 Aug 2026 01:36:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:36:38 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 05 Aug 2026 01:36:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:36:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1a5a216447b7e3e7eb3417d6065ce0df10bba0588e3cb0ee076e90315da3367`  
		Last Modified: Wed, 05 Aug 2026 01:36:50 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2e9b91fd83d34aea5ce1c61e96844f19cb4f80aff6d19a8c7bc5d6107665d2`  
		Last Modified: Wed, 05 Aug 2026 01:36:51 GMT  
		Size: 42.2 MB (42165703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ec2089c446cb24d9881a93674a44b72691be658aa72869e5c69647eb5d7018b`  
		Last Modified: Wed, 05 Aug 2026 01:36:50 GMT  
		Size: 241.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef958f9fcfa9efa813741a8e5ca7cd8864db654c3419502723bb06268fce456b`  
		Last Modified: Wed, 05 Aug 2026 01:36:50 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4263197f69e33300169919164f5028adedf0f302edd579439f760c67c21f4dd`  
		Last Modified: Wed, 05 Aug 2026 01:36:51 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.9-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:2330410b0bd8a388bcbf5f41900ce86e1fd9468e591ac6f19c7ef1f359c36fd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4699142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45089ed4b9a599661b51d982e0df750a18e77796e36cb416fd8fe4c644105c9`

```dockerfile
```

-	Layers:
	-	`sha256:460a5fe99ad3834e84c9fec269eacbc87e17364c9d44454ccbb157535cfe89bc`  
		Last Modified: Wed, 05 Aug 2026 01:36:50 GMT  
		Size: 4.7 MB (4684478 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb20a2a6a210ab7cb8ed04b13ad155b7b879c073b6562948a1f6f47e18de734d`  
		Last Modified: Wed, 05 Aug 2026 01:36:50 GMT  
		Size: 14.7 KB (14664 bytes)  
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
$ docker pull influxdb@sha256:d9eab712feb60f912b38443289687e1d5cec54d81d741d2348d4b0cbd26fe691
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11.9-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:381bd8952d7a33ec0f5641355571d17e8f74d5022e72b401309ba975446cdee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.1 MB (91142986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df14bdba902d7884f5fedfa02f73d8bedf6fa6dd577450f92de70665f60f0b95`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:36:37 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 05 Aug 2026 01:36:39 GMT
ENV INFLUXDB_VERSION=1.11.9-c1.11.9
# Wed, 05 Aug 2026 01:36:39 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}-1_amd64.deb* # buildkit
# Wed, 05 Aug 2026 01:36:39 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Wed, 05 Aug 2026 01:36:39 GMT
EXPOSE map[8091/tcp:{}]
# Wed, 05 Aug 2026 01:36:39 GMT
VOLUME [/var/lib/influxdb]
# Wed, 05 Aug 2026 01:36:39 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:36:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:36:39 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1811ec9b76c0c7da43b8e3471fc6524ec5fb0ceb249f1f766403fefc54c8eedf`  
		Last Modified: Wed, 05 Aug 2026 01:36:48 GMT  
		Size: 5.1 KB (5054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55a77d3721dc751369af55cba7b8c3774d94b004dd1fb95f08d103c880d98d7c`  
		Last Modified: Wed, 05 Aug 2026 01:36:48 GMT  
		Size: 18.6 MB (18596135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5167fc9702491ff5b120c931b4b13694d935c8a6b2d345ce4b5bcf940d9dc3cc`  
		Last Modified: Wed, 05 Aug 2026 01:36:48 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeef6b103336fa0b7c801491c2fb0da3d00ef0192beae3a52a95aa026f234822`  
		Last Modified: Wed, 05 Aug 2026 01:36:48 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.9-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:3cd7cf0db086305339d7fc5de7baf953a12e6923d79761dce23d234d7d1dc072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4604343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a844788d48c22b3acef1bfc1e2041e22c722e0b6cb43a7aa9fdf1ca8b275d7af`

```dockerfile
```

-	Layers:
	-	`sha256:9c7261ae08bad92f3c2acbf05fb9eba7bb8cb9fb5a6005ed1458947c56d86f75`  
		Last Modified: Wed, 05 Aug 2026 01:36:48 GMT  
		Size: 4.6 MB (4591321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39c8fe39df9405bca1420fbb5c35e94af588ab50eb25e3c1b4b57151859aa54c`  
		Last Modified: Wed, 05 Aug 2026 01:36:48 GMT  
		Size: 13.0 KB (13022 bytes)  
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
$ docker pull influxdb@sha256:41a5ef94f9cb8d6c99a4d7088daf22735b8d447e8a4be0f40d1cdde2f93867da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.12` - linux; amd64

```console
$ docker pull influxdb@sha256:8595f67a9ff2a573ce5500e586858b59ff42a7507bf2c6a72219b8938b45400c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114670522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dcac1bedd74988add412dbee0fb5410e0768a98f9cc5a1ccf059e8beb958534`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:36:10 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Wed, 05 Aug 2026 01:36:15 GMT
ENV INFLUXDB_VERSION=1.12.4
# Wed, 05 Aug 2026 01:36:15 GMT
ENV INFLUXDB_PR=-1
# Wed, 05 Aug 2026 01:36:15 GMT
ENV INFLUXDB_PV=1.12.4-1
# Wed, 05 Aug 2026 01:36:15 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:36:16 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 05 Aug 2026 01:36:16 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 01:36:16 GMT
VOLUME [/var/lib/influxdb]
# Wed, 05 Aug 2026 01:36:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:36:16 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 05 Aug 2026 01:36:16 GMT
USER influxdb
# Wed, 05 Aug 2026 01:36:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:36:16 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf09d131bbd55bd5c3068328b852b416e8b943cf6226217515bc431a21cd427`  
		Last Modified: Wed, 05 Aug 2026 01:36:28 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fab7bc6d68a7d19b0f47bc101c8895df0bcb51ca78ddd07d71bd151fd2238856`  
		Last Modified: Wed, 05 Aug 2026 01:36:29 GMT  
		Size: 42.1 MB (42126383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e2738fba59e9c219cc9e9ab8f80f16375e615559ffb17256de13f96f3ce5d90`  
		Last Modified: Wed, 05 Aug 2026 01:36:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f3ff0d54dbd928663180c588d26c07299ca7709b1896f56eccb1bd8eefeb2eb`  
		Last Modified: Wed, 05 Aug 2026 01:36:28 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc58c54e4c5133b287c8bba998471be28ef8e6d7ccaaced54b2d5c354caaa6b5`  
		Last Modified: Wed, 05 Aug 2026 01:36:29 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12` - unknown; unknown

```console
$ docker pull influxdb@sha256:70c4dd28004e4ef6927c0e785f65450ccd988d97d0b3b5c28850bf489bb3da05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4694734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c820d55c9f94185389a92589c4324bf2201527ec2bde674407f988176450a7f6`

```dockerfile
```

-	Layers:
	-	`sha256:6fb9ef1ccc415132aad7c68bd637f78cbc0f199ee330fa261d12f8fd9a7f4431`  
		Last Modified: Wed, 05 Aug 2026 01:36:28 GMT  
		Size: 4.7 MB (4678205 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e6c6e30ff7ca9d0756458d0960953c5610b4607e4dd9114e7cd7e5ba9767fbf`  
		Last Modified: Wed, 05 Aug 2026 01:36:28 GMT  
		Size: 16.5 KB (16529 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.12` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:22d97e004cef3967d87e4eb5b88d84d702cabb319235897a7742523a5e6e3d73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110753325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9620f7c04ea1756d4b574184444934f66492371abeeb1604a2a44280ac5e1ccd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:43:01 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Wed, 05 Aug 2026 01:43:06 GMT
ENV INFLUXDB_VERSION=1.12.4
# Wed, 05 Aug 2026 01:43:06 GMT
ENV INFLUXDB_PR=-1
# Wed, 05 Aug 2026 01:43:06 GMT
ENV INFLUXDB_PV=1.12.4-1
# Wed, 05 Aug 2026 01:43:06 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:43:06 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 05 Aug 2026 01:43:06 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 01:43:06 GMT
VOLUME [/var/lib/influxdb]
# Wed, 05 Aug 2026 01:43:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:43:06 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 05 Aug 2026 01:43:06 GMT
USER influxdb
# Wed, 05 Aug 2026 01:43:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:43:06 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2462bd3c36b8cbb6d477ce18290e7ead5585df5d23c348e7bfc3e0d7e2ca183b`  
		Last Modified: Wed, 05 Aug 2026 01:43:18 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cdb0c30821098e4ca4e8b0291d7879b8e489c90fef2bdefdc06c55d35297ee4`  
		Last Modified: Wed, 05 Aug 2026 01:43:19 GMT  
		Size: 38.8 MB (38754353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a73e6ca2de2a9009e96967a2429a5af18fdf83b911d830a7eb2b4a1df7d6cd8`  
		Last Modified: Wed, 05 Aug 2026 01:43:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae9deea7428a41f5153198c8d865633c2153fd88e2872baa3e4fd09f6fe6ce08`  
		Last Modified: Wed, 05 Aug 2026 01:43:18 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c2ea3d7b2a4a03b01de6adb0fb95a6837b126e5e094fdc4c395a5b64bed59f`  
		Last Modified: Wed, 05 Aug 2026 01:43:19 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12` - unknown; unknown

```console
$ docker pull influxdb@sha256:2c5261e4eb1f037a47f1208214552f85679b2250af5744aa516bfcdc269de91f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4694285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6403ff76858ea22f4fc12e65b68c1eeafde6f1ba592f6924f1acd36391bc7ed`

```dockerfile
```

-	Layers:
	-	`sha256:a2a04d529e88f885f457fad3183c1bcef27e34e66c53935563ec24079508fd7a`  
		Last Modified: Wed, 05 Aug 2026 01:43:18 GMT  
		Size: 4.7 MB (4677661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ac1ebc25589a4fa0a5060aedff52af10dd64cc40abf045dff0153df092d82fc`  
		Last Modified: Wed, 05 Aug 2026 01:43:18 GMT  
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
$ docker pull influxdb@sha256:985fa10273357c918cd6e2626456317e9e041febb9d8b01c3042a3757c18cb4b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12-data` - linux; amd64

```console
$ docker pull influxdb@sha256:79df66280a9cba8d2f2b6059f12f9d9b5dd86ebde79f7e5eb3c5e45dac15e8b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115732878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cc35947f8e9b23417a569c6cc25882143d8f44f0803416127639d516b223c09`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:36:17 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Wed, 05 Aug 2026 01:36:17 GMT
ENV INFLUXDB_PR=
# Wed, 05 Aug 2026 01:36:17 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Wed, 05 Aug 2026 01:36:17 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-data_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:36:17 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 05 Aug 2026 01:36:17 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 01:36:17 GMT
VOLUME [/var/lib/influxdb]
# Wed, 05 Aug 2026 01:36:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:36:17 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 05 Aug 2026 01:36:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:36:17 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b34397a47a5644c85004c55d70d2945c7f37c592375ed6f2a28f07dfae0176`  
		Last Modified: Wed, 05 Aug 2026 01:36:31 GMT  
		Size: 43.2 MB (43189874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1835d6477f32d86f51657f7a6ab7921236e03ec754dafeb3db29a1d7e640a8ea`  
		Last Modified: Wed, 05 Aug 2026 01:36:30 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfaf4b5d7eb303c7317125c2d4dc871b95227468d84b1aa873932b7b67a781b7`  
		Last Modified: Wed, 05 Aug 2026 01:36:29 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b8e434638d6f474a26faeb77668ee1bde2ee8366a719585ab59dd5e29521150`  
		Last Modified: Wed, 05 Aug 2026 01:36:29 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:d51d620f3b2168802092cc39f4801c06227832e4d872aef57101e1af76d0edf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4707349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7a6a00b9c39a258d78b7786652b1fecd22f09d38599c3f86b109c1218399267`

```dockerfile
```

-	Layers:
	-	`sha256:93acb91bc4248b880a985fbb64b3e71d81a8fed14788fad3eb9992ea0ddd68a0`  
		Last Modified: Wed, 05 Aug 2026 01:36:30 GMT  
		Size: 4.7 MB (4693195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2dff111a24266b19f82c9a8985dd3ea8fe68c9380418c4b1fa5e2a0cbb4c2b2`  
		Last Modified: Wed, 05 Aug 2026 01:36:29 GMT  
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
$ docker pull influxdb@sha256:fb1cedac88286739822b3b4d7dc544e606109272761afb561872fa8bec58e0d6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:646c13f3fc0d650f36b1ce0fa256259405fd3f2821e5a663c38907694b2a3710
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91926980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:980b2cdaf67f1111ba78be4aeecfb464ec7d46c38f4e992f6cd03423287bd30d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:36:34 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Wed, 05 Aug 2026 01:36:34 GMT
ENV INFLUXDB_PR=
# Wed, 05 Aug 2026 01:36:34 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Wed, 05 Aug 2026 01:36:34 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-meta_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:36:34 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Wed, 05 Aug 2026 01:36:34 GMT
EXPOSE map[8091/tcp:{}]
# Wed, 05 Aug 2026 01:36:34 GMT
VOLUME [/var/lib/influxdb]
# Wed, 05 Aug 2026 01:36:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:36:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:36:34 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9114c55320ab82f28411dcfcf0aa76030d9383058d29874072c599dfafc1783b`  
		Last Modified: Wed, 05 Aug 2026 01:36:43 GMT  
		Size: 19.4 MB (19385183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c728590de55c3b09b6874f59a90b2414c6c36c9aa1de97b006d928d88db77bb2`  
		Last Modified: Wed, 05 Aug 2026 01:36:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b211b30efa8487874d0d1f3d4e61d96b9680755adee64fc0e9938fa8f6818e8`  
		Last Modified: Wed, 05 Aug 2026 01:36:42 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:bde8fab41a962e574642e2f6e9723bfbf32a4644654c9aedf01fcecbe6a3293b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4605927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbb8a0b672cd801c2f739c2a612ab2e044c483937d800396612559fbdb861766`

```dockerfile
```

-	Layers:
	-	`sha256:b0d2b1fd1611762779d67445774093578d6df4dcf60bfc11a7dd0e812d922c06`  
		Last Modified: Wed, 05 Aug 2026 01:36:42 GMT  
		Size: 4.6 MB (4593263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd7cb6728052dff3c4ddff28d55432392da5b935c4f018a731b34b3ab66a6781`  
		Last Modified: Wed, 05 Aug 2026 01:36:42 GMT  
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
$ docker pull influxdb@sha256:41a5ef94f9cb8d6c99a4d7088daf22735b8d447e8a4be0f40d1cdde2f93867da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.12.4` - linux; amd64

```console
$ docker pull influxdb@sha256:8595f67a9ff2a573ce5500e586858b59ff42a7507bf2c6a72219b8938b45400c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114670522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dcac1bedd74988add412dbee0fb5410e0768a98f9cc5a1ccf059e8beb958534`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:36:10 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Wed, 05 Aug 2026 01:36:15 GMT
ENV INFLUXDB_VERSION=1.12.4
# Wed, 05 Aug 2026 01:36:15 GMT
ENV INFLUXDB_PR=-1
# Wed, 05 Aug 2026 01:36:15 GMT
ENV INFLUXDB_PV=1.12.4-1
# Wed, 05 Aug 2026 01:36:15 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:36:16 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 05 Aug 2026 01:36:16 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 01:36:16 GMT
VOLUME [/var/lib/influxdb]
# Wed, 05 Aug 2026 01:36:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:36:16 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 05 Aug 2026 01:36:16 GMT
USER influxdb
# Wed, 05 Aug 2026 01:36:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:36:16 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf09d131bbd55bd5c3068328b852b416e8b943cf6226217515bc431a21cd427`  
		Last Modified: Wed, 05 Aug 2026 01:36:28 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fab7bc6d68a7d19b0f47bc101c8895df0bcb51ca78ddd07d71bd151fd2238856`  
		Last Modified: Wed, 05 Aug 2026 01:36:29 GMT  
		Size: 42.1 MB (42126383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e2738fba59e9c219cc9e9ab8f80f16375e615559ffb17256de13f96f3ce5d90`  
		Last Modified: Wed, 05 Aug 2026 01:36:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f3ff0d54dbd928663180c588d26c07299ca7709b1896f56eccb1bd8eefeb2eb`  
		Last Modified: Wed, 05 Aug 2026 01:36:28 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc58c54e4c5133b287c8bba998471be28ef8e6d7ccaaced54b2d5c354caaa6b5`  
		Last Modified: Wed, 05 Aug 2026 01:36:29 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.4` - unknown; unknown

```console
$ docker pull influxdb@sha256:70c4dd28004e4ef6927c0e785f65450ccd988d97d0b3b5c28850bf489bb3da05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4694734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c820d55c9f94185389a92589c4324bf2201527ec2bde674407f988176450a7f6`

```dockerfile
```

-	Layers:
	-	`sha256:6fb9ef1ccc415132aad7c68bd637f78cbc0f199ee330fa261d12f8fd9a7f4431`  
		Last Modified: Wed, 05 Aug 2026 01:36:28 GMT  
		Size: 4.7 MB (4678205 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e6c6e30ff7ca9d0756458d0960953c5610b4607e4dd9114e7cd7e5ba9767fbf`  
		Last Modified: Wed, 05 Aug 2026 01:36:28 GMT  
		Size: 16.5 KB (16529 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.12.4` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:22d97e004cef3967d87e4eb5b88d84d702cabb319235897a7742523a5e6e3d73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110753325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9620f7c04ea1756d4b574184444934f66492371abeeb1604a2a44280ac5e1ccd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:43:01 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Wed, 05 Aug 2026 01:43:06 GMT
ENV INFLUXDB_VERSION=1.12.4
# Wed, 05 Aug 2026 01:43:06 GMT
ENV INFLUXDB_PR=-1
# Wed, 05 Aug 2026 01:43:06 GMT
ENV INFLUXDB_PV=1.12.4-1
# Wed, 05 Aug 2026 01:43:06 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:43:06 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 05 Aug 2026 01:43:06 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 01:43:06 GMT
VOLUME [/var/lib/influxdb]
# Wed, 05 Aug 2026 01:43:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:43:06 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 05 Aug 2026 01:43:06 GMT
USER influxdb
# Wed, 05 Aug 2026 01:43:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:43:06 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2462bd3c36b8cbb6d477ce18290e7ead5585df5d23c348e7bfc3e0d7e2ca183b`  
		Last Modified: Wed, 05 Aug 2026 01:43:18 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cdb0c30821098e4ca4e8b0291d7879b8e489c90fef2bdefdc06c55d35297ee4`  
		Last Modified: Wed, 05 Aug 2026 01:43:19 GMT  
		Size: 38.8 MB (38754353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a73e6ca2de2a9009e96967a2429a5af18fdf83b911d830a7eb2b4a1df7d6cd8`  
		Last Modified: Wed, 05 Aug 2026 01:43:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae9deea7428a41f5153198c8d865633c2153fd88e2872baa3e4fd09f6fe6ce08`  
		Last Modified: Wed, 05 Aug 2026 01:43:18 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c2ea3d7b2a4a03b01de6adb0fb95a6837b126e5e094fdc4c395a5b64bed59f`  
		Last Modified: Wed, 05 Aug 2026 01:43:19 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.4` - unknown; unknown

```console
$ docker pull influxdb@sha256:2c5261e4eb1f037a47f1208214552f85679b2250af5744aa516bfcdc269de91f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4694285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6403ff76858ea22f4fc12e65b68c1eeafde6f1ba592f6924f1acd36391bc7ed`

```dockerfile
```

-	Layers:
	-	`sha256:a2a04d529e88f885f457fad3183c1bcef27e34e66c53935563ec24079508fd7a`  
		Last Modified: Wed, 05 Aug 2026 01:43:18 GMT  
		Size: 4.7 MB (4677661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ac1ebc25589a4fa0a5060aedff52af10dd64cc40abf045dff0153df092d82fc`  
		Last Modified: Wed, 05 Aug 2026 01:43:18 GMT  
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
$ docker pull influxdb@sha256:985fa10273357c918cd6e2626456317e9e041febb9d8b01c3042a3757c18cb4b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12.4-data` - linux; amd64

```console
$ docker pull influxdb@sha256:79df66280a9cba8d2f2b6059f12f9d9b5dd86ebde79f7e5eb3c5e45dac15e8b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115732878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cc35947f8e9b23417a569c6cc25882143d8f44f0803416127639d516b223c09`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:36:17 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Wed, 05 Aug 2026 01:36:17 GMT
ENV INFLUXDB_PR=
# Wed, 05 Aug 2026 01:36:17 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Wed, 05 Aug 2026 01:36:17 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-data_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:36:17 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 05 Aug 2026 01:36:17 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 01:36:17 GMT
VOLUME [/var/lib/influxdb]
# Wed, 05 Aug 2026 01:36:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:36:17 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 05 Aug 2026 01:36:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:36:17 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b34397a47a5644c85004c55d70d2945c7f37c592375ed6f2a28f07dfae0176`  
		Last Modified: Wed, 05 Aug 2026 01:36:31 GMT  
		Size: 43.2 MB (43189874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1835d6477f32d86f51657f7a6ab7921236e03ec754dafeb3db29a1d7e640a8ea`  
		Last Modified: Wed, 05 Aug 2026 01:36:30 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfaf4b5d7eb303c7317125c2d4dc871b95227468d84b1aa873932b7b67a781b7`  
		Last Modified: Wed, 05 Aug 2026 01:36:29 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b8e434638d6f474a26faeb77668ee1bde2ee8366a719585ab59dd5e29521150`  
		Last Modified: Wed, 05 Aug 2026 01:36:29 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.4-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:d51d620f3b2168802092cc39f4801c06227832e4d872aef57101e1af76d0edf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4707349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7a6a00b9c39a258d78b7786652b1fecd22f09d38599c3f86b109c1218399267`

```dockerfile
```

-	Layers:
	-	`sha256:93acb91bc4248b880a985fbb64b3e71d81a8fed14788fad3eb9992ea0ddd68a0`  
		Last Modified: Wed, 05 Aug 2026 01:36:30 GMT  
		Size: 4.7 MB (4693195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2dff111a24266b19f82c9a8985dd3ea8fe68c9380418c4b1fa5e2a0cbb4c2b2`  
		Last Modified: Wed, 05 Aug 2026 01:36:29 GMT  
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
$ docker pull influxdb@sha256:fb1cedac88286739822b3b4d7dc544e606109272761afb561872fa8bec58e0d6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12.4-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:646c13f3fc0d650f36b1ce0fa256259405fd3f2821e5a663c38907694b2a3710
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91926980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:980b2cdaf67f1111ba78be4aeecfb464ec7d46c38f4e992f6cd03423287bd30d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:36:34 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Wed, 05 Aug 2026 01:36:34 GMT
ENV INFLUXDB_PR=
# Wed, 05 Aug 2026 01:36:34 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Wed, 05 Aug 2026 01:36:34 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-meta_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:36:34 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Wed, 05 Aug 2026 01:36:34 GMT
EXPOSE map[8091/tcp:{}]
# Wed, 05 Aug 2026 01:36:34 GMT
VOLUME [/var/lib/influxdb]
# Wed, 05 Aug 2026 01:36:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:36:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:36:34 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9114c55320ab82f28411dcfcf0aa76030d9383058d29874072c599dfafc1783b`  
		Last Modified: Wed, 05 Aug 2026 01:36:43 GMT  
		Size: 19.4 MB (19385183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c728590de55c3b09b6874f59a90b2414c6c36c9aa1de97b006d928d88db77bb2`  
		Last Modified: Wed, 05 Aug 2026 01:36:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b211b30efa8487874d0d1f3d4e61d96b9680755adee64fc0e9938fa8f6818e8`  
		Last Modified: Wed, 05 Aug 2026 01:36:42 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.4-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:bde8fab41a962e574642e2f6e9723bfbf32a4644654c9aedf01fcecbe6a3293b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4605927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbb8a0b672cd801c2f739c2a612ab2e044c483937d800396612559fbdb861766`

```dockerfile
```

-	Layers:
	-	`sha256:b0d2b1fd1611762779d67445774093578d6df4dcf60bfc11a7dd0e812d922c06`  
		Last Modified: Wed, 05 Aug 2026 01:36:42 GMT  
		Size: 4.6 MB (4593263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd7cb6728052dff3c4ddff28d55432392da5b935c4f018a731b34b3ab66a6781`  
		Last Modified: Wed, 05 Aug 2026 01:36:42 GMT  
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
$ docker pull influxdb@sha256:270145207873eb426e15a211063532fc6f966f4ffb6edf4114ffac83ac4696eb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2` - linux; amd64

```console
$ docker pull influxdb@sha256:c160da0e68f0b71e09062960b581b04c27fafadea2f34c591900d81ac6277810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110798728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c527fb7ae1cf7f4903f8db80295cbd0412841a71695c9f3983096c7d8b1e4dd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:46:11 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:46:12 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 05 Aug 2026 00:46:12 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Wed, 05 Aug 2026 00:46:15 GMT
ENV INFLUXDB_VERSION=2.9.1
# Wed, 05 Aug 2026 00:46:15 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 05 Aug 2026 00:46:15 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Wed, 05 Aug 2026 00:46:17 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 05 Aug 2026 00:46:17 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 05 Aug 2026 00:46:17 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 05 Aug 2026 00:46:17 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 05 Aug 2026 00:46:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:46:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:46:17 GMT
CMD ["influxd"]
# Wed, 05 Aug 2026 00:46:17 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 00:46:17 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 05 Aug 2026 00:46:17 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 05 Aug 2026 00:46:17 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 05 Aug 2026 00:46:17 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:306162022267f991ddb47b1556edcb107bfeb728b90c90a969b855417ec30ea3`  
		Last Modified: Wed, 05 Aug 2026 00:46:30 GMT  
		Size: 9.8 MB (9800760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345be78b99ab67caf7dc3072658eb7532b9d7968a2d24d849872e5d4c0e4d5df`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 3.8 MB (3822787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c1053fc78d03fc05c8ca18fee113f8a8def9e5431eaa45a401e3b586d3b3db`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 3.2 KB (3230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb8e1cf607f226abea74d6182ef04b4a2b84b84f9a1c183eeaf48f99ed3eb5f`  
		Last Modified: Wed, 05 Aug 2026 00:46:31 GMT  
		Size: 56.5 MB (56510585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd06a8bef39676fe9d8f93deea4843107dcb2bb562f25f780da7d5b9d26453d`  
		Last Modified: Wed, 05 Aug 2026 00:46:31 GMT  
		Size: 12.4 MB (12421833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3139e79a3d86ba9a42a4d94c3c17a055484be959464636030fe91b3febc1814`  
		Last Modified: Wed, 05 Aug 2026 00:46:31 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e786ae76bbc8acdd3b7bb906b52b8edf527c0d3cb905220e5a5eecf89200053`  
		Last Modified: Wed, 05 Aug 2026 00:46:31 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0b4c78ae6e3d8a070ed35d1dc6f2637a9bfa697cde0b21e473732a7ee1e2f1`  
		Last Modified: Wed, 05 Aug 2026 00:46:32 GMT  
		Size: 6.5 KB (6500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2` - unknown; unknown

```console
$ docker pull influxdb@sha256:1990ed9ab92551e190ce94fe0ca70e5b4d91efbe1ad1741be45c3c1059b9bcf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2988096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec597e078c219bbee13503a268d674291f0a8784eeacb501d0021ed65e02777`

```dockerfile
```

-	Layers:
	-	`sha256:fd5fd42aa4efa1ed706aa5d7c7f4651846a976bdd643dc5db30b252c0fd64bad`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 3.0 MB (2959483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:055d1cef13c1da8d72d968accb34158fb082676017c33d683c48b5b0a91a6397`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 28.6 KB (28613 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:cecd0b86fead1a635d4fccbb8517a1ad8f00d3b62724da52270e59d6bd6c85ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.3 MB (106332791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a09c9d1777080e807ef479f5769a13f85296ef8ad6916883c7cdf60b2b88f51e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:48:43 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:44 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 05 Aug 2026 00:48:44 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Wed, 05 Aug 2026 00:48:47 GMT
ENV INFLUXDB_VERSION=2.9.1
# Wed, 05 Aug 2026 00:48:47 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 05 Aug 2026 00:48:47 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Wed, 05 Aug 2026 00:48:49 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 05 Aug 2026 00:48:49 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 05 Aug 2026 00:48:49 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 05 Aug 2026 00:48:49 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 05 Aug 2026 00:48:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:48:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:48:49 GMT
CMD ["influxd"]
# Wed, 05 Aug 2026 00:48:49 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 00:48:49 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 05 Aug 2026 00:48:49 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 05 Aug 2026 00:48:49 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 05 Aug 2026 00:48:49 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c221d2eae139c19c75509b8efdd669a2f3d5b9bc581ab09facf08d8ce3ce529`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
		Size: 9.6 MB (9629144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc7d4b1b3b5811e3624b99d5b5d4b3bf1c27dfbd5572b79e2ed33e086b97421a`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
		Size: 3.5 MB (3459176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dc954ff1a3efc21a488deaaa8c28b2cb215430801968b8d749141452f1aa0d0`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
		Size: 3.2 KB (3232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f86acf488c45989ab5cbdf02d0af0d4b3114bec7048808a3b3b234bc4524849`  
		Last Modified: Wed, 05 Aug 2026 00:49:02 GMT  
		Size: 53.6 MB (53636819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c29e3cbe57b3443eae7016539dbe15f8dbc14bcaa43b57e727cfdc8a671f605`  
		Last Modified: Wed, 05 Aug 2026 00:49:02 GMT  
		Size: 11.5 MB (11480277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80b973998140706e9878b13162255872c7f9fc20276bf158b45e36cde2ff6bbd`  
		Last Modified: Wed, 05 Aug 2026 00:49:02 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d73be13e9ee5e93f88c5dec6408c2416d944881cb90fbcbe437f69a1f478062`  
		Last Modified: Wed, 05 Aug 2026 00:49:03 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70573cff4e882f1a69bd52b30737ec3144b842e8a5ed7918f371cd48b4ea3234`  
		Last Modified: Wed, 05 Aug 2026 00:49:04 GMT  
		Size: 6.5 KB (6499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2` - unknown; unknown

```console
$ docker pull influxdb@sha256:da6388653411bdcca3781956dba43024c31b1071a156afa5747df3a66c27e65e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2987753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813975feafb4614eeb2d28aac0e0b3318729bf48dccaaaec53262f582f55d00c`

```dockerfile
```

-	Layers:
	-	`sha256:6f937034c0c918de17ae01ad4980e03db91d7e8f84d2df35797d671c6798b8a7`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
		Size: 3.0 MB (2958961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:797a07368a2c070b745acdd75baaa75dccec89cf87a2efaa1200876a15aae573`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
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
$ docker pull influxdb@sha256:09a5361809c771d863bcfa844a09598a82a6d9bbba1c9a9e2fa312e310572a14
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.8` - linux; amd64

```console
$ docker pull influxdb@sha256:c4afbbe73c86b776f7c3d72b99c6724edd2e4d7bd8f2aee19c9f54571f9f114b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107239497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81ed8c059b9afcc6f3b7eb7cc88252418c3f701ebcb2bc72b26b7f0adea48470`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:46:08 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:46:09 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v2.8.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '21fda0a4dc3c779c42737eca4b37e4f187d7ab91ba6301eed97b801af84a9ea2  /usr/local/bin/dasel' ;;       arm64) echo '2c75e63f9884c37578f48788819dda5a5a5c32ec6c4a663eefc19839f44d6291  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel --version # buildkit
# Wed, 05 Aug 2026 00:46:09 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Wed, 05 Aug 2026 00:46:11 GMT
ENV GOSU_VER=1.19
# Wed, 05 Aug 2026 00:46:11 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     curl -fLo /usr/local/bin/gosu     "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-${arch}"          -fLo /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-${arch}.asc" &&     gpg --batch --verify /usr/local/bin/gosu.asc                          /usr/local/bin/gosu &&     rm -rf /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true # buildkit
# Wed, 05 Aug 2026 00:46:11 GMT
ENV INFLUXDB_VERSION=2.8.0
# Wed, 05 Aug 2026 00:46:11 GMT
ENV INFLUXDB_PR=-2
# Wed, 05 Aug 2026 00:46:11 GMT
ENV INFLUXDB_PV=2.8.0-2
# Wed, 05 Aug 2026 00:46:13 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/usr/bin/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 05 Aug 2026 00:46:13 GMT
ENV INFLUX_CLI_VERSION=2.7.5
# Wed, 05 Aug 2026 00:46:15 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 05 Aug 2026 00:46:15 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 05 Aug 2026 00:46:15 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 05 Aug 2026 00:46:15 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 05 Aug 2026 00:46:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:46:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:46:15 GMT
CMD ["influxd"]
# Wed, 05 Aug 2026 00:46:15 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 00:46:15 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 05 Aug 2026 00:46:15 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 05 Aug 2026 00:46:15 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 05 Aug 2026 00:46:15 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f6bf1435feb1170f494dab687619e6759141bd71c2909546e9042eb84638a51`  
		Last Modified: Wed, 05 Aug 2026 00:46:27 GMT  
		Size: 9.8 MB (9800804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea2a1991392638f3911de3d93117f633c120e0ce3dba00d8d862f0591cf1fd7`  
		Last Modified: Wed, 05 Aug 2026 00:46:26 GMT  
		Size: 6.2 MB (6156973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36977c3861bdd6536280f4dacf85cb20aeb86f264bd0efc06dc4d8884aba8a36`  
		Last Modified: Wed, 05 Aug 2026 00:46:26 GMT  
		Size: 3.2 KB (3232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df5ac717eab884e67eb787a8f2572814e798bd402b50e5e865817c69c99332b`  
		Last Modified: Wed, 05 Aug 2026 00:46:26 GMT  
		Size: 811.5 KB (811474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4a9045afdd2057ff7f0c77a239a048670a9d50f37cfb6d775e351443cb2eb3a`  
		Last Modified: Wed, 05 Aug 2026 00:46:28 GMT  
		Size: 50.5 MB (50451813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d49c110e0e4640cda69e7f7d3877cd6ca59ff5c61f69dacb6bad04a80f491b7`  
		Last Modified: Wed, 05 Aug 2026 00:46:28 GMT  
		Size: 11.8 MB (11775880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc8f9e577a48a7556511296615a2d3c39b67c1259addfcb370598c818eb795d`  
		Last Modified: Wed, 05 Aug 2026 00:46:28 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fc048f7fed6f4c06448a434e9190a723ebe149aad4444c185e0586e26969fb7`  
		Last Modified: Wed, 05 Aug 2026 00:46:28 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70521622334b8ac056c10bdc1ca4f06fc178a2ba8e9b635a2c15f041718d30bb`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 6.3 KB (6287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.8` - unknown; unknown

```console
$ docker pull influxdb@sha256:53cf944647a7fd9022707e924724fe9166eeee4cc2e1d717cb80a23c23504bd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2966742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42b94b2e10f3fe71420f40808c78cf3d2382b3786275353b98843a204988e57c`

```dockerfile
```

-	Layers:
	-	`sha256:8f605fda48af40f3f88409a4c621eb6622cd539c4ec63ce653d43fc8a82f0b2e`  
		Last Modified: Wed, 05 Aug 2026 00:46:26 GMT  
		Size: 2.9 MB (2933715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93ca97682abfb2ef0f68f91dea4205dbfac957237fd9c82a1e4181000d80906a`  
		Last Modified: Wed, 05 Aug 2026 00:46:26 GMT  
		Size: 33.0 KB (33027 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.8` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:b05598b751acbca34f571fadd38b8998957fd601006b3e75ce6b758f6778e6ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.6 MB (103643045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cdd6d199badd5bdb1b7c2e1603ce7b8382182f9341e07c1b9665e7afae9dc19`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:48:23 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:24 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v2.8.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '21fda0a4dc3c779c42737eca4b37e4f187d7ab91ba6301eed97b801af84a9ea2  /usr/local/bin/dasel' ;;       arm64) echo '2c75e63f9884c37578f48788819dda5a5a5c32ec6c4a663eefc19839f44d6291  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel --version # buildkit
# Wed, 05 Aug 2026 00:48:24 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Wed, 05 Aug 2026 00:48:26 GMT
ENV GOSU_VER=1.19
# Wed, 05 Aug 2026 00:48:26 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     curl -fLo /usr/local/bin/gosu     "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-${arch}"          -fLo /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-${arch}.asc" &&     gpg --batch --verify /usr/local/bin/gosu.asc                          /usr/local/bin/gosu &&     rm -rf /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true # buildkit
# Wed, 05 Aug 2026 00:48:26 GMT
ENV INFLUXDB_VERSION=2.8.0
# Wed, 05 Aug 2026 00:48:26 GMT
ENV INFLUXDB_PR=-2
# Wed, 05 Aug 2026 00:48:26 GMT
ENV INFLUXDB_PV=2.8.0-2
# Wed, 05 Aug 2026 00:48:29 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/usr/bin/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 05 Aug 2026 00:48:29 GMT
ENV INFLUX_CLI_VERSION=2.7.5
# Wed, 05 Aug 2026 00:48:30 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 05 Aug 2026 00:48:31 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 05 Aug 2026 00:48:31 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 05 Aug 2026 00:48:31 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 05 Aug 2026 00:48:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:48:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:48:31 GMT
CMD ["influxd"]
# Wed, 05 Aug 2026 00:48:31 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 00:48:31 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 05 Aug 2026 00:48:31 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 05 Aug 2026 00:48:31 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 05 Aug 2026 00:48:31 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3e4aa53fb2daf66de4d5267aaa824639b2f98a86e56a27a4daa9e33c0953bea`  
		Last Modified: Wed, 05 Aug 2026 00:48:41 GMT  
		Size: 9.6 MB (9629145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf857b521bc5be29582e9bb54a5070cd29430f0b79ce1ebe0d30b5ce39ba338e`  
		Last Modified: Wed, 05 Aug 2026 00:48:41 GMT  
		Size: 5.8 MB (5790417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57222b100db7741fe48df8f7c17ce0876cd2bd22401aea9cef25998c4c77cb2f`  
		Last Modified: Wed, 05 Aug 2026 00:48:41 GMT  
		Size: 3.2 KB (3231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4166ef5a846ca33bfa6142479fd981d543e683fe4b71489eb11b0be0724d38f`  
		Last Modified: Wed, 05 Aug 2026 00:48:41 GMT  
		Size: 766.4 KB (766376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616f4c0d5750ab65ad039d547b86d6f8504314352075c3a1ea1ea3f68e172775`  
		Last Modified: Wed, 05 Aug 2026 00:48:44 GMT  
		Size: 48.2 MB (48229549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0330a35110e53fa2aedb4b090aae22ecc95ee1d35af2e36f983a34da41a7dde0`  
		Last Modified: Wed, 05 Aug 2026 00:48:43 GMT  
		Size: 11.1 MB (11100394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76629cd0e6507489d0d2b43c728d358ba1372805b607dc69e5adb5d11222b7e`  
		Last Modified: Wed, 05 Aug 2026 00:48:43 GMT  
		Size: 212.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f626ad9a40e30df47b64dd1227e3b3b54c3c1ea120a60e3b5cdd0852c9a2d1e1`  
		Last Modified: Wed, 05 Aug 2026 00:48:43 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a4465c2a2c42c980f87092b1e9f8f6db81c6dfcf775a7ecc955e084ae1d2ef1`  
		Last Modified: Wed, 05 Aug 2026 00:48:44 GMT  
		Size: 6.3 KB (6285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.8` - unknown; unknown

```console
$ docker pull influxdb@sha256:a759b4eb14441e22d16085dc11466ad8613465a088ebcdeda47ab8b6c6d91490
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2966368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b75ac8f35df2d2c5c131b012296a5f8f2b8a54e4179dbe0a76ef0d0aa25448a4`

```dockerfile
```

-	Layers:
	-	`sha256:ff31b9bc8cf7c6c94954d689c32e37b2eddcea276e8e22abc8588012a75918c5`  
		Last Modified: Wed, 05 Aug 2026 00:48:41 GMT  
		Size: 2.9 MB (2933171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53df558f7e0aa2fdebdc22c8b8e318e55db0f73a4f52f3f7b22d97e79757de9b`  
		Last Modified: Wed, 05 Aug 2026 00:48:41 GMT  
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
$ docker pull influxdb@sha256:09a5361809c771d863bcfa844a09598a82a6d9bbba1c9a9e2fa312e310572a14
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.8.0` - linux; amd64

```console
$ docker pull influxdb@sha256:c4afbbe73c86b776f7c3d72b99c6724edd2e4d7bd8f2aee19c9f54571f9f114b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107239497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81ed8c059b9afcc6f3b7eb7cc88252418c3f701ebcb2bc72b26b7f0adea48470`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:46:08 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:46:09 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v2.8.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '21fda0a4dc3c779c42737eca4b37e4f187d7ab91ba6301eed97b801af84a9ea2  /usr/local/bin/dasel' ;;       arm64) echo '2c75e63f9884c37578f48788819dda5a5a5c32ec6c4a663eefc19839f44d6291  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel --version # buildkit
# Wed, 05 Aug 2026 00:46:09 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Wed, 05 Aug 2026 00:46:11 GMT
ENV GOSU_VER=1.19
# Wed, 05 Aug 2026 00:46:11 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     curl -fLo /usr/local/bin/gosu     "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-${arch}"          -fLo /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-${arch}.asc" &&     gpg --batch --verify /usr/local/bin/gosu.asc                          /usr/local/bin/gosu &&     rm -rf /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true # buildkit
# Wed, 05 Aug 2026 00:46:11 GMT
ENV INFLUXDB_VERSION=2.8.0
# Wed, 05 Aug 2026 00:46:11 GMT
ENV INFLUXDB_PR=-2
# Wed, 05 Aug 2026 00:46:11 GMT
ENV INFLUXDB_PV=2.8.0-2
# Wed, 05 Aug 2026 00:46:13 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/usr/bin/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 05 Aug 2026 00:46:13 GMT
ENV INFLUX_CLI_VERSION=2.7.5
# Wed, 05 Aug 2026 00:46:15 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 05 Aug 2026 00:46:15 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 05 Aug 2026 00:46:15 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 05 Aug 2026 00:46:15 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 05 Aug 2026 00:46:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:46:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:46:15 GMT
CMD ["influxd"]
# Wed, 05 Aug 2026 00:46:15 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 00:46:15 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 05 Aug 2026 00:46:15 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 05 Aug 2026 00:46:15 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 05 Aug 2026 00:46:15 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f6bf1435feb1170f494dab687619e6759141bd71c2909546e9042eb84638a51`  
		Last Modified: Wed, 05 Aug 2026 00:46:27 GMT  
		Size: 9.8 MB (9800804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea2a1991392638f3911de3d93117f633c120e0ce3dba00d8d862f0591cf1fd7`  
		Last Modified: Wed, 05 Aug 2026 00:46:26 GMT  
		Size: 6.2 MB (6156973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36977c3861bdd6536280f4dacf85cb20aeb86f264bd0efc06dc4d8884aba8a36`  
		Last Modified: Wed, 05 Aug 2026 00:46:26 GMT  
		Size: 3.2 KB (3232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df5ac717eab884e67eb787a8f2572814e798bd402b50e5e865817c69c99332b`  
		Last Modified: Wed, 05 Aug 2026 00:46:26 GMT  
		Size: 811.5 KB (811474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4a9045afdd2057ff7f0c77a239a048670a9d50f37cfb6d775e351443cb2eb3a`  
		Last Modified: Wed, 05 Aug 2026 00:46:28 GMT  
		Size: 50.5 MB (50451813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d49c110e0e4640cda69e7f7d3877cd6ca59ff5c61f69dacb6bad04a80f491b7`  
		Last Modified: Wed, 05 Aug 2026 00:46:28 GMT  
		Size: 11.8 MB (11775880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc8f9e577a48a7556511296615a2d3c39b67c1259addfcb370598c818eb795d`  
		Last Modified: Wed, 05 Aug 2026 00:46:28 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fc048f7fed6f4c06448a434e9190a723ebe149aad4444c185e0586e26969fb7`  
		Last Modified: Wed, 05 Aug 2026 00:46:28 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70521622334b8ac056c10bdc1ca4f06fc178a2ba8e9b635a2c15f041718d30bb`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 6.3 KB (6287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.8.0` - unknown; unknown

```console
$ docker pull influxdb@sha256:53cf944647a7fd9022707e924724fe9166eeee4cc2e1d717cb80a23c23504bd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2966742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42b94b2e10f3fe71420f40808c78cf3d2382b3786275353b98843a204988e57c`

```dockerfile
```

-	Layers:
	-	`sha256:8f605fda48af40f3f88409a4c621eb6622cd539c4ec63ce653d43fc8a82f0b2e`  
		Last Modified: Wed, 05 Aug 2026 00:46:26 GMT  
		Size: 2.9 MB (2933715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93ca97682abfb2ef0f68f91dea4205dbfac957237fd9c82a1e4181000d80906a`  
		Last Modified: Wed, 05 Aug 2026 00:46:26 GMT  
		Size: 33.0 KB (33027 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.8.0` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:b05598b751acbca34f571fadd38b8998957fd601006b3e75ce6b758f6778e6ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.6 MB (103643045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cdd6d199badd5bdb1b7c2e1603ce7b8382182f9341e07c1b9665e7afae9dc19`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:48:23 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:24 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v2.8.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '21fda0a4dc3c779c42737eca4b37e4f187d7ab91ba6301eed97b801af84a9ea2  /usr/local/bin/dasel' ;;       arm64) echo '2c75e63f9884c37578f48788819dda5a5a5c32ec6c4a663eefc19839f44d6291  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel --version # buildkit
# Wed, 05 Aug 2026 00:48:24 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Wed, 05 Aug 2026 00:48:26 GMT
ENV GOSU_VER=1.19
# Wed, 05 Aug 2026 00:48:26 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     curl -fLo /usr/local/bin/gosu     "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-${arch}"          -fLo /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VER/gosu-${arch}.asc" &&     gpg --batch --verify /usr/local/bin/gosu.asc                          /usr/local/bin/gosu &&     rm -rf /usr/local/bin/gosu.asc &&     chmod +x /usr/local/bin/gosu &&     gosu --version &&     gosu nobody true # buildkit
# Wed, 05 Aug 2026 00:48:26 GMT
ENV INFLUXDB_VERSION=2.8.0
# Wed, 05 Aug 2026 00:48:26 GMT
ENV INFLUXDB_PR=-2
# Wed, 05 Aug 2026 00:48:26 GMT
ENV INFLUXDB_PV=2.8.0-2
# Wed, 05 Aug 2026 00:48:29 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/usr/bin/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_PV}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 05 Aug 2026 00:48:29 GMT
ENV INFLUX_CLI_VERSION=2.7.5
# Wed, 05 Aug 2026 00:48:30 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 05 Aug 2026 00:48:31 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 05 Aug 2026 00:48:31 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 05 Aug 2026 00:48:31 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 05 Aug 2026 00:48:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:48:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:48:31 GMT
CMD ["influxd"]
# Wed, 05 Aug 2026 00:48:31 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 00:48:31 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 05 Aug 2026 00:48:31 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 05 Aug 2026 00:48:31 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 05 Aug 2026 00:48:31 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3e4aa53fb2daf66de4d5267aaa824639b2f98a86e56a27a4daa9e33c0953bea`  
		Last Modified: Wed, 05 Aug 2026 00:48:41 GMT  
		Size: 9.6 MB (9629145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf857b521bc5be29582e9bb54a5070cd29430f0b79ce1ebe0d30b5ce39ba338e`  
		Last Modified: Wed, 05 Aug 2026 00:48:41 GMT  
		Size: 5.8 MB (5790417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57222b100db7741fe48df8f7c17ce0876cd2bd22401aea9cef25998c4c77cb2f`  
		Last Modified: Wed, 05 Aug 2026 00:48:41 GMT  
		Size: 3.2 KB (3231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4166ef5a846ca33bfa6142479fd981d543e683fe4b71489eb11b0be0724d38f`  
		Last Modified: Wed, 05 Aug 2026 00:48:41 GMT  
		Size: 766.4 KB (766376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616f4c0d5750ab65ad039d547b86d6f8504314352075c3a1ea1ea3f68e172775`  
		Last Modified: Wed, 05 Aug 2026 00:48:44 GMT  
		Size: 48.2 MB (48229549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0330a35110e53fa2aedb4b090aae22ecc95ee1d35af2e36f983a34da41a7dde0`  
		Last Modified: Wed, 05 Aug 2026 00:48:43 GMT  
		Size: 11.1 MB (11100394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76629cd0e6507489d0d2b43c728d358ba1372805b607dc69e5adb5d11222b7e`  
		Last Modified: Wed, 05 Aug 2026 00:48:43 GMT  
		Size: 212.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f626ad9a40e30df47b64dd1227e3b3b54c3c1ea120a60e3b5cdd0852c9a2d1e1`  
		Last Modified: Wed, 05 Aug 2026 00:48:43 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a4465c2a2c42c980f87092b1e9f8f6db81c6dfcf775a7ecc955e084ae1d2ef1`  
		Last Modified: Wed, 05 Aug 2026 00:48:44 GMT  
		Size: 6.3 KB (6285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.8.0` - unknown; unknown

```console
$ docker pull influxdb@sha256:a759b4eb14441e22d16085dc11466ad8613465a088ebcdeda47ab8b6c6d91490
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2966368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b75ac8f35df2d2c5c131b012296a5f8f2b8a54e4179dbe0a76ef0d0aa25448a4`

```dockerfile
```

-	Layers:
	-	`sha256:ff31b9bc8cf7c6c94954d689c32e37b2eddcea276e8e22abc8588012a75918c5`  
		Last Modified: Wed, 05 Aug 2026 00:48:41 GMT  
		Size: 2.9 MB (2933171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53df558f7e0aa2fdebdc22c8b8e318e55db0f73a4f52f3f7b22d97e79757de9b`  
		Last Modified: Wed, 05 Aug 2026 00:48:41 GMT  
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
$ docker pull influxdb@sha256:270145207873eb426e15a211063532fc6f966f4ffb6edf4114ffac83ac4696eb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.9` - linux; amd64

```console
$ docker pull influxdb@sha256:c160da0e68f0b71e09062960b581b04c27fafadea2f34c591900d81ac6277810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110798728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c527fb7ae1cf7f4903f8db80295cbd0412841a71695c9f3983096c7d8b1e4dd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:46:11 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:46:12 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 05 Aug 2026 00:46:12 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Wed, 05 Aug 2026 00:46:15 GMT
ENV INFLUXDB_VERSION=2.9.1
# Wed, 05 Aug 2026 00:46:15 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 05 Aug 2026 00:46:15 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Wed, 05 Aug 2026 00:46:17 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 05 Aug 2026 00:46:17 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 05 Aug 2026 00:46:17 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 05 Aug 2026 00:46:17 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 05 Aug 2026 00:46:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:46:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:46:17 GMT
CMD ["influxd"]
# Wed, 05 Aug 2026 00:46:17 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 00:46:17 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 05 Aug 2026 00:46:17 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 05 Aug 2026 00:46:17 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 05 Aug 2026 00:46:17 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:306162022267f991ddb47b1556edcb107bfeb728b90c90a969b855417ec30ea3`  
		Last Modified: Wed, 05 Aug 2026 00:46:30 GMT  
		Size: 9.8 MB (9800760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345be78b99ab67caf7dc3072658eb7532b9d7968a2d24d849872e5d4c0e4d5df`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 3.8 MB (3822787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c1053fc78d03fc05c8ca18fee113f8a8def9e5431eaa45a401e3b586d3b3db`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 3.2 KB (3230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb8e1cf607f226abea74d6182ef04b4a2b84b84f9a1c183eeaf48f99ed3eb5f`  
		Last Modified: Wed, 05 Aug 2026 00:46:31 GMT  
		Size: 56.5 MB (56510585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd06a8bef39676fe9d8f93deea4843107dcb2bb562f25f780da7d5b9d26453d`  
		Last Modified: Wed, 05 Aug 2026 00:46:31 GMT  
		Size: 12.4 MB (12421833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3139e79a3d86ba9a42a4d94c3c17a055484be959464636030fe91b3febc1814`  
		Last Modified: Wed, 05 Aug 2026 00:46:31 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e786ae76bbc8acdd3b7bb906b52b8edf527c0d3cb905220e5a5eecf89200053`  
		Last Modified: Wed, 05 Aug 2026 00:46:31 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0b4c78ae6e3d8a070ed35d1dc6f2637a9bfa697cde0b21e473732a7ee1e2f1`  
		Last Modified: Wed, 05 Aug 2026 00:46:32 GMT  
		Size: 6.5 KB (6500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9` - unknown; unknown

```console
$ docker pull influxdb@sha256:1990ed9ab92551e190ce94fe0ca70e5b4d91efbe1ad1741be45c3c1059b9bcf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2988096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec597e078c219bbee13503a268d674291f0a8784eeacb501d0021ed65e02777`

```dockerfile
```

-	Layers:
	-	`sha256:fd5fd42aa4efa1ed706aa5d7c7f4651846a976bdd643dc5db30b252c0fd64bad`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 3.0 MB (2959483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:055d1cef13c1da8d72d968accb34158fb082676017c33d683c48b5b0a91a6397`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 28.6 KB (28613 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.9` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:cecd0b86fead1a635d4fccbb8517a1ad8f00d3b62724da52270e59d6bd6c85ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.3 MB (106332791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a09c9d1777080e807ef479f5769a13f85296ef8ad6916883c7cdf60b2b88f51e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:48:43 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:44 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 05 Aug 2026 00:48:44 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Wed, 05 Aug 2026 00:48:47 GMT
ENV INFLUXDB_VERSION=2.9.1
# Wed, 05 Aug 2026 00:48:47 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 05 Aug 2026 00:48:47 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Wed, 05 Aug 2026 00:48:49 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 05 Aug 2026 00:48:49 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 05 Aug 2026 00:48:49 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 05 Aug 2026 00:48:49 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 05 Aug 2026 00:48:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:48:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:48:49 GMT
CMD ["influxd"]
# Wed, 05 Aug 2026 00:48:49 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 00:48:49 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 05 Aug 2026 00:48:49 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 05 Aug 2026 00:48:49 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 05 Aug 2026 00:48:49 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c221d2eae139c19c75509b8efdd669a2f3d5b9bc581ab09facf08d8ce3ce529`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
		Size: 9.6 MB (9629144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc7d4b1b3b5811e3624b99d5b5d4b3bf1c27dfbd5572b79e2ed33e086b97421a`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
		Size: 3.5 MB (3459176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dc954ff1a3efc21a488deaaa8c28b2cb215430801968b8d749141452f1aa0d0`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
		Size: 3.2 KB (3232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f86acf488c45989ab5cbdf02d0af0d4b3114bec7048808a3b3b234bc4524849`  
		Last Modified: Wed, 05 Aug 2026 00:49:02 GMT  
		Size: 53.6 MB (53636819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c29e3cbe57b3443eae7016539dbe15f8dbc14bcaa43b57e727cfdc8a671f605`  
		Last Modified: Wed, 05 Aug 2026 00:49:02 GMT  
		Size: 11.5 MB (11480277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80b973998140706e9878b13162255872c7f9fc20276bf158b45e36cde2ff6bbd`  
		Last Modified: Wed, 05 Aug 2026 00:49:02 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d73be13e9ee5e93f88c5dec6408c2416d944881cb90fbcbe437f69a1f478062`  
		Last Modified: Wed, 05 Aug 2026 00:49:03 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70573cff4e882f1a69bd52b30737ec3144b842e8a5ed7918f371cd48b4ea3234`  
		Last Modified: Wed, 05 Aug 2026 00:49:04 GMT  
		Size: 6.5 KB (6499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9` - unknown; unknown

```console
$ docker pull influxdb@sha256:da6388653411bdcca3781956dba43024c31b1071a156afa5747df3a66c27e65e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2987753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813975feafb4614eeb2d28aac0e0b3318729bf48dccaaaec53262f582f55d00c`

```dockerfile
```

-	Layers:
	-	`sha256:6f937034c0c918de17ae01ad4980e03db91d7e8f84d2df35797d671c6798b8a7`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
		Size: 3.0 MB (2958961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:797a07368a2c070b745acdd75baaa75dccec89cf87a2efaa1200876a15aae573`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
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
$ docker pull influxdb@sha256:270145207873eb426e15a211063532fc6f966f4ffb6edf4114ffac83ac4696eb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.9.1` - linux; amd64

```console
$ docker pull influxdb@sha256:c160da0e68f0b71e09062960b581b04c27fafadea2f34c591900d81ac6277810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110798728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c527fb7ae1cf7f4903f8db80295cbd0412841a71695c9f3983096c7d8b1e4dd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:46:11 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:46:12 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 05 Aug 2026 00:46:12 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Wed, 05 Aug 2026 00:46:15 GMT
ENV INFLUXDB_VERSION=2.9.1
# Wed, 05 Aug 2026 00:46:15 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 05 Aug 2026 00:46:15 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Wed, 05 Aug 2026 00:46:17 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 05 Aug 2026 00:46:17 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 05 Aug 2026 00:46:17 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 05 Aug 2026 00:46:17 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 05 Aug 2026 00:46:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:46:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:46:17 GMT
CMD ["influxd"]
# Wed, 05 Aug 2026 00:46:17 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 00:46:17 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 05 Aug 2026 00:46:17 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 05 Aug 2026 00:46:17 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 05 Aug 2026 00:46:17 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:306162022267f991ddb47b1556edcb107bfeb728b90c90a969b855417ec30ea3`  
		Last Modified: Wed, 05 Aug 2026 00:46:30 GMT  
		Size: 9.8 MB (9800760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345be78b99ab67caf7dc3072658eb7532b9d7968a2d24d849872e5d4c0e4d5df`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 3.8 MB (3822787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c1053fc78d03fc05c8ca18fee113f8a8def9e5431eaa45a401e3b586d3b3db`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 3.2 KB (3230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb8e1cf607f226abea74d6182ef04b4a2b84b84f9a1c183eeaf48f99ed3eb5f`  
		Last Modified: Wed, 05 Aug 2026 00:46:31 GMT  
		Size: 56.5 MB (56510585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd06a8bef39676fe9d8f93deea4843107dcb2bb562f25f780da7d5b9d26453d`  
		Last Modified: Wed, 05 Aug 2026 00:46:31 GMT  
		Size: 12.4 MB (12421833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3139e79a3d86ba9a42a4d94c3c17a055484be959464636030fe91b3febc1814`  
		Last Modified: Wed, 05 Aug 2026 00:46:31 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e786ae76bbc8acdd3b7bb906b52b8edf527c0d3cb905220e5a5eecf89200053`  
		Last Modified: Wed, 05 Aug 2026 00:46:31 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0b4c78ae6e3d8a070ed35d1dc6f2637a9bfa697cde0b21e473732a7ee1e2f1`  
		Last Modified: Wed, 05 Aug 2026 00:46:32 GMT  
		Size: 6.5 KB (6500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9.1` - unknown; unknown

```console
$ docker pull influxdb@sha256:1990ed9ab92551e190ce94fe0ca70e5b4d91efbe1ad1741be45c3c1059b9bcf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2988096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec597e078c219bbee13503a268d674291f0a8784eeacb501d0021ed65e02777`

```dockerfile
```

-	Layers:
	-	`sha256:fd5fd42aa4efa1ed706aa5d7c7f4651846a976bdd643dc5db30b252c0fd64bad`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 3.0 MB (2959483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:055d1cef13c1da8d72d968accb34158fb082676017c33d683c48b5b0a91a6397`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 28.6 KB (28613 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.9.1` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:cecd0b86fead1a635d4fccbb8517a1ad8f00d3b62724da52270e59d6bd6c85ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.3 MB (106332791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a09c9d1777080e807ef479f5769a13f85296ef8ad6916883c7cdf60b2b88f51e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:48:43 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:44 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 05 Aug 2026 00:48:44 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Wed, 05 Aug 2026 00:48:47 GMT
ENV INFLUXDB_VERSION=2.9.1
# Wed, 05 Aug 2026 00:48:47 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 05 Aug 2026 00:48:47 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Wed, 05 Aug 2026 00:48:49 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 05 Aug 2026 00:48:49 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 05 Aug 2026 00:48:49 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 05 Aug 2026 00:48:49 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 05 Aug 2026 00:48:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:48:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:48:49 GMT
CMD ["influxd"]
# Wed, 05 Aug 2026 00:48:49 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 00:48:49 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 05 Aug 2026 00:48:49 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 05 Aug 2026 00:48:49 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 05 Aug 2026 00:48:49 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c221d2eae139c19c75509b8efdd669a2f3d5b9bc581ab09facf08d8ce3ce529`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
		Size: 9.6 MB (9629144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc7d4b1b3b5811e3624b99d5b5d4b3bf1c27dfbd5572b79e2ed33e086b97421a`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
		Size: 3.5 MB (3459176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dc954ff1a3efc21a488deaaa8c28b2cb215430801968b8d749141452f1aa0d0`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
		Size: 3.2 KB (3232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f86acf488c45989ab5cbdf02d0af0d4b3114bec7048808a3b3b234bc4524849`  
		Last Modified: Wed, 05 Aug 2026 00:49:02 GMT  
		Size: 53.6 MB (53636819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c29e3cbe57b3443eae7016539dbe15f8dbc14bcaa43b57e727cfdc8a671f605`  
		Last Modified: Wed, 05 Aug 2026 00:49:02 GMT  
		Size: 11.5 MB (11480277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80b973998140706e9878b13162255872c7f9fc20276bf158b45e36cde2ff6bbd`  
		Last Modified: Wed, 05 Aug 2026 00:49:02 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d73be13e9ee5e93f88c5dec6408c2416d944881cb90fbcbe437f69a1f478062`  
		Last Modified: Wed, 05 Aug 2026 00:49:03 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70573cff4e882f1a69bd52b30737ec3144b842e8a5ed7918f371cd48b4ea3234`  
		Last Modified: Wed, 05 Aug 2026 00:49:04 GMT  
		Size: 6.5 KB (6499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9.1` - unknown; unknown

```console
$ docker pull influxdb@sha256:da6388653411bdcca3781956dba43024c31b1071a156afa5747df3a66c27e65e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2987753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813975feafb4614eeb2d28aac0e0b3318729bf48dccaaaec53262f582f55d00c`

```dockerfile
```

-	Layers:
	-	`sha256:6f937034c0c918de17ae01ad4980e03db91d7e8f84d2df35797d671c6798b8a7`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
		Size: 3.0 MB (2958961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:797a07368a2c070b745acdd75baaa75dccec89cf87a2efaa1200876a15aae573`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
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
$ docker pull influxdb@sha256:985fa10273357c918cd6e2626456317e9e041febb9d8b01c3042a3757c18cb4b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:data` - linux; amd64

```console
$ docker pull influxdb@sha256:79df66280a9cba8d2f2b6059f12f9d9b5dd86ebde79f7e5eb3c5e45dac15e8b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115732878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cc35947f8e9b23417a569c6cc25882143d8f44f0803416127639d516b223c09`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:36:17 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Wed, 05 Aug 2026 01:36:17 GMT
ENV INFLUXDB_PR=
# Wed, 05 Aug 2026 01:36:17 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Wed, 05 Aug 2026 01:36:17 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-data_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:36:17 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 05 Aug 2026 01:36:17 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 01:36:17 GMT
VOLUME [/var/lib/influxdb]
# Wed, 05 Aug 2026 01:36:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:36:17 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 05 Aug 2026 01:36:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:36:17 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b34397a47a5644c85004c55d70d2945c7f37c592375ed6f2a28f07dfae0176`  
		Last Modified: Wed, 05 Aug 2026 01:36:31 GMT  
		Size: 43.2 MB (43189874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1835d6477f32d86f51657f7a6ab7921236e03ec754dafeb3db29a1d7e640a8ea`  
		Last Modified: Wed, 05 Aug 2026 01:36:30 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfaf4b5d7eb303c7317125c2d4dc871b95227468d84b1aa873932b7b67a781b7`  
		Last Modified: Wed, 05 Aug 2026 01:36:29 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b8e434638d6f474a26faeb77668ee1bde2ee8366a719585ab59dd5e29521150`  
		Last Modified: Wed, 05 Aug 2026 01:36:29 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:data` - unknown; unknown

```console
$ docker pull influxdb@sha256:d51d620f3b2168802092cc39f4801c06227832e4d872aef57101e1af76d0edf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4707349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7a6a00b9c39a258d78b7786652b1fecd22f09d38599c3f86b109c1218399267`

```dockerfile
```

-	Layers:
	-	`sha256:93acb91bc4248b880a985fbb64b3e71d81a8fed14788fad3eb9992ea0ddd68a0`  
		Last Modified: Wed, 05 Aug 2026 01:36:30 GMT  
		Size: 4.7 MB (4693195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2dff111a24266b19f82c9a8985dd3ea8fe68c9380418c4b1fa5e2a0cbb4c2b2`  
		Last Modified: Wed, 05 Aug 2026 01:36:29 GMT  
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
$ docker pull influxdb@sha256:270145207873eb426e15a211063532fc6f966f4ffb6edf4114ffac83ac4696eb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:latest` - linux; amd64

```console
$ docker pull influxdb@sha256:c160da0e68f0b71e09062960b581b04c27fafadea2f34c591900d81ac6277810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110798728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c527fb7ae1cf7f4903f8db80295cbd0412841a71695c9f3983096c7d8b1e4dd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:46:11 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:46:12 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 05 Aug 2026 00:46:12 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Wed, 05 Aug 2026 00:46:15 GMT
ENV INFLUXDB_VERSION=2.9.1
# Wed, 05 Aug 2026 00:46:15 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 05 Aug 2026 00:46:15 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Wed, 05 Aug 2026 00:46:17 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 05 Aug 2026 00:46:17 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 05 Aug 2026 00:46:17 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 05 Aug 2026 00:46:17 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 05 Aug 2026 00:46:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:46:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:46:17 GMT
CMD ["influxd"]
# Wed, 05 Aug 2026 00:46:17 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 00:46:17 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 05 Aug 2026 00:46:17 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 05 Aug 2026 00:46:17 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 05 Aug 2026 00:46:17 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:306162022267f991ddb47b1556edcb107bfeb728b90c90a969b855417ec30ea3`  
		Last Modified: Wed, 05 Aug 2026 00:46:30 GMT  
		Size: 9.8 MB (9800760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345be78b99ab67caf7dc3072658eb7532b9d7968a2d24d849872e5d4c0e4d5df`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 3.8 MB (3822787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c1053fc78d03fc05c8ca18fee113f8a8def9e5431eaa45a401e3b586d3b3db`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 3.2 KB (3230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb8e1cf607f226abea74d6182ef04b4a2b84b84f9a1c183eeaf48f99ed3eb5f`  
		Last Modified: Wed, 05 Aug 2026 00:46:31 GMT  
		Size: 56.5 MB (56510585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd06a8bef39676fe9d8f93deea4843107dcb2bb562f25f780da7d5b9d26453d`  
		Last Modified: Wed, 05 Aug 2026 00:46:31 GMT  
		Size: 12.4 MB (12421833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3139e79a3d86ba9a42a4d94c3c17a055484be959464636030fe91b3febc1814`  
		Last Modified: Wed, 05 Aug 2026 00:46:31 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e786ae76bbc8acdd3b7bb906b52b8edf527c0d3cb905220e5a5eecf89200053`  
		Last Modified: Wed, 05 Aug 2026 00:46:31 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0b4c78ae6e3d8a070ed35d1dc6f2637a9bfa697cde0b21e473732a7ee1e2f1`  
		Last Modified: Wed, 05 Aug 2026 00:46:32 GMT  
		Size: 6.5 KB (6500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:latest` - unknown; unknown

```console
$ docker pull influxdb@sha256:1990ed9ab92551e190ce94fe0ca70e5b4d91efbe1ad1741be45c3c1059b9bcf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2988096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec597e078c219bbee13503a268d674291f0a8784eeacb501d0021ed65e02777`

```dockerfile
```

-	Layers:
	-	`sha256:fd5fd42aa4efa1ed706aa5d7c7f4651846a976bdd643dc5db30b252c0fd64bad`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 3.0 MB (2959483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:055d1cef13c1da8d72d968accb34158fb082676017c33d683c48b5b0a91a6397`  
		Last Modified: Wed, 05 Aug 2026 00:46:29 GMT  
		Size: 28.6 KB (28613 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:latest` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:cecd0b86fead1a635d4fccbb8517a1ad8f00d3b62724da52270e59d6bd6c85ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.3 MB (106332791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a09c9d1777080e807ef479f5769a13f85296ef8ad6916883c7cdf60b2b88f51e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:48:43 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:44 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 05 Aug 2026 00:48:44 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Wed, 05 Aug 2026 00:48:47 GMT
ENV INFLUXDB_VERSION=2.9.1
# Wed, 05 Aug 2026 00:48:47 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 05 Aug 2026 00:48:47 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Wed, 05 Aug 2026 00:48:49 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 05 Aug 2026 00:48:49 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 05 Aug 2026 00:48:49 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 05 Aug 2026 00:48:49 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 05 Aug 2026 00:48:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 00:48:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 00:48:49 GMT
CMD ["influxd"]
# Wed, 05 Aug 2026 00:48:49 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 05 Aug 2026 00:48:49 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 05 Aug 2026 00:48:49 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 05 Aug 2026 00:48:49 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 05 Aug 2026 00:48:49 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c221d2eae139c19c75509b8efdd669a2f3d5b9bc581ab09facf08d8ce3ce529`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
		Size: 9.6 MB (9629144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc7d4b1b3b5811e3624b99d5b5d4b3bf1c27dfbd5572b79e2ed33e086b97421a`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
		Size: 3.5 MB (3459176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dc954ff1a3efc21a488deaaa8c28b2cb215430801968b8d749141452f1aa0d0`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
		Size: 3.2 KB (3232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f86acf488c45989ab5cbdf02d0af0d4b3114bec7048808a3b3b234bc4524849`  
		Last Modified: Wed, 05 Aug 2026 00:49:02 GMT  
		Size: 53.6 MB (53636819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c29e3cbe57b3443eae7016539dbe15f8dbc14bcaa43b57e727cfdc8a671f605`  
		Last Modified: Wed, 05 Aug 2026 00:49:02 GMT  
		Size: 11.5 MB (11480277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80b973998140706e9878b13162255872c7f9fc20276bf158b45e36cde2ff6bbd`  
		Last Modified: Wed, 05 Aug 2026 00:49:02 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d73be13e9ee5e93f88c5dec6408c2416d944881cb90fbcbe437f69a1f478062`  
		Last Modified: Wed, 05 Aug 2026 00:49:03 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70573cff4e882f1a69bd52b30737ec3144b842e8a5ed7918f371cd48b4ea3234`  
		Last Modified: Wed, 05 Aug 2026 00:49:04 GMT  
		Size: 6.5 KB (6499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:latest` - unknown; unknown

```console
$ docker pull influxdb@sha256:da6388653411bdcca3781956dba43024c31b1071a156afa5747df3a66c27e65e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2987753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813975feafb4614eeb2d28aac0e0b3318729bf48dccaaaec53262f582f55d00c`

```dockerfile
```

-	Layers:
	-	`sha256:6f937034c0c918de17ae01ad4980e03db91d7e8f84d2df35797d671c6798b8a7`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
		Size: 3.0 MB (2958961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:797a07368a2c070b745acdd75baaa75dccec89cf87a2efaa1200876a15aae573`  
		Last Modified: Wed, 05 Aug 2026 00:49:01 GMT  
		Size: 28.8 KB (28792 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:meta`

```console
$ docker pull influxdb@sha256:fb1cedac88286739822b3b4d7dc544e606109272761afb561872fa8bec58e0d6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:meta` - linux; amd64

```console
$ docker pull influxdb@sha256:646c13f3fc0d650f36b1ce0fa256259405fd3f2821e5a663c38907694b2a3710
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91926980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:980b2cdaf67f1111ba78be4aeecfb464ec7d46c38f4e992f6cd03423287bd30d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:36:34 GMT
ENV INFLUXDB_VERSION=1.12.4-c1.12.4
# Wed, 05 Aug 2026 01:36:34 GMT
ENV INFLUXDB_PR=
# Wed, 05 Aug 2026 01:36:34 GMT
ENV INFLUXDB_PV=1.12.4-c1.12.4
# Wed, 05 Aug 2026 01:36:34 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-meta_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:36:34 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Wed, 05 Aug 2026 01:36:34 GMT
EXPOSE map[8091/tcp:{}]
# Wed, 05 Aug 2026 01:36:34 GMT
VOLUME [/var/lib/influxdb]
# Wed, 05 Aug 2026 01:36:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 05 Aug 2026 01:36:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Aug 2026 01:36:34 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9114c55320ab82f28411dcfcf0aa76030d9383058d29874072c599dfafc1783b`  
		Last Modified: Wed, 05 Aug 2026 01:36:43 GMT  
		Size: 19.4 MB (19385183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c728590de55c3b09b6874f59a90b2414c6c36c9aa1de97b006d928d88db77bb2`  
		Last Modified: Wed, 05 Aug 2026 01:36:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b211b30efa8487874d0d1f3d4e61d96b9680755adee64fc0e9938fa8f6818e8`  
		Last Modified: Wed, 05 Aug 2026 01:36:42 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:bde8fab41a962e574642e2f6e9723bfbf32a4644654c9aedf01fcecbe6a3293b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4605927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbb8a0b672cd801c2f739c2a612ab2e044c483937d800396612559fbdb861766`

```dockerfile
```

-	Layers:
	-	`sha256:b0d2b1fd1611762779d67445774093578d6df4dcf60bfc11a7dd0e812d922c06`  
		Last Modified: Wed, 05 Aug 2026 01:36:42 GMT  
		Size: 4.6 MB (4593263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd7cb6728052dff3c4ddff28d55432392da5b935c4f018a731b34b3ab66a6781`  
		Last Modified: Wed, 05 Aug 2026 01:36:42 GMT  
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
