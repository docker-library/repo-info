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
$ docker pull elasticsearch@sha256:e7945580b89cf6cd8328d83e2177874fde7223b5e6f20f448150cc14dd9612e0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.6` - linux; amd64

```console
$ docker pull elasticsearch@sha256:83bd4dd2ba28f959dc5d4b1b8f72bcf29160659e4f44fd5cef3ddf29a2e58598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **868.9 MB (868946714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cedd11581d5fc9668347fc771859c3755c14d5f05b3b394f6ced6528649e0f07`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 10:53:59 GMT
ENV container oci
# Tue, 22 Sep 2026 10:53:59 GMT
COPY dir:14bfe291e51cfd3471e9b85d5e9d491fe06b3ecf4d74ad9ed060eeed665412ea in /      
# Tue, 22 Sep 2026 10:54:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 10:54:00 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 10:54:00 GMT
COPY dir:275fafe01e910923b4cfa2c2282c3eb2ea9158af5a6dc42bc6197cbdbe3c4f3f in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 10:54:00 GMT
COPY dir:275fafe01e910923b4cfa2c2282c3eb2ea9158af5a6dc42bc6197cbdbe3c4f3f in /root/buildinfo/      
# Tue, 22 Sep 2026 10:54:00 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T10:53:29Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T10:53:29Z" "architecture"="x86_64" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T10:53:29Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:49:06 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:49:06 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 22 Sep 2026 18:50:41 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 22 Sep 2026 18:50:41 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 22 Sep 2026 18:50:41 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 22 Sep 2026 18:50:52 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 22 Sep 2026 18:50:52 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 22 Sep 2026 18:50:52 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:50:52 GMT
ENV SHELL=/bin/bash
# Tue, 22 Sep 2026 18:50:52 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:50:52 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 22 Sep 2026 18:50:52 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 22 Sep 2026 18:50:52 GMT
LABEL org.label-schema.build-date=2026-08-26T22:12:16.859701616Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=10011cbc74640115d0ffac0cef7c925aec4754f5 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T22:12:16.859701616Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=10011cbc74640115d0ffac0cef7c925aec4754f5 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Tue, 22 Sep 2026 18:50:52 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 22 Sep 2026 18:50:52 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 22 Sep 2026 18:50:52 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 22 Sep 2026 18:50:52 GMT
CMD ["eswrapper"]
# Tue, 22 Sep 2026 18:50:52 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:f54a0fb19efce07c95685474b80ea80c4eb2ed40ae83a65e0624d0d8543a9b7f`  
		Last Modified: Tue, 22 Sep 2026 11:51:29 GMT  
		Size: 40.7 MB (40734776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f3ba92a9e7c699fd4b684122f0dff241fd7f80b48138f067c429b9d37591df0`  
		Last Modified: Tue, 22 Sep 2026 18:51:48 GMT  
		Size: 4.1 MB (4105798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bd0f542abcb3863b8b90b04c99d28b0aec7e03bc1e433005dab7e317c378248`  
		Last Modified: Tue, 22 Sep 2026 18:51:48 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7725f64186b287300724da3ed99a76284ccfa20d9c07cba7d0807954a079586`  
		Last Modified: Tue, 22 Sep 2026 18:51:47 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f858da9f6815f35fae2285e20a87b5fb9b163ef2e087140305b18fd72e87ccc`  
		Last Modified: Tue, 22 Sep 2026 18:52:03 GMT  
		Size: 824.0 MB (824016179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cd619a5cc659cd836b2a7bf8e52c2cb846fca6647b0291ddc64800b36a8c5b6`  
		Last Modified: Tue, 22 Sep 2026 18:51:49 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccb57d1324f1c7b8f08408233bf941a9c0fffb6058fa9c17c0ce27ed0c8dbb01`  
		Last Modified: Tue, 22 Sep 2026 18:51:49 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e53fbca448deee6222d508cae65cc8e810c691f6b1d997ac5b2442d34d9409e`  
		Last Modified: Tue, 22 Sep 2026 18:51:49 GMT  
		Size: 75.2 KB (75183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b16a23cb3ee573d161c0f846fb9d8fbeceaea1919a5c3ce78d0524513aefcb5`  
		Last Modified: Tue, 22 Sep 2026 18:51:41 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.6` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:f16e633b84813104abcbc838a66085154dd9a7bcb2b46044cc39e48ac34e23bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c552927f911c09a770ecba17a74b6ac48f3241bcac3726abbe19371c131c72`

```dockerfile
```

-	Layers:
	-	`sha256:e11cfa2da179b7f4cd60c5a041acd06d36dd795dbe665ad12fa7b855335a8118`  
		Last Modified: Tue, 22 Sep 2026 18:51:48 GMT  
		Size: 2.4 MB (2389013 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24b6c4b6e5edc2809e44f6e41ae64608e421861a77cce536856a39199ec45f88`  
		Last Modified: Tue, 22 Sep 2026 18:51:47 GMT  
		Size: 33.8 KB (33776 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.6` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:88658183e7cf15b98a8af1688f939c57a15f1397978dfd43507be08ece9a0f42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.5 MB (713485492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51725c9cc7ee3f05e02e935e7012e3b16e4e0c70a516eb0e8eb337dd17a72ca7`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 10:55:37 GMT
ENV container oci
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:f1b1d9f069c6fd519132b1abb0a3eadbb548b4c2598519d645212ad8182e3e90 in /      
# Tue, 22 Sep 2026 10:55:38 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 10:55:38 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:c81da2b95a2a50c27755e5eab58aad0ebdab4cbd008448bc8fccefc055d96de2 in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:c81da2b95a2a50c27755e5eab58aad0ebdab4cbd008448bc8fccefc055d96de2 in /root/buildinfo/      
# Tue, 22 Sep 2026 10:55:39 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T10:55:15Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T10:55:15Z" "architecture"="aarch64" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T10:55:15Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:48:52 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:48:52 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 22 Sep 2026 18:50:03 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 22 Sep 2026 18:50:03 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 22 Sep 2026 18:50:03 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 22 Sep 2026 18:50:10 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 22 Sep 2026 18:50:11 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 22 Sep 2026 18:50:11 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:50:11 GMT
ENV SHELL=/bin/bash
# Tue, 22 Sep 2026 18:50:11 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:50:11 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 22 Sep 2026 18:50:11 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 22 Sep 2026 18:50:11 GMT
LABEL org.label-schema.build-date=2026-08-26T22:12:16.859701616Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=10011cbc74640115d0ffac0cef7c925aec4754f5 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T22:12:16.859701616Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=10011cbc74640115d0ffac0cef7c925aec4754f5 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Tue, 22 Sep 2026 18:50:11 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 22 Sep 2026 18:50:11 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 22 Sep 2026 18:50:11 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 22 Sep 2026 18:50:11 GMT
CMD ["eswrapper"]
# Tue, 22 Sep 2026 18:50:11 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:dea0c826e8cdc58b1ff5a08680eb69ae64129bfee1b07b773c9c5e1d9ffb1e86`  
		Last Modified: Tue, 22 Sep 2026 11:49:08 GMT  
		Size: 38.8 MB (38803467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a5acc7417544f724d5c9bd24b4b8c058ced0302dfe061d2040e601598a7e36`  
		Last Modified: Tue, 22 Sep 2026 18:50:56 GMT  
		Size: 4.1 MB (4100938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bcd7e1a2487df6fe96f93f803731bb912469f33298078c9f47c019062440690`  
		Last Modified: Tue, 22 Sep 2026 18:50:55 GMT  
		Size: 1.5 KB (1528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f706fb737c2e68aff83eb4d990a2b56d868d29789d37fbb4b7e2aa8bf49ab42a`  
		Last Modified: Tue, 22 Sep 2026 18:50:56 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a594f20d80ddba47225a2756b7209abcb31f36970eb178f86d3acb5fd7b475a`  
		Last Modified: Tue, 22 Sep 2026 18:51:13 GMT  
		Size: 670.5 MB (670492637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72606932e07d9c0c3620ba0f8621083205c8296cfb86b224628a71c31fad45e6`  
		Last Modified: Tue, 22 Sep 2026 18:50:57 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fbc62ebcd80e8ea75da9217bf8564dcaafa6278508ecb7f292b190c7d382c9`  
		Last Modified: Tue, 22 Sep 2026 18:50:57 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a1efd7acdb0561089569a800e0f0091d2064579c675f369f12d8aee8e28b96`  
		Last Modified: Tue, 22 Sep 2026 18:50:57 GMT  
		Size: 74.1 KB (74105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b96427257e9fe3397137039a3b64da286fe74609d1eec148078380348d2c917`  
		Last Modified: Tue, 22 Sep 2026 18:50:58 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.6` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:ebb48ef3512a13dda7bb4fc6a168d57041f61e122841b4d36bb5711bf58324c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829cb916f621ea39cfe927da21bc2b711d64dead4a8fccf44cd3f1ff2e6af91c`

```dockerfile
```

-	Layers:
	-	`sha256:84f3d44c60e0a64bf9a944da5151807740b24743be88119cfabcf11c25f625e4`  
		Last Modified: Tue, 22 Sep 2026 18:50:56 GMT  
		Size: 2.4 MB (2387793 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4e254b6ad036553dd66aed2dbf9e76010220da7ca6f4b02952957bc667b6049`  
		Last Modified: Tue, 22 Sep 2026 18:50:55 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.5.3`

```console
$ docker pull elasticsearch@sha256:a4e2b3d21ad0f779f3044bb6828b5289d5f1c241b3ddd7efae7adaf81bcff412
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.5.3` - linux; amd64

```console
$ docker pull elasticsearch@sha256:0b989b4d06397cf647eac4a9078a1a361f38f60be0d3b669039537dbe0b9725e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **894.6 MB (894636416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e43ad1a87b74858cb4fde34be45df88045b435b182d72b7cdc7252517fcb038`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 10:53:59 GMT
ENV container oci
# Tue, 22 Sep 2026 10:53:59 GMT
COPY dir:14bfe291e51cfd3471e9b85d5e9d491fe06b3ecf4d74ad9ed060eeed665412ea in /      
# Tue, 22 Sep 2026 10:54:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 10:54:00 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 10:54:00 GMT
COPY dir:275fafe01e910923b4cfa2c2282c3eb2ea9158af5a6dc42bc6197cbdbe3c4f3f in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 10:54:00 GMT
COPY dir:275fafe01e910923b4cfa2c2282c3eb2ea9158af5a6dc42bc6197cbdbe3c4f3f in /root/buildinfo/      
# Tue, 22 Sep 2026 10:54:00 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T10:53:29Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T10:53:29Z" "architecture"="x86_64" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T10:53:29Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:49:07 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:49:07 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 22 Sep 2026 18:49:54 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 22 Sep 2026 18:49:54 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 22 Sep 2026 18:49:54 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 22 Sep 2026 18:50:05 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 22 Sep 2026 18:50:05 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 22 Sep 2026 18:50:05 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:50:05 GMT
ENV SHELL=/bin/bash
# Tue, 22 Sep 2026 18:50:05 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:50:05 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 22 Sep 2026 18:50:05 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 22 Sep 2026 18:50:05 GMT
LABEL org.label-schema.build-date=2026-09-01T16:11:59.322249404Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=367ec317ec5f668dd864d41be06052a567102fec org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T16:11:59.322249404Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=367ec317ec5f668dd864d41be06052a567102fec org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3
# Tue, 22 Sep 2026 18:50:05 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.3 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 22 Sep 2026 18:50:06 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 22 Sep 2026 18:50:06 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 22 Sep 2026 18:50:06 GMT
CMD ["eswrapper"]
# Tue, 22 Sep 2026 18:50:06 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:f54a0fb19efce07c95685474b80ea80c4eb2ed40ae83a65e0624d0d8543a9b7f`  
		Last Modified: Tue, 22 Sep 2026 11:51:29 GMT  
		Size: 40.7 MB (40734776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:598ffad37153f4cb1c8ad0bfef5826a058c4b29e2cabf6ffe8ed5ac55e3e3149`  
		Last Modified: Tue, 22 Sep 2026 18:51:04 GMT  
		Size: 4.1 MB (4105826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31bfb8f2b599c83721436e06c195c1d597bfa7721dcd1340e263abde5eb28468`  
		Last Modified: Tue, 22 Sep 2026 18:51:04 GMT  
		Size: 1.5 KB (1531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c4473495ad2c0b3c86274b97069bdefd20d1d4c8ba83ad2ae70b1364edd6718`  
		Last Modified: Tue, 22 Sep 2026 18:51:04 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661c68e4fe5f57bdc8320bea5229ad1472af504bdc3be6fe5f4707f1b2af7b4e`  
		Last Modified: Tue, 22 Sep 2026 18:51:19 GMT  
		Size: 849.7 MB (849705850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac622331a0252474284a90bff798abe60c87a38fece2e281a3ce0b941c8c4cd9`  
		Last Modified: Tue, 22 Sep 2026 18:51:05 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc4584205c560e8f820e4c85ad4973c620b34e9f51dd2a9aaa74d86192ae445`  
		Last Modified: Tue, 22 Sep 2026 18:51:05 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fa620cc6027bf2af4b64dc9182ce09e9cff01c5cca84465079b067f501d99e0`  
		Last Modified: Tue, 22 Sep 2026 18:51:05 GMT  
		Size: 75.2 KB (75185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:412170d9622e2a722023093ef5dd346598104e5ada8b041d30c6bd1131058556`  
		Last Modified: Tue, 22 Sep 2026 18:51:06 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.3` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:346bd2becf233ce0f3e94d5eca6591b03163c71fedc4d377cbe0255f43337f33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2475870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4bd4b6bebd9462d341d7c9989e0e7ddad84a41efd2c1a1feb5005a28b186c73`

```dockerfile
```

-	Layers:
	-	`sha256:3e94dfad6f5b5263a95c278646a7bd5755185d8bb5afd9c3592e61396eb64f68`  
		Last Modified: Tue, 22 Sep 2026 18:51:04 GMT  
		Size: 2.4 MB (2442094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82819632ae53550693f672cab3ee230207afa8687ad974eeeb50719661640d74`  
		Last Modified: Tue, 22 Sep 2026 18:51:04 GMT  
		Size: 33.8 KB (33776 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.5.3` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:3683b945bbd8555b5efbe48dbc5be46693d207d10e250f3b09a70b29712f6817
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **739.1 MB (739103964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1d64f43103df73fa170b010bf18337cfe10304a931d0eef2a8fadd430ddf4f`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 10:55:37 GMT
ENV container oci
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:f1b1d9f069c6fd519132b1abb0a3eadbb548b4c2598519d645212ad8182e3e90 in /      
# Tue, 22 Sep 2026 10:55:38 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 10:55:38 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:c81da2b95a2a50c27755e5eab58aad0ebdab4cbd008448bc8fccefc055d96de2 in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:c81da2b95a2a50c27755e5eab58aad0ebdab4cbd008448bc8fccefc055d96de2 in /root/buildinfo/      
# Tue, 22 Sep 2026 10:55:39 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T10:55:15Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T10:55:15Z" "architecture"="aarch64" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T10:55:15Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:49:27 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:49:27 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 22 Sep 2026 18:50:44 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 22 Sep 2026 18:50:44 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 22 Sep 2026 18:50:44 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 22 Sep 2026 18:50:51 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 22 Sep 2026 18:50:52 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 22 Sep 2026 18:50:52 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:50:52 GMT
ENV SHELL=/bin/bash
# Tue, 22 Sep 2026 18:50:52 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:50:52 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 22 Sep 2026 18:50:52 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 22 Sep 2026 18:50:52 GMT
LABEL org.label-schema.build-date=2026-09-01T16:11:59.322249404Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=367ec317ec5f668dd864d41be06052a567102fec org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T16:11:59.322249404Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=367ec317ec5f668dd864d41be06052a567102fec org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3
# Tue, 22 Sep 2026 18:50:52 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.3 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 22 Sep 2026 18:50:52 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 22 Sep 2026 18:50:52 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 22 Sep 2026 18:50:52 GMT
CMD ["eswrapper"]
# Tue, 22 Sep 2026 18:50:52 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:dea0c826e8cdc58b1ff5a08680eb69ae64129bfee1b07b773c9c5e1d9ffb1e86`  
		Last Modified: Tue, 22 Sep 2026 11:49:08 GMT  
		Size: 38.8 MB (38803467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1197c4326460ce2342163b038ab2cef42979acda64187666ff879aa93ab663b1`  
		Last Modified: Tue, 22 Sep 2026 18:51:39 GMT  
		Size: 4.1 MB (4100899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41db747b5d8d98d86c71c2048e1af1f7971f0879194b23c6c024442b29210bc7`  
		Last Modified: Tue, 22 Sep 2026 18:51:38 GMT  
		Size: 1.5 KB (1528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:858998d6b36acf4650b75ad1dd4b051d8e9cb7955094ea46db3cf0b2ea453d30`  
		Last Modified: Tue, 22 Sep 2026 18:51:39 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:796c9e95aa12c6ecab3bc5737f825313220774d17dce02184d2fa6c4d7c43a3b`  
		Last Modified: Tue, 22 Sep 2026 18:51:51 GMT  
		Size: 696.1 MB (696111144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78bb54ad7d85e984fb8c58489b88bc721f014f6fb51615fc810a4cc3c6fa365b`  
		Last Modified: Tue, 22 Sep 2026 18:51:40 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d04de1524a09263a6ff2884b8fd98dad8cd3d59480ee5e4e5e8ab0a7a30582cc`  
		Last Modified: Tue, 22 Sep 2026 18:51:40 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3babb33593cfb8cb1b6a447029d6bbb3dc2037f6b5d02cb8ab9cee300449c1`  
		Last Modified: Tue, 22 Sep 2026 18:51:40 GMT  
		Size: 74.1 KB (74107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b16a23cb3ee573d161c0f846fb9d8fbeceaea1919a5c3ce78d0524513aefcb5`  
		Last Modified: Tue, 22 Sep 2026 18:51:41 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.3` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:f1cfdfa5ac0bd6efad2d6fcc54802cb3b37668abff139bbce73b9e7220b08196
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2474832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69200dce4dbec2af2111b3c646d63bdf1b2a32e76c9f5a11481a09b00d6ce192`

```dockerfile
```

-	Layers:
	-	`sha256:3757481b08954d59941e8616b1c7181262ed47fc903ca6bbb32ef46b8cefc31b`  
		Last Modified: Tue, 22 Sep 2026 18:51:39 GMT  
		Size: 2.4 MB (2440874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:245e7bdb015f7d23af782e4fc34364b6b3a30e723bab4abd88fade6217668690`  
		Last Modified: Tue, 22 Sep 2026 18:51:38 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json
