<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `crate`

-	[`crate:6.0`](#crate60)
-	[`crate:6.0.8`](#crate608)
-	[`crate:6.1`](#crate61)
-	[`crate:6.1.6`](#crate616)
-	[`crate:6.2`](#crate62)
-	[`crate:6.2.11`](#crate6211)
-	[`crate:6.3`](#crate63)
-	[`crate:6.3.5`](#crate635)
-	[`crate:latest`](#cratelatest)

## `crate:6.0`

```console
$ docker pull crate@sha256:7b6af0abb4792123cfa225c8186471bbe81e039ef336af33095a181f4e8c17bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.0` - linux; amd64

```console
$ docker pull crate@sha256:22b5fdb5a5740e6ce74020055affe5cef654bca68fe3ffea7d3040053efaa751
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.3 MB (245254915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58826845a4da1c6f69692969145bf778a01cc814490ca706abac8b8bbb5d4668`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:12 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:12 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 17:16:30 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 09 Jul 2026 17:18:09 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.0.8.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.0.8.tar.gz.asc crate-6.0.8.tar.gz     && rm -rf "$GNUPGHOME" crate-6.0.8.tar.gz.asc     && tar -xf crate-6.0.8.tar.gz -C /crate --strip-components=1     && rm crate-6.0.8.tar.gz # buildkit
# Thu, 09 Jul 2026 17:18:12 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 09 Jul 2026 17:18:12 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 17:18:12 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 09 Jul 2026 17:18:12 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 09 Jul 2026 17:18:12 GMT
VOLUME [/data]
# Thu, 09 Jul 2026 17:18:12 GMT
WORKDIR /data
# Thu, 09 Jul 2026 17:18:12 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 09 Jul 2026 17:18:12 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 09 Jul 2026 17:18:12 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 09 Jul 2026 17:18:12 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-06T16:07:32.860998+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.0.8
# Thu, 09 Jul 2026 17:18:12 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 17:18:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Jul 2026 17:18:12 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e787432b3044759d693031c5b5b1f432cb4b7cc6c8f9d21577a5906dd5e538c5`  
		Last Modified: Tue, 02 Jun 2026 19:04:29 GMT  
		Size: 68.6 MB (68553003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b4044c6331d38ab9e95203294c75d0edad5996289766a755b31f5113478962f`  
		Last Modified: Thu, 09 Jul 2026 17:17:04 GMT  
		Size: 18.9 MB (18889101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89a119a4d7164c1fa713252f24c34aa07b1f96e02e64008808349b329312eb77`  
		Last Modified: Thu, 09 Jul 2026 17:18:32 GMT  
		Size: 149.0 MB (149021102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e146484aa2056bbe3062db5ba169dc30bde4f5c4151103dc03fc6d0cd53d9ba9`  
		Last Modified: Thu, 09 Jul 2026 17:18:29 GMT  
		Size: 8.8 MB (8789832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47eed90f3c2df7c74b7255ee11e0daffc22c163a2e3fd75f14afd67de8fdf8d4`  
		Last Modified: Thu, 09 Jul 2026 17:18:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8463c8c162e3bee16012c0f990814672b7a56b2b365af9309fa9a6cfda0428`  
		Last Modified: Thu, 09 Jul 2026 17:18:29 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e202cb65e3ea0ccf797e8206ea31f8327ce5c03ec4fed3419d5efee0495a06d0`  
		Last Modified: Thu, 09 Jul 2026 17:18:30 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6075e5e47661eddffeaa4104aca1e611843c15724a4ee468557790b1606ad36`  
		Last Modified: Thu, 09 Jul 2026 17:18:30 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.0` - unknown; unknown

```console
$ docker pull crate@sha256:f52df849a94004ffd93aa7b0e9686f36f1009424ec84df53119fb2eedb8c5d0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6673643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6390fdacb50702a719d51b784eb48e07254fc58fe1bdbac3fe0b61ece4cc8be1`

```dockerfile
```

-	Layers:
	-	`sha256:83566acf03e865d649a0f275c8dc0dbb2b950874d75b35e0caeca57cb588cad1`  
		Last Modified: Thu, 09 Jul 2026 17:18:29 GMT  
		Size: 6.7 MB (6652299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47a1e432faf4fc56b523c5cdf4e36c62737eaca892cc49dc423f04dd056ca920`  
		Last Modified: Thu, 09 Jul 2026 17:18:29 GMT  
		Size: 21.3 KB (21344 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.0` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:101c39db7f918514b49b5ccbaddf090f074be32e1ef2e83404a5de68fc98863f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244565997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94fa25407e91a103efbe2772202a5f0e73c728d07431b7c91c34abadb3102749`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:17 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:17 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 17:16:33 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 09 Jul 2026 17:18:17 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.0.8.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.0.8.tar.gz.asc crate-6.0.8.tar.gz     && rm -rf "$GNUPGHOME" crate-6.0.8.tar.gz.asc     && tar -xf crate-6.0.8.tar.gz -C /crate --strip-components=1     && rm crate-6.0.8.tar.gz # buildkit
# Thu, 09 Jul 2026 17:18:20 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 09 Jul 2026 17:18:20 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 17:18:20 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 09 Jul 2026 17:18:20 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 09 Jul 2026 17:18:20 GMT
VOLUME [/data]
# Thu, 09 Jul 2026 17:18:20 GMT
WORKDIR /data
# Thu, 09 Jul 2026 17:18:20 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 09 Jul 2026 17:18:20 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 09 Jul 2026 17:18:20 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 09 Jul 2026 17:18:20 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-06T16:07:32.860998+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.0.8
# Thu, 09 Jul 2026 17:18:20 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 17:18:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Jul 2026 17:18:20 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4e642e2dc39d48325d258aab2be76368a8810b551698a78f8de70b4d572f710`  
		Last Modified: Tue, 02 Jun 2026 19:04:33 GMT  
		Size: 67.1 MB (67133180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76552797de636feef7fb4154fd0eba7cfb8ef67f7811f644cfcdf80995e75211`  
		Last Modified: Thu, 09 Jul 2026 17:17:09 GMT  
		Size: 18.9 MB (18929920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c83de6c708c87bf75319ffcb32b01bb8c8e7e5fa6255cac55f80163967c4c8e6`  
		Last Modified: Thu, 09 Jul 2026 17:18:43 GMT  
		Size: 149.7 MB (149712066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6505ace50528ddb898908a5e0c3f1ff039e93400ef2b9213f164dec23e25706`  
		Last Modified: Thu, 09 Jul 2026 17:18:39 GMT  
		Size: 8.8 MB (8788955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d00d379966ed9c552841d141b51fca165feb0f2699debdee7fbfd28c18f080e9`  
		Last Modified: Thu, 09 Jul 2026 17:18:39 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb29050165e1a32faa37b7d5da22e12a58ffead3256386bcbc5c44da087b0465`  
		Last Modified: Thu, 09 Jul 2026 17:18:39 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7015e099aa7588b5cc70327a252c7f2a76e7d6ef78294b373e9ec27974925809`  
		Last Modified: Thu, 09 Jul 2026 17:18:41 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543a9aea14251291581d1eace7849759fceb43fa28d33274194e4cf55b69aee6`  
		Last Modified: Thu, 09 Jul 2026 17:18:41 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.0` - unknown; unknown

```console
$ docker pull crate@sha256:36c11c4b33f55a77e78953bb289dacea1c46b176bfc5723a6e69eb5d3325f77b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6671678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66fe6dde59ba9a8b9cec430ebf610d5cbd4191dd8720ba36b37e6152d2e03d0c`

```dockerfile
```

-	Layers:
	-	`sha256:a377d2b5895f2d790b03cd7f01220d65715169825067fc370bce5ff2e5e6a1a0`  
		Last Modified: Thu, 09 Jul 2026 17:18:39 GMT  
		Size: 6.7 MB (6650211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e58bc4db7fa02077e62466ba9968dc7649324c27106d45c45d4234d35537baae`  
		Last Modified: Thu, 09 Jul 2026 17:18:39 GMT  
		Size: 21.5 KB (21467 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.0.8`

```console
$ docker pull crate@sha256:7b6af0abb4792123cfa225c8186471bbe81e039ef336af33095a181f4e8c17bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.0.8` - linux; amd64

```console
$ docker pull crate@sha256:22b5fdb5a5740e6ce74020055affe5cef654bca68fe3ffea7d3040053efaa751
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.3 MB (245254915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58826845a4da1c6f69692969145bf778a01cc814490ca706abac8b8bbb5d4668`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:12 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:12 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 17:16:30 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 09 Jul 2026 17:18:09 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.0.8.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.0.8.tar.gz.asc crate-6.0.8.tar.gz     && rm -rf "$GNUPGHOME" crate-6.0.8.tar.gz.asc     && tar -xf crate-6.0.8.tar.gz -C /crate --strip-components=1     && rm crate-6.0.8.tar.gz # buildkit
# Thu, 09 Jul 2026 17:18:12 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 09 Jul 2026 17:18:12 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 17:18:12 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 09 Jul 2026 17:18:12 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 09 Jul 2026 17:18:12 GMT
VOLUME [/data]
# Thu, 09 Jul 2026 17:18:12 GMT
WORKDIR /data
# Thu, 09 Jul 2026 17:18:12 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 09 Jul 2026 17:18:12 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 09 Jul 2026 17:18:12 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 09 Jul 2026 17:18:12 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-06T16:07:32.860998+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.0.8
# Thu, 09 Jul 2026 17:18:12 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 17:18:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Jul 2026 17:18:12 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e787432b3044759d693031c5b5b1f432cb4b7cc6c8f9d21577a5906dd5e538c5`  
		Last Modified: Tue, 02 Jun 2026 19:04:29 GMT  
		Size: 68.6 MB (68553003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b4044c6331d38ab9e95203294c75d0edad5996289766a755b31f5113478962f`  
		Last Modified: Thu, 09 Jul 2026 17:17:04 GMT  
		Size: 18.9 MB (18889101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89a119a4d7164c1fa713252f24c34aa07b1f96e02e64008808349b329312eb77`  
		Last Modified: Thu, 09 Jul 2026 17:18:32 GMT  
		Size: 149.0 MB (149021102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e146484aa2056bbe3062db5ba169dc30bde4f5c4151103dc03fc6d0cd53d9ba9`  
		Last Modified: Thu, 09 Jul 2026 17:18:29 GMT  
		Size: 8.8 MB (8789832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47eed90f3c2df7c74b7255ee11e0daffc22c163a2e3fd75f14afd67de8fdf8d4`  
		Last Modified: Thu, 09 Jul 2026 17:18:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8463c8c162e3bee16012c0f990814672b7a56b2b365af9309fa9a6cfda0428`  
		Last Modified: Thu, 09 Jul 2026 17:18:29 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e202cb65e3ea0ccf797e8206ea31f8327ce5c03ec4fed3419d5efee0495a06d0`  
		Last Modified: Thu, 09 Jul 2026 17:18:30 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6075e5e47661eddffeaa4104aca1e611843c15724a4ee468557790b1606ad36`  
		Last Modified: Thu, 09 Jul 2026 17:18:30 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.0.8` - unknown; unknown

```console
$ docker pull crate@sha256:f52df849a94004ffd93aa7b0e9686f36f1009424ec84df53119fb2eedb8c5d0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6673643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6390fdacb50702a719d51b784eb48e07254fc58fe1bdbac3fe0b61ece4cc8be1`

```dockerfile
```

-	Layers:
	-	`sha256:83566acf03e865d649a0f275c8dc0dbb2b950874d75b35e0caeca57cb588cad1`  
		Last Modified: Thu, 09 Jul 2026 17:18:29 GMT  
		Size: 6.7 MB (6652299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47a1e432faf4fc56b523c5cdf4e36c62737eaca892cc49dc423f04dd056ca920`  
		Last Modified: Thu, 09 Jul 2026 17:18:29 GMT  
		Size: 21.3 KB (21344 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.0.8` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:101c39db7f918514b49b5ccbaddf090f074be32e1ef2e83404a5de68fc98863f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244565997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94fa25407e91a103efbe2772202a5f0e73c728d07431b7c91c34abadb3102749`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:17 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:17 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 17:16:33 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 09 Jul 2026 17:18:17 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.0.8.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.0.8.tar.gz.asc crate-6.0.8.tar.gz     && rm -rf "$GNUPGHOME" crate-6.0.8.tar.gz.asc     && tar -xf crate-6.0.8.tar.gz -C /crate --strip-components=1     && rm crate-6.0.8.tar.gz # buildkit
# Thu, 09 Jul 2026 17:18:20 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 09 Jul 2026 17:18:20 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 17:18:20 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 09 Jul 2026 17:18:20 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 09 Jul 2026 17:18:20 GMT
VOLUME [/data]
# Thu, 09 Jul 2026 17:18:20 GMT
WORKDIR /data
# Thu, 09 Jul 2026 17:18:20 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 09 Jul 2026 17:18:20 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 09 Jul 2026 17:18:20 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 09 Jul 2026 17:18:20 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-06T16:07:32.860998+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.0.8
# Thu, 09 Jul 2026 17:18:20 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 17:18:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Jul 2026 17:18:20 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4e642e2dc39d48325d258aab2be76368a8810b551698a78f8de70b4d572f710`  
		Last Modified: Tue, 02 Jun 2026 19:04:33 GMT  
		Size: 67.1 MB (67133180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76552797de636feef7fb4154fd0eba7cfb8ef67f7811f644cfcdf80995e75211`  
		Last Modified: Thu, 09 Jul 2026 17:17:09 GMT  
		Size: 18.9 MB (18929920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c83de6c708c87bf75319ffcb32b01bb8c8e7e5fa6255cac55f80163967c4c8e6`  
		Last Modified: Thu, 09 Jul 2026 17:18:43 GMT  
		Size: 149.7 MB (149712066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6505ace50528ddb898908a5e0c3f1ff039e93400ef2b9213f164dec23e25706`  
		Last Modified: Thu, 09 Jul 2026 17:18:39 GMT  
		Size: 8.8 MB (8788955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d00d379966ed9c552841d141b51fca165feb0f2699debdee7fbfd28c18f080e9`  
		Last Modified: Thu, 09 Jul 2026 17:18:39 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb29050165e1a32faa37b7d5da22e12a58ffead3256386bcbc5c44da087b0465`  
		Last Modified: Thu, 09 Jul 2026 17:18:39 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7015e099aa7588b5cc70327a252c7f2a76e7d6ef78294b373e9ec27974925809`  
		Last Modified: Thu, 09 Jul 2026 17:18:41 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543a9aea14251291581d1eace7849759fceb43fa28d33274194e4cf55b69aee6`  
		Last Modified: Thu, 09 Jul 2026 17:18:41 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.0.8` - unknown; unknown

```console
$ docker pull crate@sha256:36c11c4b33f55a77e78953bb289dacea1c46b176bfc5723a6e69eb5d3325f77b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6671678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66fe6dde59ba9a8b9cec430ebf610d5cbd4191dd8720ba36b37e6152d2e03d0c`

```dockerfile
```

-	Layers:
	-	`sha256:a377d2b5895f2d790b03cd7f01220d65715169825067fc370bce5ff2e5e6a1a0`  
		Last Modified: Thu, 09 Jul 2026 17:18:39 GMT  
		Size: 6.7 MB (6650211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e58bc4db7fa02077e62466ba9968dc7649324c27106d45c45d4234d35537baae`  
		Last Modified: Thu, 09 Jul 2026 17:18:39 GMT  
		Size: 21.5 KB (21467 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.1`

```console
$ docker pull crate@sha256:c59adf651f296ce372018ae7d82167beb6ab469052e67cccdbfc57db19f69e46
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.1` - linux; amd64

```console
$ docker pull crate@sha256:22d9738d32c9924dd00dcf0a024cf477247b86a9998f504f94ded5b410720a5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.4 MB (245383619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b860aa4a2898a18668de64029058e31c742bd61d64d1eb8d8d4228f62b31b578`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:12 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:12 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 17:18:24 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 09 Jul 2026 17:18:37 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.1.6.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.1.6.tar.gz.asc crate-6.1.6.tar.gz     && rm -rf "$GNUPGHOME" crate-6.1.6.tar.gz.asc     && tar -xf crate-6.1.6.tar.gz -C /crate --strip-components=1     && rm crate-6.1.6.tar.gz # buildkit
# Thu, 09 Jul 2026 17:18:40 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 09 Jul 2026 17:18:40 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 17:18:40 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 09 Jul 2026 17:18:40 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 09 Jul 2026 17:18:40 GMT
VOLUME [/data]
# Thu, 09 Jul 2026 17:18:40 GMT
WORKDIR /data
# Thu, 09 Jul 2026 17:18:40 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 09 Jul 2026 17:18:40 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 09 Jul 2026 17:18:40 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 09 Jul 2026 17:18:40 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-06T15:03:47.398587+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.1.6
# Thu, 09 Jul 2026 17:18:40 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 17:18:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Jul 2026 17:18:40 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e787432b3044759d693031c5b5b1f432cb4b7cc6c8f9d21577a5906dd5e538c5`  
		Last Modified: Tue, 02 Jun 2026 19:04:29 GMT  
		Size: 68.6 MB (68553003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd504983895fc44bc4c37d8ff901e86e01d0858f2ddba85a58f00bb8e88d7a5`  
		Last Modified: Thu, 09 Jul 2026 17:19:00 GMT  
		Size: 18.9 MB (18889239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff57dc7d10a75fafddbe320e7c07bd479957cfb1565cf50ab507702335e62d65`  
		Last Modified: Thu, 09 Jul 2026 17:19:03 GMT  
		Size: 149.1 MB (149149672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:286ef5a1b8702117631c2d30bd786f0ab347c6e45e7be915623ba5d13d72eea5`  
		Last Modified: Thu, 09 Jul 2026 17:19:00 GMT  
		Size: 8.8 MB (8789827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b0d938785d16f513d042d8172ebebcc080ba970bb41755b96c20dc1eb0cb68c`  
		Last Modified: Thu, 09 Jul 2026 17:18:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e58baf3096daf9bb15353c6e034278e258fe1741be1735d6dac1c0faa34f91e`  
		Last Modified: Thu, 09 Jul 2026 17:19:00 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a42f0c523ba30a77576e42c4a09fb8a8c0774b662e98fccca9194fc622316d`  
		Last Modified: Thu, 09 Jul 2026 17:19:01 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd8e7e4745ebbc3390d607248df13c88893dbc71a555098e2db205229d37e3a7`  
		Last Modified: Thu, 09 Jul 2026 17:19:02 GMT  
		Size: 503.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.1` - unknown; unknown

```console
$ docker pull crate@sha256:a72ee05b78bdc56d04ad8b2f23b6b9cdf85140a311ee718327775e7ec1feb2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6672425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1638d3bde13551343c91f30cc4d4c684877d92480360a29708de415e15b7f47a`

```dockerfile
```

-	Layers:
	-	`sha256:3a4ad3f67b43f8a7c354c8d5c65a259602db69b77bcc2bb8de6a9e79838808b5`  
		Last Modified: Thu, 09 Jul 2026 17:18:59 GMT  
		Size: 6.7 MB (6651083 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4312f8a431dc42f7d40c20430f19c3b5aaf5f54b7b3c9e96c5811256c65334bb`  
		Last Modified: Thu, 09 Jul 2026 17:18:59 GMT  
		Size: 21.3 KB (21342 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.1` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:7ef9eff0710e9e43d23cd9b783922bf2aa47ae1fa286d10d7ec72167003640ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244692450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:145e5d8cfe7b4472736a992dbbedef31f00afb7d1dcc86109397d7b67f5afd9e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:17 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:17 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 17:18:16 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 09 Jul 2026 17:18:29 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.1.6.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.1.6.tar.gz.asc crate-6.1.6.tar.gz     && rm -rf "$GNUPGHOME" crate-6.1.6.tar.gz.asc     && tar -xf crate-6.1.6.tar.gz -C /crate --strip-components=1     && rm crate-6.1.6.tar.gz # buildkit
# Thu, 09 Jul 2026 17:18:33 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 09 Jul 2026 17:18:33 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 17:18:33 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 09 Jul 2026 17:18:33 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 09 Jul 2026 17:18:33 GMT
VOLUME [/data]
# Thu, 09 Jul 2026 17:18:33 GMT
WORKDIR /data
# Thu, 09 Jul 2026 17:18:33 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 09 Jul 2026 17:18:33 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 09 Jul 2026 17:18:33 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 09 Jul 2026 17:18:33 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-06T15:03:47.398587+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.1.6
# Thu, 09 Jul 2026 17:18:33 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 17:18:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Jul 2026 17:18:33 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4e642e2dc39d48325d258aab2be76368a8810b551698a78f8de70b4d572f710`  
		Last Modified: Tue, 02 Jun 2026 19:04:33 GMT  
		Size: 67.1 MB (67133180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56de727a5003288b3da46c59d78ced55ea300a28dec9a968a489739be0f5db36`  
		Last Modified: Thu, 09 Jul 2026 17:18:52 GMT  
		Size: 18.9 MB (18929904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24554dfd9331a064d34580eb4ea8a04659e0aba7669962ebce21089ee5d62bea`  
		Last Modified: Thu, 09 Jul 2026 17:18:55 GMT  
		Size: 149.8 MB (149838434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a43d0f11ce43df2ede91c07de4a79b2e041acf5a72afff8fb2128b73b125d0c4`  
		Last Modified: Thu, 09 Jul 2026 17:18:52 GMT  
		Size: 8.8 MB (8789053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869e7658c37e5d3821e37572bb352ce3f959e31291d0b7e70000711cae0277cb`  
		Last Modified: Thu, 09 Jul 2026 17:18:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c790e51873b12d0bb2c418f2f3786332eb2bd40f060b3355b5b1dfb2b679ca46`  
		Last Modified: Thu, 09 Jul 2026 17:18:53 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a54321875573292d084ce48f284d3e3736f8b3677e30c43ebb68e0131c4bd5da`  
		Last Modified: Thu, 09 Jul 2026 17:18:54 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6075e5e47661eddffeaa4104aca1e611843c15724a4ee468557790b1606ad36`  
		Last Modified: Thu, 09 Jul 2026 17:18:30 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.1` - unknown; unknown

```console
$ docker pull crate@sha256:978092ef91816ae55364a762dc1912098c48d84fef2760dedd492f7f6bc9338f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6670464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f89b468dfb160d8687245a110c07543d81c99be72dcd2a1aa82b53564ae79dbd`

```dockerfile
```

-	Layers:
	-	`sha256:d469eeeaaacc810baf26e8605bb541f7b2430ce018c24b340d4f974447e8bf1f`  
		Last Modified: Thu, 09 Jul 2026 17:18:52 GMT  
		Size: 6.6 MB (6648995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7504ab2660ca9ea49382f64717f0c3434180f65cee0b833c061f3c26aa416d6`  
		Last Modified: Thu, 09 Jul 2026 17:18:51 GMT  
		Size: 21.5 KB (21469 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.1.6`

```console
$ docker pull crate@sha256:c59adf651f296ce372018ae7d82167beb6ab469052e67cccdbfc57db19f69e46
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.1.6` - linux; amd64

```console
$ docker pull crate@sha256:22d9738d32c9924dd00dcf0a024cf477247b86a9998f504f94ded5b410720a5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.4 MB (245383619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b860aa4a2898a18668de64029058e31c742bd61d64d1eb8d8d4228f62b31b578`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:12 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:12 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 17:18:24 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 09 Jul 2026 17:18:37 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.1.6.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.1.6.tar.gz.asc crate-6.1.6.tar.gz     && rm -rf "$GNUPGHOME" crate-6.1.6.tar.gz.asc     && tar -xf crate-6.1.6.tar.gz -C /crate --strip-components=1     && rm crate-6.1.6.tar.gz # buildkit
# Thu, 09 Jul 2026 17:18:40 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 09 Jul 2026 17:18:40 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 17:18:40 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 09 Jul 2026 17:18:40 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 09 Jul 2026 17:18:40 GMT
VOLUME [/data]
# Thu, 09 Jul 2026 17:18:40 GMT
WORKDIR /data
# Thu, 09 Jul 2026 17:18:40 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 09 Jul 2026 17:18:40 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 09 Jul 2026 17:18:40 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 09 Jul 2026 17:18:40 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-06T15:03:47.398587+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.1.6
# Thu, 09 Jul 2026 17:18:40 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 17:18:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Jul 2026 17:18:40 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e787432b3044759d693031c5b5b1f432cb4b7cc6c8f9d21577a5906dd5e538c5`  
		Last Modified: Tue, 02 Jun 2026 19:04:29 GMT  
		Size: 68.6 MB (68553003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd504983895fc44bc4c37d8ff901e86e01d0858f2ddba85a58f00bb8e88d7a5`  
		Last Modified: Thu, 09 Jul 2026 17:19:00 GMT  
		Size: 18.9 MB (18889239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff57dc7d10a75fafddbe320e7c07bd479957cfb1565cf50ab507702335e62d65`  
		Last Modified: Thu, 09 Jul 2026 17:19:03 GMT  
		Size: 149.1 MB (149149672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:286ef5a1b8702117631c2d30bd786f0ab347c6e45e7be915623ba5d13d72eea5`  
		Last Modified: Thu, 09 Jul 2026 17:19:00 GMT  
		Size: 8.8 MB (8789827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b0d938785d16f513d042d8172ebebcc080ba970bb41755b96c20dc1eb0cb68c`  
		Last Modified: Thu, 09 Jul 2026 17:18:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e58baf3096daf9bb15353c6e034278e258fe1741be1735d6dac1c0faa34f91e`  
		Last Modified: Thu, 09 Jul 2026 17:19:00 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a42f0c523ba30a77576e42c4a09fb8a8c0774b662e98fccca9194fc622316d`  
		Last Modified: Thu, 09 Jul 2026 17:19:01 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd8e7e4745ebbc3390d607248df13c88893dbc71a555098e2db205229d37e3a7`  
		Last Modified: Thu, 09 Jul 2026 17:19:02 GMT  
		Size: 503.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.1.6` - unknown; unknown

```console
$ docker pull crate@sha256:a72ee05b78bdc56d04ad8b2f23b6b9cdf85140a311ee718327775e7ec1feb2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6672425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1638d3bde13551343c91f30cc4d4c684877d92480360a29708de415e15b7f47a`

```dockerfile
```

-	Layers:
	-	`sha256:3a4ad3f67b43f8a7c354c8d5c65a259602db69b77bcc2bb8de6a9e79838808b5`  
		Last Modified: Thu, 09 Jul 2026 17:18:59 GMT  
		Size: 6.7 MB (6651083 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4312f8a431dc42f7d40c20430f19c3b5aaf5f54b7b3c9e96c5811256c65334bb`  
		Last Modified: Thu, 09 Jul 2026 17:18:59 GMT  
		Size: 21.3 KB (21342 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.1.6` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:7ef9eff0710e9e43d23cd9b783922bf2aa47ae1fa286d10d7ec72167003640ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244692450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:145e5d8cfe7b4472736a992dbbedef31f00afb7d1dcc86109397d7b67f5afd9e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:17 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:17 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 17:18:16 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 09 Jul 2026 17:18:29 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.1.6.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.1.6.tar.gz.asc crate-6.1.6.tar.gz     && rm -rf "$GNUPGHOME" crate-6.1.6.tar.gz.asc     && tar -xf crate-6.1.6.tar.gz -C /crate --strip-components=1     && rm crate-6.1.6.tar.gz # buildkit
# Thu, 09 Jul 2026 17:18:33 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 09 Jul 2026 17:18:33 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 17:18:33 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 09 Jul 2026 17:18:33 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 09 Jul 2026 17:18:33 GMT
VOLUME [/data]
# Thu, 09 Jul 2026 17:18:33 GMT
WORKDIR /data
# Thu, 09 Jul 2026 17:18:33 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 09 Jul 2026 17:18:33 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 09 Jul 2026 17:18:33 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 09 Jul 2026 17:18:33 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-06T15:03:47.398587+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.1.6
# Thu, 09 Jul 2026 17:18:33 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 17:18:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Jul 2026 17:18:33 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4e642e2dc39d48325d258aab2be76368a8810b551698a78f8de70b4d572f710`  
		Last Modified: Tue, 02 Jun 2026 19:04:33 GMT  
		Size: 67.1 MB (67133180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56de727a5003288b3da46c59d78ced55ea300a28dec9a968a489739be0f5db36`  
		Last Modified: Thu, 09 Jul 2026 17:18:52 GMT  
		Size: 18.9 MB (18929904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24554dfd9331a064d34580eb4ea8a04659e0aba7669962ebce21089ee5d62bea`  
		Last Modified: Thu, 09 Jul 2026 17:18:55 GMT  
		Size: 149.8 MB (149838434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a43d0f11ce43df2ede91c07de4a79b2e041acf5a72afff8fb2128b73b125d0c4`  
		Last Modified: Thu, 09 Jul 2026 17:18:52 GMT  
		Size: 8.8 MB (8789053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869e7658c37e5d3821e37572bb352ce3f959e31291d0b7e70000711cae0277cb`  
		Last Modified: Thu, 09 Jul 2026 17:18:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c790e51873b12d0bb2c418f2f3786332eb2bd40f060b3355b5b1dfb2b679ca46`  
		Last Modified: Thu, 09 Jul 2026 17:18:53 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a54321875573292d084ce48f284d3e3736f8b3677e30c43ebb68e0131c4bd5da`  
		Last Modified: Thu, 09 Jul 2026 17:18:54 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6075e5e47661eddffeaa4104aca1e611843c15724a4ee468557790b1606ad36`  
		Last Modified: Thu, 09 Jul 2026 17:18:30 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.1.6` - unknown; unknown

```console
$ docker pull crate@sha256:978092ef91816ae55364a762dc1912098c48d84fef2760dedd492f7f6bc9338f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6670464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f89b468dfb160d8687245a110c07543d81c99be72dcd2a1aa82b53564ae79dbd`

```dockerfile
```

-	Layers:
	-	`sha256:d469eeeaaacc810baf26e8605bb541f7b2430ce018c24b340d4f974447e8bf1f`  
		Last Modified: Thu, 09 Jul 2026 17:18:52 GMT  
		Size: 6.6 MB (6648995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7504ab2660ca9ea49382f64717f0c3434180f65cee0b833c061f3c26aa416d6`  
		Last Modified: Thu, 09 Jul 2026 17:18:51 GMT  
		Size: 21.5 KB (21469 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.2`

```console
$ docker pull crate@sha256:696200f834ce187423ba40e4e83514747daad8ce37b28aeabec8f4b0949183b9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.2` - linux; amd64

```console
$ docker pull crate@sha256:9a7c015629cf30704b1d97526944bc3c592036a0b2d510bad694f0d425b9d7aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.8 MB (247835687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b7c505bdb51829287b59b255461d815bfbc1824731708f3d52506ac80a95a34`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:12 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:12 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 17:16:30 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 09 Jul 2026 17:17:27 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.2.11.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.2.11.tar.gz.asc crate-6.2.11.tar.gz     && rm -rf "$GNUPGHOME" crate-6.2.11.tar.gz.asc     && tar -xf crate-6.2.11.tar.gz -C /crate --strip-components=1     && rm crate-6.2.11.tar.gz # buildkit
# Thu, 09 Jul 2026 17:17:29 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 09 Jul 2026 17:17:30 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 17:17:30 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 09 Jul 2026 17:17:30 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 09 Jul 2026 17:17:30 GMT
VOLUME [/data]
# Thu, 09 Jul 2026 17:17:30 GMT
WORKDIR /data
# Thu, 09 Jul 2026 17:17:30 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 09 Jul 2026 17:17:30 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 09 Jul 2026 17:17:30 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 09 Jul 2026 17:17:30 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-06T14:21:42.848444+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.2.11
# Thu, 09 Jul 2026 17:17:30 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 17:17:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Jul 2026 17:17:30 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e787432b3044759d693031c5b5b1f432cb4b7cc6c8f9d21577a5906dd5e538c5`  
		Last Modified: Tue, 02 Jun 2026 19:04:29 GMT  
		Size: 68.6 MB (68553003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b4044c6331d38ab9e95203294c75d0edad5996289766a755b31f5113478962f`  
		Last Modified: Thu, 09 Jul 2026 17:17:04 GMT  
		Size: 18.9 MB (18889101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2db179e741aeecd9ff60d5466590ff337172ebd18f7884b57fdbc72e20e6a27`  
		Last Modified: Thu, 09 Jul 2026 17:17:50 GMT  
		Size: 151.6 MB (151601756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e3cf179aa5250fcc1a88a30db2b70c394767d981cea327e2420d88675d80e4`  
		Last Modified: Thu, 09 Jul 2026 17:17:47 GMT  
		Size: 8.8 MB (8789947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:964aadfe603104a26ba24d8d4f91155e015131651021f7c895f3ecf89e430b39`  
		Last Modified: Thu, 09 Jul 2026 17:17:46 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:603bbd41acfe6545c6ea8f2d521869cb7729b769cd721adfb86fc17b06c3a5f6`  
		Last Modified: Thu, 09 Jul 2026 17:17:47 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a379e8098384e6ca0422d4fbc1ed0f596f5a7e26a280a44e02e3eae12f420cfa`  
		Last Modified: Thu, 09 Jul 2026 17:17:48 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8647fca90113eb4cbb00b3c73d714e11c73c9830d7ac4a9cba5a685b3d93358`  
		Last Modified: Thu, 09 Jul 2026 17:17:48 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.2` - unknown; unknown

```console
$ docker pull crate@sha256:3aa99ac5488e8160db1643f4e5a4c245bbe858d195147a0db90be6fa3b966dfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6678657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e3bab05d783d3a91785b2962f2d186f26b836dfc6777c52b54ab1ff84a1f14a`

```dockerfile
```

-	Layers:
	-	`sha256:94681670b2aed98289a559eff1139fd3d72ae3d07f2cc2c4b91505c9180bfba3`  
		Last Modified: Thu, 09 Jul 2026 17:17:47 GMT  
		Size: 6.7 MB (6657297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95f0d39326446cc53cd57226f648ed99aba863cec3b8aca5f041192bbfe03501`  
		Last Modified: Thu, 09 Jul 2026 17:17:46 GMT  
		Size: 21.4 KB (21360 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.2` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:1499c55e7cdd01cb07fbcb70fb9bac017d561f8087138d92808ca50bb3c9c993
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.4 MB (244394216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b1c702ef779790364909065c2e6fa0a4e4a80a07477e250999b1392adbbc1cd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:17 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:17 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 17:16:33 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 09 Jul 2026 17:17:32 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.2.11.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.2.11.tar.gz.asc crate-6.2.11.tar.gz     && rm -rf "$GNUPGHOME" crate-6.2.11.tar.gz.asc     && tar -xf crate-6.2.11.tar.gz -C /crate --strip-components=1     && rm crate-6.2.11.tar.gz # buildkit
# Thu, 09 Jul 2026 17:17:35 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 09 Jul 2026 17:17:35 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 17:17:35 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 09 Jul 2026 17:17:35 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 09 Jul 2026 17:17:35 GMT
VOLUME [/data]
# Thu, 09 Jul 2026 17:17:35 GMT
WORKDIR /data
# Thu, 09 Jul 2026 17:17:35 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 09 Jul 2026 17:17:35 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 09 Jul 2026 17:17:35 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 09 Jul 2026 17:17:35 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-06T14:21:42.848444+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.2.11
# Thu, 09 Jul 2026 17:17:35 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 17:17:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Jul 2026 17:17:35 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4e642e2dc39d48325d258aab2be76368a8810b551698a78f8de70b4d572f710`  
		Last Modified: Tue, 02 Jun 2026 19:04:33 GMT  
		Size: 67.1 MB (67133180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76552797de636feef7fb4154fd0eba7cfb8ef67f7811f644cfcdf80995e75211`  
		Last Modified: Thu, 09 Jul 2026 17:17:09 GMT  
		Size: 18.9 MB (18929920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:903ef4e5c72d87df63fb1b09b9b809464219ac104c5e1414ab351c8e3799f3e3`  
		Last Modified: Thu, 09 Jul 2026 17:17:57 GMT  
		Size: 149.5 MB (149540146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d36135478c25fd5df97fb50a065a40aa229972cd3186440cbcc6178a1c2755`  
		Last Modified: Thu, 09 Jul 2026 17:17:53 GMT  
		Size: 8.8 MB (8789091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be898eb5412b7a53d899a60d3f87fa77b8f6fa2b806678cda3b736d6b27c4e25`  
		Last Modified: Thu, 09 Jul 2026 17:17:53 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bf5277df2f704317dacabf1c2e1118b5e01abbbc2567093c3835cf2ab7c19de`  
		Last Modified: Thu, 09 Jul 2026 17:17:53 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109e1317d376adf329308ad75460625d7384546008b11a601a6b5b20cabaa344`  
		Last Modified: Thu, 09 Jul 2026 17:17:54 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f4dfc466f131d06a5548f3bd3d0bffaca3ab55bd9ad2445ca537ebe23202d0`  
		Last Modified: Thu, 09 Jul 2026 17:17:54 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.2` - unknown; unknown

```console
$ docker pull crate@sha256:4843f9c617ac1ed84e4085e1307f218a239a9d8e79abfdd0272d2dff610e72ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6676694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32200c357161726611b33ef09901affa9fd8ee3921d8e163105e26d09530cc3f`

```dockerfile
```

-	Layers:
	-	`sha256:a5250236efc1f041e3e691e4fd008b836360f741932a33ca0826ffb94ce51b4c`  
		Last Modified: Thu, 09 Jul 2026 17:17:53 GMT  
		Size: 6.7 MB (6655209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d48b2ee100b436f4809ed34671f91ddff5a2fbf1dd86f66f509613981cac68e7`  
		Last Modified: Thu, 09 Jul 2026 17:17:53 GMT  
		Size: 21.5 KB (21485 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.2.11`

```console
$ docker pull crate@sha256:696200f834ce187423ba40e4e83514747daad8ce37b28aeabec8f4b0949183b9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.2.11` - linux; amd64

```console
$ docker pull crate@sha256:9a7c015629cf30704b1d97526944bc3c592036a0b2d510bad694f0d425b9d7aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.8 MB (247835687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b7c505bdb51829287b59b255461d815bfbc1824731708f3d52506ac80a95a34`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:12 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:12 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 17:16:30 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 09 Jul 2026 17:17:27 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.2.11.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.2.11.tar.gz.asc crate-6.2.11.tar.gz     && rm -rf "$GNUPGHOME" crate-6.2.11.tar.gz.asc     && tar -xf crate-6.2.11.tar.gz -C /crate --strip-components=1     && rm crate-6.2.11.tar.gz # buildkit
# Thu, 09 Jul 2026 17:17:29 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 09 Jul 2026 17:17:30 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 17:17:30 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 09 Jul 2026 17:17:30 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 09 Jul 2026 17:17:30 GMT
VOLUME [/data]
# Thu, 09 Jul 2026 17:17:30 GMT
WORKDIR /data
# Thu, 09 Jul 2026 17:17:30 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 09 Jul 2026 17:17:30 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 09 Jul 2026 17:17:30 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 09 Jul 2026 17:17:30 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-06T14:21:42.848444+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.2.11
# Thu, 09 Jul 2026 17:17:30 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 17:17:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Jul 2026 17:17:30 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e787432b3044759d693031c5b5b1f432cb4b7cc6c8f9d21577a5906dd5e538c5`  
		Last Modified: Tue, 02 Jun 2026 19:04:29 GMT  
		Size: 68.6 MB (68553003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b4044c6331d38ab9e95203294c75d0edad5996289766a755b31f5113478962f`  
		Last Modified: Thu, 09 Jul 2026 17:17:04 GMT  
		Size: 18.9 MB (18889101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2db179e741aeecd9ff60d5466590ff337172ebd18f7884b57fdbc72e20e6a27`  
		Last Modified: Thu, 09 Jul 2026 17:17:50 GMT  
		Size: 151.6 MB (151601756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e3cf179aa5250fcc1a88a30db2b70c394767d981cea327e2420d88675d80e4`  
		Last Modified: Thu, 09 Jul 2026 17:17:47 GMT  
		Size: 8.8 MB (8789947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:964aadfe603104a26ba24d8d4f91155e015131651021f7c895f3ecf89e430b39`  
		Last Modified: Thu, 09 Jul 2026 17:17:46 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:603bbd41acfe6545c6ea8f2d521869cb7729b769cd721adfb86fc17b06c3a5f6`  
		Last Modified: Thu, 09 Jul 2026 17:17:47 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a379e8098384e6ca0422d4fbc1ed0f596f5a7e26a280a44e02e3eae12f420cfa`  
		Last Modified: Thu, 09 Jul 2026 17:17:48 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8647fca90113eb4cbb00b3c73d714e11c73c9830d7ac4a9cba5a685b3d93358`  
		Last Modified: Thu, 09 Jul 2026 17:17:48 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.2.11` - unknown; unknown

```console
$ docker pull crate@sha256:3aa99ac5488e8160db1643f4e5a4c245bbe858d195147a0db90be6fa3b966dfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6678657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e3bab05d783d3a91785b2962f2d186f26b836dfc6777c52b54ab1ff84a1f14a`

```dockerfile
```

-	Layers:
	-	`sha256:94681670b2aed98289a559eff1139fd3d72ae3d07f2cc2c4b91505c9180bfba3`  
		Last Modified: Thu, 09 Jul 2026 17:17:47 GMT  
		Size: 6.7 MB (6657297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95f0d39326446cc53cd57226f648ed99aba863cec3b8aca5f041192bbfe03501`  
		Last Modified: Thu, 09 Jul 2026 17:17:46 GMT  
		Size: 21.4 KB (21360 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.2.11` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:1499c55e7cdd01cb07fbcb70fb9bac017d561f8087138d92808ca50bb3c9c993
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.4 MB (244394216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b1c702ef779790364909065c2e6fa0a4e4a80a07477e250999b1392adbbc1cd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:17 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:17 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 17:16:33 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 09 Jul 2026 17:17:32 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.2.11.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.2.11.tar.gz.asc crate-6.2.11.tar.gz     && rm -rf "$GNUPGHOME" crate-6.2.11.tar.gz.asc     && tar -xf crate-6.2.11.tar.gz -C /crate --strip-components=1     && rm crate-6.2.11.tar.gz # buildkit
# Thu, 09 Jul 2026 17:17:35 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 09 Jul 2026 17:17:35 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 17:17:35 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 09 Jul 2026 17:17:35 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 09 Jul 2026 17:17:35 GMT
VOLUME [/data]
# Thu, 09 Jul 2026 17:17:35 GMT
WORKDIR /data
# Thu, 09 Jul 2026 17:17:35 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 09 Jul 2026 17:17:35 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 09 Jul 2026 17:17:35 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 09 Jul 2026 17:17:35 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-06T14:21:42.848444+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.2.11
# Thu, 09 Jul 2026 17:17:35 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 17:17:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Jul 2026 17:17:35 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4e642e2dc39d48325d258aab2be76368a8810b551698a78f8de70b4d572f710`  
		Last Modified: Tue, 02 Jun 2026 19:04:33 GMT  
		Size: 67.1 MB (67133180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76552797de636feef7fb4154fd0eba7cfb8ef67f7811f644cfcdf80995e75211`  
		Last Modified: Thu, 09 Jul 2026 17:17:09 GMT  
		Size: 18.9 MB (18929920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:903ef4e5c72d87df63fb1b09b9b809464219ac104c5e1414ab351c8e3799f3e3`  
		Last Modified: Thu, 09 Jul 2026 17:17:57 GMT  
		Size: 149.5 MB (149540146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d36135478c25fd5df97fb50a065a40aa229972cd3186440cbcc6178a1c2755`  
		Last Modified: Thu, 09 Jul 2026 17:17:53 GMT  
		Size: 8.8 MB (8789091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be898eb5412b7a53d899a60d3f87fa77b8f6fa2b806678cda3b736d6b27c4e25`  
		Last Modified: Thu, 09 Jul 2026 17:17:53 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bf5277df2f704317dacabf1c2e1118b5e01abbbc2567093c3835cf2ab7c19de`  
		Last Modified: Thu, 09 Jul 2026 17:17:53 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109e1317d376adf329308ad75460625d7384546008b11a601a6b5b20cabaa344`  
		Last Modified: Thu, 09 Jul 2026 17:17:54 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f4dfc466f131d06a5548f3bd3d0bffaca3ab55bd9ad2445ca537ebe23202d0`  
		Last Modified: Thu, 09 Jul 2026 17:17:54 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.2.11` - unknown; unknown

```console
$ docker pull crate@sha256:4843f9c617ac1ed84e4085e1307f218a239a9d8e79abfdd0272d2dff610e72ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6676694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32200c357161726611b33ef09901affa9fd8ee3921d8e163105e26d09530cc3f`

```dockerfile
```

-	Layers:
	-	`sha256:a5250236efc1f041e3e691e4fd008b836360f741932a33ca0826ffb94ce51b4c`  
		Last Modified: Thu, 09 Jul 2026 17:17:53 GMT  
		Size: 6.7 MB (6655209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d48b2ee100b436f4809ed34671f91ddff5a2fbf1dd86f66f509613981cac68e7`  
		Last Modified: Thu, 09 Jul 2026 17:17:53 GMT  
		Size: 21.5 KB (21485 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.3`

```console
$ docker pull crate@sha256:6dd1817b1386a482dc70ac049a1ad1c745d4cb7075f363a4a252c2c3734c11d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.3` - linux; amd64

```console
$ docker pull crate@sha256:7bf9c9dc6d38e63366268067c5cd0bd7a99bd243dda8df892210565aa4d7bb27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.6 MB (235579363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e87bd8ec4e4276681fee989116daafbc01181efc1a16523e64d7daa401dfc5f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:12 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:12 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 17:16:30 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 09 Jul 2026 17:16:43 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.3.5.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.3.5.tar.gz.asc crate-6.3.5.tar.gz     && rm -rf "$GNUPGHOME" crate-6.3.5.tar.gz.asc     && tar -xf crate-6.3.5.tar.gz -C /crate --strip-components=1     && rm crate-6.3.5.tar.gz # buildkit
# Thu, 09 Jul 2026 17:16:45 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 09 Jul 2026 17:16:46 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 17:16:46 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 09 Jul 2026 17:16:46 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 09 Jul 2026 17:16:46 GMT
VOLUME [/data]
# Thu, 09 Jul 2026 17:16:46 GMT
WORKDIR /data
# Thu, 09 Jul 2026 17:16:46 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 09 Jul 2026 17:16:46 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 09 Jul 2026 17:16:46 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 09 Jul 2026 17:16:46 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-06T13:41:38.417686+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.3.5
# Thu, 09 Jul 2026 17:16:46 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 17:16:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Jul 2026 17:16:46 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e787432b3044759d693031c5b5b1f432cb4b7cc6c8f9d21577a5906dd5e538c5`  
		Last Modified: Tue, 02 Jun 2026 19:04:29 GMT  
		Size: 68.6 MB (68553003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b4044c6331d38ab9e95203294c75d0edad5996289766a755b31f5113478962f`  
		Last Modified: Thu, 09 Jul 2026 17:17:04 GMT  
		Size: 18.9 MB (18889101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4045b9d4803364b3064d3ec4b7158514abdaf317ca9ccb00615ce62f3500a7ec`  
		Last Modified: Thu, 09 Jul 2026 17:17:07 GMT  
		Size: 139.3 MB (139345393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb64c73438b6a81dc13c7279a1998aad647978a57f6b952571eebf116354e769`  
		Last Modified: Thu, 09 Jul 2026 17:17:03 GMT  
		Size: 8.8 MB (8789990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd6a6868f1a4b0e51de3dfa51897589546b1ea94135a61c1d2330f5b7c058ffb`  
		Last Modified: Thu, 09 Jul 2026 17:17:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a36513d16bc7cca671299e9951c4e2b1c4290740ed484b860c5a52eae40638`  
		Last Modified: Thu, 09 Jul 2026 17:17:04 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a0162b8948315f359fd4c66de53d1b3434610109505c81a62ac8ff655a9cc7`  
		Last Modified: Thu, 09 Jul 2026 17:17:05 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d765eb819d2900ad3eb02a12c14c7c7b5322f978067e082a4b5df2aaf58f8b56`  
		Last Modified: Thu, 09 Jul 2026 17:17:06 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.3` - unknown; unknown

```console
$ docker pull crate@sha256:fdbb9860c10c35177654ca56b53f08360e78c2606cd18568f3aae2a69f9ac418
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6628648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a72d129b7f5817a9f1fd55357df6c4756a62557dc0289d12b7dc88d82d922f01`

```dockerfile
```

-	Layers:
	-	`sha256:44e86df328dae7dd31fad151b2ab54fe06f833a8ace3f823119454852b0b75ac`  
		Last Modified: Thu, 09 Jul 2026 17:17:03 GMT  
		Size: 6.6 MB (6607010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b990c25eb360fe5243bef6efb0412206b2ccae8837f7bc4f05145ff8c06f98f6`  
		Last Modified: Thu, 09 Jul 2026 17:17:03 GMT  
		Size: 21.6 KB (21638 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.3` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:5502ba6efa0d2c57e94ee7e6c5d1c23b8c60ee74b5461cc863b9fbc26b28bf35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.1 MB (232133839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca2731b7683bef28fee7850ec0b51078c65dffd3aa70a0ac2ccb14d2938cc0c2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:17 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:17 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 17:16:33 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 09 Jul 2026 17:16:46 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.3.5.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.3.5.tar.gz.asc crate-6.3.5.tar.gz     && rm -rf "$GNUPGHOME" crate-6.3.5.tar.gz.asc     && tar -xf crate-6.3.5.tar.gz -C /crate --strip-components=1     && rm crate-6.3.5.tar.gz # buildkit
# Thu, 09 Jul 2026 17:16:49 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 09 Jul 2026 17:16:49 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 17:16:49 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 09 Jul 2026 17:16:49 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 09 Jul 2026 17:16:49 GMT
VOLUME [/data]
# Thu, 09 Jul 2026 17:16:49 GMT
WORKDIR /data
# Thu, 09 Jul 2026 17:16:49 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 09 Jul 2026 17:16:49 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 09 Jul 2026 17:16:49 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 09 Jul 2026 17:16:49 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-06T13:41:38.417686+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.3.5
# Thu, 09 Jul 2026 17:16:49 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 17:16:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Jul 2026 17:16:49 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4e642e2dc39d48325d258aab2be76368a8810b551698a78f8de70b4d572f710`  
		Last Modified: Tue, 02 Jun 2026 19:04:33 GMT  
		Size: 67.1 MB (67133180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76552797de636feef7fb4154fd0eba7cfb8ef67f7811f644cfcdf80995e75211`  
		Last Modified: Thu, 09 Jul 2026 17:17:09 GMT  
		Size: 18.9 MB (18929920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf8650dacddf8392aa476311884ee9afb33a3d47bff4914bcdbef978166bcaa4`  
		Last Modified: Thu, 09 Jul 2026 17:17:12 GMT  
		Size: 137.3 MB (137279646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7779fa4b0e7715c16589cc567d99f37cdbf72744fcadb74418e9304510af6e02`  
		Last Modified: Thu, 09 Jul 2026 17:17:08 GMT  
		Size: 8.8 MB (8789213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e11f960c7d05574a0b2a4a69969f7b71e24decec68266cb202fc1eb16ecfef7`  
		Last Modified: Thu, 09 Jul 2026 17:17:08 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1834c2558aaeffeb9d39d97214c58a5dd4195dc047cd7ddaa9ac40ab348420e5`  
		Last Modified: Thu, 09 Jul 2026 17:17:09 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d549161b761d1e5ab509175b7a36754d059b6f7010c30b6e6fbdd61e58df4415`  
		Last Modified: Thu, 09 Jul 2026 17:17:10 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:608c7ae81c775f69a3b067af048ba66505f3dff18a72bb4a6eb51fe117dd8763`  
		Last Modified: Thu, 09 Jul 2026 17:17:10 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.3` - unknown; unknown

```console
$ docker pull crate@sha256:1c9a68769d2932edfe4ad6c3d869f4c1f22241efb141fb75a8810221d8ead352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6626710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9d64d91afa342de6ba742bb5ddb507ded71d486d95a0651a1f2946e9d1faf9`

```dockerfile
```

-	Layers:
	-	`sha256:6bb144e8657e106cc76ac30222597240f9a0fc1feff74df62d4ef440ad868d94`  
		Last Modified: Thu, 09 Jul 2026 17:17:08 GMT  
		Size: 6.6 MB (6604934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecf58bbc0eb82ce57e20b1e21c3d18c507dbc1169167dafe67d9b1c972514d75`  
		Last Modified: Thu, 09 Jul 2026 17:17:08 GMT  
		Size: 21.8 KB (21776 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.3.5`

```console
$ docker pull crate@sha256:6dd1817b1386a482dc70ac049a1ad1c745d4cb7075f363a4a252c2c3734c11d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.3.5` - linux; amd64

```console
$ docker pull crate@sha256:7bf9c9dc6d38e63366268067c5cd0bd7a99bd243dda8df892210565aa4d7bb27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.6 MB (235579363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e87bd8ec4e4276681fee989116daafbc01181efc1a16523e64d7daa401dfc5f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:12 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:12 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 17:16:30 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 09 Jul 2026 17:16:43 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.3.5.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.3.5.tar.gz.asc crate-6.3.5.tar.gz     && rm -rf "$GNUPGHOME" crate-6.3.5.tar.gz.asc     && tar -xf crate-6.3.5.tar.gz -C /crate --strip-components=1     && rm crate-6.3.5.tar.gz # buildkit
# Thu, 09 Jul 2026 17:16:45 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 09 Jul 2026 17:16:46 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 17:16:46 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 09 Jul 2026 17:16:46 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 09 Jul 2026 17:16:46 GMT
VOLUME [/data]
# Thu, 09 Jul 2026 17:16:46 GMT
WORKDIR /data
# Thu, 09 Jul 2026 17:16:46 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 09 Jul 2026 17:16:46 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 09 Jul 2026 17:16:46 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 09 Jul 2026 17:16:46 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-06T13:41:38.417686+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.3.5
# Thu, 09 Jul 2026 17:16:46 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 17:16:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Jul 2026 17:16:46 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e787432b3044759d693031c5b5b1f432cb4b7cc6c8f9d21577a5906dd5e538c5`  
		Last Modified: Tue, 02 Jun 2026 19:04:29 GMT  
		Size: 68.6 MB (68553003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b4044c6331d38ab9e95203294c75d0edad5996289766a755b31f5113478962f`  
		Last Modified: Thu, 09 Jul 2026 17:17:04 GMT  
		Size: 18.9 MB (18889101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4045b9d4803364b3064d3ec4b7158514abdaf317ca9ccb00615ce62f3500a7ec`  
		Last Modified: Thu, 09 Jul 2026 17:17:07 GMT  
		Size: 139.3 MB (139345393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb64c73438b6a81dc13c7279a1998aad647978a57f6b952571eebf116354e769`  
		Last Modified: Thu, 09 Jul 2026 17:17:03 GMT  
		Size: 8.8 MB (8789990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd6a6868f1a4b0e51de3dfa51897589546b1ea94135a61c1d2330f5b7c058ffb`  
		Last Modified: Thu, 09 Jul 2026 17:17:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a36513d16bc7cca671299e9951c4e2b1c4290740ed484b860c5a52eae40638`  
		Last Modified: Thu, 09 Jul 2026 17:17:04 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a0162b8948315f359fd4c66de53d1b3434610109505c81a62ac8ff655a9cc7`  
		Last Modified: Thu, 09 Jul 2026 17:17:05 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d765eb819d2900ad3eb02a12c14c7c7b5322f978067e082a4b5df2aaf58f8b56`  
		Last Modified: Thu, 09 Jul 2026 17:17:06 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.3.5` - unknown; unknown

```console
$ docker pull crate@sha256:fdbb9860c10c35177654ca56b53f08360e78c2606cd18568f3aae2a69f9ac418
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6628648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a72d129b7f5817a9f1fd55357df6c4756a62557dc0289d12b7dc88d82d922f01`

```dockerfile
```

-	Layers:
	-	`sha256:44e86df328dae7dd31fad151b2ab54fe06f833a8ace3f823119454852b0b75ac`  
		Last Modified: Thu, 09 Jul 2026 17:17:03 GMT  
		Size: 6.6 MB (6607010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b990c25eb360fe5243bef6efb0412206b2ccae8837f7bc4f05145ff8c06f98f6`  
		Last Modified: Thu, 09 Jul 2026 17:17:03 GMT  
		Size: 21.6 KB (21638 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.3.5` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:5502ba6efa0d2c57e94ee7e6c5d1c23b8c60ee74b5461cc863b9fbc26b28bf35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.1 MB (232133839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca2731b7683bef28fee7850ec0b51078c65dffd3aa70a0ac2ccb14d2938cc0c2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:17 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:17 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 17:16:33 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 09 Jul 2026 17:16:46 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.3.5.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.3.5.tar.gz.asc crate-6.3.5.tar.gz     && rm -rf "$GNUPGHOME" crate-6.3.5.tar.gz.asc     && tar -xf crate-6.3.5.tar.gz -C /crate --strip-components=1     && rm crate-6.3.5.tar.gz # buildkit
# Thu, 09 Jul 2026 17:16:49 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 09 Jul 2026 17:16:49 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 17:16:49 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 09 Jul 2026 17:16:49 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 09 Jul 2026 17:16:49 GMT
VOLUME [/data]
# Thu, 09 Jul 2026 17:16:49 GMT
WORKDIR /data
# Thu, 09 Jul 2026 17:16:49 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 09 Jul 2026 17:16:49 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 09 Jul 2026 17:16:49 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 09 Jul 2026 17:16:49 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-06T13:41:38.417686+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.3.5
# Thu, 09 Jul 2026 17:16:49 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 17:16:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Jul 2026 17:16:49 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4e642e2dc39d48325d258aab2be76368a8810b551698a78f8de70b4d572f710`  
		Last Modified: Tue, 02 Jun 2026 19:04:33 GMT  
		Size: 67.1 MB (67133180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76552797de636feef7fb4154fd0eba7cfb8ef67f7811f644cfcdf80995e75211`  
		Last Modified: Thu, 09 Jul 2026 17:17:09 GMT  
		Size: 18.9 MB (18929920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf8650dacddf8392aa476311884ee9afb33a3d47bff4914bcdbef978166bcaa4`  
		Last Modified: Thu, 09 Jul 2026 17:17:12 GMT  
		Size: 137.3 MB (137279646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7779fa4b0e7715c16589cc567d99f37cdbf72744fcadb74418e9304510af6e02`  
		Last Modified: Thu, 09 Jul 2026 17:17:08 GMT  
		Size: 8.8 MB (8789213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e11f960c7d05574a0b2a4a69969f7b71e24decec68266cb202fc1eb16ecfef7`  
		Last Modified: Thu, 09 Jul 2026 17:17:08 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1834c2558aaeffeb9d39d97214c58a5dd4195dc047cd7ddaa9ac40ab348420e5`  
		Last Modified: Thu, 09 Jul 2026 17:17:09 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d549161b761d1e5ab509175b7a36754d059b6f7010c30b6e6fbdd61e58df4415`  
		Last Modified: Thu, 09 Jul 2026 17:17:10 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:608c7ae81c775f69a3b067af048ba66505f3dff18a72bb4a6eb51fe117dd8763`  
		Last Modified: Thu, 09 Jul 2026 17:17:10 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.3.5` - unknown; unknown

```console
$ docker pull crate@sha256:1c9a68769d2932edfe4ad6c3d869f4c1f22241efb141fb75a8810221d8ead352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6626710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9d64d91afa342de6ba742bb5ddb507ded71d486d95a0651a1f2946e9d1faf9`

```dockerfile
```

-	Layers:
	-	`sha256:6bb144e8657e106cc76ac30222597240f9a0fc1feff74df62d4ef440ad868d94`  
		Last Modified: Thu, 09 Jul 2026 17:17:08 GMT  
		Size: 6.6 MB (6604934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecf58bbc0eb82ce57e20b1e21c3d18c507dbc1169167dafe67d9b1c972514d75`  
		Last Modified: Thu, 09 Jul 2026 17:17:08 GMT  
		Size: 21.8 KB (21776 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:latest`

```console
$ docker pull crate@sha256:6dd1817b1386a482dc70ac049a1ad1c745d4cb7075f363a4a252c2c3734c11d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:7bf9c9dc6d38e63366268067c5cd0bd7a99bd243dda8df892210565aa4d7bb27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.6 MB (235579363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e87bd8ec4e4276681fee989116daafbc01181efc1a16523e64d7daa401dfc5f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:12 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:12 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 17:16:30 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 09 Jul 2026 17:16:43 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.3.5.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.3.5.tar.gz.asc crate-6.3.5.tar.gz     && rm -rf "$GNUPGHOME" crate-6.3.5.tar.gz.asc     && tar -xf crate-6.3.5.tar.gz -C /crate --strip-components=1     && rm crate-6.3.5.tar.gz # buildkit
# Thu, 09 Jul 2026 17:16:45 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 09 Jul 2026 17:16:46 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 17:16:46 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 09 Jul 2026 17:16:46 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 09 Jul 2026 17:16:46 GMT
VOLUME [/data]
# Thu, 09 Jul 2026 17:16:46 GMT
WORKDIR /data
# Thu, 09 Jul 2026 17:16:46 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 09 Jul 2026 17:16:46 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 09 Jul 2026 17:16:46 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 09 Jul 2026 17:16:46 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-06T13:41:38.417686+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.3.5
# Thu, 09 Jul 2026 17:16:46 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 17:16:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Jul 2026 17:16:46 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e787432b3044759d693031c5b5b1f432cb4b7cc6c8f9d21577a5906dd5e538c5`  
		Last Modified: Tue, 02 Jun 2026 19:04:29 GMT  
		Size: 68.6 MB (68553003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b4044c6331d38ab9e95203294c75d0edad5996289766a755b31f5113478962f`  
		Last Modified: Thu, 09 Jul 2026 17:17:04 GMT  
		Size: 18.9 MB (18889101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4045b9d4803364b3064d3ec4b7158514abdaf317ca9ccb00615ce62f3500a7ec`  
		Last Modified: Thu, 09 Jul 2026 17:17:07 GMT  
		Size: 139.3 MB (139345393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb64c73438b6a81dc13c7279a1998aad647978a57f6b952571eebf116354e769`  
		Last Modified: Thu, 09 Jul 2026 17:17:03 GMT  
		Size: 8.8 MB (8789990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd6a6868f1a4b0e51de3dfa51897589546b1ea94135a61c1d2330f5b7c058ffb`  
		Last Modified: Thu, 09 Jul 2026 17:17:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a36513d16bc7cca671299e9951c4e2b1c4290740ed484b860c5a52eae40638`  
		Last Modified: Thu, 09 Jul 2026 17:17:04 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a0162b8948315f359fd4c66de53d1b3434610109505c81a62ac8ff655a9cc7`  
		Last Modified: Thu, 09 Jul 2026 17:17:05 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d765eb819d2900ad3eb02a12c14c7c7b5322f978067e082a4b5df2aaf58f8b56`  
		Last Modified: Thu, 09 Jul 2026 17:17:06 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:fdbb9860c10c35177654ca56b53f08360e78c2606cd18568f3aae2a69f9ac418
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6628648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a72d129b7f5817a9f1fd55357df6c4756a62557dc0289d12b7dc88d82d922f01`

```dockerfile
```

-	Layers:
	-	`sha256:44e86df328dae7dd31fad151b2ab54fe06f833a8ace3f823119454852b0b75ac`  
		Last Modified: Thu, 09 Jul 2026 17:17:03 GMT  
		Size: 6.6 MB (6607010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b990c25eb360fe5243bef6efb0412206b2ccae8837f7bc4f05145ff8c06f98f6`  
		Last Modified: Thu, 09 Jul 2026 17:17:03 GMT  
		Size: 21.6 KB (21638 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:latest` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:5502ba6efa0d2c57e94ee7e6c5d1c23b8c60ee74b5461cc863b9fbc26b28bf35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.1 MB (232133839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca2731b7683bef28fee7850ec0b51078c65dffd3aa70a0ac2ccb14d2938cc0c2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:17 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:17 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 17:16:33 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 09 Jul 2026 17:16:46 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.3.5.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.3.5.tar.gz.asc crate-6.3.5.tar.gz     && rm -rf "$GNUPGHOME" crate-6.3.5.tar.gz.asc     && tar -xf crate-6.3.5.tar.gz -C /crate --strip-components=1     && rm crate-6.3.5.tar.gz # buildkit
# Thu, 09 Jul 2026 17:16:49 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 09 Jul 2026 17:16:49 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 17:16:49 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 09 Jul 2026 17:16:49 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 09 Jul 2026 17:16:49 GMT
VOLUME [/data]
# Thu, 09 Jul 2026 17:16:49 GMT
WORKDIR /data
# Thu, 09 Jul 2026 17:16:49 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 09 Jul 2026 17:16:49 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 09 Jul 2026 17:16:49 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 09 Jul 2026 17:16:49 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-06T13:41:38.417686+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.3.5
# Thu, 09 Jul 2026 17:16:49 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 17:16:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Jul 2026 17:16:49 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4e642e2dc39d48325d258aab2be76368a8810b551698a78f8de70b4d572f710`  
		Last Modified: Tue, 02 Jun 2026 19:04:33 GMT  
		Size: 67.1 MB (67133180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76552797de636feef7fb4154fd0eba7cfb8ef67f7811f644cfcdf80995e75211`  
		Last Modified: Thu, 09 Jul 2026 17:17:09 GMT  
		Size: 18.9 MB (18929920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf8650dacddf8392aa476311884ee9afb33a3d47bff4914bcdbef978166bcaa4`  
		Last Modified: Thu, 09 Jul 2026 17:17:12 GMT  
		Size: 137.3 MB (137279646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7779fa4b0e7715c16589cc567d99f37cdbf72744fcadb74418e9304510af6e02`  
		Last Modified: Thu, 09 Jul 2026 17:17:08 GMT  
		Size: 8.8 MB (8789213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e11f960c7d05574a0b2a4a69969f7b71e24decec68266cb202fc1eb16ecfef7`  
		Last Modified: Thu, 09 Jul 2026 17:17:08 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1834c2558aaeffeb9d39d97214c58a5dd4195dc047cd7ddaa9ac40ab348420e5`  
		Last Modified: Thu, 09 Jul 2026 17:17:09 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d549161b761d1e5ab509175b7a36754d059b6f7010c30b6e6fbdd61e58df4415`  
		Last Modified: Thu, 09 Jul 2026 17:17:10 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:608c7ae81c775f69a3b067af048ba66505f3dff18a72bb4a6eb51fe117dd8763`  
		Last Modified: Thu, 09 Jul 2026 17:17:10 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:1c9a68769d2932edfe4ad6c3d869f4c1f22241efb141fb75a8810221d8ead352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6626710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9d64d91afa342de6ba742bb5ddb507ded71d486d95a0651a1f2946e9d1faf9`

```dockerfile
```

-	Layers:
	-	`sha256:6bb144e8657e106cc76ac30222597240f9a0fc1feff74df62d4ef440ad868d94`  
		Last Modified: Thu, 09 Jul 2026 17:17:08 GMT  
		Size: 6.6 MB (6604934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecf58bbc0eb82ce57e20b1e21c3d18c507dbc1169167dafe67d9b1c972514d75`  
		Last Modified: Thu, 09 Jul 2026 17:17:08 GMT  
		Size: 21.8 KB (21776 bytes)  
		MIME: application/vnd.in-toto+json
