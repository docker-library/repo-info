<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:8.19.21`](#elasticsearch81921)
-	[`elasticsearch:9.4.6`](#elasticsearch946)
-	[`elasticsearch:9.5.3`](#elasticsearch953)

## `elasticsearch:8.19.21`

```console
$ docker pull elasticsearch@sha256:ae1f398ec8734a63eb7f719cecc2ea33e2bb46e23bdf24641dec86fd256bf594
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:8.19.21` - linux; amd64

```console
$ docker pull elasticsearch@sha256:dcbc59e636771dc51fd4d0d4f312e7fb0eb63c96da8b12e6a20c9609edc26dce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **722.9 MB (722946647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:648ac694f54127f009f51ba1c6ea6de29715cda26c41f4539df2e75b9b85a83f`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:18:48 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Wed, 16 Sep 2026 03:18:48 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 16 Sep 2026 03:18:49 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 16 Sep 2026 03:18:49 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 16 Sep 2026 03:20:29 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Wed, 16 Sep 2026 03:20:29 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 16 Sep 2026 03:20:29 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:20:29 GMT
ENV SHELL=/bin/bash
# Wed, 16 Sep 2026 03:20:29 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:20:30 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 16 Sep 2026 03:20:30 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 16 Sep 2026 03:20:30 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 16 Sep 2026 03:20:30 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 16 Sep 2026 03:20:30 GMT
LABEL org.label-schema.build-date=2026-08-26T22:10:47.574903747Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=4fe44c255c3d0da06779b921e132cdc555ed9aff org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.21 org.opencontainers.image.created=2026-08-26T22:10:47.574903747Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=4fe44c255c3d0da06779b921e132cdc555ed9aff org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.21
# Wed, 16 Sep 2026 03:20:30 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 16 Sep 2026 03:20:30 GMT
CMD ["eswrapper"]
# Wed, 16 Sep 2026 03:20:30 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e9e40586f9f00e6204645f58091ed3f3512441966ebdf01b91845f2c6c10c1`  
		Last Modified: Wed, 16 Sep 2026 03:21:20 GMT  
		Size: 4.5 MB (4460667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:956031a29dff531b99227b1a3b81f68081048ae476ba7b5650fa791cacabdace`  
		Last Modified: Wed, 16 Sep 2026 03:21:20 GMT  
		Size: 3.5 KB (3529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e63675f74839732ff4ef067fde5915b64f1159fbee59e4884ba37851f5cd38d`  
		Last Modified: Wed, 16 Sep 2026 03:21:33 GMT  
		Size: 688.4 MB (688445369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60eed058e7a04fd43451a1f6b88129be83e63fa7426b9b561a5da1299cd879d3`  
		Last Modified: Wed, 16 Sep 2026 03:21:20 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2e1182481ba23e1a386b96b1bd687f263fd1dce3d596f9a3b8b69ceb52cf89`  
		Last Modified: Wed, 16 Sep 2026 03:21:21 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b17e710e2b6438e41440504ec4fba9f6e4e0b0795ff5c27c79a03b3af595452c`  
		Last Modified: Wed, 16 Sep 2026 03:21:21 GMT  
		Size: 164.2 KB (164183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33a84b78b5bc280db012a0a0535ea7262d3429565871cdca56464fa82d6e54d4`  
		Last Modified: Wed, 16 Sep 2026 03:21:21 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4889cb7f2b27308e714f77d0d0a7cbb0864bacf3aa639336497a3fb1167da25`  
		Last Modified: Wed, 16 Sep 2026 03:21:22 GMT  
		Size: 97.1 KB (97099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.21` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:fc43b7d584689f862035326e8c8e1016de83694ed918655263e90e7f1036398c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3227470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7260c1a7f9f1a46ce0a0adc30e76b90ea939dd1995cd63ff6dbc3dc5ce99cce5`

```dockerfile
```

-	Layers:
	-	`sha256:1e48e50de61fe58ba3e3a19a170d0602d856fe057aa216fcd5b61c67bbb1911c`  
		Last Modified: Wed, 16 Sep 2026 03:21:20 GMT  
		Size: 3.2 MB (3190655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6b41b724d6a8e11f05db4efee4c4093c627827967e47424a662c8263ef8d2fd`  
		Last Modified: Wed, 16 Sep 2026 03:21:20 GMT  
		Size: 36.8 KB (36815 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:8.19.21` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:d78804a79045acd4d8526e9c225145890cff4ff3cd9844fff856192dbbb3301b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **570.9 MB (570920276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e5548dd6176445ad9b73fe7218e8d894a3aa6b504a01a9de68b55670579d29c`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:18:12 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Wed, 16 Sep 2026 03:18:13 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 16 Sep 2026 03:18:13 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 16 Sep 2026 03:18:13 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 16 Sep 2026 03:19:24 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Wed, 16 Sep 2026 03:19:24 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 16 Sep 2026 03:19:24 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:19:24 GMT
ENV SHELL=/bin/bash
# Wed, 16 Sep 2026 03:19:24 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:19:24 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 16 Sep 2026 03:19:24 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 16 Sep 2026 03:19:24 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 16 Sep 2026 03:19:24 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 16 Sep 2026 03:19:24 GMT
LABEL org.label-schema.build-date=2026-08-26T22:10:47.574903747Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=4fe44c255c3d0da06779b921e132cdc555ed9aff org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.21 org.opencontainers.image.created=2026-08-26T22:10:47.574903747Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=4fe44c255c3d0da06779b921e132cdc555ed9aff org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.21
# Wed, 16 Sep 2026 03:19:24 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 16 Sep 2026 03:19:24 GMT
CMD ["eswrapper"]
# Wed, 16 Sep 2026 03:19:24 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:986717e01402783f1459535da81819be58c8702b52f060bdb0371ea11fb342c9`  
		Last Modified: Wed, 16 Sep 2026 03:20:04 GMT  
		Size: 4.5 MB (4465501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf934ec6f1654fe0b505b904900f89601146546acd241e6d6aa5f4ee59372639`  
		Last Modified: Wed, 16 Sep 2026 03:20:04 GMT  
		Size: 3.5 KB (3529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b17e47bb836f354e48bb411aa21115e4bf20280b4839e14b68e5633ac62d2be`  
		Last Modified: Wed, 16 Sep 2026 03:20:13 GMT  
		Size: 537.2 MB (537240619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d815812a60f75d269f1c44b0d581750e44af31f28da1a4613f5f916deb3d610`  
		Last Modified: Wed, 16 Sep 2026 03:20:04 GMT  
		Size: 9.1 KB (9105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ece19fbd064ab371adf95719a73ec67aac6c01e3c3dcc89150555ba732eb167`  
		Last Modified: Wed, 16 Sep 2026 03:20:05 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:841cf6f36082c1e29af2c119190eb6c2a642c85be98f512cd97a383bf3afde90`  
		Last Modified: Wed, 16 Sep 2026 03:20:05 GMT  
		Size: 160.7 KB (160692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf134f082b9a04c9729b68c32973cd58cf7b7e2ddfa4a2f901586ce54f55d994`  
		Last Modified: Wed, 16 Sep 2026 03:20:06 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e18d8b713c91ec0d8319ab975d350f33e3673525b942c0a779a288e08485a1cc`  
		Last Modified: Wed, 16 Sep 2026 03:20:06 GMT  
		Size: 97.1 KB (97100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.21` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:ddec46fcf2415cf60359d01e30637e4959ba9603cdf3144c398e49c5239fa4da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3228086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23701afb152d39b3e190453ebebd317de26b2d9e465c6821c38b5a8aa230571a`

```dockerfile
```

-	Layers:
	-	`sha256:3a482f71c7b3f9364f076d6615ffafbbba0980b7492db90abb280cf26910bd26`  
		Last Modified: Wed, 16 Sep 2026 03:20:04 GMT  
		Size: 3.2 MB (3191068 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0239da1b3e223887b82b32fb87f5abb9f0a5342075ab9055e1cd79c9f5e24133`  
		Last Modified: Wed, 16 Sep 2026 03:20:04 GMT  
		Size: 37.0 KB (37018 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.4.6`

```console
$ docker pull elasticsearch@sha256:ebca45f187639afcf8fb3955af18770b36439186e26e4f236cedc9b45e62f2b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.6` - linux; amd64

```console
$ docker pull elasticsearch@sha256:6066a7d8199cf7e2ce4ac617a94938e549639e64f786d25caf91b1a111794871
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **868.9 MB (868915612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c068e64beac574a548f2d7fd0796f5a8622cbcc10262125ac7a2310b5b94a84`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.openshift.expose-services=""
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 16 Sep 2026 08:14:47 GMT
ENV container oci
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:b8d2e4702aa4e2e0f81f97ab3a96785119f9cab5f11a12e6f35f97263fc80089 in /      
# Wed, 16 Sep 2026 08:14:48 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 16 Sep 2026 08:14:48 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:0d75961e3db2326a48bbcf23c2e4ea4e05da817cf04277234a6d96480c0cf5b7 in /usr/share/buildinfo/      
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:0d75961e3db2326a48bbcf23c2e4ea4e05da817cf04277234a6d96480c0cf5b7 in /root/buildinfo/      
# Wed, 16 Sep 2026 08:14:48 GMT
LABEL "org.opencontainers.image.created"="2026-09-16T08:14:20Z" "org.opencontainers.image.revision"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "build-date"="2026-09-16T08:14:20Z" "architecture"="x86_64" "vcs-ref"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "vcs-type"="git" "release"="1789546276"org.opencontainers.image.created=2026-09-16T08:14:20Z,org.opencontainers.image.revision=28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee
# Thu, 17 Sep 2026 18:55:39 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Thu, 17 Sep 2026 18:55:39 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Thu, 17 Sep 2026 18:57:27 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 17 Sep 2026 18:57:27 GMT
COPY /bin/tini /bin/tini # buildkit
# Thu, 17 Sep 2026 18:57:27 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 17 Sep 2026 18:57:38 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Thu, 17 Sep 2026 18:57:38 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Thu, 17 Sep 2026 18:57:38 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 18:57:38 GMT
ENV SHELL=/bin/bash
# Thu, 17 Sep 2026 18:57:38 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Thu, 17 Sep 2026 18:57:38 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Thu, 17 Sep 2026 18:57:38 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Thu, 17 Sep 2026 18:57:38 GMT
LABEL org.label-schema.build-date=2026-08-26T22:12:16.859701616Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=10011cbc74640115d0ffac0cef7c925aec4754f5 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T22:12:16.859701616Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=10011cbc74640115d0ffac0cef7c925aec4754f5 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Thu, 17 Sep 2026 18:57:38 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Elasticsearch description=You know, for search.
# Thu, 17 Sep 2026 18:57:38 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 17 Sep 2026 18:57:38 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Thu, 17 Sep 2026 18:57:38 GMT
CMD ["eswrapper"]
# Thu, 17 Sep 2026 18:57:38 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:b66f4afff961364e2b31840faeac9f4cf40a138156bc5adbd4190044ff5160c0`  
		Last Modified: Wed, 16 Sep 2026 09:31:28 GMT  
		Size: 40.7 MB (40703783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:917e6690c821d6a2593c804f6b5bdd217630f7b4539b8f4acafd2b0fceea0e21`  
		Last Modified: Thu, 17 Sep 2026 18:58:34 GMT  
		Size: 4.1 MB (4105704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0335d9ee362f796a856651fc5b6e720b2dff3b8a3b85bf1d6cc4a1e9b305dcf0`  
		Last Modified: Thu, 17 Sep 2026 18:58:34 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:760b5304959069ab73882331483c4bf21aa91df73dd5c7c00b1520f8e7b43275`  
		Last Modified: Thu, 17 Sep 2026 18:58:34 GMT  
		Size: 9.5 KB (9534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5e89cfb35b3520d99d9f2ae852bf43adfac09b98e608a172d8535fecb17896`  
		Last Modified: Thu, 17 Sep 2026 18:58:52 GMT  
		Size: 824.0 MB (824016161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc2e684dbb06b058434c4bef328e281e1c2302972b79a9fb3579a8b201a3a55`  
		Last Modified: Thu, 17 Sep 2026 18:58:35 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18a700681459950e65883deffe06b54a96ca5b1d72c7e65454a770081debedad`  
		Last Modified: Thu, 17 Sep 2026 18:58:35 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d8e1f828eb4e309fc3216fec04f3861fd29329809dd9d2458fc549a06b70c1`  
		Last Modified: Thu, 17 Sep 2026 18:58:35 GMT  
		Size: 75.2 KB (75183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c121c287c0363cfd5874c7054b703c91d7b77e3768bd0fca4ba2454c0bf42b99`  
		Last Modified: Thu, 17 Sep 2026 18:58:36 GMT  
		Size: 1.7 KB (1694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.6` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:ab288c691b08afec3532d7f2078e6536a1abf383f1138c01665dcc0542476403
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66616b941ea5eeeca0565c506520ab9c9b088d8ad6086eb92a11ff62628baa94`

```dockerfile
```

-	Layers:
	-	`sha256:ca965c61f02ff686ce16fa997140e048977b4236bff1291842dd0fc55bdad61e`  
		Last Modified: Thu, 17 Sep 2026 18:58:34 GMT  
		Size: 2.4 MB (2389013 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed8760520e057094e71de919755384681ad415cc120dbe96e9940b2863f0c823`  
		Last Modified: Thu, 17 Sep 2026 18:58:34 GMT  
		Size: 33.8 KB (33776 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.6` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:122ba2dc567fa15ef58b0198033b32e9d472afce1c6a4e8c53665a94529775d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.5 MB (713466118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23cb919685fa99d7277e43bb53f697672b68a33f8fac0fd7cecb44b0084e8320`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.openshift.expose-services=""
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 16 Sep 2026 08:17:25 GMT
ENV container oci
# Wed, 16 Sep 2026 08:17:25 GMT
COPY dir:247e1a1b65ffe42d0e02569b201e0a80c3d58c5012cc85d5fca29e1996ccab32 in /      
# Wed, 16 Sep 2026 08:17:25 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 16 Sep 2026 08:17:26 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 08:17:26 GMT
COPY dir:6618fcc9c9f252e47fc39914f7cb7d1d47e47d2db896a1383df6d9add39d7c22 in /usr/share/buildinfo/      
# Wed, 16 Sep 2026 08:17:26 GMT
COPY dir:6618fcc9c9f252e47fc39914f7cb7d1d47e47d2db896a1383df6d9add39d7c22 in /root/buildinfo/      
# Wed, 16 Sep 2026 08:17:26 GMT
LABEL "org.opencontainers.image.created"="2026-09-16T08:17:03Z" "org.opencontainers.image.revision"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "build-date"="2026-09-16T08:17:03Z" "architecture"="aarch64" "vcs-ref"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "vcs-type"="git" "release"="1789546276"org.opencontainers.image.created=2026-09-16T08:17:03Z,org.opencontainers.image.revision=28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee
# Thu, 17 Sep 2026 18:54:52 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Thu, 17 Sep 2026 18:54:52 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Thu, 17 Sep 2026 18:56:17 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 17 Sep 2026 18:56:17 GMT
COPY /bin/tini /bin/tini # buildkit
# Thu, 17 Sep 2026 18:56:17 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 17 Sep 2026 18:56:25 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Thu, 17 Sep 2026 18:56:25 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Thu, 17 Sep 2026 18:56:25 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 18:56:25 GMT
ENV SHELL=/bin/bash
# Thu, 17 Sep 2026 18:56:25 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Thu, 17 Sep 2026 18:56:25 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Thu, 17 Sep 2026 18:56:25 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Thu, 17 Sep 2026 18:56:25 GMT
LABEL org.label-schema.build-date=2026-08-26T22:12:16.859701616Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=10011cbc74640115d0ffac0cef7c925aec4754f5 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T22:12:16.859701616Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=10011cbc74640115d0ffac0cef7c925aec4754f5 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Thu, 17 Sep 2026 18:56:25 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Elasticsearch description=You know, for search.
# Thu, 17 Sep 2026 18:56:25 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 17 Sep 2026 18:56:25 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Thu, 17 Sep 2026 18:56:25 GMT
CMD ["eswrapper"]
# Thu, 17 Sep 2026 18:56:25 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:36e72d37accbc857387599416b2fbab8fba8dd4b3f3b465ab05e57367cbe05fd`  
		Last Modified: Wed, 16 Sep 2026 09:33:21 GMT  
		Size: 38.8 MB (38782783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f396b14d45fe5afb5bba2a90fd339a72f3ef088a1382c754b3bd92e8d977948`  
		Last Modified: Thu, 17 Sep 2026 18:57:10 GMT  
		Size: 4.1 MB (4102196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54ec93e166bbc5a3e09ac9d8339c1e04a99a39e494b0953452dfc4bbdef8379a`  
		Last Modified: Thu, 17 Sep 2026 18:57:10 GMT  
		Size: 1.5 KB (1528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c50ac6388a0839e352daad60e1c082914d17bc46aefc2b10f7f661e18ece8350`  
		Last Modified: Thu, 17 Sep 2026 18:57:10 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc2680f87a864fd381837cbce2726b801ce5bb51668421d1d6a9c2bfeda8653`  
		Last Modified: Thu, 17 Sep 2026 18:57:22 GMT  
		Size: 670.5 MB (670492685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11dce258947e4a9c28f870b184de8c4fb1eb021e5209ee1cae4d01d52878ffdd`  
		Last Modified: Thu, 17 Sep 2026 18:57:11 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9111b74b8b5390b866a62a6e205f63c51d3440b2c5bc052ba27e513834b614`  
		Last Modified: Thu, 17 Sep 2026 18:57:11 GMT  
		Size: 1.7 KB (1721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56f5fa0b187300eeff4fe8d3990e7974e245a2f73922c35ff48d71080f2a4091`  
		Last Modified: Thu, 17 Sep 2026 18:57:12 GMT  
		Size: 74.1 KB (74108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f86cccb59215967c9931d0cca0ae7dcc3a0ad98398b089f45c583802ed0a9bf8`  
		Last Modified: Thu, 17 Sep 2026 18:57:12 GMT  
		Size: 1.7 KB (1694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.6` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:107aab07fd12922243b3a7ca4d21aeb0f81571bac44288524619ba2b6b590e22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c4b30c040f7f45c662b6a6d150987391939dec58105e8473ad17ce70f06358`

```dockerfile
```

-	Layers:
	-	`sha256:aff0f140d14a76501d1bac7842c7f6a092a9ffadb3ce1a2bc6c248805ba79fb4`  
		Last Modified: Thu, 17 Sep 2026 18:57:10 GMT  
		Size: 2.4 MB (2387793 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02803f646ab7a3df25a435950d3d1e6b53df171714ac420a149e3b89cb077587`  
		Last Modified: Thu, 17 Sep 2026 18:57:10 GMT  
		Size: 34.0 KB (33957 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.5.3`

```console
$ docker pull elasticsearch@sha256:9020a0ab30021380250128096108602f93a98d04d03c99a03cf9b72c5213497b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.5.3` - linux; amd64

```console
$ docker pull elasticsearch@sha256:935cc8d82191568c9545f1d9719fdefc9bed4aa1c87e54befe5da323e3e8bda3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **894.6 MB (894605258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d43d5775b18dd35d1fd6474ac55bea5ea8475e6aaa512492ca95ca9462a208e7`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.openshift.expose-services=""
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 16 Sep 2026 08:14:47 GMT
ENV container oci
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:b8d2e4702aa4e2e0f81f97ab3a96785119f9cab5f11a12e6f35f97263fc80089 in /      
# Wed, 16 Sep 2026 08:14:48 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 16 Sep 2026 08:14:48 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:0d75961e3db2326a48bbcf23c2e4ea4e05da817cf04277234a6d96480c0cf5b7 in /usr/share/buildinfo/      
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:0d75961e3db2326a48bbcf23c2e4ea4e05da817cf04277234a6d96480c0cf5b7 in /root/buildinfo/      
# Wed, 16 Sep 2026 08:14:48 GMT
LABEL "org.opencontainers.image.created"="2026-09-16T08:14:20Z" "org.opencontainers.image.revision"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "build-date"="2026-09-16T08:14:20Z" "architecture"="x86_64" "vcs-ref"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "vcs-type"="git" "release"="1789546276"org.opencontainers.image.created=2026-09-16T08:14:20Z,org.opencontainers.image.revision=28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee
# Thu, 17 Sep 2026 18:55:43 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Thu, 17 Sep 2026 18:55:43 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Thu, 17 Sep 2026 18:57:31 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 17 Sep 2026 18:57:31 GMT
COPY /bin/tini /bin/tini # buildkit
# Thu, 17 Sep 2026 18:57:31 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 17 Sep 2026 18:57:43 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Thu, 17 Sep 2026 18:57:43 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Thu, 17 Sep 2026 18:57:43 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 18:57:43 GMT
ENV SHELL=/bin/bash
# Thu, 17 Sep 2026 18:57:43 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Thu, 17 Sep 2026 18:57:43 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Thu, 17 Sep 2026 18:57:43 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Thu, 17 Sep 2026 18:57:43 GMT
LABEL org.label-schema.build-date=2026-09-01T16:11:59.322249404Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=367ec317ec5f668dd864d41be06052a567102fec org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T16:11:59.322249404Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=367ec317ec5f668dd864d41be06052a567102fec org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3
# Thu, 17 Sep 2026 18:57:43 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.3 release=1 summary=Elasticsearch description=You know, for search.
# Thu, 17 Sep 2026 18:57:43 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 17 Sep 2026 18:57:43 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Thu, 17 Sep 2026 18:57:43 GMT
CMD ["eswrapper"]
# Thu, 17 Sep 2026 18:57:43 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:b66f4afff961364e2b31840faeac9f4cf40a138156bc5adbd4190044ff5160c0`  
		Last Modified: Wed, 16 Sep 2026 09:31:28 GMT  
		Size: 40.7 MB (40703783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25151577ce010318fa23fb9d99085516e837ddb3748c421472f56692c64241fe`  
		Last Modified: Thu, 17 Sep 2026 18:58:42 GMT  
		Size: 4.1 MB (4105679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:891e15e9f8798c774e267c342c3318e2a31ae38cfad18b26435e387fa8f54f13`  
		Last Modified: Thu, 17 Sep 2026 18:58:42 GMT  
		Size: 1.5 KB (1531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe84416c87f6dbe2947df373a6b8781626f761741143f484ce309e99e260103`  
		Last Modified: Thu, 17 Sep 2026 18:58:42 GMT  
		Size: 9.5 KB (9534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0945c2fc3f67d50223be66608128937be2dc2e727da19a6a4787cfc6d10c9c1`  
		Last Modified: Thu, 17 Sep 2026 18:58:59 GMT  
		Size: 849.7 MB (849705828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46d3a934b98f6860876e84b039c7ea528029dec12288ceb82122362e7db5035`  
		Last Modified: Thu, 17 Sep 2026 18:58:43 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c6ed0342a3ef2c40028dde2c3f68e200feb306c92f1b123ae51c1607ffa56db`  
		Last Modified: Thu, 17 Sep 2026 18:58:43 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c796ed4c22daab9efae44f0758b0eeaae32977a264576610e1a223c3871a6ed4`  
		Last Modified: Thu, 17 Sep 2026 18:58:44 GMT  
		Size: 75.2 KB (75187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0df033b08fa5fb079f117cbc2ca6463acc6cbd1cc7619d91de82785f7736fd95`  
		Last Modified: Thu, 17 Sep 2026 18:58:45 GMT  
		Size: 1.7 KB (1694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.3` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:6c2fa155b3459c32ea2a604fce1759b3087046722f7b7a2dab5a4e8480235f91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2475870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bba594430c2cb0e49da02018fc32385aa0f6d4fa1c912a0a2e58fa74f0765ce`

```dockerfile
```

-	Layers:
	-	`sha256:6fdf1156b5d81fd0235387d8bc3d065a05fbdc647ffb07a3fc669e9638ea7dda`  
		Last Modified: Thu, 17 Sep 2026 18:58:42 GMT  
		Size: 2.4 MB (2442094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57b8a9cc8ae88ca177ee34fe35b3bce2d5385241b22f8af5cfe0ac466fa59ddf`  
		Last Modified: Thu, 17 Sep 2026 18:58:42 GMT  
		Size: 33.8 KB (33776 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.5.3` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:d5f7a1d2d68cfc6d783e933d40ac128adc73a9558680708e4847e3dfa664a192
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **739.1 MB (739084575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e412d1463e614670ddfc1fd9312394cf0308bba222135c773510a3a0cad774d`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.openshift.expose-services=""
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 16 Sep 2026 08:17:25 GMT
ENV container oci
# Wed, 16 Sep 2026 08:17:25 GMT
COPY dir:247e1a1b65ffe42d0e02569b201e0a80c3d58c5012cc85d5fca29e1996ccab32 in /      
# Wed, 16 Sep 2026 08:17:25 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 16 Sep 2026 08:17:26 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 08:17:26 GMT
COPY dir:6618fcc9c9f252e47fc39914f7cb7d1d47e47d2db896a1383df6d9add39d7c22 in /usr/share/buildinfo/      
# Wed, 16 Sep 2026 08:17:26 GMT
COPY dir:6618fcc9c9f252e47fc39914f7cb7d1d47e47d2db896a1383df6d9add39d7c22 in /root/buildinfo/      
# Wed, 16 Sep 2026 08:17:26 GMT
LABEL "org.opencontainers.image.created"="2026-09-16T08:17:03Z" "org.opencontainers.image.revision"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "build-date"="2026-09-16T08:17:03Z" "architecture"="aarch64" "vcs-ref"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "vcs-type"="git" "release"="1789546276"org.opencontainers.image.created=2026-09-16T08:17:03Z,org.opencontainers.image.revision=28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee
# Thu, 17 Sep 2026 18:54:53 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Thu, 17 Sep 2026 18:54:53 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Thu, 17 Sep 2026 18:56:25 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 17 Sep 2026 18:56:25 GMT
COPY /bin/tini /bin/tini # buildkit
# Thu, 17 Sep 2026 18:56:25 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 17 Sep 2026 18:56:33 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Thu, 17 Sep 2026 18:56:33 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Thu, 17 Sep 2026 18:56:33 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 18:56:33 GMT
ENV SHELL=/bin/bash
# Thu, 17 Sep 2026 18:56:33 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Thu, 17 Sep 2026 18:56:33 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Thu, 17 Sep 2026 18:56:33 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Thu, 17 Sep 2026 18:56:33 GMT
LABEL org.label-schema.build-date=2026-09-01T16:11:59.322249404Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=367ec317ec5f668dd864d41be06052a567102fec org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T16:11:59.322249404Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=367ec317ec5f668dd864d41be06052a567102fec org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3
# Thu, 17 Sep 2026 18:56:33 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.3 release=1 summary=Elasticsearch description=You know, for search.
# Thu, 17 Sep 2026 18:56:33 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 17 Sep 2026 18:56:33 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Thu, 17 Sep 2026 18:56:33 GMT
CMD ["eswrapper"]
# Thu, 17 Sep 2026 18:56:33 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:36e72d37accbc857387599416b2fbab8fba8dd4b3f3b465ab05e57367cbe05fd`  
		Last Modified: Wed, 16 Sep 2026 09:33:21 GMT  
		Size: 38.8 MB (38782783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8271905b4b42cd4b2cbb6f139e0e5474cf6876c49ac341c55a6d47d4d3118dda`  
		Last Modified: Thu, 17 Sep 2026 18:57:19 GMT  
		Size: 4.1 MB (4102195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a15032d5432e703a34791e2a9b337efa3ddd2cbca74919680b6e3398c7836f12`  
		Last Modified: Thu, 17 Sep 2026 18:57:19 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25be73d5a2c4650a2ced89376450a466795977167ae482c894059bbbfa8645c`  
		Last Modified: Thu, 17 Sep 2026 18:57:19 GMT  
		Size: 9.1 KB (9103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f53fdff04acb281ce08aa020b212015f8942e7b8e00706d343cfe474a7150b20`  
		Last Modified: Thu, 17 Sep 2026 18:57:34 GMT  
		Size: 696.1 MB (696111145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2634b493a2727ce8cead764f9e092f620154c8b60b07fee7961433d2e9738c7e`  
		Last Modified: Thu, 17 Sep 2026 18:57:20 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77cb95207156045e9c866011308d0e8563e59ed0ea69f0437b56519b1c915e26`  
		Last Modified: Thu, 17 Sep 2026 18:57:21 GMT  
		Size: 1.7 KB (1722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9867fe1c43ce59bf434753fecd590d039781240ea3cc9b086db3b9252e859294`  
		Last Modified: Thu, 17 Sep 2026 18:57:21 GMT  
		Size: 74.1 KB (74104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d333b8ac9ad99b6b404202a44c98ea20b6f0c400103a89b93d3e4e8b3cd684e6`  
		Last Modified: Thu, 17 Sep 2026 18:57:22 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.3` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:1224c87db354b3457c5521c36a1fb8d45425d0da1ad7da86621df2861c22ae26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2474832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f338e1cb6f2db08254ab3994cb6606f8e967f3166a512f949f69a6ed70c8d63`

```dockerfile
```

-	Layers:
	-	`sha256:b3ec320bacfd369f9128294ae8f954ad8c5c74c0d26c81285c2fb13143492410`  
		Last Modified: Thu, 17 Sep 2026 18:57:19 GMT  
		Size: 2.4 MB (2440874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71967f2ed1e295fd2c13b85b37c29f6b34fa360889e09eb6ee62e70e31e58a44`  
		Last Modified: Thu, 17 Sep 2026 18:57:19 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json
