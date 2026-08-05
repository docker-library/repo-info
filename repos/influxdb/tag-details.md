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
