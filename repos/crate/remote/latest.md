## `crate:latest`

```console
$ docker pull crate@sha256:d26c4c6c35834a00be523eae8e1a17af9f55096a954d735c67cc2af5ab98f2c8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:5715b7d501ea56a670193233d7ae06d2904295f2f43f83ffba316dd50275e55e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.5 MB (245505189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6b1a5c041f21b2ab71a9ccd0654d3272089b4e0edfee2735f54964281019b57`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:12 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:12 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 17:30:15 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Fri, 21 Aug 2026 17:30:27 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.3.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.3.tar.gz.asc crate-6.4.3.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.3.tar.gz.asc     && tar -xf crate-6.4.3.tar.gz -C /crate --strip-components=1     && rm crate-6.4.3.tar.gz # buildkit
# Fri, 21 Aug 2026 17:30:30 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Fri, 21 Aug 2026 17:30:30 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 17:30:30 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 21 Aug 2026 17:30:30 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Fri, 21 Aug 2026 17:30:30 GMT
VOLUME [/data]
# Fri, 21 Aug 2026 17:30:30 GMT
WORKDIR /data
# Fri, 21 Aug 2026 17:30:30 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Fri, 21 Aug 2026 17:30:30 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Fri, 21 Aug 2026 17:30:30 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Fri, 21 Aug 2026 17:30:30 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-08-19T11:57:38.146976+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.3
# Fri, 21 Aug 2026 17:30:30 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 21 Aug 2026 17:30:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Aug 2026 17:30:30 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e787432b3044759d693031c5b5b1f432cb4b7cc6c8f9d21577a5906dd5e538c5`  
		Last Modified: Tue, 02 Jun 2026 19:04:29 GMT  
		Size: 68.6 MB (68553003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9de075094dc2d2b92d430ce14c1858dc98c526dfaea15d2ce574fff7084e2a9`  
		Last Modified: Fri, 21 Aug 2026 17:30:47 GMT  
		Size: 18.9 MB (18883196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0c1ca9760708ca21277e6cb29d271730ff2198f6b40056a5060277340467253`  
		Last Modified: Fri, 21 Aug 2026 17:30:50 GMT  
		Size: 149.2 MB (149210915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcd1aa052a26c9f33bfbb6883518aacb42e8c5fb92f15abe52faedfdeb5ac571`  
		Last Modified: Fri, 21 Aug 2026 17:30:47 GMT  
		Size: 8.9 MB (8856199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d53b6d091dd5cc0988ffe4a04287c59f782036d96f2658380a7d3b35a4f8eb5`  
		Last Modified: Fri, 21 Aug 2026 17:30:46 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0c55464d31e9ef72de014b9ffd8c0a62063510776ad9e17cac2c726100056c2`  
		Last Modified: Fri, 21 Aug 2026 17:30:48 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e6f82bcebbb1084a4dd75732dd0ada4e43f2a9fa8af98f40eb57dc7094eb68`  
		Last Modified: Fri, 21 Aug 2026 17:30:48 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5de982051ee06f0e1a5ce1e58ea7a0aca6e8698966a467b3b7826b21b8b526d`  
		Last Modified: Fri, 21 Aug 2026 17:30:49 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:aa65fbd3f3d4de6ec095b27e901d6f96a5ddf7258a16bd4bc2e4cbb71ad9364e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6628650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5754bf9f520cb6e4259528a49b0072da92916cbf91b4e0dd3a4b8b70afefd0f2`

```dockerfile
```

-	Layers:
	-	`sha256:9e86049a9583b814ad475f3b0a0d0c430b744d746fc223118d8cf27167b9a8db`  
		Last Modified: Fri, 21 Aug 2026 17:30:47 GMT  
		Size: 6.6 MB (6607010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9281c952966aec2257e1c87db0fd874b51f883f209541fd542235655e6f762da`  
		Last Modified: Fri, 21 Aug 2026 17:30:46 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:latest` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:9e52167539b1a4ae394037bc259599ee1eb1e23e37d16cb61f828ac2287c37a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.7 MB (241744628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e029a4e09828054e722ef9e0cfd980c7b11ad26e2671eede2b12d094fd376fd7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:17 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:17 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 17:30:41 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Fri, 21 Aug 2026 17:30:55 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.3.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.3.tar.gz.asc crate-6.4.3.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.3.tar.gz.asc     && tar -xf crate-6.4.3.tar.gz -C /crate --strip-components=1     && rm crate-6.4.3.tar.gz # buildkit
# Fri, 21 Aug 2026 17:30:58 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Fri, 21 Aug 2026 17:30:58 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 17:30:58 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 21 Aug 2026 17:30:58 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Fri, 21 Aug 2026 17:30:58 GMT
VOLUME [/data]
# Fri, 21 Aug 2026 17:30:58 GMT
WORKDIR /data
# Fri, 21 Aug 2026 17:30:58 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Fri, 21 Aug 2026 17:30:58 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Fri, 21 Aug 2026 17:30:58 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Fri, 21 Aug 2026 17:30:58 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-08-19T11:57:38.146976+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.3
# Fri, 21 Aug 2026 17:30:58 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 21 Aug 2026 17:30:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Aug 2026 17:30:58 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4e642e2dc39d48325d258aab2be76368a8810b551698a78f8de70b4d572f710`  
		Last Modified: Tue, 02 Jun 2026 19:04:33 GMT  
		Size: 67.1 MB (67133180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf5f0679193e743745202bacfb4bfe405bbbe78c74a2e502ae7a62bbc46c0df7`  
		Last Modified: Fri, 21 Aug 2026 17:31:18 GMT  
		Size: 18.9 MB (18922999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6bc03887d327c6a59a06d8a231d4a170a7c1e4c1fecc2a305f514af639d8c66`  
		Last Modified: Fri, 21 Aug 2026 17:31:22 GMT  
		Size: 146.8 MB (146830699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c05b7a9c228380e14b5f34688cfac6809343c1ac8532bb67ed52fe32434b5e57`  
		Last Modified: Fri, 21 Aug 2026 17:31:18 GMT  
		Size: 8.9 MB (8855872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:744d4f4e9cfa15eca3152fc08147d815707299dfd148f33fd27bfc1e7540fe3e`  
		Last Modified: Fri, 21 Aug 2026 17:31:17 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84b2a9eb9574f8cff85af766dee8f6c7472ca2e49ccfef5761636170836a187e`  
		Last Modified: Fri, 21 Aug 2026 17:31:19 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:284fb24b2662280d6edadfc4422e1d6f5b63218cf960578cf0531e24f85c0b93`  
		Last Modified: Fri, 21 Aug 2026 17:31:19 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95aa00e46e83ac4ff31c7de0ef9fe69c13d7b411c741cccb442fdba08b8b0ccf`  
		Last Modified: Fri, 21 Aug 2026 17:31:20 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:07e4c56528c0ef6779a43b3358348837e4fbfd14b2d2d0c748a63affdab7889d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6626711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63799ecc955140806c9031e8aa22b709a38a9aa62e739f27d3c01dd8fad78a1e`

```dockerfile
```

-	Layers:
	-	`sha256:ced1dacf54741c39a93cb4a3d99d0b81b635e8cdd5e70c24b96e62fef11e7476`  
		Last Modified: Fri, 21 Aug 2026 17:31:18 GMT  
		Size: 6.6 MB (6604934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb9c977b029ed11911ba3a5da45e7bced20fe124dd8e93b0e73977cba6a78d7d`  
		Last Modified: Fri, 21 Aug 2026 17:31:17 GMT  
		Size: 21.8 KB (21777 bytes)  
		MIME: application/vnd.in-toto+json
