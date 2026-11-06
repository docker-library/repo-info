## `liquibase:alpine`

```console
$ docker pull liquibase@sha256:36340f78092fdc76d8773c36e19d643028ada944b4a2a119635793df1b9b4a47
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:alpine` - linux; amd64

```console
$ docker pull liquibase@sha256:cfa53c9f23ae81d525015fb49c8678c6c0529f305e50e503a22e9bcd5ebf8a54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84107780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29b06649d9690f108892e3660eaf7087df2232ae15bb2cbfef15ca477174af41`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:24:45 GMT
RUN addgroup --gid 1001 liquibase &&     adduser --disabled-password --uid 1001 --ingroup liquibase --home /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 05 Nov 2026 19:24:47 GMT
RUN apk add --no-cache openjdk21-jre-headless bash # buildkit
# Thu, 05 Nov 2026 19:24:47 GMT
WORKDIR /liquibase
# Thu, 05 Nov 2026 19:24:49 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 05 Nov 2026 19:24:49 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 05 Nov 2026 19:24:49 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN set -x &&     apk add --no-cache --virtual .fetch-deps wget &&     wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://github.com/liquibase/liquibase/releases/download/v${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 05 Nov 2026 19:24:49 GMT
ARG LPM_VERSION=0.2.14
# Thu, 05 Nov 2026 19:24:49 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 05 Nov 2026 19:24:49 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 05 Nov 2026 19:24:49 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image (Alpine)
# Thu, 05 Nov 2026 19:24:49 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 05 Nov 2026 19:24:49 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 05 Nov 2026 19:24:49 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 05 Nov 2026 19:24:49 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 05 Nov 2026 19:24:50 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN mkdir /liquibase/bin &&     apk add --no-cache --virtual .fetch-deps wget unzip &&     arch="$(apk --print-arch)" &&     case "$arch" in       x86_64)   DOWNLOAD_ARCH=""  ;;       aarch64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM  ;;       *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 05 Nov 2026 19:24:50 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 05 Nov 2026 19:24:50 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 05 Nov 2026 19:24:50 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 05 Nov 2026 19:24:50 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 05 Nov 2026 19:24:50 GMT
USER liquibase:liquibase
# Thu, 05 Nov 2026 19:24:50 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:24:50 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe7d07c8cc591afa2574154872f5b0c603cd286c1b2907c2dd93ebb254fbaa50`  
		Last Modified: Thu, 05 Nov 2026 19:25:03 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6518b5d3bc0f1f93b0225d985f582e67a778f3b8e88c92803213f548d90084a`  
		Last Modified: Thu, 05 Nov 2026 19:25:05 GMT  
		Size: 67.9 MB (67941266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31c2b70acb05b5bd88e84ce90db0d02ef808e48d197f8baa793152cb3605f5a`  
		Last Modified: Thu, 05 Nov 2026 19:25:03 GMT  
		Size: 8.7 MB (8687778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d62fde5ca9b2e4f52ac499e6154a7c7e8d87633d51a81965df927e495ac02ff4`  
		Last Modified: Thu, 05 Nov 2026 19:25:03 GMT  
		Size: 3.7 MB (3681791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971909dd96763ee9340f07114da7a430b60b7d6c024d9213b82231a703c4dce2`  
		Last Modified: Thu, 05 Nov 2026 19:25:04 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2fc6ed24292abadd1f845f8d3781a52ce4cc5d149b0e032bbaa08ddbd0f7f4`  
		Last Modified: Thu, 05 Nov 2026 19:25:04 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:alpine` - unknown; unknown

```console
$ docker pull liquibase@sha256:99e69849e427631bd844c195fa632b4f22da8bcccf7ab773c4aa072356bca700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.9 KB (362922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a39720960353f5c6fd9b927b4765e62c6d8c12bc979045d8ee20ae4bb782868b`

```dockerfile
```

-	Layers:
	-	`sha256:5e29b1003167f8decef1977ff524cfccd08c66f89c1648bb16e8cd42bdc0776b`  
		Last Modified: Thu, 05 Nov 2026 19:25:03 GMT  
		Size: 341.3 KB (341264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce31fbe90358d0e47eed8000543867775538de462e68c4991620cd827f75c612`  
		Last Modified: Thu, 05 Nov 2026 19:25:03 GMT  
		Size: 21.7 KB (21658 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:alpine` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:d61acd3d63b6a75e87bdeba3b14e84b699f5214851f70fca759e8ac487a3db7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83100294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5cd9b13feb1d31a22d1a34bf959a301da675a9a26763e13173daba75169fe26`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:18:53 GMT
RUN addgroup --gid 1001 liquibase &&     adduser --disabled-password --uid 1001 --ingroup liquibase --home /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 05 Nov 2026 19:18:55 GMT
RUN apk add --no-cache openjdk21-jre-headless bash # buildkit
# Thu, 05 Nov 2026 19:18:55 GMT
WORKDIR /liquibase
# Thu, 05 Nov 2026 19:18:57 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 05 Nov 2026 19:18:57 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 05 Nov 2026 19:18:57 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN set -x &&     apk add --no-cache --virtual .fetch-deps wget &&     wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://github.com/liquibase/liquibase/releases/download/v${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 05 Nov 2026 19:18:57 GMT
ARG LPM_VERSION=0.2.14
# Thu, 05 Nov 2026 19:18:57 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 05 Nov 2026 19:18:57 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 05 Nov 2026 19:18:57 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image (Alpine)
# Thu, 05 Nov 2026 19:18:57 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 05 Nov 2026 19:18:57 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 05 Nov 2026 19:18:57 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 05 Nov 2026 19:18:57 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 05 Nov 2026 19:18:58 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN mkdir /liquibase/bin &&     apk add --no-cache --virtual .fetch-deps wget unzip &&     arch="$(apk --print-arch)" &&     case "$arch" in       x86_64)   DOWNLOAD_ARCH=""  ;;       aarch64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM  ;;       *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 05 Nov 2026 19:18:58 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 05 Nov 2026 19:18:58 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 05 Nov 2026 19:18:58 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 05 Nov 2026 19:18:59 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 05 Nov 2026 19:18:59 GMT
USER liquibase:liquibase
# Thu, 05 Nov 2026 19:18:59 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:18:59 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:964ff38d7a736eec972f1728812e0e576b8df92b43fcf201e909ac6494610b19`  
		Last Modified: Thu, 05 Nov 2026 19:19:10 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50292ca884546d61449c370564b40db2a8e7f9a4ea1651e7d474ec6eda265c04`  
		Last Modified: Thu, 05 Nov 2026 19:19:12 GMT  
		Size: 66.9 MB (66923602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6554b7d847ba3e1a4cfc56a3fd18adc2aba944983dac6029a8b5d6e446d0c042`  
		Last Modified: Thu, 05 Nov 2026 19:19:11 GMT  
		Size: 8.7 MB (8687718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46fb4a070ad6d3ee31556ae89db67205689e1c090d11b82382ee8ab2edb931f7`  
		Last Modified: Thu, 05 Nov 2026 19:19:11 GMT  
		Size: 3.4 MB (3359019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:396fd7ff093218d0d3d52e6f9db522cf14fe7b2639ce41229ae3c61e2c42b82b`  
		Last Modified: Thu, 05 Nov 2026 19:19:12 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:578b8822cf7d47590654c466450f1d3f4a53a4d6ae5727f927ccd69913b4fb4d`  
		Last Modified: Thu, 05 Nov 2026 19:19:12 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:alpine` - unknown; unknown

```console
$ docker pull liquibase@sha256:1c6f22cc6ec1cd7a29071d06c738a4c296ac3e20dcaa2f79ae8e6d31b4ebc399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.3 KB (362306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41cc96438d4de5d71f844421ebd5d5a8572f64fdeb24efae753d1bf0b3b05e0a`

```dockerfile
```

-	Layers:
	-	`sha256:0c86500aa143683166abb22d5bc470f2361caf1e0575f10438de91aedbd77d9b`  
		Last Modified: Thu, 05 Nov 2026 19:19:11 GMT  
		Size: 340.5 KB (340511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d492a770d995110da195e352b138927527cbc3e042129ebf9edaf709375c272e`  
		Last Modified: Thu, 05 Nov 2026 19:19:10 GMT  
		Size: 21.8 KB (21795 bytes)  
		MIME: application/vnd.in-toto+json
