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
$ docker pull elasticsearch@sha256:54171a899f5149da7a067f1f510b4c419e2d6ad67cc7946f27a74ff04d46c351
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.6` - linux; amd64

```console
$ docker pull elasticsearch@sha256:2c803937514164b18f873e8ef694cac2c8819a188c8dd23730a3e24a5d1d7fb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **869.0 MB (869009155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc1ed0042cce03699c07128b68beb1383d310cd1cb79aa6513a91f953e138a5c`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:53:47 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:53:48 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 15 Sep 2026 22:54:22 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 15 Sep 2026 22:54:22 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 15 Sep 2026 22:54:22 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 15 Sep 2026 22:54:33 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 15 Sep 2026 22:54:33 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 15 Sep 2026 22:54:33 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:54:33 GMT
ENV SHELL=/bin/bash
# Tue, 15 Sep 2026 22:54:33 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:54:33 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 15 Sep 2026 22:54:33 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 15 Sep 2026 22:54:33 GMT
LABEL org.label-schema.build-date=2026-08-26T22:12:16.859701616Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=10011cbc74640115d0ffac0cef7c925aec4754f5 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T22:12:16.859701616Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=10011cbc74640115d0ffac0cef7c925aec4754f5 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Tue, 15 Sep 2026 22:54:33 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 15 Sep 2026 22:54:33 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 15 Sep 2026 22:54:33 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:54:33 GMT
CMD ["eswrapper"]
# Tue, 15 Sep 2026 22:54:33 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a3b38447b85b38049d91a79cae57e1c4110f11676d3ad8dd0cac24ab308bae4`  
		Last Modified: Tue, 15 Sep 2026 22:55:30 GMT  
		Size: 4.1 MB (4108321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42a66b06e62b1ab3e2c9826b498c882a5c7db22bd2e4a649fa80bf1429abb7a`  
		Last Modified: Tue, 15 Sep 2026 22:55:29 GMT  
		Size: 1.5 KB (1532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d9e6994f1c612a9e4f5569390c8a4dda134a4a0aca6c395e2a327e6d4ec0bc`  
		Last Modified: Tue, 15 Sep 2026 22:55:29 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090fc310e06b0c7cf637285faee9ee677df7de40d19237374d3f71952a330f1e`  
		Last Modified: Tue, 15 Sep 2026 22:55:50 GMT  
		Size: 824.0 MB (824016144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ec25c961f6bb088090f91fdf0266bd9a185ae45ef622e28721402d99897def`  
		Last Modified: Tue, 15 Sep 2026 22:55:31 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb47d326394c41d7de342e50f61c457837befd6f63d4ccd3674988ef2200626`  
		Last Modified: Tue, 15 Sep 2026 22:55:31 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d380e556b6fd115d1f21e6a48f400f5aa9433e5c3014c4d687051952029f846`  
		Last Modified: Tue, 15 Sep 2026 22:55:31 GMT  
		Size: 75.2 KB (75185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aaf1334add5e2b2313b984105c48b990917882ce67367ff25606a871220e45`  
		Last Modified: Tue, 15 Sep 2026 22:55:32 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.6` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:be2f4373a710fc2da0b59345e92f91e66e40e60d16b4d005e05cc12908648fd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01410356a9092b67b626238802d77dd440cfbd24af3ce4caf4a3994160222ce1`

```dockerfile
```

-	Layers:
	-	`sha256:0800e6e73bee50012333e6e705e2c67e84ccd379118bcbdbe96dccbb2bd9f2fc`  
		Last Modified: Tue, 15 Sep 2026 22:55:30 GMT  
		Size: 2.4 MB (2389013 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb1a120a72e458672b6b584d8efaf96ef75b18b0c72c7234a4e2c068cbd351dc`  
		Last Modified: Tue, 15 Sep 2026 22:55:30 GMT  
		Size: 33.8 KB (33776 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.6` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:5f416f199dab823e55163177125435c8f00438ee118df511977ecb5e7344b029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.5 MB (713490523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3945eed538e63780bd7152a3f1d8c85d5f06262ea16ae0856f312273cc60967d`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:32:10 GMT
ENV container oci
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:72fb2dc4c486c747a87584232d6df49829397aab078c7b53003fc02fe0742d2a in /      
# Tue, 15 Sep 2026 08:32:11 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:32:11 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:70bfa1e7dfaad5303fc10a9b7675f727b8b80ee73235d444355fbe0bc2bcf440 in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:70bfa1e7dfaad5303fc10a9b7675f727b8b80ee73235d444355fbe0bc2bcf440 in /root/buildinfo/      
# Tue, 15 Sep 2026 08:32:11 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:31:49Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:31:49Z" "architecture"="aarch64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:31:49Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:42:52 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:42:53 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 15 Sep 2026 22:44:12 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 15 Sep 2026 22:44:12 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 15 Sep 2026 22:44:12 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 15 Sep 2026 22:44:19 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 15 Sep 2026 22:44:19 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 15 Sep 2026 22:44:19 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:44:19 GMT
ENV SHELL=/bin/bash
# Tue, 15 Sep 2026 22:44:19 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:44:19 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 15 Sep 2026 22:44:19 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 15 Sep 2026 22:44:19 GMT
LABEL org.label-schema.build-date=2026-08-26T22:12:16.859701616Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=10011cbc74640115d0ffac0cef7c925aec4754f5 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T22:12:16.859701616Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=10011cbc74640115d0ffac0cef7c925aec4754f5 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Tue, 15 Sep 2026 22:44:19 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 15 Sep 2026 22:44:20 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 15 Sep 2026 22:44:20 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:44:20 GMT
CMD ["eswrapper"]
# Tue, 15 Sep 2026 22:44:20 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:edf54d88a9d386573b3ea6054762d75827e6380055074899aed1e5a2c810b3b7`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 38.8 MB (38799472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b7dc1c92b661cc2a9a6a918d2ae78117c7b9ed6f925a12e078765237d983d5`  
		Last Modified: Tue, 15 Sep 2026 22:45:06 GMT  
		Size: 4.1 MB (4109910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ec964203f5629e0e21a134fb6c953b583c574843fb526a33c221ee9926464d6`  
		Last Modified: Tue, 15 Sep 2026 22:44:15 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9dd73f82c62d486eeb35f1249c235916b230272f1f9f21a69af44854218e83`  
		Last Modified: Tue, 15 Sep 2026 22:45:06 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58500abb9f77d5e7a83fa175e07131bbf4511140639808408a3509ba94b0d3c3`  
		Last Modified: Tue, 15 Sep 2026 22:45:18 GMT  
		Size: 670.5 MB (670492690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8fcb814211f402c7c84801fbf3de67ee633d5e400aad2eea8c4325b3866668`  
		Last Modified: Tue, 15 Sep 2026 22:45:06 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294d6cd7e6d2a0049c4c36b6cf13a4aa56cc8944780d475483917a2c3c5b66a3`  
		Last Modified: Tue, 15 Sep 2026 22:45:07 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03916b59240e1cc10b77480a9516518d05c0374f65270ce6419250cfc1bcb10d`  
		Last Modified: Tue, 15 Sep 2026 22:45:07 GMT  
		Size: 74.1 KB (74105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ac1035864218fc71932ce6ce227f38c780464ea83f7c8df911b1b1ae32ce4f0`  
		Last Modified: Tue, 15 Sep 2026 22:45:07 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.6` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:eaccbea6374a4f0c862f0e4152b3cbf1cfebdefee4191a4cfcbad538f3e4523a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376c869b6b10a290f0daddd556e43ae6da067de052575c26f6e980bba80b62d9`

```dockerfile
```

-	Layers:
	-	`sha256:7db17f566ad6c043c8f99d79d051af64fb53dd2236abf5aa254e1c319e85d17e`  
		Last Modified: Tue, 15 Sep 2026 22:45:06 GMT  
		Size: 2.4 MB (2387793 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f866689c569d39a61e175f7409eeecf597a4aeb93338356234745e98d8e0b9a7`  
		Last Modified: Tue, 15 Sep 2026 22:45:05 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.5.3`

```console
$ docker pull elasticsearch@sha256:35771a8fd9c332aeba8fbea3a335b52f1b2f39a94da46e6409381d30fd42574b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.5.3` - linux; amd64

```console
$ docker pull elasticsearch@sha256:d04211ae3fa8551a0a7512737050c721018660d50554cb44c1cf2798abbc618d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **894.7 MB (894698794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a3bd46e4d2c2f892030e2ffbba1557a68fb7f338e806891f9a5434e6892739`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:53:58 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:53:58 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 15 Sep 2026 22:54:34 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 15 Sep 2026 22:54:34 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 15 Sep 2026 22:54:34 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 15 Sep 2026 22:54:45 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 15 Sep 2026 22:54:45 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 15 Sep 2026 22:54:45 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:54:45 GMT
ENV SHELL=/bin/bash
# Tue, 15 Sep 2026 22:54:45 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:54:45 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 15 Sep 2026 22:54:45 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 15 Sep 2026 22:54:45 GMT
LABEL org.label-schema.build-date=2026-09-01T16:11:59.322249404Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=367ec317ec5f668dd864d41be06052a567102fec org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T16:11:59.322249404Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=367ec317ec5f668dd864d41be06052a567102fec org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3
# Tue, 15 Sep 2026 22:54:45 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.3 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 15 Sep 2026 22:54:46 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 15 Sep 2026 22:54:46 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:54:46 GMT
CMD ["eswrapper"]
# Tue, 15 Sep 2026 22:54:46 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c525a09a97680afa79d3955f2079bbc67fe8f30a7a5799bc2e56c2b5406f4869`  
		Last Modified: Tue, 15 Sep 2026 22:55:46 GMT  
		Size: 4.1 MB (4108332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:481af89590ad064d1dd342b7b12edc18d85bbfceb38f2da2bc22776aa8141c05`  
		Last Modified: Tue, 15 Sep 2026 22:55:45 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d60794aba023ab1fbae67c81079924ec49552447da6a91571de8daddcce531a`  
		Last Modified: Tue, 15 Sep 2026 22:55:45 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07dedfbb0ce55e001f5a71d41c18379b2b06eae073c70bc84245f55032b6ddfc`  
		Last Modified: Tue, 15 Sep 2026 22:56:00 GMT  
		Size: 849.7 MB (849705779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7980d3fb09bdb9c8812035c258f7d4dcaed0e17af42f640fb35391ac3ada7496`  
		Last Modified: Tue, 15 Sep 2026 22:55:46 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b53f63e9fc9e14d91d5f63dde5ac2975d3a694808239ce72016122500d3fe1d`  
		Last Modified: Tue, 15 Sep 2026 22:55:47 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b52f19c275ef26a2d99b16ce358b0bc7c7e15eee1df13ae7d632767b2386a0e`  
		Last Modified: Tue, 15 Sep 2026 22:55:47 GMT  
		Size: 75.2 KB (75179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2370b3ad5b45d936445ce7a453d31595caa129acd555fa24d77d16c269aa147a`  
		Last Modified: Tue, 15 Sep 2026 22:55:48 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.3` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:85ea2dcf43cc759ae77b913fe956daab865f0505a3124b883b4062ee8eb48f59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2475869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fa8882f37e84757b091c1c3db11897dcb32677f661f65f8b6edfa6df729afc5`

```dockerfile
```

-	Layers:
	-	`sha256:fc9b57bc514c0703b5f8d8acf33f019a21b32651509d0a356a558cebb308e0fb`  
		Last Modified: Tue, 15 Sep 2026 22:55:45 GMT  
		Size: 2.4 MB (2442094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82d48cc30f385ca201c89d8f64a724785a0a465d53f5f83c98ea9c9a74352896`  
		Last Modified: Tue, 15 Sep 2026 22:55:45 GMT  
		Size: 33.8 KB (33775 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.5.3` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:ef33ee8a6f703d5f7ea614e4d4de70e49436ce9256be3930d1db8cd9a7a01691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **739.1 MB (739108872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04e4cfdf87c184a042d46d3e0ba4298bcdaec4d9a9767c59e9e6a48ff553c915`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:32:10 GMT
ENV container oci
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:72fb2dc4c486c747a87584232d6df49829397aab078c7b53003fc02fe0742d2a in /      
# Tue, 15 Sep 2026 08:32:11 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:32:11 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:70bfa1e7dfaad5303fc10a9b7675f727b8b80ee73235d444355fbe0bc2bcf440 in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:70bfa1e7dfaad5303fc10a9b7675f727b8b80ee73235d444355fbe0bc2bcf440 in /root/buildinfo/      
# Tue, 15 Sep 2026 08:32:11 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:31:49Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:31:49Z" "architecture"="aarch64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:31:49Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:42:53 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:42:53 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 15 Sep 2026 22:43:21 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 15 Sep 2026 22:43:21 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 15 Sep 2026 22:43:21 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 15 Sep 2026 22:43:29 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 15 Sep 2026 22:43:29 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 15 Sep 2026 22:43:29 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:43:29 GMT
ENV SHELL=/bin/bash
# Tue, 15 Sep 2026 22:43:29 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:43:29 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 15 Sep 2026 22:43:29 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 15 Sep 2026 22:43:29 GMT
LABEL org.label-schema.build-date=2026-09-01T16:11:59.322249404Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=367ec317ec5f668dd864d41be06052a567102fec org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T16:11:59.322249404Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=367ec317ec5f668dd864d41be06052a567102fec org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3
# Tue, 15 Sep 2026 22:43:29 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.3 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 15 Sep 2026 22:43:29 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 15 Sep 2026 22:43:29 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:43:29 GMT
CMD ["eswrapper"]
# Tue, 15 Sep 2026 22:43:29 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:edf54d88a9d386573b3ea6054762d75827e6380055074899aed1e5a2c810b3b7`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 38.8 MB (38799472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:168b7566e8ec80b33a2c70d94d7d8e0827b754c5f7e0e875f09b484cc6f61f18`  
		Last Modified: Tue, 15 Sep 2026 22:44:16 GMT  
		Size: 4.1 MB (4109871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ec964203f5629e0e21a134fb6c953b583c574843fb526a33c221ee9926464d6`  
		Last Modified: Tue, 15 Sep 2026 22:44:15 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1643d62e83466e33119c229ecfa0fcf22715414f06b160b5929f5b2642b2a6`  
		Last Modified: Tue, 15 Sep 2026 22:44:15 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39dd9cf0bd2ccd788bffdc338a2150b6af956bb8ecd137d58aaa80c681b365c3`  
		Last Modified: Tue, 15 Sep 2026 22:44:27 GMT  
		Size: 696.1 MB (696111080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d52d08a936f8efe2564c8b18de215d98b4caba3ffcd705c915cffc000920321a`  
		Last Modified: Tue, 15 Sep 2026 22:44:16 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c0b980af222f9902a07151788a03b481473ab4d43b5d3483f8c48fd2edc44c6`  
		Last Modified: Tue, 15 Sep 2026 22:44:16 GMT  
		Size: 1.7 KB (1721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:581ad52755b3bf18727f0a9e784b1002e5ee82db52bc1861430f7e1f45319ed9`  
		Last Modified: Tue, 15 Sep 2026 22:44:17 GMT  
		Size: 74.1 KB (74102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bc1bd9c9401ba17a85817ab962ed161387a36ebe67188c63d1ee47fda448f0`  
		Last Modified: Tue, 15 Sep 2026 22:44:18 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.3` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:3eb5f8f0a9d398edf1593fb54dbf61da0d46140e0e032bafbf2291fa2a5e31f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2474832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df86a8ced3ff95d82fd675bbfe8ee270b13bb87a1c49b8bbad0e9668058aacd6`

```dockerfile
```

-	Layers:
	-	`sha256:cc70d25a0ee37537e5781a80b70e60fd4068ea519ec387a0c88bb52004a99299`  
		Last Modified: Tue, 15 Sep 2026 22:44:15 GMT  
		Size: 2.4 MB (2440874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a690965a94edc822acbc9adbb71992b6edac10ae6529685c9fbf39d4df500a45`  
		Last Modified: Tue, 15 Sep 2026 22:44:15 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json
