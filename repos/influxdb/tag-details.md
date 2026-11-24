<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `influxdb`

-	[`influxdb:1.11`](#influxdb111)
-	[`influxdb:1.11-alpine`](#influxdb111-alpine)
-	[`influxdb:1.11-data`](#influxdb111-data)
-	[`influxdb:1.11-data-alpine`](#influxdb111-data-alpine)
-	[`influxdb:1.11-meta`](#influxdb111-meta)
-	[`influxdb:1.11-meta-alpine`](#influxdb111-meta-alpine)
-	[`influxdb:1.11.10-data`](#influxdb11110-data)
-	[`influxdb:1.11.10-data-alpine`](#influxdb11110-data-alpine)
-	[`influxdb:1.11.10-meta`](#influxdb11110-meta)
-	[`influxdb:1.11.10-meta-alpine`](#influxdb11110-meta-alpine)
-	[`influxdb:1.11.8`](#influxdb1118)
-	[`influxdb:1.11.8-alpine`](#influxdb1118-alpine)
-	[`influxdb:1.12`](#influxdb112)
-	[`influxdb:1.12-alpine`](#influxdb112-alpine)
-	[`influxdb:1.12-data`](#influxdb112-data)
-	[`influxdb:1.12-data-alpine`](#influxdb112-data-alpine)
-	[`influxdb:1.12-meta`](#influxdb112-meta)
-	[`influxdb:1.12-meta-alpine`](#influxdb112-meta-alpine)
-	[`influxdb:1.12.4`](#influxdb1124)
-	[`influxdb:1.12.4-alpine`](#influxdb1124-alpine)
-	[`influxdb:1.12.5-data`](#influxdb1125-data)
-	[`influxdb:1.12.5-data-alpine`](#influxdb1125-data-alpine)
-	[`influxdb:1.12.5-meta`](#influxdb1125-meta)
-	[`influxdb:1.12.5-meta-alpine`](#influxdb1125-meta-alpine)
-	[`influxdb:1.13`](#influxdb113)
-	[`influxdb:1.13-alpine`](#influxdb113-alpine)
-	[`influxdb:1.13-data`](#influxdb113-data)
-	[`influxdb:1.13-data-alpine`](#influxdb113-data-alpine)
-	[`influxdb:1.13-meta`](#influxdb113-meta)
-	[`influxdb:1.13-meta-alpine`](#influxdb113-meta-alpine)
-	[`influxdb:1.13.2`](#influxdb1132)
-	[`influxdb:1.13.2-alpine`](#influxdb1132-alpine)
-	[`influxdb:1.13.2-data`](#influxdb1132-data)
-	[`influxdb:1.13.2-data-alpine`](#influxdb1132-data-alpine)
-	[`influxdb:1.13.2-meta`](#influxdb1132-meta)
-	[`influxdb:1.13.2-meta-alpine`](#influxdb1132-meta-alpine)
-	[`influxdb:2`](#influxdb2)
-	[`influxdb:2-alpine`](#influxdb2-alpine)
-	[`influxdb:2.10`](#influxdb210)
-	[`influxdb:2.10-alpine`](#influxdb210-alpine)
-	[`influxdb:2.10.1`](#influxdb2101)
-	[`influxdb:2.10.1-alpine`](#influxdb2101-alpine)
-	[`influxdb:2.9`](#influxdb29)
-	[`influxdb:2.9-alpine`](#influxdb29-alpine)
-	[`influxdb:2.9.1`](#influxdb291)
-	[`influxdb:2.9.1-alpine`](#influxdb291-alpine)
-	[`influxdb:3-core`](#influxdb3-core)
-	[`influxdb:3-enterprise`](#influxdb3-enterprise)
-	[`influxdb:3.11-core`](#influxdb311-core)
-	[`influxdb:3.11-enterprise`](#influxdb311-enterprise)
-	[`influxdb:3.11.10-core`](#influxdb31110-core)
-	[`influxdb:3.11.10-enterprise`](#influxdb31110-enterprise)
-	[`influxdb:3.12-core`](#influxdb312-core)
-	[`influxdb:3.12-enterprise`](#influxdb312-enterprise)
-	[`influxdb:3.12.3-core`](#influxdb3123-core)
-	[`influxdb:3.12.3-enterprise`](#influxdb3123-enterprise)
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
$ docker pull influxdb@sha256:300a2bb2fd9d66c476c4bd7ca3ce6135d485151cce19b605ef7ab2a000fa1845
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.11` - linux; amd64

```console
$ docker pull influxdb@sha256:6ffcae9657f43c61a7d9361e4962e8ee717e4d76ffd013b0856a68efad3894f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116061789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39ea46a843aee5937beb038b028fd87e7444b43a0e8f64d264ed14e3595ab024`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:25:20 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 24 Nov 2026 05:26:16 GMT
ARG INFLUXDB_VERSION=1.11.8
# Tue, 24 Nov 2026 05:26:16 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     case "$(dpkg --print-architecture)" in       *amd64) ARCH=amd64 ;;       *arm64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_DEB=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_DEB}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_DEB}" &&     apt-get install -y "./${INFLUXDB_DEB}" &&     rm -rf "${INFLUXDB_DEB}"            "${INFLUXDB_ASC}" 	   /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:26:16 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 24 Nov 2026 05:26:16 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 05:26:16 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:26:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:26:16 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 24 Nov 2026 05:26:16 GMT
USER influxdb
# Tue, 24 Nov 2026 05:26:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:26:16 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2027e1f02fc742c1938e561e264810fef9ee135f2d697e9401130d69f439b558`  
		Last Modified: Tue, 24 Nov 2026 05:25:39 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2f95d8d186fafd49f69c76c14c823a5846ece9f37debef928e432b30eeb948`  
		Last Modified: Tue, 24 Nov 2026 05:26:29 GMT  
		Size: 43.7 MB (43659244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d74f072bfaffaf66e36f3302d8a37b108dc22c396b92faa3c8826943000516d6`  
		Last Modified: Tue, 24 Nov 2026 05:26:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38060b412d2d75501d9122d76154c0ca78a46b8f3695244ee0aaf55c1cd00b9d`  
		Last Modified: Tue, 24 Nov 2026 05:26:27 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:814b7a04ad3f47105f3b5ddae8b1375c64e0091dd4975488cb63bb5c67c6cd4a`  
		Last Modified: Tue, 24 Nov 2026 05:26:28 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11` - unknown; unknown

```console
$ docker pull influxdb@sha256:bd4676565067e10133761c22c13b85a80247376d4c3d71e56827ad8285f0b122
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5097312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61295ab1833319a060f77b052b9b454ba7ef200eb77dd8b7d6522b82dcea5003`

```dockerfile
```

-	Layers:
	-	`sha256:d8ab80098f4bb74f7afd76ec65345ac98686c85704d0d978e4a2a94685a7e6bb`  
		Last Modified: Tue, 24 Nov 2026 05:26:28 GMT  
		Size: 5.1 MB (5081826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c338095d6f7ce66d61d45854df2e0324cc9eac035dcdc3524bdd3eeee5a2223a`  
		Last Modified: Tue, 24 Nov 2026 05:26:27 GMT  
		Size: 15.5 KB (15486 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.11` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:00c541bc278164cbf1961de4faf11849237476941d859211280da89e2a729eeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.0 MB (112987565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb090f5f9df97e3a98736e3a21fb1a3cabe95d8547a126471d96d2b207cab025`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:37:25 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 24 Nov 2026 05:37:58 GMT
ARG INFLUXDB_VERSION=1.11.8
# Tue, 24 Nov 2026 05:37:58 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     case "$(dpkg --print-architecture)" in       *amd64) ARCH=amd64 ;;       *arm64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_DEB=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_DEB}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_DEB}" &&     apt-get install -y "./${INFLUXDB_DEB}" &&     rm -rf "${INFLUXDB_DEB}"            "${INFLUXDB_ASC}" 	   /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:37:58 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 24 Nov 2026 05:37:58 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 05:37:58 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:37:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:37:58 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 24 Nov 2026 05:37:58 GMT
USER influxdb
# Tue, 24 Nov 2026 05:37:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:37:58 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41e80db409d5b905f3c0d8228a2f82637b923bf2af30b11e87cb3b42e5e070d7`  
		Last Modified: Tue, 24 Nov 2026 04:43:36 GMT  
		Size: 23.4 MB (23440379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf986c6e4ab90356af03639b6719767b6d95ff1b00ff93f5257aa918625b6642`  
		Last Modified: Tue, 24 Nov 2026 05:37:42 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7475ad353d74d1f8bae3a1ae00173545116839f875819f679a766943aecc940`  
		Last Modified: Tue, 24 Nov 2026 05:38:10 GMT  
		Size: 41.1 MB (41132021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae3cec30788cf894a2c4a6e877191f730211fb9b14de36acf76eac940f0e8ef`  
		Last Modified: Tue, 24 Nov 2026 05:38:09 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19f79c9e2f5a562d08d6b1f22e8d666a239e88119b5094c8b0c87350f1c0eb51`  
		Last Modified: Tue, 24 Nov 2026 05:38:09 GMT  
		Size: 207.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1a9600d8fef5580ec8c10675854f25f1bdfac80dbe4750cd1e206d763796a33`  
		Last Modified: Tue, 24 Nov 2026 05:38:09 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11` - unknown; unknown

```console
$ docker pull influxdb@sha256:a73b8c9b05022b263c7e593ea14485352379784751e5cf99cd7def87eca4655c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5096872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4721b903fcd4baeb36ab639852b1a1ef4583b38a6423ebb899e70ef38dc0e717`

```dockerfile
```

-	Layers:
	-	`sha256:b1512eba92f001e1d3b3a742d406bf55a5df4efcda2b20c2c57db91370259b7b`  
		Last Modified: Tue, 24 Nov 2026 05:38:09 GMT  
		Size: 5.1 MB (5081291 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c8029cd7f2d39a6e81768cb950ac7979cc232c29389f61186d74285890fcd17`  
		Last Modified: Tue, 24 Nov 2026 05:38:09 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.11-alpine`

```console
$ docker pull influxdb@sha256:446ae48b3849b8ee703edc189ab3e7fcce1b44d01142b07ae4189ac5988f11ae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.11-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:17ebda4c41e8d26727495ccd5c210ccfa4af49689c79007ec5a2ba6122a38d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42882593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95785a89578ae073d42f74734100131aa1a9ce3748430ad7eeeab3cd68d57831`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:24:15 GMT
RUN apk add --no-cache       bash       ca-certificates       tzdata &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:24:19 GMT
ARG INFLUXDB_VERSION=1.11.8
# Thu, 05 Nov 2026 19:24:19 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN apk add --no-cache --virtual .build-deps       curl       gnupg       tar &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     case "$(apk --print-arch)" in       x86_64)  ARCH=amd64 ;;       aarch64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_TAR=influxdb-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_TAR}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_TAR}" &&     tar -xf "${INFLUXDB_TAR}" -C /usr/bin       influx       influx_inspect       influxd &&     rm -rf "${INFLUXDB_TAR}"            "${INFLUXDB_ASC}" &&     apk del .build-deps # buildkit
# Thu, 05 Nov 2026 19:24:19 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 19:24:20 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb &&     mkdir -p /var/lib/influxdb &&     mkdir -p /var/log/influxdb &&     chown influxdb:influxdb /var/lib/influxdb &&     chown influxdb:influxdb /var/log/influxdb &&     chmod 0750 /var/lib/influxdb &&     chmod 0750 /var/log/influxdb # buildkit
# Thu, 05 Nov 2026 19:24:20 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 19:24:20 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 19:24:20 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:24:20 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 19:24:20 GMT
USER influxdb
# Thu, 05 Nov 2026 19:24:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:24:20 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee444104ebfda877f5731d7f3f43078bd4902aebf487b0ee6f9ac49ad681772`  
		Last Modified: Thu, 05 Nov 2026 19:24:29 GMT  
		Size: 1.2 MB (1180337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76517fdb569d3c1a2950b285e11bd4a70c729b45188a8f51db9f4d241c78d3ee`  
		Last Modified: Thu, 05 Nov 2026 19:24:30 GMT  
		Size: 38.1 MB (38074149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6bacb86f4c590865556abe798b8031430d901db34e1272c3df0db364ba14443`  
		Last Modified: Thu, 05 Nov 2026 19:24:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:019a4a1dc5a11eea77aa6a814c68f4c19fb3b53a82844e86a90a895a75a7a8b6`  
		Last Modified: Thu, 05 Nov 2026 19:24:28 GMT  
		Size: 992.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e50c44915f05bb554b02eca3fbd74ed50eede74b0498c742aeb9131e48761d8`  
		Last Modified: Thu, 05 Nov 2026 19:24:29 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9cbae33fea56e099d14214cafb9339496fd32501270fe07116e988ba3077457`  
		Last Modified: Thu, 05 Nov 2026 19:24:30 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:1fe6356bdf9c5bfddda45d1e8404ce2b5fad423700c64b8fb12b1c72b2c47053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **747.2 KB (747229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5620b04bc7f2c7fa090b3c49967f6d13ec842f5acfc4cb89e69a0d5e68df634c`

```dockerfile
```

-	Layers:
	-	`sha256:53f8646b00c469333ce1e441de727d1185a9a4799433831b349dc94583d876ce`  
		Last Modified: Thu, 05 Nov 2026 19:24:29 GMT  
		Size: 729.4 KB (729398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce1eaf6bac1ccfed0a305872bed81216313ba69754caaa0ee57bd8e67fd6649b`  
		Last Modified: Thu, 05 Nov 2026 19:24:28 GMT  
		Size: 17.8 KB (17831 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.11-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:0a11cf908b3382771cde30c9814164e980b0550848db210897d1e90652e09806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40769532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5fc1e26615ba900e91fee3d28f45b0769619da014517ac9811f96756dff9806`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.21.10-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:18:27 GMT
RUN apk add --no-cache       bash       ca-certificates       tzdata &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:18:32 GMT
ARG INFLUXDB_VERSION=1.11.8
# Thu, 05 Nov 2026 19:18:32 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN apk add --no-cache --virtual .build-deps       curl       gnupg       tar &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     case "$(apk --print-arch)" in       x86_64)  ARCH=amd64 ;;       aarch64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_TAR=influxdb-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_TAR}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_TAR}" &&     tar -xf "${INFLUXDB_TAR}" -C /usr/bin       influx       influx_inspect       influxd &&     rm -rf "${INFLUXDB_TAR}"            "${INFLUXDB_ASC}" &&     apk del .build-deps # buildkit
# Thu, 05 Nov 2026 19:18:32 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 19:18:32 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb &&     mkdir -p /var/lib/influxdb &&     mkdir -p /var/log/influxdb &&     chown influxdb:influxdb /var/lib/influxdb &&     chown influxdb:influxdb /var/log/influxdb &&     chmod 0750 /var/lib/influxdb &&     chmod 0750 /var/log/influxdb # buildkit
# Thu, 05 Nov 2026 19:18:32 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 19:18:32 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 19:18:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:18:32 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 19:18:32 GMT
USER influxdb
# Thu, 05 Nov 2026 19:18:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:18:32 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:26089ff12bb135aa8812e1bf486b799444fdf6cac9f60bf694ac523fbb8ad19a`  
		Last Modified: Thu, 05 Nov 2026 18:00:54 GMT  
		Size: 4.0 MB (3974423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e6cc1a2a9444ba15c40d7f02af4c320342d86a030150c58a83087c3ad92c59e`  
		Last Modified: Thu, 05 Nov 2026 19:18:41 GMT  
		Size: 1.2 MB (1244841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44c24f9934303c9003b1b517c14d0339bd8b3ba991db74021b46e0303df6f7ae`  
		Last Modified: Thu, 05 Nov 2026 19:18:42 GMT  
		Size: 35.5 MB (35547561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcbf843f7834e7563d4c9704830aa62a1a9519a87dc81c5a52a8c4b27136bf9d`  
		Last Modified: Thu, 05 Nov 2026 19:18:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362af065b6c0bd80ead0ec2ff900835e3799206a7bc1c90225221c758a508050`  
		Last Modified: Thu, 05 Nov 2026 19:18:41 GMT  
		Size: 990.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee527e0a7d88a8924c43dfd3c7abefc1244b90724d51c4821871152f5eeace20`  
		Last Modified: Thu, 05 Nov 2026 19:18:42 GMT  
		Size: 211.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:408bc9fa35b3041ad058d9c017407cd28027e63d55edf68136b20ad5a2c3cdf1`  
		Last Modified: Thu, 05 Nov 2026 19:18:42 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:fc8183553c9a77836bac58b3346e2552ff001fa597f0b6891d2df72f01da7336
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **746.6 KB (746566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31bcfca1fceef82dc1bf005158e86703336fb94fb40df585ef8b17ce87aad598`

```dockerfile
```

-	Layers:
	-	`sha256:eb68373efd504601057abdbfbe5858411bc81bfda8288f100d8a7c7c0c2364af`  
		Last Modified: Thu, 05 Nov 2026 19:18:41 GMT  
		Size: 728.6 KB (728625 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:455d15999132af71e814066de684f653d6ef52bef67f0d0d57f25568d703f8d8`  
		Last Modified: Thu, 05 Nov 2026 19:18:41 GMT  
		Size: 17.9 KB (17941 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.11-data`

```console
$ docker pull influxdb@sha256:306e9228b8cd657b25030ce81bddf9dbade2ee3d6fa62810a46f932553d108b5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11-data` - linux; amd64

```console
$ docker pull influxdb@sha256:da021b3ff76cd7ba505dae05adeb4fa50b2349b390539d1d333d0f4e7c22bd3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118323751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07de7c3d90d130973ec250a1d9cb9df72fe13530bc6ba03c2494a0299adf63c2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:26:21 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 05:26:24 GMT
ENV INFLUXDB_VERSION=1.11.10-c1.11.10
# Tue, 24 Nov 2026 05:26:24 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb* # buildkit
# Tue, 24 Nov 2026 05:26:24 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 24 Nov 2026 05:26:24 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 05:26:24 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:26:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:26:24 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 24 Nov 2026 05:26:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:26:24 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96c43e832963883db4dc88616d39d1925f54d49732e5cb7adb69f4867c73f517`  
		Last Modified: Tue, 24 Nov 2026 05:26:36 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e7a7d3d2310af96cde7fcf3a5f9ba76809fa2f096891be73b92a3644855b1b`  
		Last Modified: Tue, 24 Nov 2026 05:26:37 GMT  
		Size: 45.9 MB (45917290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d56e879edcaf311392b590357ab81309814391b37bce0d0ebbe68ac9bfdf58`  
		Last Modified: Tue, 24 Nov 2026 05:26:35 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:026f318937185fb7dff888e350015b9afb5015dd7876516d34a90b3aebfb5cc9`  
		Last Modified: Tue, 24 Nov 2026 05:26:36 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8231dc3cc9384e29073fc9bcf651fe9c6ba46e42583d28f0318dd05a6accae44`  
		Last Modified: Tue, 24 Nov 2026 05:26:37 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:823f14b24e40eb06a7d29f115235edbff6562150e0b3787ec5568f6b36d32491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4703154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f001b6731cda87b45373317f2031bfcd769cb8dd4fcfe7d6f26713a8b9792b0f`

```dockerfile
```

-	Layers:
	-	`sha256:15bf2a17c7a66e11a10855f54e7b2e58d8742edc2e605b9a1f225d7b485a1a22`  
		Last Modified: Tue, 24 Nov 2026 05:26:36 GMT  
		Size: 4.7 MB (4688509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6f6d98b7ae5b52e44eb7dc5d0cdcda01bb45f89d63e4a109087d9a67e27218c`  
		Last Modified: Tue, 24 Nov 2026 05:26:35 GMT  
		Size: 14.6 KB (14645 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.11-data-alpine`

```console
$ docker pull influxdb@sha256:630ed6490977bfe78c33f90bca0c41a89660cbfd86052313f4d2f36b72d51807
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:7f0be1538a42c0c1fb0566bc550021ed065c57dbe42553123b7b46543dc8bd06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50671749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e8b089a7efc2de629275ad41f6203c5ecb48c5ff7f4044569518787d4823ae8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:01:43 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 18 Nov 2026 21:01:44 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Wed, 18 Nov 2026 21:01:48 GMT
ENV INFLUXDB_VERSION=1.11.10-c1.11.10
# Wed, 18 Nov 2026 21:01:48 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-data-${INFLUXDB_VERSION}/* &&     cp -a /usr/src/influxdb-data-${INFLUXDB_VERSION}/. /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps # buildkit
# Wed, 18 Nov 2026 21:01:48 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 18 Nov 2026 21:01:48 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 21:01:48 GMT
VOLUME [/var/lib/influxdb]
# Wed, 18 Nov 2026 21:01:48 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:01:48 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 18 Nov 2026 21:01:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:01:48 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fce4cc74a8844fdff1631eb4f7b12b953e1bdcdd6e3f74fc0ce07f11f6bec833`  
		Last Modified: Wed, 18 Nov 2026 21:01:58 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9e01890f8dc33e5460972e7d97c4aaf0d0af2e9e85c428bb6927e8a44deefd`  
		Last Modified: Wed, 18 Nov 2026 21:01:58 GMT  
		Size: 1.2 MB (1180354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc2a7b39b0fcd30555e57c340a50a0f20aea12037f6e7b87fea4a675abaa8d2`  
		Last Modified: Wed, 18 Nov 2026 21:01:59 GMT  
		Size: 45.9 MB (45863941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12f296efbc9a26f49dd86ae7f6046d39ccd1abdbe60e8e4f99be231771a62ac6`  
		Last Modified: Wed, 18 Nov 2026 21:01:58 GMT  
		Size: 239.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72e3f1056d4bc77c3c628c2d477a4ce616f1f79ebce5a2f4b064eee1dc29eb7`  
		Last Modified: Wed, 18 Nov 2026 21:01:59 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f4f514409800d00679691c0a3501f840d387938bfea370dca60a742ce0ae201`  
		Last Modified: Wed, 18 Nov 2026 21:01:59 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11-data-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:94fe414a2c3d6ac04251a75463a4f1526d114581595cd1c72aae0a7162875e73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **772.5 KB (772525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bab531a66acc62397243bce0211bee664f4eb610d60df61848eec5e5fd8063b2`

```dockerfile
```

-	Layers:
	-	`sha256:939bc4e39a416b666c61103d979686dfa47bbba459972314c24e803dd67f0965`  
		Last Modified: Wed, 18 Nov 2026 21:01:58 GMT  
		Size: 755.9 KB (755855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86d1deec98746c6650d41e36154bceb7b221c25f93e6082df3dfa6d43f8aac3f`  
		Last Modified: Wed, 18 Nov 2026 21:01:58 GMT  
		Size: 16.7 KB (16670 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.11-meta`

```console
$ docker pull influxdb@sha256:87ca7f0cbf9f94241c4ca88522cf885fc80cfd5005009d940facc767194c31aa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:dcacc9988cb57c72539e8c13986c38d854c72e71d8cdcc20cc1d298202cf4cb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93735081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98711bb7b1ac8f3eb8b54bec9d0925f5378707a26904266ca11cac4b839d2e86`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:26:25 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 05:26:26 GMT
ENV INFLUXDB_VERSION=1.11.10-c1.11.10
# Tue, 24 Nov 2026 05:26:26 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb* # buildkit
# Tue, 24 Nov 2026 05:26:26 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Tue, 24 Nov 2026 05:26:26 GMT
EXPOSE map[8091/tcp:{}]
# Tue, 24 Nov 2026 05:26:26 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:26:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:26:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:26:26 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98e61202e25d6ac58415b838b5e59bee4009cf2b82b01d3a8ecdd201b3caf2f8`  
		Last Modified: Tue, 24 Nov 2026 05:26:35 GMT  
		Size: 5.1 KB (5064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffbad76c5b03d7efb1cb7fd454ea664a10ac0870aa4c34c79998783f36fbd1d5`  
		Last Modified: Tue, 24 Nov 2026 05:26:36 GMT  
		Size: 21.3 MB (21329824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99058f2d4c5ebbb6c0085719e2d1caad607caf9c91640511f5310106773e8a14`  
		Last Modified: Tue, 24 Nov 2026 05:26:35 GMT  
		Size: 192.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57b6b3f35901671fbbf1b364652d2affa7e1087e45bcd4afeb06b67fd040813`  
		Last Modified: Tue, 24 Nov 2026 05:26:35 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:49a2ba6a6f4c1c0ad8abbb80ecaaefd9651b9a06ca403a8a705e03e25fe22495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4608356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb27254953f371d9e8425d6dc334b9e4a1cfaf42cdce43ed48277f4b4c5bdb5`

```dockerfile
```

-	Layers:
	-	`sha256:1efa476021b7d6f721f861e94a309dc20c3dc810a6d4635b690dfb4cf8a74e5b`  
		Last Modified: Tue, 24 Nov 2026 05:26:36 GMT  
		Size: 4.6 MB (4595352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:375e1448461b0621a2d5a74f8bc3f4816c535570623bf69a0e46505782c4f1cc`  
		Last Modified: Tue, 24 Nov 2026 05:26:35 GMT  
		Size: 13.0 KB (13004 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.11-meta-alpine`

```console
$ docker pull influxdb@sha256:f6208cfe469004cc2c6b35576f0dfecc8866bf255f23d29f73aabfb09cd6af8a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:1f2fadecccca61d519bca6562b42b2ca575f6a272d4aef56c6f5d63444667f32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.1 MB (26092843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bca2086697e05d517f76ddc2bda49491762a7a879952c20ae96f90b94421352`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:02:02 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 18 Nov 2026 21:02:03 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Wed, 18 Nov 2026 21:02:08 GMT
ENV INFLUXDB_VERSION=1.11.10-c1.11.10
# Wed, 18 Nov 2026 21:02:08 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-meta-${INFLUXDB_VERSION}/* &&     cp -a /usr/src/influxdb-meta-${INFLUXDB_VERSION}/. /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps # buildkit
# Wed, 18 Nov 2026 21:02:08 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Wed, 18 Nov 2026 21:02:08 GMT
EXPOSE map[8091/tcp:{}]
# Wed, 18 Nov 2026 21:02:08 GMT
VOLUME [/var/lib/influxdb]
# Wed, 18 Nov 2026 21:02:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:02:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:02:08 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ad3fab217299d46314e16a623d9a665cf7b2a25ea427352e3c37dc2df97986`  
		Last Modified: Wed, 18 Nov 2026 21:02:15 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ee1304db6e061e3b9be0580242f710e8f8778766de6e10b103e4c786061d6d4`  
		Last Modified: Wed, 18 Nov 2026 21:02:15 GMT  
		Size: 1.2 MB (1180337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e6fe5db1288029f5339e39ff2834fcd810b05b876cb9e9ce199ed84ab2661d`  
		Last Modified: Wed, 18 Nov 2026 21:02:16 GMT  
		Size: 21.3 MB (21286261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8971e79ff2077fcbff5b029f69fdb5eba262120e4fb8fe240e7577ed23ae3216`  
		Last Modified: Wed, 18 Nov 2026 21:02:15 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94a29d50f1b3f17d559b0da90d79e80049fac9c577c40a753957bd88175c0f83`  
		Last Modified: Wed, 18 Nov 2026 21:02:16 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11-meta-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:6e1f96b6d42c985f46b13e0aec0764c3df35b63d7ba038eb8073e57280edce19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **678.5 KB (678529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e11727d0c430d72ba08be74cd882ea7f6c4d61cd1cdf7ed5ee35506a418938e7`

```dockerfile
```

-	Layers:
	-	`sha256:1fda3003c3cd7e7a5d4361ecbb5e6c43d957279014106d747d13c3eee8b7e81f`  
		Last Modified: Wed, 18 Nov 2026 21:02:15 GMT  
		Size: 663.5 KB (663484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16d3d6738fdf29b8d076fdca1b422c01c468bd57c9a3a6c7321c4ce965a96b1c`  
		Last Modified: Wed, 18 Nov 2026 21:02:15 GMT  
		Size: 15.0 KB (15045 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.11.10-data`

```console
$ docker pull influxdb@sha256:306e9228b8cd657b25030ce81bddf9dbade2ee3d6fa62810a46f932553d108b5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11.10-data` - linux; amd64

```console
$ docker pull influxdb@sha256:da021b3ff76cd7ba505dae05adeb4fa50b2349b390539d1d333d0f4e7c22bd3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118323751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07de7c3d90d130973ec250a1d9cb9df72fe13530bc6ba03c2494a0299adf63c2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:26:21 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 05:26:24 GMT
ENV INFLUXDB_VERSION=1.11.10-c1.11.10
# Tue, 24 Nov 2026 05:26:24 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb* # buildkit
# Tue, 24 Nov 2026 05:26:24 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 24 Nov 2026 05:26:24 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 05:26:24 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:26:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:26:24 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 24 Nov 2026 05:26:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:26:24 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96c43e832963883db4dc88616d39d1925f54d49732e5cb7adb69f4867c73f517`  
		Last Modified: Tue, 24 Nov 2026 05:26:36 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e7a7d3d2310af96cde7fcf3a5f9ba76809fa2f096891be73b92a3644855b1b`  
		Last Modified: Tue, 24 Nov 2026 05:26:37 GMT  
		Size: 45.9 MB (45917290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d56e879edcaf311392b590357ab81309814391b37bce0d0ebbe68ac9bfdf58`  
		Last Modified: Tue, 24 Nov 2026 05:26:35 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:026f318937185fb7dff888e350015b9afb5015dd7876516d34a90b3aebfb5cc9`  
		Last Modified: Tue, 24 Nov 2026 05:26:36 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8231dc3cc9384e29073fc9bcf651fe9c6ba46e42583d28f0318dd05a6accae44`  
		Last Modified: Tue, 24 Nov 2026 05:26:37 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.10-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:823f14b24e40eb06a7d29f115235edbff6562150e0b3787ec5568f6b36d32491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4703154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f001b6731cda87b45373317f2031bfcd769cb8dd4fcfe7d6f26713a8b9792b0f`

```dockerfile
```

-	Layers:
	-	`sha256:15bf2a17c7a66e11a10855f54e7b2e58d8742edc2e605b9a1f225d7b485a1a22`  
		Last Modified: Tue, 24 Nov 2026 05:26:36 GMT  
		Size: 4.7 MB (4688509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6f6d98b7ae5b52e44eb7dc5d0cdcda01bb45f89d63e4a109087d9a67e27218c`  
		Last Modified: Tue, 24 Nov 2026 05:26:35 GMT  
		Size: 14.6 KB (14645 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.11.10-data-alpine`

```console
$ docker pull influxdb@sha256:630ed6490977bfe78c33f90bca0c41a89660cbfd86052313f4d2f36b72d51807
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11.10-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:7f0be1538a42c0c1fb0566bc550021ed065c57dbe42553123b7b46543dc8bd06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50671749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e8b089a7efc2de629275ad41f6203c5ecb48c5ff7f4044569518787d4823ae8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:01:43 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 18 Nov 2026 21:01:44 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Wed, 18 Nov 2026 21:01:48 GMT
ENV INFLUXDB_VERSION=1.11.10-c1.11.10
# Wed, 18 Nov 2026 21:01:48 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-data-${INFLUXDB_VERSION}/* &&     cp -a /usr/src/influxdb-data-${INFLUXDB_VERSION}/. /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps # buildkit
# Wed, 18 Nov 2026 21:01:48 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 18 Nov 2026 21:01:48 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 21:01:48 GMT
VOLUME [/var/lib/influxdb]
# Wed, 18 Nov 2026 21:01:48 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:01:48 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 18 Nov 2026 21:01:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:01:48 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fce4cc74a8844fdff1631eb4f7b12b953e1bdcdd6e3f74fc0ce07f11f6bec833`  
		Last Modified: Wed, 18 Nov 2026 21:01:58 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9e01890f8dc33e5460972e7d97c4aaf0d0af2e9e85c428bb6927e8a44deefd`  
		Last Modified: Wed, 18 Nov 2026 21:01:58 GMT  
		Size: 1.2 MB (1180354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc2a7b39b0fcd30555e57c340a50a0f20aea12037f6e7b87fea4a675abaa8d2`  
		Last Modified: Wed, 18 Nov 2026 21:01:59 GMT  
		Size: 45.9 MB (45863941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12f296efbc9a26f49dd86ae7f6046d39ccd1abdbe60e8e4f99be231771a62ac6`  
		Last Modified: Wed, 18 Nov 2026 21:01:58 GMT  
		Size: 239.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72e3f1056d4bc77c3c628c2d477a4ce616f1f79ebce5a2f4b064eee1dc29eb7`  
		Last Modified: Wed, 18 Nov 2026 21:01:59 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f4f514409800d00679691c0a3501f840d387938bfea370dca60a742ce0ae201`  
		Last Modified: Wed, 18 Nov 2026 21:01:59 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.10-data-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:94fe414a2c3d6ac04251a75463a4f1526d114581595cd1c72aae0a7162875e73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **772.5 KB (772525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bab531a66acc62397243bce0211bee664f4eb610d60df61848eec5e5fd8063b2`

```dockerfile
```

-	Layers:
	-	`sha256:939bc4e39a416b666c61103d979686dfa47bbba459972314c24e803dd67f0965`  
		Last Modified: Wed, 18 Nov 2026 21:01:58 GMT  
		Size: 755.9 KB (755855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86d1deec98746c6650d41e36154bceb7b221c25f93e6082df3dfa6d43f8aac3f`  
		Last Modified: Wed, 18 Nov 2026 21:01:58 GMT  
		Size: 16.7 KB (16670 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.11.10-meta`

```console
$ docker pull influxdb@sha256:87ca7f0cbf9f94241c4ca88522cf885fc80cfd5005009d940facc767194c31aa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11.10-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:dcacc9988cb57c72539e8c13986c38d854c72e71d8cdcc20cc1d298202cf4cb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93735081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98711bb7b1ac8f3eb8b54bec9d0925f5378707a26904266ca11cac4b839d2e86`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:26:25 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 24 Nov 2026 05:26:26 GMT
ENV INFLUXDB_VERSION=1.11.10-c1.11.10
# Tue, 24 Nov 2026 05:26:26 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb* # buildkit
# Tue, 24 Nov 2026 05:26:26 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Tue, 24 Nov 2026 05:26:26 GMT
EXPOSE map[8091/tcp:{}]
# Tue, 24 Nov 2026 05:26:26 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:26:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:26:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:26:26 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98e61202e25d6ac58415b838b5e59bee4009cf2b82b01d3a8ecdd201b3caf2f8`  
		Last Modified: Tue, 24 Nov 2026 05:26:35 GMT  
		Size: 5.1 KB (5064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffbad76c5b03d7efb1cb7fd454ea664a10ac0870aa4c34c79998783f36fbd1d5`  
		Last Modified: Tue, 24 Nov 2026 05:26:36 GMT  
		Size: 21.3 MB (21329824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99058f2d4c5ebbb6c0085719e2d1caad607caf9c91640511f5310106773e8a14`  
		Last Modified: Tue, 24 Nov 2026 05:26:35 GMT  
		Size: 192.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57b6b3f35901671fbbf1b364652d2affa7e1087e45bcd4afeb06b67fd040813`  
		Last Modified: Tue, 24 Nov 2026 05:26:35 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.10-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:49a2ba6a6f4c1c0ad8abbb80ecaaefd9651b9a06ca403a8a705e03e25fe22495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4608356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb27254953f371d9e8425d6dc334b9e4a1cfaf42cdce43ed48277f4b4c5bdb5`

```dockerfile
```

-	Layers:
	-	`sha256:1efa476021b7d6f721f861e94a309dc20c3dc810a6d4635b690dfb4cf8a74e5b`  
		Last Modified: Tue, 24 Nov 2026 05:26:36 GMT  
		Size: 4.6 MB (4595352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:375e1448461b0621a2d5a74f8bc3f4816c535570623bf69a0e46505782c4f1cc`  
		Last Modified: Tue, 24 Nov 2026 05:26:35 GMT  
		Size: 13.0 KB (13004 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.11.10-meta-alpine`

```console
$ docker pull influxdb@sha256:f6208cfe469004cc2c6b35576f0dfecc8866bf255f23d29f73aabfb09cd6af8a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11.10-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:1f2fadecccca61d519bca6562b42b2ca575f6a272d4aef56c6f5d63444667f32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.1 MB (26092843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bca2086697e05d517f76ddc2bda49491762a7a879952c20ae96f90b94421352`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:02:02 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 18 Nov 2026 21:02:03 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Wed, 18 Nov 2026 21:02:08 GMT
ENV INFLUXDB_VERSION=1.11.10-c1.11.10
# Wed, 18 Nov 2026 21:02:08 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-meta-${INFLUXDB_VERSION}/* &&     cp -a /usr/src/influxdb-meta-${INFLUXDB_VERSION}/. /usr/bin/ &&     gpgconf --kill all &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps # buildkit
# Wed, 18 Nov 2026 21:02:08 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Wed, 18 Nov 2026 21:02:08 GMT
EXPOSE map[8091/tcp:{}]
# Wed, 18 Nov 2026 21:02:08 GMT
VOLUME [/var/lib/influxdb]
# Wed, 18 Nov 2026 21:02:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:02:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:02:08 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ad3fab217299d46314e16a623d9a665cf7b2a25ea427352e3c37dc2df97986`  
		Last Modified: Wed, 18 Nov 2026 21:02:15 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ee1304db6e061e3b9be0580242f710e8f8778766de6e10b103e4c786061d6d4`  
		Last Modified: Wed, 18 Nov 2026 21:02:15 GMT  
		Size: 1.2 MB (1180337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e6fe5db1288029f5339e39ff2834fcd810b05b876cb9e9ce199ed84ab2661d`  
		Last Modified: Wed, 18 Nov 2026 21:02:16 GMT  
		Size: 21.3 MB (21286261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8971e79ff2077fcbff5b029f69fdb5eba262120e4fb8fe240e7577ed23ae3216`  
		Last Modified: Wed, 18 Nov 2026 21:02:15 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94a29d50f1b3f17d559b0da90d79e80049fac9c577c40a753957bd88175c0f83`  
		Last Modified: Wed, 18 Nov 2026 21:02:16 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.10-meta-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:6e1f96b6d42c985f46b13e0aec0764c3df35b63d7ba038eb8073e57280edce19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **678.5 KB (678529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e11727d0c430d72ba08be74cd882ea7f6c4d61cd1cdf7ed5ee35506a418938e7`

```dockerfile
```

-	Layers:
	-	`sha256:1fda3003c3cd7e7a5d4361ecbb5e6c43d957279014106d747d13c3eee8b7e81f`  
		Last Modified: Wed, 18 Nov 2026 21:02:15 GMT  
		Size: 663.5 KB (663484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16d3d6738fdf29b8d076fdca1b422c01c468bd57c9a3a6c7321c4ce965a96b1c`  
		Last Modified: Wed, 18 Nov 2026 21:02:15 GMT  
		Size: 15.0 KB (15045 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.11.8`

```console
$ docker pull influxdb@sha256:300a2bb2fd9d66c476c4bd7ca3ce6135d485151cce19b605ef7ab2a000fa1845
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.11.8` - linux; amd64

```console
$ docker pull influxdb@sha256:6ffcae9657f43c61a7d9361e4962e8ee717e4d76ffd013b0856a68efad3894f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116061789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39ea46a843aee5937beb038b028fd87e7444b43a0e8f64d264ed14e3595ab024`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:25:20 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 24 Nov 2026 05:26:16 GMT
ARG INFLUXDB_VERSION=1.11.8
# Tue, 24 Nov 2026 05:26:16 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     case "$(dpkg --print-architecture)" in       *amd64) ARCH=amd64 ;;       *arm64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_DEB=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_DEB}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_DEB}" &&     apt-get install -y "./${INFLUXDB_DEB}" &&     rm -rf "${INFLUXDB_DEB}"            "${INFLUXDB_ASC}" 	   /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:26:16 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 24 Nov 2026 05:26:16 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 05:26:16 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:26:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:26:16 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 24 Nov 2026 05:26:16 GMT
USER influxdb
# Tue, 24 Nov 2026 05:26:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:26:16 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2027e1f02fc742c1938e561e264810fef9ee135f2d697e9401130d69f439b558`  
		Last Modified: Tue, 24 Nov 2026 05:25:39 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2f95d8d186fafd49f69c76c14c823a5846ece9f37debef928e432b30eeb948`  
		Last Modified: Tue, 24 Nov 2026 05:26:29 GMT  
		Size: 43.7 MB (43659244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d74f072bfaffaf66e36f3302d8a37b108dc22c396b92faa3c8826943000516d6`  
		Last Modified: Tue, 24 Nov 2026 05:26:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38060b412d2d75501d9122d76154c0ca78a46b8f3695244ee0aaf55c1cd00b9d`  
		Last Modified: Tue, 24 Nov 2026 05:26:27 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:814b7a04ad3f47105f3b5ddae8b1375c64e0091dd4975488cb63bb5c67c6cd4a`  
		Last Modified: Tue, 24 Nov 2026 05:26:28 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.8` - unknown; unknown

```console
$ docker pull influxdb@sha256:bd4676565067e10133761c22c13b85a80247376d4c3d71e56827ad8285f0b122
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5097312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61295ab1833319a060f77b052b9b454ba7ef200eb77dd8b7d6522b82dcea5003`

```dockerfile
```

-	Layers:
	-	`sha256:d8ab80098f4bb74f7afd76ec65345ac98686c85704d0d978e4a2a94685a7e6bb`  
		Last Modified: Tue, 24 Nov 2026 05:26:28 GMT  
		Size: 5.1 MB (5081826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c338095d6f7ce66d61d45854df2e0324cc9eac035dcdc3524bdd3eeee5a2223a`  
		Last Modified: Tue, 24 Nov 2026 05:26:27 GMT  
		Size: 15.5 KB (15486 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.11.8` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:00c541bc278164cbf1961de4faf11849237476941d859211280da89e2a729eeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.0 MB (112987565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb090f5f9df97e3a98736e3a21fb1a3cabe95d8547a126471d96d2b207cab025`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:37:25 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 24 Nov 2026 05:37:58 GMT
ARG INFLUXDB_VERSION=1.11.8
# Tue, 24 Nov 2026 05:37:58 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     case "$(dpkg --print-architecture)" in       *amd64) ARCH=amd64 ;;       *arm64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_DEB=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_DEB}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_DEB}" &&     apt-get install -y "./${INFLUXDB_DEB}" &&     rm -rf "${INFLUXDB_DEB}"            "${INFLUXDB_ASC}" 	   /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:37:58 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 24 Nov 2026 05:37:58 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 05:37:58 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:37:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:37:58 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 24 Nov 2026 05:37:58 GMT
USER influxdb
# Tue, 24 Nov 2026 05:37:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:37:58 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41e80db409d5b905f3c0d8228a2f82637b923bf2af30b11e87cb3b42e5e070d7`  
		Last Modified: Tue, 24 Nov 2026 04:43:36 GMT  
		Size: 23.4 MB (23440379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf986c6e4ab90356af03639b6719767b6d95ff1b00ff93f5257aa918625b6642`  
		Last Modified: Tue, 24 Nov 2026 05:37:42 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7475ad353d74d1f8bae3a1ae00173545116839f875819f679a766943aecc940`  
		Last Modified: Tue, 24 Nov 2026 05:38:10 GMT  
		Size: 41.1 MB (41132021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae3cec30788cf894a2c4a6e877191f730211fb9b14de36acf76eac940f0e8ef`  
		Last Modified: Tue, 24 Nov 2026 05:38:09 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19f79c9e2f5a562d08d6b1f22e8d666a239e88119b5094c8b0c87350f1c0eb51`  
		Last Modified: Tue, 24 Nov 2026 05:38:09 GMT  
		Size: 207.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1a9600d8fef5580ec8c10675854f25f1bdfac80dbe4750cd1e206d763796a33`  
		Last Modified: Tue, 24 Nov 2026 05:38:09 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.8` - unknown; unknown

```console
$ docker pull influxdb@sha256:a73b8c9b05022b263c7e593ea14485352379784751e5cf99cd7def87eca4655c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5096872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4721b903fcd4baeb36ab639852b1a1ef4583b38a6423ebb899e70ef38dc0e717`

```dockerfile
```

-	Layers:
	-	`sha256:b1512eba92f001e1d3b3a742d406bf55a5df4efcda2b20c2c57db91370259b7b`  
		Last Modified: Tue, 24 Nov 2026 05:38:09 GMT  
		Size: 5.1 MB (5081291 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c8029cd7f2d39a6e81768cb950ac7979cc232c29389f61186d74285890fcd17`  
		Last Modified: Tue, 24 Nov 2026 05:38:09 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.11.8-alpine`

```console
$ docker pull influxdb@sha256:446ae48b3849b8ee703edc189ab3e7fcce1b44d01142b07ae4189ac5988f11ae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.11.8-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:17ebda4c41e8d26727495ccd5c210ccfa4af49689c79007ec5a2ba6122a38d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.9 MB (42882593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95785a89578ae073d42f74734100131aa1a9ce3748430ad7eeeab3cd68d57831`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:24:15 GMT
RUN apk add --no-cache       bash       ca-certificates       tzdata &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:24:19 GMT
ARG INFLUXDB_VERSION=1.11.8
# Thu, 05 Nov 2026 19:24:19 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN apk add --no-cache --virtual .build-deps       curl       gnupg       tar &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     case "$(apk --print-arch)" in       x86_64)  ARCH=amd64 ;;       aarch64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_TAR=influxdb-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_TAR}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_TAR}" &&     tar -xf "${INFLUXDB_TAR}" -C /usr/bin       influx       influx_inspect       influxd &&     rm -rf "${INFLUXDB_TAR}"            "${INFLUXDB_ASC}" &&     apk del .build-deps # buildkit
# Thu, 05 Nov 2026 19:24:19 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 19:24:20 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb &&     mkdir -p /var/lib/influxdb &&     mkdir -p /var/log/influxdb &&     chown influxdb:influxdb /var/lib/influxdb &&     chown influxdb:influxdb /var/log/influxdb &&     chmod 0750 /var/lib/influxdb &&     chmod 0750 /var/log/influxdb # buildkit
# Thu, 05 Nov 2026 19:24:20 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 19:24:20 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 19:24:20 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:24:20 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 19:24:20 GMT
USER influxdb
# Thu, 05 Nov 2026 19:24:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:24:20 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee444104ebfda877f5731d7f3f43078bd4902aebf487b0ee6f9ac49ad681772`  
		Last Modified: Thu, 05 Nov 2026 19:24:29 GMT  
		Size: 1.2 MB (1180337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76517fdb569d3c1a2950b285e11bd4a70c729b45188a8f51db9f4d241c78d3ee`  
		Last Modified: Thu, 05 Nov 2026 19:24:30 GMT  
		Size: 38.1 MB (38074149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6bacb86f4c590865556abe798b8031430d901db34e1272c3df0db364ba14443`  
		Last Modified: Thu, 05 Nov 2026 19:24:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:019a4a1dc5a11eea77aa6a814c68f4c19fb3b53a82844e86a90a895a75a7a8b6`  
		Last Modified: Thu, 05 Nov 2026 19:24:28 GMT  
		Size: 992.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e50c44915f05bb554b02eca3fbd74ed50eede74b0498c742aeb9131e48761d8`  
		Last Modified: Thu, 05 Nov 2026 19:24:29 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9cbae33fea56e099d14214cafb9339496fd32501270fe07116e988ba3077457`  
		Last Modified: Thu, 05 Nov 2026 19:24:30 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.8-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:1fe6356bdf9c5bfddda45d1e8404ce2b5fad423700c64b8fb12b1c72b2c47053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **747.2 KB (747229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5620b04bc7f2c7fa090b3c49967f6d13ec842f5acfc4cb89e69a0d5e68df634c`

```dockerfile
```

-	Layers:
	-	`sha256:53f8646b00c469333ce1e441de727d1185a9a4799433831b349dc94583d876ce`  
		Last Modified: Thu, 05 Nov 2026 19:24:29 GMT  
		Size: 729.4 KB (729398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce1eaf6bac1ccfed0a305872bed81216313ba69754caaa0ee57bd8e67fd6649b`  
		Last Modified: Thu, 05 Nov 2026 19:24:28 GMT  
		Size: 17.8 KB (17831 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.11.8-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:0a11cf908b3382771cde30c9814164e980b0550848db210897d1e90652e09806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 MB (40769532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5fc1e26615ba900e91fee3d28f45b0769619da014517ac9811f96756dff9806`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.21.10-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:18:27 GMT
RUN apk add --no-cache       bash       ca-certificates       tzdata &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:18:32 GMT
ARG INFLUXDB_VERSION=1.11.8
# Thu, 05 Nov 2026 19:18:32 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN apk add --no-cache --virtual .build-deps       curl       gnupg       tar &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     case "$(apk --print-arch)" in       x86_64)  ARCH=amd64 ;;       aarch64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_TAR=influxdb-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-linux-${ARCH}.tar.gz.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_TAR}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_TAR}" &&     tar -xf "${INFLUXDB_TAR}" -C /usr/bin       influx       influx_inspect       influxd &&     rm -rf "${INFLUXDB_TAR}"            "${INFLUXDB_ASC}" &&     apk del .build-deps # buildkit
# Thu, 05 Nov 2026 19:18:32 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 19:18:32 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb &&     mkdir -p /var/lib/influxdb &&     mkdir -p /var/log/influxdb &&     chown influxdb:influxdb /var/lib/influxdb &&     chown influxdb:influxdb /var/log/influxdb &&     chmod 0750 /var/lib/influxdb &&     chmod 0750 /var/log/influxdb # buildkit
# Thu, 05 Nov 2026 19:18:32 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 19:18:32 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 19:18:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:18:32 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 19:18:32 GMT
USER influxdb
# Thu, 05 Nov 2026 19:18:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:18:32 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:26089ff12bb135aa8812e1bf486b799444fdf6cac9f60bf694ac523fbb8ad19a`  
		Last Modified: Thu, 05 Nov 2026 18:00:54 GMT  
		Size: 4.0 MB (3974423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e6cc1a2a9444ba15c40d7f02af4c320342d86a030150c58a83087c3ad92c59e`  
		Last Modified: Thu, 05 Nov 2026 19:18:41 GMT  
		Size: 1.2 MB (1244841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44c24f9934303c9003b1b517c14d0339bd8b3ba991db74021b46e0303df6f7ae`  
		Last Modified: Thu, 05 Nov 2026 19:18:42 GMT  
		Size: 35.5 MB (35547561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcbf843f7834e7563d4c9704830aa62a1a9519a87dc81c5a52a8c4b27136bf9d`  
		Last Modified: Thu, 05 Nov 2026 19:18:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362af065b6c0bd80ead0ec2ff900835e3799206a7bc1c90225221c758a508050`  
		Last Modified: Thu, 05 Nov 2026 19:18:41 GMT  
		Size: 990.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee527e0a7d88a8924c43dfd3c7abefc1244b90724d51c4821871152f5eeace20`  
		Last Modified: Thu, 05 Nov 2026 19:18:42 GMT  
		Size: 211.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:408bc9fa35b3041ad058d9c017407cd28027e63d55edf68136b20ad5a2c3cdf1`  
		Last Modified: Thu, 05 Nov 2026 19:18:42 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.8-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:fc8183553c9a77836bac58b3346e2552ff001fa597f0b6891d2df72f01da7336
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **746.6 KB (746566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31bcfca1fceef82dc1bf005158e86703336fb94fb40df585ef8b17ce87aad598`

```dockerfile
```

-	Layers:
	-	`sha256:eb68373efd504601057abdbfbe5858411bc81bfda8288f100d8a7c7c0c2364af`  
		Last Modified: Thu, 05 Nov 2026 19:18:41 GMT  
		Size: 728.6 KB (728625 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:455d15999132af71e814066de684f653d6ef52bef67f0d0d57f25568d703f8d8`  
		Last Modified: Thu, 05 Nov 2026 19:18:41 GMT  
		Size: 17.9 KB (17941 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.12`

```console
$ docker pull influxdb@sha256:13ffcbd3d6c2c4c35c747da52f09d54dc340ad55497e74820cbcafeb1d7c237c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.12` - linux; amd64

```console
$ docker pull influxdb@sha256:f601dd3374a4f1c5341a6c0a0e38bba96936ef4a1e9841025c38d2f42b9aaf54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114528940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd01696e33fc3431b4503f2b84df8bce43c409ecb908056d9d200c19c406669`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:25:57 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 24 Nov 2026 05:26:02 GMT
ENV INFLUXDB_VERSION=1.12.4
# Tue, 24 Nov 2026 05:26:02 GMT
ENV INFLUXDB_PR=-1
# Tue, 24 Nov 2026 05:26:02 GMT
ENV INFLUXDB_PV=1.12.4-1
# Tue, 24 Nov 2026 05:26:02 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:26:02 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 24 Nov 2026 05:26:02 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 05:26:02 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:26:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:26:02 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 24 Nov 2026 05:26:02 GMT
USER influxdb
# Tue, 24 Nov 2026 05:26:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:26:02 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a013c66af5745f599f293e5df8f297e3c97a26da71116dc9d8eda0b7a0ccfbf`  
		Last Modified: Tue, 24 Nov 2026 05:26:14 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf2bf2439bd5e75e3e2dac62a15461851b05099f16ad30040927c9405bc415e`  
		Last Modified: Tue, 24 Nov 2026 05:26:15 GMT  
		Size: 42.1 MB (42126399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7148a2d8368fad58fa3b01d2da46c455120375ba2d4c23e164676d22935b93`  
		Last Modified: Tue, 24 Nov 2026 05:26:14 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0742f22511049c60f654020d15118ac48c47174cc71301e2666d99130d9b6cd7`  
		Last Modified: Tue, 24 Nov 2026 05:26:14 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1d655b09b8fc38f9d4c594b67438337eea0e0646b8e6d007d564838795712b5`  
		Last Modified: Tue, 24 Nov 2026 05:26:15 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12` - unknown; unknown

```console
$ docker pull influxdb@sha256:c8f03bfe6ca9f92aaa848fb3b758961d1eec4d0d29a2b5fcca2198464435e25a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4697180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2136adc7aaf35984b52ddd96a91a12e17a0dabc6057c00648a0d9074c943b605`

```dockerfile
```

-	Layers:
	-	`sha256:e72c10a6b92ed279ae5ec4742a93499774d8f802d6deeed0d02fe650e5c1613a`  
		Last Modified: Tue, 24 Nov 2026 05:26:14 GMT  
		Size: 4.7 MB (4680652 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53566f0bbfb67ae85582d53b08fb3bcf61c9f00d58d8eb3efb1d573baf910f32`  
		Last Modified: Tue, 24 Nov 2026 05:26:14 GMT  
		Size: 16.5 KB (16528 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.12` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:b11e3d9009686d8cca29e79f41dd8d571645beec3e08e2e0390abde9a7d22675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110609849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f94b62e49237889b112999172371c4e14538d5c120045279a2aa8ee94e88fcc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:37:25 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 24 Nov 2026 05:37:31 GMT
ENV INFLUXDB_VERSION=1.12.4
# Tue, 24 Nov 2026 05:37:31 GMT
ENV INFLUXDB_PR=-1
# Tue, 24 Nov 2026 05:37:31 GMT
ENV INFLUXDB_PV=1.12.4-1
# Tue, 24 Nov 2026 05:37:31 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:37:31 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 24 Nov 2026 05:37:31 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 05:37:31 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:37:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:37:31 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 24 Nov 2026 05:37:31 GMT
USER influxdb
# Tue, 24 Nov 2026 05:37:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:37:31 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41e80db409d5b905f3c0d8228a2f82637b923bf2af30b11e87cb3b42e5e070d7`  
		Last Modified: Tue, 24 Nov 2026 04:43:36 GMT  
		Size: 23.4 MB (23440379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf986c6e4ab90356af03639b6719767b6d95ff1b00ff93f5257aa918625b6642`  
		Last Modified: Tue, 24 Nov 2026 05:37:42 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb50ecf4f719241583e56ba882994d3fd08efa58faaaadae2018966aebe4ee4`  
		Last Modified: Tue, 24 Nov 2026 05:37:44 GMT  
		Size: 38.8 MB (38754301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c374184df45aef1c14fb9a29c00d270d8bcd6ec1c94c888eaaed99f62957d5`  
		Last Modified: Tue, 24 Nov 2026 05:37:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ddaaf2579d8d1fc04f84c20dbc30a77fa3edb150fc0e7be38ca988648c3e746`  
		Last Modified: Tue, 24 Nov 2026 05:37:43 GMT  
		Size: 207.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:841faebdaf406e0bb4bc32974b34c3daadf0f4e7870de2014a7c990a9e497808`  
		Last Modified: Tue, 24 Nov 2026 05:37:44 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12` - unknown; unknown

```console
$ docker pull influxdb@sha256:2a6d1537f34a48647e9861c5848fda7b28303981e28f82e9c61ebe26c25c4163
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4696732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f930e3b2fc20063ba4a8b7abf560d48584cbd25e9cc23c961a6a7d0af2558d96`

```dockerfile
```

-	Layers:
	-	`sha256:e120a4c11f70e3f0194301cc71361b49eb9012a86b73b542343b2259b62b34ca`  
		Last Modified: Tue, 24 Nov 2026 05:37:43 GMT  
		Size: 4.7 MB (4680108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79d000cc3a9133bcba2e9e74a14ab591f210368948f0363ddc4cdc44abed6b65`  
		Last Modified: Tue, 24 Nov 2026 05:37:42 GMT  
		Size: 16.6 KB (16624 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.12-alpine`

```console
$ docker pull influxdb@sha256:fdc23167a2dc97f7f3127e21f6861b78b04c5319b79ed76e942ade03bdbd8dcd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.12-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:58ff43bb9702bf5e91b8796e873db1c72cb5ade28f0335c90831e9a00101bfe4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46862741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd700721f1bac45ae584d4c2976088463c80168434f52dfd1473b35b672a3c90`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:23:49 GMT
RUN apk add --no-cache bash ca-certificates tzdata &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:23:55 GMT
ENV INFLUXDB_VERSION=1.12.4
# Thu, 05 Nov 2026 19:23:55 GMT
ENV INFLUXDB_PR=
# Thu, 05 Nov 2026 19:23:55 GMT
ENV INFLUXDB_PV=1.12.4
# Thu, 05 Nov 2026 19:23:55 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     case "$(apk --print-arch)" in         x86_64)  ARCH=amd64 ;;         aarch64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"         "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     tar -xvf "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influx'             'influxdb-*/influx_inspect'             'influxdb-*/influxd' &&     rm "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"        "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     apk del .build-deps # buildkit
# Thu, 05 Nov 2026 19:23:55 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 19:23:55 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb &&     mkdir -p /var/lib/influxdb &&     mkdir -p /var/log/influxdb &&     chown influxdb:influxdb /var/lib/influxdb &&     chown influxdb:influxdb /var/log/influxdb &&     chmod 0750 /var/lib/influxdb &&     chmod 0750 /var/log/influxdb # buildkit
# Thu, 05 Nov 2026 19:23:55 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 19:23:55 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 19:23:55 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:23:55 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 19:23:55 GMT
USER influxdb
# Thu, 05 Nov 2026 19:23:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:23:55 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae4ad490f241db73ad8361a320fffe48b2257f867ba1ad557d5a2882cc1c523`  
		Last Modified: Thu, 05 Nov 2026 19:24:05 GMT  
		Size: 1.2 MB (1180320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d4ac3b35999612c8114bc99041f0787e13f4d53115f061e5cf88a3e218f604`  
		Last Modified: Thu, 05 Nov 2026 19:24:06 GMT  
		Size: 42.1 MB (42054310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762a4ff1b61a189c25ffa280e67a206cd497efbc0c7f4fe1d08f0c723779e9f1`  
		Last Modified: Thu, 05 Nov 2026 19:24:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75ca07ca2383b4cd1abd246d68b1defceafcb06d55c11e1fdd706c73864fde13`  
		Last Modified: Thu, 05 Nov 2026 19:24:05 GMT  
		Size: 991.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73f5c5b57df60d417ecd117cd65d6768ef7b42353a9eebfe11cf7ea95cdbb66b`  
		Last Modified: Thu, 05 Nov 2026 19:24:06 GMT  
		Size: 212.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a98f168e680fef359c577eedbd821955aec70f5a798628f609c847581a942f`  
		Last Modified: Thu, 05 Nov 2026 19:24:06 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:0b96bad49aed7b02dc4420a3069759267587fae72c31d8f63a6d7f4d938fd00c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **762.4 KB (762380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376befc2e0b968bb3a81d9db323b7341e315acb5dcfaa47864ccf811c800ec93`

```dockerfile
```

-	Layers:
	-	`sha256:f7a6844ff7c3bf1f4e1e23302287276233d895d7e3f5f22d2240579fc85c4956`  
		Last Modified: Thu, 05 Nov 2026 19:24:05 GMT  
		Size: 743.7 KB (743662 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:701a88b609b9cf763e6b6840af962802d533417c5b183293b0b68e9f8483a765`  
		Last Modified: Thu, 05 Nov 2026 19:24:05 GMT  
		Size: 18.7 KB (18718 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.12-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:d9492b5369f75b99f35d2b91de912f0b476e69671acf70c299b2593d818dc7b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43900150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36f4c57255a957d8dedc625b2acfdfabbda514aea798e24785f43a71f5d29214`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.21.10-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:18:07 GMT
RUN apk add --no-cache bash ca-certificates tzdata &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:18:11 GMT
ENV INFLUXDB_VERSION=1.12.4
# Thu, 05 Nov 2026 19:18:11 GMT
ENV INFLUXDB_PR=
# Thu, 05 Nov 2026 19:18:11 GMT
ENV INFLUXDB_PV=1.12.4
# Thu, 05 Nov 2026 19:18:11 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     case "$(apk --print-arch)" in         x86_64)  ARCH=amd64 ;;         aarch64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"         "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     tar -xvf "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influx'             'influxdb-*/influx_inspect'             'influxdb-*/influxd' &&     rm "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"        "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     apk del .build-deps # buildkit
# Thu, 05 Nov 2026 19:18:11 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 19:18:11 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb &&     mkdir -p /var/lib/influxdb &&     mkdir -p /var/log/influxdb &&     chown influxdb:influxdb /var/lib/influxdb &&     chown influxdb:influxdb /var/log/influxdb &&     chmod 0750 /var/lib/influxdb &&     chmod 0750 /var/log/influxdb # buildkit
# Thu, 05 Nov 2026 19:18:11 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 19:18:11 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 19:18:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:18:12 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 19:18:12 GMT
USER influxdb
# Thu, 05 Nov 2026 19:18:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:18:12 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:26089ff12bb135aa8812e1bf486b799444fdf6cac9f60bf694ac523fbb8ad19a`  
		Last Modified: Thu, 05 Nov 2026 18:00:54 GMT  
		Size: 4.0 MB (3974423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97a36e25c5a11dbf7eade3d592a3be00ad09ec6ccc8f6badba0e0f4cab8fe3c1`  
		Last Modified: Thu, 05 Nov 2026 19:18:21 GMT  
		Size: 1.2 MB (1244842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07602f9f27a5a17f913ba2ebaa5e9f8386436aad9d35baa1015309baaeb108ff`  
		Last Modified: Thu, 05 Nov 2026 19:18:22 GMT  
		Size: 38.7 MB (38678183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ac3d35017d8831a376191400929dc8ec2789b336d0a0fa255dd0a11eae1568c`  
		Last Modified: Thu, 05 Nov 2026 19:18:21 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aea26b88cf7781394eb52c29cfd214bcdbc1c097581f069c2015c6e1190606f4`  
		Last Modified: Thu, 05 Nov 2026 19:18:21 GMT  
		Size: 989.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9af72775507ab29c74b3ed3c9978525111d6bf9e92b0d0c973bf39dbfbed10eb`  
		Last Modified: Thu, 05 Nov 2026 19:18:22 GMT  
		Size: 211.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39912f22ff41c3cb5e931c4b1b788d6dd0a35796b6927be642a8fe80269a98b6`  
		Last Modified: Thu, 05 Nov 2026 19:18:22 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:8071d85ac2725a5a20f90aad8eaf707d1f4f43538eacbef1a66fa2e46a81374f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **761.7 KB (761717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9ae240e11764a73b7907a7ddd0489ebc7f8fe8f7252a92880b5c959c8a246d3`

```dockerfile
```

-	Layers:
	-	`sha256:d934796eb767f35956915a971fbea95219610a8929df8760bb78d5835808cb5c`  
		Last Modified: Thu, 05 Nov 2026 19:18:21 GMT  
		Size: 742.9 KB (742889 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e6a403e8a7393c77aae5db8681dfdd25aa4ea7c3990c47431a92378427b4e81`  
		Last Modified: Thu, 05 Nov 2026 19:18:21 GMT  
		Size: 18.8 KB (18828 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.12-data`

```console
$ docker pull influxdb@sha256:227dcf6602b985231ec7ca444c9682f62eb3df72373260b91f82793ab72f25a9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12-data` - linux; amd64

```console
$ docker pull influxdb@sha256:6680dae7214e26364a59fa50bd006a13532461bc57eaa5ae1a52ab35fda3905a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.5 MB (126473954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6be16b89b631328e6120018aebb1b445f24452070fea34fd06f752990d247b9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:26:04 GMT
ENV INFLUXDB_VERSION=1.12.5-c1.12.5
# Tue, 24 Nov 2026 05:26:04 GMT
ENV INFLUXDB_PR=
# Tue, 24 Nov 2026 05:26:04 GMT
ENV INFLUXDB_PV=1.12.5-c1.12.5
# Tue, 24 Nov 2026 05:26:04 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-data_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:26:04 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 24 Nov 2026 05:26:04 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 05:26:04 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:26:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:26:04 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 24 Nov 2026 05:26:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:26:04 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912919e963a171ad7f6d68e1c35eed94a146149d9ed0f61321710e02f370e3f8`  
		Last Modified: Tue, 24 Nov 2026 05:26:19 GMT  
		Size: 54.1 MB (54072545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b1cee16252fe63ccc373c0aa057a71690724bfbe7a993409e7bdd48c68ea77a`  
		Last Modified: Tue, 24 Nov 2026 05:26:17 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6601d31eaf9b4f603fd19a601985b432b215ec3209d542bb0f388ea17031f975`  
		Last Modified: Tue, 24 Nov 2026 05:26:17 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8437c47e018522a3b4335f2550e343c653d8d3c947083cb4402480f35ec1bfb8`  
		Last Modified: Tue, 24 Nov 2026 05:26:17 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:0afd7f874301171488a081830157b16a7e95c9e37282d7d53a868f7cc37deff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4718861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3789939b090e6a625a5c3b004be121fa77e87c5d9fcb78b88d0b5488d80199a0`

```dockerfile
```

-	Layers:
	-	`sha256:4efe40380374d84c65deb12bdca41c0c706eee1cf3bbe0fe7606073c760713e3`  
		Last Modified: Tue, 24 Nov 2026 05:26:17 GMT  
		Size: 4.7 MB (4704708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84c31be7b03ffa1e60ef1eec7034c612b40901518203f67b5a89fa4e807cbb48`  
		Last Modified: Tue, 24 Nov 2026 05:26:17 GMT  
		Size: 14.2 KB (14153 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.12-data-alpine`

```console
$ docker pull influxdb@sha256:1b230bd52c4aea573707fb107e10103390d0584fef354ff0ff71754c6f841001
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:c5344ac1ff3e34d9303bb64af3e787ab3722e64ae700699fb3632f77009abd3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.8 MB (58811763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fe6f9778dbf47f7eb8df50745942787c7f362b5db0f10870df7d2af50afb063`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:00:50 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
ENV INFLUXDB_VERSION=1.12.5-c1.12.5
# Wed, 18 Nov 2026 21:00:56 GMT
ENV INFLUXDB_PR=
# Wed, 18 Nov 2026 21:00:56 GMT
ENV INFLUXDB_PV=1.12.5-c1.12.5
# Wed, 18 Nov 2026 21:00:56 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"         "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     tar -xvf "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influx'             'influxdb-*/influx_inspect'             'influxdb-*/influxd' &&     rm "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"        "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     apk del .build-deps # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 21:00:56 GMT
VOLUME [/var/lib/influxdb]
# Wed, 18 Nov 2026 21:00:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:00:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7261ce94c7bcc467c6dc2e0d9365eb8890ea9c0578e993bccb61875b13e17381`  
		Last Modified: Wed, 18 Nov 2026 21:01:08 GMT  
		Size: 1.2 MB (1180334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:085caa944777214ac55ff994a265bad7c9d924a13cc722c2fbf01845bc94c4cb`  
		Last Modified: Wed, 18 Nov 2026 21:01:12 GMT  
		Size: 54.0 MB (54004254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64d3cc74fd0377bc5a6cd59d1cd8592efd5601910463c84357c0c5d8a3462a09`  
		Last Modified: Wed, 18 Nov 2026 21:01:07 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:798efff9e60a46fbf3b35b88b87090a9d2db73e791435739966036a7e15fe446`  
		Last Modified: Wed, 18 Nov 2026 21:01:07 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae243f1827a17edcc18d102f5164f08d226d330b472c4391492c5e7c2c67561`  
		Last Modified: Wed, 18 Nov 2026 21:01:09 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12-data-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:4c191806b22178ed06e33df33e3bed822e671f5959f48905ca1082d42d8a54b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **787.6 KB (787602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d485330de7d9be1666eb07188ffa206293787e38c6dd0fc93a9aa99800ac6542`

```dockerfile
```

-	Layers:
	-	`sha256:3b1c9310336a8601b15f086b0e726b79dce61f85a77482d4ca4172e705d441e0`  
		Last Modified: Wed, 18 Nov 2026 21:01:07 GMT  
		Size: 772.1 KB (772072 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90cec59e1cf02ceca6189835e040eef230dcb61fb240d9d25d20526395ab267d`  
		Last Modified: Wed, 18 Nov 2026 21:01:07 GMT  
		Size: 15.5 KB (15530 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.12-meta`

```console
$ docker pull influxdb@sha256:a8f805721d362c2b681c68d0e2bd5add4a9181bbb715984bebbd6201ec90eb0f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:1acf05c3a3f4989ee7b57a5b3e26264de91e7ea1c925660e4b44b10a58a76078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.0 MB (96021691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b49ea68680b3e08f2cb606fdee4059fb64947463822ef63425f20f4e0b7c094`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:26:10 GMT
ENV INFLUXDB_VERSION=1.12.5-c1.12.5
# Tue, 24 Nov 2026 05:26:10 GMT
ENV INFLUXDB_PR=
# Tue, 24 Nov 2026 05:26:10 GMT
ENV INFLUXDB_PV=1.12.5-c1.12.5
# Tue, 24 Nov 2026 05:26:10 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-meta_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:26:10 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Tue, 24 Nov 2026 05:26:10 GMT
EXPOSE map[8091/tcp:{}]
# Tue, 24 Nov 2026 05:26:10 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:26:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:26:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:26:10 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39cd55a56b3eec6e6ae51ffc4fe67ca8a2e6686519b928126098f9e681f1cf40`  
		Last Modified: Tue, 24 Nov 2026 05:26:24 GMT  
		Size: 23.6 MB (23621492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:699554ab956b144e433a80a4ba48b4abf9bedd0f65ab9537b25dc3c2d4ae5768`  
		Last Modified: Tue, 24 Nov 2026 05:26:24 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bcf0892de9a64bc254007834e28b488e807f08c9d47eb12d1f801bb712d88d3`  
		Last Modified: Tue, 24 Nov 2026 05:26:24 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:71807407e8c7a8006b98e544d61f4f6b95cd4f2d939b8d83becbed6dc0638b5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4610424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0bf13171cfd50955c8e8a23962fb754d47ddeabc04f838fdc09994f90e0490`

```dockerfile
```

-	Layers:
	-	`sha256:e7ec27e3776e8f83a71d5098605da5e5f1f108a7f7a1c7ebd738c5dd29f6cde9`  
		Last Modified: Tue, 24 Nov 2026 05:26:24 GMT  
		Size: 4.6 MB (4597760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:262b5daeaaed822f996232a022e7a4c7c40b06b81a62298b9678e7b76d059f28`  
		Last Modified: Tue, 24 Nov 2026 05:26:24 GMT  
		Size: 12.7 KB (12664 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.12-meta-alpine`

```console
$ docker pull influxdb@sha256:232f9370cf8985c18da5a739a0b47420e564278b9f0b48809b96b92d73d98b98
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:7cb788386d5b612e924a8a290909849219eb67f9620c395d783d8d8665559e4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28367974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f45f6615381d496fbccb06bfa59307a7b463a18ef076fd4b505997f89c55ae5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:00:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Wed, 18 Nov 2026 21:00:24 GMT
ENV INFLUXDB_VERSION=1.12.5-c1.12.5
# Wed, 18 Nov 2026 21:00:24 GMT
ENV INFLUXDB_PR=
# Wed, 18 Nov 2026 21:00:24 GMT
ENV INFLUXDB_PV=1.12.5-c1.12.5
# Wed, 18 Nov 2026 21:00:24 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"         "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     tar -xvf "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influxd-ctl'             'influxdb-*/influxd-meta' &&     rm "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"        "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     apk del .build-deps # buildkit
# Wed, 18 Nov 2026 21:00:24 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Wed, 18 Nov 2026 21:00:24 GMT
EXPOSE map[8091/tcp:{}]
# Wed, 18 Nov 2026 21:00:24 GMT
VOLUME [/var/lib/influxdb]
# Wed, 18 Nov 2026 21:00:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:00:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:00:24 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d36fe0d02ba84cb552f1be504a6dff6eab7844f700801cce984e003ba2c600d`  
		Last Modified: Wed, 18 Nov 2026 21:00:33 GMT  
		Size: 1.2 MB (1180341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448ddfc8342eb21e4d742d8aac9be70f2a75aaf0be91845bc41a61dc1b100d21`  
		Last Modified: Wed, 18 Nov 2026 21:00:35 GMT  
		Size: 23.6 MB (23561665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5689c2ba62b315f1fa3a223b4ad4aa4697ecd2345e74c9489ed63012dbb4b1b0`  
		Last Modified: Wed, 18 Nov 2026 21:00:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7fd56c1d3ba164d688ec2329dade79dd4d6a0d7fc98937b3522f52f6ff9c433`  
		Last Modified: Wed, 18 Nov 2026 21:00:32 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12-meta-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:d622c66fadaf54be206abc8d548b6e30873c7f89afcfe02de6efc561af5449dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **679.8 KB (679841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59b2cfffab1d61a49e57d861d6c47ff1b30d22a4f699ca186356f3dfd02cea04`

```dockerfile
```

-	Layers:
	-	`sha256:48cee600424f98d9d323e9bd91f4b4282394bb63f78f9aa5169fec88430051ab`  
		Last Modified: Wed, 18 Nov 2026 21:00:33 GMT  
		Size: 665.9 KB (665910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bec405ac2591ee4c43697d03d19fa107882cc31aff9a2ad25e14b2d9462313e0`  
		Last Modified: Wed, 18 Nov 2026 21:00:34 GMT  
		Size: 13.9 KB (13931 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.12.4`

```console
$ docker pull influxdb@sha256:13ffcbd3d6c2c4c35c747da52f09d54dc340ad55497e74820cbcafeb1d7c237c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.12.4` - linux; amd64

```console
$ docker pull influxdb@sha256:f601dd3374a4f1c5341a6c0a0e38bba96936ef4a1e9841025c38d2f42b9aaf54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114528940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd01696e33fc3431b4503f2b84df8bce43c409ecb908056d9d200c19c406669`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:25:57 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 24 Nov 2026 05:26:02 GMT
ENV INFLUXDB_VERSION=1.12.4
# Tue, 24 Nov 2026 05:26:02 GMT
ENV INFLUXDB_PR=-1
# Tue, 24 Nov 2026 05:26:02 GMT
ENV INFLUXDB_PV=1.12.4-1
# Tue, 24 Nov 2026 05:26:02 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:26:02 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 24 Nov 2026 05:26:02 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 05:26:02 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:26:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:26:02 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 24 Nov 2026 05:26:02 GMT
USER influxdb
# Tue, 24 Nov 2026 05:26:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:26:02 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a013c66af5745f599f293e5df8f297e3c97a26da71116dc9d8eda0b7a0ccfbf`  
		Last Modified: Tue, 24 Nov 2026 05:26:14 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf2bf2439bd5e75e3e2dac62a15461851b05099f16ad30040927c9405bc415e`  
		Last Modified: Tue, 24 Nov 2026 05:26:15 GMT  
		Size: 42.1 MB (42126399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7148a2d8368fad58fa3b01d2da46c455120375ba2d4c23e164676d22935b93`  
		Last Modified: Tue, 24 Nov 2026 05:26:14 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0742f22511049c60f654020d15118ac48c47174cc71301e2666d99130d9b6cd7`  
		Last Modified: Tue, 24 Nov 2026 05:26:14 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1d655b09b8fc38f9d4c594b67438337eea0e0646b8e6d007d564838795712b5`  
		Last Modified: Tue, 24 Nov 2026 05:26:15 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.4` - unknown; unknown

```console
$ docker pull influxdb@sha256:c8f03bfe6ca9f92aaa848fb3b758961d1eec4d0d29a2b5fcca2198464435e25a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4697180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2136adc7aaf35984b52ddd96a91a12e17a0dabc6057c00648a0d9074c943b605`

```dockerfile
```

-	Layers:
	-	`sha256:e72c10a6b92ed279ae5ec4742a93499774d8f802d6deeed0d02fe650e5c1613a`  
		Last Modified: Tue, 24 Nov 2026 05:26:14 GMT  
		Size: 4.7 MB (4680652 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53566f0bbfb67ae85582d53b08fb3bcf61c9f00d58d8eb3efb1d573baf910f32`  
		Last Modified: Tue, 24 Nov 2026 05:26:14 GMT  
		Size: 16.5 KB (16528 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.12.4` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:b11e3d9009686d8cca29e79f41dd8d571645beec3e08e2e0390abde9a7d22675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110609849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f94b62e49237889b112999172371c4e14538d5c120045279a2aa8ee94e88fcc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:37:25 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 24 Nov 2026 05:37:31 GMT
ENV INFLUXDB_VERSION=1.12.4
# Tue, 24 Nov 2026 05:37:31 GMT
ENV INFLUXDB_PR=-1
# Tue, 24 Nov 2026 05:37:31 GMT
ENV INFLUXDB_PV=1.12.4-1
# Tue, 24 Nov 2026 05:37:31 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:37:31 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 24 Nov 2026 05:37:31 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 05:37:31 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:37:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:37:31 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 24 Nov 2026 05:37:31 GMT
USER influxdb
# Tue, 24 Nov 2026 05:37:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:37:31 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41e80db409d5b905f3c0d8228a2f82637b923bf2af30b11e87cb3b42e5e070d7`  
		Last Modified: Tue, 24 Nov 2026 04:43:36 GMT  
		Size: 23.4 MB (23440379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf986c6e4ab90356af03639b6719767b6d95ff1b00ff93f5257aa918625b6642`  
		Last Modified: Tue, 24 Nov 2026 05:37:42 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb50ecf4f719241583e56ba882994d3fd08efa58faaaadae2018966aebe4ee4`  
		Last Modified: Tue, 24 Nov 2026 05:37:44 GMT  
		Size: 38.8 MB (38754301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c374184df45aef1c14fb9a29c00d270d8bcd6ec1c94c888eaaed99f62957d5`  
		Last Modified: Tue, 24 Nov 2026 05:37:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ddaaf2579d8d1fc04f84c20dbc30a77fa3edb150fc0e7be38ca988648c3e746`  
		Last Modified: Tue, 24 Nov 2026 05:37:43 GMT  
		Size: 207.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:841faebdaf406e0bb4bc32974b34c3daadf0f4e7870de2014a7c990a9e497808`  
		Last Modified: Tue, 24 Nov 2026 05:37:44 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.4` - unknown; unknown

```console
$ docker pull influxdb@sha256:2a6d1537f34a48647e9861c5848fda7b28303981e28f82e9c61ebe26c25c4163
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4696732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f930e3b2fc20063ba4a8b7abf560d48584cbd25e9cc23c961a6a7d0af2558d96`

```dockerfile
```

-	Layers:
	-	`sha256:e120a4c11f70e3f0194301cc71361b49eb9012a86b73b542343b2259b62b34ca`  
		Last Modified: Tue, 24 Nov 2026 05:37:43 GMT  
		Size: 4.7 MB (4680108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79d000cc3a9133bcba2e9e74a14ab591f210368948f0363ddc4cdc44abed6b65`  
		Last Modified: Tue, 24 Nov 2026 05:37:42 GMT  
		Size: 16.6 KB (16624 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.12.4-alpine`

```console
$ docker pull influxdb@sha256:fdc23167a2dc97f7f3127e21f6861b78b04c5319b79ed76e942ade03bdbd8dcd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.12.4-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:58ff43bb9702bf5e91b8796e873db1c72cb5ade28f0335c90831e9a00101bfe4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46862741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd700721f1bac45ae584d4c2976088463c80168434f52dfd1473b35b672a3c90`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:23:49 GMT
RUN apk add --no-cache bash ca-certificates tzdata &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:23:55 GMT
ENV INFLUXDB_VERSION=1.12.4
# Thu, 05 Nov 2026 19:23:55 GMT
ENV INFLUXDB_PR=
# Thu, 05 Nov 2026 19:23:55 GMT
ENV INFLUXDB_PV=1.12.4
# Thu, 05 Nov 2026 19:23:55 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     case "$(apk --print-arch)" in         x86_64)  ARCH=amd64 ;;         aarch64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"         "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     tar -xvf "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influx'             'influxdb-*/influx_inspect'             'influxdb-*/influxd' &&     rm "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"        "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     apk del .build-deps # buildkit
# Thu, 05 Nov 2026 19:23:55 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 19:23:55 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb &&     mkdir -p /var/lib/influxdb &&     mkdir -p /var/log/influxdb &&     chown influxdb:influxdb /var/lib/influxdb &&     chown influxdb:influxdb /var/log/influxdb &&     chmod 0750 /var/lib/influxdb &&     chmod 0750 /var/log/influxdb # buildkit
# Thu, 05 Nov 2026 19:23:55 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 19:23:55 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 19:23:55 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:23:55 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 19:23:55 GMT
USER influxdb
# Thu, 05 Nov 2026 19:23:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:23:55 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae4ad490f241db73ad8361a320fffe48b2257f867ba1ad557d5a2882cc1c523`  
		Last Modified: Thu, 05 Nov 2026 19:24:05 GMT  
		Size: 1.2 MB (1180320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d4ac3b35999612c8114bc99041f0787e13f4d53115f061e5cf88a3e218f604`  
		Last Modified: Thu, 05 Nov 2026 19:24:06 GMT  
		Size: 42.1 MB (42054310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762a4ff1b61a189c25ffa280e67a206cd497efbc0c7f4fe1d08f0c723779e9f1`  
		Last Modified: Thu, 05 Nov 2026 19:24:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75ca07ca2383b4cd1abd246d68b1defceafcb06d55c11e1fdd706c73864fde13`  
		Last Modified: Thu, 05 Nov 2026 19:24:05 GMT  
		Size: 991.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73f5c5b57df60d417ecd117cd65d6768ef7b42353a9eebfe11cf7ea95cdbb66b`  
		Last Modified: Thu, 05 Nov 2026 19:24:06 GMT  
		Size: 212.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a98f168e680fef359c577eedbd821955aec70f5a798628f609c847581a942f`  
		Last Modified: Thu, 05 Nov 2026 19:24:06 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.4-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:0b96bad49aed7b02dc4420a3069759267587fae72c31d8f63a6d7f4d938fd00c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **762.4 KB (762380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376befc2e0b968bb3a81d9db323b7341e315acb5dcfaa47864ccf811c800ec93`

```dockerfile
```

-	Layers:
	-	`sha256:f7a6844ff7c3bf1f4e1e23302287276233d895d7e3f5f22d2240579fc85c4956`  
		Last Modified: Thu, 05 Nov 2026 19:24:05 GMT  
		Size: 743.7 KB (743662 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:701a88b609b9cf763e6b6840af962802d533417c5b183293b0b68e9f8483a765`  
		Last Modified: Thu, 05 Nov 2026 19:24:05 GMT  
		Size: 18.7 KB (18718 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.12.4-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:d9492b5369f75b99f35d2b91de912f0b476e69671acf70c299b2593d818dc7b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43900150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36f4c57255a957d8dedc625b2acfdfabbda514aea798e24785f43a71f5d29214`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.21.10-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:18:07 GMT
RUN apk add --no-cache bash ca-certificates tzdata &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:18:11 GMT
ENV INFLUXDB_VERSION=1.12.4
# Thu, 05 Nov 2026 19:18:11 GMT
ENV INFLUXDB_PR=
# Thu, 05 Nov 2026 19:18:11 GMT
ENV INFLUXDB_PV=1.12.4
# Thu, 05 Nov 2026 19:18:11 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     case "$(apk --print-arch)" in         x86_64)  ARCH=amd64 ;;         aarch64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"         "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     tar -xvf "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influx'             'influxdb-*/influx_inspect'             'influxdb-*/influxd' &&     rm "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"        "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     apk del .build-deps # buildkit
# Thu, 05 Nov 2026 19:18:11 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 19:18:11 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb &&     mkdir -p /var/lib/influxdb &&     mkdir -p /var/log/influxdb &&     chown influxdb:influxdb /var/lib/influxdb &&     chown influxdb:influxdb /var/log/influxdb &&     chmod 0750 /var/lib/influxdb &&     chmod 0750 /var/log/influxdb # buildkit
# Thu, 05 Nov 2026 19:18:11 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 19:18:11 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 19:18:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:18:12 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 19:18:12 GMT
USER influxdb
# Thu, 05 Nov 2026 19:18:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:18:12 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:26089ff12bb135aa8812e1bf486b799444fdf6cac9f60bf694ac523fbb8ad19a`  
		Last Modified: Thu, 05 Nov 2026 18:00:54 GMT  
		Size: 4.0 MB (3974423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97a36e25c5a11dbf7eade3d592a3be00ad09ec6ccc8f6badba0e0f4cab8fe3c1`  
		Last Modified: Thu, 05 Nov 2026 19:18:21 GMT  
		Size: 1.2 MB (1244842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07602f9f27a5a17f913ba2ebaa5e9f8386436aad9d35baa1015309baaeb108ff`  
		Last Modified: Thu, 05 Nov 2026 19:18:22 GMT  
		Size: 38.7 MB (38678183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ac3d35017d8831a376191400929dc8ec2789b336d0a0fa255dd0a11eae1568c`  
		Last Modified: Thu, 05 Nov 2026 19:18:21 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aea26b88cf7781394eb52c29cfd214bcdbc1c097581f069c2015c6e1190606f4`  
		Last Modified: Thu, 05 Nov 2026 19:18:21 GMT  
		Size: 989.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9af72775507ab29c74b3ed3c9978525111d6bf9e92b0d0c973bf39dbfbed10eb`  
		Last Modified: Thu, 05 Nov 2026 19:18:22 GMT  
		Size: 211.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39912f22ff41c3cb5e931c4b1b788d6dd0a35796b6927be642a8fe80269a98b6`  
		Last Modified: Thu, 05 Nov 2026 19:18:22 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.4-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:8071d85ac2725a5a20f90aad8eaf707d1f4f43538eacbef1a66fa2e46a81374f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **761.7 KB (761717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9ae240e11764a73b7907a7ddd0489ebc7f8fe8f7252a92880b5c959c8a246d3`

```dockerfile
```

-	Layers:
	-	`sha256:d934796eb767f35956915a971fbea95219610a8929df8760bb78d5835808cb5c`  
		Last Modified: Thu, 05 Nov 2026 19:18:21 GMT  
		Size: 742.9 KB (742889 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e6a403e8a7393c77aae5db8681dfdd25aa4ea7c3990c47431a92378427b4e81`  
		Last Modified: Thu, 05 Nov 2026 19:18:21 GMT  
		Size: 18.8 KB (18828 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.12.5-data`

```console
$ docker pull influxdb@sha256:227dcf6602b985231ec7ca444c9682f62eb3df72373260b91f82793ab72f25a9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12.5-data` - linux; amd64

```console
$ docker pull influxdb@sha256:6680dae7214e26364a59fa50bd006a13532461bc57eaa5ae1a52ab35fda3905a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.5 MB (126473954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6be16b89b631328e6120018aebb1b445f24452070fea34fd06f752990d247b9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:26:04 GMT
ENV INFLUXDB_VERSION=1.12.5-c1.12.5
# Tue, 24 Nov 2026 05:26:04 GMT
ENV INFLUXDB_PR=
# Tue, 24 Nov 2026 05:26:04 GMT
ENV INFLUXDB_PV=1.12.5-c1.12.5
# Tue, 24 Nov 2026 05:26:04 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-data_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:26:04 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 24 Nov 2026 05:26:04 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 05:26:04 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:26:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:26:04 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 24 Nov 2026 05:26:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:26:04 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912919e963a171ad7f6d68e1c35eed94a146149d9ed0f61321710e02f370e3f8`  
		Last Modified: Tue, 24 Nov 2026 05:26:19 GMT  
		Size: 54.1 MB (54072545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b1cee16252fe63ccc373c0aa057a71690724bfbe7a993409e7bdd48c68ea77a`  
		Last Modified: Tue, 24 Nov 2026 05:26:17 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6601d31eaf9b4f603fd19a601985b432b215ec3209d542bb0f388ea17031f975`  
		Last Modified: Tue, 24 Nov 2026 05:26:17 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8437c47e018522a3b4335f2550e343c653d8d3c947083cb4402480f35ec1bfb8`  
		Last Modified: Tue, 24 Nov 2026 05:26:17 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.5-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:0afd7f874301171488a081830157b16a7e95c9e37282d7d53a868f7cc37deff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4718861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3789939b090e6a625a5c3b004be121fa77e87c5d9fcb78b88d0b5488d80199a0`

```dockerfile
```

-	Layers:
	-	`sha256:4efe40380374d84c65deb12bdca41c0c706eee1cf3bbe0fe7606073c760713e3`  
		Last Modified: Tue, 24 Nov 2026 05:26:17 GMT  
		Size: 4.7 MB (4704708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84c31be7b03ffa1e60ef1eec7034c612b40901518203f67b5a89fa4e807cbb48`  
		Last Modified: Tue, 24 Nov 2026 05:26:17 GMT  
		Size: 14.2 KB (14153 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.12.5-data-alpine`

```console
$ docker pull influxdb@sha256:1b230bd52c4aea573707fb107e10103390d0584fef354ff0ff71754c6f841001
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12.5-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:c5344ac1ff3e34d9303bb64af3e787ab3722e64ae700699fb3632f77009abd3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.8 MB (58811763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fe6f9778dbf47f7eb8df50745942787c7f362b5db0f10870df7d2af50afb063`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:00:50 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
ENV INFLUXDB_VERSION=1.12.5-c1.12.5
# Wed, 18 Nov 2026 21:00:56 GMT
ENV INFLUXDB_PR=
# Wed, 18 Nov 2026 21:00:56 GMT
ENV INFLUXDB_PV=1.12.5-c1.12.5
# Wed, 18 Nov 2026 21:00:56 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"         "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     tar -xvf "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influx'             'influxdb-*/influx_inspect'             'influxdb-*/influxd' &&     rm "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"        "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     apk del .build-deps # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 21:00:56 GMT
VOLUME [/var/lib/influxdb]
# Wed, 18 Nov 2026 21:00:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:00:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7261ce94c7bcc467c6dc2e0d9365eb8890ea9c0578e993bccb61875b13e17381`  
		Last Modified: Wed, 18 Nov 2026 21:01:08 GMT  
		Size: 1.2 MB (1180334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:085caa944777214ac55ff994a265bad7c9d924a13cc722c2fbf01845bc94c4cb`  
		Last Modified: Wed, 18 Nov 2026 21:01:12 GMT  
		Size: 54.0 MB (54004254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64d3cc74fd0377bc5a6cd59d1cd8592efd5601910463c84357c0c5d8a3462a09`  
		Last Modified: Wed, 18 Nov 2026 21:01:07 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:798efff9e60a46fbf3b35b88b87090a9d2db73e791435739966036a7e15fe446`  
		Last Modified: Wed, 18 Nov 2026 21:01:07 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae243f1827a17edcc18d102f5164f08d226d330b472c4391492c5e7c2c67561`  
		Last Modified: Wed, 18 Nov 2026 21:01:09 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.5-data-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:4c191806b22178ed06e33df33e3bed822e671f5959f48905ca1082d42d8a54b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **787.6 KB (787602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d485330de7d9be1666eb07188ffa206293787e38c6dd0fc93a9aa99800ac6542`

```dockerfile
```

-	Layers:
	-	`sha256:3b1c9310336a8601b15f086b0e726b79dce61f85a77482d4ca4172e705d441e0`  
		Last Modified: Wed, 18 Nov 2026 21:01:07 GMT  
		Size: 772.1 KB (772072 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90cec59e1cf02ceca6189835e040eef230dcb61fb240d9d25d20526395ab267d`  
		Last Modified: Wed, 18 Nov 2026 21:01:07 GMT  
		Size: 15.5 KB (15530 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.12.5-meta`

```console
$ docker pull influxdb@sha256:a8f805721d362c2b681c68d0e2bd5add4a9181bbb715984bebbd6201ec90eb0f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12.5-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:1acf05c3a3f4989ee7b57a5b3e26264de91e7ea1c925660e4b44b10a58a76078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.0 MB (96021691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b49ea68680b3e08f2cb606fdee4059fb64947463822ef63425f20f4e0b7c094`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:26:10 GMT
ENV INFLUXDB_VERSION=1.12.5-c1.12.5
# Tue, 24 Nov 2026 05:26:10 GMT
ENV INFLUXDB_PR=
# Tue, 24 Nov 2026 05:26:10 GMT
ENV INFLUXDB_PV=1.12.5-c1.12.5
# Tue, 24 Nov 2026 05:26:10 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-meta_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:26:10 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Tue, 24 Nov 2026 05:26:10 GMT
EXPOSE map[8091/tcp:{}]
# Tue, 24 Nov 2026 05:26:10 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:26:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:26:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:26:10 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39cd55a56b3eec6e6ae51ffc4fe67ca8a2e6686519b928126098f9e681f1cf40`  
		Last Modified: Tue, 24 Nov 2026 05:26:24 GMT  
		Size: 23.6 MB (23621492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:699554ab956b144e433a80a4ba48b4abf9bedd0f65ab9537b25dc3c2d4ae5768`  
		Last Modified: Tue, 24 Nov 2026 05:26:24 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bcf0892de9a64bc254007834e28b488e807f08c9d47eb12d1f801bb712d88d3`  
		Last Modified: Tue, 24 Nov 2026 05:26:24 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.5-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:71807407e8c7a8006b98e544d61f4f6b95cd4f2d939b8d83becbed6dc0638b5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4610424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0bf13171cfd50955c8e8a23962fb754d47ddeabc04f838fdc09994f90e0490`

```dockerfile
```

-	Layers:
	-	`sha256:e7ec27e3776e8f83a71d5098605da5e5f1f108a7f7a1c7ebd738c5dd29f6cde9`  
		Last Modified: Tue, 24 Nov 2026 05:26:24 GMT  
		Size: 4.6 MB (4597760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:262b5daeaaed822f996232a022e7a4c7c40b06b81a62298b9678e7b76d059f28`  
		Last Modified: Tue, 24 Nov 2026 05:26:24 GMT  
		Size: 12.7 KB (12664 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.12.5-meta-alpine`

```console
$ docker pull influxdb@sha256:232f9370cf8985c18da5a739a0b47420e564278b9f0b48809b96b92d73d98b98
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12.5-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:7cb788386d5b612e924a8a290909849219eb67f9620c395d783d8d8665559e4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28367974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f45f6615381d496fbccb06bfa59307a7b463a18ef076fd4b505997f89c55ae5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:00:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Wed, 18 Nov 2026 21:00:24 GMT
ENV INFLUXDB_VERSION=1.12.5-c1.12.5
# Wed, 18 Nov 2026 21:00:24 GMT
ENV INFLUXDB_PR=
# Wed, 18 Nov 2026 21:00:24 GMT
ENV INFLUXDB_PV=1.12.5-c1.12.5
# Wed, 18 Nov 2026 21:00:24 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"         "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     tar -xvf "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influxd-ctl'             'influxdb-*/influxd-meta' &&     rm "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"        "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     apk del .build-deps # buildkit
# Wed, 18 Nov 2026 21:00:24 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Wed, 18 Nov 2026 21:00:24 GMT
EXPOSE map[8091/tcp:{}]
# Wed, 18 Nov 2026 21:00:24 GMT
VOLUME [/var/lib/influxdb]
# Wed, 18 Nov 2026 21:00:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:00:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:00:24 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d36fe0d02ba84cb552f1be504a6dff6eab7844f700801cce984e003ba2c600d`  
		Last Modified: Wed, 18 Nov 2026 21:00:33 GMT  
		Size: 1.2 MB (1180341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448ddfc8342eb21e4d742d8aac9be70f2a75aaf0be91845bc41a61dc1b100d21`  
		Last Modified: Wed, 18 Nov 2026 21:00:35 GMT  
		Size: 23.6 MB (23561665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5689c2ba62b315f1fa3a223b4ad4aa4697ecd2345e74c9489ed63012dbb4b1b0`  
		Last Modified: Wed, 18 Nov 2026 21:00:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7fd56c1d3ba164d688ec2329dade79dd4d6a0d7fc98937b3522f52f6ff9c433`  
		Last Modified: Wed, 18 Nov 2026 21:00:32 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.5-meta-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:d622c66fadaf54be206abc8d548b6e30873c7f89afcfe02de6efc561af5449dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **679.8 KB (679841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59b2cfffab1d61a49e57d861d6c47ff1b30d22a4f699ca186356f3dfd02cea04`

```dockerfile
```

-	Layers:
	-	`sha256:48cee600424f98d9d323e9bd91f4b4282394bb63f78f9aa5169fec88430051ab`  
		Last Modified: Wed, 18 Nov 2026 21:00:33 GMT  
		Size: 665.9 KB (665910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bec405ac2591ee4c43697d03d19fa107882cc31aff9a2ad25e14b2d9462313e0`  
		Last Modified: Wed, 18 Nov 2026 21:00:34 GMT  
		Size: 13.9 KB (13931 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.13`

```console
$ docker pull influxdb@sha256:1af977b298d63558897aeab3533e4f4e4d31dc9755da0b9b625fb3a4e56da332
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.13` - linux; amd64

```console
$ docker pull influxdb@sha256:4990ceea3f8ac321c79f1b1433725f57ef00914e7f9267efc70c13ef7abea338
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.7 MB (125651011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff0c7c9120373a45818e2f4508484c21cbdf71f23dd76308a2bb9a16da8fd390`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:25:20 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 24 Nov 2026 05:25:26 GMT
ENV INFLUXDB_VERSION=1.13.2
# Tue, 24 Nov 2026 05:25:26 GMT
ENV INFLUXDB_PR=-1
# Tue, 24 Nov 2026 05:25:26 GMT
ENV INFLUXDB_PV=1.13.2-1
# Tue, 24 Nov 2026 05:25:26 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:25:26 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 24 Nov 2026 05:25:26 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 05:25:26 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:25:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:25:26 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 24 Nov 2026 05:25:26 GMT
USER influxdb
# Tue, 24 Nov 2026 05:25:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:25:26 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2027e1f02fc742c1938e561e264810fef9ee135f2d697e9401130d69f439b558`  
		Last Modified: Tue, 24 Nov 2026 05:25:39 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc6608338cb358e30088e530abc25d087f349b5b8a289cef82b9c6d01dcfbd7e`  
		Last Modified: Tue, 24 Nov 2026 05:25:41 GMT  
		Size: 53.2 MB (53248461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c05227c25b7f944b36dcbb8d675e074a87ce059b70e2fb053bdbee31cbefe51e`  
		Last Modified: Tue, 24 Nov 2026 05:25:39 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24a2c5f03f55dad9b157c0b31fecea31b0122f4bc54999eb204f0324ef0d0c64`  
		Last Modified: Tue, 24 Nov 2026 05:25:39 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71981d54538acdd293c4c39b2946310e3fbc7326eaee5bb8a1a4bb442398b93`  
		Last Modified: Tue, 24 Nov 2026 05:25:40 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13` - unknown; unknown

```console
$ docker pull influxdb@sha256:a337be49b46e08d712ffb3416f307f2b6eb783f205d25c35c55b2c52aaaf7116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4712058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7334b0d43e12d900da02cb013508de2ccecbfa2056572e91db41be9c4c4007f4`

```dockerfile
```

-	Layers:
	-	`sha256:357aeba7911eb9cddb6fd20b65cdd1d6c5767c903f63af5aa536f81daee852ed`  
		Last Modified: Tue, 24 Nov 2026 05:25:39 GMT  
		Size: 4.7 MB (4695529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90d025145637294eee70c1b0670762c05f948f73c9939280cc68a59d23512b4e`  
		Last Modified: Tue, 24 Nov 2026 05:25:39 GMT  
		Size: 16.5 KB (16529 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.13` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:d33a8c7d214916cf1791ab155c721164f1c35c1aed9c478126719f9dc47c8ad5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (121016665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edf1766d2db45af47f0dc0baca76feefa5cc7a46cdb62036732fb8230a44be59`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:37:24 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 24 Nov 2026 05:37:30 GMT
ENV INFLUXDB_VERSION=1.13.2
# Tue, 24 Nov 2026 05:37:30 GMT
ENV INFLUXDB_PR=-1
# Tue, 24 Nov 2026 05:37:30 GMT
ENV INFLUXDB_PV=1.13.2-1
# Tue, 24 Nov 2026 05:37:30 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:37:30 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 24 Nov 2026 05:37:30 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 05:37:30 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:37:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:37:30 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 24 Nov 2026 05:37:30 GMT
USER influxdb
# Tue, 24 Nov 2026 05:37:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:37:30 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41e80db409d5b905f3c0d8228a2f82637b923bf2af30b11e87cb3b42e5e070d7`  
		Last Modified: Tue, 24 Nov 2026 04:43:36 GMT  
		Size: 23.4 MB (23440379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37ca35192a63d30a2851979d8479b087d232ef681af99374b1305b67aac980ab`  
		Last Modified: Tue, 24 Nov 2026 05:37:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c31385dad3bbee80d87765fcb087fb67bf802f743a7a69cf65c5174e04770e`  
		Last Modified: Tue, 24 Nov 2026 05:37:45 GMT  
		Size: 49.2 MB (49161117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2a260853ecd99b20198f22999401b324adc30c2c709fccb5ffb0e66ddd2cfa3`  
		Last Modified: Tue, 24 Nov 2026 05:37:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3c8533d2254f270ce12f8cfc1cee4e383c5c889603ef5609bd3f63e0d0ae20f`  
		Last Modified: Tue, 24 Nov 2026 05:37:43 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba2e10a115c09b58f93c8a414320ca3c961f16b063be7d97eb7ec83126ed4b9`  
		Last Modified: Tue, 24 Nov 2026 05:37:44 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13` - unknown; unknown

```console
$ docker pull influxdb@sha256:d3bd30d057f6928bc6ff7b3d8d4446c712702853fb36f9d5ed56b09ca7217cdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4711103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36af51ec5d998e9513142053d3972d6e5f9f82e4ee8197dce7f3f57c77e79b6e`

```dockerfile
```

-	Layers:
	-	`sha256:0603c89c889be926c6151bf194e15e0cc86f936f001468fcbe8a7dde397ff52d`  
		Last Modified: Tue, 24 Nov 2026 05:37:43 GMT  
		Size: 4.7 MB (4694479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37ce61261fd26657f52491c32694dfd01ba4285440dac78d36d62c1e84e29c7e`  
		Last Modified: Tue, 24 Nov 2026 05:37:43 GMT  
		Size: 16.6 KB (16624 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.13-alpine`

```console
$ docker pull influxdb@sha256:4c5a9e4c2178365839e41c9d11dccd9690615873ee289127a07297a09884e91a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.13-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:650e36a96554c675e5d80cd596de9e3a149d1a7a38ed781bc87de04f0821fd14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61157378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdd415e1cdfa07420c3e46388aa3431e24ff495315813d4f624a4125f6637529`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:23:17 GMT
RUN apk add --no-cache bash ca-certificates tzdata &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:23:22 GMT
ENV INFLUXDB_VERSION=1.13.2
# Thu, 05 Nov 2026 19:23:22 GMT
ENV INFLUXDB_PR=
# Thu, 05 Nov 2026 19:23:22 GMT
ENV INFLUXDB_PV=1.13.2
# Thu, 05 Nov 2026 19:23:22 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     case "$(apk --print-arch)" in         x86_64)  ARCH=amd64 ;;         aarch64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"         "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     tar -xvf "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influx'             'influxdb-*/influx_inspect'             'influxdb-*/influxd' &&     rm "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"        "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     apk del .build-deps # buildkit
# Thu, 05 Nov 2026 19:23:22 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 19:23:22 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb &&     mkdir -p /var/lib/influxdb &&     mkdir -p /var/log/influxdb &&     chown influxdb:influxdb /var/lib/influxdb &&     chown influxdb:influxdb /var/log/influxdb &&     chmod 0750 /var/lib/influxdb &&     chmod 0750 /var/log/influxdb # buildkit
# Thu, 05 Nov 2026 19:23:22 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 19:23:22 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 19:23:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:23:22 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 19:23:22 GMT
USER influxdb
# Thu, 05 Nov 2026 19:23:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:23:22 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a6dce7add7dde683e481c851abe02b5a1529209ebface18f0987ebb70c8ea4`  
		Last Modified: Thu, 05 Nov 2026 19:23:34 GMT  
		Size: 1.2 MB (1225086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:136e225acc40ca0a4dc76d18bb95202a094427efba7fb2aac26c2aaac6c9416b`  
		Last Modified: Thu, 05 Nov 2026 19:23:35 GMT  
		Size: 56.1 MB (56076995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7533c3b780fd623fa7199b380208f932e25619ee2bc786e7bdffc0a4b1ee7900`  
		Last Modified: Thu, 05 Nov 2026 19:23:33 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9110763cd965bbbd8894903d88b62876070b87a52d84856a668b795c44b2856`  
		Last Modified: Thu, 05 Nov 2026 19:23:33 GMT  
		Size: 992.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4818d2393a81f71b39471c9f2ad26457fa420a14c46d18e2621d0f0fc83709b1`  
		Last Modified: Thu, 05 Nov 2026 19:23:34 GMT  
		Size: 212.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfa10c6957577ece7bd9f83a8f4860873d9e2abe14c9d71d3cb2f1741f3e1dc5`  
		Last Modified: Thu, 05 Nov 2026 19:23:35 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:59b992e1460fec6c1ff85895418c443c225c7112eb52090414e3d9de62d419fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **779.9 KB (779928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7a17d1446807be449e6cfd3eb649360cacb9c379e59286466f154c5b9cefee6`

```dockerfile
```

-	Layers:
	-	`sha256:bef0fe22c739283d52292cd46dce1b1b211ddf6a94376a15f83f383117f73c2e`  
		Last Modified: Thu, 05 Nov 2026 19:23:33 GMT  
		Size: 761.2 KB (761210 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc115088d823810d3f84f08305e5d7664bcb07d3520933209c9aee57267585e1`  
		Last Modified: Thu, 05 Nov 2026 19:23:34 GMT  
		Size: 18.7 KB (18718 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.13-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:8c5ad70b88bb0a4f15ee96102b8af47587ba334ee091867e1b07f9b17f3b0b28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.5 MB (57473425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:519565f71767df17cd96da08ba9b85d4e7d10e61d90224ad9060833719a12eaf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:18:03 GMT
RUN apk add --no-cache bash ca-certificates tzdata &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:18:08 GMT
ENV INFLUXDB_VERSION=1.13.2
# Thu, 05 Nov 2026 19:18:08 GMT
ENV INFLUXDB_PR=
# Thu, 05 Nov 2026 19:18:08 GMT
ENV INFLUXDB_PV=1.13.2
# Thu, 05 Nov 2026 19:18:08 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     case "$(apk --print-arch)" in         x86_64)  ARCH=amd64 ;;         aarch64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"         "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     tar -xvf "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influx'             'influxdb-*/influx_inspect'             'influxdb-*/influxd' &&     rm "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"        "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     apk del .build-deps # buildkit
# Thu, 05 Nov 2026 19:18:08 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 19:18:08 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb &&     mkdir -p /var/lib/influxdb &&     mkdir -p /var/log/influxdb &&     chown influxdb:influxdb /var/lib/influxdb &&     chown influxdb:influxdb /var/log/influxdb &&     chmod 0750 /var/lib/influxdb &&     chmod 0750 /var/log/influxdb # buildkit
# Thu, 05 Nov 2026 19:18:08 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 19:18:08 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 19:18:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:18:08 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 19:18:08 GMT
USER influxdb
# Thu, 05 Nov 2026 19:18:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:18:08 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96175c09c2621ebc8ab5bd8f5c3d4b35e5028a6220f8d4bc0436f8362f04366c`  
		Last Modified: Thu, 05 Nov 2026 19:18:19 GMT  
		Size: 1.3 MB (1296499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e6ce688e228120156dd8643cb46ae94f9284edaebc77361e85f161e2a8c96b`  
		Last Modified: Thu, 05 Nov 2026 19:18:20 GMT  
		Size: 52.0 MB (51984002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecea4cfc6562c2b187a532053e876b8f55682250e2a6ceb44aafce188e47185f`  
		Last Modified: Thu, 05 Nov 2026 19:18:18 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f0c4726eae1cc6a3e176a7f6e2fc98cfd42d186151496e4697f7d176ae3ad1`  
		Last Modified: Thu, 05 Nov 2026 19:18:19 GMT  
		Size: 990.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8dd61a6e87b1700ff790f4a9f5ac21487131b1ad024aa5dfb2968e92237c3f7`  
		Last Modified: Thu, 05 Nov 2026 19:18:20 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ec3e7d3781787a0d46dba5e34cbefd2102dccb613cef8daf90350135d8e1b9`  
		Last Modified: Thu, 05 Nov 2026 19:18:20 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:4d2cc79d85523a672d48bce174a8f9d63690a2704a99b20d7d534ef6e237ab90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **778.1 KB (778109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43ca8af0c9b94ea767661cc8d4a6f3b07092b24619f46dcecc879d18e0a27b73`

```dockerfile
```

-	Layers:
	-	`sha256:a7bbeaa9502e56db8d63823dfdae8c271abd09dcbc4a00f933c0450e5fa3e5c9`  
		Last Modified: Thu, 05 Nov 2026 19:18:19 GMT  
		Size: 759.3 KB (759281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4332ab4589f23b0b010fee0fcee8e2d3e18c1b047fa39d3f74e8bcb6f905652`  
		Last Modified: Thu, 05 Nov 2026 19:18:19 GMT  
		Size: 18.8 KB (18828 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.13-data`

```console
$ docker pull influxdb@sha256:55b1f8e8d75252e6653fa96ff36292222f23f26af3aa42f2cb67db585b589fd7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.13-data` - linux; amd64

```console
$ docker pull influxdb@sha256:99156fae2b7ead520c529cabd56599bd59b01985b97d2d9899ca144492ece63b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.7 MB (126743143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4542f3a43d3fb968d76d1f5a7e29b9ab20ab2d4996daf22d6afbf43363f4d9b3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:25:29 GMT
ENV INFLUXDB_VERSION=1.13.2-c1.13.2
# Tue, 24 Nov 2026 05:25:29 GMT
ENV INFLUXDB_PR=
# Tue, 24 Nov 2026 05:25:29 GMT
ENV INFLUXDB_PV=1.13.2-c1.13.2
# Tue, 24 Nov 2026 05:25:29 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-data_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:25:29 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 24 Nov 2026 05:25:29 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 05:25:29 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:25:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:25:29 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 24 Nov 2026 05:25:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:25:29 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ce765e0ce2b15693aa3eae79613bfe301f109dc7f16163c6c0b102e161d9db3`  
		Last Modified: Tue, 24 Nov 2026 05:25:43 GMT  
		Size: 54.3 MB (54341737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25136fd0a0c04d48322ed2a1a766f5da061d214489b391cbe16751afbc60f735`  
		Last Modified: Tue, 24 Nov 2026 05:25:42 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ec36b1bdb8b872a1806e62fa015b88375f5c3d88fbd710d5dacf696b0fd26b`  
		Last Modified: Tue, 24 Nov 2026 05:25:42 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5bfb56735b5f84d8845c8dd223469f3e13d7759e3d5e8fed66a065a423d2bed`  
		Last Modified: Tue, 24 Nov 2026 05:25:42 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:4ce89a735f1d7b3d3c25cc3ecb228206285d64427e55b11d5b557df2f22614a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4721392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b8bd2cfcc55667702e3a80037742c41d1965aa865ea7a4ceb08d83f9a2d7799`

```dockerfile
```

-	Layers:
	-	`sha256:d754674c82d70f15319f99bd132cc1ca3bab8533a7cd52ee1559d32bc1536213`  
		Last Modified: Tue, 24 Nov 2026 05:25:42 GMT  
		Size: 4.7 MB (4707536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26f9d5904d95021053d365f760eb0f4e4ea90b9adeda78b969f1475d1b51a95a`  
		Last Modified: Tue, 24 Nov 2026 05:25:42 GMT  
		Size: 13.9 KB (13856 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.13-data-alpine`

```console
$ docker pull influxdb@sha256:9454055f264be4a97d90e8c27b5035c294841af6527e7294553bbe60d91cb922
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.13-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:5d635d169f3ab10557bf28bbef0c6d43ac9840f63154df31a915cf9de0bded17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62262620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b03aaf776b1cfc326f4a778b252012a5530b3150b480f5032cfc3d7a52ac47`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:23:22 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:23:29 GMT
ENV INFLUXDB_VERSION=1.13.2-c1.13.2
# Thu, 05 Nov 2026 19:23:29 GMT
ENV INFLUXDB_PR=
# Thu, 05 Nov 2026 19:23:29 GMT
ENV INFLUXDB_PV=1.13.2-c1.13.2
# Thu, 05 Nov 2026 19:23:29 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"         "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     tar -xvf "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influx'             'influxdb-*/influx_inspect'             'influxdb-*/influxd' &&     rm "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"        "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     apk del .build-deps # buildkit
# Thu, 05 Nov 2026 19:23:29 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 19:23:29 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 19:23:29 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 19:23:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:23:29 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 19:23:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:23:29 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a8ecea5a5df485465449955a829ad9d0b825a10aba635a594725c98c1f9b47`  
		Last Modified: Thu, 05 Nov 2026 19:23:41 GMT  
		Size: 1.2 MB (1225084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a83f5f682c2450994d3a91b64ea9050fcd5c2625b9bb06096f264da82ba9e82`  
		Last Modified: Thu, 05 Nov 2026 19:23:43 GMT  
		Size: 57.2 MB (57183175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a32708025a66c60ff73ef86df4c4154059bf53c77709fa118416f2dbf7d59d8a`  
		Last Modified: Thu, 05 Nov 2026 19:23:41 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa8b1da18b388218e6868ee34ab0ba16e7794bd0b5d191cca4fc3b790a0b135`  
		Last Modified: Thu, 05 Nov 2026 19:23:41 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45eb0bfeac154d9d9da82a91d1367654bb3669aef53f1071f577e700b74b13d9`  
		Last Modified: Thu, 05 Nov 2026 19:23:42 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13-data-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:bfe61caa7f6549e76bf6d952cd0189ffdb0121fb299def4d7f315e738e3cbc3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **792.8 KB (792775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689b851b8c6f5064745031c50299553d9263bf42920e59256f7058fea6ef2fdf`

```dockerfile
```

-	Layers:
	-	`sha256:a147202085d6a8649d3c32d4d844ea2aac655c8dea0ca87d46ce61da527cab79`  
		Last Modified: Thu, 05 Nov 2026 19:23:41 GMT  
		Size: 777.6 KB (777557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca55fa28c4b981b906be6b4fdfc28b30f8aba60dc581447a7c25dd68d4247a9e`  
		Last Modified: Thu, 05 Nov 2026 19:23:41 GMT  
		Size: 15.2 KB (15218 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.13-meta`

```console
$ docker pull influxdb@sha256:0d886631f863b27ba4adf4bec144efc86e4737b30d2e434d8eb6cf47bf0bb352
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.13-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:0246dcfacf2378d79b283daaccb6bf64526d910743de51c66ecedcaf632e8296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96142314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06552538dae490a58d287f9929eae32dff3b1c394c13c44cbf7688fbb4236527`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:25:51 GMT
ENV INFLUXDB_VERSION=1.13.2-c1.13.2
# Tue, 24 Nov 2026 05:25:51 GMT
ENV INFLUXDB_PR=
# Tue, 24 Nov 2026 05:25:51 GMT
ENV INFLUXDB_PV=1.13.2-c1.13.2
# Tue, 24 Nov 2026 05:25:51 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-meta_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:25:51 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Tue, 24 Nov 2026 05:25:51 GMT
EXPOSE map[8091/tcp:{}]
# Tue, 24 Nov 2026 05:25:51 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:25:51 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:25:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:25:51 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc4444de2129f27dc4bfd47b1a07d18366131519114b63e9c2e444298ca34a3`  
		Last Modified: Tue, 24 Nov 2026 05:26:01 GMT  
		Size: 23.7 MB (23742115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b364666e1fcca1549a96a3abc8b11b7fde79ef5c7a1fc5d4a7eee56ed6157d`  
		Last Modified: Tue, 24 Nov 2026 05:26:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f109084fdf5aab4313941584d0d324611dde5fa4c63010629b3180ee8f00c75`  
		Last Modified: Tue, 24 Nov 2026 05:26:01 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:0393905c686cf953ea6c6beaa3a966bb82b536eecff282b281213be4813839d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4611941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f5fb8cbaa7282ac048efa92f159345324af4da24dd96ff8e5c929fa6250e839`

```dockerfile
```

-	Layers:
	-	`sha256:95ccf990e72676d642e9b410ac30c580b43afc2a0617d5d1635728cd734fd25a`  
		Last Modified: Tue, 24 Nov 2026 05:26:01 GMT  
		Size: 4.6 MB (4599576 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af17277854fcf1a4253cc0321a916be1493e587b52f84b1a6ea67cc340230e51`  
		Last Modified: Tue, 24 Nov 2026 05:26:00 GMT  
		Size: 12.4 KB (12365 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.13-meta-alpine`

```console
$ docker pull influxdb@sha256:f29dbc40d9956b3f59f12fe3ef86da1d2722271c64a048badc74c3624c87efb8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.13-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:e760f38d484de796f531bf4693ef6917b8640ab501f536cb6016a7c9c33feab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31669636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f063b1d9b76f5feb2e550614b615f796b203237a3378ea6bfe567efe5fdbfe5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:23:42 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:23:46 GMT
ENV INFLUXDB_VERSION=1.13.2-c1.13.2
# Thu, 05 Nov 2026 19:23:46 GMT
ENV INFLUXDB_PR=
# Thu, 05 Nov 2026 19:23:46 GMT
ENV INFLUXDB_PV=1.13.2-c1.13.2
# Thu, 05 Nov 2026 19:23:46 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"         "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     tar -xvf "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influxd-ctl'             'influxdb-*/influxd-meta' &&     rm "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"        "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     apk del .build-deps # buildkit
# Thu, 05 Nov 2026 19:23:46 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Thu, 05 Nov 2026 19:23:46 GMT
EXPOSE map[8091/tcp:{}]
# Thu, 05 Nov 2026 19:23:46 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 19:23:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:23:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:23:46 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e64623bc14fc0face5f7ec48322a0d0d850031103931d97370f917cee8c002`  
		Last Modified: Thu, 05 Nov 2026 19:23:54 GMT  
		Size: 1.2 MB (1225093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee8b54d28f29b0b3b92e73a993abf4cbe27f362377003720ebb15ee0d43e282`  
		Last Modified: Thu, 05 Nov 2026 19:23:54 GMT  
		Size: 26.6 MB (26591388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654d4a596451e2820db9a71d9dc92b59de641360c2d52dbd9811f6d3588dbe77`  
		Last Modified: Thu, 05 Nov 2026 19:23:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062f34c3739673d949e3fc8fcfe73d0e78d96b23de2df19195139d342efcecee`  
		Last Modified: Thu, 05 Nov 2026 19:23:54 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13-meta-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:46a5e45c4098217fc8ff26a006c1bcdf09d078f2e3d3365aa6e99e5c710267a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **684.0 KB (684002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28c918b97c1fa743d4c79f09084de43cc888689a2a8f6942d1fb8cce95d163a`

```dockerfile
```

-	Layers:
	-	`sha256:87b5e0b3972e3683aec2d5b4bd2c5bacc9aac50af16e0fa54283593192aa1375`  
		Last Modified: Thu, 05 Nov 2026 19:23:54 GMT  
		Size: 670.4 KB (670383 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1d4fcef03cdcaaf6527708fad6c4cf9485769322e5127b15f58f2bf3b0909c7`  
		Last Modified: Thu, 05 Nov 2026 19:23:54 GMT  
		Size: 13.6 KB (13619 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.13.2`

```console
$ docker pull influxdb@sha256:1af977b298d63558897aeab3533e4f4e4d31dc9755da0b9b625fb3a4e56da332
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.13.2` - linux; amd64

```console
$ docker pull influxdb@sha256:4990ceea3f8ac321c79f1b1433725f57ef00914e7f9267efc70c13ef7abea338
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.7 MB (125651011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff0c7c9120373a45818e2f4508484c21cbdf71f23dd76308a2bb9a16da8fd390`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:25:20 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 24 Nov 2026 05:25:26 GMT
ENV INFLUXDB_VERSION=1.13.2
# Tue, 24 Nov 2026 05:25:26 GMT
ENV INFLUXDB_PR=-1
# Tue, 24 Nov 2026 05:25:26 GMT
ENV INFLUXDB_PV=1.13.2-1
# Tue, 24 Nov 2026 05:25:26 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:25:26 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 24 Nov 2026 05:25:26 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 05:25:26 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:25:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:25:26 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 24 Nov 2026 05:25:26 GMT
USER influxdb
# Tue, 24 Nov 2026 05:25:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:25:26 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2027e1f02fc742c1938e561e264810fef9ee135f2d697e9401130d69f439b558`  
		Last Modified: Tue, 24 Nov 2026 05:25:39 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc6608338cb358e30088e530abc25d087f349b5b8a289cef82b9c6d01dcfbd7e`  
		Last Modified: Tue, 24 Nov 2026 05:25:41 GMT  
		Size: 53.2 MB (53248461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c05227c25b7f944b36dcbb8d675e074a87ce059b70e2fb053bdbee31cbefe51e`  
		Last Modified: Tue, 24 Nov 2026 05:25:39 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24a2c5f03f55dad9b157c0b31fecea31b0122f4bc54999eb204f0324ef0d0c64`  
		Last Modified: Tue, 24 Nov 2026 05:25:39 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71981d54538acdd293c4c39b2946310e3fbc7326eaee5bb8a1a4bb442398b93`  
		Last Modified: Tue, 24 Nov 2026 05:25:40 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13.2` - unknown; unknown

```console
$ docker pull influxdb@sha256:a337be49b46e08d712ffb3416f307f2b6eb783f205d25c35c55b2c52aaaf7116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4712058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7334b0d43e12d900da02cb013508de2ccecbfa2056572e91db41be9c4c4007f4`

```dockerfile
```

-	Layers:
	-	`sha256:357aeba7911eb9cddb6fd20b65cdd1d6c5767c903f63af5aa536f81daee852ed`  
		Last Modified: Tue, 24 Nov 2026 05:25:39 GMT  
		Size: 4.7 MB (4695529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90d025145637294eee70c1b0670762c05f948f73c9939280cc68a59d23512b4e`  
		Last Modified: Tue, 24 Nov 2026 05:25:39 GMT  
		Size: 16.5 KB (16529 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.13.2` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:d33a8c7d214916cf1791ab155c721164f1c35c1aed9c478126719f9dc47c8ad5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (121016665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edf1766d2db45af47f0dc0baca76feefa5cc7a46cdb62036732fb8230a44be59`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:43:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:37:24 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Tue, 24 Nov 2026 05:37:30 GMT
ENV INFLUXDB_VERSION=1.13.2
# Tue, 24 Nov 2026 05:37:30 GMT
ENV INFLUXDB_PR=-1
# Tue, 24 Nov 2026 05:37:30 GMT
ENV INFLUXDB_PV=1.13.2-1
# Tue, 24 Nov 2026 05:37:30 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:37:30 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 24 Nov 2026 05:37:30 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 05:37:30 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:37:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:37:30 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 24 Nov 2026 05:37:30 GMT
USER influxdb
# Tue, 24 Nov 2026 05:37:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:37:30 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5253071eb43403aa847239c81e354ab7f008a222e5f909eb323f9db555504a95`  
		Last Modified: Tue, 24 Nov 2026 03:39:43 GMT  
		Size: 48.4 MB (48412261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41e80db409d5b905f3c0d8228a2f82637b923bf2af30b11e87cb3b42e5e070d7`  
		Last Modified: Tue, 24 Nov 2026 04:43:36 GMT  
		Size: 23.4 MB (23440379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37ca35192a63d30a2851979d8479b087d232ef681af99374b1305b67aac980ab`  
		Last Modified: Tue, 24 Nov 2026 05:37:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c31385dad3bbee80d87765fcb087fb67bf802f743a7a69cf65c5174e04770e`  
		Last Modified: Tue, 24 Nov 2026 05:37:45 GMT  
		Size: 49.2 MB (49161117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2a260853ecd99b20198f22999401b324adc30c2c709fccb5ffb0e66ddd2cfa3`  
		Last Modified: Tue, 24 Nov 2026 05:37:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3c8533d2254f270ce12f8cfc1cee4e383c5c889603ef5609bd3f63e0d0ae20f`  
		Last Modified: Tue, 24 Nov 2026 05:37:43 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba2e10a115c09b58f93c8a414320ca3c961f16b063be7d97eb7ec83126ed4b9`  
		Last Modified: Tue, 24 Nov 2026 05:37:44 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13.2` - unknown; unknown

```console
$ docker pull influxdb@sha256:d3bd30d057f6928bc6ff7b3d8d4446c712702853fb36f9d5ed56b09ca7217cdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4711103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36af51ec5d998e9513142053d3972d6e5f9f82e4ee8197dce7f3f57c77e79b6e`

```dockerfile
```

-	Layers:
	-	`sha256:0603c89c889be926c6151bf194e15e0cc86f936f001468fcbe8a7dde397ff52d`  
		Last Modified: Tue, 24 Nov 2026 05:37:43 GMT  
		Size: 4.7 MB (4694479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37ce61261fd26657f52491c32694dfd01ba4285440dac78d36d62c1e84e29c7e`  
		Last Modified: Tue, 24 Nov 2026 05:37:43 GMT  
		Size: 16.6 KB (16624 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.13.2-alpine`

```console
$ docker pull influxdb@sha256:4c5a9e4c2178365839e41c9d11dccd9690615873ee289127a07297a09884e91a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.13.2-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:650e36a96554c675e5d80cd596de9e3a149d1a7a38ed781bc87de04f0821fd14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61157378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdd415e1cdfa07420c3e46388aa3431e24ff495315813d4f624a4125f6637529`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:23:17 GMT
RUN apk add --no-cache bash ca-certificates tzdata &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:23:22 GMT
ENV INFLUXDB_VERSION=1.13.2
# Thu, 05 Nov 2026 19:23:22 GMT
ENV INFLUXDB_PR=
# Thu, 05 Nov 2026 19:23:22 GMT
ENV INFLUXDB_PV=1.13.2
# Thu, 05 Nov 2026 19:23:22 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     case "$(apk --print-arch)" in         x86_64)  ARCH=amd64 ;;         aarch64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"         "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     tar -xvf "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influx'             'influxdb-*/influx_inspect'             'influxdb-*/influxd' &&     rm "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"        "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     apk del .build-deps # buildkit
# Thu, 05 Nov 2026 19:23:22 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 19:23:22 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb &&     mkdir -p /var/lib/influxdb &&     mkdir -p /var/log/influxdb &&     chown influxdb:influxdb /var/lib/influxdb &&     chown influxdb:influxdb /var/log/influxdb &&     chmod 0750 /var/lib/influxdb &&     chmod 0750 /var/log/influxdb # buildkit
# Thu, 05 Nov 2026 19:23:22 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 19:23:22 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 19:23:22 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:23:22 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 19:23:22 GMT
USER influxdb
# Thu, 05 Nov 2026 19:23:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:23:22 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a6dce7add7dde683e481c851abe02b5a1529209ebface18f0987ebb70c8ea4`  
		Last Modified: Thu, 05 Nov 2026 19:23:34 GMT  
		Size: 1.2 MB (1225086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:136e225acc40ca0a4dc76d18bb95202a094427efba7fb2aac26c2aaac6c9416b`  
		Last Modified: Thu, 05 Nov 2026 19:23:35 GMT  
		Size: 56.1 MB (56076995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7533c3b780fd623fa7199b380208f932e25619ee2bc786e7bdffc0a4b1ee7900`  
		Last Modified: Thu, 05 Nov 2026 19:23:33 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9110763cd965bbbd8894903d88b62876070b87a52d84856a668b795c44b2856`  
		Last Modified: Thu, 05 Nov 2026 19:23:33 GMT  
		Size: 992.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4818d2393a81f71b39471c9f2ad26457fa420a14c46d18e2621d0f0fc83709b1`  
		Last Modified: Thu, 05 Nov 2026 19:23:34 GMT  
		Size: 212.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfa10c6957577ece7bd9f83a8f4860873d9e2abe14c9d71d3cb2f1741f3e1dc5`  
		Last Modified: Thu, 05 Nov 2026 19:23:35 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13.2-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:59b992e1460fec6c1ff85895418c443c225c7112eb52090414e3d9de62d419fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **779.9 KB (779928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7a17d1446807be449e6cfd3eb649360cacb9c379e59286466f154c5b9cefee6`

```dockerfile
```

-	Layers:
	-	`sha256:bef0fe22c739283d52292cd46dce1b1b211ddf6a94376a15f83f383117f73c2e`  
		Last Modified: Thu, 05 Nov 2026 19:23:33 GMT  
		Size: 761.2 KB (761210 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc115088d823810d3f84f08305e5d7664bcb07d3520933209c9aee57267585e1`  
		Last Modified: Thu, 05 Nov 2026 19:23:34 GMT  
		Size: 18.7 KB (18718 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.13.2-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:8c5ad70b88bb0a4f15ee96102b8af47587ba334ee091867e1b07f9b17f3b0b28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.5 MB (57473425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:519565f71767df17cd96da08ba9b85d4e7d10e61d90224ad9060833719a12eaf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:18:03 GMT
RUN apk add --no-cache bash ca-certificates tzdata &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:18:08 GMT
ENV INFLUXDB_VERSION=1.13.2
# Thu, 05 Nov 2026 19:18:08 GMT
ENV INFLUXDB_PR=
# Thu, 05 Nov 2026 19:18:08 GMT
ENV INFLUXDB_PV=1.13.2
# Thu, 05 Nov 2026 19:18:08 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     case "$(apk --print-arch)" in         x86_64)  ARCH=amd64 ;;         aarch64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"         "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     tar -xvf "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influx'             'influxdb-*/influx_inspect'             'influxdb-*/influxd' &&     rm "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz.asc"        "influxdb-${INFLUXDB_PV}_linux_${ARCH}.tar.gz" &&     apk del .build-deps # buildkit
# Thu, 05 Nov 2026 19:18:08 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 19:18:08 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb &&     mkdir -p /var/lib/influxdb &&     mkdir -p /var/log/influxdb &&     chown influxdb:influxdb /var/lib/influxdb &&     chown influxdb:influxdb /var/log/influxdb &&     chmod 0750 /var/lib/influxdb &&     chmod 0750 /var/log/influxdb # buildkit
# Thu, 05 Nov 2026 19:18:08 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 19:18:08 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 19:18:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:18:08 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 19:18:08 GMT
USER influxdb
# Thu, 05 Nov 2026 19:18:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:18:08 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96175c09c2621ebc8ab5bd8f5c3d4b35e5028a6220f8d4bc0436f8362f04366c`  
		Last Modified: Thu, 05 Nov 2026 19:18:19 GMT  
		Size: 1.3 MB (1296499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e6ce688e228120156dd8643cb46ae94f9284edaebc77361e85f161e2a8c96b`  
		Last Modified: Thu, 05 Nov 2026 19:18:20 GMT  
		Size: 52.0 MB (51984002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecea4cfc6562c2b187a532053e876b8f55682250e2a6ceb44aafce188e47185f`  
		Last Modified: Thu, 05 Nov 2026 19:18:18 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f0c4726eae1cc6a3e176a7f6e2fc98cfd42d186151496e4697f7d176ae3ad1`  
		Last Modified: Thu, 05 Nov 2026 19:18:19 GMT  
		Size: 990.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8dd61a6e87b1700ff790f4a9f5ac21487131b1ad024aa5dfb2968e92237c3f7`  
		Last Modified: Thu, 05 Nov 2026 19:18:20 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ec3e7d3781787a0d46dba5e34cbefd2102dccb613cef8daf90350135d8e1b9`  
		Last Modified: Thu, 05 Nov 2026 19:18:20 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13.2-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:4d2cc79d85523a672d48bce174a8f9d63690a2704a99b20d7d534ef6e237ab90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **778.1 KB (778109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43ca8af0c9b94ea767661cc8d4a6f3b07092b24619f46dcecc879d18e0a27b73`

```dockerfile
```

-	Layers:
	-	`sha256:a7bbeaa9502e56db8d63823dfdae8c271abd09dcbc4a00f933c0450e5fa3e5c9`  
		Last Modified: Thu, 05 Nov 2026 19:18:19 GMT  
		Size: 759.3 KB (759281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4332ab4589f23b0b010fee0fcee8e2d3e18c1b047fa39d3f74e8bcb6f905652`  
		Last Modified: Thu, 05 Nov 2026 19:18:19 GMT  
		Size: 18.8 KB (18828 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.13.2-data`

```console
$ docker pull influxdb@sha256:55b1f8e8d75252e6653fa96ff36292222f23f26af3aa42f2cb67db585b589fd7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.13.2-data` - linux; amd64

```console
$ docker pull influxdb@sha256:99156fae2b7ead520c529cabd56599bd59b01985b97d2d9899ca144492ece63b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.7 MB (126743143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4542f3a43d3fb968d76d1f5a7e29b9ab20ab2d4996daf22d6afbf43363f4d9b3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:25:29 GMT
ENV INFLUXDB_VERSION=1.13.2-c1.13.2
# Tue, 24 Nov 2026 05:25:29 GMT
ENV INFLUXDB_PR=
# Tue, 24 Nov 2026 05:25:29 GMT
ENV INFLUXDB_PV=1.13.2-c1.13.2
# Tue, 24 Nov 2026 05:25:29 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-data_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:25:29 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 24 Nov 2026 05:25:29 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 05:25:29 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:25:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:25:29 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 24 Nov 2026 05:25:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:25:29 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ce765e0ce2b15693aa3eae79613bfe301f109dc7f16163c6c0b102e161d9db3`  
		Last Modified: Tue, 24 Nov 2026 05:25:43 GMT  
		Size: 54.3 MB (54341737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25136fd0a0c04d48322ed2a1a766f5da061d214489b391cbe16751afbc60f735`  
		Last Modified: Tue, 24 Nov 2026 05:25:42 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ec36b1bdb8b872a1806e62fa015b88375f5c3d88fbd710d5dacf696b0fd26b`  
		Last Modified: Tue, 24 Nov 2026 05:25:42 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5bfb56735b5f84d8845c8dd223469f3e13d7759e3d5e8fed66a065a423d2bed`  
		Last Modified: Tue, 24 Nov 2026 05:25:42 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13.2-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:4ce89a735f1d7b3d3c25cc3ecb228206285d64427e55b11d5b557df2f22614a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4721392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b8bd2cfcc55667702e3a80037742c41d1965aa865ea7a4ceb08d83f9a2d7799`

```dockerfile
```

-	Layers:
	-	`sha256:d754674c82d70f15319f99bd132cc1ca3bab8533a7cd52ee1559d32bc1536213`  
		Last Modified: Tue, 24 Nov 2026 05:25:42 GMT  
		Size: 4.7 MB (4707536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26f9d5904d95021053d365f760eb0f4e4ea90b9adeda78b969f1475d1b51a95a`  
		Last Modified: Tue, 24 Nov 2026 05:25:42 GMT  
		Size: 13.9 KB (13856 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.13.2-data-alpine`

```console
$ docker pull influxdb@sha256:9454055f264be4a97d90e8c27b5035c294841af6527e7294553bbe60d91cb922
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.13.2-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:5d635d169f3ab10557bf28bbef0c6d43ac9840f63154df31a915cf9de0bded17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62262620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b03aaf776b1cfc326f4a778b252012a5530b3150b480f5032cfc3d7a52ac47`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:23:22 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:23:29 GMT
ENV INFLUXDB_VERSION=1.13.2-c1.13.2
# Thu, 05 Nov 2026 19:23:29 GMT
ENV INFLUXDB_PR=
# Thu, 05 Nov 2026 19:23:29 GMT
ENV INFLUXDB_PV=1.13.2-c1.13.2
# Thu, 05 Nov 2026 19:23:29 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"         "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     tar -xvf "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influx'             'influxdb-*/influx_inspect'             'influxdb-*/influxd' &&     rm "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"        "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     apk del .build-deps # buildkit
# Thu, 05 Nov 2026 19:23:29 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 19:23:29 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 19:23:29 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 19:23:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:23:29 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 19:23:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:23:29 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a8ecea5a5df485465449955a829ad9d0b825a10aba635a594725c98c1f9b47`  
		Last Modified: Thu, 05 Nov 2026 19:23:41 GMT  
		Size: 1.2 MB (1225084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a83f5f682c2450994d3a91b64ea9050fcd5c2625b9bb06096f264da82ba9e82`  
		Last Modified: Thu, 05 Nov 2026 19:23:43 GMT  
		Size: 57.2 MB (57183175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a32708025a66c60ff73ef86df4c4154059bf53c77709fa118416f2dbf7d59d8a`  
		Last Modified: Thu, 05 Nov 2026 19:23:41 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa8b1da18b388218e6868ee34ab0ba16e7794bd0b5d191cca4fc3b790a0b135`  
		Last Modified: Thu, 05 Nov 2026 19:23:41 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45eb0bfeac154d9d9da82a91d1367654bb3669aef53f1071f577e700b74b13d9`  
		Last Modified: Thu, 05 Nov 2026 19:23:42 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13.2-data-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:bfe61caa7f6549e76bf6d952cd0189ffdb0121fb299def4d7f315e738e3cbc3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **792.8 KB (792775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689b851b8c6f5064745031c50299553d9263bf42920e59256f7058fea6ef2fdf`

```dockerfile
```

-	Layers:
	-	`sha256:a147202085d6a8649d3c32d4d844ea2aac655c8dea0ca87d46ce61da527cab79`  
		Last Modified: Thu, 05 Nov 2026 19:23:41 GMT  
		Size: 777.6 KB (777557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca55fa28c4b981b906be6b4fdfc28b30f8aba60dc581447a7c25dd68d4247a9e`  
		Last Modified: Thu, 05 Nov 2026 19:23:41 GMT  
		Size: 15.2 KB (15218 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.13.2-meta`

```console
$ docker pull influxdb@sha256:0d886631f863b27ba4adf4bec144efc86e4737b30d2e434d8eb6cf47bf0bb352
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.13.2-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:0246dcfacf2378d79b283daaccb6bf64526d910743de51c66ecedcaf632e8296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96142314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06552538dae490a58d287f9929eae32dff3b1c394c13c44cbf7688fbb4236527`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:25:51 GMT
ENV INFLUXDB_VERSION=1.13.2-c1.13.2
# Tue, 24 Nov 2026 05:25:51 GMT
ENV INFLUXDB_PR=
# Tue, 24 Nov 2026 05:25:51 GMT
ENV INFLUXDB_PV=1.13.2-c1.13.2
# Tue, 24 Nov 2026 05:25:51 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-meta_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:25:51 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Tue, 24 Nov 2026 05:25:51 GMT
EXPOSE map[8091/tcp:{}]
# Tue, 24 Nov 2026 05:25:51 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:25:51 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:25:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:25:51 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc4444de2129f27dc4bfd47b1a07d18366131519114b63e9c2e444298ca34a3`  
		Last Modified: Tue, 24 Nov 2026 05:26:01 GMT  
		Size: 23.7 MB (23742115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b364666e1fcca1549a96a3abc8b11b7fde79ef5c7a1fc5d4a7eee56ed6157d`  
		Last Modified: Tue, 24 Nov 2026 05:26:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f109084fdf5aab4313941584d0d324611dde5fa4c63010629b3180ee8f00c75`  
		Last Modified: Tue, 24 Nov 2026 05:26:01 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13.2-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:0393905c686cf953ea6c6beaa3a966bb82b536eecff282b281213be4813839d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4611941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f5fb8cbaa7282ac048efa92f159345324af4da24dd96ff8e5c929fa6250e839`

```dockerfile
```

-	Layers:
	-	`sha256:95ccf990e72676d642e9b410ac30c580b43afc2a0617d5d1635728cd734fd25a`  
		Last Modified: Tue, 24 Nov 2026 05:26:01 GMT  
		Size: 4.6 MB (4599576 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af17277854fcf1a4253cc0321a916be1493e587b52f84b1a6ea67cc340230e51`  
		Last Modified: Tue, 24 Nov 2026 05:26:00 GMT  
		Size: 12.4 KB (12365 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:1.13.2-meta-alpine`

```console
$ docker pull influxdb@sha256:f29dbc40d9956b3f59f12fe3ef86da1d2722271c64a048badc74c3624c87efb8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.13.2-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:e760f38d484de796f531bf4693ef6917b8640ab501f536cb6016a7c9c33feab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31669636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f063b1d9b76f5feb2e550614b615f796b203237a3378ea6bfe567efe5fdbfe5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:23:42 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:23:46 GMT
ENV INFLUXDB_VERSION=1.13.2-c1.13.2
# Thu, 05 Nov 2026 19:23:46 GMT
ENV INFLUXDB_PR=
# Thu, 05 Nov 2026 19:23:46 GMT
ENV INFLUXDB_PV=1.13.2-c1.13.2
# Thu, 05 Nov 2026 19:23:46 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"         "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     tar -xvf "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influxd-ctl'             'influxdb-*/influxd-meta' &&     rm "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"        "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     apk del .build-deps # buildkit
# Thu, 05 Nov 2026 19:23:46 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Thu, 05 Nov 2026 19:23:46 GMT
EXPOSE map[8091/tcp:{}]
# Thu, 05 Nov 2026 19:23:46 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 19:23:46 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:23:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:23:46 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e64623bc14fc0face5f7ec48322a0d0d850031103931d97370f917cee8c002`  
		Last Modified: Thu, 05 Nov 2026 19:23:54 GMT  
		Size: 1.2 MB (1225093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee8b54d28f29b0b3b92e73a993abf4cbe27f362377003720ebb15ee0d43e282`  
		Last Modified: Thu, 05 Nov 2026 19:23:54 GMT  
		Size: 26.6 MB (26591388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654d4a596451e2820db9a71d9dc92b59de641360c2d52dbd9811f6d3588dbe77`  
		Last Modified: Thu, 05 Nov 2026 19:23:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062f34c3739673d949e3fc8fcfe73d0e78d96b23de2df19195139d342efcecee`  
		Last Modified: Thu, 05 Nov 2026 19:23:54 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13.2-meta-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:46a5e45c4098217fc8ff26a006c1bcdf09d078f2e3d3365aa6e99e5c710267a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **684.0 KB (684002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28c918b97c1fa743d4c79f09084de43cc888689a2a8f6942d1fb8cce95d163a`

```dockerfile
```

-	Layers:
	-	`sha256:87b5e0b3972e3683aec2d5b4bd2c5bacc9aac50af16e0fa54283593192aa1375`  
		Last Modified: Thu, 05 Nov 2026 19:23:54 GMT  
		Size: 670.4 KB (670383 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1d4fcef03cdcaaf6527708fad6c4cf9485769322e5127b15f58f2bf3b0909c7`  
		Last Modified: Thu, 05 Nov 2026 19:23:54 GMT  
		Size: 13.6 KB (13619 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:2`

```console
$ docker pull influxdb@sha256:94e98bf5a07587c91bac4f6059aa2ddc172cd246bbd296852a30654192a38a03
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2` - linux; amd64

```console
$ docker pull influxdb@sha256:b6bc9e4fbf97118cc513c35d50532e4a72da99c30e0ab3a19fd590f884d8439d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112648323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f6ad6fc47b59f3ec69b4204c9ab05db77b123c23333450deda3cfa15cc462d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:40:17 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:40:17 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 24 Nov 2026 04:40:17 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 24 Nov 2026 04:40:22 GMT
ENV INFLUXDB_VERSION=2.10.1
# Tue, 24 Nov 2026 04:40:22 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 24 Nov 2026 04:40:22 GMT
ENV INFLUX_CLI_VERSION=2.9.1
# Tue, 24 Nov 2026 04:40:23 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 24 Nov 2026 04:40:23 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 24 Nov 2026 04:40:23 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 24 Nov 2026 04:40:23 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 24 Nov 2026 04:40:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 04:40:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 04:40:23 GMT
CMD ["influxd"]
# Tue, 24 Nov 2026 04:40:23 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 04:40:23 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 24 Nov 2026 04:40:23 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 24 Nov 2026 04:40:23 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 24 Nov 2026 04:40:23 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3e0cb9e03d7002d3e17e48eaaa09673bc83b331e358c960ae4df99b47b7a9d0`  
		Last Modified: Tue, 24 Nov 2026 04:40:35 GMT  
		Size: 9.6 MB (9624805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36a625f133e62bb88c891bed72c1d5f7fc3d602dc3072e06596294979b22d9b0`  
		Last Modified: Tue, 24 Nov 2026 04:40:35 GMT  
		Size: 3.8 MB (3822780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15cda2e33c904c3da57f73d2a3b3de13bfc83a0d2b668d322d7c114bfc9462f`  
		Last Modified: Tue, 24 Nov 2026 04:40:35 GMT  
		Size: 3.2 KB (3227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:434c5a7852e3af3a1253372a404dcb626e0b392ad70581c83628db3881c232f6`  
		Last Modified: Tue, 24 Nov 2026 04:40:37 GMT  
		Size: 57.5 MB (57465454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4367b12ae05bf5f914e2bfdbe3080b940ba1c271d766b57ff87376cb7db67d6e`  
		Last Modified: Tue, 24 Nov 2026 04:40:36 GMT  
		Size: 13.5 MB (13476865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a56a51e4fbefca375bec2c4a9b59753744433600a2029b56f63faba0563273`  
		Last Modified: Tue, 24 Nov 2026 04:40:37 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ae9328360991f0ed5c247df5b625859af0761d6a4ceec91be2b5444d454835`  
		Last Modified: Tue, 24 Nov 2026 04:40:37 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61888f1cec981a995e95e3c26625d97f575cea514171c7ff1e6f8f954167069d`  
		Last Modified: Tue, 24 Nov 2026 04:40:38 GMT  
		Size: 6.8 KB (6790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2` - unknown; unknown

```console
$ docker pull influxdb@sha256:ad834849214d462a993ad021f212d38dd5b5c40b6551e59091dbd2323a7908b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2996220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e62c43416a0b3f095b1f569a225301acf494132face1c4dbbddf8672b12dbfb`

```dockerfile
```

-	Layers:
	-	`sha256:065c8f315bc479938a029308e01395b756876ffa2965a745323c9d2f05f25be8`  
		Last Modified: Tue, 24 Nov 2026 04:40:35 GMT  
		Size: 3.0 MB (2967596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43a78a3d500d534e76f6e92f0be0d4d6f7d7361e99e3caaefee0d8aa5d222467`  
		Last Modified: Tue, 24 Nov 2026 04:40:35 GMT  
		Size: 28.6 KB (28624 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:509e7d55856a7ac2f3eccfca308c76b3cc132ab4c598d652b60308cac183e427
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.0 MB (107999272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:667ccf00bfe85f8df42ac1178e30a6225374017a02923b589c449db4d974fbc5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:44:48 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:44:49 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 24 Nov 2026 04:44:49 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 24 Nov 2026 04:44:53 GMT
ENV INFLUXDB_VERSION=2.10.1
# Tue, 24 Nov 2026 04:44:53 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 24 Nov 2026 04:44:53 GMT
ENV INFLUX_CLI_VERSION=2.9.1
# Tue, 24 Nov 2026 04:44:55 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 24 Nov 2026 04:44:55 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 24 Nov 2026 04:44:55 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 24 Nov 2026 04:44:55 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 24 Nov 2026 04:44:55 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 04:44:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 04:44:55 GMT
CMD ["influxd"]
# Tue, 24 Nov 2026 04:44:55 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 04:44:55 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 24 Nov 2026 04:44:55 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 24 Nov 2026 04:44:55 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 24 Nov 2026 04:44:55 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2137c848894bafbaf8ed9229dbf5892a951811f74e26afe177f384c5a737d800`  
		Last Modified: Tue, 24 Nov 2026 04:45:06 GMT  
		Size: 9.4 MB (9449007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb9f7972072e4b428520d64ba58b68bdbd88908966556be2660059e61a31f300`  
		Last Modified: Tue, 24 Nov 2026 04:45:06 GMT  
		Size: 3.5 MB (3459169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7fe00b07ae819fdc0806ab0d009b95c16a016106d9bba2e2822dcdbea26a7fd`  
		Last Modified: Tue, 24 Nov 2026 04:45:06 GMT  
		Size: 3.2 KB (3228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e184240c4345239bedd5ee58841d6ad9491335136a1da12d1d34da7112b39107`  
		Last Modified: Tue, 24 Nov 2026 04:45:08 GMT  
		Size: 54.6 MB (54555430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c1adbf79a9d4e0e4cffefd9759fd9bb1429520f3f01cd4f9b5acabd04b4a23`  
		Last Modified: Tue, 24 Nov 2026 04:45:07 GMT  
		Size: 12.4 MB (12380902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d975a07478cbef2a66762a5f36db8c2b15822674b2f4ff38d24355340dc0d9b`  
		Last Modified: Tue, 24 Nov 2026 04:45:07 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e859f94461d5e6fffadafebbeb08909a8ab3c7985eab774314dfceb086c2a64d`  
		Last Modified: Tue, 24 Nov 2026 04:45:08 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a50f200dce0f49b37fa65605623fa4e56883f31f168fac0c4116bdeebfe1d04`  
		Last Modified: Tue, 24 Nov 2026 04:45:08 GMT  
		Size: 6.8 KB (6790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2` - unknown; unknown

```console
$ docker pull influxdb@sha256:846a6f4fc182dabc2893443677af25d5c113d20e92fd652e44c3c068b8e09236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2995877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4658bc0f0adaac3ed96a5f99a2298902ed9c20101d1662a3548d8d03cadd9f`

```dockerfile
```

-	Layers:
	-	`sha256:f028d98e1ff7cf1810312b2e922b5b16a30779ff2ab8f66b88a7d965b8eb13a4`  
		Last Modified: Tue, 24 Nov 2026 04:45:06 GMT  
		Size: 3.0 MB (2967074 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbbdd1cacb614311708e7adf84df0583616f111f90f8d53a57757fe3616eee35`  
		Last Modified: Tue, 24 Nov 2026 04:45:06 GMT  
		Size: 28.8 KB (28803 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:2-alpine`

```console
$ docker pull influxdb@sha256:6df3d6c5b8530ed149ecdd66086d251f40295330aa0620ae0bfdbbf3ddab4fdc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:5fcd642b12df57820b7788e6e7c799bebd2dbbefa06cd13f7abbe85fb3a29fff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88884223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50167e01b0c1a420b8288aae1be4cda25973e02d7f79dce3b140b584289844f1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:13:31 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 18 Nov 2026 21:13:32 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Wed, 18 Nov 2026 21:13:32 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 18 Nov 2026 21:13:32 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Wed, 18 Nov 2026 21:13:35 GMT
ENV INFLUXDB_VERSION=2.10.1
# Wed, 18 Nov 2026 21:13:35 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 18 Nov 2026 21:13:35 GMT
ENV INFLUX_CLI_VERSION=2.9.1
# Wed, 18 Nov 2026 21:13:36 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 18 Nov 2026 21:13:36 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 18 Nov 2026 21:13:36 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 18 Nov 2026 21:13:36 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 18 Nov 2026 21:13:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:13:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:13:36 GMT
CMD ["influxd"]
# Wed, 18 Nov 2026 21:13:36 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 21:13:36 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 18 Nov 2026 21:13:36 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 18 Nov 2026 21:13:36 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 18 Nov 2026 21:13:36 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad37ab7569f2e86270020cade068b69c4aaee226d2fe92bfde23a47621bb715a`  
		Last Modified: Wed, 18 Nov 2026 21:13:46 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b770c0b0c65ffe276ee95d4edcfb19408329f7b14b824e2d46048483aff0e8f`  
		Last Modified: Wed, 18 Nov 2026 21:13:46 GMT  
		Size: 10.3 MB (10258131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b1d1d613c309c0fc9562b448e6f64392322b89663a44da664f8b61570e54b0`  
		Last Modified: Wed, 18 Nov 2026 21:13:46 GMT  
		Size: 3.8 MB (3822793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e2f273dbbad975e537361def76d37661355cbe209408ec940e9d07c0fbda89`  
		Last Modified: Wed, 18 Nov 2026 21:13:46 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe9239690517826bd3abae61d2a4f65f77425f5f3ca3a39332bd3c04e1f90de`  
		Last Modified: Wed, 18 Nov 2026 21:13:48 GMT  
		Size: 57.5 MB (57465409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cdad5ce3a64e3b16bf6e86de457118e6ac2af31925fd54edd19fb862a4fbad7`  
		Last Modified: Wed, 18 Nov 2026 21:13:48 GMT  
		Size: 13.5 MB (13476856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d55d2b162bbd384c35998f9e1e49c0a0734775e8e18bdefb172f17bd32096d3c`  
		Last Modified: Wed, 18 Nov 2026 21:13:47 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49b6cd1e2526594ab7c98e23f16bf3a62da6d7600a34d8b4f959ec0cd241fbc2`  
		Last Modified: Wed, 18 Nov 2026 21:13:48 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ea19967de3f27aff1a7a1508f8d166bc5d37383d707a42de763a88688cffff`  
		Last Modified: Wed, 18 Nov 2026 21:13:49 GMT  
		Size: 6.8 KB (6776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:955a618b3ddf6699b61b049344696ac9a2e249102b22ff48e3b9a100c759e941
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **967.5 KB (967503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da0d5e207d5c9ab070ad76acc95c20daf0cea70f8a457f0a4fc682fccbc95c8c`

```dockerfile
```

-	Layers:
	-	`sha256:74cda73a700b6e33d95aa9380795d8c493b36f41b8dfa31ba154196df75b10ec`  
		Last Modified: Wed, 18 Nov 2026 21:13:46 GMT  
		Size: 936.9 KB (936884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a866fef0e048584522cc85b6beb84d3136d32e9946a8a9c142189f3a684cee8`  
		Last Modified: Wed, 18 Nov 2026 21:13:46 GMT  
		Size: 30.6 KB (30619 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:9646e77d2964cb7b9daf122e40646e60b6d02b08496211cc4310a34e2bb97f6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84807500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dcb62800d2a17d3014118a9e3ed72071e0c06d264d3e0b3320e4455e5cdc75a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:13:35 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 18 Nov 2026 21:13:37 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Wed, 18 Nov 2026 21:13:37 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 18 Nov 2026 21:13:37 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Wed, 18 Nov 2026 21:13:40 GMT
ENV INFLUXDB_VERSION=2.10.1
# Wed, 18 Nov 2026 21:13:40 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 18 Nov 2026 21:13:40 GMT
ENV INFLUX_CLI_VERSION=2.9.1
# Wed, 18 Nov 2026 21:13:41 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 18 Nov 2026 21:13:41 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 18 Nov 2026 21:13:41 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 18 Nov 2026 21:13:41 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 18 Nov 2026 21:13:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:13:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:13:41 GMT
CMD ["influxd"]
# Wed, 18 Nov 2026 21:13:41 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 21:13:41 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 18 Nov 2026 21:13:41 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 18 Nov 2026 21:13:41 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 18 Nov 2026 21:13:41 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ecf8e7b20bf0ba6e2705fb74a6dae86a78b5195cd1ec280521126be16a03d8`  
		Last Modified: Wed, 18 Nov 2026 21:13:51 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669f48668c6f762a92de06317c2e6b727c9094c74975aff7833e2cce141ab136`  
		Last Modified: Wed, 18 Nov 2026 21:13:51 GMT  
		Size: 10.2 MB (10213403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f8748f6bd3810d172a3be1a3b9d3704f40ab61d44c605856330c5cddbce850f`  
		Last Modified: Wed, 18 Nov 2026 21:13:51 GMT  
		Size: 3.5 MB (3459171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cece1c563ae73fdb90bbcc955ede93c497dd67f8bd846a98d9ad528ac01be0e`  
		Last Modified: Wed, 18 Nov 2026 21:13:51 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ebe90c0193ae17dac304284b3bf5d5189dc9b6a2a74bd65dbcb460c1bb76b5`  
		Last Modified: Wed, 18 Nov 2026 21:13:54 GMT  
		Size: 54.6 MB (54555374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e3c159eaa4b270232635c26139c403e6a8aa4da31a62a43139dcaf70cb9c7a4`  
		Last Modified: Wed, 18 Nov 2026 21:13:53 GMT  
		Size: 12.4 MB (12380882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d72d1a2ccf534edaa1404d6283e35a7a3a625a9e558a2e5ae3ef9cd319209c5`  
		Last Modified: Wed, 18 Nov 2026 21:13:53 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd55a9907f3303a73dde848e24d0a9762b82f797c9df305bd659e6d4aadd3e31`  
		Last Modified: Wed, 18 Nov 2026 21:13:53 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3306462cc19d1c3087681d956d2a748f9ad780c2367571ac33a994bf097bc24`  
		Last Modified: Wed, 18 Nov 2026 21:13:54 GMT  
		Size: 6.8 KB (6776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:47af017028e90c2ee629381b53ecc8aaf444d94a74a0ffd0ea9c02801ee6f9e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **966.3 KB (966296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7f4cbceddde4faefcedabf0f6f4a3b3b4f67e579adb3c5576597eeb8e109b27`

```dockerfile
```

-	Layers:
	-	`sha256:f4f27c40d746b7835527aca0a6ddb792d815721aeb680ec3ce5489885c4c1b53`  
		Last Modified: Wed, 18 Nov 2026 21:13:51 GMT  
		Size: 935.5 KB (935483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06f7674bb69b1ff96fb8ba74d7a634b7028380f7ceef7c04890083709358476a`  
		Last Modified: Wed, 18 Nov 2026 21:13:51 GMT  
		Size: 30.8 KB (30813 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:2.10`

```console
$ docker pull influxdb@sha256:94e98bf5a07587c91bac4f6059aa2ddc172cd246bbd296852a30654192a38a03
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.10` - linux; amd64

```console
$ docker pull influxdb@sha256:b6bc9e4fbf97118cc513c35d50532e4a72da99c30e0ab3a19fd590f884d8439d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112648323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f6ad6fc47b59f3ec69b4204c9ab05db77b123c23333450deda3cfa15cc462d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:40:17 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:40:17 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 24 Nov 2026 04:40:17 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 24 Nov 2026 04:40:22 GMT
ENV INFLUXDB_VERSION=2.10.1
# Tue, 24 Nov 2026 04:40:22 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 24 Nov 2026 04:40:22 GMT
ENV INFLUX_CLI_VERSION=2.9.1
# Tue, 24 Nov 2026 04:40:23 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 24 Nov 2026 04:40:23 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 24 Nov 2026 04:40:23 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 24 Nov 2026 04:40:23 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 24 Nov 2026 04:40:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 04:40:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 04:40:23 GMT
CMD ["influxd"]
# Tue, 24 Nov 2026 04:40:23 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 04:40:23 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 24 Nov 2026 04:40:23 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 24 Nov 2026 04:40:23 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 24 Nov 2026 04:40:23 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3e0cb9e03d7002d3e17e48eaaa09673bc83b331e358c960ae4df99b47b7a9d0`  
		Last Modified: Tue, 24 Nov 2026 04:40:35 GMT  
		Size: 9.6 MB (9624805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36a625f133e62bb88c891bed72c1d5f7fc3d602dc3072e06596294979b22d9b0`  
		Last Modified: Tue, 24 Nov 2026 04:40:35 GMT  
		Size: 3.8 MB (3822780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15cda2e33c904c3da57f73d2a3b3de13bfc83a0d2b668d322d7c114bfc9462f`  
		Last Modified: Tue, 24 Nov 2026 04:40:35 GMT  
		Size: 3.2 KB (3227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:434c5a7852e3af3a1253372a404dcb626e0b392ad70581c83628db3881c232f6`  
		Last Modified: Tue, 24 Nov 2026 04:40:37 GMT  
		Size: 57.5 MB (57465454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4367b12ae05bf5f914e2bfdbe3080b940ba1c271d766b57ff87376cb7db67d6e`  
		Last Modified: Tue, 24 Nov 2026 04:40:36 GMT  
		Size: 13.5 MB (13476865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a56a51e4fbefca375bec2c4a9b59753744433600a2029b56f63faba0563273`  
		Last Modified: Tue, 24 Nov 2026 04:40:37 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ae9328360991f0ed5c247df5b625859af0761d6a4ceec91be2b5444d454835`  
		Last Modified: Tue, 24 Nov 2026 04:40:37 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61888f1cec981a995e95e3c26625d97f575cea514171c7ff1e6f8f954167069d`  
		Last Modified: Tue, 24 Nov 2026 04:40:38 GMT  
		Size: 6.8 KB (6790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.10` - unknown; unknown

```console
$ docker pull influxdb@sha256:ad834849214d462a993ad021f212d38dd5b5c40b6551e59091dbd2323a7908b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2996220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e62c43416a0b3f095b1f569a225301acf494132face1c4dbbddf8672b12dbfb`

```dockerfile
```

-	Layers:
	-	`sha256:065c8f315bc479938a029308e01395b756876ffa2965a745323c9d2f05f25be8`  
		Last Modified: Tue, 24 Nov 2026 04:40:35 GMT  
		Size: 3.0 MB (2967596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43a78a3d500d534e76f6e92f0be0d4d6f7d7361e99e3caaefee0d8aa5d222467`  
		Last Modified: Tue, 24 Nov 2026 04:40:35 GMT  
		Size: 28.6 KB (28624 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.10` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:509e7d55856a7ac2f3eccfca308c76b3cc132ab4c598d652b60308cac183e427
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.0 MB (107999272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:667ccf00bfe85f8df42ac1178e30a6225374017a02923b589c449db4d974fbc5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:44:48 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:44:49 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 24 Nov 2026 04:44:49 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 24 Nov 2026 04:44:53 GMT
ENV INFLUXDB_VERSION=2.10.1
# Tue, 24 Nov 2026 04:44:53 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 24 Nov 2026 04:44:53 GMT
ENV INFLUX_CLI_VERSION=2.9.1
# Tue, 24 Nov 2026 04:44:55 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 24 Nov 2026 04:44:55 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 24 Nov 2026 04:44:55 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 24 Nov 2026 04:44:55 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 24 Nov 2026 04:44:55 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 04:44:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 04:44:55 GMT
CMD ["influxd"]
# Tue, 24 Nov 2026 04:44:55 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 04:44:55 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 24 Nov 2026 04:44:55 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 24 Nov 2026 04:44:55 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 24 Nov 2026 04:44:55 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2137c848894bafbaf8ed9229dbf5892a951811f74e26afe177f384c5a737d800`  
		Last Modified: Tue, 24 Nov 2026 04:45:06 GMT  
		Size: 9.4 MB (9449007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb9f7972072e4b428520d64ba58b68bdbd88908966556be2660059e61a31f300`  
		Last Modified: Tue, 24 Nov 2026 04:45:06 GMT  
		Size: 3.5 MB (3459169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7fe00b07ae819fdc0806ab0d009b95c16a016106d9bba2e2822dcdbea26a7fd`  
		Last Modified: Tue, 24 Nov 2026 04:45:06 GMT  
		Size: 3.2 KB (3228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e184240c4345239bedd5ee58841d6ad9491335136a1da12d1d34da7112b39107`  
		Last Modified: Tue, 24 Nov 2026 04:45:08 GMT  
		Size: 54.6 MB (54555430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c1adbf79a9d4e0e4cffefd9759fd9bb1429520f3f01cd4f9b5acabd04b4a23`  
		Last Modified: Tue, 24 Nov 2026 04:45:07 GMT  
		Size: 12.4 MB (12380902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d975a07478cbef2a66762a5f36db8c2b15822674b2f4ff38d24355340dc0d9b`  
		Last Modified: Tue, 24 Nov 2026 04:45:07 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e859f94461d5e6fffadafebbeb08909a8ab3c7985eab774314dfceb086c2a64d`  
		Last Modified: Tue, 24 Nov 2026 04:45:08 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a50f200dce0f49b37fa65605623fa4e56883f31f168fac0c4116bdeebfe1d04`  
		Last Modified: Tue, 24 Nov 2026 04:45:08 GMT  
		Size: 6.8 KB (6790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.10` - unknown; unknown

```console
$ docker pull influxdb@sha256:846a6f4fc182dabc2893443677af25d5c113d20e92fd652e44c3c068b8e09236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2995877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4658bc0f0adaac3ed96a5f99a2298902ed9c20101d1662a3548d8d03cadd9f`

```dockerfile
```

-	Layers:
	-	`sha256:f028d98e1ff7cf1810312b2e922b5b16a30779ff2ab8f66b88a7d965b8eb13a4`  
		Last Modified: Tue, 24 Nov 2026 04:45:06 GMT  
		Size: 3.0 MB (2967074 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbbdd1cacb614311708e7adf84df0583616f111f90f8d53a57757fe3616eee35`  
		Last Modified: Tue, 24 Nov 2026 04:45:06 GMT  
		Size: 28.8 KB (28803 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:2.10-alpine`

```console
$ docker pull influxdb@sha256:6df3d6c5b8530ed149ecdd66086d251f40295330aa0620ae0bfdbbf3ddab4fdc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.10-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:5fcd642b12df57820b7788e6e7c799bebd2dbbefa06cd13f7abbe85fb3a29fff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88884223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50167e01b0c1a420b8288aae1be4cda25973e02d7f79dce3b140b584289844f1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:13:31 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 18 Nov 2026 21:13:32 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Wed, 18 Nov 2026 21:13:32 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 18 Nov 2026 21:13:32 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Wed, 18 Nov 2026 21:13:35 GMT
ENV INFLUXDB_VERSION=2.10.1
# Wed, 18 Nov 2026 21:13:35 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 18 Nov 2026 21:13:35 GMT
ENV INFLUX_CLI_VERSION=2.9.1
# Wed, 18 Nov 2026 21:13:36 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 18 Nov 2026 21:13:36 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 18 Nov 2026 21:13:36 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 18 Nov 2026 21:13:36 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 18 Nov 2026 21:13:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:13:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:13:36 GMT
CMD ["influxd"]
# Wed, 18 Nov 2026 21:13:36 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 21:13:36 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 18 Nov 2026 21:13:36 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 18 Nov 2026 21:13:36 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 18 Nov 2026 21:13:36 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad37ab7569f2e86270020cade068b69c4aaee226d2fe92bfde23a47621bb715a`  
		Last Modified: Wed, 18 Nov 2026 21:13:46 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b770c0b0c65ffe276ee95d4edcfb19408329f7b14b824e2d46048483aff0e8f`  
		Last Modified: Wed, 18 Nov 2026 21:13:46 GMT  
		Size: 10.3 MB (10258131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b1d1d613c309c0fc9562b448e6f64392322b89663a44da664f8b61570e54b0`  
		Last Modified: Wed, 18 Nov 2026 21:13:46 GMT  
		Size: 3.8 MB (3822793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e2f273dbbad975e537361def76d37661355cbe209408ec940e9d07c0fbda89`  
		Last Modified: Wed, 18 Nov 2026 21:13:46 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe9239690517826bd3abae61d2a4f65f77425f5f3ca3a39332bd3c04e1f90de`  
		Last Modified: Wed, 18 Nov 2026 21:13:48 GMT  
		Size: 57.5 MB (57465409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cdad5ce3a64e3b16bf6e86de457118e6ac2af31925fd54edd19fb862a4fbad7`  
		Last Modified: Wed, 18 Nov 2026 21:13:48 GMT  
		Size: 13.5 MB (13476856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d55d2b162bbd384c35998f9e1e49c0a0734775e8e18bdefb172f17bd32096d3c`  
		Last Modified: Wed, 18 Nov 2026 21:13:47 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49b6cd1e2526594ab7c98e23f16bf3a62da6d7600a34d8b4f959ec0cd241fbc2`  
		Last Modified: Wed, 18 Nov 2026 21:13:48 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ea19967de3f27aff1a7a1508f8d166bc5d37383d707a42de763a88688cffff`  
		Last Modified: Wed, 18 Nov 2026 21:13:49 GMT  
		Size: 6.8 KB (6776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.10-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:955a618b3ddf6699b61b049344696ac9a2e249102b22ff48e3b9a100c759e941
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **967.5 KB (967503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da0d5e207d5c9ab070ad76acc95c20daf0cea70f8a457f0a4fc682fccbc95c8c`

```dockerfile
```

-	Layers:
	-	`sha256:74cda73a700b6e33d95aa9380795d8c493b36f41b8dfa31ba154196df75b10ec`  
		Last Modified: Wed, 18 Nov 2026 21:13:46 GMT  
		Size: 936.9 KB (936884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a866fef0e048584522cc85b6beb84d3136d32e9946a8a9c142189f3a684cee8`  
		Last Modified: Wed, 18 Nov 2026 21:13:46 GMT  
		Size: 30.6 KB (30619 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.10-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:9646e77d2964cb7b9daf122e40646e60b6d02b08496211cc4310a34e2bb97f6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84807500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dcb62800d2a17d3014118a9e3ed72071e0c06d264d3e0b3320e4455e5cdc75a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:13:35 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 18 Nov 2026 21:13:37 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Wed, 18 Nov 2026 21:13:37 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 18 Nov 2026 21:13:37 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Wed, 18 Nov 2026 21:13:40 GMT
ENV INFLUXDB_VERSION=2.10.1
# Wed, 18 Nov 2026 21:13:40 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 18 Nov 2026 21:13:40 GMT
ENV INFLUX_CLI_VERSION=2.9.1
# Wed, 18 Nov 2026 21:13:41 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 18 Nov 2026 21:13:41 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 18 Nov 2026 21:13:41 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 18 Nov 2026 21:13:41 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 18 Nov 2026 21:13:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:13:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:13:41 GMT
CMD ["influxd"]
# Wed, 18 Nov 2026 21:13:41 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 21:13:41 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 18 Nov 2026 21:13:41 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 18 Nov 2026 21:13:41 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 18 Nov 2026 21:13:41 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ecf8e7b20bf0ba6e2705fb74a6dae86a78b5195cd1ec280521126be16a03d8`  
		Last Modified: Wed, 18 Nov 2026 21:13:51 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669f48668c6f762a92de06317c2e6b727c9094c74975aff7833e2cce141ab136`  
		Last Modified: Wed, 18 Nov 2026 21:13:51 GMT  
		Size: 10.2 MB (10213403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f8748f6bd3810d172a3be1a3b9d3704f40ab61d44c605856330c5cddbce850f`  
		Last Modified: Wed, 18 Nov 2026 21:13:51 GMT  
		Size: 3.5 MB (3459171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cece1c563ae73fdb90bbcc955ede93c497dd67f8bd846a98d9ad528ac01be0e`  
		Last Modified: Wed, 18 Nov 2026 21:13:51 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ebe90c0193ae17dac304284b3bf5d5189dc9b6a2a74bd65dbcb460c1bb76b5`  
		Last Modified: Wed, 18 Nov 2026 21:13:54 GMT  
		Size: 54.6 MB (54555374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e3c159eaa4b270232635c26139c403e6a8aa4da31a62a43139dcaf70cb9c7a4`  
		Last Modified: Wed, 18 Nov 2026 21:13:53 GMT  
		Size: 12.4 MB (12380882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d72d1a2ccf534edaa1404d6283e35a7a3a625a9e558a2e5ae3ef9cd319209c5`  
		Last Modified: Wed, 18 Nov 2026 21:13:53 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd55a9907f3303a73dde848e24d0a9762b82f797c9df305bd659e6d4aadd3e31`  
		Last Modified: Wed, 18 Nov 2026 21:13:53 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3306462cc19d1c3087681d956d2a748f9ad780c2367571ac33a994bf097bc24`  
		Last Modified: Wed, 18 Nov 2026 21:13:54 GMT  
		Size: 6.8 KB (6776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.10-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:47af017028e90c2ee629381b53ecc8aaf444d94a74a0ffd0ea9c02801ee6f9e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **966.3 KB (966296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7f4cbceddde4faefcedabf0f6f4a3b3b4f67e579adb3c5576597eeb8e109b27`

```dockerfile
```

-	Layers:
	-	`sha256:f4f27c40d746b7835527aca0a6ddb792d815721aeb680ec3ce5489885c4c1b53`  
		Last Modified: Wed, 18 Nov 2026 21:13:51 GMT  
		Size: 935.5 KB (935483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06f7674bb69b1ff96fb8ba74d7a634b7028380f7ceef7c04890083709358476a`  
		Last Modified: Wed, 18 Nov 2026 21:13:51 GMT  
		Size: 30.8 KB (30813 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:2.10.1`

```console
$ docker pull influxdb@sha256:94e98bf5a07587c91bac4f6059aa2ddc172cd246bbd296852a30654192a38a03
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.10.1` - linux; amd64

```console
$ docker pull influxdb@sha256:b6bc9e4fbf97118cc513c35d50532e4a72da99c30e0ab3a19fd590f884d8439d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112648323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f6ad6fc47b59f3ec69b4204c9ab05db77b123c23333450deda3cfa15cc462d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:40:17 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:40:17 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 24 Nov 2026 04:40:17 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 24 Nov 2026 04:40:22 GMT
ENV INFLUXDB_VERSION=2.10.1
# Tue, 24 Nov 2026 04:40:22 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 24 Nov 2026 04:40:22 GMT
ENV INFLUX_CLI_VERSION=2.9.1
# Tue, 24 Nov 2026 04:40:23 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 24 Nov 2026 04:40:23 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 24 Nov 2026 04:40:23 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 24 Nov 2026 04:40:23 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 24 Nov 2026 04:40:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 04:40:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 04:40:23 GMT
CMD ["influxd"]
# Tue, 24 Nov 2026 04:40:23 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 04:40:23 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 24 Nov 2026 04:40:23 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 24 Nov 2026 04:40:23 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 24 Nov 2026 04:40:23 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3e0cb9e03d7002d3e17e48eaaa09673bc83b331e358c960ae4df99b47b7a9d0`  
		Last Modified: Tue, 24 Nov 2026 04:40:35 GMT  
		Size: 9.6 MB (9624805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36a625f133e62bb88c891bed72c1d5f7fc3d602dc3072e06596294979b22d9b0`  
		Last Modified: Tue, 24 Nov 2026 04:40:35 GMT  
		Size: 3.8 MB (3822780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15cda2e33c904c3da57f73d2a3b3de13bfc83a0d2b668d322d7c114bfc9462f`  
		Last Modified: Tue, 24 Nov 2026 04:40:35 GMT  
		Size: 3.2 KB (3227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:434c5a7852e3af3a1253372a404dcb626e0b392ad70581c83628db3881c232f6`  
		Last Modified: Tue, 24 Nov 2026 04:40:37 GMT  
		Size: 57.5 MB (57465454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4367b12ae05bf5f914e2bfdbe3080b940ba1c271d766b57ff87376cb7db67d6e`  
		Last Modified: Tue, 24 Nov 2026 04:40:36 GMT  
		Size: 13.5 MB (13476865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a56a51e4fbefca375bec2c4a9b59753744433600a2029b56f63faba0563273`  
		Last Modified: Tue, 24 Nov 2026 04:40:37 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ae9328360991f0ed5c247df5b625859af0761d6a4ceec91be2b5444d454835`  
		Last Modified: Tue, 24 Nov 2026 04:40:37 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61888f1cec981a995e95e3c26625d97f575cea514171c7ff1e6f8f954167069d`  
		Last Modified: Tue, 24 Nov 2026 04:40:38 GMT  
		Size: 6.8 KB (6790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.10.1` - unknown; unknown

```console
$ docker pull influxdb@sha256:ad834849214d462a993ad021f212d38dd5b5c40b6551e59091dbd2323a7908b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2996220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e62c43416a0b3f095b1f569a225301acf494132face1c4dbbddf8672b12dbfb`

```dockerfile
```

-	Layers:
	-	`sha256:065c8f315bc479938a029308e01395b756876ffa2965a745323c9d2f05f25be8`  
		Last Modified: Tue, 24 Nov 2026 04:40:35 GMT  
		Size: 3.0 MB (2967596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43a78a3d500d534e76f6e92f0be0d4d6f7d7361e99e3caaefee0d8aa5d222467`  
		Last Modified: Tue, 24 Nov 2026 04:40:35 GMT  
		Size: 28.6 KB (28624 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.10.1` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:509e7d55856a7ac2f3eccfca308c76b3cc132ab4c598d652b60308cac183e427
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.0 MB (107999272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:667ccf00bfe85f8df42ac1178e30a6225374017a02923b589c449db4d974fbc5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:44:48 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:44:49 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 24 Nov 2026 04:44:49 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 24 Nov 2026 04:44:53 GMT
ENV INFLUXDB_VERSION=2.10.1
# Tue, 24 Nov 2026 04:44:53 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 24 Nov 2026 04:44:53 GMT
ENV INFLUX_CLI_VERSION=2.9.1
# Tue, 24 Nov 2026 04:44:55 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 24 Nov 2026 04:44:55 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 24 Nov 2026 04:44:55 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 24 Nov 2026 04:44:55 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 24 Nov 2026 04:44:55 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 04:44:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 04:44:55 GMT
CMD ["influxd"]
# Tue, 24 Nov 2026 04:44:55 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 04:44:55 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 24 Nov 2026 04:44:55 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 24 Nov 2026 04:44:55 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 24 Nov 2026 04:44:55 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2137c848894bafbaf8ed9229dbf5892a951811f74e26afe177f384c5a737d800`  
		Last Modified: Tue, 24 Nov 2026 04:45:06 GMT  
		Size: 9.4 MB (9449007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb9f7972072e4b428520d64ba58b68bdbd88908966556be2660059e61a31f300`  
		Last Modified: Tue, 24 Nov 2026 04:45:06 GMT  
		Size: 3.5 MB (3459169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7fe00b07ae819fdc0806ab0d009b95c16a016106d9bba2e2822dcdbea26a7fd`  
		Last Modified: Tue, 24 Nov 2026 04:45:06 GMT  
		Size: 3.2 KB (3228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e184240c4345239bedd5ee58841d6ad9491335136a1da12d1d34da7112b39107`  
		Last Modified: Tue, 24 Nov 2026 04:45:08 GMT  
		Size: 54.6 MB (54555430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c1adbf79a9d4e0e4cffefd9759fd9bb1429520f3f01cd4f9b5acabd04b4a23`  
		Last Modified: Tue, 24 Nov 2026 04:45:07 GMT  
		Size: 12.4 MB (12380902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d975a07478cbef2a66762a5f36db8c2b15822674b2f4ff38d24355340dc0d9b`  
		Last Modified: Tue, 24 Nov 2026 04:45:07 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e859f94461d5e6fffadafebbeb08909a8ab3c7985eab774314dfceb086c2a64d`  
		Last Modified: Tue, 24 Nov 2026 04:45:08 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a50f200dce0f49b37fa65605623fa4e56883f31f168fac0c4116bdeebfe1d04`  
		Last Modified: Tue, 24 Nov 2026 04:45:08 GMT  
		Size: 6.8 KB (6790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.10.1` - unknown; unknown

```console
$ docker pull influxdb@sha256:846a6f4fc182dabc2893443677af25d5c113d20e92fd652e44c3c068b8e09236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2995877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4658bc0f0adaac3ed96a5f99a2298902ed9c20101d1662a3548d8d03cadd9f`

```dockerfile
```

-	Layers:
	-	`sha256:f028d98e1ff7cf1810312b2e922b5b16a30779ff2ab8f66b88a7d965b8eb13a4`  
		Last Modified: Tue, 24 Nov 2026 04:45:06 GMT  
		Size: 3.0 MB (2967074 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbbdd1cacb614311708e7adf84df0583616f111f90f8d53a57757fe3616eee35`  
		Last Modified: Tue, 24 Nov 2026 04:45:06 GMT  
		Size: 28.8 KB (28803 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:2.10.1-alpine`

```console
$ docker pull influxdb@sha256:6df3d6c5b8530ed149ecdd66086d251f40295330aa0620ae0bfdbbf3ddab4fdc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.10.1-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:5fcd642b12df57820b7788e6e7c799bebd2dbbefa06cd13f7abbe85fb3a29fff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88884223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50167e01b0c1a420b8288aae1be4cda25973e02d7f79dce3b140b584289844f1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:13:31 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 18 Nov 2026 21:13:32 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Wed, 18 Nov 2026 21:13:32 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 18 Nov 2026 21:13:32 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Wed, 18 Nov 2026 21:13:35 GMT
ENV INFLUXDB_VERSION=2.10.1
# Wed, 18 Nov 2026 21:13:35 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 18 Nov 2026 21:13:35 GMT
ENV INFLUX_CLI_VERSION=2.9.1
# Wed, 18 Nov 2026 21:13:36 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 18 Nov 2026 21:13:36 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 18 Nov 2026 21:13:36 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 18 Nov 2026 21:13:36 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 18 Nov 2026 21:13:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:13:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:13:36 GMT
CMD ["influxd"]
# Wed, 18 Nov 2026 21:13:36 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 21:13:36 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 18 Nov 2026 21:13:36 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 18 Nov 2026 21:13:36 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 18 Nov 2026 21:13:36 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad37ab7569f2e86270020cade068b69c4aaee226d2fe92bfde23a47621bb715a`  
		Last Modified: Wed, 18 Nov 2026 21:13:46 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b770c0b0c65ffe276ee95d4edcfb19408329f7b14b824e2d46048483aff0e8f`  
		Last Modified: Wed, 18 Nov 2026 21:13:46 GMT  
		Size: 10.3 MB (10258131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b1d1d613c309c0fc9562b448e6f64392322b89663a44da664f8b61570e54b0`  
		Last Modified: Wed, 18 Nov 2026 21:13:46 GMT  
		Size: 3.8 MB (3822793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e2f273dbbad975e537361def76d37661355cbe209408ec940e9d07c0fbda89`  
		Last Modified: Wed, 18 Nov 2026 21:13:46 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe9239690517826bd3abae61d2a4f65f77425f5f3ca3a39332bd3c04e1f90de`  
		Last Modified: Wed, 18 Nov 2026 21:13:48 GMT  
		Size: 57.5 MB (57465409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cdad5ce3a64e3b16bf6e86de457118e6ac2af31925fd54edd19fb862a4fbad7`  
		Last Modified: Wed, 18 Nov 2026 21:13:48 GMT  
		Size: 13.5 MB (13476856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d55d2b162bbd384c35998f9e1e49c0a0734775e8e18bdefb172f17bd32096d3c`  
		Last Modified: Wed, 18 Nov 2026 21:13:47 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49b6cd1e2526594ab7c98e23f16bf3a62da6d7600a34d8b4f959ec0cd241fbc2`  
		Last Modified: Wed, 18 Nov 2026 21:13:48 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ea19967de3f27aff1a7a1508f8d166bc5d37383d707a42de763a88688cffff`  
		Last Modified: Wed, 18 Nov 2026 21:13:49 GMT  
		Size: 6.8 KB (6776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.10.1-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:955a618b3ddf6699b61b049344696ac9a2e249102b22ff48e3b9a100c759e941
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **967.5 KB (967503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da0d5e207d5c9ab070ad76acc95c20daf0cea70f8a457f0a4fc682fccbc95c8c`

```dockerfile
```

-	Layers:
	-	`sha256:74cda73a700b6e33d95aa9380795d8c493b36f41b8dfa31ba154196df75b10ec`  
		Last Modified: Wed, 18 Nov 2026 21:13:46 GMT  
		Size: 936.9 KB (936884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a866fef0e048584522cc85b6beb84d3136d32e9946a8a9c142189f3a684cee8`  
		Last Modified: Wed, 18 Nov 2026 21:13:46 GMT  
		Size: 30.6 KB (30619 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.10.1-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:9646e77d2964cb7b9daf122e40646e60b6d02b08496211cc4310a34e2bb97f6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84807500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dcb62800d2a17d3014118a9e3ed72071e0c06d264d3e0b3320e4455e5cdc75a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:13:35 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 18 Nov 2026 21:13:37 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Wed, 18 Nov 2026 21:13:37 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 18 Nov 2026 21:13:37 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Wed, 18 Nov 2026 21:13:40 GMT
ENV INFLUXDB_VERSION=2.10.1
# Wed, 18 Nov 2026 21:13:40 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 18 Nov 2026 21:13:40 GMT
ENV INFLUX_CLI_VERSION=2.9.1
# Wed, 18 Nov 2026 21:13:41 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 18 Nov 2026 21:13:41 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 18 Nov 2026 21:13:41 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 18 Nov 2026 21:13:41 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 18 Nov 2026 21:13:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:13:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:13:41 GMT
CMD ["influxd"]
# Wed, 18 Nov 2026 21:13:41 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 21:13:41 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 18 Nov 2026 21:13:41 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 18 Nov 2026 21:13:41 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 18 Nov 2026 21:13:41 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ecf8e7b20bf0ba6e2705fb74a6dae86a78b5195cd1ec280521126be16a03d8`  
		Last Modified: Wed, 18 Nov 2026 21:13:51 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669f48668c6f762a92de06317c2e6b727c9094c74975aff7833e2cce141ab136`  
		Last Modified: Wed, 18 Nov 2026 21:13:51 GMT  
		Size: 10.2 MB (10213403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f8748f6bd3810d172a3be1a3b9d3704f40ab61d44c605856330c5cddbce850f`  
		Last Modified: Wed, 18 Nov 2026 21:13:51 GMT  
		Size: 3.5 MB (3459171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cece1c563ae73fdb90bbcc955ede93c497dd67f8bd846a98d9ad528ac01be0e`  
		Last Modified: Wed, 18 Nov 2026 21:13:51 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ebe90c0193ae17dac304284b3bf5d5189dc9b6a2a74bd65dbcb460c1bb76b5`  
		Last Modified: Wed, 18 Nov 2026 21:13:54 GMT  
		Size: 54.6 MB (54555374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e3c159eaa4b270232635c26139c403e6a8aa4da31a62a43139dcaf70cb9c7a4`  
		Last Modified: Wed, 18 Nov 2026 21:13:53 GMT  
		Size: 12.4 MB (12380882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d72d1a2ccf534edaa1404d6283e35a7a3a625a9e558a2e5ae3ef9cd319209c5`  
		Last Modified: Wed, 18 Nov 2026 21:13:53 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd55a9907f3303a73dde848e24d0a9762b82f797c9df305bd659e6d4aadd3e31`  
		Last Modified: Wed, 18 Nov 2026 21:13:53 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3306462cc19d1c3087681d956d2a748f9ad780c2367571ac33a994bf097bc24`  
		Last Modified: Wed, 18 Nov 2026 21:13:54 GMT  
		Size: 6.8 KB (6776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.10.1-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:47af017028e90c2ee629381b53ecc8aaf444d94a74a0ffd0ea9c02801ee6f9e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **966.3 KB (966296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7f4cbceddde4faefcedabf0f6f4a3b3b4f67e579adb3c5576597eeb8e109b27`

```dockerfile
```

-	Layers:
	-	`sha256:f4f27c40d746b7835527aca0a6ddb792d815721aeb680ec3ce5489885c4c1b53`  
		Last Modified: Wed, 18 Nov 2026 21:13:51 GMT  
		Size: 935.5 KB (935483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06f7674bb69b1ff96fb8ba74d7a634b7028380f7ceef7c04890083709358476a`  
		Last Modified: Wed, 18 Nov 2026 21:13:51 GMT  
		Size: 30.8 KB (30813 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:2.9`

```console
$ docker pull influxdb@sha256:6682b6e798b7a5ca8688af3bba576f136f21d022a0796c59a723fc98879f14fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.9` - linux; amd64

```console
$ docker pull influxdb@sha256:0d6550f0f7630daec12870f00568d27e6a08e1f27905383667ed67751a685995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110638424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbd2f7d80a9cef6787753f439a0ceb54dc0c2f8c94ccdecad44ae00e272d14fb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:40:04 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:40:04 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 24 Nov 2026 04:40:04 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 24 Nov 2026 04:40:10 GMT
ENV INFLUXDB_VERSION=2.9.1
# Tue, 24 Nov 2026 04:40:10 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 24 Nov 2026 04:40:10 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Tue, 24 Nov 2026 04:40:11 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 24 Nov 2026 04:40:11 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 24 Nov 2026 04:40:11 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 24 Nov 2026 04:40:11 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 24 Nov 2026 04:40:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 04:40:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 04:40:12 GMT
CMD ["influxd"]
# Tue, 24 Nov 2026 04:40:12 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 04:40:12 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 24 Nov 2026 04:40:12 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 24 Nov 2026 04:40:12 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 24 Nov 2026 04:40:12 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da461dbf7c59fee0ada131e3baa1214f0b4ffc85a089cfbe5d7ee75536a7db0e`  
		Last Modified: Tue, 24 Nov 2026 04:40:24 GMT  
		Size: 9.6 MB (9624791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:071b59773b8f0ce9ad9dc7adb8582d8e6f51de22dce519882ca419e9bb994c95`  
		Last Modified: Tue, 24 Nov 2026 04:40:23 GMT  
		Size: 3.8 MB (3822780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f108fddef55bd3329a0f1b5be71371921ab44e00771882f544fc987a4f09df8c`  
		Last Modified: Tue, 24 Nov 2026 04:40:23 GMT  
		Size: 3.2 KB (3229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac34640c049b65292b497fb127776e39e4436ecf6f38be863d603673eda6f9e1`  
		Last Modified: Tue, 24 Nov 2026 04:40:25 GMT  
		Size: 56.5 MB (56510615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:601317b3ab2d6ff123028679c6f488d2ec44595fa1293d0dde44761c0c6e4757`  
		Last Modified: Tue, 24 Nov 2026 04:40:25 GMT  
		Size: 12.4 MB (12421818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c70ddeef76e7e9325327ead7c4a9ea8aea213ca2373a60f007b3e4692b93e757`  
		Last Modified: Tue, 24 Nov 2026 04:40:25 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24587b692b99c0859a305970d01e7ae78c45020239ec40a17308580cf967ded8`  
		Last Modified: Tue, 24 Nov 2026 04:40:25 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3646512d98088a461a602643b3aa53eb363f1a2a25c9dc69659745e92a67a7ac`  
		Last Modified: Tue, 24 Nov 2026 04:40:26 GMT  
		Size: 6.8 KB (6790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9` - unknown; unknown

```console
$ docker pull influxdb@sha256:917c7f6cd55e0417a1c847c7ff82c5261c7901e2513efa4e742219e7cdf28363
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2990963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95c115929bdb48ac7f4962ace38063009e9400d77d83386a619812d205bd534e`

```dockerfile
```

-	Layers:
	-	`sha256:bbcb9e580a50e02e01d69fda432931cf3f38098f0d87e67d0d4c4c1dff5b3d21`  
		Last Modified: Tue, 24 Nov 2026 04:40:23 GMT  
		Size: 3.0 MB (2962943 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a01c94601d01c519f1f4df4557cb365b4a010df11f8f2f024eb72c677e28238`  
		Last Modified: Tue, 24 Nov 2026 04:40:23 GMT  
		Size: 28.0 KB (28020 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.9` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:8173dda938b71e8bad1906d60e4621bf1615ea92b7b2aaabe62096e2b6bcc581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106180033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc08290e6cdcde4ae83cc0e11c4bf87c272fb8af53bfc9091c85c1f25dce84e6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:44:42 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:44:42 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 24 Nov 2026 04:44:43 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 24 Nov 2026 04:44:46 GMT
ENV INFLUXDB_VERSION=2.9.1
# Tue, 24 Nov 2026 04:44:46 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 24 Nov 2026 04:44:46 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Tue, 24 Nov 2026 04:44:48 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 24 Nov 2026 04:44:48 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 24 Nov 2026 04:44:48 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 24 Nov 2026 04:44:48 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 24 Nov 2026 04:44:48 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 04:44:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 04:44:48 GMT
CMD ["influxd"]
# Tue, 24 Nov 2026 04:44:48 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 04:44:48 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 24 Nov 2026 04:44:48 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 24 Nov 2026 04:44:48 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 24 Nov 2026 04:44:48 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d6e2542edb86401762f995e093f83a98113c68f769cb6ef51a4782ffd6524b`  
		Last Modified: Tue, 24 Nov 2026 04:45:00 GMT  
		Size: 9.4 MB (9449009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0017a1fb79783beda9bf2531ca06e089619bbcdf5d7feb8d972a39083c30f9a4`  
		Last Modified: Tue, 24 Nov 2026 04:44:59 GMT  
		Size: 3.5 MB (3459165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83250df4d94cced7b52c0929ac704ad692375df9958a2b0c35bcbd014b170a80`  
		Last Modified: Tue, 24 Nov 2026 04:44:59 GMT  
		Size: 3.2 KB (3233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37968653e160d674691e2ec3ee6fcdde019ab58815439755db61b6939015797`  
		Last Modified: Tue, 24 Nov 2026 04:45:01 GMT  
		Size: 53.6 MB (53636797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df9845acb74aee221bd88ce244b6c10ef1ff5ad3458ee700e7fc66781ef742e`  
		Last Modified: Tue, 24 Nov 2026 04:45:01 GMT  
		Size: 11.5 MB (11480293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e7a1b008c43e5313571113d93d4d94ed771a146822bebf223ad1a1c62657b63`  
		Last Modified: Tue, 24 Nov 2026 04:45:01 GMT  
		Size: 207.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba378b34275c6da5606e59aa80e77d7389c90d57ade9e37a7b2474ce72b63245`  
		Last Modified: Tue, 24 Nov 2026 04:45:01 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb741d8db16717fb842d7aafec186557b6dc55a1d8debf437c33308990d99af2`  
		Last Modified: Tue, 24 Nov 2026 04:45:02 GMT  
		Size: 6.8 KB (6791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9` - unknown; unknown

```console
$ docker pull influxdb@sha256:b776b6422cb7a22d52eb84577d952d8c0078ee404b99972a7463fa8cfcd9901f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2990572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7561c207111f090ea67a5369aee99a0922149884ec1b863048bda8cad54eab97`

```dockerfile
```

-	Layers:
	-	`sha256:9b9b7e5315c14af42ae044cf3202571f3690ff9e9e4439ae0eb05881f8c4560f`  
		Last Modified: Tue, 24 Nov 2026 04:44:59 GMT  
		Size: 3.0 MB (2962397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0fb2e94b19a255e3956d120a4995fb6ce6e5d52f6d56e92e4ec9a0751c4f935`  
		Last Modified: Tue, 24 Nov 2026 04:44:59 GMT  
		Size: 28.2 KB (28175 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:2.9-alpine`

```console
$ docker pull influxdb@sha256:cc8083573dc3969c191d1bfb768954eaf7a4c615af12e661034fd4f63c7b5570
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.9-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:18a6c04b8ae425493c896ea26e953a6a5e00519469c5885358d91f63f04a3ce5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86874393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66bb69761dff3376a60a8a4164d2888ea9b7d8f0fd790fac0e2d3945d9fd457d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:24:30 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:24:32 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:24:32 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Thu, 05 Nov 2026 19:24:32 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Thu, 05 Nov 2026 19:24:35 GMT
ENV INFLUXDB_VERSION=2.9.1
# Thu, 05 Nov 2026 19:24:35 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Thu, 05 Nov 2026 19:24:35 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Thu, 05 Nov 2026 19:24:36 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Thu, 05 Nov 2026 19:24:37 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Thu, 05 Nov 2026 19:24:37 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Thu, 05 Nov 2026 19:24:37 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Thu, 05 Nov 2026 19:24:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:24:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:24:37 GMT
CMD ["influxd"]
# Thu, 05 Nov 2026 19:24:37 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 19:24:37 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Thu, 05 Nov 2026 19:24:37 GMT
ENV INFLUXD_INIT_PORT=9999
# Thu, 05 Nov 2026 19:24:37 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Thu, 05 Nov 2026 19:24:37 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3298cac18da9385ecbe842e68b32f3b82f124275b69e0ba053076eda4c66ed`  
		Last Modified: Thu, 05 Nov 2026 19:24:47 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e641742f8c25b5f7419f48eb8bf24630a691e99ecf8f1557030868512a611f9`  
		Last Modified: Thu, 05 Nov 2026 19:24:47 GMT  
		Size: 10.3 MB (10258121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24fc5effe77863ccafbe99f78d0cf3ab5669589d0aa252ab14eada0ddfdac27e`  
		Last Modified: Thu, 05 Nov 2026 19:24:47 GMT  
		Size: 3.8 MB (3822787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da79c4f73de58b843459de83b0da871863426d1c3d908e1b88bfa5171215a0a7`  
		Last Modified: Thu, 05 Nov 2026 19:24:47 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c69fff51b38cffb21824895cf1e71c7adfcc7f22c84fee995221b441cfd48bb`  
		Last Modified: Thu, 05 Nov 2026 19:24:50 GMT  
		Size: 56.5 MB (56510622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:701da68c7305c9689dec7be3dfcf765cde55bd7a7cc50f8cac6fbc6d21f0de2b`  
		Last Modified: Thu, 05 Nov 2026 19:24:49 GMT  
		Size: 12.4 MB (12421827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c47dfd15a2bbcdd114ef9d28be937890a03c84b31aa33d3f3ac916010cb5b639`  
		Last Modified: Thu, 05 Nov 2026 19:24:49 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf57d4a24fb1dcf3c685e1bf57e6a15286e5ad027ae82fad183529af1569bac`  
		Last Modified: Thu, 05 Nov 2026 19:24:49 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d20739b1e62360375053a95ccc80ea5d3c943e06e2abb4bd9d5ebf51d64b19fb`  
		Last Modified: Thu, 05 Nov 2026 19:24:50 GMT  
		Size: 6.8 KB (6777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:3d230ce75dd7fac49502ec76f92377aa4080c342c752e5d5e736852d51e6ff4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **963.4 KB (963434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9662382b9a4e7b86273efc7666ddf041f31207c26d873b09356e6f27bcf123dc`

```dockerfile
```

-	Layers:
	-	`sha256:0751a16120da177f745312b5bab75e90a7babda7cc32110f59bc11e6076b80d0`  
		Last Modified: Thu, 05 Nov 2026 19:24:47 GMT  
		Size: 932.8 KB (932825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17e28270beae9ef2332bdbd271443c2353d539010244e42a030cdeaff7cc78bd`  
		Last Modified: Thu, 05 Nov 2026 19:24:47 GMT  
		Size: 30.6 KB (30609 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.9-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:adf8dd0318cda2175257dda7df8a085ae4d90de61f8f7efb47fd1a8086dbd165
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (82988449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be6132e70abb4d70b77a4f3e41ddcdc76c9486d26e47e82633bc4993710f8534`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:18:48 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:18:49 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:18:50 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Thu, 05 Nov 2026 19:18:50 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Thu, 05 Nov 2026 19:18:53 GMT
ENV INFLUXDB_VERSION=2.9.1
# Thu, 05 Nov 2026 19:18:53 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Thu, 05 Nov 2026 19:18:53 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Thu, 05 Nov 2026 19:18:54 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Thu, 05 Nov 2026 19:18:54 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Thu, 05 Nov 2026 19:18:54 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Thu, 05 Nov 2026 19:18:54 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Thu, 05 Nov 2026 19:18:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:18:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:18:54 GMT
CMD ["influxd"]
# Thu, 05 Nov 2026 19:18:54 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 19:18:54 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Thu, 05 Nov 2026 19:18:54 GMT
ENV INFLUXD_INIT_PORT=9999
# Thu, 05 Nov 2026 19:18:54 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Thu, 05 Nov 2026 19:18:54 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4131515c613f51890d159ce7afc89bcdab0ff3c24425ee15b8ab721433c66ce8`  
		Last Modified: Thu, 05 Nov 2026 19:19:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e88883a4569b67dce6e580860d777277da902fbac005c9fa8755d07d040d31f2`  
		Last Modified: Thu, 05 Nov 2026 19:19:05 GMT  
		Size: 10.2 MB (10213517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10ec01abdb9e6b874c28b9c1a839ca592833f7fa23f3885c49f127a499b4102b`  
		Last Modified: Thu, 05 Nov 2026 19:19:04 GMT  
		Size: 3.5 MB (3459172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0516eeb9e9a8ca7aa7413c6084fd2847f3b3e59042674a81236418f0f3c28a47`  
		Last Modified: Thu, 05 Nov 2026 19:19:04 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8250470809a0674f8f32315cb290a9a78fa3d7fced58fc915de78c6afd65589`  
		Last Modified: Thu, 05 Nov 2026 19:19:07 GMT  
		Size: 53.6 MB (53636800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdb300e4d92bba56c2fd325c58eba9673bf755149470f732da4d114c45bfdca0`  
		Last Modified: Thu, 05 Nov 2026 19:19:06 GMT  
		Size: 11.5 MB (11480291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de5bb693d8299b099eb2f8d9f1615ca1f792918463e3f4b708f57307cf5a649`  
		Last Modified: Thu, 05 Nov 2026 19:19:06 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:414012db316a40fb0a80ca297360c7b43e28b88a270a4ff38dc1e431710a06ac`  
		Last Modified: Thu, 05 Nov 2026 19:19:06 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547789af4b759cdf5a383f72f4aea27f35834473cef782e0c2e85b19fc509c81`  
		Last Modified: Thu, 05 Nov 2026 19:19:07 GMT  
		Size: 6.8 KB (6777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:cfb1b89aed1fcaafe5c656d9363ee067e0a3f1f4fe78857763eff6677e8f3638
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **962.2 KB (962227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1670c1d669486e5cd54ab375d1ec119320dbab3b7119a5f7253716c7dd9466ac`

```dockerfile
```

-	Layers:
	-	`sha256:d3fc397a20aa64768003548b0a42327a80effa60b169c173d300d808db84c1a0`  
		Last Modified: Thu, 05 Nov 2026 19:19:04 GMT  
		Size: 931.4 KB (931424 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f298778c8aaf6519084dfe5cf144fb46af7a44daf1c373b97595d5de6b46a51f`  
		Last Modified: Thu, 05 Nov 2026 19:19:04 GMT  
		Size: 30.8 KB (30803 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:2.9.1`

```console
$ docker pull influxdb@sha256:6682b6e798b7a5ca8688af3bba576f136f21d022a0796c59a723fc98879f14fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.9.1` - linux; amd64

```console
$ docker pull influxdb@sha256:0d6550f0f7630daec12870f00568d27e6a08e1f27905383667ed67751a685995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110638424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbd2f7d80a9cef6787753f439a0ceb54dc0c2f8c94ccdecad44ae00e272d14fb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:40:04 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:40:04 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 24 Nov 2026 04:40:04 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 24 Nov 2026 04:40:10 GMT
ENV INFLUXDB_VERSION=2.9.1
# Tue, 24 Nov 2026 04:40:10 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 24 Nov 2026 04:40:10 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Tue, 24 Nov 2026 04:40:11 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 24 Nov 2026 04:40:11 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 24 Nov 2026 04:40:11 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 24 Nov 2026 04:40:11 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 24 Nov 2026 04:40:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 04:40:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 04:40:12 GMT
CMD ["influxd"]
# Tue, 24 Nov 2026 04:40:12 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 04:40:12 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 24 Nov 2026 04:40:12 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 24 Nov 2026 04:40:12 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 24 Nov 2026 04:40:12 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da461dbf7c59fee0ada131e3baa1214f0b4ffc85a089cfbe5d7ee75536a7db0e`  
		Last Modified: Tue, 24 Nov 2026 04:40:24 GMT  
		Size: 9.6 MB (9624791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:071b59773b8f0ce9ad9dc7adb8582d8e6f51de22dce519882ca419e9bb994c95`  
		Last Modified: Tue, 24 Nov 2026 04:40:23 GMT  
		Size: 3.8 MB (3822780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f108fddef55bd3329a0f1b5be71371921ab44e00771882f544fc987a4f09df8c`  
		Last Modified: Tue, 24 Nov 2026 04:40:23 GMT  
		Size: 3.2 KB (3229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac34640c049b65292b497fb127776e39e4436ecf6f38be863d603673eda6f9e1`  
		Last Modified: Tue, 24 Nov 2026 04:40:25 GMT  
		Size: 56.5 MB (56510615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:601317b3ab2d6ff123028679c6f488d2ec44595fa1293d0dde44761c0c6e4757`  
		Last Modified: Tue, 24 Nov 2026 04:40:25 GMT  
		Size: 12.4 MB (12421818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c70ddeef76e7e9325327ead7c4a9ea8aea213ca2373a60f007b3e4692b93e757`  
		Last Modified: Tue, 24 Nov 2026 04:40:25 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24587b692b99c0859a305970d01e7ae78c45020239ec40a17308580cf967ded8`  
		Last Modified: Tue, 24 Nov 2026 04:40:25 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3646512d98088a461a602643b3aa53eb363f1a2a25c9dc69659745e92a67a7ac`  
		Last Modified: Tue, 24 Nov 2026 04:40:26 GMT  
		Size: 6.8 KB (6790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9.1` - unknown; unknown

```console
$ docker pull influxdb@sha256:917c7f6cd55e0417a1c847c7ff82c5261c7901e2513efa4e742219e7cdf28363
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2990963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95c115929bdb48ac7f4962ace38063009e9400d77d83386a619812d205bd534e`

```dockerfile
```

-	Layers:
	-	`sha256:bbcb9e580a50e02e01d69fda432931cf3f38098f0d87e67d0d4c4c1dff5b3d21`  
		Last Modified: Tue, 24 Nov 2026 04:40:23 GMT  
		Size: 3.0 MB (2962943 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a01c94601d01c519f1f4df4557cb365b4a010df11f8f2f024eb72c677e28238`  
		Last Modified: Tue, 24 Nov 2026 04:40:23 GMT  
		Size: 28.0 KB (28020 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.9.1` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:8173dda938b71e8bad1906d60e4621bf1615ea92b7b2aaabe62096e2b6bcc581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106180033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc08290e6cdcde4ae83cc0e11c4bf87c272fb8af53bfc9091c85c1f25dce84e6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:44:42 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:44:42 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 24 Nov 2026 04:44:43 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 24 Nov 2026 04:44:46 GMT
ENV INFLUXDB_VERSION=2.9.1
# Tue, 24 Nov 2026 04:44:46 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 24 Nov 2026 04:44:46 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Tue, 24 Nov 2026 04:44:48 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 24 Nov 2026 04:44:48 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 24 Nov 2026 04:44:48 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 24 Nov 2026 04:44:48 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 24 Nov 2026 04:44:48 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 04:44:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 04:44:48 GMT
CMD ["influxd"]
# Tue, 24 Nov 2026 04:44:48 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 04:44:48 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 24 Nov 2026 04:44:48 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 24 Nov 2026 04:44:48 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 24 Nov 2026 04:44:48 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d6e2542edb86401762f995e093f83a98113c68f769cb6ef51a4782ffd6524b`  
		Last Modified: Tue, 24 Nov 2026 04:45:00 GMT  
		Size: 9.4 MB (9449009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0017a1fb79783beda9bf2531ca06e089619bbcdf5d7feb8d972a39083c30f9a4`  
		Last Modified: Tue, 24 Nov 2026 04:44:59 GMT  
		Size: 3.5 MB (3459165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83250df4d94cced7b52c0929ac704ad692375df9958a2b0c35bcbd014b170a80`  
		Last Modified: Tue, 24 Nov 2026 04:44:59 GMT  
		Size: 3.2 KB (3233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37968653e160d674691e2ec3ee6fcdde019ab58815439755db61b6939015797`  
		Last Modified: Tue, 24 Nov 2026 04:45:01 GMT  
		Size: 53.6 MB (53636797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df9845acb74aee221bd88ce244b6c10ef1ff5ad3458ee700e7fc66781ef742e`  
		Last Modified: Tue, 24 Nov 2026 04:45:01 GMT  
		Size: 11.5 MB (11480293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e7a1b008c43e5313571113d93d4d94ed771a146822bebf223ad1a1c62657b63`  
		Last Modified: Tue, 24 Nov 2026 04:45:01 GMT  
		Size: 207.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba378b34275c6da5606e59aa80e77d7389c90d57ade9e37a7b2474ce72b63245`  
		Last Modified: Tue, 24 Nov 2026 04:45:01 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb741d8db16717fb842d7aafec186557b6dc55a1d8debf437c33308990d99af2`  
		Last Modified: Tue, 24 Nov 2026 04:45:02 GMT  
		Size: 6.8 KB (6791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9.1` - unknown; unknown

```console
$ docker pull influxdb@sha256:b776b6422cb7a22d52eb84577d952d8c0078ee404b99972a7463fa8cfcd9901f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2990572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7561c207111f090ea67a5369aee99a0922149884ec1b863048bda8cad54eab97`

```dockerfile
```

-	Layers:
	-	`sha256:9b9b7e5315c14af42ae044cf3202571f3690ff9e9e4439ae0eb05881f8c4560f`  
		Last Modified: Tue, 24 Nov 2026 04:44:59 GMT  
		Size: 3.0 MB (2962397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0fb2e94b19a255e3956d120a4995fb6ce6e5d52f6d56e92e4ec9a0751c4f935`  
		Last Modified: Tue, 24 Nov 2026 04:44:59 GMT  
		Size: 28.2 KB (28175 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:2.9.1-alpine`

```console
$ docker pull influxdb@sha256:cc8083573dc3969c191d1bfb768954eaf7a4c615af12e661034fd4f63c7b5570
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.9.1-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:18a6c04b8ae425493c896ea26e953a6a5e00519469c5885358d91f63f04a3ce5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86874393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66bb69761dff3376a60a8a4164d2888ea9b7d8f0fd790fac0e2d3945d9fd457d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:24:30 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:24:32 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:24:32 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Thu, 05 Nov 2026 19:24:32 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Thu, 05 Nov 2026 19:24:35 GMT
ENV INFLUXDB_VERSION=2.9.1
# Thu, 05 Nov 2026 19:24:35 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Thu, 05 Nov 2026 19:24:35 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Thu, 05 Nov 2026 19:24:36 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Thu, 05 Nov 2026 19:24:37 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Thu, 05 Nov 2026 19:24:37 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Thu, 05 Nov 2026 19:24:37 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Thu, 05 Nov 2026 19:24:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:24:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:24:37 GMT
CMD ["influxd"]
# Thu, 05 Nov 2026 19:24:37 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 19:24:37 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Thu, 05 Nov 2026 19:24:37 GMT
ENV INFLUXD_INIT_PORT=9999
# Thu, 05 Nov 2026 19:24:37 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Thu, 05 Nov 2026 19:24:37 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3298cac18da9385ecbe842e68b32f3b82f124275b69e0ba053076eda4c66ed`  
		Last Modified: Thu, 05 Nov 2026 19:24:47 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e641742f8c25b5f7419f48eb8bf24630a691e99ecf8f1557030868512a611f9`  
		Last Modified: Thu, 05 Nov 2026 19:24:47 GMT  
		Size: 10.3 MB (10258121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24fc5effe77863ccafbe99f78d0cf3ab5669589d0aa252ab14eada0ddfdac27e`  
		Last Modified: Thu, 05 Nov 2026 19:24:47 GMT  
		Size: 3.8 MB (3822787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da79c4f73de58b843459de83b0da871863426d1c3d908e1b88bfa5171215a0a7`  
		Last Modified: Thu, 05 Nov 2026 19:24:47 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c69fff51b38cffb21824895cf1e71c7adfcc7f22c84fee995221b441cfd48bb`  
		Last Modified: Thu, 05 Nov 2026 19:24:50 GMT  
		Size: 56.5 MB (56510622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:701da68c7305c9689dec7be3dfcf765cde55bd7a7cc50f8cac6fbc6d21f0de2b`  
		Last Modified: Thu, 05 Nov 2026 19:24:49 GMT  
		Size: 12.4 MB (12421827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c47dfd15a2bbcdd114ef9d28be937890a03c84b31aa33d3f3ac916010cb5b639`  
		Last Modified: Thu, 05 Nov 2026 19:24:49 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf57d4a24fb1dcf3c685e1bf57e6a15286e5ad027ae82fad183529af1569bac`  
		Last Modified: Thu, 05 Nov 2026 19:24:49 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d20739b1e62360375053a95ccc80ea5d3c943e06e2abb4bd9d5ebf51d64b19fb`  
		Last Modified: Thu, 05 Nov 2026 19:24:50 GMT  
		Size: 6.8 KB (6777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9.1-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:3d230ce75dd7fac49502ec76f92377aa4080c342c752e5d5e736852d51e6ff4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **963.4 KB (963434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9662382b9a4e7b86273efc7666ddf041f31207c26d873b09356e6f27bcf123dc`

```dockerfile
```

-	Layers:
	-	`sha256:0751a16120da177f745312b5bab75e90a7babda7cc32110f59bc11e6076b80d0`  
		Last Modified: Thu, 05 Nov 2026 19:24:47 GMT  
		Size: 932.8 KB (932825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17e28270beae9ef2332bdbd271443c2353d539010244e42a030cdeaff7cc78bd`  
		Last Modified: Thu, 05 Nov 2026 19:24:47 GMT  
		Size: 30.6 KB (30609 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.9.1-alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:adf8dd0318cda2175257dda7df8a085ae4d90de61f8f7efb47fd1a8086dbd165
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (82988449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be6132e70abb4d70b77a4f3e41ddcdc76c9486d26e47e82633bc4993710f8534`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:18:48 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Thu, 05 Nov 2026 19:18:49 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Thu, 05 Nov 2026 19:18:50 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Thu, 05 Nov 2026 19:18:50 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Thu, 05 Nov 2026 19:18:53 GMT
ENV INFLUXDB_VERSION=2.9.1
# Thu, 05 Nov 2026 19:18:53 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Thu, 05 Nov 2026 19:18:53 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Thu, 05 Nov 2026 19:18:54 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Thu, 05 Nov 2026 19:18:54 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Thu, 05 Nov 2026 19:18:54 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Thu, 05 Nov 2026 19:18:54 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Thu, 05 Nov 2026 19:18:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:18:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:18:54 GMT
CMD ["influxd"]
# Thu, 05 Nov 2026 19:18:54 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 19:18:54 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Thu, 05 Nov 2026 19:18:54 GMT
ENV INFLUXD_INIT_PORT=9999
# Thu, 05 Nov 2026 19:18:54 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Thu, 05 Nov 2026 19:18:54 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4131515c613f51890d159ce7afc89bcdab0ff3c24425ee15b8ab721433c66ce8`  
		Last Modified: Thu, 05 Nov 2026 19:19:04 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e88883a4569b67dce6e580860d777277da902fbac005c9fa8755d07d040d31f2`  
		Last Modified: Thu, 05 Nov 2026 19:19:05 GMT  
		Size: 10.2 MB (10213517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10ec01abdb9e6b874c28b9c1a839ca592833f7fa23f3885c49f127a499b4102b`  
		Last Modified: Thu, 05 Nov 2026 19:19:04 GMT  
		Size: 3.5 MB (3459172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0516eeb9e9a8ca7aa7413c6084fd2847f3b3e59042674a81236418f0f3c28a47`  
		Last Modified: Thu, 05 Nov 2026 19:19:04 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8250470809a0674f8f32315cb290a9a78fa3d7fced58fc915de78c6afd65589`  
		Last Modified: Thu, 05 Nov 2026 19:19:07 GMT  
		Size: 53.6 MB (53636800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdb300e4d92bba56c2fd325c58eba9673bf755149470f732da4d114c45bfdca0`  
		Last Modified: Thu, 05 Nov 2026 19:19:06 GMT  
		Size: 11.5 MB (11480291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de5bb693d8299b099eb2f8d9f1615ca1f792918463e3f4b708f57307cf5a649`  
		Last Modified: Thu, 05 Nov 2026 19:19:06 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:414012db316a40fb0a80ca297360c7b43e28b88a270a4ff38dc1e431710a06ac`  
		Last Modified: Thu, 05 Nov 2026 19:19:06 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547789af4b759cdf5a383f72f4aea27f35834473cef782e0c2e85b19fc509c81`  
		Last Modified: Thu, 05 Nov 2026 19:19:07 GMT  
		Size: 6.8 KB (6777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9.1-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:cfb1b89aed1fcaafe5c656d9363ee067e0a3f1f4fe78857763eff6677e8f3638
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **962.2 KB (962227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1670c1d669486e5cd54ab375d1ec119320dbab3b7119a5f7253716c7dd9466ac`

```dockerfile
```

-	Layers:
	-	`sha256:d3fc397a20aa64768003548b0a42327a80effa60b169c173d300d808db84c1a0`  
		Last Modified: Thu, 05 Nov 2026 19:19:04 GMT  
		Size: 931.4 KB (931424 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f298778c8aaf6519084dfe5cf144fb46af7a44daf1c373b97595d5de6b46a51f`  
		Last Modified: Thu, 05 Nov 2026 19:19:04 GMT  
		Size: 30.8 KB (30803 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3-core`

```console
$ docker pull influxdb@sha256:9eb55d1873ea629e497179cc465d1d345a78f4bce5c5bc318d3d3ac0b8647022
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3-core` - linux; amd64

```console
$ docker pull influxdb@sha256:4a06571d0e8b6597a1a480c77b3ce225b1887f3ab787348674f5874d47af55db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.4 MB (156353502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:910382fd48df0cb15b2226aec108999a356a0c8123f6bfa68c5da2c53ab4122e`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:33:36 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 20:33:36 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 20:33:44 GMT
ENV INFLUXDB_VERSION=3.12.3
# Fri, 20 Nov 2026 20:33:44 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 20:33:44 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 20:33:44 GMT
USER influxdb3
# Fri, 20 Nov 2026 20:33:44 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 20:33:44 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 20:33:44 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 20:33:44 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 20:33:44 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 20:33:44 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 20:33:44 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 20:33:44 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 20:33:44 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd603c8f5764f26a65b99a96b75b6d515671b28bb5e46934cd0596e6d353d92c`  
		Last Modified: Fri, 20 Nov 2026 20:34:05 GMT  
		Size: 6.6 MB (6633859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b4aa86b107a5b74887d4e4202a69f3985b3090a1f2d38aa36af3ec74589290`  
		Last Modified: Fri, 20 Nov 2026 20:34:05 GMT  
		Size: 3.7 KB (3662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9537238e4c00c67fc88149e0d556295726d27e934c239c6918134504e80543d3`  
		Last Modified: Fri, 20 Nov 2026 20:34:08 GMT  
		Size: 119.9 MB (119922014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63d9397c525fa587c26dc96d34f410425ff0ccff547c15b981a00102cf0e551e`  
		Last Modified: Fri, 20 Nov 2026 20:34:05 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf90c6f5b2fcb0c6841a9eff1341449eee29b59e6860e21a618910568558c354`  
		Last Modified: Fri, 20 Nov 2026 20:34:06 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:92c1407d5589c983ee8f20415e68140cd8efa3c4d8a32bdffbedbbdafb111f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a08702b343ed7e9bac7c3e5115aaea2a4478225a685559b1ef5cd038c38c7b6`

```dockerfile
```

-	Layers:
	-	`sha256:dbdbc9a83e3a0560994e9914e32870ddb99a9cb86a42fb2a1bc01ea8dcef99c4`  
		Last Modified: Fri, 20 Nov 2026 20:34:05 GMT  
		Size: 2.3 MB (2308623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:505763aae839410c8eaf8ed90c1e599c5a5f12af6d06b1aa87d592ab7bcf494a`  
		Last Modified: Fri, 20 Nov 2026 20:34:05 GMT  
		Size: 17.6 KB (17641 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:805c7639932789a22f414a0bf9b3375fbfd724bfceb244e1d389c8aaa68faac5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (145961222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6d9fd783f5ce4833430613f1a590521c3ca7a98ad6c5c83be7cbab2233038a`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:33:47 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 20:33:47 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 20:33:57 GMT
ENV INFLUXDB_VERSION=3.12.3
# Fri, 20 Nov 2026 20:33:57 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 20:33:57 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 20:33:57 GMT
USER influxdb3
# Fri, 20 Nov 2026 20:33:57 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 20:33:57 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 20:33:57 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 20:33:57 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 20:33:57 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 20:33:57 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 20:33:57 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 20:33:57 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 20:33:57 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9ec63eb0508d4a26503d098aee264e43697dec1de0ef44baf6e057a5914f6c`  
		Last Modified: Fri, 20 Nov 2026 20:34:15 GMT  
		Size: 6.6 MB (6648128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8363f8f1ef4e5b9e67dd4db5841e0b0f50048bef24329d9fea1a035d7a46924c`  
		Last Modified: Fri, 20 Nov 2026 20:34:14 GMT  
		Size: 3.6 KB (3648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af1d610bde545815c1d73cd036953a259fd4c93c766e37264b2a2270c9d2d296`  
		Last Modified: Fri, 20 Nov 2026 20:34:17 GMT  
		Size: 110.3 MB (110343456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b91ec5231714d74b8fd2f19d4e94edd0c6652446ed1f7ba73d60272eed276d36`  
		Last Modified: Fri, 20 Nov 2026 20:34:14 GMT  
		Size: 523.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a6f8b829aa7db23dc37db34a5229ce75c4da39f63e6b43140454a02d9d8f8e`  
		Last Modified: Fri, 20 Nov 2026 20:34:15 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:ae14679f7899ddacf725f0e7d42c6d283444807264db97f6350628d80d81e084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f0dde442eb43f7aed6992f95b6834a8284adb9389f550cd35776a1b79c13ab9`

```dockerfile
```

-	Layers:
	-	`sha256:c002e147173f655f43631fe4bd73eac5f79d2dec09316154e86cd3686f2181b1`  
		Last Modified: Fri, 20 Nov 2026 20:34:14 GMT  
		Size: 2.3 MB (2309705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0581303a83b300c8ecece355e66313a454a47468032eaa3ab12147920e566024`  
		Last Modified: Fri, 20 Nov 2026 20:34:14 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3-enterprise`

```console
$ docker pull influxdb@sha256:4e25929e86dacdba26cf4654c9987a9b4379f4a9e740b0f2563edb3bac9e8fe1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:4a7c207a4820fe38aee9cc6166aa3f619542b5832014df789c4499862d25bd39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.7 MB (204670459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec3da1b1384f78776c518db85bce2b4b8bd018ae102ed88c6432430aa1167bb9`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:33:11 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 20:33:12 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 20:33:26 GMT
ENV INFLUXDB_VERSION=3.12.3
# Fri, 20 Nov 2026 20:33:26 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 20:33:26 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 20:33:26 GMT
USER influxdb3
# Fri, 20 Nov 2026 20:33:26 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 20:33:26 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 20:33:26 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 20:33:26 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 20:33:26 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 20:33:26 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 20:33:26 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 20:33:26 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 20:33:26 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38268f3b118b8063797226161b9150107b74ea1da8cc9a724eca7584a9fb8830`  
		Last Modified: Fri, 20 Nov 2026 20:33:52 GMT  
		Size: 6.6 MB (6633832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78c90c313dfd57f1b2dbcbc6b55f73e0e16e14403efea6247c2b7f5936a0412`  
		Last Modified: Fri, 20 Nov 2026 20:33:52 GMT  
		Size: 3.7 KB (3665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86af1ecf44f221dca5acfcb5cfb5476419b1ca60fca5bd55cdd5dda7eeccec84`  
		Last Modified: Fri, 20 Nov 2026 20:33:56 GMT  
		Size: 168.2 MB (168238993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec3e1ab91ff69f8f0da1fd1654a651f45bb12b3bb65f84acd05939a4aee4009`  
		Last Modified: Fri, 20 Nov 2026 20:33:52 GMT  
		Size: 523.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f224e1c9a2346fdba7846abfde8400fda3d702a352ccb296c30a3211a52be0ba`  
		Last Modified: Fri, 20 Nov 2026 20:33:53 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:955bdeab4a08355d4cad5c2adc1199714abb8629b522541663e30593a0aa59a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da2e01d2f2700b5e94aa239084b46a8087128b03b9cb801709c610cc5d82c114`

```dockerfile
```

-	Layers:
	-	`sha256:01e450a74cc4be37942b0bbaedfb01ad6791924d90153ca16b9f0992cf473089`  
		Last Modified: Fri, 20 Nov 2026 20:33:52 GMT  
		Size: 2.3 MB (2308671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87f6ca062962a87713f6bb2712e33fd2e6ea8d4e8ce9dfd9be5aff02244e7cd8`  
		Last Modified: Fri, 20 Nov 2026 20:33:52 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:fded477eb496e3b56b6fa963a64f1efbe4c4dbf616123b50a4f8c6f5a94fdb3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.0 MB (192040349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d124cf2ce9f5749a26b6cb93d57e3b404c8157b98fbda1edc63ad356be758d6a`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:33:44 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 20:33:44 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 20:33:58 GMT
ENV INFLUXDB_VERSION=3.12.3
# Fri, 20 Nov 2026 20:33:58 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 20:33:58 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 20:33:58 GMT
USER influxdb3
# Fri, 20 Nov 2026 20:33:58 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 20:33:58 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 20:33:58 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 20:33:58 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 20:33:58 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 20:33:58 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 20:33:58 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 20:33:58 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 20:33:58 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e0276b4c2c4d205c0df8cb6c3a8d14f754bdc4a35baddfa95b6951c18706c1d`  
		Last Modified: Fri, 20 Nov 2026 20:34:21 GMT  
		Size: 6.6 MB (6648187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91f8124202075cca06a23e55f5e93912d448d9bf85c4eff86bd45e47daa75fb`  
		Last Modified: Fri, 20 Nov 2026 20:34:20 GMT  
		Size: 3.6 KB (3647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcd609eaf7306f3fbd1959d33eaeed36bea8703559cd0bddabba20789c3e7049`  
		Last Modified: Fri, 20 Nov 2026 20:34:24 GMT  
		Size: 156.4 MB (156422528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93fc840426c67be898f7fb62b83cd6567e2c5673ef822f4939fca71fd268a999`  
		Last Modified: Fri, 20 Nov 2026 20:34:21 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c4ff5e12022b4bc88513e6bb0453e8c7b5392b1496885188791224362b0e88`  
		Last Modified: Fri, 20 Nov 2026 20:34:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:bf2c38cddf8b782d9de6e54b9f1b480ce12b57bccb79df45b175f78d9a1c1a2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:388fb45e39dca3c2bd626068b5c6e561cbcd0321b9f1d831ccc4b7e38b251e82`

```dockerfile
```

-	Layers:
	-	`sha256:28018f2c5ef836789536fda82da40c96033ea9cc96d34a69604000d5d9ac65cb`  
		Last Modified: Fri, 20 Nov 2026 20:34:21 GMT  
		Size: 2.3 MB (2309753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e234ceb7dddb36b35be6bf1a94dfa240cfb20bdeb1b68aac7617f5c119071d18`  
		Last Modified: Fri, 20 Nov 2026 20:34:20 GMT  
		Size: 18.0 KB (17970 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.11-core`

```console
$ docker pull influxdb@sha256:ee7b8b48e693deb64ad845b8756342b513d3fa5df10bdcfbe6841087bfded493
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.11-core` - linux; amd64

```console
$ docker pull influxdb@sha256:c701f0ab0a1bcd973bcee3c1d0fb6effd1b0609a14c4d0c98e232f52d4e0b28b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.4 MB (149373613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cf6d4e3d68f9a3247a5e19fe2df3a683eea36724e81a8db1826292a2b2e73e6`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:33:24 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 20:33:24 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 20:33:32 GMT
ENV INFLUXDB_VERSION=3.11.10
# Fri, 20 Nov 2026 20:33:32 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 20:33:32 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 20:33:32 GMT
USER influxdb3
# Fri, 20 Nov 2026 20:33:32 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 20:33:32 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 20:33:32 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 20:33:32 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 20:33:32 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 20:33:32 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 20:33:32 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 20:33:32 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 20:33:32 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d9e68366d1359fa1996293c7805ccb18a458de43bad90211104897b94d01637`  
		Last Modified: Fri, 20 Nov 2026 20:33:51 GMT  
		Size: 6.6 MB (6633875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ca4b06e7e72ac861c107fb8b53ff2b75a87134c44ab2b0dc5fe30c9c4af55ca`  
		Last Modified: Fri, 20 Nov 2026 20:33:51 GMT  
		Size: 3.7 KB (3661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e79937122b05ca7c7d73e5350eba71ddf9a490c547612540e03b4be7a24494`  
		Last Modified: Fri, 20 Nov 2026 20:33:54 GMT  
		Size: 112.9 MB (112942111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b3abb6856f62be6f6402bd8b347272dc9bf904c37b72d30d39660bf47128541`  
		Last Modified: Fri, 20 Nov 2026 20:33:51 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6723ed64ad3748402f246f144e0743cd8dfaa7564686181d9043317812d613c7`  
		Last Modified: Fri, 20 Nov 2026 20:33:52 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:744a690c677519860587266857b57b52d6aac7da784b03f8e3ca07bf6b900f85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2325073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:099dc22a46e4ce38cebf971fdc3abd8d616ec8765ad84b398ffa450b5c5b4d70`

```dockerfile
```

-	Layers:
	-	`sha256:3fe01c423cb4cf3500edfc74849bff1ce15d72bb0c9cdceed112bb6ae984590a`  
		Last Modified: Fri, 20 Nov 2026 20:33:51 GMT  
		Size: 2.3 MB (2308025 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64fc76b5b2618ad370eca1a43908229386d7d892f0d670776c3f770f0e056644`  
		Last Modified: Fri, 20 Nov 2026 20:33:51 GMT  
		Size: 17.0 KB (17048 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.11-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:c24412558fdfe9114e094344f6d71589bf5e32a15840734061862ccfec18baf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.5 MB (140452371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abcf6a4e169eef2c2c9caaf61ebb7932efd393d4b004d12ea5b0f9d0704e7f6d`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:33:44 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 20:33:45 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 20:33:53 GMT
ENV INFLUXDB_VERSION=3.11.10
# Fri, 20 Nov 2026 20:33:53 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 20:33:53 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 20:33:53 GMT
USER influxdb3
# Fri, 20 Nov 2026 20:33:53 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 20:33:53 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 20:33:53 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 20:33:53 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 20:33:53 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 20:33:53 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 20:33:53 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 20:33:53 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 20:33:53 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25534234766df3592e61861d256dd89f212863443712dd784c95812b8cccdb54`  
		Last Modified: Fri, 20 Nov 2026 20:34:10 GMT  
		Size: 6.6 MB (6648158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a3e0ce7af2ce04bac7466b0938595a17f137d4c2cf667e4e1c02a8ac860a672`  
		Last Modified: Fri, 20 Nov 2026 20:34:10 GMT  
		Size: 3.7 KB (3651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7495672c2275b1e769a173442801aaafecd42d19b2f7dd2ce854c8665a02668`  
		Last Modified: Fri, 20 Nov 2026 20:34:13 GMT  
		Size: 104.8 MB (104834574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c113ab5dcc31ff0fbefe383b80140f0952d6dc768f1d92bd9d4c0787c8973e0c`  
		Last Modified: Fri, 20 Nov 2026 20:34:10 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6ee85b99bb59eb0872e251ac5f2fcb1013046ce471c28e7ee57613fc215b34e`  
		Last Modified: Fri, 20 Nov 2026 20:34:11 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:c291004566d0779afc67192619b70da0fc498ab31b6584c73866812d9c358494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66327b42dd324becfb249d82c88e0a6bc6a137b17f673cb627462fb4d78dae52`

```dockerfile
```

-	Layers:
	-	`sha256:6ce53488289dfb1201da4af69d7e2add8a15d056695b882ffd057a69a499b5b4`  
		Last Modified: Fri, 20 Nov 2026 20:34:10 GMT  
		Size: 2.3 MB (2309083 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b508769b96c765957c44fbaad324b8666fa47df266e8afb03fa5f1f644c5d35a`  
		Last Modified: Fri, 20 Nov 2026 20:34:10 GMT  
		Size: 17.2 KB (17174 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.11-enterprise`

```console
$ docker pull influxdb@sha256:9bbd3f219b7a8f237a351833303904858d901f57a2deb4dee3ca60d5a0560ca6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.11-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:54d8cd417d2c31f5eeafc9cd933376e166e48922f6f797eea3d46c42e2d6e086
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.3 MB (184331954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7884751e43c8e85ca656af6f9621e486a5e316558072f4b59cad6bd6c58a9e95`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:33:33 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 20:33:33 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 20:33:40 GMT
ENV INFLUXDB_VERSION=3.11.10
# Fri, 20 Nov 2026 20:33:40 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 20:33:40 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 20:33:40 GMT
USER influxdb3
# Fri, 20 Nov 2026 20:33:40 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 20:33:40 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 20:33:40 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 20:33:40 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 20:33:40 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 20:33:40 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 20:33:40 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 20:33:40 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 20:33:40 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7651d46ec5d2814f42a3a9ce2924007525fb14fc0a633ddbb63c5d2976a7a0d`  
		Last Modified: Fri, 20 Nov 2026 20:34:00 GMT  
		Size: 6.6 MB (6633843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ed9b2fa8e9a337d73bc8c8b004fb3ad250c69647b689b50e642d4b1840a33c`  
		Last Modified: Fri, 20 Nov 2026 20:34:00 GMT  
		Size: 3.7 KB (3661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19a43e8c0b6d322786820da6bf265a74ff0af99b008603fb0912c9d999ad6f77`  
		Last Modified: Fri, 20 Nov 2026 20:34:03 GMT  
		Size: 147.9 MB (147900484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b7d7dd7f559619ac071ae912386756d464dfc905477e873bb26469939fd4206`  
		Last Modified: Fri, 20 Nov 2026 20:34:00 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cdde419e62f76ba34cf6e7ed41f6c89b7985146f4e68acb81df10e83af25073`  
		Last Modified: Fri, 20 Nov 2026 20:34:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:80598774db5559bde0d7fbd782dc899b13caf4c8b64580070d076dfb76443b68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2325254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50006bbdeff37762b41f3bae3f3eb50a3663de72cddf602f2b6bff37eb2db21e`

```dockerfile
```

-	Layers:
	-	`sha256:e4202140ed9b97eac36edd64b30188eb24d8f8c01daaecf332fdf68174603834`  
		Last Modified: Fri, 20 Nov 2026 20:34:00 GMT  
		Size: 2.3 MB (2308049 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de073a189f9881ffac03c0852448c316d07a1a7a960864a9de8391235864a6d8`  
		Last Modified: Fri, 20 Nov 2026 20:34:00 GMT  
		Size: 17.2 KB (17205 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.11-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:566339eea8a0088f66c38960035507101394188d9eea91e9dd711ec6e6dda4a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.7 MB (174707413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14e77e8574b436c84d560f25e9cfecccc45e341bc2f390cdddd76ce19e52a7fb`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:33:43 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 20:33:43 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 20:33:52 GMT
ENV INFLUXDB_VERSION=3.11.10
# Fri, 20 Nov 2026 20:33:52 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 20:33:52 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 20:33:52 GMT
USER influxdb3
# Fri, 20 Nov 2026 20:33:53 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 20:33:53 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 20:33:53 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 20:33:53 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 20:33:53 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 20:33:53 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 20:33:53 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 20:33:53 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 20:33:53 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39957b2e492dca80d0a48b41c6c19dd65a8d96256d0c829a8d27e2c230c8d6b4`  
		Last Modified: Fri, 20 Nov 2026 20:34:12 GMT  
		Size: 6.6 MB (6648105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75458829883dcedbe0a55e77e81a97e67b779e389c3e030f13d2e30ebbd5bce1`  
		Last Modified: Fri, 20 Nov 2026 20:34:12 GMT  
		Size: 3.6 KB (3644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbc18f5a9d5d639f9afb1b4bd89b17f061a2b70b071542a7db5fe85a242de93b`  
		Last Modified: Fri, 20 Nov 2026 20:34:15 GMT  
		Size: 139.1 MB (139089675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfd3f3a0a3229f51436e58e10a1d4153bc655128caad77cdbcf890845f50ca45`  
		Last Modified: Fri, 20 Nov 2026 20:34:12 GMT  
		Size: 523.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba4f03181514fde9146618beab2805cdfaf9cb1c23615224ab2d74eb750c415`  
		Last Modified: Fri, 20 Nov 2026 20:34:13 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:6b42262bf8921b50c81fae2cdad9b344b32c99ea602c2e5f0f7a29d3af08f940
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30c10c73995bc88e208017361e7684da9b917f8f29fd0642ebab43176b0f5774`

```dockerfile
```

-	Layers:
	-	`sha256:aac22a7d0307f55eaf625a4cdc2f4fe25f4a29603faf911d5e93d76474ba9c86`  
		Last Modified: Fri, 20 Nov 2026 20:34:12 GMT  
		Size: 2.3 MB (2309107 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a99401102c0493252de278b2559e1810466ded235fdb11ad1e51cd25c03a684f`  
		Last Modified: Fri, 20 Nov 2026 20:34:12 GMT  
		Size: 17.3 KB (17330 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.11.10-core`

```console
$ docker pull influxdb@sha256:ee7b8b48e693deb64ad845b8756342b513d3fa5df10bdcfbe6841087bfded493
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.11.10-core` - linux; amd64

```console
$ docker pull influxdb@sha256:c701f0ab0a1bcd973bcee3c1d0fb6effd1b0609a14c4d0c98e232f52d4e0b28b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.4 MB (149373613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cf6d4e3d68f9a3247a5e19fe2df3a683eea36724e81a8db1826292a2b2e73e6`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:33:24 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 20:33:24 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 20:33:32 GMT
ENV INFLUXDB_VERSION=3.11.10
# Fri, 20 Nov 2026 20:33:32 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 20:33:32 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 20:33:32 GMT
USER influxdb3
# Fri, 20 Nov 2026 20:33:32 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 20:33:32 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 20:33:32 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 20:33:32 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 20:33:32 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 20:33:32 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 20:33:32 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 20:33:32 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 20:33:32 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d9e68366d1359fa1996293c7805ccb18a458de43bad90211104897b94d01637`  
		Last Modified: Fri, 20 Nov 2026 20:33:51 GMT  
		Size: 6.6 MB (6633875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ca4b06e7e72ac861c107fb8b53ff2b75a87134c44ab2b0dc5fe30c9c4af55ca`  
		Last Modified: Fri, 20 Nov 2026 20:33:51 GMT  
		Size: 3.7 KB (3661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e79937122b05ca7c7d73e5350eba71ddf9a490c547612540e03b4be7a24494`  
		Last Modified: Fri, 20 Nov 2026 20:33:54 GMT  
		Size: 112.9 MB (112942111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b3abb6856f62be6f6402bd8b347272dc9bf904c37b72d30d39660bf47128541`  
		Last Modified: Fri, 20 Nov 2026 20:33:51 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6723ed64ad3748402f246f144e0743cd8dfaa7564686181d9043317812d613c7`  
		Last Modified: Fri, 20 Nov 2026 20:33:52 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11.10-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:744a690c677519860587266857b57b52d6aac7da784b03f8e3ca07bf6b900f85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2325073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:099dc22a46e4ce38cebf971fdc3abd8d616ec8765ad84b398ffa450b5c5b4d70`

```dockerfile
```

-	Layers:
	-	`sha256:3fe01c423cb4cf3500edfc74849bff1ce15d72bb0c9cdceed112bb6ae984590a`  
		Last Modified: Fri, 20 Nov 2026 20:33:51 GMT  
		Size: 2.3 MB (2308025 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64fc76b5b2618ad370eca1a43908229386d7d892f0d670776c3f770f0e056644`  
		Last Modified: Fri, 20 Nov 2026 20:33:51 GMT  
		Size: 17.0 KB (17048 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.11.10-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:c24412558fdfe9114e094344f6d71589bf5e32a15840734061862ccfec18baf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.5 MB (140452371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abcf6a4e169eef2c2c9caaf61ebb7932efd393d4b004d12ea5b0f9d0704e7f6d`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:33:44 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 20:33:45 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 20:33:53 GMT
ENV INFLUXDB_VERSION=3.11.10
# Fri, 20 Nov 2026 20:33:53 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 20:33:53 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 20:33:53 GMT
USER influxdb3
# Fri, 20 Nov 2026 20:33:53 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 20:33:53 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 20:33:53 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 20:33:53 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 20:33:53 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 20:33:53 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 20:33:53 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 20:33:53 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 20:33:53 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25534234766df3592e61861d256dd89f212863443712dd784c95812b8cccdb54`  
		Last Modified: Fri, 20 Nov 2026 20:34:10 GMT  
		Size: 6.6 MB (6648158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a3e0ce7af2ce04bac7466b0938595a17f137d4c2cf667e4e1c02a8ac860a672`  
		Last Modified: Fri, 20 Nov 2026 20:34:10 GMT  
		Size: 3.7 KB (3651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7495672c2275b1e769a173442801aaafecd42d19b2f7dd2ce854c8665a02668`  
		Last Modified: Fri, 20 Nov 2026 20:34:13 GMT  
		Size: 104.8 MB (104834574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c113ab5dcc31ff0fbefe383b80140f0952d6dc768f1d92bd9d4c0787c8973e0c`  
		Last Modified: Fri, 20 Nov 2026 20:34:10 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6ee85b99bb59eb0872e251ac5f2fcb1013046ce471c28e7ee57613fc215b34e`  
		Last Modified: Fri, 20 Nov 2026 20:34:11 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11.10-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:c291004566d0779afc67192619b70da0fc498ab31b6584c73866812d9c358494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66327b42dd324becfb249d82c88e0a6bc6a137b17f673cb627462fb4d78dae52`

```dockerfile
```

-	Layers:
	-	`sha256:6ce53488289dfb1201da4af69d7e2add8a15d056695b882ffd057a69a499b5b4`  
		Last Modified: Fri, 20 Nov 2026 20:34:10 GMT  
		Size: 2.3 MB (2309083 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b508769b96c765957c44fbaad324b8666fa47df266e8afb03fa5f1f644c5d35a`  
		Last Modified: Fri, 20 Nov 2026 20:34:10 GMT  
		Size: 17.2 KB (17174 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.11.10-enterprise`

```console
$ docker pull influxdb@sha256:9bbd3f219b7a8f237a351833303904858d901f57a2deb4dee3ca60d5a0560ca6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.11.10-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:54d8cd417d2c31f5eeafc9cd933376e166e48922f6f797eea3d46c42e2d6e086
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.3 MB (184331954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7884751e43c8e85ca656af6f9621e486a5e316558072f4b59cad6bd6c58a9e95`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:33:33 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 20:33:33 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 20:33:40 GMT
ENV INFLUXDB_VERSION=3.11.10
# Fri, 20 Nov 2026 20:33:40 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 20:33:40 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 20:33:40 GMT
USER influxdb3
# Fri, 20 Nov 2026 20:33:40 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 20:33:40 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 20:33:40 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 20:33:40 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 20:33:40 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 20:33:40 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 20:33:40 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 20:33:40 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 20:33:40 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7651d46ec5d2814f42a3a9ce2924007525fb14fc0a633ddbb63c5d2976a7a0d`  
		Last Modified: Fri, 20 Nov 2026 20:34:00 GMT  
		Size: 6.6 MB (6633843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ed9b2fa8e9a337d73bc8c8b004fb3ad250c69647b689b50e642d4b1840a33c`  
		Last Modified: Fri, 20 Nov 2026 20:34:00 GMT  
		Size: 3.7 KB (3661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19a43e8c0b6d322786820da6bf265a74ff0af99b008603fb0912c9d999ad6f77`  
		Last Modified: Fri, 20 Nov 2026 20:34:03 GMT  
		Size: 147.9 MB (147900484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b7d7dd7f559619ac071ae912386756d464dfc905477e873bb26469939fd4206`  
		Last Modified: Fri, 20 Nov 2026 20:34:00 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cdde419e62f76ba34cf6e7ed41f6c89b7985146f4e68acb81df10e83af25073`  
		Last Modified: Fri, 20 Nov 2026 20:34:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11.10-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:80598774db5559bde0d7fbd782dc899b13caf4c8b64580070d076dfb76443b68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2325254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50006bbdeff37762b41f3bae3f3eb50a3663de72cddf602f2b6bff37eb2db21e`

```dockerfile
```

-	Layers:
	-	`sha256:e4202140ed9b97eac36edd64b30188eb24d8f8c01daaecf332fdf68174603834`  
		Last Modified: Fri, 20 Nov 2026 20:34:00 GMT  
		Size: 2.3 MB (2308049 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de073a189f9881ffac03c0852448c316d07a1a7a960864a9de8391235864a6d8`  
		Last Modified: Fri, 20 Nov 2026 20:34:00 GMT  
		Size: 17.2 KB (17205 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.11.10-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:566339eea8a0088f66c38960035507101394188d9eea91e9dd711ec6e6dda4a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.7 MB (174707413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14e77e8574b436c84d560f25e9cfecccc45e341bc2f390cdddd76ce19e52a7fb`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:33:43 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 20:33:43 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 20:33:52 GMT
ENV INFLUXDB_VERSION=3.11.10
# Fri, 20 Nov 2026 20:33:52 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 20:33:52 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 20:33:52 GMT
USER influxdb3
# Fri, 20 Nov 2026 20:33:53 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 20:33:53 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 20:33:53 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 20:33:53 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 20:33:53 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 20:33:53 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 20:33:53 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 20:33:53 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 20:33:53 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39957b2e492dca80d0a48b41c6c19dd65a8d96256d0c829a8d27e2c230c8d6b4`  
		Last Modified: Fri, 20 Nov 2026 20:34:12 GMT  
		Size: 6.6 MB (6648105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75458829883dcedbe0a55e77e81a97e67b779e389c3e030f13d2e30ebbd5bce1`  
		Last Modified: Fri, 20 Nov 2026 20:34:12 GMT  
		Size: 3.6 KB (3644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbc18f5a9d5d639f9afb1b4bd89b17f061a2b70b071542a7db5fe85a242de93b`  
		Last Modified: Fri, 20 Nov 2026 20:34:15 GMT  
		Size: 139.1 MB (139089675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfd3f3a0a3229f51436e58e10a1d4153bc655128caad77cdbcf890845f50ca45`  
		Last Modified: Fri, 20 Nov 2026 20:34:12 GMT  
		Size: 523.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba4f03181514fde9146618beab2805cdfaf9cb1c23615224ab2d74eb750c415`  
		Last Modified: Fri, 20 Nov 2026 20:34:13 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11.10-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:6b42262bf8921b50c81fae2cdad9b344b32c99ea602c2e5f0f7a29d3af08f940
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30c10c73995bc88e208017361e7684da9b917f8f29fd0642ebab43176b0f5774`

```dockerfile
```

-	Layers:
	-	`sha256:aac22a7d0307f55eaf625a4cdc2f4fe25f4a29603faf911d5e93d76474ba9c86`  
		Last Modified: Fri, 20 Nov 2026 20:34:12 GMT  
		Size: 2.3 MB (2309107 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a99401102c0493252de278b2559e1810466ded235fdb11ad1e51cd25c03a684f`  
		Last Modified: Fri, 20 Nov 2026 20:34:12 GMT  
		Size: 17.3 KB (17330 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.12-core`

```console
$ docker pull influxdb@sha256:9eb55d1873ea629e497179cc465d1d345a78f4bce5c5bc318d3d3ac0b8647022
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.12-core` - linux; amd64

```console
$ docker pull influxdb@sha256:4a06571d0e8b6597a1a480c77b3ce225b1887f3ab787348674f5874d47af55db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.4 MB (156353502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:910382fd48df0cb15b2226aec108999a356a0c8123f6bfa68c5da2c53ab4122e`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:33:36 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 20:33:36 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 20:33:44 GMT
ENV INFLUXDB_VERSION=3.12.3
# Fri, 20 Nov 2026 20:33:44 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 20:33:44 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 20:33:44 GMT
USER influxdb3
# Fri, 20 Nov 2026 20:33:44 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 20:33:44 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 20:33:44 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 20:33:44 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 20:33:44 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 20:33:44 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 20:33:44 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 20:33:44 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 20:33:44 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd603c8f5764f26a65b99a96b75b6d515671b28bb5e46934cd0596e6d353d92c`  
		Last Modified: Fri, 20 Nov 2026 20:34:05 GMT  
		Size: 6.6 MB (6633859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b4aa86b107a5b74887d4e4202a69f3985b3090a1f2d38aa36af3ec74589290`  
		Last Modified: Fri, 20 Nov 2026 20:34:05 GMT  
		Size: 3.7 KB (3662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9537238e4c00c67fc88149e0d556295726d27e934c239c6918134504e80543d3`  
		Last Modified: Fri, 20 Nov 2026 20:34:08 GMT  
		Size: 119.9 MB (119922014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63d9397c525fa587c26dc96d34f410425ff0ccff547c15b981a00102cf0e551e`  
		Last Modified: Fri, 20 Nov 2026 20:34:05 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf90c6f5b2fcb0c6841a9eff1341449eee29b59e6860e21a618910568558c354`  
		Last Modified: Fri, 20 Nov 2026 20:34:06 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.12-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:92c1407d5589c983ee8f20415e68140cd8efa3c4d8a32bdffbedbbdafb111f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a08702b343ed7e9bac7c3e5115aaea2a4478225a685559b1ef5cd038c38c7b6`

```dockerfile
```

-	Layers:
	-	`sha256:dbdbc9a83e3a0560994e9914e32870ddb99a9cb86a42fb2a1bc01ea8dcef99c4`  
		Last Modified: Fri, 20 Nov 2026 20:34:05 GMT  
		Size: 2.3 MB (2308623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:505763aae839410c8eaf8ed90c1e599c5a5f12af6d06b1aa87d592ab7bcf494a`  
		Last Modified: Fri, 20 Nov 2026 20:34:05 GMT  
		Size: 17.6 KB (17641 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.12-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:805c7639932789a22f414a0bf9b3375fbfd724bfceb244e1d389c8aaa68faac5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (145961222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6d9fd783f5ce4833430613f1a590521c3ca7a98ad6c5c83be7cbab2233038a`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:33:47 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 20:33:47 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 20:33:57 GMT
ENV INFLUXDB_VERSION=3.12.3
# Fri, 20 Nov 2026 20:33:57 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 20:33:57 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 20:33:57 GMT
USER influxdb3
# Fri, 20 Nov 2026 20:33:57 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 20:33:57 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 20:33:57 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 20:33:57 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 20:33:57 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 20:33:57 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 20:33:57 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 20:33:57 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 20:33:57 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9ec63eb0508d4a26503d098aee264e43697dec1de0ef44baf6e057a5914f6c`  
		Last Modified: Fri, 20 Nov 2026 20:34:15 GMT  
		Size: 6.6 MB (6648128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8363f8f1ef4e5b9e67dd4db5841e0b0f50048bef24329d9fea1a035d7a46924c`  
		Last Modified: Fri, 20 Nov 2026 20:34:14 GMT  
		Size: 3.6 KB (3648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af1d610bde545815c1d73cd036953a259fd4c93c766e37264b2a2270c9d2d296`  
		Last Modified: Fri, 20 Nov 2026 20:34:17 GMT  
		Size: 110.3 MB (110343456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b91ec5231714d74b8fd2f19d4e94edd0c6652446ed1f7ba73d60272eed276d36`  
		Last Modified: Fri, 20 Nov 2026 20:34:14 GMT  
		Size: 523.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a6f8b829aa7db23dc37db34a5229ce75c4da39f63e6b43140454a02d9d8f8e`  
		Last Modified: Fri, 20 Nov 2026 20:34:15 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.12-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:ae14679f7899ddacf725f0e7d42c6d283444807264db97f6350628d80d81e084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f0dde442eb43f7aed6992f95b6834a8284adb9389f550cd35776a1b79c13ab9`

```dockerfile
```

-	Layers:
	-	`sha256:c002e147173f655f43631fe4bd73eac5f79d2dec09316154e86cd3686f2181b1`  
		Last Modified: Fri, 20 Nov 2026 20:34:14 GMT  
		Size: 2.3 MB (2309705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0581303a83b300c8ecece355e66313a454a47468032eaa3ab12147920e566024`  
		Last Modified: Fri, 20 Nov 2026 20:34:14 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.12-enterprise`

```console
$ docker pull influxdb@sha256:4e25929e86dacdba26cf4654c9987a9b4379f4a9e740b0f2563edb3bac9e8fe1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.12-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:4a7c207a4820fe38aee9cc6166aa3f619542b5832014df789c4499862d25bd39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.7 MB (204670459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec3da1b1384f78776c518db85bce2b4b8bd018ae102ed88c6432430aa1167bb9`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:33:11 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 20:33:12 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 20:33:26 GMT
ENV INFLUXDB_VERSION=3.12.3
# Fri, 20 Nov 2026 20:33:26 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 20:33:26 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 20:33:26 GMT
USER influxdb3
# Fri, 20 Nov 2026 20:33:26 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 20:33:26 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 20:33:26 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 20:33:26 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 20:33:26 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 20:33:26 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 20:33:26 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 20:33:26 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 20:33:26 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38268f3b118b8063797226161b9150107b74ea1da8cc9a724eca7584a9fb8830`  
		Last Modified: Fri, 20 Nov 2026 20:33:52 GMT  
		Size: 6.6 MB (6633832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78c90c313dfd57f1b2dbcbc6b55f73e0e16e14403efea6247c2b7f5936a0412`  
		Last Modified: Fri, 20 Nov 2026 20:33:52 GMT  
		Size: 3.7 KB (3665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86af1ecf44f221dca5acfcb5cfb5476419b1ca60fca5bd55cdd5dda7eeccec84`  
		Last Modified: Fri, 20 Nov 2026 20:33:56 GMT  
		Size: 168.2 MB (168238993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec3e1ab91ff69f8f0da1fd1654a651f45bb12b3bb65f84acd05939a4aee4009`  
		Last Modified: Fri, 20 Nov 2026 20:33:52 GMT  
		Size: 523.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f224e1c9a2346fdba7846abfde8400fda3d702a352ccb296c30a3211a52be0ba`  
		Last Modified: Fri, 20 Nov 2026 20:33:53 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.12-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:955bdeab4a08355d4cad5c2adc1199714abb8629b522541663e30593a0aa59a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da2e01d2f2700b5e94aa239084b46a8087128b03b9cb801709c610cc5d82c114`

```dockerfile
```

-	Layers:
	-	`sha256:01e450a74cc4be37942b0bbaedfb01ad6791924d90153ca16b9f0992cf473089`  
		Last Modified: Fri, 20 Nov 2026 20:33:52 GMT  
		Size: 2.3 MB (2308671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87f6ca062962a87713f6bb2712e33fd2e6ea8d4e8ce9dfd9be5aff02244e7cd8`  
		Last Modified: Fri, 20 Nov 2026 20:33:52 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.12-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:fded477eb496e3b56b6fa963a64f1efbe4c4dbf616123b50a4f8c6f5a94fdb3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.0 MB (192040349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d124cf2ce9f5749a26b6cb93d57e3b404c8157b98fbda1edc63ad356be758d6a`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:33:44 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 20:33:44 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 20:33:58 GMT
ENV INFLUXDB_VERSION=3.12.3
# Fri, 20 Nov 2026 20:33:58 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 20:33:58 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 20:33:58 GMT
USER influxdb3
# Fri, 20 Nov 2026 20:33:58 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 20:33:58 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 20:33:58 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 20:33:58 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 20:33:58 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 20:33:58 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 20:33:58 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 20:33:58 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 20:33:58 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e0276b4c2c4d205c0df8cb6c3a8d14f754bdc4a35baddfa95b6951c18706c1d`  
		Last Modified: Fri, 20 Nov 2026 20:34:21 GMT  
		Size: 6.6 MB (6648187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91f8124202075cca06a23e55f5e93912d448d9bf85c4eff86bd45e47daa75fb`  
		Last Modified: Fri, 20 Nov 2026 20:34:20 GMT  
		Size: 3.6 KB (3647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcd609eaf7306f3fbd1959d33eaeed36bea8703559cd0bddabba20789c3e7049`  
		Last Modified: Fri, 20 Nov 2026 20:34:24 GMT  
		Size: 156.4 MB (156422528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93fc840426c67be898f7fb62b83cd6567e2c5673ef822f4939fca71fd268a999`  
		Last Modified: Fri, 20 Nov 2026 20:34:21 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c4ff5e12022b4bc88513e6bb0453e8c7b5392b1496885188791224362b0e88`  
		Last Modified: Fri, 20 Nov 2026 20:34:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.12-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:bf2c38cddf8b782d9de6e54b9f1b480ce12b57bccb79df45b175f78d9a1c1a2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:388fb45e39dca3c2bd626068b5c6e561cbcd0321b9f1d831ccc4b7e38b251e82`

```dockerfile
```

-	Layers:
	-	`sha256:28018f2c5ef836789536fda82da40c96033ea9cc96d34a69604000d5d9ac65cb`  
		Last Modified: Fri, 20 Nov 2026 20:34:21 GMT  
		Size: 2.3 MB (2309753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e234ceb7dddb36b35be6bf1a94dfa240cfb20bdeb1b68aac7617f5c119071d18`  
		Last Modified: Fri, 20 Nov 2026 20:34:20 GMT  
		Size: 18.0 KB (17970 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.12.3-core`

```console
$ docker pull influxdb@sha256:9eb55d1873ea629e497179cc465d1d345a78f4bce5c5bc318d3d3ac0b8647022
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.12.3-core` - linux; amd64

```console
$ docker pull influxdb@sha256:4a06571d0e8b6597a1a480c77b3ce225b1887f3ab787348674f5874d47af55db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.4 MB (156353502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:910382fd48df0cb15b2226aec108999a356a0c8123f6bfa68c5da2c53ab4122e`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:33:36 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 20:33:36 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 20:33:44 GMT
ENV INFLUXDB_VERSION=3.12.3
# Fri, 20 Nov 2026 20:33:44 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 20:33:44 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 20:33:44 GMT
USER influxdb3
# Fri, 20 Nov 2026 20:33:44 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 20:33:44 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 20:33:44 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 20:33:44 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 20:33:44 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 20:33:44 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 20:33:44 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 20:33:44 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 20:33:44 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd603c8f5764f26a65b99a96b75b6d515671b28bb5e46934cd0596e6d353d92c`  
		Last Modified: Fri, 20 Nov 2026 20:34:05 GMT  
		Size: 6.6 MB (6633859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b4aa86b107a5b74887d4e4202a69f3985b3090a1f2d38aa36af3ec74589290`  
		Last Modified: Fri, 20 Nov 2026 20:34:05 GMT  
		Size: 3.7 KB (3662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9537238e4c00c67fc88149e0d556295726d27e934c239c6918134504e80543d3`  
		Last Modified: Fri, 20 Nov 2026 20:34:08 GMT  
		Size: 119.9 MB (119922014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63d9397c525fa587c26dc96d34f410425ff0ccff547c15b981a00102cf0e551e`  
		Last Modified: Fri, 20 Nov 2026 20:34:05 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf90c6f5b2fcb0c6841a9eff1341449eee29b59e6860e21a618910568558c354`  
		Last Modified: Fri, 20 Nov 2026 20:34:06 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.12.3-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:92c1407d5589c983ee8f20415e68140cd8efa3c4d8a32bdffbedbbdafb111f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a08702b343ed7e9bac7c3e5115aaea2a4478225a685559b1ef5cd038c38c7b6`

```dockerfile
```

-	Layers:
	-	`sha256:dbdbc9a83e3a0560994e9914e32870ddb99a9cb86a42fb2a1bc01ea8dcef99c4`  
		Last Modified: Fri, 20 Nov 2026 20:34:05 GMT  
		Size: 2.3 MB (2308623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:505763aae839410c8eaf8ed90c1e599c5a5f12af6d06b1aa87d592ab7bcf494a`  
		Last Modified: Fri, 20 Nov 2026 20:34:05 GMT  
		Size: 17.6 KB (17641 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.12.3-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:805c7639932789a22f414a0bf9b3375fbfd724bfceb244e1d389c8aaa68faac5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (145961222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6d9fd783f5ce4833430613f1a590521c3ca7a98ad6c5c83be7cbab2233038a`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:33:47 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 20:33:47 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 20:33:57 GMT
ENV INFLUXDB_VERSION=3.12.3
# Fri, 20 Nov 2026 20:33:57 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 20:33:57 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 20:33:57 GMT
USER influxdb3
# Fri, 20 Nov 2026 20:33:57 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 20:33:57 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 20:33:57 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 20:33:57 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 20:33:57 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 20:33:57 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 20:33:57 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 20:33:57 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 20:33:57 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9ec63eb0508d4a26503d098aee264e43697dec1de0ef44baf6e057a5914f6c`  
		Last Modified: Fri, 20 Nov 2026 20:34:15 GMT  
		Size: 6.6 MB (6648128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8363f8f1ef4e5b9e67dd4db5841e0b0f50048bef24329d9fea1a035d7a46924c`  
		Last Modified: Fri, 20 Nov 2026 20:34:14 GMT  
		Size: 3.6 KB (3648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af1d610bde545815c1d73cd036953a259fd4c93c766e37264b2a2270c9d2d296`  
		Last Modified: Fri, 20 Nov 2026 20:34:17 GMT  
		Size: 110.3 MB (110343456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b91ec5231714d74b8fd2f19d4e94edd0c6652446ed1f7ba73d60272eed276d36`  
		Last Modified: Fri, 20 Nov 2026 20:34:14 GMT  
		Size: 523.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a6f8b829aa7db23dc37db34a5229ce75c4da39f63e6b43140454a02d9d8f8e`  
		Last Modified: Fri, 20 Nov 2026 20:34:15 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.12.3-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:ae14679f7899ddacf725f0e7d42c6d283444807264db97f6350628d80d81e084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f0dde442eb43f7aed6992f95b6834a8284adb9389f550cd35776a1b79c13ab9`

```dockerfile
```

-	Layers:
	-	`sha256:c002e147173f655f43631fe4bd73eac5f79d2dec09316154e86cd3686f2181b1`  
		Last Modified: Fri, 20 Nov 2026 20:34:14 GMT  
		Size: 2.3 MB (2309705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0581303a83b300c8ecece355e66313a454a47468032eaa3ab12147920e566024`  
		Last Modified: Fri, 20 Nov 2026 20:34:14 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.12.3-enterprise`

```console
$ docker pull influxdb@sha256:4e25929e86dacdba26cf4654c9987a9b4379f4a9e740b0f2563edb3bac9e8fe1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.12.3-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:4a7c207a4820fe38aee9cc6166aa3f619542b5832014df789c4499862d25bd39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.7 MB (204670459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec3da1b1384f78776c518db85bce2b4b8bd018ae102ed88c6432430aa1167bb9`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:33:11 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 20:33:12 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 20:33:26 GMT
ENV INFLUXDB_VERSION=3.12.3
# Fri, 20 Nov 2026 20:33:26 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 20:33:26 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 20:33:26 GMT
USER influxdb3
# Fri, 20 Nov 2026 20:33:26 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 20:33:26 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 20:33:26 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 20:33:26 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 20:33:26 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 20:33:26 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 20:33:26 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 20:33:26 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 20:33:26 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38268f3b118b8063797226161b9150107b74ea1da8cc9a724eca7584a9fb8830`  
		Last Modified: Fri, 20 Nov 2026 20:33:52 GMT  
		Size: 6.6 MB (6633832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78c90c313dfd57f1b2dbcbc6b55f73e0e16e14403efea6247c2b7f5936a0412`  
		Last Modified: Fri, 20 Nov 2026 20:33:52 GMT  
		Size: 3.7 KB (3665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86af1ecf44f221dca5acfcb5cfb5476419b1ca60fca5bd55cdd5dda7eeccec84`  
		Last Modified: Fri, 20 Nov 2026 20:33:56 GMT  
		Size: 168.2 MB (168238993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec3e1ab91ff69f8f0da1fd1654a651f45bb12b3bb65f84acd05939a4aee4009`  
		Last Modified: Fri, 20 Nov 2026 20:33:52 GMT  
		Size: 523.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f224e1c9a2346fdba7846abfde8400fda3d702a352ccb296c30a3211a52be0ba`  
		Last Modified: Fri, 20 Nov 2026 20:33:53 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.12.3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:955bdeab4a08355d4cad5c2adc1199714abb8629b522541663e30593a0aa59a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da2e01d2f2700b5e94aa239084b46a8087128b03b9cb801709c610cc5d82c114`

```dockerfile
```

-	Layers:
	-	`sha256:01e450a74cc4be37942b0bbaedfb01ad6791924d90153ca16b9f0992cf473089`  
		Last Modified: Fri, 20 Nov 2026 20:33:52 GMT  
		Size: 2.3 MB (2308671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87f6ca062962a87713f6bb2712e33fd2e6ea8d4e8ce9dfd9be5aff02244e7cd8`  
		Last Modified: Fri, 20 Nov 2026 20:33:52 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.12.3-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:fded477eb496e3b56b6fa963a64f1efbe4c4dbf616123b50a4f8c6f5a94fdb3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.0 MB (192040349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d124cf2ce9f5749a26b6cb93d57e3b404c8157b98fbda1edc63ad356be758d6a`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:33:44 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 20:33:44 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 20:33:58 GMT
ENV INFLUXDB_VERSION=3.12.3
# Fri, 20 Nov 2026 20:33:58 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 20:33:58 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 20:33:58 GMT
USER influxdb3
# Fri, 20 Nov 2026 20:33:58 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 20:33:58 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 20:33:58 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 20:33:58 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 20:33:58 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 20:33:58 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 20:33:58 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 20:33:58 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 20:33:58 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e0276b4c2c4d205c0df8cb6c3a8d14f754bdc4a35baddfa95b6951c18706c1d`  
		Last Modified: Fri, 20 Nov 2026 20:34:21 GMT  
		Size: 6.6 MB (6648187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91f8124202075cca06a23e55f5e93912d448d9bf85c4eff86bd45e47daa75fb`  
		Last Modified: Fri, 20 Nov 2026 20:34:20 GMT  
		Size: 3.6 KB (3647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcd609eaf7306f3fbd1959d33eaeed36bea8703559cd0bddabba20789c3e7049`  
		Last Modified: Fri, 20 Nov 2026 20:34:24 GMT  
		Size: 156.4 MB (156422528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93fc840426c67be898f7fb62b83cd6567e2c5673ef822f4939fca71fd268a999`  
		Last Modified: Fri, 20 Nov 2026 20:34:21 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c4ff5e12022b4bc88513e6bb0453e8c7b5392b1496885188791224362b0e88`  
		Last Modified: Fri, 20 Nov 2026 20:34:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.12.3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:bf2c38cddf8b782d9de6e54b9f1b480ce12b57bccb79df45b175f78d9a1c1a2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:388fb45e39dca3c2bd626068b5c6e561cbcd0321b9f1d831ccc4b7e38b251e82`

```dockerfile
```

-	Layers:
	-	`sha256:28018f2c5ef836789536fda82da40c96033ea9cc96d34a69604000d5d9ac65cb`  
		Last Modified: Fri, 20 Nov 2026 20:34:21 GMT  
		Size: 2.3 MB (2309753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e234ceb7dddb36b35be6bf1a94dfa240cfb20bdeb1b68aac7617f5c119071d18`  
		Last Modified: Fri, 20 Nov 2026 20:34:20 GMT  
		Size: 18.0 KB (17970 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:6df3d6c5b8530ed149ecdd66086d251f40295330aa0620ae0bfdbbf3ddab4fdc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:5fcd642b12df57820b7788e6e7c799bebd2dbbefa06cd13f7abbe85fb3a29fff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88884223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50167e01b0c1a420b8288aae1be4cda25973e02d7f79dce3b140b584289844f1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:13:31 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 18 Nov 2026 21:13:32 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Wed, 18 Nov 2026 21:13:32 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 18 Nov 2026 21:13:32 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Wed, 18 Nov 2026 21:13:35 GMT
ENV INFLUXDB_VERSION=2.10.1
# Wed, 18 Nov 2026 21:13:35 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 18 Nov 2026 21:13:35 GMT
ENV INFLUX_CLI_VERSION=2.9.1
# Wed, 18 Nov 2026 21:13:36 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 18 Nov 2026 21:13:36 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 18 Nov 2026 21:13:36 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 18 Nov 2026 21:13:36 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 18 Nov 2026 21:13:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:13:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:13:36 GMT
CMD ["influxd"]
# Wed, 18 Nov 2026 21:13:36 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 21:13:36 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 18 Nov 2026 21:13:36 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 18 Nov 2026 21:13:36 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 18 Nov 2026 21:13:36 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad37ab7569f2e86270020cade068b69c4aaee226d2fe92bfde23a47621bb715a`  
		Last Modified: Wed, 18 Nov 2026 21:13:46 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b770c0b0c65ffe276ee95d4edcfb19408329f7b14b824e2d46048483aff0e8f`  
		Last Modified: Wed, 18 Nov 2026 21:13:46 GMT  
		Size: 10.3 MB (10258131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b1d1d613c309c0fc9562b448e6f64392322b89663a44da664f8b61570e54b0`  
		Last Modified: Wed, 18 Nov 2026 21:13:46 GMT  
		Size: 3.8 MB (3822793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e2f273dbbad975e537361def76d37661355cbe209408ec940e9d07c0fbda89`  
		Last Modified: Wed, 18 Nov 2026 21:13:46 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe9239690517826bd3abae61d2a4f65f77425f5f3ca3a39332bd3c04e1f90de`  
		Last Modified: Wed, 18 Nov 2026 21:13:48 GMT  
		Size: 57.5 MB (57465409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cdad5ce3a64e3b16bf6e86de457118e6ac2af31925fd54edd19fb862a4fbad7`  
		Last Modified: Wed, 18 Nov 2026 21:13:48 GMT  
		Size: 13.5 MB (13476856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d55d2b162bbd384c35998f9e1e49c0a0734775e8e18bdefb172f17bd32096d3c`  
		Last Modified: Wed, 18 Nov 2026 21:13:47 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49b6cd1e2526594ab7c98e23f16bf3a62da6d7600a34d8b4f959ec0cd241fbc2`  
		Last Modified: Wed, 18 Nov 2026 21:13:48 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ea19967de3f27aff1a7a1508f8d166bc5d37383d707a42de763a88688cffff`  
		Last Modified: Wed, 18 Nov 2026 21:13:49 GMT  
		Size: 6.8 KB (6776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:955a618b3ddf6699b61b049344696ac9a2e249102b22ff48e3b9a100c759e941
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **967.5 KB (967503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da0d5e207d5c9ab070ad76acc95c20daf0cea70f8a457f0a4fc682fccbc95c8c`

```dockerfile
```

-	Layers:
	-	`sha256:74cda73a700b6e33d95aa9380795d8c493b36f41b8dfa31ba154196df75b10ec`  
		Last Modified: Wed, 18 Nov 2026 21:13:46 GMT  
		Size: 936.9 KB (936884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a866fef0e048584522cc85b6beb84d3136d32e9946a8a9c142189f3a684cee8`  
		Last Modified: Wed, 18 Nov 2026 21:13:46 GMT  
		Size: 30.6 KB (30619 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:alpine` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:9646e77d2964cb7b9daf122e40646e60b6d02b08496211cc4310a34e2bb97f6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84807500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dcb62800d2a17d3014118a9e3ed72071e0c06d264d3e0b3320e4455e5cdc75a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:13:35 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf # buildkit
# Wed, 18 Nov 2026 21:13:37 GMT
RUN apk add --no-cache       bash       ca-certificates       curl       gnupg       run-parts       setpriv       tzdata &&     update-ca-certificates # buildkit
# Wed, 18 Nov 2026 21:13:37 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 18 Nov 2026 21:13:37 GMT
RUN addgroup -S -g 1000 influxdb &&     adduser -S -G influxdb -u 1000 -h /home/influxdb -s /bin/sh influxdb &&     mkdir -p /home/influxdb &&     chown -R influxdb:influxdb /home/influxdb # buildkit
# Wed, 18 Nov 2026 21:13:40 GMT
ENV INFLUXDB_VERSION=2.10.1
# Wed, 18 Nov 2026 21:13:40 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&    curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 18 Nov 2026 21:13:40 GMT
ENV INFLUX_CLI_VERSION=2.9.1
# Wed, 18 Nov 2026 21:13:41 GMT
RUN case "$(apk --print-arch)" in       x86_64)  arch=amd64 ;;       aarch64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 18 Nov 2026 21:13:41 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 18 Nov 2026 21:13:41 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 18 Nov 2026 21:13:41 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 18 Nov 2026 21:13:41 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:13:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:13:41 GMT
CMD ["influxd"]
# Wed, 18 Nov 2026 21:13:41 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 21:13:41 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 18 Nov 2026 21:13:41 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 18 Nov 2026 21:13:41 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 18 Nov 2026 21:13:41 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ecf8e7b20bf0ba6e2705fb74a6dae86a78b5195cd1ec280521126be16a03d8`  
		Last Modified: Wed, 18 Nov 2026 21:13:51 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669f48668c6f762a92de06317c2e6b727c9094c74975aff7833e2cce141ab136`  
		Last Modified: Wed, 18 Nov 2026 21:13:51 GMT  
		Size: 10.2 MB (10213403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f8748f6bd3810d172a3be1a3b9d3704f40ab61d44c605856330c5cddbce850f`  
		Last Modified: Wed, 18 Nov 2026 21:13:51 GMT  
		Size: 3.5 MB (3459171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cece1c563ae73fdb90bbcc955ede93c497dd67f8bd846a98d9ad528ac01be0e`  
		Last Modified: Wed, 18 Nov 2026 21:13:51 GMT  
		Size: 949.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ebe90c0193ae17dac304284b3bf5d5189dc9b6a2a74bd65dbcb460c1bb76b5`  
		Last Modified: Wed, 18 Nov 2026 21:13:54 GMT  
		Size: 54.6 MB (54555374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e3c159eaa4b270232635c26139c403e6a8aa4da31a62a43139dcaf70cb9c7a4`  
		Last Modified: Wed, 18 Nov 2026 21:13:53 GMT  
		Size: 12.4 MB (12380882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d72d1a2ccf534edaa1404d6283e35a7a3a625a9e558a2e5ae3ef9cd319209c5`  
		Last Modified: Wed, 18 Nov 2026 21:13:53 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd55a9907f3303a73dde848e24d0a9762b82f797c9df305bd659e6d4aadd3e31`  
		Last Modified: Wed, 18 Nov 2026 21:13:53 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3306462cc19d1c3087681d956d2a748f9ad780c2367571ac33a994bf097bc24`  
		Last Modified: Wed, 18 Nov 2026 21:13:54 GMT  
		Size: 6.8 KB (6776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:47af017028e90c2ee629381b53ecc8aaf444d94a74a0ffd0ea9c02801ee6f9e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **966.3 KB (966296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7f4cbceddde4faefcedabf0f6f4a3b3b4f67e579adb3c5576597eeb8e109b27`

```dockerfile
```

-	Layers:
	-	`sha256:f4f27c40d746b7835527aca0a6ddb792d815721aeb680ec3ce5489885c4c1b53`  
		Last Modified: Wed, 18 Nov 2026 21:13:51 GMT  
		Size: 935.5 KB (935483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06f7674bb69b1ff96fb8ba74d7a634b7028380f7ceef7c04890083709358476a`  
		Last Modified: Wed, 18 Nov 2026 21:13:51 GMT  
		Size: 30.8 KB (30813 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:core`

```console
$ docker pull influxdb@sha256:9eb55d1873ea629e497179cc465d1d345a78f4bce5c5bc318d3d3ac0b8647022
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:core` - linux; amd64

```console
$ docker pull influxdb@sha256:4a06571d0e8b6597a1a480c77b3ce225b1887f3ab787348674f5874d47af55db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.4 MB (156353502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:910382fd48df0cb15b2226aec108999a356a0c8123f6bfa68c5da2c53ab4122e`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:33:36 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 20:33:36 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 20:33:44 GMT
ENV INFLUXDB_VERSION=3.12.3
# Fri, 20 Nov 2026 20:33:44 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 20:33:44 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 20:33:44 GMT
USER influxdb3
# Fri, 20 Nov 2026 20:33:44 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 20:33:44 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 20:33:44 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 20:33:44 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 20:33:44 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 20:33:44 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 20:33:44 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 20:33:44 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 20:33:44 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd603c8f5764f26a65b99a96b75b6d515671b28bb5e46934cd0596e6d353d92c`  
		Last Modified: Fri, 20 Nov 2026 20:34:05 GMT  
		Size: 6.6 MB (6633859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b4aa86b107a5b74887d4e4202a69f3985b3090a1f2d38aa36af3ec74589290`  
		Last Modified: Fri, 20 Nov 2026 20:34:05 GMT  
		Size: 3.7 KB (3662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9537238e4c00c67fc88149e0d556295726d27e934c239c6918134504e80543d3`  
		Last Modified: Fri, 20 Nov 2026 20:34:08 GMT  
		Size: 119.9 MB (119922014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63d9397c525fa587c26dc96d34f410425ff0ccff547c15b981a00102cf0e551e`  
		Last Modified: Fri, 20 Nov 2026 20:34:05 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf90c6f5b2fcb0c6841a9eff1341449eee29b59e6860e21a618910568558c354`  
		Last Modified: Fri, 20 Nov 2026 20:34:06 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:core` - unknown; unknown

```console
$ docker pull influxdb@sha256:92c1407d5589c983ee8f20415e68140cd8efa3c4d8a32bdffbedbbdafb111f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a08702b343ed7e9bac7c3e5115aaea2a4478225a685559b1ef5cd038c38c7b6`

```dockerfile
```

-	Layers:
	-	`sha256:dbdbc9a83e3a0560994e9914e32870ddb99a9cb86a42fb2a1bc01ea8dcef99c4`  
		Last Modified: Fri, 20 Nov 2026 20:34:05 GMT  
		Size: 2.3 MB (2308623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:505763aae839410c8eaf8ed90c1e599c5a5f12af6d06b1aa87d592ab7bcf494a`  
		Last Modified: Fri, 20 Nov 2026 20:34:05 GMT  
		Size: 17.6 KB (17641 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:805c7639932789a22f414a0bf9b3375fbfd724bfceb244e1d389c8aaa68faac5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (145961222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6d9fd783f5ce4833430613f1a590521c3ca7a98ad6c5c83be7cbab2233038a`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:33:47 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 20:33:47 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 20:33:57 GMT
ENV INFLUXDB_VERSION=3.12.3
# Fri, 20 Nov 2026 20:33:57 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 20:33:57 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 20:33:57 GMT
USER influxdb3
# Fri, 20 Nov 2026 20:33:57 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 20:33:57 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 20:33:57 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 20:33:57 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 20:33:57 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 20:33:57 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 20:33:57 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 20:33:57 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 20:33:57 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9ec63eb0508d4a26503d098aee264e43697dec1de0ef44baf6e057a5914f6c`  
		Last Modified: Fri, 20 Nov 2026 20:34:15 GMT  
		Size: 6.6 MB (6648128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8363f8f1ef4e5b9e67dd4db5841e0b0f50048bef24329d9fea1a035d7a46924c`  
		Last Modified: Fri, 20 Nov 2026 20:34:14 GMT  
		Size: 3.6 KB (3648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af1d610bde545815c1d73cd036953a259fd4c93c766e37264b2a2270c9d2d296`  
		Last Modified: Fri, 20 Nov 2026 20:34:17 GMT  
		Size: 110.3 MB (110343456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b91ec5231714d74b8fd2f19d4e94edd0c6652446ed1f7ba73d60272eed276d36`  
		Last Modified: Fri, 20 Nov 2026 20:34:14 GMT  
		Size: 523.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a6f8b829aa7db23dc37db34a5229ce75c4da39f63e6b43140454a02d9d8f8e`  
		Last Modified: Fri, 20 Nov 2026 20:34:15 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:core` - unknown; unknown

```console
$ docker pull influxdb@sha256:ae14679f7899ddacf725f0e7d42c6d283444807264db97f6350628d80d81e084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f0dde442eb43f7aed6992f95b6834a8284adb9389f550cd35776a1b79c13ab9`

```dockerfile
```

-	Layers:
	-	`sha256:c002e147173f655f43631fe4bd73eac5f79d2dec09316154e86cd3686f2181b1`  
		Last Modified: Fri, 20 Nov 2026 20:34:14 GMT  
		Size: 2.3 MB (2309705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0581303a83b300c8ecece355e66313a454a47468032eaa3ab12147920e566024`  
		Last Modified: Fri, 20 Nov 2026 20:34:14 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:data`

```console
$ docker pull influxdb@sha256:227dcf6602b985231ec7ca444c9682f62eb3df72373260b91f82793ab72f25a9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:data` - linux; amd64

```console
$ docker pull influxdb@sha256:6680dae7214e26364a59fa50bd006a13532461bc57eaa5ae1a52ab35fda3905a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.5 MB (126473954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6be16b89b631328e6120018aebb1b445f24452070fea34fd06f752990d247b9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:26:04 GMT
ENV INFLUXDB_VERSION=1.12.5-c1.12.5
# Tue, 24 Nov 2026 05:26:04 GMT
ENV INFLUXDB_PR=
# Tue, 24 Nov 2026 05:26:04 GMT
ENV INFLUXDB_PV=1.12.5-c1.12.5
# Tue, 24 Nov 2026 05:26:04 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-data_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:26:04 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Tue, 24 Nov 2026 05:26:04 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 05:26:04 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:26:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:26:04 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Tue, 24 Nov 2026 05:26:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:26:04 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912919e963a171ad7f6d68e1c35eed94a146149d9ed0f61321710e02f370e3f8`  
		Last Modified: Tue, 24 Nov 2026 05:26:19 GMT  
		Size: 54.1 MB (54072545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b1cee16252fe63ccc373c0aa057a71690724bfbe7a993409e7bdd48c68ea77a`  
		Last Modified: Tue, 24 Nov 2026 05:26:17 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6601d31eaf9b4f603fd19a601985b432b215ec3209d542bb0f388ea17031f975`  
		Last Modified: Tue, 24 Nov 2026 05:26:17 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8437c47e018522a3b4335f2550e343c653d8d3c947083cb4402480f35ec1bfb8`  
		Last Modified: Tue, 24 Nov 2026 05:26:17 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:data` - unknown; unknown

```console
$ docker pull influxdb@sha256:0afd7f874301171488a081830157b16a7e95c9e37282d7d53a868f7cc37deff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4718861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3789939b090e6a625a5c3b004be121fa77e87c5d9fcb78b88d0b5488d80199a0`

```dockerfile
```

-	Layers:
	-	`sha256:4efe40380374d84c65deb12bdca41c0c706eee1cf3bbe0fe7606073c760713e3`  
		Last Modified: Tue, 24 Nov 2026 05:26:17 GMT  
		Size: 4.7 MB (4704708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84c31be7b03ffa1e60ef1eec7034c612b40901518203f67b5a89fa4e807cbb48`  
		Last Modified: Tue, 24 Nov 2026 05:26:17 GMT  
		Size: 14.2 KB (14153 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:data-alpine`

```console
$ docker pull influxdb@sha256:1b230bd52c4aea573707fb107e10103390d0584fef354ff0ff71754c6f841001
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:c5344ac1ff3e34d9303bb64af3e787ab3722e64ae700699fb3632f77009abd3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.8 MB (58811763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fe6f9778dbf47f7eb8df50745942787c7f362b5db0f10870df7d2af50afb063`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:00:50 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
ENV INFLUXDB_VERSION=1.12.5-c1.12.5
# Wed, 18 Nov 2026 21:00:56 GMT
ENV INFLUXDB_PR=
# Wed, 18 Nov 2026 21:00:56 GMT
ENV INFLUXDB_PV=1.12.5-c1.12.5
# Wed, 18 Nov 2026 21:00:56 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"         "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     tar -xvf "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influx'             'influxdb-*/influx_inspect'             'influxdb-*/influxd' &&     rm "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"        "influxdb-data-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     apk del .build-deps # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 21:00:56 GMT
VOLUME [/var/lib/influxdb]
# Wed, 18 Nov 2026 21:00:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:00:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7261ce94c7bcc467c6dc2e0d9365eb8890ea9c0578e993bccb61875b13e17381`  
		Last Modified: Wed, 18 Nov 2026 21:01:08 GMT  
		Size: 1.2 MB (1180334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:085caa944777214ac55ff994a265bad7c9d924a13cc722c2fbf01845bc94c4cb`  
		Last Modified: Wed, 18 Nov 2026 21:01:12 GMT  
		Size: 54.0 MB (54004254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64d3cc74fd0377bc5a6cd59d1cd8592efd5601910463c84357c0c5d8a3462a09`  
		Last Modified: Wed, 18 Nov 2026 21:01:07 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:798efff9e60a46fbf3b35b88b87090a9d2db73e791435739966036a7e15fe446`  
		Last Modified: Wed, 18 Nov 2026 21:01:07 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae243f1827a17edcc18d102f5164f08d226d330b472c4391492c5e7c2c67561`  
		Last Modified: Wed, 18 Nov 2026 21:01:09 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:data-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:4c191806b22178ed06e33df33e3bed822e671f5959f48905ca1082d42d8a54b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **787.6 KB (787602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d485330de7d9be1666eb07188ffa206293787e38c6dd0fc93a9aa99800ac6542`

```dockerfile
```

-	Layers:
	-	`sha256:3b1c9310336a8601b15f086b0e726b79dce61f85a77482d4ca4172e705d441e0`  
		Last Modified: Wed, 18 Nov 2026 21:01:07 GMT  
		Size: 772.1 KB (772072 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90cec59e1cf02ceca6189835e040eef230dcb61fb240d9d25d20526395ab267d`  
		Last Modified: Wed, 18 Nov 2026 21:01:07 GMT  
		Size: 15.5 KB (15530 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:enterprise`

```console
$ docker pull influxdb@sha256:4e25929e86dacdba26cf4654c9987a9b4379f4a9e740b0f2563edb3bac9e8fe1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:4a7c207a4820fe38aee9cc6166aa3f619542b5832014df789c4499862d25bd39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.7 MB (204670459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec3da1b1384f78776c518db85bce2b4b8bd018ae102ed88c6432430aa1167bb9`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:33:11 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 20:33:12 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 20:33:26 GMT
ENV INFLUXDB_VERSION=3.12.3
# Fri, 20 Nov 2026 20:33:26 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 20:33:26 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 20:33:26 GMT
USER influxdb3
# Fri, 20 Nov 2026 20:33:26 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 20:33:26 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 20:33:26 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 20:33:26 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 20:33:26 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 20:33:26 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 20:33:26 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 20:33:26 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 20:33:26 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38268f3b118b8063797226161b9150107b74ea1da8cc9a724eca7584a9fb8830`  
		Last Modified: Fri, 20 Nov 2026 20:33:52 GMT  
		Size: 6.6 MB (6633832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78c90c313dfd57f1b2dbcbc6b55f73e0e16e14403efea6247c2b7f5936a0412`  
		Last Modified: Fri, 20 Nov 2026 20:33:52 GMT  
		Size: 3.7 KB (3665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86af1ecf44f221dca5acfcb5cfb5476419b1ca60fca5bd55cdd5dda7eeccec84`  
		Last Modified: Fri, 20 Nov 2026 20:33:56 GMT  
		Size: 168.2 MB (168238993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec3e1ab91ff69f8f0da1fd1654a651f45bb12b3bb65f84acd05939a4aee4009`  
		Last Modified: Fri, 20 Nov 2026 20:33:52 GMT  
		Size: 523.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f224e1c9a2346fdba7846abfde8400fda3d702a352ccb296c30a3211a52be0ba`  
		Last Modified: Fri, 20 Nov 2026 20:33:53 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:955bdeab4a08355d4cad5c2adc1199714abb8629b522541663e30593a0aa59a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da2e01d2f2700b5e94aa239084b46a8087128b03b9cb801709c610cc5d82c114`

```dockerfile
```

-	Layers:
	-	`sha256:01e450a74cc4be37942b0bbaedfb01ad6791924d90153ca16b9f0992cf473089`  
		Last Modified: Fri, 20 Nov 2026 20:33:52 GMT  
		Size: 2.3 MB (2308671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87f6ca062962a87713f6bb2712e33fd2e6ea8d4e8ce9dfd9be5aff02244e7cd8`  
		Last Modified: Fri, 20 Nov 2026 20:33:52 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:fded477eb496e3b56b6fa963a64f1efbe4c4dbf616123b50a4f8c6f5a94fdb3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.0 MB (192040349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d124cf2ce9f5749a26b6cb93d57e3b404c8157b98fbda1edc63ad356be758d6a`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 20:33:44 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 20:33:44 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 20:33:58 GMT
ENV INFLUXDB_VERSION=3.12.3
# Fri, 20 Nov 2026 20:33:58 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 20:33:58 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 20:33:58 GMT
USER influxdb3
# Fri, 20 Nov 2026 20:33:58 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 20:33:58 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 20:33:58 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 20:33:58 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 20:33:58 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 20:33:58 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 20:33:58 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 20:33:58 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 20:33:58 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e0276b4c2c4d205c0df8cb6c3a8d14f754bdc4a35baddfa95b6951c18706c1d`  
		Last Modified: Fri, 20 Nov 2026 20:34:21 GMT  
		Size: 6.6 MB (6648187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91f8124202075cca06a23e55f5e93912d448d9bf85c4eff86bd45e47daa75fb`  
		Last Modified: Fri, 20 Nov 2026 20:34:20 GMT  
		Size: 3.6 KB (3647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcd609eaf7306f3fbd1959d33eaeed36bea8703559cd0bddabba20789c3e7049`  
		Last Modified: Fri, 20 Nov 2026 20:34:24 GMT  
		Size: 156.4 MB (156422528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93fc840426c67be898f7fb62b83cd6567e2c5673ef822f4939fca71fd268a999`  
		Last Modified: Fri, 20 Nov 2026 20:34:21 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c4ff5e12022b4bc88513e6bb0453e8c7b5392b1496885188791224362b0e88`  
		Last Modified: Fri, 20 Nov 2026 20:34:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:bf2c38cddf8b782d9de6e54b9f1b480ce12b57bccb79df45b175f78d9a1c1a2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:388fb45e39dca3c2bd626068b5c6e561cbcd0321b9f1d831ccc4b7e38b251e82`

```dockerfile
```

-	Layers:
	-	`sha256:28018f2c5ef836789536fda82da40c96033ea9cc96d34a69604000d5d9ac65cb`  
		Last Modified: Fri, 20 Nov 2026 20:34:21 GMT  
		Size: 2.3 MB (2309753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e234ceb7dddb36b35be6bf1a94dfa240cfb20bdeb1b68aac7617f5c119071d18`  
		Last Modified: Fri, 20 Nov 2026 20:34:20 GMT  
		Size: 18.0 KB (17970 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:94e98bf5a07587c91bac4f6059aa2ddc172cd246bbd296852a30654192a38a03
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:latest` - linux; amd64

```console
$ docker pull influxdb@sha256:b6bc9e4fbf97118cc513c35d50532e4a72da99c30e0ab3a19fd590f884d8439d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112648323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f6ad6fc47b59f3ec69b4204c9ab05db77b123c23333450deda3cfa15cc462d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:40:17 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:40:17 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 24 Nov 2026 04:40:17 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 24 Nov 2026 04:40:22 GMT
ENV INFLUXDB_VERSION=2.10.1
# Tue, 24 Nov 2026 04:40:22 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 24 Nov 2026 04:40:22 GMT
ENV INFLUX_CLI_VERSION=2.9.1
# Tue, 24 Nov 2026 04:40:23 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 24 Nov 2026 04:40:23 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 24 Nov 2026 04:40:23 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 24 Nov 2026 04:40:23 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 24 Nov 2026 04:40:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 04:40:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 04:40:23 GMT
CMD ["influxd"]
# Tue, 24 Nov 2026 04:40:23 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 04:40:23 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 24 Nov 2026 04:40:23 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 24 Nov 2026 04:40:23 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 24 Nov 2026 04:40:23 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3e0cb9e03d7002d3e17e48eaaa09673bc83b331e358c960ae4df99b47b7a9d0`  
		Last Modified: Tue, 24 Nov 2026 04:40:35 GMT  
		Size: 9.6 MB (9624805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36a625f133e62bb88c891bed72c1d5f7fc3d602dc3072e06596294979b22d9b0`  
		Last Modified: Tue, 24 Nov 2026 04:40:35 GMT  
		Size: 3.8 MB (3822780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15cda2e33c904c3da57f73d2a3b3de13bfc83a0d2b668d322d7c114bfc9462f`  
		Last Modified: Tue, 24 Nov 2026 04:40:35 GMT  
		Size: 3.2 KB (3227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:434c5a7852e3af3a1253372a404dcb626e0b392ad70581c83628db3881c232f6`  
		Last Modified: Tue, 24 Nov 2026 04:40:37 GMT  
		Size: 57.5 MB (57465454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4367b12ae05bf5f914e2bfdbe3080b940ba1c271d766b57ff87376cb7db67d6e`  
		Last Modified: Tue, 24 Nov 2026 04:40:36 GMT  
		Size: 13.5 MB (13476865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a56a51e4fbefca375bec2c4a9b59753744433600a2029b56f63faba0563273`  
		Last Modified: Tue, 24 Nov 2026 04:40:37 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ae9328360991f0ed5c247df5b625859af0761d6a4ceec91be2b5444d454835`  
		Last Modified: Tue, 24 Nov 2026 04:40:37 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61888f1cec981a995e95e3c26625d97f575cea514171c7ff1e6f8f954167069d`  
		Last Modified: Tue, 24 Nov 2026 04:40:38 GMT  
		Size: 6.8 KB (6790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:latest` - unknown; unknown

```console
$ docker pull influxdb@sha256:ad834849214d462a993ad021f212d38dd5b5c40b6551e59091dbd2323a7908b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2996220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e62c43416a0b3f095b1f569a225301acf494132face1c4dbbddf8672b12dbfb`

```dockerfile
```

-	Layers:
	-	`sha256:065c8f315bc479938a029308e01395b756876ffa2965a745323c9d2f05f25be8`  
		Last Modified: Tue, 24 Nov 2026 04:40:35 GMT  
		Size: 3.0 MB (2967596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43a78a3d500d534e76f6e92f0be0d4d6f7d7361e99e3caaefee0d8aa5d222467`  
		Last Modified: Tue, 24 Nov 2026 04:40:35 GMT  
		Size: 28.6 KB (28624 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:latest` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:509e7d55856a7ac2f3eccfca308c76b3cc132ab4c598d652b60308cac183e427
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.0 MB (107999272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:667ccf00bfe85f8df42ac1178e30a6225374017a02923b589c449db4d974fbc5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:44:48 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 04:44:49 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Tue, 24 Nov 2026 04:44:49 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Tue, 24 Nov 2026 04:44:53 GMT
ENV INFLUXDB_VERSION=2.10.1
# Tue, 24 Nov 2026 04:44:53 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Tue, 24 Nov 2026 04:44:53 GMT
ENV INFLUX_CLI_VERSION=2.9.1
# Tue, 24 Nov 2026 04:44:55 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Tue, 24 Nov 2026 04:44:55 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Tue, 24 Nov 2026 04:44:55 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Tue, 24 Nov 2026 04:44:55 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Tue, 24 Nov 2026 04:44:55 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 04:44:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 04:44:55 GMT
CMD ["influxd"]
# Tue, 24 Nov 2026 04:44:55 GMT
EXPOSE map[8086/tcp:{}]
# Tue, 24 Nov 2026 04:44:55 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Tue, 24 Nov 2026 04:44:55 GMT
ENV INFLUXD_INIT_PORT=9999
# Tue, 24 Nov 2026 04:44:55 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Tue, 24 Nov 2026 04:44:55 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2137c848894bafbaf8ed9229dbf5892a951811f74e26afe177f384c5a737d800`  
		Last Modified: Tue, 24 Nov 2026 04:45:06 GMT  
		Size: 9.4 MB (9449007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb9f7972072e4b428520d64ba58b68bdbd88908966556be2660059e61a31f300`  
		Last Modified: Tue, 24 Nov 2026 04:45:06 GMT  
		Size: 3.5 MB (3459169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7fe00b07ae819fdc0806ab0d009b95c16a016106d9bba2e2822dcdbea26a7fd`  
		Last Modified: Tue, 24 Nov 2026 04:45:06 GMT  
		Size: 3.2 KB (3228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e184240c4345239bedd5ee58841d6ad9491335136a1da12d1d34da7112b39107`  
		Last Modified: Tue, 24 Nov 2026 04:45:08 GMT  
		Size: 54.6 MB (54555430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c1adbf79a9d4e0e4cffefd9759fd9bb1429520f3f01cd4f9b5acabd04b4a23`  
		Last Modified: Tue, 24 Nov 2026 04:45:07 GMT  
		Size: 12.4 MB (12380902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d975a07478cbef2a66762a5f36db8c2b15822674b2f4ff38d24355340dc0d9b`  
		Last Modified: Tue, 24 Nov 2026 04:45:07 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e859f94461d5e6fffadafebbeb08909a8ab3c7985eab774314dfceb086c2a64d`  
		Last Modified: Tue, 24 Nov 2026 04:45:08 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a50f200dce0f49b37fa65605623fa4e56883f31f168fac0c4116bdeebfe1d04`  
		Last Modified: Tue, 24 Nov 2026 04:45:08 GMT  
		Size: 6.8 KB (6790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:latest` - unknown; unknown

```console
$ docker pull influxdb@sha256:846a6f4fc182dabc2893443677af25d5c113d20e92fd652e44c3c068b8e09236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2995877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4658bc0f0adaac3ed96a5f99a2298902ed9c20101d1662a3548d8d03cadd9f`

```dockerfile
```

-	Layers:
	-	`sha256:f028d98e1ff7cf1810312b2e922b5b16a30779ff2ab8f66b88a7d965b8eb13a4`  
		Last Modified: Tue, 24 Nov 2026 04:45:06 GMT  
		Size: 3.0 MB (2967074 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbbdd1cacb614311708e7adf84df0583616f111f90f8d53a57757fe3616eee35`  
		Last Modified: Tue, 24 Nov 2026 04:45:06 GMT  
		Size: 28.8 KB (28803 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:meta`

```console
$ docker pull influxdb@sha256:a8f805721d362c2b681c68d0e2bd5add4a9181bbb715984bebbd6201ec90eb0f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:meta` - linux; amd64

```console
$ docker pull influxdb@sha256:1acf05c3a3f4989ee7b57a5b3e26264de91e7ea1c925660e4b44b10a58a76078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.0 MB (96021691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b49ea68680b3e08f2cb606fdee4059fb64947463822ef63425f20f4e0b7c094`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 04:39:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:26:10 GMT
ENV INFLUXDB_VERSION=1.12.5-c1.12.5
# Tue, 24 Nov 2026 05:26:10 GMT
ENV INFLUXDB_PR=
# Tue, 24 Nov 2026 05:26:10 GMT
ENV INFLUXDB_PV=1.12.5-c1.12.5
# Tue, 24 Nov 2026 05:26:10 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-meta_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:26:10 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Tue, 24 Nov 2026 05:26:10 GMT
EXPOSE map[8091/tcp:{}]
# Tue, 24 Nov 2026 05:26:10 GMT
VOLUME [/var/lib/influxdb]
# Tue, 24 Nov 2026 05:26:10 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:26:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:26:10 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae095a5e1967682906bd4de72089b39695c9f840e0639c2cae2c959288ec67`  
		Last Modified: Tue, 24 Nov 2026 04:39:23 GMT  
		Size: 23.9 MB (23873253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39cd55a56b3eec6e6ae51ffc4fe67ca8a2e6686519b928126098f9e681f1cf40`  
		Last Modified: Tue, 24 Nov 2026 05:26:24 GMT  
		Size: 23.6 MB (23621492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:699554ab956b144e433a80a4ba48b4abf9bedd0f65ab9537b25dc3c2d4ae5768`  
		Last Modified: Tue, 24 Nov 2026 05:26:24 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bcf0892de9a64bc254007834e28b488e807f08c9d47eb12d1f801bb712d88d3`  
		Last Modified: Tue, 24 Nov 2026 05:26:24 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:71807407e8c7a8006b98e544d61f4f6b95cd4f2d939b8d83becbed6dc0638b5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4610424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0bf13171cfd50955c8e8a23962fb754d47ddeabc04f838fdc09994f90e0490`

```dockerfile
```

-	Layers:
	-	`sha256:e7ec27e3776e8f83a71d5098605da5e5f1f108a7f7a1c7ebd738c5dd29f6cde9`  
		Last Modified: Tue, 24 Nov 2026 05:26:24 GMT  
		Size: 4.6 MB (4597760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:262b5daeaaed822f996232a022e7a4c7c40b06b81a62298b9678e7b76d059f28`  
		Last Modified: Tue, 24 Nov 2026 05:26:24 GMT  
		Size: 12.7 KB (12664 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:meta-alpine`

```console
$ docker pull influxdb@sha256:232f9370cf8985c18da5a739a0b47420e564278b9f0b48809b96b92d73d98b98
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:7cb788386d5b612e924a8a290909849219eb67f9620c395d783d8d8665559e4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28367974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f45f6615381d496fbccb06bfa59307a7b463a18ef076fd4b505997f89c55ae5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:00:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates # buildkit
# Wed, 18 Nov 2026 21:00:24 GMT
ENV INFLUXDB_VERSION=1.12.5-c1.12.5
# Wed, 18 Nov 2026 21:00:24 GMT
ENV INFLUXDB_PR=
# Wed, 18 Nov 2026 21:00:24 GMT
ENV INFLUXDB_PV=1.12.5-c1.12.5
# Wed, 18 Nov 2026 21:00:24 GMT
RUN apk add --no-cache --virtual .build-deps curl gnupg tar &&     curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"         "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     tar -xvf "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz"         -C /usr/bin --strip-components 1 --wildcards             'influxdb-*/influxd-ctl'             'influxdb-*/influxd-meta' &&     rm "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz.asc"        "influxdb-meta-${INFLUXDB_PV}_linux_amd64.tar.gz" &&     apk del .build-deps # buildkit
# Wed, 18 Nov 2026 21:00:24 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Wed, 18 Nov 2026 21:00:24 GMT
EXPOSE map[8091/tcp:{}]
# Wed, 18 Nov 2026 21:00:24 GMT
VOLUME [/var/lib/influxdb]
# Wed, 18 Nov 2026 21:00:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:00:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:00:24 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d36fe0d02ba84cb552f1be504a6dff6eab7844f700801cce984e003ba2c600d`  
		Last Modified: Wed, 18 Nov 2026 21:00:33 GMT  
		Size: 1.2 MB (1180341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448ddfc8342eb21e4d742d8aac9be70f2a75aaf0be91845bc41a61dc1b100d21`  
		Last Modified: Wed, 18 Nov 2026 21:00:35 GMT  
		Size: 23.6 MB (23561665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5689c2ba62b315f1fa3a223b4ad4aa4697ecd2345e74c9489ed63012dbb4b1b0`  
		Last Modified: Wed, 18 Nov 2026 21:00:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7fd56c1d3ba164d688ec2329dade79dd4d6a0d7fc98937b3522f52f6ff9c433`  
		Last Modified: Wed, 18 Nov 2026 21:00:32 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:meta-alpine` - unknown; unknown

```console
$ docker pull influxdb@sha256:d622c66fadaf54be206abc8d548b6e30873c7f89afcfe02de6efc561af5449dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **679.8 KB (679841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59b2cfffab1d61a49e57d861d6c47ff1b30d22a4f699ca186356f3dfd02cea04`

```dockerfile
```

-	Layers:
	-	`sha256:48cee600424f98d9d323e9bd91f4b4282394bb63f78f9aa5169fec88430051ab`  
		Last Modified: Wed, 18 Nov 2026 21:00:33 GMT  
		Size: 665.9 KB (665910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bec405ac2591ee4c43697d03d19fa107882cc31aff9a2ad25e14b2d9462313e0`  
		Last Modified: Wed, 18 Nov 2026 21:00:34 GMT  
		Size: 13.9 KB (13931 bytes)  
		MIME: application/vnd.in-toto+json
