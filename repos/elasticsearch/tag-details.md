<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:8.19.21`](#elasticsearch81921)
-	[`elasticsearch:9.4.6`](#elasticsearch946)
-	[`elasticsearch:9.5.3`](#elasticsearch953)

## `elasticsearch:8.19.21`

```console
$ docker pull elasticsearch@sha256:24591e0b3434d883825906c5b01026e83f60e05e038ed3702da2a8892976073d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:8.19.21` - linux; amd64

```console
$ docker pull elasticsearch@sha256:eec8d63dfb35779db8ec5de79891534e1a4b787571aa49717d7d72acb20e0fac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **734.3 MB (734251072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b151f6261ab0dada1a8430be96721715d2fe5b088f018625b9ce7a7da860be`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

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
# Tue, 01 Sep 2026 23:02:10 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Tue, 01 Sep 2026 23:02:10 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 01 Sep 2026 23:02:10 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 01 Sep 2026 23:02:10 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 01 Sep 2026 23:03:27 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Tue, 01 Sep 2026 23:03:27 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 01 Sep 2026 23:03:27 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:03:27 GMT
ENV SHELL=/bin/bash
# Tue, 01 Sep 2026 23:03:27 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 23:03:27 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 01 Sep 2026 23:03:28 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Tue, 01 Sep 2026 23:03:28 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Tue, 01 Sep 2026 23:03:28 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 01 Sep 2026 23:03:28 GMT
LABEL org.label-schema.build-date=2026-08-26T22:10:47.574903747Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=4fe44c255c3d0da06779b921e132cdc555ed9aff org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.21 org.opencontainers.image.created=2026-08-26T22:10:47.574903747Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=4fe44c255c3d0da06779b921e132cdc555ed9aff org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.21
# Tue, 01 Sep 2026 23:03:28 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 23:03:28 GMT
CMD ["eswrapper"]
# Tue, 01 Sep 2026 23:03:28 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:220f3ff5256bfa37df252c80d01cd2d2f3ceb4c9311ed3915ff5730439a3b136`  
		Last Modified: Tue, 01 Sep 2026 23:04:20 GMT  
		Size: 15.8 MB (15776379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea9d3c6c8352459546d95f6bba591372fdcf1bcf9cd3e6b550904f8b9c88d242`  
		Last Modified: Tue, 01 Sep 2026 23:04:19 GMT  
		Size: 3.5 KB (3531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153864aad5075c326e4e661e73dfc2dcc6b0b16f587e6c3caec5f72701062224`  
		Last Modified: Tue, 01 Sep 2026 23:04:32 GMT  
		Size: 688.4 MB (688445375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bfa63c2c09d120b0d2c1970d0fb1ed2137a1f5387c216be3e520a12aa68d3b5`  
		Last Modified: Tue, 01 Sep 2026 23:04:19 GMT  
		Size: 9.5 KB (9534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ef1a490c66f2d6f51ffe4a5cfffcbb247c24494cd31878ea9278f7ddb90edeb`  
		Last Modified: Tue, 01 Sep 2026 23:04:20 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ebfc3309554f8a7fbb37f93c8f8643545e340e601935be65baf9d8cb330c066`  
		Last Modified: Tue, 01 Sep 2026 23:04:20 GMT  
		Size: 164.2 KB (164191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8a6977b2ac4df9f1c9de20e869186931b0e0e9b0f8936fb4c508c3117bb3c3`  
		Last Modified: Tue, 01 Sep 2026 23:04:21 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:686a6c905b6580930678d88a5adf27aeff4ce79af461f0cbb928710af965f99d`  
		Last Modified: Tue, 01 Sep 2026 23:04:22 GMT  
		Size: 97.1 KB (97100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.21` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:62d7db9ecc31c84007c0edb1362431f7616839b5455962c9e53433475e4f7f0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3227469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7918d53306f95741ce4cf8cb762728e96c8732cf0845e05f8798e7d013c8369`

```dockerfile
```

-	Layers:
	-	`sha256:b7297a327a99283c7fa4df67c7fe65d53e05d00d0a4b296e6b0d891006700e8a`  
		Last Modified: Tue, 01 Sep 2026 23:04:20 GMT  
		Size: 3.2 MB (3190645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71a541542c7e40c9a6ce52b1855fd69b15298e5cdbc44fc61ceabc8d12eb808e`  
		Last Modified: Tue, 01 Sep 2026 23:04:19 GMT  
		Size: 36.8 KB (36824 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:8.19.21` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:54bd3bca60e5dae249e7c572f125eedf1a869b7e9e097b6ea40cd4299950d37b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.0 MB (582031850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a85623258b09a5519d288aec85ee1ccf6c1d6ffe89f4b415193c5ef74f4efcba`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

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
# Tue, 01 Sep 2026 23:03:23 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Tue, 01 Sep 2026 23:03:24 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 01 Sep 2026 23:03:24 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 01 Sep 2026 23:03:24 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 01 Sep 2026 23:03:50 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Tue, 01 Sep 2026 23:03:50 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 01 Sep 2026 23:03:50 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:03:50 GMT
ENV SHELL=/bin/bash
# Tue, 01 Sep 2026 23:03:50 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 23:03:50 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 01 Sep 2026 23:03:50 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Tue, 01 Sep 2026 23:03:50 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Tue, 01 Sep 2026 23:03:50 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 01 Sep 2026 23:03:50 GMT
LABEL org.label-schema.build-date=2026-08-26T22:10:47.574903747Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=4fe44c255c3d0da06779b921e132cdc555ed9aff org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.21 org.opencontainers.image.created=2026-08-26T22:10:47.574903747Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=4fe44c255c3d0da06779b921e132cdc555ed9aff org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.21
# Tue, 01 Sep 2026 23:03:50 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 23:03:50 GMT
CMD ["eswrapper"]
# Tue, 01 Sep 2026 23:03:50 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:026302176ec67efb37722433ba3cfdb0764e3d3387a4b773ec59ef04473d6bd5`  
		Last Modified: Tue, 01 Sep 2026 23:04:29 GMT  
		Size: 15.6 MB (15631453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5a2ced93017c5d8eb0441a2272b20226106cc6823cde848e1f5f52c3fa709b0`  
		Last Modified: Tue, 01 Sep 2026 23:04:28 GMT  
		Size: 3.5 KB (3532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4f1b4bff563c52d38f6077493a28351cf49def39f3352c1c1d999caef834d2`  
		Last Modified: Tue, 01 Sep 2026 23:04:38 GMT  
		Size: 537.2 MB (537240579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b5acce45575c5bdec6b700723d35bc4ab2fe6f9e3eb9040d18261044213152`  
		Last Modified: Tue, 01 Sep 2026 23:04:28 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2604e8021b709b22419dca8297da50266dd6a8e85f29b33f48b13be49af8d35d`  
		Last Modified: Tue, 01 Sep 2026 23:04:30 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2a8a8a8a61d1532ed90bdeb5023ae069239c584da131583b218637ce4b65115`  
		Last Modified: Tue, 01 Sep 2026 23:04:30 GMT  
		Size: 160.7 KB (160692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26e0514f939f4ac4a3777a6fb46c4bff1e0e72339d3f830a9e574483f7d850a1`  
		Last Modified: Tue, 01 Sep 2026 23:04:30 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea843923020ed755ba8a26819a3f37b281cb5f41e94576627d5796d228fac27`  
		Last Modified: Tue, 01 Sep 2026 23:04:31 GMT  
		Size: 97.1 KB (97101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.21` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:8c1afb156a2546c8a2d7560f8dca6fc115ae08111f42b663ad640b13ab957ad2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3228085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:487e1f878cb69ecec36f5dbb53e40f13744e3273b3e2fd8bf5cc6696d7f9aa8d`

```dockerfile
```

-	Layers:
	-	`sha256:687570e6ed2d51c22ee6b49e9096b364a730346c8dfa04dd9ab0f1333c7b1684`  
		Last Modified: Tue, 01 Sep 2026 23:04:28 GMT  
		Size: 3.2 MB (3191058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30c9b381edb100bf7879ac2d8b40f6ed6f5e9beaa8a8ee4c64dcd23cb35172c7`  
		Last Modified: Tue, 01 Sep 2026 23:04:28 GMT  
		Size: 37.0 KB (37027 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.4.6`

```console
$ docker pull elasticsearch@sha256:f1aa8bfa954db23ee012cef981720fd91abd74ac26b441f15a083ae51dc7b28a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.6` - linux; amd64

```console
$ docker pull elasticsearch@sha256:ebee89368e8af2f289a7f6153057902117c0509f1e826cf4d26e53498ec8bb97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **868.9 MB (868925570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26891985ddf0d7189102a3463d730eee7ac9ffb92139ed10cc0aa479b564b9bb`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Tue, 01 Sep 2026 23:01:50 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 01 Sep 2026 23:01:50 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 01 Sep 2026 23:03:05 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 01 Sep 2026 23:03:05 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 01 Sep 2026 23:03:05 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 01 Sep 2026 23:03:16 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 01 Sep 2026 23:03:16 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 01 Sep 2026 23:03:16 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:03:16 GMT
ENV SHELL=/bin/bash
# Tue, 01 Sep 2026 23:03:16 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 23:03:17 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 01 Sep 2026 23:03:17 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 01 Sep 2026 23:03:17 GMT
LABEL org.label-schema.build-date=2026-08-26T22:12:16.859701616Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=10011cbc74640115d0ffac0cef7c925aec4754f5 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T22:12:16.859701616Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=10011cbc74640115d0ffac0cef7c925aec4754f5 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Tue, 01 Sep 2026 23:03:17 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 01 Sep 2026 23:03:17 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 01 Sep 2026 23:03:17 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 23:03:17 GMT
CMD ["eswrapper"]
# Tue, 01 Sep 2026 23:03:17 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b1e1adfaeb9e343416d2d64c9f69f25719c882e204c10589ec2c83f00e364a`  
		Last Modified: Tue, 01 Sep 2026 23:04:11 GMT  
		Size: 4.1 MB (4109875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b37ee9508054919046a43dede3f542ed6d18b5f7eaffbdebd5d05b701fde8dd`  
		Last Modified: Tue, 01 Sep 2026 23:04:11 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e20a76afc1faed103f7c34d33b3244af428dbe72a6495bfc0b0cd28856571abc`  
		Last Modified: Tue, 01 Sep 2026 23:04:11 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b715b0fda7b4a53b8770496027cd917c1143bb5ed72b2791d71347e485e46537`  
		Last Modified: Tue, 01 Sep 2026 23:04:25 GMT  
		Size: 824.0 MB (824016162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21f86aafc3efc11c6d0460ca2cbeb94537475b57043be04b25f548df231176f`  
		Last Modified: Tue, 01 Sep 2026 23:04:12 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09bcd8c94ace317c3aba3271c8b47a6eb01dcefc5e04c8b91fe17240e8932ca5`  
		Last Modified: Tue, 01 Sep 2026 23:04:12 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c936d8b35bd3a8840e35afb22a05fe179715a861876642a6dd4f059b271acac6`  
		Last Modified: Tue, 01 Sep 2026 23:04:13 GMT  
		Size: 75.2 KB (75182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c648d6cac062d83429bb144bf84d7832bb766a5f6bd364f0936285e229f4aa4`  
		Last Modified: Tue, 01 Sep 2026 23:04:14 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.6` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:0490c06afd707f27afe8bb4202a87e3d0a6d24ab95a3a276f5b5c227cdb6f033
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87681bdbc35549d00968674bf9458dd5b462c18912cbbc9998b1d16392b54ad4`

```dockerfile
```

-	Layers:
	-	`sha256:0ff6cb52a644aac015edbb1315481fce8b1d75a71de6249d0ce253ec70fe34af`  
		Last Modified: Tue, 01 Sep 2026 23:04:12 GMT  
		Size: 2.4 MB (2389003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:176073c93a213c18cb61d6f6cea2a0bc75ba0085eeeb9fcd4b31907c270e48e4`  
		Last Modified: Tue, 01 Sep 2026 23:04:11 GMT  
		Size: 33.8 KB (33775 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.6` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:40cd3c5fa870179014bb03e1ab75d463a382a941ec43e9c74027d2c3eb54500f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.5 MB (713507330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b1d725d488951642b46f2073c6067e468e225cb8d86eb88065f4b38443734d9`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:55:27 GMT
ENV container oci
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:f2269a49305dc61b5c62efda70ce8327957d5aafa0915c5b324ac4402d0afd7e in /      
# Mon, 31 Aug 2026 08:55:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:55:28 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:314f6db1cd15d342fa9962b7dae89ed14fe0c81c812223914e17998e1aac0abe in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:314f6db1cd15d342fa9962b7dae89ed14fe0c81c812223914e17998e1aac0abe in /root/buildinfo/      
# Mon, 31 Aug 2026 08:55:28 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:55:06Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:55:06Z" "architecture"="aarch64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:55:06Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Tue, 01 Sep 2026 23:03:07 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 01 Sep 2026 23:03:07 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 01 Sep 2026 23:04:12 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 01 Sep 2026 23:04:12 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 01 Sep 2026 23:04:12 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 01 Sep 2026 23:04:20 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 01 Sep 2026 23:04:20 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 01 Sep 2026 23:04:20 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:04:20 GMT
ENV SHELL=/bin/bash
# Tue, 01 Sep 2026 23:04:20 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 23:04:20 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 01 Sep 2026 23:04:20 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 01 Sep 2026 23:04:20 GMT
LABEL org.label-schema.build-date=2026-08-26T22:12:16.859701616Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=10011cbc74640115d0ffac0cef7c925aec4754f5 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T22:12:16.859701616Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=10011cbc74640115d0ffac0cef7c925aec4754f5 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Tue, 01 Sep 2026 23:04:20 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 01 Sep 2026 23:04:20 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 01 Sep 2026 23:04:20 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 23:04:20 GMT
CMD ["eswrapper"]
# Tue, 01 Sep 2026 23:04:20 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:8289a871631249c9c1a3b2366de832716cd43c77864c245a1c1364a2abeb5704`  
		Last Modified: Mon, 31 Aug 2026 10:01:50 GMT  
		Size: 38.8 MB (38815996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dcebca989b38882b19b6bca662dc0527dcd2f900792b12368f459b672145643`  
		Last Modified: Tue, 01 Sep 2026 23:05:05 GMT  
		Size: 4.1 MB (4110289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d1c9147d690fb2e6696d235525662b0c40be8c983dfe61b46a5754c9889077`  
		Last Modified: Tue, 01 Sep 2026 23:05:05 GMT  
		Size: 1.5 KB (1531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dfa9fa67730734155cf985369600d2fbab2cba5b90cfb02a251dc0765f24808`  
		Last Modified: Tue, 01 Sep 2026 23:05:05 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2ed7bc84b7761690cb780212eaee671aa9870d4ab28aa1aee5db9b596320bfc`  
		Last Modified: Tue, 01 Sep 2026 23:05:19 GMT  
		Size: 670.5 MB (670492598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b30a5f68e94f3d5dd52959e589689f72bfb24fe8f9e145bd6fe3a5c1144f99c0`  
		Last Modified: Tue, 01 Sep 2026 23:05:06 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e90f486259125b4abf961aa9eadf1b1e12c6b5ff354bfb2ecde0cf4f39807c2`  
		Last Modified: Tue, 01 Sep 2026 23:05:06 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab85a1395507901ce1e32e7cb543daf7fc864ab712d4166df8026eeaa76332c0`  
		Last Modified: Tue, 01 Sep 2026 23:05:07 GMT  
		Size: 74.1 KB (74102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6efbd0f539ea3c48493a68d052e941c4ea67d0468cf4917ba7b39428208fca2`  
		Last Modified: Tue, 01 Sep 2026 23:05:08 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.6` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:473a36425f4c8358d94a92654bca9a4baba9701c65079f7d3f72f961fe489168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:945dc9f395cd703b92ad75dd25fb65180cd3c17eb248f5c4085fe288c9e25fda`

```dockerfile
```

-	Layers:
	-	`sha256:b7b3fc3171dd3c7b4277427b52db6771135713e6a0580fa289608de69c792a97`  
		Last Modified: Tue, 01 Sep 2026 23:05:05 GMT  
		Size: 2.4 MB (2387783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a022384ed71a0f41ce9620deca565788807767842979ac06b9ad76c5e223e283`  
		Last Modified: Tue, 01 Sep 2026 23:05:05 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.5.3`

**does not exist** (yet?)
