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
-	[`influxdb:3.11.8-core`](#influxdb3118-core)
-	[`influxdb:3.11.9-enterprise`](#influxdb3119-enterprise)
-	[`influxdb:3.12-core`](#influxdb312-core)
-	[`influxdb:3.12-enterprise`](#influxdb312-enterprise)
-	[`influxdb:3.12.2-core`](#influxdb3122-core)
-	[`influxdb:3.12.2-enterprise`](#influxdb3122-enterprise)
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
$ docker pull influxdb@sha256:64748ef240cae6b1675698db3e46031b8fe1ceef7eec8dd0d2edf653b37e0915
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.11` - linux; amd64

```console
$ docker pull influxdb@sha256:396ad6fb085a583f1e6197dabb13c81820712ad9de7121d2a3c11cb55b34fc5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116061579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0401cbeb16855eed816e21ed79edac3fcd3500b39ed8bf02823884da2da0b78`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:36:42 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Thu, 05 Nov 2026 08:36:49 GMT
ARG INFLUXDB_VERSION=1.11.8
# Thu, 05 Nov 2026 08:36:49 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     case "$(dpkg --print-architecture)" in       *amd64) ARCH=amd64 ;;       *arm64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_DEB=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_DEB}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_DEB}" &&     apt-get install -y "./${INFLUXDB_DEB}" &&     rm -rf "${INFLUXDB_DEB}"            "${INFLUXDB_ASC}" 	   /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:36:49 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 08:36:49 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 08:36:49 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 08:36:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:36:49 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 08:36:49 GMT
USER influxdb
# Thu, 05 Nov 2026 08:36:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 08:36:49 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28ebf8cff1af32438bbde1a21d394995764f3e856ff593fd7c2059d940e0b083`  
		Last Modified: Thu, 05 Nov 2026 08:37:00 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e7c43d439fc642063a9148e137104d2220ad5a1ee062f3bd71087c43fb3b1d7`  
		Last Modified: Thu, 05 Nov 2026 08:37:02 GMT  
		Size: 43.7 MB (43658968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90564ace042d8bceacdf56158cf45dcf1681aca7f6255358d591334c42563a42`  
		Last Modified: Thu, 05 Nov 2026 08:37:01 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8013295cca8c6c8dd8ed89f2f96a1ee0f37da69d2e04c0da5ea1b5585da6beaa`  
		Last Modified: Thu, 05 Nov 2026 08:37:01 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb50c4b63db4b87b2361697ec658a622cf8b681b6055cea38f8e57309b70ea55`  
		Last Modified: Thu, 05 Nov 2026 08:37:02 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11` - unknown; unknown

```console
$ docker pull influxdb@sha256:defcd3a150b60c08fa04861c19631e80c09465a7b942c210e6b0e11b14f6d695
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5097312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85f5715cef5088c488647a02638c73c10897c7aa17ce6c6393b07b362d8bacd5`

```dockerfile
```

-	Layers:
	-	`sha256:5e58c619392f44754c116a262c16d688f47bcc8383e241486bbd72da3d2bb086`  
		Last Modified: Thu, 05 Nov 2026 08:37:01 GMT  
		Size: 5.1 MB (5081826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39b99523fab6b1289e137d04015bd5e67f255d0f25c3355d32f4a5c8250ad4e5`  
		Last Modified: Thu, 05 Nov 2026 08:37:00 GMT  
		Size: 15.5 KB (15486 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.11` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:4eb2adc3f157bd845be4b27f59112f8d1fb84ca62fbcb60841d33f1dd8c1e0ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.0 MB (112988003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef72d2d43572a702404b7746e232c333e6b52b7fcf169759a0ba05de261b4fe5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:33:55 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Thu, 05 Nov 2026 08:34:37 GMT
ARG INFLUXDB_VERSION=1.11.8
# Thu, 05 Nov 2026 08:34:37 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     case "$(dpkg --print-architecture)" in       *amd64) ARCH=amd64 ;;       *arm64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_DEB=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_DEB}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_DEB}" &&     apt-get install -y "./${INFLUXDB_DEB}" &&     rm -rf "${INFLUXDB_DEB}"            "${INFLUXDB_ASC}" 	   /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:34:37 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 08:34:37 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 08:34:37 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 08:34:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:34:37 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 08:34:37 GMT
USER influxdb
# Thu, 05 Nov 2026 08:34:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 08:34:37 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f962a36433fe573f438fb09f04f27913e8ec48ff357c8438b3a9fb04446cba5`  
		Last Modified: Thu, 05 Nov 2026 08:34:14 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd7099e767d07760eeb39ef821c004eb8c7df9dc8e19ab6961d1c22882cddf79`  
		Last Modified: Thu, 05 Nov 2026 08:34:51 GMT  
		Size: 41.1 MB (41131982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff5958a01a411aa37c93f2dce2a0ffe56b93b26e2697ab691ded38c438de83d`  
		Last Modified: Thu, 05 Nov 2026 08:34:49 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8893e6eb7d8067562b017bb94c146848fb0c84639c49304b384920f6637f47`  
		Last Modified: Thu, 05 Nov 2026 08:34:49 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c0e25ab51f9972745da89bcbe5dc96a3e7cc6a078ca027189befead91352660`  
		Last Modified: Thu, 05 Nov 2026 08:34:49 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11` - unknown; unknown

```console
$ docker pull influxdb@sha256:3978ead1b54b379e95dcabf648901108b8af950483e489c92bd8d69396586bda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5096872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79e9d9d48ee5f39d0ea9121dcaaec899ca3cbecfdd8453b53f0471c5f09b0c9b`

```dockerfile
```

-	Layers:
	-	`sha256:b06704e209e4abcf6081234e206013414f67f62c84bcf24104963b380c9f9f47`  
		Last Modified: Thu, 05 Nov 2026 08:34:50 GMT  
		Size: 5.1 MB (5081291 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6542ab1a842262b44b5a79ef0b7770b53bbb9d0dc6aa9cd4f2a5aaaf8df5854c`  
		Last Modified: Thu, 05 Nov 2026 08:34:49 GMT  
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
$ docker pull influxdb@sha256:7918e881ebc87871c461e56ab46b617d30262bc1abd7dc31d1a8957076eb3d17
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11-data` - linux; amd64

```console
$ docker pull influxdb@sha256:a01ac942a32a148d2db7b0433365a42f6091f8655441e2a8b4ecc4b40293c794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118323823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a411340eda34b8547c29d44a938cc749feac1dd7647f1e245aa6b2f946a1770`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:01:40 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 18 Nov 2026 21:01:42 GMT
ENV INFLUXDB_VERSION=1.11.10-c1.11.10
# Wed, 18 Nov 2026 21:01:42 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb* # buildkit
# Wed, 18 Nov 2026 21:01:43 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 18 Nov 2026 21:01:43 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 21:01:43 GMT
VOLUME [/var/lib/influxdb]
# Wed, 18 Nov 2026 21:01:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:01:43 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 18 Nov 2026 21:01:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:01:43 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fb7e262f1b0f1c7a5276bcb39c656275474f885094136874386c7926a1a7a8`  
		Last Modified: Wed, 18 Nov 2026 21:01:55 GMT  
		Size: 5.1 KB (5071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44cac93328bbddee458cd614fdf48536b8bb41d8d503c9035ac67909a342b02c`  
		Last Modified: Wed, 18 Nov 2026 21:01:56 GMT  
		Size: 45.9 MB (45917279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f908d85d6bba83dd0125d993603f7032b4e2688f5e8662fb1f4f1ed28c102e26`  
		Last Modified: Wed, 18 Nov 2026 21:01:55 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b296dca3b2dd7f9293c6a58ed928aa9731335a0eac4933a6178e29fee7b9c72f`  
		Last Modified: Wed, 18 Nov 2026 21:01:55 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cc4d4301c9753c3a1636c653bc2ad146bb7e70fc53b73b47cda5218f5c47f43`  
		Last Modified: Wed, 18 Nov 2026 21:01:56 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:7b573207efb6cfb33b4e9b1dce55a98e2985c4dc5064652a88f149d8463fb3b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4703154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99bc6f5b9730ba0025992d38464dc9e64cc0f0ab95e58ec7f0649e603f7fbbe1`

```dockerfile
```

-	Layers:
	-	`sha256:8dc513fc0428f839fea52e5be2488914a1bd88474453a1c212975cce628817a6`  
		Last Modified: Wed, 18 Nov 2026 21:01:55 GMT  
		Size: 4.7 MB (4688509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:325d75e48b8bb56dffe22e9f681e537e63059e4667639ecc0d3655ec416094dc`  
		Last Modified: Wed, 18 Nov 2026 21:01:55 GMT  
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
$ docker pull influxdb@sha256:f901ef9c0a77533cf07e49f29940430576dc71d148c46cc41031a2c084575b69
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:d82ab39f3d3416071ebd0428b91e529cec321a9efbe6e128c6881ab0f641c678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93735160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7a7d3ba6ff6e7b2139c318c17159846842c59d3b791a9d3917e6c25bfdeccc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:01:48 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 18 Nov 2026 21:01:52 GMT
ENV INFLUXDB_VERSION=1.11.10-c1.11.10
# Wed, 18 Nov 2026 21:01:52 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb* # buildkit
# Wed, 18 Nov 2026 21:01:52 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Wed, 18 Nov 2026 21:01:52 GMT
EXPOSE map[8091/tcp:{}]
# Wed, 18 Nov 2026 21:01:52 GMT
VOLUME [/var/lib/influxdb]
# Wed, 18 Nov 2026 21:01:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:01:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:01:52 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7db70483363e102ca4b67032568ffa3ee93a849af55899f6fe7a84b7c91e62d`  
		Last Modified: Wed, 18 Nov 2026 21:02:01 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e3ae67a59db3735ee51357030a15ef9f53a0398b99417c85faec59182353620`  
		Last Modified: Wed, 18 Nov 2026 21:02:02 GMT  
		Size: 21.3 MB (21329822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab3d5774b0fbe1cd19014d91e25833ed2830d877d7ef075d6750b0a7a00b6f3b`  
		Last Modified: Wed, 18 Nov 2026 21:02:01 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430bc192d1c263f73f9dc493e19e8f4cddf671a95ffcfb5e76abfb9b0fdff3dd`  
		Last Modified: Wed, 18 Nov 2026 21:02:01 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:2d9e8bb4ab00e8c1fc1d8c26ad5a23e9f54845600f70e6be5dc36425050d023f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4608356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8457f933962dc1e93edabdfa6adb35c548e77d2f2a673930523f6c1dc5ef49e4`

```dockerfile
```

-	Layers:
	-	`sha256:5441f416f0e73cfde8889a90d29b4f9724fd3a654d9285f54753bf771caf6da0`  
		Last Modified: Wed, 18 Nov 2026 21:02:02 GMT  
		Size: 4.6 MB (4595352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37dfeb720f8364bfd2a6595f026e5661b5138cc4a313d96d27c06c1cb1744de9`  
		Last Modified: Wed, 18 Nov 2026 21:02:01 GMT  
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
$ docker pull influxdb@sha256:7918e881ebc87871c461e56ab46b617d30262bc1abd7dc31d1a8957076eb3d17
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11.10-data` - linux; amd64

```console
$ docker pull influxdb@sha256:a01ac942a32a148d2db7b0433365a42f6091f8655441e2a8b4ecc4b40293c794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118323823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a411340eda34b8547c29d44a938cc749feac1dd7647f1e245aa6b2f946a1770`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:01:40 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 18 Nov 2026 21:01:42 GMT
ENV INFLUXDB_VERSION=1.11.10-c1.11.10
# Wed, 18 Nov 2026 21:01:42 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb* # buildkit
# Wed, 18 Nov 2026 21:01:43 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 18 Nov 2026 21:01:43 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 21:01:43 GMT
VOLUME [/var/lib/influxdb]
# Wed, 18 Nov 2026 21:01:43 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:01:43 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 18 Nov 2026 21:01:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:01:43 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fb7e262f1b0f1c7a5276bcb39c656275474f885094136874386c7926a1a7a8`  
		Last Modified: Wed, 18 Nov 2026 21:01:55 GMT  
		Size: 5.1 KB (5071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44cac93328bbddee458cd614fdf48536b8bb41d8d503c9035ac67909a342b02c`  
		Last Modified: Wed, 18 Nov 2026 21:01:56 GMT  
		Size: 45.9 MB (45917279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f908d85d6bba83dd0125d993603f7032b4e2688f5e8662fb1f4f1ed28c102e26`  
		Last Modified: Wed, 18 Nov 2026 21:01:55 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b296dca3b2dd7f9293c6a58ed928aa9731335a0eac4933a6178e29fee7b9c72f`  
		Last Modified: Wed, 18 Nov 2026 21:01:55 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cc4d4301c9753c3a1636c653bc2ad146bb7e70fc53b73b47cda5218f5c47f43`  
		Last Modified: Wed, 18 Nov 2026 21:01:56 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.10-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:7b573207efb6cfb33b4e9b1dce55a98e2985c4dc5064652a88f149d8463fb3b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4703154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99bc6f5b9730ba0025992d38464dc9e64cc0f0ab95e58ec7f0649e603f7fbbe1`

```dockerfile
```

-	Layers:
	-	`sha256:8dc513fc0428f839fea52e5be2488914a1bd88474453a1c212975cce628817a6`  
		Last Modified: Wed, 18 Nov 2026 21:01:55 GMT  
		Size: 4.7 MB (4688509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:325d75e48b8bb56dffe22e9f681e537e63059e4667639ecc0d3655ec416094dc`  
		Last Modified: Wed, 18 Nov 2026 21:01:55 GMT  
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
$ docker pull influxdb@sha256:f901ef9c0a77533cf07e49f29940430576dc71d148c46cc41031a2c084575b69
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.11.10-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:d82ab39f3d3416071ebd0428b91e529cec321a9efbe6e128c6881ab0f641c678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93735160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7a7d3ba6ff6e7b2139c318c17159846842c59d3b791a9d3917e6c25bfdeccc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:01:48 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 18 Nov 2026 21:01:52 GMT
ENV INFLUXDB_VERSION=1.11.10-c1.11.10
# Wed, 18 Nov 2026 21:01:52 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb* # buildkit
# Wed, 18 Nov 2026 21:01:52 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Wed, 18 Nov 2026 21:01:52 GMT
EXPOSE map[8091/tcp:{}]
# Wed, 18 Nov 2026 21:01:52 GMT
VOLUME [/var/lib/influxdb]
# Wed, 18 Nov 2026 21:01:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:01:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:01:52 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7db70483363e102ca4b67032568ffa3ee93a849af55899f6fe7a84b7c91e62d`  
		Last Modified: Wed, 18 Nov 2026 21:02:01 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e3ae67a59db3735ee51357030a15ef9f53a0398b99417c85faec59182353620`  
		Last Modified: Wed, 18 Nov 2026 21:02:02 GMT  
		Size: 21.3 MB (21329822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab3d5774b0fbe1cd19014d91e25833ed2830d877d7ef075d6750b0a7a00b6f3b`  
		Last Modified: Wed, 18 Nov 2026 21:02:01 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430bc192d1c263f73f9dc493e19e8f4cddf671a95ffcfb5e76abfb9b0fdff3dd`  
		Last Modified: Wed, 18 Nov 2026 21:02:01 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.10-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:2d9e8bb4ab00e8c1fc1d8c26ad5a23e9f54845600f70e6be5dc36425050d023f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4608356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8457f933962dc1e93edabdfa6adb35c548e77d2f2a673930523f6c1dc5ef49e4`

```dockerfile
```

-	Layers:
	-	`sha256:5441f416f0e73cfde8889a90d29b4f9724fd3a654d9285f54753bf771caf6da0`  
		Last Modified: Wed, 18 Nov 2026 21:02:02 GMT  
		Size: 4.6 MB (4595352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37dfeb720f8364bfd2a6595f026e5661b5138cc4a313d96d27c06c1cb1744de9`  
		Last Modified: Wed, 18 Nov 2026 21:02:01 GMT  
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
$ docker pull influxdb@sha256:64748ef240cae6b1675698db3e46031b8fe1ceef7eec8dd0d2edf653b37e0915
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.11.8` - linux; amd64

```console
$ docker pull influxdb@sha256:396ad6fb085a583f1e6197dabb13c81820712ad9de7121d2a3c11cb55b34fc5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116061579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0401cbeb16855eed816e21ed79edac3fcd3500b39ed8bf02823884da2da0b78`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:36:42 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Thu, 05 Nov 2026 08:36:49 GMT
ARG INFLUXDB_VERSION=1.11.8
# Thu, 05 Nov 2026 08:36:49 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     case "$(dpkg --print-architecture)" in       *amd64) ARCH=amd64 ;;       *arm64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_DEB=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_DEB}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_DEB}" &&     apt-get install -y "./${INFLUXDB_DEB}" &&     rm -rf "${INFLUXDB_DEB}"            "${INFLUXDB_ASC}" 	   /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:36:49 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 08:36:49 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 08:36:49 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 08:36:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:36:49 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 08:36:49 GMT
USER influxdb
# Thu, 05 Nov 2026 08:36:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 08:36:49 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28ebf8cff1af32438bbde1a21d394995764f3e856ff593fd7c2059d940e0b083`  
		Last Modified: Thu, 05 Nov 2026 08:37:00 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e7c43d439fc642063a9148e137104d2220ad5a1ee062f3bd71087c43fb3b1d7`  
		Last Modified: Thu, 05 Nov 2026 08:37:02 GMT  
		Size: 43.7 MB (43658968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90564ace042d8bceacdf56158cf45dcf1681aca7f6255358d591334c42563a42`  
		Last Modified: Thu, 05 Nov 2026 08:37:01 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8013295cca8c6c8dd8ed89f2f96a1ee0f37da69d2e04c0da5ea1b5585da6beaa`  
		Last Modified: Thu, 05 Nov 2026 08:37:01 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb50c4b63db4b87b2361697ec658a622cf8b681b6055cea38f8e57309b70ea55`  
		Last Modified: Thu, 05 Nov 2026 08:37:02 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.8` - unknown; unknown

```console
$ docker pull influxdb@sha256:defcd3a150b60c08fa04861c19631e80c09465a7b942c210e6b0e11b14f6d695
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5097312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85f5715cef5088c488647a02638c73c10897c7aa17ce6c6393b07b362d8bacd5`

```dockerfile
```

-	Layers:
	-	`sha256:5e58c619392f44754c116a262c16d688f47bcc8383e241486bbd72da3d2bb086`  
		Last Modified: Thu, 05 Nov 2026 08:37:01 GMT  
		Size: 5.1 MB (5081826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39b99523fab6b1289e137d04015bd5e67f255d0f25c3355d32f4a5c8250ad4e5`  
		Last Modified: Thu, 05 Nov 2026 08:37:00 GMT  
		Size: 15.5 KB (15486 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.11.8` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:4eb2adc3f157bd845be4b27f59112f8d1fb84ca62fbcb60841d33f1dd8c1e0ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.0 MB (112988003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef72d2d43572a702404b7746e232c333e6b52b7fcf169759a0ba05de261b4fe5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:33:55 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Thu, 05 Nov 2026 08:34:37 GMT
ARG INFLUXDB_VERSION=1.11.8
# Thu, 05 Nov 2026 08:34:37 GMT
# ARGS: INFLUXDB_VERSION=1.11.8
RUN gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys 24C975CBA61A024EE1B631787C3D57159FC2F927 &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     case "$(dpkg --print-architecture)" in       *amd64) ARCH=amd64 ;;       *arm64) ARCH=arm64 ;;       *) exit 1 ;;     esac &&     export INFLUXDB_DEB=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb &&     export INFLUXDB_ASC=influxdb-${INFLUXDB_VERSION}-${ARCH}.deb.asc &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_DEB}" &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/${INFLUXDB_ASC}" &&     gpg --batch --verify "${INFLUXDB_ASC}" "${INFLUXDB_DEB}" &&     apt-get install -y "./${INFLUXDB_DEB}" &&     rm -rf "${INFLUXDB_DEB}"            "${INFLUXDB_ASC}" 	   /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:34:37 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 08:34:37 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 08:34:37 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 08:34:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:34:37 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 08:34:37 GMT
USER influxdb
# Thu, 05 Nov 2026 08:34:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 08:34:37 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f962a36433fe573f438fb09f04f27913e8ec48ff357c8438b3a9fb04446cba5`  
		Last Modified: Thu, 05 Nov 2026 08:34:14 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd7099e767d07760eeb39ef821c004eb8c7df9dc8e19ab6961d1c22882cddf79`  
		Last Modified: Thu, 05 Nov 2026 08:34:51 GMT  
		Size: 41.1 MB (41131982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff5958a01a411aa37c93f2dce2a0ffe56b93b26e2697ab691ded38c438de83d`  
		Last Modified: Thu, 05 Nov 2026 08:34:49 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8893e6eb7d8067562b017bb94c146848fb0c84639c49304b384920f6637f47`  
		Last Modified: Thu, 05 Nov 2026 08:34:49 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c0e25ab51f9972745da89bcbe5dc96a3e7cc6a078ca027189befead91352660`  
		Last Modified: Thu, 05 Nov 2026 08:34:49 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.11.8` - unknown; unknown

```console
$ docker pull influxdb@sha256:3978ead1b54b379e95dcabf648901108b8af950483e489c92bd8d69396586bda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5096872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79e9d9d48ee5f39d0ea9121dcaaec899ca3cbecfdd8453b53f0471c5f09b0c9b`

```dockerfile
```

-	Layers:
	-	`sha256:b06704e209e4abcf6081234e206013414f67f62c84bcf24104963b380c9f9f47`  
		Last Modified: Thu, 05 Nov 2026 08:34:50 GMT  
		Size: 5.1 MB (5081291 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6542ab1a842262b44b5a79ef0b7770b53bbb9d0dc6aa9cd4f2a5aaaf8df5854c`  
		Last Modified: Thu, 05 Nov 2026 08:34:49 GMT  
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
$ docker pull influxdb@sha256:b4850cef0cf93d169581714bd0dd995fa8f1b5cdfdaaf35a43fbbdc643adb3ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.12` - linux; amd64

```console
$ docker pull influxdb@sha256:3578969ca9911e541b161d1aa10d8d08f533a5325807a57a2804d10b41f9e7bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114528967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29d6894d22e9d0bfe475a5983590306e375d912bb94096a30a01b921141b4dab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:36:25 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Thu, 05 Nov 2026 08:36:29 GMT
ENV INFLUXDB_VERSION=1.12.4
# Thu, 05 Nov 2026 08:36:29 GMT
ENV INFLUXDB_PR=-1
# Thu, 05 Nov 2026 08:36:29 GMT
ENV INFLUXDB_PV=1.12.4-1
# Thu, 05 Nov 2026 08:36:29 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:36:29 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 08:36:29 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 08:36:29 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 08:36:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:36:29 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 08:36:29 GMT
USER influxdb
# Thu, 05 Nov 2026 08:36:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 08:36:29 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c06c8187a2b82f95e35f5f671590183f3d5f6af2e14bb84d13638aef087ca2`  
		Last Modified: Thu, 05 Nov 2026 08:36:40 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0be326829be673448e45dce8b5338081c906de6cc4cd5e45ddd831c8e4747258`  
		Last Modified: Thu, 05 Nov 2026 08:36:41 GMT  
		Size: 42.1 MB (42126356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98891edf753131fcd7942f57a8e3f72cbbe276d447975668ddbab4c394b42d0`  
		Last Modified: Thu, 05 Nov 2026 08:36:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af80b293df1a4eb0b2d494e4cac581d0699b855d9062ea5abb719244cf518bc2`  
		Last Modified: Thu, 05 Nov 2026 08:36:40 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b013d21dcdfd7c3c4bca001ff091fa76d0d67f8bf6d55da4e1f9beaa8c57987`  
		Last Modified: Thu, 05 Nov 2026 08:36:40 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12` - unknown; unknown

```console
$ docker pull influxdb@sha256:f980ed9c34291bed3117b6c5fbdaa1a1fda0fba33aa7e281b248a5954bef92fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4697181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a6f38f59e0b6c4d0b764ee959520a4f0c8b552bd6ca4e12dea2ceb7fe873a7a`

```dockerfile
```

-	Layers:
	-	`sha256:0b6c02cb99d73f825fb0ce4747556fc522b9c5ca01d6410ff7df0642423a0dd2`  
		Last Modified: Thu, 05 Nov 2026 08:36:40 GMT  
		Size: 4.7 MB (4680652 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:010ae85242a593446f5710c8174be1d47c8a618e85d96aa9cacec91f2b525d15`  
		Last Modified: Thu, 05 Nov 2026 08:36:40 GMT  
		Size: 16.5 KB (16529 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.12` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:407b8c9a55bd6d565d859e4897940fb98a74272fe2c924934ae055edca46073e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110610396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a54de06c0ceaaec832e80d0c797f3589f9beb745b864a45e9dea4e563192e2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:33:59 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Thu, 05 Nov 2026 08:34:06 GMT
ENV INFLUXDB_VERSION=1.12.4
# Thu, 05 Nov 2026 08:34:06 GMT
ENV INFLUXDB_PR=-1
# Thu, 05 Nov 2026 08:34:06 GMT
ENV INFLUXDB_PV=1.12.4-1
# Thu, 05 Nov 2026 08:34:06 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:34:06 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 08:34:06 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 08:34:06 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 08:34:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:34:06 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 08:34:06 GMT
USER influxdb
# Thu, 05 Nov 2026 08:34:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 08:34:06 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbc6b8c50cee5bb80e868be16cb690f5676c9ff82cb88573923ce522cfcec247`  
		Last Modified: Thu, 05 Nov 2026 08:34:20 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd58d46742a1de63e786749d128a692840aebcc8bd8f70633e423035ff5dc226`  
		Last Modified: Thu, 05 Nov 2026 08:34:21 GMT  
		Size: 38.8 MB (38754372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc6539d9b4e9dcd55df31532cfac21bb91f3cdd8a9070ee415addecdf37c8a49`  
		Last Modified: Thu, 05 Nov 2026 08:34:20 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dabaedb78579de44c268fd6aa9c6d4ea74bec38c54e04e07ac1f4fdef3493bb`  
		Last Modified: Thu, 05 Nov 2026 08:34:20 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e30d685e047039f7e723d2c59fe122c375182ec014e2ed119dacc1cd0bf1d838`  
		Last Modified: Thu, 05 Nov 2026 08:34:21 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12` - unknown; unknown

```console
$ docker pull influxdb@sha256:8a2cd4eb8661a99fab7d9a00d69a68b93e4037184a375b4f50288b80a1430fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4696732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896faab4a9a9685b3af552145bed85d805d39467f42fd708f3fd1e1ed5c63dce`

```dockerfile
```

-	Layers:
	-	`sha256:6e31017ce7b5ad777ffd9f0d94e50c00debdf1eee50d97a752e4edbf31046aee`  
		Last Modified: Thu, 05 Nov 2026 08:34:20 GMT  
		Size: 4.7 MB (4680108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d86e9038dd1e19545b0b61d3638c8b312956acc46dd20029aa700fa6829ea96`  
		Last Modified: Thu, 05 Nov 2026 08:34:20 GMT  
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
$ docker pull influxdb@sha256:fd476d04c542348c335770ea49b03e3b7e6f3e1c2c774d3851be417c5c5632c6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12-data` - linux; amd64

```console
$ docker pull influxdb@sha256:671fcac7a6ffba327d626a70c3a381e66b313c4cac5e84bc370618428767d632
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.5 MB (126474017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea9979a4d1d7e81f2c0d2936d4c963b79ff839c90861e601f355b6d2b4dffe0b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 20:59:50 GMT
ENV INFLUXDB_VERSION=1.12.5-c1.12.5
# Wed, 18 Nov 2026 20:59:50 GMT
ENV INFLUXDB_PR=
# Wed, 18 Nov 2026 20:59:50 GMT
ENV INFLUXDB_PV=1.12.5-c1.12.5
# Wed, 18 Nov 2026 20:59:50 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-data_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 20:59:50 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 18 Nov 2026 20:59:50 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 20:59:50 GMT
VOLUME [/var/lib/influxdb]
# Wed, 18 Nov 2026 20:59:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 20:59:50 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 18 Nov 2026 20:59:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 20:59:50 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb4f16db444262d5b02cbb34de916c7e6006d9b23a89d8edf0b4bfc393347be9`  
		Last Modified: Wed, 18 Nov 2026 21:00:11 GMT  
		Size: 54.1 MB (54072542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cab813419867283bcdc51e602be05fbf9421d4cb213e3259a476479e90362aa5`  
		Last Modified: Wed, 18 Nov 2026 21:00:09 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:555d824e9cc26300e050f22dc3d2c1b1e811c2cc44977bc806f3d70a1e87cc49`  
		Last Modified: Wed, 18 Nov 2026 21:00:10 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487001287ebb1fa1096c6eb3dac42d6b3d7ff37388ca8dd987d45a45ce7e3806`  
		Last Modified: Wed, 18 Nov 2026 21:00:09 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:7eeb5ef04af4a4808d5051d9251cc25705283883716ffac5d88af8918be3df77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4718862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:566193a9abadf39a15e4638833e8c29524a643f3783e7285e011af906d52d76f`

```dockerfile
```

-	Layers:
	-	`sha256:8d9d58a69286e2c89541af4945f31e38744c01e43b0ec652c214a2d9238549dc`  
		Last Modified: Wed, 18 Nov 2026 21:00:09 GMT  
		Size: 4.7 MB (4704708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdd1121975d24ac1a5365e80f27bf8f7101a43040463a0be577189915bf3f1c0`  
		Last Modified: Wed, 18 Nov 2026 21:00:11 GMT  
		Size: 14.2 KB (14154 bytes)  
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
$ docker pull influxdb@sha256:157c0b2058e5da29758a6baacb89ca30fe5a6a2b24cc10e69b08a9861bd14739
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:f4f530a6eb74cba0e9e465c1871264f165c7db7c4c5e92ae6878cd15f1d6b5dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.0 MB (96021734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a242e15915174743aebbcfcf11e100ff10b3f745036eac275490b578d7f363`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
ENV INFLUXDB_VERSION=1.12.5-c1.12.5
# Wed, 18 Nov 2026 21:00:56 GMT
ENV INFLUXDB_PR=
# Wed, 18 Nov 2026 21:00:56 GMT
ENV INFLUXDB_PV=1.12.5-c1.12.5
# Wed, 18 Nov 2026 21:00:56 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-meta_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
EXPOSE map[8091/tcp:{}]
# Wed, 18 Nov 2026 21:00:56 GMT
VOLUME [/var/lib/influxdb]
# Wed, 18 Nov 2026 21:00:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:00:56 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:713e8d97315d7fb6e23f3bf5b11a6323ef186cad82b78a334eba913dd86bc704`  
		Last Modified: Wed, 18 Nov 2026 21:01:07 GMT  
		Size: 23.6 MB (23621462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0267c5a62ca62fd6065b5b13b23c37ee55ef3b94b6c539eaddecb38a4196ca`  
		Last Modified: Wed, 18 Nov 2026 21:01:06 GMT  
		Size: 199.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3757c558917efa354f5b113852c70d9c0b00ab68e0d308faa05b90b2ea9040bc`  
		Last Modified: Wed, 18 Nov 2026 21:01:05 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:0cc000d151f0cce289e3a1d9d2221de8d89e9db5036cbbbc0e2f0a37c5d8b347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4610424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b67dbb1e217768d456c88acdae03c3377625c33d872efe0b45763994f5c0127`

```dockerfile
```

-	Layers:
	-	`sha256:8ae4666906f6e2e8e0f3542fcc8af28b009a5ab10adbcf8a3406b98f850921b3`  
		Last Modified: Wed, 18 Nov 2026 21:01:06 GMT  
		Size: 4.6 MB (4597760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6a340f8840906cacacdb157bab735e9b2fdb988661737aafd07c242f3423402`  
		Last Modified: Wed, 18 Nov 2026 21:01:05 GMT  
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
$ docker pull influxdb@sha256:b4850cef0cf93d169581714bd0dd995fa8f1b5cdfdaaf35a43fbbdc643adb3ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.12.4` - linux; amd64

```console
$ docker pull influxdb@sha256:3578969ca9911e541b161d1aa10d8d08f533a5325807a57a2804d10b41f9e7bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114528967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29d6894d22e9d0bfe475a5983590306e375d912bb94096a30a01b921141b4dab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:36:25 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Thu, 05 Nov 2026 08:36:29 GMT
ENV INFLUXDB_VERSION=1.12.4
# Thu, 05 Nov 2026 08:36:29 GMT
ENV INFLUXDB_PR=-1
# Thu, 05 Nov 2026 08:36:29 GMT
ENV INFLUXDB_PV=1.12.4-1
# Thu, 05 Nov 2026 08:36:29 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:36:29 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 08:36:29 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 08:36:29 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 08:36:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:36:29 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 08:36:29 GMT
USER influxdb
# Thu, 05 Nov 2026 08:36:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 08:36:29 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c06c8187a2b82f95e35f5f671590183f3d5f6af2e14bb84d13638aef087ca2`  
		Last Modified: Thu, 05 Nov 2026 08:36:40 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0be326829be673448e45dce8b5338081c906de6cc4cd5e45ddd831c8e4747258`  
		Last Modified: Thu, 05 Nov 2026 08:36:41 GMT  
		Size: 42.1 MB (42126356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98891edf753131fcd7942f57a8e3f72cbbe276d447975668ddbab4c394b42d0`  
		Last Modified: Thu, 05 Nov 2026 08:36:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af80b293df1a4eb0b2d494e4cac581d0699b855d9062ea5abb719244cf518bc2`  
		Last Modified: Thu, 05 Nov 2026 08:36:40 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b013d21dcdfd7c3c4bca001ff091fa76d0d67f8bf6d55da4e1f9beaa8c57987`  
		Last Modified: Thu, 05 Nov 2026 08:36:40 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.4` - unknown; unknown

```console
$ docker pull influxdb@sha256:f980ed9c34291bed3117b6c5fbdaa1a1fda0fba33aa7e281b248a5954bef92fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4697181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a6f38f59e0b6c4d0b764ee959520a4f0c8b552bd6ca4e12dea2ceb7fe873a7a`

```dockerfile
```

-	Layers:
	-	`sha256:0b6c02cb99d73f825fb0ce4747556fc522b9c5ca01d6410ff7df0642423a0dd2`  
		Last Modified: Thu, 05 Nov 2026 08:36:40 GMT  
		Size: 4.7 MB (4680652 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:010ae85242a593446f5710c8174be1d47c8a618e85d96aa9cacec91f2b525d15`  
		Last Modified: Thu, 05 Nov 2026 08:36:40 GMT  
		Size: 16.5 KB (16529 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.12.4` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:407b8c9a55bd6d565d859e4897940fb98a74272fe2c924934ae055edca46073e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110610396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a54de06c0ceaaec832e80d0c797f3589f9beb745b864a45e9dea4e563192e2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:33:59 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Thu, 05 Nov 2026 08:34:06 GMT
ENV INFLUXDB_VERSION=1.12.4
# Thu, 05 Nov 2026 08:34:06 GMT
ENV INFLUXDB_PR=-1
# Thu, 05 Nov 2026 08:34:06 GMT
ENV INFLUXDB_PV=1.12.4-1
# Thu, 05 Nov 2026 08:34:06 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:34:06 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 08:34:06 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 08:34:06 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 08:34:06 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:34:06 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 08:34:06 GMT
USER influxdb
# Thu, 05 Nov 2026 08:34:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 08:34:06 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbc6b8c50cee5bb80e868be16cb690f5676c9ff82cb88573923ce522cfcec247`  
		Last Modified: Thu, 05 Nov 2026 08:34:20 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd58d46742a1de63e786749d128a692840aebcc8bd8f70633e423035ff5dc226`  
		Last Modified: Thu, 05 Nov 2026 08:34:21 GMT  
		Size: 38.8 MB (38754372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc6539d9b4e9dcd55df31532cfac21bb91f3cdd8a9070ee415addecdf37c8a49`  
		Last Modified: Thu, 05 Nov 2026 08:34:20 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dabaedb78579de44c268fd6aa9c6d4ea74bec38c54e04e07ac1f4fdef3493bb`  
		Last Modified: Thu, 05 Nov 2026 08:34:20 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e30d685e047039f7e723d2c59fe122c375182ec014e2ed119dacc1cd0bf1d838`  
		Last Modified: Thu, 05 Nov 2026 08:34:21 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.4` - unknown; unknown

```console
$ docker pull influxdb@sha256:8a2cd4eb8661a99fab7d9a00d69a68b93e4037184a375b4f50288b80a1430fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4696732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896faab4a9a9685b3af552145bed85d805d39467f42fd708f3fd1e1ed5c63dce`

```dockerfile
```

-	Layers:
	-	`sha256:6e31017ce7b5ad777ffd9f0d94e50c00debdf1eee50d97a752e4edbf31046aee`  
		Last Modified: Thu, 05 Nov 2026 08:34:20 GMT  
		Size: 4.7 MB (4680108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d86e9038dd1e19545b0b61d3638c8b312956acc46dd20029aa700fa6829ea96`  
		Last Modified: Thu, 05 Nov 2026 08:34:20 GMT  
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
$ docker pull influxdb@sha256:fd476d04c542348c335770ea49b03e3b7e6f3e1c2c774d3851be417c5c5632c6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12.5-data` - linux; amd64

```console
$ docker pull influxdb@sha256:671fcac7a6ffba327d626a70c3a381e66b313c4cac5e84bc370618428767d632
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.5 MB (126474017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea9979a4d1d7e81f2c0d2936d4c963b79ff839c90861e601f355b6d2b4dffe0b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 20:59:50 GMT
ENV INFLUXDB_VERSION=1.12.5-c1.12.5
# Wed, 18 Nov 2026 20:59:50 GMT
ENV INFLUXDB_PR=
# Wed, 18 Nov 2026 20:59:50 GMT
ENV INFLUXDB_PV=1.12.5-c1.12.5
# Wed, 18 Nov 2026 20:59:50 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-data_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 20:59:50 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 18 Nov 2026 20:59:50 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 20:59:50 GMT
VOLUME [/var/lib/influxdb]
# Wed, 18 Nov 2026 20:59:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 20:59:50 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 18 Nov 2026 20:59:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 20:59:50 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb4f16db444262d5b02cbb34de916c7e6006d9b23a89d8edf0b4bfc393347be9`  
		Last Modified: Wed, 18 Nov 2026 21:00:11 GMT  
		Size: 54.1 MB (54072542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cab813419867283bcdc51e602be05fbf9421d4cb213e3259a476479e90362aa5`  
		Last Modified: Wed, 18 Nov 2026 21:00:09 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:555d824e9cc26300e050f22dc3d2c1b1e811c2cc44977bc806f3d70a1e87cc49`  
		Last Modified: Wed, 18 Nov 2026 21:00:10 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487001287ebb1fa1096c6eb3dac42d6b3d7ff37388ca8dd987d45a45ce7e3806`  
		Last Modified: Wed, 18 Nov 2026 21:00:09 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.5-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:7eeb5ef04af4a4808d5051d9251cc25705283883716ffac5d88af8918be3df77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4718862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:566193a9abadf39a15e4638833e8c29524a643f3783e7285e011af906d52d76f`

```dockerfile
```

-	Layers:
	-	`sha256:8d9d58a69286e2c89541af4945f31e38744c01e43b0ec652c214a2d9238549dc`  
		Last Modified: Wed, 18 Nov 2026 21:00:09 GMT  
		Size: 4.7 MB (4704708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdd1121975d24ac1a5365e80f27bf8f7101a43040463a0be577189915bf3f1c0`  
		Last Modified: Wed, 18 Nov 2026 21:00:11 GMT  
		Size: 14.2 KB (14154 bytes)  
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
$ docker pull influxdb@sha256:157c0b2058e5da29758a6baacb89ca30fe5a6a2b24cc10e69b08a9861bd14739
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.12.5-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:f4f530a6eb74cba0e9e465c1871264f165c7db7c4c5e92ae6878cd15f1d6b5dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.0 MB (96021734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a242e15915174743aebbcfcf11e100ff10b3f745036eac275490b578d7f363`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
ENV INFLUXDB_VERSION=1.12.5-c1.12.5
# Wed, 18 Nov 2026 21:00:56 GMT
ENV INFLUXDB_PR=
# Wed, 18 Nov 2026 21:00:56 GMT
ENV INFLUXDB_PV=1.12.5-c1.12.5
# Wed, 18 Nov 2026 21:00:56 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-meta_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
EXPOSE map[8091/tcp:{}]
# Wed, 18 Nov 2026 21:00:56 GMT
VOLUME [/var/lib/influxdb]
# Wed, 18 Nov 2026 21:00:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:00:56 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:713e8d97315d7fb6e23f3bf5b11a6323ef186cad82b78a334eba913dd86bc704`  
		Last Modified: Wed, 18 Nov 2026 21:01:07 GMT  
		Size: 23.6 MB (23621462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0267c5a62ca62fd6065b5b13b23c37ee55ef3b94b6c539eaddecb38a4196ca`  
		Last Modified: Wed, 18 Nov 2026 21:01:06 GMT  
		Size: 199.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3757c558917efa354f5b113852c70d9c0b00ab68e0d308faa05b90b2ea9040bc`  
		Last Modified: Wed, 18 Nov 2026 21:01:05 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.12.5-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:0cc000d151f0cce289e3a1d9d2221de8d89e9db5036cbbbc0e2f0a37c5d8b347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4610424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b67dbb1e217768d456c88acdae03c3377625c33d872efe0b45763994f5c0127`

```dockerfile
```

-	Layers:
	-	`sha256:8ae4666906f6e2e8e0f3542fcc8af28b009a5ab10adbcf8a3406b98f850921b3`  
		Last Modified: Wed, 18 Nov 2026 21:01:06 GMT  
		Size: 4.6 MB (4597760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6a340f8840906cacacdb157bab735e9b2fdb988661737aafd07c242f3423402`  
		Last Modified: Wed, 18 Nov 2026 21:01:05 GMT  
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
$ docker pull influxdb@sha256:ffa96366d916545608b8ae8dcc09d1efb5d792e4139096dfdcb1daf8789b211a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.13` - linux; amd64

```console
$ docker pull influxdb@sha256:d4b2bbbe05e012eaba0e68ee0d4f74567ca22efc34f6de8bcc7aede9937a3977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.7 MB (125651001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f57d63ed7916ef976adf05471ba4b36afbba5e4c042cded3af3bd13929ddc7ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:35:44 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Thu, 05 Nov 2026 08:35:49 GMT
ENV INFLUXDB_VERSION=1.13.2
# Thu, 05 Nov 2026 08:35:49 GMT
ENV INFLUXDB_PR=-1
# Thu, 05 Nov 2026 08:35:49 GMT
ENV INFLUXDB_PV=1.13.2-1
# Thu, 05 Nov 2026 08:35:49 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:35:49 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 08:35:49 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 08:35:49 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 08:35:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:35:49 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 08:35:49 GMT
USER influxdb
# Thu, 05 Nov 2026 08:35:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 08:35:49 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b58dda8220eb04507eec28c7541efaa5015235bd6bc88adbae567ca8ed44354`  
		Last Modified: Thu, 05 Nov 2026 08:36:01 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7941c9cef1e97bae5c42c9173bc8e9233c988da91382bd06d05f2e47ae51c93d`  
		Last Modified: Thu, 05 Nov 2026 08:36:02 GMT  
		Size: 53.2 MB (53248390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae6ce08ce27b4d272ba9b86b3ea0939e564556d233aab160e86f1903f112537`  
		Last Modified: Thu, 05 Nov 2026 08:36:01 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5263c98cdb43cbf5184f54c018d402d6ae581e4ee1e4348c38b5eeb3da9d9c89`  
		Last Modified: Thu, 05 Nov 2026 08:36:01 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd3ccff36a530cf797885eab804ccb5c21f1b6fbcfd45f26583ee0abe36078b`  
		Last Modified: Thu, 05 Nov 2026 08:36:02 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13` - unknown; unknown

```console
$ docker pull influxdb@sha256:fa62665e12a6f69e50db6e49664503471a78209652e61016227f0e8188db56cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4712058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b31d4e8d31be61237a307aa7888befd9bdb8791435f77b7fe69bf6df66e45206`

```dockerfile
```

-	Layers:
	-	`sha256:a81bc36de8afded1bd48573ed255847f875657902c016d9004775e6acc846575`  
		Last Modified: Thu, 05 Nov 2026 08:36:01 GMT  
		Size: 4.7 MB (4695529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:303e1a0bf72afdfedbc5f8d4243fa392fb2cbbd0d75b151998697f5002e8ffca`  
		Last Modified: Thu, 05 Nov 2026 08:36:01 GMT  
		Size: 16.5 KB (16529 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.13` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:9949656fdb1afdd4dfbda657dc1bf53e80c278da3c33d1979519855c0d263d23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (121017185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb073d846492a3acd847c9e517a3b2ea66ba1b16613b27343b435fdac3a3bd0e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:33:55 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Thu, 05 Nov 2026 08:34:01 GMT
ENV INFLUXDB_VERSION=1.13.2
# Thu, 05 Nov 2026 08:34:01 GMT
ENV INFLUXDB_PR=-1
# Thu, 05 Nov 2026 08:34:01 GMT
ENV INFLUXDB_PV=1.13.2-1
# Thu, 05 Nov 2026 08:34:01 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:34:01 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 08:34:01 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 08:34:01 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 08:34:01 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:34:01 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 08:34:01 GMT
USER influxdb
# Thu, 05 Nov 2026 08:34:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 08:34:01 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f962a36433fe573f438fb09f04f27913e8ec48ff357c8438b3a9fb04446cba5`  
		Last Modified: Thu, 05 Nov 2026 08:34:14 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c0a996642ca3d8226479484d1edf915c0345777b692060b22851366ad36b77`  
		Last Modified: Thu, 05 Nov 2026 08:34:15 GMT  
		Size: 49.2 MB (49161159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52eced7e73152a202b76b1c6064dbfb68c59a339cc4d04d01127a99fa31a8ba8`  
		Last Modified: Thu, 05 Nov 2026 08:34:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea56afac3101d70da3b5a059e25ace5f05a02371df28e273a27be24a8f9d7a15`  
		Last Modified: Thu, 05 Nov 2026 08:34:14 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcc12e743052bd5d4bc6c1d157e77c1329b29e46563567d027ec2a0447eac089`  
		Last Modified: Thu, 05 Nov 2026 08:34:15 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13` - unknown; unknown

```console
$ docker pull influxdb@sha256:f8d3930b0af3f009b5a82bba69259d1f2c38579be3a90493edaaea5cdeb41d0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4711103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5746b65bca12cbb0ef5b9aa9897b49e1a51f5ee9e243cf6f435c4ae6b6998647`

```dockerfile
```

-	Layers:
	-	`sha256:c305c911fd60c71cd56e086afbf4d0e9b95ab64653ecddbaee038baf8d2fb34d`  
		Last Modified: Thu, 05 Nov 2026 08:34:14 GMT  
		Size: 4.7 MB (4694479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f060aab4a805dfe0bfa836f59408dbf90172cc94abb11da30ddbe5e753d42ede`  
		Last Modified: Thu, 05 Nov 2026 08:34:14 GMT  
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
$ docker pull influxdb@sha256:daf370c07243c2707e32170e1f3e1232a015e16d257c5a6d81b2308e042f1586
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.13-data` - linux; amd64

```console
$ docker pull influxdb@sha256:d1da6f5dbd99d1888e5f897f27a8642f772961c7078bb88355b30ab6c38e215c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.7 MB (126743299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0520fab34ab0edca2c97ab787bb6704bebf5653b1b8c57c7a9a95f148397fbc0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:36:04 GMT
ENV INFLUXDB_VERSION=1.13.2-c1.13.2
# Thu, 05 Nov 2026 08:36:04 GMT
ENV INFLUXDB_PR=
# Thu, 05 Nov 2026 08:36:04 GMT
ENV INFLUXDB_PV=1.13.2-c1.13.2
# Thu, 05 Nov 2026 08:36:04 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-data_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:36:04 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 08:36:04 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 08:36:04 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 08:36:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:36:05 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 08:36:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 08:36:05 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf27d371b3c8e652acb7144a427759fa6ba12be54e9fb7ab5fe8688f54fa941`  
		Last Modified: Thu, 05 Nov 2026 08:36:19 GMT  
		Size: 54.3 MB (54341829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f71e2766c4a020860531c623a0f62bbe4f6a9378dc01dad214e91a9895030480`  
		Last Modified: Thu, 05 Nov 2026 08:36:17 GMT  
		Size: 241.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0efbe8642fdfeae17ac64db38c5092df31e0ea7f6b890843b210fae7bd79b28d`  
		Last Modified: Thu, 05 Nov 2026 08:36:17 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cd502de756affe804394b8a9e0c330abc939fca27c6ecb3b8f8a32cad24a353`  
		Last Modified: Thu, 05 Nov 2026 08:36:17 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:76085dc759d5dfad571cde6837a80fa9467f1304b7dfd893a455ebbfb0b7d748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4721392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0207b8918bcc670b6d1f24c2ab43d684618e3dadd105ddccc003c3bcf3c20b5`

```dockerfile
```

-	Layers:
	-	`sha256:ea517f0d782d4e77188978488e246ced4f1ccec3a972636666ec29234317ea79`  
		Last Modified: Thu, 05 Nov 2026 08:36:17 GMT  
		Size: 4.7 MB (4707536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8aa82bd9c43c89f744d9857eb95339fe067bcbb9ec2a1dced59d336888d141ad`  
		Last Modified: Thu, 05 Nov 2026 08:36:17 GMT  
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
$ docker pull influxdb@sha256:980548709619e3e72fa34d35e5b5d1c8435dcbfe86d49c136350f032cd411d0b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.13-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:d2dbac7a2a2b9c725fe390c95fd5b1053081583333fc7500cb857c6a465e5cee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96142414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4efd30eb64460db7faabea7cdb08f0226a8a77694ad58818f9750ae55b0b52`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:36:20 GMT
ENV INFLUXDB_VERSION=1.13.2-c1.13.2
# Thu, 05 Nov 2026 08:36:20 GMT
ENV INFLUXDB_PR=
# Thu, 05 Nov 2026 08:36:20 GMT
ENV INFLUXDB_PV=1.13.2-c1.13.2
# Thu, 05 Nov 2026 08:36:20 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-meta_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:36:20 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Thu, 05 Nov 2026 08:36:20 GMT
EXPOSE map[8091/tcp:{}]
# Thu, 05 Nov 2026 08:36:20 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 08:36:20 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:36:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 08:36:20 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4d357fbf35c05e8c4c2117c63a27a80cc2dc1dc37514c3f5aee2bbffa001f4`  
		Last Modified: Thu, 05 Nov 2026 08:36:30 GMT  
		Size: 23.7 MB (23742143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a856d73808fb485ed6095728ad604e7ac5714d89879443fa66915a1a4ba84714`  
		Last Modified: Thu, 05 Nov 2026 08:36:29 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba180d0b505c2c2ef68fc04a276f78fd17e745ce9b007115713728fee68df65c`  
		Last Modified: Thu, 05 Nov 2026 08:36:29 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:fb46f1baf52a3aa2939758494bbd4169c05f53ab2f96e77c34dc41d021e8c919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4611942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d65277a5e5c5bab36ae5429e5210a28e68510010b8f90e5993660d4c87bbc9aa`

```dockerfile
```

-	Layers:
	-	`sha256:0e9bb97ad3cd7ce624dd015881956e5bd3b0d44ad611e49a479132f926ddc5ab`  
		Last Modified: Thu, 05 Nov 2026 08:36:29 GMT  
		Size: 4.6 MB (4599576 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:767a5cd101609c9cb8a7eb4d5cee5ce6a3611fc3fb731b684d99ed16ea86152c`  
		Last Modified: Thu, 05 Nov 2026 08:36:29 GMT  
		Size: 12.4 KB (12366 bytes)  
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
$ docker pull influxdb@sha256:ffa96366d916545608b8ae8dcc09d1efb5d792e4139096dfdcb1daf8789b211a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:1.13.2` - linux; amd64

```console
$ docker pull influxdb@sha256:d4b2bbbe05e012eaba0e68ee0d4f74567ca22efc34f6de8bcc7aede9937a3977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.7 MB (125651001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f57d63ed7916ef976adf05471ba4b36afbba5e4c042cded3af3bd13929ddc7ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:35:44 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Thu, 05 Nov 2026 08:35:49 GMT
ENV INFLUXDB_VERSION=1.13.2
# Thu, 05 Nov 2026 08:35:49 GMT
ENV INFLUXDB_PR=-1
# Thu, 05 Nov 2026 08:35:49 GMT
ENV INFLUXDB_PV=1.13.2-1
# Thu, 05 Nov 2026 08:35:49 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:35:49 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 08:35:49 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 08:35:49 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 08:35:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:35:49 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 08:35:49 GMT
USER influxdb
# Thu, 05 Nov 2026 08:35:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 08:35:49 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b58dda8220eb04507eec28c7541efaa5015235bd6bc88adbae567ca8ed44354`  
		Last Modified: Thu, 05 Nov 2026 08:36:01 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7941c9cef1e97bae5c42c9173bc8e9233c988da91382bd06d05f2e47ae51c93d`  
		Last Modified: Thu, 05 Nov 2026 08:36:02 GMT  
		Size: 53.2 MB (53248390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae6ce08ce27b4d272ba9b86b3ea0939e564556d233aab160e86f1903f112537`  
		Last Modified: Thu, 05 Nov 2026 08:36:01 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5263c98cdb43cbf5184f54c018d402d6ae581e4ee1e4348c38b5eeb3da9d9c89`  
		Last Modified: Thu, 05 Nov 2026 08:36:01 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd3ccff36a530cf797885eab804ccb5c21f1b6fbcfd45f26583ee0abe36078b`  
		Last Modified: Thu, 05 Nov 2026 08:36:02 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13.2` - unknown; unknown

```console
$ docker pull influxdb@sha256:fa62665e12a6f69e50db6e49664503471a78209652e61016227f0e8188db56cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4712058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b31d4e8d31be61237a307aa7888befd9bdb8791435f77b7fe69bf6df66e45206`

```dockerfile
```

-	Layers:
	-	`sha256:a81bc36de8afded1bd48573ed255847f875657902c016d9004775e6acc846575`  
		Last Modified: Thu, 05 Nov 2026 08:36:01 GMT  
		Size: 4.7 MB (4695529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:303e1a0bf72afdfedbc5f8d4243fa392fb2cbbd0d75b151998697f5002e8ffca`  
		Last Modified: Thu, 05 Nov 2026 08:36:01 GMT  
		Size: 16.5 KB (16529 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:1.13.2` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:9949656fdb1afdd4dfbda657dc1bf53e80c278da3c33d1979519855c0d263d23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (121017185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb073d846492a3acd847c9e517a3b2ea66ba1b16613b27343b435fdac3a3bd0e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:33:55 GMT
RUN addgroup --system --gid 1500 influxdb &&     adduser --system --uid 1500 --ingroup influxdb --home /var/lib/influxdb --shell /bin/false influxdb # buildkit
# Thu, 05 Nov 2026 08:34:01 GMT
ENV INFLUXDB_VERSION=1.13.2
# Thu, 05 Nov 2026 08:34:01 GMT
ENV INFLUXDB_PR=-1
# Thu, 05 Nov 2026 08:34:01 GMT
ENV INFLUXDB_PV=1.13.2-1
# Thu, 05 Nov 2026 08:34:01 GMT
RUN set -x &&     case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/v${INFLUXDB_VERSION}/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"         "influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb_${INFLUXDB_PV}_${ARCH}.deb" &&     rm -r "influxdb_${INFLUXDB_PV}_${ARCH}.deb.asc"           "influxdb_${INFLUXDB_PV}_${ARCH}.deb"           /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:34:01 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 08:34:01 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 08:34:01 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 08:34:01 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:34:01 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 08:34:01 GMT
USER influxdb
# Thu, 05 Nov 2026 08:34:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 08:34:01 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f962a36433fe573f438fb09f04f27913e8ec48ff357c8438b3a9fb04446cba5`  
		Last Modified: Thu, 05 Nov 2026 08:34:14 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c0a996642ca3d8226479484d1edf915c0345777b692060b22851366ad36b77`  
		Last Modified: Thu, 05 Nov 2026 08:34:15 GMT  
		Size: 49.2 MB (49161159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52eced7e73152a202b76b1c6064dbfb68c59a339cc4d04d01127a99fa31a8ba8`  
		Last Modified: Thu, 05 Nov 2026 08:34:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea56afac3101d70da3b5a059e25ace5f05a02371df28e273a27be24a8f9d7a15`  
		Last Modified: Thu, 05 Nov 2026 08:34:14 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcc12e743052bd5d4bc6c1d157e77c1329b29e46563567d027ec2a0447eac089`  
		Last Modified: Thu, 05 Nov 2026 08:34:15 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13.2` - unknown; unknown

```console
$ docker pull influxdb@sha256:f8d3930b0af3f009b5a82bba69259d1f2c38579be3a90493edaaea5cdeb41d0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4711103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5746b65bca12cbb0ef5b9aa9897b49e1a51f5ee9e243cf6f435c4ae6b6998647`

```dockerfile
```

-	Layers:
	-	`sha256:c305c911fd60c71cd56e086afbf4d0e9b95ab64653ecddbaee038baf8d2fb34d`  
		Last Modified: Thu, 05 Nov 2026 08:34:14 GMT  
		Size: 4.7 MB (4694479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f060aab4a805dfe0bfa836f59408dbf90172cc94abb11da30ddbe5e753d42ede`  
		Last Modified: Thu, 05 Nov 2026 08:34:14 GMT  
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
$ docker pull influxdb@sha256:daf370c07243c2707e32170e1f3e1232a015e16d257c5a6d81b2308e042f1586
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.13.2-data` - linux; amd64

```console
$ docker pull influxdb@sha256:d1da6f5dbd99d1888e5f897f27a8642f772961c7078bb88355b30ab6c38e215c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.7 MB (126743299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0520fab34ab0edca2c97ab787bb6704bebf5653b1b8c57c7a9a95f148397fbc0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:36:04 GMT
ENV INFLUXDB_VERSION=1.13.2-c1.13.2
# Thu, 05 Nov 2026 08:36:04 GMT
ENV INFLUXDB_PR=
# Thu, 05 Nov 2026 08:36:04 GMT
ENV INFLUXDB_PV=1.13.2-c1.13.2
# Thu, 05 Nov 2026 08:36:04 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-data_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:36:04 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Thu, 05 Nov 2026 08:36:04 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 08:36:04 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 08:36:05 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:36:05 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Thu, 05 Nov 2026 08:36:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 08:36:05 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf27d371b3c8e652acb7144a427759fa6ba12be54e9fb7ab5fe8688f54fa941`  
		Last Modified: Thu, 05 Nov 2026 08:36:19 GMT  
		Size: 54.3 MB (54341829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f71e2766c4a020860531c623a0f62bbe4f6a9378dc01dad214e91a9895030480`  
		Last Modified: Thu, 05 Nov 2026 08:36:17 GMT  
		Size: 241.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0efbe8642fdfeae17ac64db38c5092df31e0ea7f6b890843b210fae7bd79b28d`  
		Last Modified: Thu, 05 Nov 2026 08:36:17 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cd502de756affe804394b8a9e0c330abc939fca27c6ecb3b8f8a32cad24a353`  
		Last Modified: Thu, 05 Nov 2026 08:36:17 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13.2-data` - unknown; unknown

```console
$ docker pull influxdb@sha256:76085dc759d5dfad571cde6837a80fa9467f1304b7dfd893a455ebbfb0b7d748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4721392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0207b8918bcc670b6d1f24c2ab43d684618e3dadd105ddccc003c3bcf3c20b5`

```dockerfile
```

-	Layers:
	-	`sha256:ea517f0d782d4e77188978488e246ced4f1ccec3a972636666ec29234317ea79`  
		Last Modified: Thu, 05 Nov 2026 08:36:17 GMT  
		Size: 4.7 MB (4707536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8aa82bd9c43c89f744d9857eb95339fe067bcbb9ec2a1dced59d336888d141ad`  
		Last Modified: Thu, 05 Nov 2026 08:36:17 GMT  
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
$ docker pull influxdb@sha256:980548709619e3e72fa34d35e5b5d1c8435dcbfe86d49c136350f032cd411d0b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:1.13.2-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:d2dbac7a2a2b9c725fe390c95fd5b1053081583333fc7500cb857c6a465e5cee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96142414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4efd30eb64460db7faabea7cdb08f0226a8a77694ad58818f9750ae55b0b52`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:36:20 GMT
ENV INFLUXDB_VERSION=1.13.2-c1.13.2
# Thu, 05 Nov 2026 08:36:20 GMT
ENV INFLUXDB_PR=
# Thu, 05 Nov 2026 08:36:20 GMT
ENV INFLUXDB_PV=1.13.2-c1.13.2
# Thu, 05 Nov 2026 08:36:20 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-meta_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:36:20 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Thu, 05 Nov 2026 08:36:20 GMT
EXPOSE map[8091/tcp:{}]
# Thu, 05 Nov 2026 08:36:20 GMT
VOLUME [/var/lib/influxdb]
# Thu, 05 Nov 2026 08:36:20 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 08:36:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 08:36:20 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4d357fbf35c05e8c4c2117c63a27a80cc2dc1dc37514c3f5aee2bbffa001f4`  
		Last Modified: Thu, 05 Nov 2026 08:36:30 GMT  
		Size: 23.7 MB (23742143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a856d73808fb485ed6095728ad604e7ac5714d89879443fa66915a1a4ba84714`  
		Last Modified: Thu, 05 Nov 2026 08:36:29 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba180d0b505c2c2ef68fc04a276f78fd17e745ce9b007115713728fee68df65c`  
		Last Modified: Thu, 05 Nov 2026 08:36:29 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:1.13.2-meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:fb46f1baf52a3aa2939758494bbd4169c05f53ab2f96e77c34dc41d021e8c919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4611942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d65277a5e5c5bab36ae5429e5210a28e68510010b8f90e5993660d4c87bbc9aa`

```dockerfile
```

-	Layers:
	-	`sha256:0e9bb97ad3cd7ce624dd015881956e5bd3b0d44ad611e49a479132f926ddc5ab`  
		Last Modified: Thu, 05 Nov 2026 08:36:29 GMT  
		Size: 4.6 MB (4599576 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:767a5cd101609c9cb8a7eb4d5cee5ce6a3611fc3fb731b684d99ed16ea86152c`  
		Last Modified: Thu, 05 Nov 2026 08:36:29 GMT  
		Size: 12.4 KB (12366 bytes)  
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
$ docker pull influxdb@sha256:33f4eef7ca7859f3c24021c5fa20a4ca7d1d34f049bb011c32787a35cf096b85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2` - linux; amd64

```console
$ docker pull influxdb@sha256:b1f0e86eb8ecd18295f48b061336f445bf587228156c41cf33d20c077f66031d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112648325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c6c28fdbe29e2600354869e713678f942afb418a58d6ed86c833a58cea7c91e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:13:05 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:13:05 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 18 Nov 2026 21:13:05 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Wed, 18 Nov 2026 21:13:09 GMT
ENV INFLUXDB_VERSION=2.10.1
# Wed, 18 Nov 2026 21:13:09 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 18 Nov 2026 21:13:09 GMT
ENV INFLUX_CLI_VERSION=2.9.1
# Wed, 18 Nov 2026 21:13:10 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 18 Nov 2026 21:13:11 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 18 Nov 2026 21:13:11 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 18 Nov 2026 21:13:11 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 18 Nov 2026 21:13:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:13:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:13:11 GMT
CMD ["influxd"]
# Wed, 18 Nov 2026 21:13:11 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 21:13:11 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 18 Nov 2026 21:13:11 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 18 Nov 2026 21:13:11 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 18 Nov 2026 21:13:11 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bfb5d6fa0bdcf8b5258d78b41a9f15f5c7d317e907cabde265dc40f40924d9b`  
		Last Modified: Wed, 18 Nov 2026 21:13:23 GMT  
		Size: 9.6 MB (9624779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c894936870d3c6940872cfadd24acc1a2cdcb7ecee6deb2e0df79876dbdd16bd`  
		Last Modified: Wed, 18 Nov 2026 21:13:22 GMT  
		Size: 3.8 MB (3822785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb2363065c2ff397e127f6e95667b5ee9dc23b0b699f5b0bf690c2f6eab36e3b`  
		Last Modified: Wed, 18 Nov 2026 21:13:22 GMT  
		Size: 3.2 KB (3230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2a9f3c90caef0d68f55a1e3df889593e63316a96cea8dcf265f9ff7a948464`  
		Last Modified: Wed, 18 Nov 2026 21:13:24 GMT  
		Size: 57.5 MB (57465442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d97696892e158fa2cf38d50b286c5e33acfd7ec92404a82eb7d33e13ff0a96`  
		Last Modified: Wed, 18 Nov 2026 21:13:24 GMT  
		Size: 13.5 MB (13476873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93adad60ed5e6dfd706b019c7228cc34c8a6542a6b19d5899a7aae388287a09a`  
		Last Modified: Wed, 18 Nov 2026 21:13:23 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12781cc4e0c5af46df6e24ccc19219c3d93b9755fa00917fc30fff9bcef87196`  
		Last Modified: Wed, 18 Nov 2026 21:13:24 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07fef0c0016e0596104c7d4f6f47c340717a30dc76d8cf43eac47a206d98ebb2`  
		Last Modified: Wed, 18 Nov 2026 21:13:25 GMT  
		Size: 6.8 KB (6792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2` - unknown; unknown

```console
$ docker pull influxdb@sha256:b8327d4f98d8e55ae532f267d0634f169a8addc7800e5f48f0e86c78f77219d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2996220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99c72ce370436f09404b45a2f70faa621f50dd691d264a568f3d0d6660318b0e`

```dockerfile
```

-	Layers:
	-	`sha256:2b62d3c6e98a741caf186e31d8bb5fece4bd238ca0a08b14163f04b2b51887a0`  
		Last Modified: Wed, 18 Nov 2026 21:13:22 GMT  
		Size: 3.0 MB (2967596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d68f4550642a7d0877d117444fb51b4f898ba7d12e9350a08d4382bccb3113cd`  
		Last Modified: Wed, 18 Nov 2026 21:13:22 GMT  
		Size: 28.6 KB (28624 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:01d62dd8024d56951b8c76cbfcf87ab2b63f12b2105c9a99dbedc703fcfce881
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.0 MB (107999322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a604021464d0580baafd41c2ed281a562f4f7d2c1bd8151c17dccbe6e97f1ea4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:13:09 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:13:10 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 18 Nov 2026 21:13:10 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Wed, 18 Nov 2026 21:13:13 GMT
ENV INFLUXDB_VERSION=2.10.1
# Wed, 18 Nov 2026 21:13:13 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 18 Nov 2026 21:13:13 GMT
ENV INFLUX_CLI_VERSION=2.9.1
# Wed, 18 Nov 2026 21:13:15 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 18 Nov 2026 21:13:15 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 18 Nov 2026 21:13:15 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 18 Nov 2026 21:13:15 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 18 Nov 2026 21:13:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:13:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:13:15 GMT
CMD ["influxd"]
# Wed, 18 Nov 2026 21:13:15 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 21:13:15 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 18 Nov 2026 21:13:15 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 18 Nov 2026 21:13:15 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 18 Nov 2026 21:13:15 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:581651f424fd3018f79f8d127bd774f11c994789c78aa2167444036b7a427e20`  
		Last Modified: Wed, 18 Nov 2026 21:13:27 GMT  
		Size: 9.4 MB (9449016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6e985e42092be9f30462ab755d4cd81c8c1baf37fdc5c6badd74da484c7b9ab`  
		Last Modified: Wed, 18 Nov 2026 21:13:27 GMT  
		Size: 3.5 MB (3459176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5382f16a0fdc17284edac5f862b2b20087a1a88bedc7752043c22658b7abb866`  
		Last Modified: Wed, 18 Nov 2026 21:13:27 GMT  
		Size: 3.2 KB (3230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5766a78eb1778e5e9349cb125e6d395cd69a78701a437e497ab9584152000495`  
		Last Modified: Wed, 18 Nov 2026 21:13:28 GMT  
		Size: 54.6 MB (54555411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f3fa27af005b56a3cc98af9eeff0acd6eb523f1390e7c45a2d4847af19fd26`  
		Last Modified: Wed, 18 Nov 2026 21:13:28 GMT  
		Size: 12.4 MB (12380899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c586371684380c7f19607006ce540a4ef87490b7b2b850c821753d284fa063c7`  
		Last Modified: Wed, 18 Nov 2026 21:13:28 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11cc8487d04af938655be5d092e3188b77f18927afacef2c856d8e5342b6ba8`  
		Last Modified: Wed, 18 Nov 2026 21:13:28 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2843e33d7e4880ee4c7c1227fe9d193d4e903964832cc44bcec9590d794955ae`  
		Last Modified: Wed, 18 Nov 2026 21:13:29 GMT  
		Size: 6.8 KB (6790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2` - unknown; unknown

```console
$ docker pull influxdb@sha256:99a0180ab0bcb1498c4f8ecaa0f14311ca898a58b3c86d005e917b681ce5eef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2995877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed717ad5518f5f62500b08b8ceeaa5629d6fe52cb299cd349fd30e64742625de`

```dockerfile
```

-	Layers:
	-	`sha256:e1e4f1112bad1a4768b2216e183e833fd06344755c99e271bb472747c952019a`  
		Last Modified: Wed, 18 Nov 2026 21:13:27 GMT  
		Size: 3.0 MB (2967074 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2400234a495fa3fedfcf702142330500f6343f11312825b212c00396e79167bf`  
		Last Modified: Wed, 18 Nov 2026 21:13:26 GMT  
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
$ docker pull influxdb@sha256:33f4eef7ca7859f3c24021c5fa20a4ca7d1d34f049bb011c32787a35cf096b85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.10` - linux; amd64

```console
$ docker pull influxdb@sha256:b1f0e86eb8ecd18295f48b061336f445bf587228156c41cf33d20c077f66031d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112648325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c6c28fdbe29e2600354869e713678f942afb418a58d6ed86c833a58cea7c91e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:13:05 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:13:05 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 18 Nov 2026 21:13:05 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Wed, 18 Nov 2026 21:13:09 GMT
ENV INFLUXDB_VERSION=2.10.1
# Wed, 18 Nov 2026 21:13:09 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 18 Nov 2026 21:13:09 GMT
ENV INFLUX_CLI_VERSION=2.9.1
# Wed, 18 Nov 2026 21:13:10 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 18 Nov 2026 21:13:11 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 18 Nov 2026 21:13:11 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 18 Nov 2026 21:13:11 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 18 Nov 2026 21:13:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:13:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:13:11 GMT
CMD ["influxd"]
# Wed, 18 Nov 2026 21:13:11 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 21:13:11 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 18 Nov 2026 21:13:11 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 18 Nov 2026 21:13:11 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 18 Nov 2026 21:13:11 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bfb5d6fa0bdcf8b5258d78b41a9f15f5c7d317e907cabde265dc40f40924d9b`  
		Last Modified: Wed, 18 Nov 2026 21:13:23 GMT  
		Size: 9.6 MB (9624779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c894936870d3c6940872cfadd24acc1a2cdcb7ecee6deb2e0df79876dbdd16bd`  
		Last Modified: Wed, 18 Nov 2026 21:13:22 GMT  
		Size: 3.8 MB (3822785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb2363065c2ff397e127f6e95667b5ee9dc23b0b699f5b0bf690c2f6eab36e3b`  
		Last Modified: Wed, 18 Nov 2026 21:13:22 GMT  
		Size: 3.2 KB (3230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2a9f3c90caef0d68f55a1e3df889593e63316a96cea8dcf265f9ff7a948464`  
		Last Modified: Wed, 18 Nov 2026 21:13:24 GMT  
		Size: 57.5 MB (57465442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d97696892e158fa2cf38d50b286c5e33acfd7ec92404a82eb7d33e13ff0a96`  
		Last Modified: Wed, 18 Nov 2026 21:13:24 GMT  
		Size: 13.5 MB (13476873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93adad60ed5e6dfd706b019c7228cc34c8a6542a6b19d5899a7aae388287a09a`  
		Last Modified: Wed, 18 Nov 2026 21:13:23 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12781cc4e0c5af46df6e24ccc19219c3d93b9755fa00917fc30fff9bcef87196`  
		Last Modified: Wed, 18 Nov 2026 21:13:24 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07fef0c0016e0596104c7d4f6f47c340717a30dc76d8cf43eac47a206d98ebb2`  
		Last Modified: Wed, 18 Nov 2026 21:13:25 GMT  
		Size: 6.8 KB (6792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.10` - unknown; unknown

```console
$ docker pull influxdb@sha256:b8327d4f98d8e55ae532f267d0634f169a8addc7800e5f48f0e86c78f77219d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2996220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99c72ce370436f09404b45a2f70faa621f50dd691d264a568f3d0d6660318b0e`

```dockerfile
```

-	Layers:
	-	`sha256:2b62d3c6e98a741caf186e31d8bb5fece4bd238ca0a08b14163f04b2b51887a0`  
		Last Modified: Wed, 18 Nov 2026 21:13:22 GMT  
		Size: 3.0 MB (2967596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d68f4550642a7d0877d117444fb51b4f898ba7d12e9350a08d4382bccb3113cd`  
		Last Modified: Wed, 18 Nov 2026 21:13:22 GMT  
		Size: 28.6 KB (28624 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.10` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:01d62dd8024d56951b8c76cbfcf87ab2b63f12b2105c9a99dbedc703fcfce881
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.0 MB (107999322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a604021464d0580baafd41c2ed281a562f4f7d2c1bd8151c17dccbe6e97f1ea4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:13:09 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:13:10 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 18 Nov 2026 21:13:10 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Wed, 18 Nov 2026 21:13:13 GMT
ENV INFLUXDB_VERSION=2.10.1
# Wed, 18 Nov 2026 21:13:13 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 18 Nov 2026 21:13:13 GMT
ENV INFLUX_CLI_VERSION=2.9.1
# Wed, 18 Nov 2026 21:13:15 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 18 Nov 2026 21:13:15 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 18 Nov 2026 21:13:15 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 18 Nov 2026 21:13:15 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 18 Nov 2026 21:13:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:13:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:13:15 GMT
CMD ["influxd"]
# Wed, 18 Nov 2026 21:13:15 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 21:13:15 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 18 Nov 2026 21:13:15 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 18 Nov 2026 21:13:15 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 18 Nov 2026 21:13:15 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:581651f424fd3018f79f8d127bd774f11c994789c78aa2167444036b7a427e20`  
		Last Modified: Wed, 18 Nov 2026 21:13:27 GMT  
		Size: 9.4 MB (9449016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6e985e42092be9f30462ab755d4cd81c8c1baf37fdc5c6badd74da484c7b9ab`  
		Last Modified: Wed, 18 Nov 2026 21:13:27 GMT  
		Size: 3.5 MB (3459176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5382f16a0fdc17284edac5f862b2b20087a1a88bedc7752043c22658b7abb866`  
		Last Modified: Wed, 18 Nov 2026 21:13:27 GMT  
		Size: 3.2 KB (3230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5766a78eb1778e5e9349cb125e6d395cd69a78701a437e497ab9584152000495`  
		Last Modified: Wed, 18 Nov 2026 21:13:28 GMT  
		Size: 54.6 MB (54555411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f3fa27af005b56a3cc98af9eeff0acd6eb523f1390e7c45a2d4847af19fd26`  
		Last Modified: Wed, 18 Nov 2026 21:13:28 GMT  
		Size: 12.4 MB (12380899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c586371684380c7f19607006ce540a4ef87490b7b2b850c821753d284fa063c7`  
		Last Modified: Wed, 18 Nov 2026 21:13:28 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11cc8487d04af938655be5d092e3188b77f18927afacef2c856d8e5342b6ba8`  
		Last Modified: Wed, 18 Nov 2026 21:13:28 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2843e33d7e4880ee4c7c1227fe9d193d4e903964832cc44bcec9590d794955ae`  
		Last Modified: Wed, 18 Nov 2026 21:13:29 GMT  
		Size: 6.8 KB (6790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.10` - unknown; unknown

```console
$ docker pull influxdb@sha256:99a0180ab0bcb1498c4f8ecaa0f14311ca898a58b3c86d005e917b681ce5eef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2995877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed717ad5518f5f62500b08b8ceeaa5629d6fe52cb299cd349fd30e64742625de`

```dockerfile
```

-	Layers:
	-	`sha256:e1e4f1112bad1a4768b2216e183e833fd06344755c99e271bb472747c952019a`  
		Last Modified: Wed, 18 Nov 2026 21:13:27 GMT  
		Size: 3.0 MB (2967074 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2400234a495fa3fedfcf702142330500f6343f11312825b212c00396e79167bf`  
		Last Modified: Wed, 18 Nov 2026 21:13:26 GMT  
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
$ docker pull influxdb@sha256:33f4eef7ca7859f3c24021c5fa20a4ca7d1d34f049bb011c32787a35cf096b85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.10.1` - linux; amd64

```console
$ docker pull influxdb@sha256:b1f0e86eb8ecd18295f48b061336f445bf587228156c41cf33d20c077f66031d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112648325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c6c28fdbe29e2600354869e713678f942afb418a58d6ed86c833a58cea7c91e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:13:05 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:13:05 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 18 Nov 2026 21:13:05 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Wed, 18 Nov 2026 21:13:09 GMT
ENV INFLUXDB_VERSION=2.10.1
# Wed, 18 Nov 2026 21:13:09 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 18 Nov 2026 21:13:09 GMT
ENV INFLUX_CLI_VERSION=2.9.1
# Wed, 18 Nov 2026 21:13:10 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 18 Nov 2026 21:13:11 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 18 Nov 2026 21:13:11 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 18 Nov 2026 21:13:11 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 18 Nov 2026 21:13:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:13:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:13:11 GMT
CMD ["influxd"]
# Wed, 18 Nov 2026 21:13:11 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 21:13:11 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 18 Nov 2026 21:13:11 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 18 Nov 2026 21:13:11 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 18 Nov 2026 21:13:11 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bfb5d6fa0bdcf8b5258d78b41a9f15f5c7d317e907cabde265dc40f40924d9b`  
		Last Modified: Wed, 18 Nov 2026 21:13:23 GMT  
		Size: 9.6 MB (9624779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c894936870d3c6940872cfadd24acc1a2cdcb7ecee6deb2e0df79876dbdd16bd`  
		Last Modified: Wed, 18 Nov 2026 21:13:22 GMT  
		Size: 3.8 MB (3822785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb2363065c2ff397e127f6e95667b5ee9dc23b0b699f5b0bf690c2f6eab36e3b`  
		Last Modified: Wed, 18 Nov 2026 21:13:22 GMT  
		Size: 3.2 KB (3230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2a9f3c90caef0d68f55a1e3df889593e63316a96cea8dcf265f9ff7a948464`  
		Last Modified: Wed, 18 Nov 2026 21:13:24 GMT  
		Size: 57.5 MB (57465442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d97696892e158fa2cf38d50b286c5e33acfd7ec92404a82eb7d33e13ff0a96`  
		Last Modified: Wed, 18 Nov 2026 21:13:24 GMT  
		Size: 13.5 MB (13476873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93adad60ed5e6dfd706b019c7228cc34c8a6542a6b19d5899a7aae388287a09a`  
		Last Modified: Wed, 18 Nov 2026 21:13:23 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12781cc4e0c5af46df6e24ccc19219c3d93b9755fa00917fc30fff9bcef87196`  
		Last Modified: Wed, 18 Nov 2026 21:13:24 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07fef0c0016e0596104c7d4f6f47c340717a30dc76d8cf43eac47a206d98ebb2`  
		Last Modified: Wed, 18 Nov 2026 21:13:25 GMT  
		Size: 6.8 KB (6792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.10.1` - unknown; unknown

```console
$ docker pull influxdb@sha256:b8327d4f98d8e55ae532f267d0634f169a8addc7800e5f48f0e86c78f77219d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2996220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99c72ce370436f09404b45a2f70faa621f50dd691d264a568f3d0d6660318b0e`

```dockerfile
```

-	Layers:
	-	`sha256:2b62d3c6e98a741caf186e31d8bb5fece4bd238ca0a08b14163f04b2b51887a0`  
		Last Modified: Wed, 18 Nov 2026 21:13:22 GMT  
		Size: 3.0 MB (2967596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d68f4550642a7d0877d117444fb51b4f898ba7d12e9350a08d4382bccb3113cd`  
		Last Modified: Wed, 18 Nov 2026 21:13:22 GMT  
		Size: 28.6 KB (28624 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.10.1` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:01d62dd8024d56951b8c76cbfcf87ab2b63f12b2105c9a99dbedc703fcfce881
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.0 MB (107999322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a604021464d0580baafd41c2ed281a562f4f7d2c1bd8151c17dccbe6e97f1ea4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:13:09 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:13:10 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 18 Nov 2026 21:13:10 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Wed, 18 Nov 2026 21:13:13 GMT
ENV INFLUXDB_VERSION=2.10.1
# Wed, 18 Nov 2026 21:13:13 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 18 Nov 2026 21:13:13 GMT
ENV INFLUX_CLI_VERSION=2.9.1
# Wed, 18 Nov 2026 21:13:15 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 18 Nov 2026 21:13:15 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 18 Nov 2026 21:13:15 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 18 Nov 2026 21:13:15 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 18 Nov 2026 21:13:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:13:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:13:15 GMT
CMD ["influxd"]
# Wed, 18 Nov 2026 21:13:15 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 21:13:15 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 18 Nov 2026 21:13:15 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 18 Nov 2026 21:13:15 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 18 Nov 2026 21:13:15 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:581651f424fd3018f79f8d127bd774f11c994789c78aa2167444036b7a427e20`  
		Last Modified: Wed, 18 Nov 2026 21:13:27 GMT  
		Size: 9.4 MB (9449016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6e985e42092be9f30462ab755d4cd81c8c1baf37fdc5c6badd74da484c7b9ab`  
		Last Modified: Wed, 18 Nov 2026 21:13:27 GMT  
		Size: 3.5 MB (3459176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5382f16a0fdc17284edac5f862b2b20087a1a88bedc7752043c22658b7abb866`  
		Last Modified: Wed, 18 Nov 2026 21:13:27 GMT  
		Size: 3.2 KB (3230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5766a78eb1778e5e9349cb125e6d395cd69a78701a437e497ab9584152000495`  
		Last Modified: Wed, 18 Nov 2026 21:13:28 GMT  
		Size: 54.6 MB (54555411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f3fa27af005b56a3cc98af9eeff0acd6eb523f1390e7c45a2d4847af19fd26`  
		Last Modified: Wed, 18 Nov 2026 21:13:28 GMT  
		Size: 12.4 MB (12380899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c586371684380c7f19607006ce540a4ef87490b7b2b850c821753d284fa063c7`  
		Last Modified: Wed, 18 Nov 2026 21:13:28 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11cc8487d04af938655be5d092e3188b77f18927afacef2c856d8e5342b6ba8`  
		Last Modified: Wed, 18 Nov 2026 21:13:28 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2843e33d7e4880ee4c7c1227fe9d193d4e903964832cc44bcec9590d794955ae`  
		Last Modified: Wed, 18 Nov 2026 21:13:29 GMT  
		Size: 6.8 KB (6790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.10.1` - unknown; unknown

```console
$ docker pull influxdb@sha256:99a0180ab0bcb1498c4f8ecaa0f14311ca898a58b3c86d005e917b681ce5eef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2995877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed717ad5518f5f62500b08b8ceeaa5629d6fe52cb299cd349fd30e64742625de`

```dockerfile
```

-	Layers:
	-	`sha256:e1e4f1112bad1a4768b2216e183e833fd06344755c99e271bb472747c952019a`  
		Last Modified: Wed, 18 Nov 2026 21:13:27 GMT  
		Size: 3.0 MB (2967074 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2400234a495fa3fedfcf702142330500f6343f11312825b212c00396e79167bf`  
		Last Modified: Wed, 18 Nov 2026 21:13:26 GMT  
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
$ docker pull influxdb@sha256:e4572d094ac3272f06528ea904ce6b4cb3bb19be2db3b3b1acbd27ba5c3a73e2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.9` - linux; amd64

```console
$ docker pull influxdb@sha256:e92de1b5a10281bd1a47425e5da5027919a4b4e5aa6f401626e71b1ee301ce7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110638374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7065de4560121d934efcfd6f9577feb8207e9662c33a7c3917d5db879ab836ef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:39:15 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:39:15 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Thu, 05 Nov 2026 07:39:15 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Thu, 05 Nov 2026 07:39:18 GMT
ENV INFLUXDB_VERSION=2.9.1
# Thu, 05 Nov 2026 07:39:18 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Thu, 05 Nov 2026 07:39:18 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Thu, 05 Nov 2026 07:39:19 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Thu, 05 Nov 2026 07:39:19 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Thu, 05 Nov 2026 07:39:19 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Thu, 05 Nov 2026 07:39:19 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Thu, 05 Nov 2026 07:39:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 07:39:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 07:39:19 GMT
CMD ["influxd"]
# Thu, 05 Nov 2026 07:39:19 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 07:39:19 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Thu, 05 Nov 2026 07:39:19 GMT
ENV INFLUXD_INIT_PORT=9999
# Thu, 05 Nov 2026 07:39:19 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Thu, 05 Nov 2026 07:39:19 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a437037931704b1a993ebcdc5b3f35345fdb8a8eabe74b53015ef3a6f625ed13`  
		Last Modified: Thu, 05 Nov 2026 07:39:31 GMT  
		Size: 9.6 MB (9624721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37ce2926d081ada6f3c4831c04dd0291129e67ab202d63e0b2ba99f6b056a5e4`  
		Last Modified: Thu, 05 Nov 2026 07:39:30 GMT  
		Size: 3.8 MB (3822783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41a20401263f4b769b58d513529a182f37b27c60a1d37a61c1bbd216855c1cf1`  
		Last Modified: Thu, 05 Nov 2026 07:39:30 GMT  
		Size: 3.2 KB (3227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d89a1330c1e9572df3942cd634ec8ef6ea390305887b39c907d86fffa4deaa0d`  
		Last Modified: Thu, 05 Nov 2026 07:39:32 GMT  
		Size: 56.5 MB (56510607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d21de15e8aad8b329b91771f3637d298316e4de7d337ea48efd47939727c14ac`  
		Last Modified: Thu, 05 Nov 2026 07:39:32 GMT  
		Size: 12.4 MB (12421822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce181453c5e6fb0944d14dc43ec64d93f646d291fb50ba7e98f7bdfe00a298d1`  
		Last Modified: Thu, 05 Nov 2026 07:39:32 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e989ded2b28cda7c3b0d482709520c46f0fd6e50325b52340fb11debe35d9095`  
		Last Modified: Thu, 05 Nov 2026 07:39:32 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef23ed487c801e0e72206b7d5b63b0335f5b663aff6bd1fa907a3c8b35b36fb3`  
		Last Modified: Thu, 05 Nov 2026 07:39:33 GMT  
		Size: 6.8 KB (6790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9` - unknown; unknown

```console
$ docker pull influxdb@sha256:e11a73701cf776a5f5233cf229bb26e91a6fdd1c9d883c3d696cf7b5cf3372a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2992151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2653fa274b7f42253c505851bb5df53285da429924bf9a6f63488d589d49947d`

```dockerfile
```

-	Layers:
	-	`sha256:47996f16c66f8dd36fdc8591712b65e43e864355ade2ba657b82419660b40475`  
		Last Modified: Thu, 05 Nov 2026 07:39:30 GMT  
		Size: 3.0 MB (2963537 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50cf5e84770e93026cf7b269271624f37c3e82b9fcb5e036813c4826c43b70af`  
		Last Modified: Thu, 05 Nov 2026 07:39:30 GMT  
		Size: 28.6 KB (28614 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.9` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:ef2fd8e53289c4e918bb6a7d32d4db711b580715fc5a494d4987d2cebc0caccf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106180100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec89e71763bd33751bc4beab79d2b9694932f22e6032c4a16ac35a9d1902362`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:43:10 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:43:11 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Thu, 05 Nov 2026 07:43:11 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Thu, 05 Nov 2026 07:43:14 GMT
ENV INFLUXDB_VERSION=2.9.1
# Thu, 05 Nov 2026 07:43:14 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Thu, 05 Nov 2026 07:43:14 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Thu, 05 Nov 2026 07:43:16 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Thu, 05 Nov 2026 07:43:16 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Thu, 05 Nov 2026 07:43:16 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Thu, 05 Nov 2026 07:43:16 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Thu, 05 Nov 2026 07:43:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 07:43:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 07:43:16 GMT
CMD ["influxd"]
# Thu, 05 Nov 2026 07:43:16 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 07:43:16 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Thu, 05 Nov 2026 07:43:16 GMT
ENV INFLUXD_INIT_PORT=9999
# Thu, 05 Nov 2026 07:43:16 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Thu, 05 Nov 2026 07:43:16 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f1952b51740ef06e3735316740b84a2463550d4ca48f8bac355c56de7a69ae`  
		Last Modified: Thu, 05 Nov 2026 07:43:28 GMT  
		Size: 9.4 MB (9449000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0df0999c159e1d9bef41907409f5e59d4c360c214af100cf29a01f0678b51e82`  
		Last Modified: Thu, 05 Nov 2026 07:43:27 GMT  
		Size: 3.5 MB (3459172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e0fa1b256b959d627cac4f1c748b2535fcf3fff122004210c749ae7fe6b066c`  
		Last Modified: Thu, 05 Nov 2026 07:43:27 GMT  
		Size: 3.2 KB (3228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ee17b152843471cb1f9b72eced23cba66ef8982cf5eab2e15d8538c8020a84`  
		Last Modified: Thu, 05 Nov 2026 07:43:29 GMT  
		Size: 53.6 MB (53636819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9187a43c0200d07973275e2e644c17ca77e94635be6f69fddd631d8a512b483f`  
		Last Modified: Thu, 05 Nov 2026 07:43:29 GMT  
		Size: 11.5 MB (11480289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2806f36fe3fcee6d18ea291fd6623217f723471c0ff80f23f15550f7ecd41ef`  
		Last Modified: Thu, 05 Nov 2026 07:43:29 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc7992e39db61eb2265add4c5793e7676a34f75ddc827de4824da441045b293c`  
		Last Modified: Thu, 05 Nov 2026 07:43:29 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d903be2c8cd0003678e5757c2a49bca1bbd087456be6c2ad7bc16b43b4b3ed`  
		Last Modified: Thu, 05 Nov 2026 07:43:30 GMT  
		Size: 6.8 KB (6790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9` - unknown; unknown

```console
$ docker pull influxdb@sha256:c9f796bbab765d651ddefcf4c7455073f02067ed612518216675e9cb8541e0f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2991807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc36bb5a3a50b3b993a78f5b0e5566313ddc541d8954121428cb751bfe7ae56b`

```dockerfile
```

-	Layers:
	-	`sha256:08f62e13a61b9451d327ed7a4829f7dd0171671cfe713fdf172a2764c03416e8`  
		Last Modified: Thu, 05 Nov 2026 07:43:28 GMT  
		Size: 3.0 MB (2963015 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f183ea5f774ad2a7d3fe99cbc74e220f488d357c171ecf91526fc8a0ee254b37`  
		Last Modified: Thu, 05 Nov 2026 07:43:27 GMT  
		Size: 28.8 KB (28792 bytes)  
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
$ docker pull influxdb@sha256:e4572d094ac3272f06528ea904ce6b4cb3bb19be2db3b3b1acbd27ba5c3a73e2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:2.9.1` - linux; amd64

```console
$ docker pull influxdb@sha256:e92de1b5a10281bd1a47425e5da5027919a4b4e5aa6f401626e71b1ee301ce7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110638374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7065de4560121d934efcfd6f9577feb8207e9662c33a7c3917d5db879ab836ef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:39:15 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:39:15 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Thu, 05 Nov 2026 07:39:15 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Thu, 05 Nov 2026 07:39:18 GMT
ENV INFLUXDB_VERSION=2.9.1
# Thu, 05 Nov 2026 07:39:18 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Thu, 05 Nov 2026 07:39:18 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Thu, 05 Nov 2026 07:39:19 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Thu, 05 Nov 2026 07:39:19 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Thu, 05 Nov 2026 07:39:19 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Thu, 05 Nov 2026 07:39:19 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Thu, 05 Nov 2026 07:39:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 07:39:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 07:39:19 GMT
CMD ["influxd"]
# Thu, 05 Nov 2026 07:39:19 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 07:39:19 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Thu, 05 Nov 2026 07:39:19 GMT
ENV INFLUXD_INIT_PORT=9999
# Thu, 05 Nov 2026 07:39:19 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Thu, 05 Nov 2026 07:39:19 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a437037931704b1a993ebcdc5b3f35345fdb8a8eabe74b53015ef3a6f625ed13`  
		Last Modified: Thu, 05 Nov 2026 07:39:31 GMT  
		Size: 9.6 MB (9624721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37ce2926d081ada6f3c4831c04dd0291129e67ab202d63e0b2ba99f6b056a5e4`  
		Last Modified: Thu, 05 Nov 2026 07:39:30 GMT  
		Size: 3.8 MB (3822783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41a20401263f4b769b58d513529a182f37b27c60a1d37a61c1bbd216855c1cf1`  
		Last Modified: Thu, 05 Nov 2026 07:39:30 GMT  
		Size: 3.2 KB (3227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d89a1330c1e9572df3942cd634ec8ef6ea390305887b39c907d86fffa4deaa0d`  
		Last Modified: Thu, 05 Nov 2026 07:39:32 GMT  
		Size: 56.5 MB (56510607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d21de15e8aad8b329b91771f3637d298316e4de7d337ea48efd47939727c14ac`  
		Last Modified: Thu, 05 Nov 2026 07:39:32 GMT  
		Size: 12.4 MB (12421822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce181453c5e6fb0944d14dc43ec64d93f646d291fb50ba7e98f7bdfe00a298d1`  
		Last Modified: Thu, 05 Nov 2026 07:39:32 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e989ded2b28cda7c3b0d482709520c46f0fd6e50325b52340fb11debe35d9095`  
		Last Modified: Thu, 05 Nov 2026 07:39:32 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef23ed487c801e0e72206b7d5b63b0335f5b663aff6bd1fa907a3c8b35b36fb3`  
		Last Modified: Thu, 05 Nov 2026 07:39:33 GMT  
		Size: 6.8 KB (6790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9.1` - unknown; unknown

```console
$ docker pull influxdb@sha256:e11a73701cf776a5f5233cf229bb26e91a6fdd1c9d883c3d696cf7b5cf3372a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2992151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2653fa274b7f42253c505851bb5df53285da429924bf9a6f63488d589d49947d`

```dockerfile
```

-	Layers:
	-	`sha256:47996f16c66f8dd36fdc8591712b65e43e864355ade2ba657b82419660b40475`  
		Last Modified: Thu, 05 Nov 2026 07:39:30 GMT  
		Size: 3.0 MB (2963537 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50cf5e84770e93026cf7b269271624f37c3e82b9fcb5e036813c4826c43b70af`  
		Last Modified: Thu, 05 Nov 2026 07:39:30 GMT  
		Size: 28.6 KB (28614 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:2.9.1` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:ef2fd8e53289c4e918bb6a7d32d4db711b580715fc5a494d4987d2cebc0caccf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106180100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec89e71763bd33751bc4beab79d2b9694932f22e6032c4a16ac35a9d1902362`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:43:10 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:43:11 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Thu, 05 Nov 2026 07:43:11 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Thu, 05 Nov 2026 07:43:14 GMT
ENV INFLUXDB_VERSION=2.9.1
# Thu, 05 Nov 2026 07:43:14 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Thu, 05 Nov 2026 07:43:14 GMT
ENV INFLUX_CLI_VERSION=2.8.0
# Thu, 05 Nov 2026 07:43:16 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Thu, 05 Nov 2026 07:43:16 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Thu, 05 Nov 2026 07:43:16 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Thu, 05 Nov 2026 07:43:16 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Thu, 05 Nov 2026 07:43:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 07:43:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 07:43:16 GMT
CMD ["influxd"]
# Thu, 05 Nov 2026 07:43:16 GMT
EXPOSE map[8086/tcp:{}]
# Thu, 05 Nov 2026 07:43:16 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Thu, 05 Nov 2026 07:43:16 GMT
ENV INFLUXD_INIT_PORT=9999
# Thu, 05 Nov 2026 07:43:16 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Thu, 05 Nov 2026 07:43:16 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f1952b51740ef06e3735316740b84a2463550d4ca48f8bac355c56de7a69ae`  
		Last Modified: Thu, 05 Nov 2026 07:43:28 GMT  
		Size: 9.4 MB (9449000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0df0999c159e1d9bef41907409f5e59d4c360c214af100cf29a01f0678b51e82`  
		Last Modified: Thu, 05 Nov 2026 07:43:27 GMT  
		Size: 3.5 MB (3459172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e0fa1b256b959d627cac4f1c748b2535fcf3fff122004210c749ae7fe6b066c`  
		Last Modified: Thu, 05 Nov 2026 07:43:27 GMT  
		Size: 3.2 KB (3228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ee17b152843471cb1f9b72eced23cba66ef8982cf5eab2e15d8538c8020a84`  
		Last Modified: Thu, 05 Nov 2026 07:43:29 GMT  
		Size: 53.6 MB (53636819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9187a43c0200d07973275e2e644c17ca77e94635be6f69fddd631d8a512b483f`  
		Last Modified: Thu, 05 Nov 2026 07:43:29 GMT  
		Size: 11.5 MB (11480289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2806f36fe3fcee6d18ea291fd6623217f723471c0ff80f23f15550f7ecd41ef`  
		Last Modified: Thu, 05 Nov 2026 07:43:29 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc7992e39db61eb2265add4c5793e7676a34f75ddc827de4824da441045b293c`  
		Last Modified: Thu, 05 Nov 2026 07:43:29 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d903be2c8cd0003678e5757c2a49bca1bbd087456be6c2ad7bc16b43b4b3ed`  
		Last Modified: Thu, 05 Nov 2026 07:43:30 GMT  
		Size: 6.8 KB (6790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:2.9.1` - unknown; unknown

```console
$ docker pull influxdb@sha256:c9f796bbab765d651ddefcf4c7455073f02067ed612518216675e9cb8541e0f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2991807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc36bb5a3a50b3b993a78f5b0e5566313ddc541d8954121428cb751bfe7ae56b`

```dockerfile
```

-	Layers:
	-	`sha256:08f62e13a61b9451d327ed7a4829f7dd0171671cfe713fdf172a2764c03416e8`  
		Last Modified: Thu, 05 Nov 2026 07:43:28 GMT  
		Size: 3.0 MB (2963015 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f183ea5f774ad2a7d3fe99cbc74e220f488d357c171ecf91526fc8a0ee254b37`  
		Last Modified: Thu, 05 Nov 2026 07:43:27 GMT  
		Size: 28.8 KB (28792 bytes)  
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
$ docker pull influxdb@sha256:9a4e9f2e69f3bfadc1d7fae592b0187abf1856e2a2dde1b749e7901ceb9c9bbc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3-core` - linux; amd64

```console
$ docker pull influxdb@sha256:61add66e005b5f9f9a6f04521190f524479821afd6353ec50927e3e63f3a38b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.3 MB (156284410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3382a6f5191088f658456bedbf6aeb374c8a5918b52d53c115d0a06aaa699dd`
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
# Fri, 20 Nov 2026 03:22:56 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:22:56 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB_VERSION=3.12.2
# Fri, 20 Nov 2026 03:23:02 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:02 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:02 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:02 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:02 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:02 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:02 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d322fb1fa9cb0b5e742ee63e1e8f87bf086bce26079c94429e9f8148ad474ab`  
		Last Modified: Fri, 20 Nov 2026 03:23:21 GMT  
		Size: 6.6 MB (6633850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e03c5e4deeca7151c45be7052c4a752688265e08a3814a6ed0e96568583e5a49`  
		Last Modified: Fri, 20 Nov 2026 03:23:20 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76879e19085ed4f58b2e78a0778c10c32bbd0553d8bfa1f333eec0ea992b3ef6`  
		Last Modified: Fri, 20 Nov 2026 03:23:23 GMT  
		Size: 119.9 MB (119852939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:337cf5c0a5447088a948c4d083465c15dc44b5f50f4c35cf4dce2f3690fb1c21`  
		Last Modified: Fri, 20 Nov 2026 03:23:20 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2864a41164831a8725307d7aa2bbaeb3747e12a924d1f29ebccffd31ab64c4a`  
		Last Modified: Fri, 20 Nov 2026 03:23:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:64d28ec65dde4a49f37ef1bfabed0737c0141e3aaa7f34e1f3806121c873c6e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376314d243efa05f2af13b61a14cd6d8e0bf57359807c6c2e86cd7d98e4b6c94`

```dockerfile
```

-	Layers:
	-	`sha256:ae1d8e00097dbb912b749be8d2c4f300a6feb3ec812839ecbcc24de433df6a26`  
		Last Modified: Fri, 20 Nov 2026 03:23:20 GMT  
		Size: 2.3 MB (2308623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81796cc7d6d56dd48dae324bfe7742ee8e406be5902428423e78b4e5a8768e3e`  
		Last Modified: Fri, 20 Nov 2026 03:23:21 GMT  
		Size: 17.6 KB (17641 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:c7b501f1737092528e08aaa081677911ae675d9c482e5420c4312c57c5ef7b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145888266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cdd7e9565e1fdd77e71187fdd8bee538a9a9954ae3d9739aa9dd30567788273`
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
# Fri, 20 Nov 2026 03:23:49 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:23:49 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB_VERSION=3.12.2
# Fri, 20 Nov 2026 03:23:55 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:55 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:55 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:55 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:55 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:55 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:55 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8ec1715d3c8474e5cdcd9b313a051dcfa349130ec131717d911602e0abbeb9e`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 6.6 MB (6648126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731901846655b1f4e4f7cf8e2404f6383a915d6f6f574f66e311e12f7dc69303`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 3.6 KB (3646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c720a6db9e7b19f851ff38c4e2a366d38d36bbf386eb0458c7c8077f3848782f`  
		Last Modified: Fri, 20 Nov 2026 03:24:16 GMT  
		Size: 110.3 MB (110270506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86245409f17115625be73380d82d9fcd57a01436c22b2ad9b1cc8cd9917c9f53`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764a5819567a2d667dbfc00d8eb297d1aa2a89b96d9e0a0bc75da752c8f3bb52`  
		Last Modified: Fri, 20 Nov 2026 03:24:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:c6f1e37fef90a80bd8d0103fd7b9486c60ad1a3d5f2af1721cddf1d0f7792235
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b5c4b2a039794a65d7f44c29f794e25de0f49badcdee1f751a7d8ecfd03d2a`

```dockerfile
```

-	Layers:
	-	`sha256:c7ba9552a6d841f052c63e7385e8dd549717fd6962a510e9e046ab65d2aa6050`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 2.3 MB (2309705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d0155164f6300372c2156f922c5bceb840faa186f3e25f8c6c72cd11db58390`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3-enterprise`

```console
$ docker pull influxdb@sha256:144e0f06edd085b8e2b3798dc0a487fe9ab88fc97b0605eab95201582e17ec04
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:7870b0bbc27bc82acb78a4c7c1f9e3bb5fb7f99dfe392f55bd494e32df3ee88e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.2 MB (202150055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a97272d457ae0ae1af2f7f4a15a56b09cf130074804d55d9786e2ac6ade5002`
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
# Fri, 20 Nov 2026 03:23:28 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:23:28 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:37 GMT
ENV INFLUXDB_VERSION=3.12.2
# Fri, 20 Nov 2026 03:23:37 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:37 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:37 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:37 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:37 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:37 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:37 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:37 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:37 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:37 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:37 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:37 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4be67c200b32d2d176a8b5bef666d2c72bb0828790f43002f02706173c25636b`  
		Last Modified: Fri, 20 Nov 2026 03:24:01 GMT  
		Size: 6.6 MB (6633860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d5e17e5388153a0da10306ed58db44291d5f1a63c1b8a5a097cdbf63e37311`  
		Last Modified: Fri, 20 Nov 2026 03:24:01 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27be97ec8a838329ec9bc57a58fa02769bb521b2f5a6dfc762229e2a57bacc87`  
		Last Modified: Fri, 20 Nov 2026 03:24:05 GMT  
		Size: 165.7 MB (165718576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f03c6c02d16c6b513cb0b77abbbdde352ef90e9af0ee2edf56e40d845219652`  
		Last Modified: Fri, 20 Nov 2026 03:24:01 GMT  
		Size: 518.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2fc9cbd045cf627d0162fcfe1dd349ca9e76d797138ab3bd486730190443a8`  
		Last Modified: Fri, 20 Nov 2026 03:24:02 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:44f74767e5ce21afc87f19d38893d259e85b585038e2d594a6e795c02a7f558f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b95897271209885be61d3fffc1efb3ce20d163f415aadbeeb7f50546f2330ae`

```dockerfile
```

-	Layers:
	-	`sha256:356b0cd5fe2232860c2d06510180e4dedfcccf4c021c9614dabb026d979f7b6e`  
		Last Modified: Fri, 20 Nov 2026 03:24:01 GMT  
		Size: 2.3 MB (2308671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:170ef3da11478f02167571c60408ff4c271a050936ba736ecdd24a0b72164e59`  
		Last Modified: Fri, 20 Nov 2026 03:24:01 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:0b3a4581ecb59833792cbbe04ef9a02c8dbcac1adbe15fc6451b4629e0cb036d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189469921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef45398e6ccaec93bce5e9adc0575c412b2e2bfa37751284d105d5bb04f1d45`
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
# Fri, 20 Nov 2026 03:23:48 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:23:48 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:57 GMT
ENV INFLUXDB_VERSION=3.12.2
# Fri, 20 Nov 2026 03:23:57 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:57 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:57 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:57 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:57 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:57 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:57 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:57 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:57 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:57 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:57 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:57 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1176692128a6ad36a9f8c02899c4dd579c5111e691b6dad50129e6cb7a7f4cf4`  
		Last Modified: Fri, 20 Nov 2026 03:24:18 GMT  
		Size: 6.6 MB (6648079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3959d11b65a33f21c76e65d3671d758629f871a25e80739ed8faf068a765141e`  
		Last Modified: Fri, 20 Nov 2026 03:24:18 GMT  
		Size: 3.6 KB (3646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44dcf7c052e59a3e9099c8ce9a6766dd892a754de31be9192c795b85e0bead8`  
		Last Modified: Fri, 20 Nov 2026 03:24:21 GMT  
		Size: 153.9 MB (153852210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2034728561f2ce51a4324ffa7c093c41fd78deb4633c58ae59a4aaa7c52f5922`  
		Last Modified: Fri, 20 Nov 2026 03:24:18 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03c7b54d296e651596f276c37f5f6d80ab5c4d9e8f06871e7b63365499cfb63d`  
		Last Modified: Fri, 20 Nov 2026 03:24:19 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:afdcfd38b3bb32c8eab1414901bca8e982753821bba70189d0b8bccc75b4c554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b223a48cf2c75f6f647e24a5a8181e6587fd8ccf9c042a0bf5189553505036b6`

```dockerfile
```

-	Layers:
	-	`sha256:25de73e193e5b5d0daf68cd1ad60cde09cdcd89d7ac8bcde21c2dae7918ada07`  
		Last Modified: Fri, 20 Nov 2026 03:24:18 GMT  
		Size: 2.3 MB (2309753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:538e27da02a53e73ec31fcb2f1a893e10a52939ecd959e955f3e4f4e449e6782`  
		Last Modified: Fri, 20 Nov 2026 03:24:18 GMT  
		Size: 18.0 KB (17970 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.11-core`

```console
$ docker pull influxdb@sha256:eddf46b5e941bd5e34d4df56d566ba78b998ebfc766924a47671e1b788b136ec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.11-core` - linux; amd64

```console
$ docker pull influxdb@sha256:590feb88f47c18a26ab4bce3f705c4fad7caaf99508b1030727539a437ced863
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.4 MB (149368629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef055281151a832ec6fcdb5f04db6d255e3f91fedbcc46a143bdbc3334c9fe9`
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
# Fri, 20 Nov 2026 03:22:51 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:22:51 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:00 GMT
ENV INFLUXDB_VERSION=3.11.8
# Fri, 20 Nov 2026 03:23:00 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:00 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:00 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:00 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:00 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:00 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:00 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:00 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:00 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:00 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:00 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:00 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4a1eb9ef7b4e8b6c94195caf3b944022aaac4d2231e966df274aae08f6ec34`  
		Last Modified: Fri, 20 Nov 2026 03:23:18 GMT  
		Size: 6.6 MB (6633837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b10ba27e9712236945bc44a49be1433a6a00d72675ef9724383b882d728564`  
		Last Modified: Fri, 20 Nov 2026 03:23:18 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13baea4ffcbadda7186d6ecdfd27769a50696a60cb8ec49690c8e2917779872`  
		Last Modified: Fri, 20 Nov 2026 03:23:20 GMT  
		Size: 112.9 MB (112937171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c16aa9d8d6ccdeaff314f61e700e4784629db656c7905b482e3a790fd50d17bc`  
		Last Modified: Fri, 20 Nov 2026 03:23:18 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a4a32620d6e3fd0de6ff278649fe319e3e652964bf7d7d124559dbbb3ff47fd`  
		Last Modified: Fri, 20 Nov 2026 03:23:19 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:1ba916c44276f885ea1a6d87633d607b4997f4139a43aabe5d75439aa184fa3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2325064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ce4ddf2b08d715b856141392ea4fb8eb6fc6d4280afd2e0a5cc43cd1cbcd81`

```dockerfile
```

-	Layers:
	-	`sha256:6ab021b94f8410ff87eace81d7899510a15073461efa88f052aef3a48c169ee9`  
		Last Modified: Fri, 20 Nov 2026 03:23:18 GMT  
		Size: 2.3 MB (2308023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea6191172c015031e66b2d46e277278f2361b71acff5ba5fd2f05d88f286104d`  
		Last Modified: Fri, 20 Nov 2026 03:23:18 GMT  
		Size: 17.0 KB (17041 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.11-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:b1f8d08408150da8a5a29d8839df100c93ec5e070734a5f50ff01e03665c1838
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.5 MB (140481040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5110eb619cdb5615629ef1b7ee29c179b8dc9b8b579b822c9891b66ba4a9981`
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
# Fri, 20 Nov 2026 03:23:25 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:23:25 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:35 GMT
ENV INFLUXDB_VERSION=3.11.8
# Fri, 20 Nov 2026 03:23:35 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:35 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:35 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:35 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:35 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:35 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:35 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:35 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:35 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:35 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:35 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:35 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07c561293478337795b9eec4b8783bcb0fedf233cc77bf37ed34d9b43ee5d3d`  
		Last Modified: Fri, 20 Nov 2026 03:23:51 GMT  
		Size: 6.6 MB (6648186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52576aba525f0fe5d0ee1aff432423751d45bdc05b36df10a42fb5624c3d47c6`  
		Last Modified: Fri, 20 Nov 2026 03:23:51 GMT  
		Size: 3.6 KB (3649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b1f17473ebda49cf45020e0fea862c4723c92226b846c18233927e7714f3ef3`  
		Last Modified: Fri, 20 Nov 2026 03:23:53 GMT  
		Size: 104.9 MB (104863217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49332ee9d8ee02772c88656ea8c5a308b12a6390c4ad48c24ef868dd31eb1296`  
		Last Modified: Fri, 20 Nov 2026 03:23:51 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae24bb6454037964e25b9559be34e04d26c716ab4491a650d121483afd614bc`  
		Last Modified: Fri, 20 Nov 2026 03:23:52 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:209bd425d67a48b973b313a16b16f4912f3ed1d4b502ccfd8e4216836181a52e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ddb0dfeefb815e39fd83bedcb76edcdc83755f1ecb15214c799ed7b6084b1fe`

```dockerfile
```

-	Layers:
	-	`sha256:addb2329a7139408de65eadf0dd8f6483de4af082ff917c7687c4483785b41d7`  
		Last Modified: Fri, 20 Nov 2026 03:23:51 GMT  
		Size: 2.3 MB (2309081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24f770da1362a58cb9f976c8307ea2ef3f578138920b89450362fe4fceebd25c`  
		Last Modified: Fri, 20 Nov 2026 03:23:51 GMT  
		Size: 17.2 KB (17166 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.11-enterprise`

```console
$ docker pull influxdb@sha256:a38a469c7235427afff8e83e05df6fd5b429be76d5f08380070df4ef2cce6273
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.11-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:9eade8bca28bc72b3303c34e90ee5f51560bb0f3aca0eebbe8f2c551ad960331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.3 MB (184292721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02e8fe930f7b94d0803fc64f33f7bde9e522c5bbfa48bcb27c7b1a45f2b68734`
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
# Fri, 20 Nov 2026 03:22:55 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:22:55 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:10 GMT
ENV INFLUXDB_VERSION=3.11.9
# Fri, 20 Nov 2026 03:23:10 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:10 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:10 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:10 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:10 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:10 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:10 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:10 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:10 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:10 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:10 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:10 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782ed26b57e11f382a5cd69aff5a3729fd514fbc112a1055af28d19c56e63e32`  
		Last Modified: Fri, 20 Nov 2026 03:23:31 GMT  
		Size: 6.6 MB (6633868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65e3bd9ce3ecd09e6a663fc34257cd20e45a86cd6f520bd781f0b174736ba318`  
		Last Modified: Fri, 20 Nov 2026 03:23:31 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa2321168bb1e74c7c36cb6f0a08d572768129afd8cc261f8cf4122965a89dc`  
		Last Modified: Fri, 20 Nov 2026 03:23:34 GMT  
		Size: 147.9 MB (147861231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce886de88660167a1a02cf264f8c97a094fa33e220f66ec26bb8aef6faa2099f`  
		Last Modified: Fri, 20 Nov 2026 03:23:31 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:702dab56c9534059cd006b6beaaa91a6e28b160e2b7b41b72d0e77b32238205d`  
		Last Modified: Fri, 20 Nov 2026 03:23:32 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:0be7d25288bbabb1554e54c73ba5bc483362ec696f00bad21bb2155fa4c49030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2325244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7362aa99fb03f2aaa86c290d38fbf0d498de94421f1621f841490730f514c3d5`

```dockerfile
```

-	Layers:
	-	`sha256:8c90669ca11f0d74038d4ec522c9520186b710c365af2d0a8a8db9005b364834`  
		Last Modified: Fri, 20 Nov 2026 03:23:31 GMT  
		Size: 2.3 MB (2308047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0946c1101b8b1a7d88d3ba25dea5b090390869ab718b9221acfb2fb3a1ddbbe1`  
		Last Modified: Fri, 20 Nov 2026 03:23:30 GMT  
		Size: 17.2 KB (17197 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.11-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:56dec061ad2b31f140ddaf23e811ca4407bb047247148e57f3d813fa0350adc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.6 MB (174630437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9a15539bd3083952ebeda2fbbe3dca2f2ecf1a7e87c13a3777a972847646405`
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
# Fri, 20 Nov 2026 03:23:34 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:23:34 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:48 GMT
ENV INFLUXDB_VERSION=3.11.9
# Fri, 20 Nov 2026 03:23:48 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:48 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:48 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:48 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:48 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:48 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:48 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:48 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:48 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:48 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:48 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:48 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab7546bdfab9ee3174f8f36fc11885547982ed97a140b72f72631e682354572`  
		Last Modified: Fri, 20 Nov 2026 03:24:08 GMT  
		Size: 6.6 MB (6648119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:723dca5a9cdb9f3cfcb38ad9ab17e167ccf5d749cccbb9a1a86c11c5c53754b0`  
		Last Modified: Fri, 20 Nov 2026 03:24:08 GMT  
		Size: 3.6 KB (3648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb92640e25fcc6c157bc7bcc9c5e5b9b33a9f5056f8b3cb8d4834b2acdf73e78`  
		Last Modified: Fri, 20 Nov 2026 03:24:11 GMT  
		Size: 139.0 MB (139012681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fdcb7873d0f6f757755f797329c0ddd90bf8e6635676be83a2576d990cae9cf`  
		Last Modified: Fri, 20 Nov 2026 03:24:08 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0218ad2f490fabc086937910a1e371ef673182697a4620590ba4775b196a5c7e`  
		Last Modified: Fri, 20 Nov 2026 03:24:09 GMT  
		Size: 151.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:be16247bd480402af16b0fc1e3de9cfc38cd9d9dace03182e379f151315875d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae9b5392c5bbe7460597e567e8c23ba0f25f2a5589559531a7c179abbe5c5cc9`

```dockerfile
```

-	Layers:
	-	`sha256:ad0ba3f6e9f71891d1ee8a637e7456c9ec00395fddb46c21f059384ee5e56156`  
		Last Modified: Fri, 20 Nov 2026 03:24:08 GMT  
		Size: 2.3 MB (2309105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eee8f98598c8b3f640f39e185875225bd52c1bc6e3416e62df98f4f85c37146a`  
		Last Modified: Fri, 20 Nov 2026 03:24:08 GMT  
		Size: 17.3 KB (17322 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.11.8-core`

```console
$ docker pull influxdb@sha256:eddf46b5e941bd5e34d4df56d566ba78b998ebfc766924a47671e1b788b136ec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.11.8-core` - linux; amd64

```console
$ docker pull influxdb@sha256:590feb88f47c18a26ab4bce3f705c4fad7caaf99508b1030727539a437ced863
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.4 MB (149368629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ef055281151a832ec6fcdb5f04db6d255e3f91fedbcc46a143bdbc3334c9fe9`
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
# Fri, 20 Nov 2026 03:22:51 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:22:51 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:00 GMT
ENV INFLUXDB_VERSION=3.11.8
# Fri, 20 Nov 2026 03:23:00 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:00 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:00 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:00 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:00 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:00 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:00 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:00 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:00 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:00 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:00 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:00 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4a1eb9ef7b4e8b6c94195caf3b944022aaac4d2231e966df274aae08f6ec34`  
		Last Modified: Fri, 20 Nov 2026 03:23:18 GMT  
		Size: 6.6 MB (6633837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b10ba27e9712236945bc44a49be1433a6a00d72675ef9724383b882d728564`  
		Last Modified: Fri, 20 Nov 2026 03:23:18 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13baea4ffcbadda7186d6ecdfd27769a50696a60cb8ec49690c8e2917779872`  
		Last Modified: Fri, 20 Nov 2026 03:23:20 GMT  
		Size: 112.9 MB (112937171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c16aa9d8d6ccdeaff314f61e700e4784629db656c7905b482e3a790fd50d17bc`  
		Last Modified: Fri, 20 Nov 2026 03:23:18 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a4a32620d6e3fd0de6ff278649fe319e3e652964bf7d7d124559dbbb3ff47fd`  
		Last Modified: Fri, 20 Nov 2026 03:23:19 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11.8-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:1ba916c44276f885ea1a6d87633d607b4997f4139a43aabe5d75439aa184fa3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2325064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ce4ddf2b08d715b856141392ea4fb8eb6fc6d4280afd2e0a5cc43cd1cbcd81`

```dockerfile
```

-	Layers:
	-	`sha256:6ab021b94f8410ff87eace81d7899510a15073461efa88f052aef3a48c169ee9`  
		Last Modified: Fri, 20 Nov 2026 03:23:18 GMT  
		Size: 2.3 MB (2308023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea6191172c015031e66b2d46e277278f2361b71acff5ba5fd2f05d88f286104d`  
		Last Modified: Fri, 20 Nov 2026 03:23:18 GMT  
		Size: 17.0 KB (17041 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.11.8-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:b1f8d08408150da8a5a29d8839df100c93ec5e070734a5f50ff01e03665c1838
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.5 MB (140481040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5110eb619cdb5615629ef1b7ee29c179b8dc9b8b579b822c9891b66ba4a9981`
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
# Fri, 20 Nov 2026 03:23:25 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:23:25 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:35 GMT
ENV INFLUXDB_VERSION=3.11.8
# Fri, 20 Nov 2026 03:23:35 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:35 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:35 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:35 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:35 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:35 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:35 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:35 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:35 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:35 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:35 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:35 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07c561293478337795b9eec4b8783bcb0fedf233cc77bf37ed34d9b43ee5d3d`  
		Last Modified: Fri, 20 Nov 2026 03:23:51 GMT  
		Size: 6.6 MB (6648186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52576aba525f0fe5d0ee1aff432423751d45bdc05b36df10a42fb5624c3d47c6`  
		Last Modified: Fri, 20 Nov 2026 03:23:51 GMT  
		Size: 3.6 KB (3649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b1f17473ebda49cf45020e0fea862c4723c92226b846c18233927e7714f3ef3`  
		Last Modified: Fri, 20 Nov 2026 03:23:53 GMT  
		Size: 104.9 MB (104863217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49332ee9d8ee02772c88656ea8c5a308b12a6390c4ad48c24ef868dd31eb1296`  
		Last Modified: Fri, 20 Nov 2026 03:23:51 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae24bb6454037964e25b9559be34e04d26c716ab4491a650d121483afd614bc`  
		Last Modified: Fri, 20 Nov 2026 03:23:52 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11.8-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:209bd425d67a48b973b313a16b16f4912f3ed1d4b502ccfd8e4216836181a52e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ddb0dfeefb815e39fd83bedcb76edcdc83755f1ecb15214c799ed7b6084b1fe`

```dockerfile
```

-	Layers:
	-	`sha256:addb2329a7139408de65eadf0dd8f6483de4af082ff917c7687c4483785b41d7`  
		Last Modified: Fri, 20 Nov 2026 03:23:51 GMT  
		Size: 2.3 MB (2309081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24f770da1362a58cb9f976c8307ea2ef3f578138920b89450362fe4fceebd25c`  
		Last Modified: Fri, 20 Nov 2026 03:23:51 GMT  
		Size: 17.2 KB (17166 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.11.9-enterprise`

```console
$ docker pull influxdb@sha256:a38a469c7235427afff8e83e05df6fd5b429be76d5f08380070df4ef2cce6273
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.11.9-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:9eade8bca28bc72b3303c34e90ee5f51560bb0f3aca0eebbe8f2c551ad960331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.3 MB (184292721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02e8fe930f7b94d0803fc64f33f7bde9e522c5bbfa48bcb27c7b1a45f2b68734`
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
# Fri, 20 Nov 2026 03:22:55 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:22:55 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:10 GMT
ENV INFLUXDB_VERSION=3.11.9
# Fri, 20 Nov 2026 03:23:10 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:10 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:10 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:10 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:10 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:10 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:10 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:10 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:10 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:10 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:10 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:10 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782ed26b57e11f382a5cd69aff5a3729fd514fbc112a1055af28d19c56e63e32`  
		Last Modified: Fri, 20 Nov 2026 03:23:31 GMT  
		Size: 6.6 MB (6633868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65e3bd9ce3ecd09e6a663fc34257cd20e45a86cd6f520bd781f0b174736ba318`  
		Last Modified: Fri, 20 Nov 2026 03:23:31 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa2321168bb1e74c7c36cb6f0a08d572768129afd8cc261f8cf4122965a89dc`  
		Last Modified: Fri, 20 Nov 2026 03:23:34 GMT  
		Size: 147.9 MB (147861231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce886de88660167a1a02cf264f8c97a094fa33e220f66ec26bb8aef6faa2099f`  
		Last Modified: Fri, 20 Nov 2026 03:23:31 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:702dab56c9534059cd006b6beaaa91a6e28b160e2b7b41b72d0e77b32238205d`  
		Last Modified: Fri, 20 Nov 2026 03:23:32 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11.9-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:0be7d25288bbabb1554e54c73ba5bc483362ec696f00bad21bb2155fa4c49030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2325244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7362aa99fb03f2aaa86c290d38fbf0d498de94421f1621f841490730f514c3d5`

```dockerfile
```

-	Layers:
	-	`sha256:8c90669ca11f0d74038d4ec522c9520186b710c365af2d0a8a8db9005b364834`  
		Last Modified: Fri, 20 Nov 2026 03:23:31 GMT  
		Size: 2.3 MB (2308047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0946c1101b8b1a7d88d3ba25dea5b090390869ab718b9221acfb2fb3a1ddbbe1`  
		Last Modified: Fri, 20 Nov 2026 03:23:30 GMT  
		Size: 17.2 KB (17197 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.11.9-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:56dec061ad2b31f140ddaf23e811ca4407bb047247148e57f3d813fa0350adc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.6 MB (174630437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9a15539bd3083952ebeda2fbbe3dca2f2ecf1a7e87c13a3777a972847646405`
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
# Fri, 20 Nov 2026 03:23:34 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:23:34 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:48 GMT
ENV INFLUXDB_VERSION=3.11.9
# Fri, 20 Nov 2026 03:23:48 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:48 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:48 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:48 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:48 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:48 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:48 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:48 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:48 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:48 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:48 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:48 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab7546bdfab9ee3174f8f36fc11885547982ed97a140b72f72631e682354572`  
		Last Modified: Fri, 20 Nov 2026 03:24:08 GMT  
		Size: 6.6 MB (6648119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:723dca5a9cdb9f3cfcb38ad9ab17e167ccf5d749cccbb9a1a86c11c5c53754b0`  
		Last Modified: Fri, 20 Nov 2026 03:24:08 GMT  
		Size: 3.6 KB (3648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb92640e25fcc6c157bc7bcc9c5e5b9b33a9f5056f8b3cb8d4834b2acdf73e78`  
		Last Modified: Fri, 20 Nov 2026 03:24:11 GMT  
		Size: 139.0 MB (139012681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fdcb7873d0f6f757755f797329c0ddd90bf8e6635676be83a2576d990cae9cf`  
		Last Modified: Fri, 20 Nov 2026 03:24:08 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0218ad2f490fabc086937910a1e371ef673182697a4620590ba4775b196a5c7e`  
		Last Modified: Fri, 20 Nov 2026 03:24:09 GMT  
		Size: 151.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.11.9-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:be16247bd480402af16b0fc1e3de9cfc38cd9d9dace03182e379f151315875d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae9b5392c5bbe7460597e567e8c23ba0f25f2a5589559531a7c179abbe5c5cc9`

```dockerfile
```

-	Layers:
	-	`sha256:ad0ba3f6e9f71891d1ee8a637e7456c9ec00395fddb46c21f059384ee5e56156`  
		Last Modified: Fri, 20 Nov 2026 03:24:08 GMT  
		Size: 2.3 MB (2309105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eee8f98598c8b3f640f39e185875225bd52c1bc6e3416e62df98f4f85c37146a`  
		Last Modified: Fri, 20 Nov 2026 03:24:08 GMT  
		Size: 17.3 KB (17322 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.12-core`

```console
$ docker pull influxdb@sha256:9a4e9f2e69f3bfadc1d7fae592b0187abf1856e2a2dde1b749e7901ceb9c9bbc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.12-core` - linux; amd64

```console
$ docker pull influxdb@sha256:61add66e005b5f9f9a6f04521190f524479821afd6353ec50927e3e63f3a38b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.3 MB (156284410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3382a6f5191088f658456bedbf6aeb374c8a5918b52d53c115d0a06aaa699dd`
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
# Fri, 20 Nov 2026 03:22:56 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:22:56 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB_VERSION=3.12.2
# Fri, 20 Nov 2026 03:23:02 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:02 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:02 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:02 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:02 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:02 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:02 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d322fb1fa9cb0b5e742ee63e1e8f87bf086bce26079c94429e9f8148ad474ab`  
		Last Modified: Fri, 20 Nov 2026 03:23:21 GMT  
		Size: 6.6 MB (6633850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e03c5e4deeca7151c45be7052c4a752688265e08a3814a6ed0e96568583e5a49`  
		Last Modified: Fri, 20 Nov 2026 03:23:20 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76879e19085ed4f58b2e78a0778c10c32bbd0553d8bfa1f333eec0ea992b3ef6`  
		Last Modified: Fri, 20 Nov 2026 03:23:23 GMT  
		Size: 119.9 MB (119852939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:337cf5c0a5447088a948c4d083465c15dc44b5f50f4c35cf4dce2f3690fb1c21`  
		Last Modified: Fri, 20 Nov 2026 03:23:20 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2864a41164831a8725307d7aa2bbaeb3747e12a924d1f29ebccffd31ab64c4a`  
		Last Modified: Fri, 20 Nov 2026 03:23:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.12-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:64d28ec65dde4a49f37ef1bfabed0737c0141e3aaa7f34e1f3806121c873c6e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376314d243efa05f2af13b61a14cd6d8e0bf57359807c6c2e86cd7d98e4b6c94`

```dockerfile
```

-	Layers:
	-	`sha256:ae1d8e00097dbb912b749be8d2c4f300a6feb3ec812839ecbcc24de433df6a26`  
		Last Modified: Fri, 20 Nov 2026 03:23:20 GMT  
		Size: 2.3 MB (2308623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81796cc7d6d56dd48dae324bfe7742ee8e406be5902428423e78b4e5a8768e3e`  
		Last Modified: Fri, 20 Nov 2026 03:23:21 GMT  
		Size: 17.6 KB (17641 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.12-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:c7b501f1737092528e08aaa081677911ae675d9c482e5420c4312c57c5ef7b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145888266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cdd7e9565e1fdd77e71187fdd8bee538a9a9954ae3d9739aa9dd30567788273`
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
# Fri, 20 Nov 2026 03:23:49 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:23:49 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB_VERSION=3.12.2
# Fri, 20 Nov 2026 03:23:55 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:55 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:55 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:55 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:55 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:55 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:55 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8ec1715d3c8474e5cdcd9b313a051dcfa349130ec131717d911602e0abbeb9e`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 6.6 MB (6648126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731901846655b1f4e4f7cf8e2404f6383a915d6f6f574f66e311e12f7dc69303`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 3.6 KB (3646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c720a6db9e7b19f851ff38c4e2a366d38d36bbf386eb0458c7c8077f3848782f`  
		Last Modified: Fri, 20 Nov 2026 03:24:16 GMT  
		Size: 110.3 MB (110270506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86245409f17115625be73380d82d9fcd57a01436c22b2ad9b1cc8cd9917c9f53`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764a5819567a2d667dbfc00d8eb297d1aa2a89b96d9e0a0bc75da752c8f3bb52`  
		Last Modified: Fri, 20 Nov 2026 03:24:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.12-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:c6f1e37fef90a80bd8d0103fd7b9486c60ad1a3d5f2af1721cddf1d0f7792235
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b5c4b2a039794a65d7f44c29f794e25de0f49badcdee1f751a7d8ecfd03d2a`

```dockerfile
```

-	Layers:
	-	`sha256:c7ba9552a6d841f052c63e7385e8dd549717fd6962a510e9e046ab65d2aa6050`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 2.3 MB (2309705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d0155164f6300372c2156f922c5bceb840faa186f3e25f8c6c72cd11db58390`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.12-enterprise`

```console
$ docker pull influxdb@sha256:144e0f06edd085b8e2b3798dc0a487fe9ab88fc97b0605eab95201582e17ec04
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.12-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:7870b0bbc27bc82acb78a4c7c1f9e3bb5fb7f99dfe392f55bd494e32df3ee88e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.2 MB (202150055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a97272d457ae0ae1af2f7f4a15a56b09cf130074804d55d9786e2ac6ade5002`
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
# Fri, 20 Nov 2026 03:23:28 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:23:28 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:37 GMT
ENV INFLUXDB_VERSION=3.12.2
# Fri, 20 Nov 2026 03:23:37 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:37 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:37 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:37 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:37 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:37 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:37 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:37 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:37 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:37 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:37 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:37 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4be67c200b32d2d176a8b5bef666d2c72bb0828790f43002f02706173c25636b`  
		Last Modified: Fri, 20 Nov 2026 03:24:01 GMT  
		Size: 6.6 MB (6633860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d5e17e5388153a0da10306ed58db44291d5f1a63c1b8a5a097cdbf63e37311`  
		Last Modified: Fri, 20 Nov 2026 03:24:01 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27be97ec8a838329ec9bc57a58fa02769bb521b2f5a6dfc762229e2a57bacc87`  
		Last Modified: Fri, 20 Nov 2026 03:24:05 GMT  
		Size: 165.7 MB (165718576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f03c6c02d16c6b513cb0b77abbbdde352ef90e9af0ee2edf56e40d845219652`  
		Last Modified: Fri, 20 Nov 2026 03:24:01 GMT  
		Size: 518.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2fc9cbd045cf627d0162fcfe1dd349ca9e76d797138ab3bd486730190443a8`  
		Last Modified: Fri, 20 Nov 2026 03:24:02 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.12-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:44f74767e5ce21afc87f19d38893d259e85b585038e2d594a6e795c02a7f558f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b95897271209885be61d3fffc1efb3ce20d163f415aadbeeb7f50546f2330ae`

```dockerfile
```

-	Layers:
	-	`sha256:356b0cd5fe2232860c2d06510180e4dedfcccf4c021c9614dabb026d979f7b6e`  
		Last Modified: Fri, 20 Nov 2026 03:24:01 GMT  
		Size: 2.3 MB (2308671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:170ef3da11478f02167571c60408ff4c271a050936ba736ecdd24a0b72164e59`  
		Last Modified: Fri, 20 Nov 2026 03:24:01 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.12-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:0b3a4581ecb59833792cbbe04ef9a02c8dbcac1adbe15fc6451b4629e0cb036d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189469921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef45398e6ccaec93bce5e9adc0575c412b2e2bfa37751284d105d5bb04f1d45`
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
# Fri, 20 Nov 2026 03:23:48 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:23:48 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:57 GMT
ENV INFLUXDB_VERSION=3.12.2
# Fri, 20 Nov 2026 03:23:57 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:57 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:57 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:57 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:57 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:57 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:57 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:57 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:57 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:57 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:57 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:57 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1176692128a6ad36a9f8c02899c4dd579c5111e691b6dad50129e6cb7a7f4cf4`  
		Last Modified: Fri, 20 Nov 2026 03:24:18 GMT  
		Size: 6.6 MB (6648079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3959d11b65a33f21c76e65d3671d758629f871a25e80739ed8faf068a765141e`  
		Last Modified: Fri, 20 Nov 2026 03:24:18 GMT  
		Size: 3.6 KB (3646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44dcf7c052e59a3e9099c8ce9a6766dd892a754de31be9192c795b85e0bead8`  
		Last Modified: Fri, 20 Nov 2026 03:24:21 GMT  
		Size: 153.9 MB (153852210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2034728561f2ce51a4324ffa7c093c41fd78deb4633c58ae59a4aaa7c52f5922`  
		Last Modified: Fri, 20 Nov 2026 03:24:18 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03c7b54d296e651596f276c37f5f6d80ab5c4d9e8f06871e7b63365499cfb63d`  
		Last Modified: Fri, 20 Nov 2026 03:24:19 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.12-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:afdcfd38b3bb32c8eab1414901bca8e982753821bba70189d0b8bccc75b4c554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b223a48cf2c75f6f647e24a5a8181e6587fd8ccf9c042a0bf5189553505036b6`

```dockerfile
```

-	Layers:
	-	`sha256:25de73e193e5b5d0daf68cd1ad60cde09cdcd89d7ac8bcde21c2dae7918ada07`  
		Last Modified: Fri, 20 Nov 2026 03:24:18 GMT  
		Size: 2.3 MB (2309753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:538e27da02a53e73ec31fcb2f1a893e10a52939ecd959e955f3e4f4e449e6782`  
		Last Modified: Fri, 20 Nov 2026 03:24:18 GMT  
		Size: 18.0 KB (17970 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.12.2-core`

```console
$ docker pull influxdb@sha256:9a4e9f2e69f3bfadc1d7fae592b0187abf1856e2a2dde1b749e7901ceb9c9bbc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.12.2-core` - linux; amd64

```console
$ docker pull influxdb@sha256:61add66e005b5f9f9a6f04521190f524479821afd6353ec50927e3e63f3a38b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.3 MB (156284410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3382a6f5191088f658456bedbf6aeb374c8a5918b52d53c115d0a06aaa699dd`
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
# Fri, 20 Nov 2026 03:22:56 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:22:56 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB_VERSION=3.12.2
# Fri, 20 Nov 2026 03:23:02 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:02 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:02 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:02 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:02 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:02 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:02 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d322fb1fa9cb0b5e742ee63e1e8f87bf086bce26079c94429e9f8148ad474ab`  
		Last Modified: Fri, 20 Nov 2026 03:23:21 GMT  
		Size: 6.6 MB (6633850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e03c5e4deeca7151c45be7052c4a752688265e08a3814a6ed0e96568583e5a49`  
		Last Modified: Fri, 20 Nov 2026 03:23:20 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76879e19085ed4f58b2e78a0778c10c32bbd0553d8bfa1f333eec0ea992b3ef6`  
		Last Modified: Fri, 20 Nov 2026 03:23:23 GMT  
		Size: 119.9 MB (119852939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:337cf5c0a5447088a948c4d083465c15dc44b5f50f4c35cf4dce2f3690fb1c21`  
		Last Modified: Fri, 20 Nov 2026 03:23:20 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2864a41164831a8725307d7aa2bbaeb3747e12a924d1f29ebccffd31ab64c4a`  
		Last Modified: Fri, 20 Nov 2026 03:23:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.12.2-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:64d28ec65dde4a49f37ef1bfabed0737c0141e3aaa7f34e1f3806121c873c6e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376314d243efa05f2af13b61a14cd6d8e0bf57359807c6c2e86cd7d98e4b6c94`

```dockerfile
```

-	Layers:
	-	`sha256:ae1d8e00097dbb912b749be8d2c4f300a6feb3ec812839ecbcc24de433df6a26`  
		Last Modified: Fri, 20 Nov 2026 03:23:20 GMT  
		Size: 2.3 MB (2308623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81796cc7d6d56dd48dae324bfe7742ee8e406be5902428423e78b4e5a8768e3e`  
		Last Modified: Fri, 20 Nov 2026 03:23:21 GMT  
		Size: 17.6 KB (17641 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.12.2-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:c7b501f1737092528e08aaa081677911ae675d9c482e5420c4312c57c5ef7b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145888266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cdd7e9565e1fdd77e71187fdd8bee538a9a9954ae3d9739aa9dd30567788273`
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
# Fri, 20 Nov 2026 03:23:49 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:23:49 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB_VERSION=3.12.2
# Fri, 20 Nov 2026 03:23:55 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:55 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:55 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:55 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:55 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:55 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:55 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8ec1715d3c8474e5cdcd9b313a051dcfa349130ec131717d911602e0abbeb9e`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 6.6 MB (6648126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731901846655b1f4e4f7cf8e2404f6383a915d6f6f574f66e311e12f7dc69303`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 3.6 KB (3646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c720a6db9e7b19f851ff38c4e2a366d38d36bbf386eb0458c7c8077f3848782f`  
		Last Modified: Fri, 20 Nov 2026 03:24:16 GMT  
		Size: 110.3 MB (110270506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86245409f17115625be73380d82d9fcd57a01436c22b2ad9b1cc8cd9917c9f53`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764a5819567a2d667dbfc00d8eb297d1aa2a89b96d9e0a0bc75da752c8f3bb52`  
		Last Modified: Fri, 20 Nov 2026 03:24:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.12.2-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:c6f1e37fef90a80bd8d0103fd7b9486c60ad1a3d5f2af1721cddf1d0f7792235
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b5c4b2a039794a65d7f44c29f794e25de0f49badcdee1f751a7d8ecfd03d2a`

```dockerfile
```

-	Layers:
	-	`sha256:c7ba9552a6d841f052c63e7385e8dd549717fd6962a510e9e046ab65d2aa6050`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 2.3 MB (2309705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d0155164f6300372c2156f922c5bceb840faa186f3e25f8c6c72cd11db58390`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:3.12.2-enterprise`

```console
$ docker pull influxdb@sha256:144e0f06edd085b8e2b3798dc0a487fe9ab88fc97b0605eab95201582e17ec04
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3.12.2-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:7870b0bbc27bc82acb78a4c7c1f9e3bb5fb7f99dfe392f55bd494e32df3ee88e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.2 MB (202150055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a97272d457ae0ae1af2f7f4a15a56b09cf130074804d55d9786e2ac6ade5002`
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
# Fri, 20 Nov 2026 03:23:28 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:23:28 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:37 GMT
ENV INFLUXDB_VERSION=3.12.2
# Fri, 20 Nov 2026 03:23:37 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:37 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:37 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:37 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:37 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:37 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:37 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:37 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:37 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:37 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:37 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:37 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4be67c200b32d2d176a8b5bef666d2c72bb0828790f43002f02706173c25636b`  
		Last Modified: Fri, 20 Nov 2026 03:24:01 GMT  
		Size: 6.6 MB (6633860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d5e17e5388153a0da10306ed58db44291d5f1a63c1b8a5a097cdbf63e37311`  
		Last Modified: Fri, 20 Nov 2026 03:24:01 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27be97ec8a838329ec9bc57a58fa02769bb521b2f5a6dfc762229e2a57bacc87`  
		Last Modified: Fri, 20 Nov 2026 03:24:05 GMT  
		Size: 165.7 MB (165718576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f03c6c02d16c6b513cb0b77abbbdde352ef90e9af0ee2edf56e40d845219652`  
		Last Modified: Fri, 20 Nov 2026 03:24:01 GMT  
		Size: 518.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2fc9cbd045cf627d0162fcfe1dd349ca9e76d797138ab3bd486730190443a8`  
		Last Modified: Fri, 20 Nov 2026 03:24:02 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.12.2-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:44f74767e5ce21afc87f19d38893d259e85b585038e2d594a6e795c02a7f558f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b95897271209885be61d3fffc1efb3ce20d163f415aadbeeb7f50546f2330ae`

```dockerfile
```

-	Layers:
	-	`sha256:356b0cd5fe2232860c2d06510180e4dedfcccf4c021c9614dabb026d979f7b6e`  
		Last Modified: Fri, 20 Nov 2026 03:24:01 GMT  
		Size: 2.3 MB (2308671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:170ef3da11478f02167571c60408ff4c271a050936ba736ecdd24a0b72164e59`  
		Last Modified: Fri, 20 Nov 2026 03:24:01 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3.12.2-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:0b3a4581ecb59833792cbbe04ef9a02c8dbcac1adbe15fc6451b4629e0cb036d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189469921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef45398e6ccaec93bce5e9adc0575c412b2e2bfa37751284d105d5bb04f1d45`
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
# Fri, 20 Nov 2026 03:23:48 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:23:48 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:57 GMT
ENV INFLUXDB_VERSION=3.12.2
# Fri, 20 Nov 2026 03:23:57 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:57 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:57 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:57 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:57 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:57 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:57 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:57 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:57 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:57 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:57 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:57 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1176692128a6ad36a9f8c02899c4dd579c5111e691b6dad50129e6cb7a7f4cf4`  
		Last Modified: Fri, 20 Nov 2026 03:24:18 GMT  
		Size: 6.6 MB (6648079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3959d11b65a33f21c76e65d3671d758629f871a25e80739ed8faf068a765141e`  
		Last Modified: Fri, 20 Nov 2026 03:24:18 GMT  
		Size: 3.6 KB (3646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44dcf7c052e59a3e9099c8ce9a6766dd892a754de31be9192c795b85e0bead8`  
		Last Modified: Fri, 20 Nov 2026 03:24:21 GMT  
		Size: 153.9 MB (153852210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2034728561f2ce51a4324ffa7c093c41fd78deb4633c58ae59a4aaa7c52f5922`  
		Last Modified: Fri, 20 Nov 2026 03:24:18 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03c7b54d296e651596f276c37f5f6d80ab5c4d9e8f06871e7b63365499cfb63d`  
		Last Modified: Fri, 20 Nov 2026 03:24:19 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3.12.2-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:afdcfd38b3bb32c8eab1414901bca8e982753821bba70189d0b8bccc75b4c554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b223a48cf2c75f6f647e24a5a8181e6587fd8ccf9c042a0bf5189553505036b6`

```dockerfile
```

-	Layers:
	-	`sha256:25de73e193e5b5d0daf68cd1ad60cde09cdcd89d7ac8bcde21c2dae7918ada07`  
		Last Modified: Fri, 20 Nov 2026 03:24:18 GMT  
		Size: 2.3 MB (2309753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:538e27da02a53e73ec31fcb2f1a893e10a52939ecd959e955f3e4f4e449e6782`  
		Last Modified: Fri, 20 Nov 2026 03:24:18 GMT  
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
$ docker pull influxdb@sha256:9a4e9f2e69f3bfadc1d7fae592b0187abf1856e2a2dde1b749e7901ceb9c9bbc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:core` - linux; amd64

```console
$ docker pull influxdb@sha256:61add66e005b5f9f9a6f04521190f524479821afd6353ec50927e3e63f3a38b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.3 MB (156284410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3382a6f5191088f658456bedbf6aeb374c8a5918b52d53c115d0a06aaa699dd`
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
# Fri, 20 Nov 2026 03:22:56 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:22:56 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB_VERSION=3.12.2
# Fri, 20 Nov 2026 03:23:02 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:02 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:02 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:02 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:02 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:02 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:02 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d322fb1fa9cb0b5e742ee63e1e8f87bf086bce26079c94429e9f8148ad474ab`  
		Last Modified: Fri, 20 Nov 2026 03:23:21 GMT  
		Size: 6.6 MB (6633850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e03c5e4deeca7151c45be7052c4a752688265e08a3814a6ed0e96568583e5a49`  
		Last Modified: Fri, 20 Nov 2026 03:23:20 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76879e19085ed4f58b2e78a0778c10c32bbd0553d8bfa1f333eec0ea992b3ef6`  
		Last Modified: Fri, 20 Nov 2026 03:23:23 GMT  
		Size: 119.9 MB (119852939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:337cf5c0a5447088a948c4d083465c15dc44b5f50f4c35cf4dce2f3690fb1c21`  
		Last Modified: Fri, 20 Nov 2026 03:23:20 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2864a41164831a8725307d7aa2bbaeb3747e12a924d1f29ebccffd31ab64c4a`  
		Last Modified: Fri, 20 Nov 2026 03:23:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:core` - unknown; unknown

```console
$ docker pull influxdb@sha256:64d28ec65dde4a49f37ef1bfabed0737c0141e3aaa7f34e1f3806121c873c6e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376314d243efa05f2af13b61a14cd6d8e0bf57359807c6c2e86cd7d98e4b6c94`

```dockerfile
```

-	Layers:
	-	`sha256:ae1d8e00097dbb912b749be8d2c4f300a6feb3ec812839ecbcc24de433df6a26`  
		Last Modified: Fri, 20 Nov 2026 03:23:20 GMT  
		Size: 2.3 MB (2308623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81796cc7d6d56dd48dae324bfe7742ee8e406be5902428423e78b4e5a8768e3e`  
		Last Modified: Fri, 20 Nov 2026 03:23:21 GMT  
		Size: 17.6 KB (17641 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:c7b501f1737092528e08aaa081677911ae675d9c482e5420c4312c57c5ef7b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145888266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cdd7e9565e1fdd77e71187fdd8bee538a9a9954ae3d9739aa9dd30567788273`
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
# Fri, 20 Nov 2026 03:23:49 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:23:49 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB_VERSION=3.12.2
# Fri, 20 Nov 2026 03:23:55 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:55 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:55 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:55 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:55 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:55 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:55 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8ec1715d3c8474e5cdcd9b313a051dcfa349130ec131717d911602e0abbeb9e`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 6.6 MB (6648126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731901846655b1f4e4f7cf8e2404f6383a915d6f6f574f66e311e12f7dc69303`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 3.6 KB (3646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c720a6db9e7b19f851ff38c4e2a366d38d36bbf386eb0458c7c8077f3848782f`  
		Last Modified: Fri, 20 Nov 2026 03:24:16 GMT  
		Size: 110.3 MB (110270506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86245409f17115625be73380d82d9fcd57a01436c22b2ad9b1cc8cd9917c9f53`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764a5819567a2d667dbfc00d8eb297d1aa2a89b96d9e0a0bc75da752c8f3bb52`  
		Last Modified: Fri, 20 Nov 2026 03:24:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:core` - unknown; unknown

```console
$ docker pull influxdb@sha256:c6f1e37fef90a80bd8d0103fd7b9486c60ad1a3d5f2af1721cddf1d0f7792235
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b5c4b2a039794a65d7f44c29f794e25de0f49badcdee1f751a7d8ecfd03d2a`

```dockerfile
```

-	Layers:
	-	`sha256:c7ba9552a6d841f052c63e7385e8dd549717fd6962a510e9e046ab65d2aa6050`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 2.3 MB (2309705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d0155164f6300372c2156f922c5bceb840faa186f3e25f8c6c72cd11db58390`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:data`

```console
$ docker pull influxdb@sha256:fd476d04c542348c335770ea49b03e3b7e6f3e1c2c774d3851be417c5c5632c6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:data` - linux; amd64

```console
$ docker pull influxdb@sha256:671fcac7a6ffba327d626a70c3a381e66b313c4cac5e84bc370618428767d632
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.5 MB (126474017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea9979a4d1d7e81f2c0d2936d4c963b79ff839c90861e601f355b6d2b4dffe0b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 20:59:50 GMT
ENV INFLUXDB_VERSION=1.12.5-c1.12.5
# Wed, 18 Nov 2026 20:59:50 GMT
ENV INFLUXDB_PR=
# Wed, 18 Nov 2026 20:59:50 GMT
ENV INFLUXDB_PV=1.12.5-c1.12.5
# Wed, 18 Nov 2026 20:59:50 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-data_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-data_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-data_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 20:59:50 GMT
COPY influxdb.conf /etc/influxdb/influxdb.conf # buildkit
# Wed, 18 Nov 2026 20:59:50 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 20:59:50 GMT
VOLUME [/var/lib/influxdb]
# Wed, 18 Nov 2026 20:59:50 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 20:59:50 GMT
COPY init-influxdb.sh /init-influxdb.sh # buildkit
# Wed, 18 Nov 2026 20:59:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 20:59:50 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb4f16db444262d5b02cbb34de916c7e6006d9b23a89d8edf0b4bfc393347be9`  
		Last Modified: Wed, 18 Nov 2026 21:00:11 GMT  
		Size: 54.1 MB (54072542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cab813419867283bcdc51e602be05fbf9421d4cb213e3259a476479e90362aa5`  
		Last Modified: Wed, 18 Nov 2026 21:00:09 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:555d824e9cc26300e050f22dc3d2c1b1e811c2cc44977bc806f3d70a1e87cc49`  
		Last Modified: Wed, 18 Nov 2026 21:00:10 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487001287ebb1fa1096c6eb3dac42d6b3d7ff37388ca8dd987d45a45ce7e3806`  
		Last Modified: Wed, 18 Nov 2026 21:00:09 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:data` - unknown; unknown

```console
$ docker pull influxdb@sha256:7eeb5ef04af4a4808d5051d9251cc25705283883716ffac5d88af8918be3df77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4718862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:566193a9abadf39a15e4638833e8c29524a643f3783e7285e011af906d52d76f`

```dockerfile
```

-	Layers:
	-	`sha256:8d9d58a69286e2c89541af4945f31e38744c01e43b0ec652c214a2d9238549dc`  
		Last Modified: Wed, 18 Nov 2026 21:00:09 GMT  
		Size: 4.7 MB (4704708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdd1121975d24ac1a5365e80f27bf8f7101a43040463a0be577189915bf3f1c0`  
		Last Modified: Wed, 18 Nov 2026 21:00:11 GMT  
		Size: 14.2 KB (14154 bytes)  
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
$ docker pull influxdb@sha256:144e0f06edd085b8e2b3798dc0a487fe9ab88fc97b0605eab95201582e17ec04
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:7870b0bbc27bc82acb78a4c7c1f9e3bb5fb7f99dfe392f55bd494e32df3ee88e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.2 MB (202150055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a97272d457ae0ae1af2f7f4a15a56b09cf130074804d55d9786e2ac6ade5002`
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
# Fri, 20 Nov 2026 03:23:28 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:23:28 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:37 GMT
ENV INFLUXDB_VERSION=3.12.2
# Fri, 20 Nov 2026 03:23:37 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:37 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:37 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:37 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:37 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:37 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:37 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:37 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:37 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:37 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:37 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:37 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4be67c200b32d2d176a8b5bef666d2c72bb0828790f43002f02706173c25636b`  
		Last Modified: Fri, 20 Nov 2026 03:24:01 GMT  
		Size: 6.6 MB (6633860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d5e17e5388153a0da10306ed58db44291d5f1a63c1b8a5a097cdbf63e37311`  
		Last Modified: Fri, 20 Nov 2026 03:24:01 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27be97ec8a838329ec9bc57a58fa02769bb521b2f5a6dfc762229e2a57bacc87`  
		Last Modified: Fri, 20 Nov 2026 03:24:05 GMT  
		Size: 165.7 MB (165718576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f03c6c02d16c6b513cb0b77abbbdde352ef90e9af0ee2edf56e40d845219652`  
		Last Modified: Fri, 20 Nov 2026 03:24:01 GMT  
		Size: 518.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2fc9cbd045cf627d0162fcfe1dd349ca9e76d797138ab3bd486730190443a8`  
		Last Modified: Fri, 20 Nov 2026 03:24:02 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:44f74767e5ce21afc87f19d38893d259e85b585038e2d594a6e795c02a7f558f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b95897271209885be61d3fffc1efb3ce20d163f415aadbeeb7f50546f2330ae`

```dockerfile
```

-	Layers:
	-	`sha256:356b0cd5fe2232860c2d06510180e4dedfcccf4c021c9614dabb026d979f7b6e`  
		Last Modified: Fri, 20 Nov 2026 03:24:01 GMT  
		Size: 2.3 MB (2308671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:170ef3da11478f02167571c60408ff4c271a050936ba736ecdd24a0b72164e59`  
		Last Modified: Fri, 20 Nov 2026 03:24:01 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:0b3a4581ecb59833792cbbe04ef9a02c8dbcac1adbe15fc6451b4629e0cb036d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189469921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef45398e6ccaec93bce5e9adc0575c412b2e2bfa37751284d105d5bb04f1d45`
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
# Fri, 20 Nov 2026 03:23:48 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:23:48 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:57 GMT
ENV INFLUXDB_VERSION=3.12.2
# Fri, 20 Nov 2026 03:23:57 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:57 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:57 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:57 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:57 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:57 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:57 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:57 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:57 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:57 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:57 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:57 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1176692128a6ad36a9f8c02899c4dd579c5111e691b6dad50129e6cb7a7f4cf4`  
		Last Modified: Fri, 20 Nov 2026 03:24:18 GMT  
		Size: 6.6 MB (6648079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3959d11b65a33f21c76e65d3671d758629f871a25e80739ed8faf068a765141e`  
		Last Modified: Fri, 20 Nov 2026 03:24:18 GMT  
		Size: 3.6 KB (3646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44dcf7c052e59a3e9099c8ce9a6766dd892a754de31be9192c795b85e0bead8`  
		Last Modified: Fri, 20 Nov 2026 03:24:21 GMT  
		Size: 153.9 MB (153852210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2034728561f2ce51a4324ffa7c093c41fd78deb4633c58ae59a4aaa7c52f5922`  
		Last Modified: Fri, 20 Nov 2026 03:24:18 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03c7b54d296e651596f276c37f5f6d80ab5c4d9e8f06871e7b63365499cfb63d`  
		Last Modified: Fri, 20 Nov 2026 03:24:19 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:afdcfd38b3bb32c8eab1414901bca8e982753821bba70189d0b8bccc75b4c554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b223a48cf2c75f6f647e24a5a8181e6587fd8ccf9c042a0bf5189553505036b6`

```dockerfile
```

-	Layers:
	-	`sha256:25de73e193e5b5d0daf68cd1ad60cde09cdcd89d7ac8bcde21c2dae7918ada07`  
		Last Modified: Fri, 20 Nov 2026 03:24:18 GMT  
		Size: 2.3 MB (2309753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:538e27da02a53e73ec31fcb2f1a893e10a52939ecd959e955f3e4f4e449e6782`  
		Last Modified: Fri, 20 Nov 2026 03:24:18 GMT  
		Size: 18.0 KB (17970 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:33f4eef7ca7859f3c24021c5fa20a4ca7d1d34f049bb011c32787a35cf096b85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:latest` - linux; amd64

```console
$ docker pull influxdb@sha256:b1f0e86eb8ecd18295f48b061336f445bf587228156c41cf33d20c077f66031d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112648325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c6c28fdbe29e2600354869e713678f942afb418a58d6ed86c833a58cea7c91e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:13:05 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:13:05 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 18 Nov 2026 21:13:05 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Wed, 18 Nov 2026 21:13:09 GMT
ENV INFLUXDB_VERSION=2.10.1
# Wed, 18 Nov 2026 21:13:09 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 18 Nov 2026 21:13:09 GMT
ENV INFLUX_CLI_VERSION=2.9.1
# Wed, 18 Nov 2026 21:13:10 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 18 Nov 2026 21:13:11 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 18 Nov 2026 21:13:11 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 18 Nov 2026 21:13:11 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 18 Nov 2026 21:13:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:13:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:13:11 GMT
CMD ["influxd"]
# Wed, 18 Nov 2026 21:13:11 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 21:13:11 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 18 Nov 2026 21:13:11 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 18 Nov 2026 21:13:11 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 18 Nov 2026 21:13:11 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bfb5d6fa0bdcf8b5258d78b41a9f15f5c7d317e907cabde265dc40f40924d9b`  
		Last Modified: Wed, 18 Nov 2026 21:13:23 GMT  
		Size: 9.6 MB (9624779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c894936870d3c6940872cfadd24acc1a2cdcb7ecee6deb2e0df79876dbdd16bd`  
		Last Modified: Wed, 18 Nov 2026 21:13:22 GMT  
		Size: 3.8 MB (3822785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb2363065c2ff397e127f6e95667b5ee9dc23b0b699f5b0bf690c2f6eab36e3b`  
		Last Modified: Wed, 18 Nov 2026 21:13:22 GMT  
		Size: 3.2 KB (3230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2a9f3c90caef0d68f55a1e3df889593e63316a96cea8dcf265f9ff7a948464`  
		Last Modified: Wed, 18 Nov 2026 21:13:24 GMT  
		Size: 57.5 MB (57465442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d97696892e158fa2cf38d50b286c5e33acfd7ec92404a82eb7d33e13ff0a96`  
		Last Modified: Wed, 18 Nov 2026 21:13:24 GMT  
		Size: 13.5 MB (13476873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93adad60ed5e6dfd706b019c7228cc34c8a6542a6b19d5899a7aae388287a09a`  
		Last Modified: Wed, 18 Nov 2026 21:13:23 GMT  
		Size: 210.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12781cc4e0c5af46df6e24ccc19219c3d93b9755fa00917fc30fff9bcef87196`  
		Last Modified: Wed, 18 Nov 2026 21:13:24 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07fef0c0016e0596104c7d4f6f47c340717a30dc76d8cf43eac47a206d98ebb2`  
		Last Modified: Wed, 18 Nov 2026 21:13:25 GMT  
		Size: 6.8 KB (6792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:latest` - unknown; unknown

```console
$ docker pull influxdb@sha256:b8327d4f98d8e55ae532f267d0634f169a8addc7800e5f48f0e86c78f77219d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2996220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99c72ce370436f09404b45a2f70faa621f50dd691d264a568f3d0d6660318b0e`

```dockerfile
```

-	Layers:
	-	`sha256:2b62d3c6e98a741caf186e31d8bb5fece4bd238ca0a08b14163f04b2b51887a0`  
		Last Modified: Wed, 18 Nov 2026 21:13:22 GMT  
		Size: 3.0 MB (2967596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d68f4550642a7d0877d117444fb51b4f898ba7d12e9350a08d4382bccb3113cd`  
		Last Modified: Wed, 18 Nov 2026 21:13:22 GMT  
		Size: 28.6 KB (28624 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:latest` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:01d62dd8024d56951b8c76cbfcf87ab2b63f12b2105c9a99dbedc703fcfce881
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.0 MB (107999322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a604021464d0580baafd41c2ed281a562f4f7d2c1bd8151c17dccbe6e97f1ea4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Wed, 18 Nov 2026 21:13:09 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&     apt-get install -y --no-install-recommends       ca-certificates       curl       gnupg       util-linux &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:13:10 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     curl -fL "https://github.com/TomWright/dasel/releases/download/v3.4.1/dasel_linux_${arch}.gz" | gzip -d > /usr/local/bin/dasel &&     case ${arch} in       amd64) echo '3c947a8dcd88856a32c172081db091c38059394fb57a15fa43871f6d046427e1  /usr/local/bin/dasel' ;;       arm64) echo 'a128c5554c53e6e4af880700adba1d212ce651db208da1592fb1cae0e959cbc6  /usr/local/bin/dasel' ;;     esac | sha256sum -c - &&     chmod +x /usr/local/bin/dasel &&     dasel version # buildkit
# Wed, 18 Nov 2026 21:13:10 GMT
RUN groupadd -r influxdb --gid=1000 &&     useradd -r -g influxdb --uid=1000 --create-home --home-dir=/home/influxdb --shell=/bin/bash influxdb # buildkit
# Wed, 18 Nov 2026 21:13:13 GMT
ENV INFLUXDB_VERSION=2.10.1
# Wed, 18 Nov 2026 21:13:13 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"                          "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     tar xzf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz" &&     cp "influxdb2-${INFLUXDB_VERSION}/influxd" /usr/local/bin/influxd &&     rm -rf "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz"            "influxdb2-${INFLUXDB_VERSION}_linux_${arch}.tar.gz.asc"            "influxdb2-${INFLUXDB_VERSION}" &&     influxd version # buildkit
# Wed, 18 Nov 2026 21:13:13 GMT
ENV INFLUX_CLI_VERSION=2.9.1
# Wed, 18 Nov 2026 21:13:15 GMT
RUN case "$(dpkg --print-architecture)" in       *amd64) arch=amd64 ;;       *arm64) arch=arm64 ;;       *) echo 'Unsupported architecture' && exit 1 ;;     esac &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys       24C975CBA61A024EE1B631787C3D57159FC2F927 &&     curl -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"          -fLO "https://dl.influxdata.com/influxdb/releases/influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     gpg --batch --verify "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc"                          "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" &&     tar xzf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz" -C /usr/local/bin ./influx &&     rm -rf "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz"            "influxdb2-client-${INFLUX_CLI_VERSION}-linux-${arch}.tar.gz.asc" &&     influx version # buildkit
# Wed, 18 Nov 2026 21:13:15 GMT
RUN mkdir /docker-entrypoint-initdb.d &&     mkdir -p /var/lib/influxdb2 &&     chown -R influxdb:influxdb /var/lib/influxdb2 &&     mkdir -p /etc/influxdb2 &&     chown -R influxdb:influxdb /etc/influxdb2 # buildkit
# Wed, 18 Nov 2026 21:13:15 GMT
VOLUME [/var/lib/influxdb2 /etc/influxdb2]
# Wed, 18 Nov 2026 21:13:15 GMT
COPY default-config.yml /etc/defaults/influxdb2/config.yml # buildkit
# Wed, 18 Nov 2026 21:13:15 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:13:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:13:15 GMT
CMD ["influxd"]
# Wed, 18 Nov 2026 21:13:15 GMT
EXPOSE map[8086/tcp:{}]
# Wed, 18 Nov 2026 21:13:15 GMT
ENV INFLUX_CONFIGS_PATH=/etc/influxdb2/influx-configs
# Wed, 18 Nov 2026 21:13:15 GMT
ENV INFLUXD_INIT_PORT=9999
# Wed, 18 Nov 2026 21:13:15 GMT
ENV INFLUXD_INIT_PING_ATTEMPTS=600
# Wed, 18 Nov 2026 21:13:15 GMT
ENV DOCKER_INFLUXDB_INIT_CLI_CONFIG_NAME=default
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:581651f424fd3018f79f8d127bd774f11c994789c78aa2167444036b7a427e20`  
		Last Modified: Wed, 18 Nov 2026 21:13:27 GMT  
		Size: 9.4 MB (9449016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6e985e42092be9f30462ab755d4cd81c8c1baf37fdc5c6badd74da484c7b9ab`  
		Last Modified: Wed, 18 Nov 2026 21:13:27 GMT  
		Size: 3.5 MB (3459176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5382f16a0fdc17284edac5f862b2b20087a1a88bedc7752043c22658b7abb866`  
		Last Modified: Wed, 18 Nov 2026 21:13:27 GMT  
		Size: 3.2 KB (3230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5766a78eb1778e5e9349cb125e6d395cd69a78701a437e497ab9584152000495`  
		Last Modified: Wed, 18 Nov 2026 21:13:28 GMT  
		Size: 54.6 MB (54555411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f3fa27af005b56a3cc98af9eeff0acd6eb523f1390e7c45a2d4847af19fd26`  
		Last Modified: Wed, 18 Nov 2026 21:13:28 GMT  
		Size: 12.4 MB (12380899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c586371684380c7f19607006ce540a4ef87490b7b2b850c821753d284fa063c7`  
		Last Modified: Wed, 18 Nov 2026 21:13:28 GMT  
		Size: 209.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11cc8487d04af938655be5d092e3188b77f18927afacef2c856d8e5342b6ba8`  
		Last Modified: Wed, 18 Nov 2026 21:13:28 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2843e33d7e4880ee4c7c1227fe9d193d4e903964832cc44bcec9590d794955ae`  
		Last Modified: Wed, 18 Nov 2026 21:13:29 GMT  
		Size: 6.8 KB (6790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:latest` - unknown; unknown

```console
$ docker pull influxdb@sha256:99a0180ab0bcb1498c4f8ecaa0f14311ca898a58b3c86d005e917b681ce5eef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2995877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed717ad5518f5f62500b08b8ceeaa5629d6fe52cb299cd349fd30e64742625de`

```dockerfile
```

-	Layers:
	-	`sha256:e1e4f1112bad1a4768b2216e183e833fd06344755c99e271bb472747c952019a`  
		Last Modified: Wed, 18 Nov 2026 21:13:27 GMT  
		Size: 3.0 MB (2967074 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2400234a495fa3fedfcf702142330500f6343f11312825b212c00396e79167bf`  
		Last Modified: Wed, 18 Nov 2026 21:13:26 GMT  
		Size: 28.8 KB (28803 bytes)  
		MIME: application/vnd.in-toto+json

## `influxdb:meta`

```console
$ docker pull influxdb@sha256:157c0b2058e5da29758a6baacb89ca30fe5a6a2b24cc10e69b08a9861bd14739
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `influxdb:meta` - linux; amd64

```console
$ docker pull influxdb@sha256:f4f530a6eb74cba0e9e465c1871264f165c7db7c4c5e92ae6878cd15f1d6b5dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.0 MB (96021734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a242e15915174743aebbcfcf11e100ff10b3f745036eac275490b578d7f363`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
ENV INFLUXDB_VERSION=1.12.5-c1.12.5
# Wed, 18 Nov 2026 21:00:56 GMT
ENV INFLUXDB_PR=
# Wed, 18 Nov 2026 21:00:56 GMT
ENV INFLUXDB_PV=1.12.5-c1.12.5
# Wed, 18 Nov 2026 21:00:56 GMT
RUN curl -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"          -fsSLO "https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     gpg --batch --keyserver hkp://keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"         "influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         "/influxdb-meta_${INFLUXDB_PV}_amd64.deb" &&     rm -r "influxdb-meta_${INFLUXDB_PV}_amd64.deb.asc"           "influxdb-meta_${INFLUXDB_PV}_amd64.deb"           /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
COPY influxdb-meta.conf /etc/influxdb/influxdb-meta.conf # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
EXPOSE map[8091/tcp:{}]
# Wed, 18 Nov 2026 21:00:56 GMT
VOLUME [/var/lib/influxdb]
# Wed, 18 Nov 2026 21:00:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:00:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:00:56 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:713e8d97315d7fb6e23f3bf5b11a6323ef186cad82b78a334eba913dd86bc704`  
		Last Modified: Wed, 18 Nov 2026 21:01:07 GMT  
		Size: 23.6 MB (23621462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0267c5a62ca62fd6065b5b13b23c37ee55ef3b94b6c539eaddecb38a4196ca`  
		Last Modified: Wed, 18 Nov 2026 21:01:06 GMT  
		Size: 199.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3757c558917efa354f5b113852c70d9c0b00ab68e0d308faa05b90b2ea9040bc`  
		Last Modified: Wed, 18 Nov 2026 21:01:05 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:meta` - unknown; unknown

```console
$ docker pull influxdb@sha256:0cc000d151f0cce289e3a1d9d2221de8d89e9db5036cbbbc0e2f0a37c5d8b347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4610424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b67dbb1e217768d456c88acdae03c3377625c33d872efe0b45763994f5c0127`

```dockerfile
```

-	Layers:
	-	`sha256:8ae4666906f6e2e8e0f3542fcc8af28b009a5ab10adbcf8a3406b98f850921b3`  
		Last Modified: Wed, 18 Nov 2026 21:01:06 GMT  
		Size: 4.6 MB (4597760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6a340f8840906cacacdb157bab735e9b2fdb988661737aafd07c242f3423402`  
		Last Modified: Wed, 18 Nov 2026 21:01:05 GMT  
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
