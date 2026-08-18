<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:8.19.20`](#elasticsearch81920)
-	[`elasticsearch:9.4.5`](#elasticsearch945)
-	[`elasticsearch:9.5.1`](#elasticsearch951)

## `elasticsearch:8.19.20`

```console
$ docker pull elasticsearch@sha256:7c6a3d514563848873ae3e0e2e36502382842ebae38134a59e91214e8fcdabf3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:8.19.20` - linux; amd64

```console
$ docker pull elasticsearch@sha256:fe533591bb6691357e76bc4b815da914184df5a73b48bb12ae8aaf6c1a3710df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **722.8 MB (722816015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8c90dd284054070bf17a7396e05ad9c24ef16a6d7a8284faab1e98316e3e1f6`
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
# Tue, 18 Aug 2026 19:19:30 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Tue, 18 Aug 2026 19:19:30 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 18 Aug 2026 19:19:30 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 18 Aug 2026 19:19:30 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 18 Aug 2026 19:20:27 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Tue, 18 Aug 2026 19:20:27 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 18 Aug 2026 19:20:27 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:20:27 GMT
ENV SHELL=/bin/bash
# Tue, 18 Aug 2026 19:20:27 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:20:27 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 18 Aug 2026 19:20:27 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Tue, 18 Aug 2026 19:20:28 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Tue, 18 Aug 2026 19:20:28 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 18 Aug 2026 19:20:28 GMT
LABEL org.label-schema.build-date=2026-08-05T22:14:37.858379356Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=91f5381ece296ddc32b554f997269478b9224af8 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.20 org.opencontainers.image.created=2026-08-05T22:14:37.858379356Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=91f5381ece296ddc32b554f997269478b9224af8 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.20
# Tue, 18 Aug 2026 19:20:28 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 19:20:28 GMT
CMD ["eswrapper"]
# Tue, 18 Aug 2026 19:20:28 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5529d9baf97b685dc1135c701ee98dda092e7fcfc0086eec7815ed19f1184809`  
		Last Modified: Tue, 18 Aug 2026 19:21:17 GMT  
		Size: 4.5 MB (4457162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bca09aee281dd5d4beec4a89db62a828605ddc38919a40a9081c1a4f0a6b2518`  
		Last Modified: Tue, 18 Aug 2026 19:21:17 GMT  
		Size: 3.5 KB (3526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07947be3690c8faf4250cac06ef8c27df90bbbbc674a70438bbd8cb4e55d74d9`  
		Last Modified: Tue, 18 Aug 2026 19:21:30 GMT  
		Size: 688.3 MB (688329546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e768e21ac9ba40069215cbb8ea2c6a165ada0c60012823b4930c55b6af4d86a0`  
		Last Modified: Tue, 18 Aug 2026 19:21:17 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5874d341802706c71b8ba4eb1c54d13d8657e99f881cc495094fedfd3c3aae46`  
		Last Modified: Tue, 18 Aug 2026 19:21:18 GMT  
		Size: 1.7 KB (1715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b30f24c33a5bff808d4e7790d3413c31d26805a200e45ea11d4a3e32fb4f8f88`  
		Last Modified: Tue, 18 Aug 2026 19:21:19 GMT  
		Size: 164.2 KB (164189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79b174803226bba35e34f1aadd8387de0ae8413cb54d101bf5e7a8e9980250a1`  
		Last Modified: Tue, 18 Aug 2026 19:21:19 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c8f56ccdf5f8e512837aa264a46ea9d35bec5f48af3380d44d01bd37252dae`  
		Last Modified: Tue, 18 Aug 2026 19:21:20 GMT  
		Size: 97.1 KB (97101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.20` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:9fabf7320a0a8b3b5be0cfacc46731da0d1dfd8a66afffefc48edb7be63b4099
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3228477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6a0ee617097706a2bd9e960520a28e9bd4890a137e34692f8f6c2806f247366`

```dockerfile
```

-	Layers:
	-	`sha256:f171dce395cca38588c495ee2b63d3c3b449efdb9ba3c7e7b310593e8c1336db`  
		Last Modified: Tue, 18 Aug 2026 19:21:17 GMT  
		Size: 3.2 MB (3191662 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a3a62846d528e14c0f62a25cf1fa6250a26939fef057aea8c4869619988abcc`  
		Last Modified: Tue, 18 Aug 2026 19:21:17 GMT  
		Size: 36.8 KB (36815 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:8.19.20` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:1e667848401be5a36dfd22dda8a390c179e9e142cdbb48f2fdb84d4dcc696b13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **570.8 MB (570752446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6b096ff3720ff9e218398c7f1825183ff34336658c6464d6c4d063a4834a131`
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
# Tue, 18 Aug 2026 19:19:40 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Tue, 18 Aug 2026 19:19:40 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 18 Aug 2026 19:19:40 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 18 Aug 2026 19:19:40 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 18 Aug 2026 19:20:21 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Tue, 18 Aug 2026 19:20:21 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 18 Aug 2026 19:20:21 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:20:21 GMT
ENV SHELL=/bin/bash
# Tue, 18 Aug 2026 19:20:21 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:20:21 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 18 Aug 2026 19:20:21 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Tue, 18 Aug 2026 19:20:21 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Tue, 18 Aug 2026 19:20:21 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 18 Aug 2026 19:20:21 GMT
LABEL org.label-schema.build-date=2026-08-05T22:14:37.858379356Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=91f5381ece296ddc32b554f997269478b9224af8 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.20 org.opencontainers.image.created=2026-08-05T22:14:37.858379356Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=91f5381ece296ddc32b554f997269478b9224af8 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.20
# Tue, 18 Aug 2026 19:20:21 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 19:20:21 GMT
CMD ["eswrapper"]
# Tue, 18 Aug 2026 19:20:21 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da5ea73de1e94280c7134bfdb630160f58905d6e2df4e93735b8559b17f65b05`  
		Last Modified: Tue, 18 Aug 2026 19:21:01 GMT  
		Size: 4.5 MB (4460029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4009626638123de21ccceb2a37d7afa371149bee0041aa9124065e380e63bcdf`  
		Last Modified: Tue, 18 Aug 2026 19:21:01 GMT  
		Size: 3.5 KB (3528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d92d422c19bdbcfe08b180b031c9e1d75c47a054ae7bf075feb0b6f2b249ad4`  
		Last Modified: Tue, 18 Aug 2026 19:21:12 GMT  
		Size: 537.1 MB (537132607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535bd6ee032f6eec5e4f7e7647c128b1efd113f08859df7159556130743beba5`  
		Last Modified: Tue, 18 Aug 2026 19:21:01 GMT  
		Size: 9.1 KB (9105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb7b993b7e6744504d4a3a0643009f887337b631c45aa90c08360b401324e274`  
		Last Modified: Tue, 18 Aug 2026 19:21:02 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c002b700f690815f234e89c7e7c39d2f949b3ca5e17951243efdcd760169a6a7`  
		Last Modified: Tue, 18 Aug 2026 19:21:02 GMT  
		Size: 160.7 KB (160689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10dcf15669dc991717a83e05b2a1175dded58d5d23533118a85ead4383c495d0`  
		Last Modified: Tue, 18 Aug 2026 19:21:02 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1331581987d20dde9b8eb93699e71a138fce122ed0cee2eff7fe852997f1c610`  
		Last Modified: Tue, 18 Aug 2026 19:21:04 GMT  
		Size: 97.1 KB (97101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.20` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:1b6ac5292724d81f66d2a775462bd52a8bf3dd20299923165cabac9a92489956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3229093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27a090865c5069a64b0ee930d422a38777c3a386b0157af47bfdd64e6694fa3f`

```dockerfile
```

-	Layers:
	-	`sha256:94b1dcf2d9d3588dfc24e6a69311910698b4440a4d0a2fa750bea3510c351670`  
		Last Modified: Tue, 18 Aug 2026 19:21:01 GMT  
		Size: 3.2 MB (3192075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb1198f217f778465bafcb9cc579f1f7d6005f36c69c6a20e3993373347f3de5`  
		Last Modified: Tue, 18 Aug 2026 19:21:01 GMT  
		Size: 37.0 KB (37018 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.4.5`

```console
$ docker pull elasticsearch@sha256:e384b019312e26e6942cdcfabfd33cc33c369a1d44ae48958eb8cc1e11629caa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:ef71e8ab31c06e6331210b5f167a8af5e7750e97ed3410fe94c3a894f3b4c2bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **868.8 MB (868804667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6706f34b5c06ce7a59f591dfa875a4f471fb88ec57e1b743e11e420b4f0796b5`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 17 Aug 2026 17:27:15 GMT
ENV container oci
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:975e595a9e6cbbfee7f07eb5443a58fb81eff06cafb12ae4f0e1422e8692c141 in /      
# Mon, 17 Aug 2026 17:27:16 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 17:27:16 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:65a3d9e22af3e56e090455b33d2c3174efac94e4f8a1283201a9e46186020641 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:65a3d9e22af3e56e090455b33d2c3174efac94e4f8a1283201a9e46186020641 in /root/buildinfo/      
# Mon, 17 Aug 2026 17:27:16 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T17:26:46Z" "org.opencontainers.image.revision"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "build-date"="2026-08-17T17:26:46Z" "architecture"="x86_64" "vcs-ref"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "vcs-type"="git" "release"="1786987521"org.opencontainers.image.created=2026-08-17T17:26:46Z,org.opencontainers.image.revision=6bb838e7904a1c68094d157a898fff623ad3fcb9
# Mon, 17 Aug 2026 22:38:23 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:38:23 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Mon, 17 Aug 2026 22:39:57 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 17 Aug 2026 22:39:57 GMT
COPY /bin/tini /bin/tini # buildkit
# Mon, 17 Aug 2026 22:39:57 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 17 Aug 2026 22:40:08 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Mon, 17 Aug 2026 22:40:08 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Mon, 17 Aug 2026 22:40:08 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:40:08 GMT
ENV SHELL=/bin/bash
# Mon, 17 Aug 2026 22:40:08 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:40:08 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Mon, 17 Aug 2026 22:40:08 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Mon, 17 Aug 2026 22:40:08 GMT
LABEL org.label-schema.build-date=2026-08-05T22:14:02.491442712Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=adc1f04ffdd393d1977990338d5512c5eaf1ce94 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.5 org.opencontainers.image.created=2026-08-05T22:14:02.491442712Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=adc1f04ffdd393d1977990338d5512c5eaf1ce94 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.5
# Mon, 17 Aug 2026 22:40:08 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.5 release=1 summary=Elasticsearch description=You know, for search.
# Mon, 17 Aug 2026 22:40:08 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 17 Aug 2026 22:40:08 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Mon, 17 Aug 2026 22:40:08 GMT
CMD ["eswrapper"]
# Mon, 17 Aug 2026 22:40:08 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:c282501e7b1aa336a39e8eb09b91d97b94921c378c6a6fbfe7b56d2db572c305`  
		Last Modified: Mon, 17 Aug 2026 18:11:34 GMT  
		Size: 40.7 MB (40711990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0d684929f5a0874df655b4905c622d45a8134dbc906269f9dbd7ccaa567b62`  
		Last Modified: Mon, 17 Aug 2026 22:41:03 GMT  
		Size: 4.1 MB (4109954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d8dd3baa31f16f795c6a090d0f0023437f8673d7ec04187b9722be20d3676e3`  
		Last Modified: Mon, 17 Aug 2026 22:41:02 GMT  
		Size: 1.5 KB (1528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc166e3ec9433d7d77c81dfe6c92f1f083d1fd426f9718c04e91616417977a8`  
		Last Modified: Mon, 17 Aug 2026 22:41:02 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a533e8b0ec7ce2f9fb75a60fe9393af598a9238230bf2123354992988cd14d2`  
		Last Modified: Mon, 17 Aug 2026 22:41:21 GMT  
		Size: 823.9 MB (823892765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9c93b99e57eaa425bcde1afd23c9065918b61a165c7ddef3100d433ab006709`  
		Last Modified: Mon, 17 Aug 2026 22:41:03 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a868f66855fecbb3920eb83d72edb0d5f734bc587e668367de4fadde4b30cd95`  
		Last Modified: Mon, 17 Aug 2026 22:41:03 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e32f80ccf5e0d789071786f6e568866158163b1ce69f80591d3217d5b95235c3`  
		Last Modified: Mon, 17 Aug 2026 22:41:04 GMT  
		Size: 75.2 KB (75186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e34b03e05a48a25af8151d7d17eab91cb8268e200d5a2a746230339dd51e294`  
		Last Modified: Mon, 17 Aug 2026 22:41:05 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:73c711b5452f1cfe82fd6fc89da6271f42aabac11c02dea62afff07b19738758
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2423799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df8755ecef6118983d9a6562173430c79fe1e024e1808b94d33cfd4ece84fc44`

```dockerfile
```

-	Layers:
	-	`sha256:7c01525fe096ae5d7263871da30c357425e0ec77fca89a33ba7ce57cf4f124a4`  
		Last Modified: Mon, 17 Aug 2026 22:41:02 GMT  
		Size: 2.4 MB (2390023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88a92b4ec2bac4995a388f806904178c96ca66bc9f7c915147fd24939f477dc9`  
		Last Modified: Mon, 17 Aug 2026 22:41:02 GMT  
		Size: 33.8 KB (33776 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.5` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:8890609c89081978cc9dbe7e98345fb420c33904a342030b87536ac8ebfb3e56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.4 MB (713372502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:761d028f19d1d049b12105d98b20e9742a6c50f790a2b2a0078552cea94b3355`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 17 Aug 2026 17:29:38 GMT
ENV container oci
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:bc0c34c3de4568914cc6d0ce9e475804776b9932a837352e0a0b8eaeec65f0ab in /      
# Mon, 17 Aug 2026 17:29:39 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 17:29:39 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:75017821d3d7ffd12376ef094bfe2a63592d7cc455658a85911fc189573e02d7 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:75017821d3d7ffd12376ef094bfe2a63592d7cc455658a85911fc189573e02d7 in /root/buildinfo/      
# Mon, 17 Aug 2026 17:29:40 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T17:29:16Z" "org.opencontainers.image.revision"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "build-date"="2026-08-17T17:29:16Z" "architecture"="aarch64" "vcs-ref"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "vcs-type"="git" "release"="1786987521"org.opencontainers.image.created=2026-08-17T17:29:16Z,org.opencontainers.image.revision=6bb838e7904a1c68094d157a898fff623ad3fcb9
# Mon, 17 Aug 2026 22:37:48 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:37:49 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Mon, 17 Aug 2026 22:39:07 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 17 Aug 2026 22:39:07 GMT
COPY /bin/tini /bin/tini # buildkit
# Mon, 17 Aug 2026 22:39:08 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 17 Aug 2026 22:39:15 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Mon, 17 Aug 2026 22:39:15 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Mon, 17 Aug 2026 22:39:15 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:39:15 GMT
ENV SHELL=/bin/bash
# Mon, 17 Aug 2026 22:39:15 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:39:15 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Mon, 17 Aug 2026 22:39:15 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Mon, 17 Aug 2026 22:39:15 GMT
LABEL org.label-schema.build-date=2026-08-05T22:14:02.491442712Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=adc1f04ffdd393d1977990338d5512c5eaf1ce94 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.5 org.opencontainers.image.created=2026-08-05T22:14:02.491442712Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=adc1f04ffdd393d1977990338d5512c5eaf1ce94 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.5
# Mon, 17 Aug 2026 22:39:15 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.5 release=1 summary=Elasticsearch description=You know, for search.
# Mon, 17 Aug 2026 22:39:15 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 17 Aug 2026 22:39:15 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Mon, 17 Aug 2026 22:39:15 GMT
CMD ["eswrapper"]
# Mon, 17 Aug 2026 22:39:15 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:210b7d6959bf1413d4a100e480de134d4278c3fb9c1808fc5395449f4bd1229f`  
		Last Modified: Mon, 17 Aug 2026 18:17:33 GMT  
		Size: 38.8 MB (38815799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:051f554017e9aa5e4cc6663e496bc0c666f81e8d5a2d5e197585329f9027d61d`  
		Last Modified: Mon, 17 Aug 2026 22:40:02 GMT  
		Size: 4.1 MB (4108567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7c76473952dbb94e719f4890b98da62d836c40f6ac45a28581549ff862f538`  
		Last Modified: Mon, 17 Aug 2026 22:40:02 GMT  
		Size: 1.5 KB (1528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79233330e60cfe9ff661769a83ed76b0699435264cca8346d4de89b453efa783`  
		Last Modified: Mon, 17 Aug 2026 22:40:02 GMT  
		Size: 9.1 KB (9098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4421bbf1c98d9bb616bb0f896f993fd46ff184415baf4002580fa055562a5c7b`  
		Last Modified: Mon, 17 Aug 2026 22:40:14 GMT  
		Size: 670.4 MB (670359689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649fda1d99981e20fd776a13c7a19a02dd08e21bc5fa0d8189752c52d40b6aa8`  
		Last Modified: Mon, 17 Aug 2026 22:40:03 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271116e2d71a17933c9d9567bfae7405ae3d5ecf1ad43fc4f2c65ddf8ce4d919`  
		Last Modified: Mon, 17 Aug 2026 22:40:03 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62ddb9c431faf06ab5b9ea1692ad00f831741c05ff8543dfe5644eeae118fcdb`  
		Last Modified: Mon, 17 Aug 2026 22:40:04 GMT  
		Size: 74.1 KB (74106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b67bb370f50f7dc7cda5c167eb89ecdac79c8de78a01fb54e15ad6ae758b06e`  
		Last Modified: Mon, 17 Aug 2026 22:40:04 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:48a6af053ed9c4b7f435ba94c67a825b15eb1e4055da5dfa1afe0844503a2cba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d4de098f6f500acd439c92862191be16af8ee54314ab6541316a66dfd5b8fb`

```dockerfile
```

-	Layers:
	-	`sha256:705fb8d170574b803c41ea3e837d9d8ca8cf12610610194d8495c700f8749344`  
		Last Modified: Mon, 17 Aug 2026 22:40:02 GMT  
		Size: 2.4 MB (2388803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d956735b8160f657ad840d3e27a6013b063ddd3d88c3ac030b04f32d59929cf`  
		Last Modified: Mon, 17 Aug 2026 22:40:02 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.5.1`

```console
$ docker pull elasticsearch@sha256:9656a9ca03f822c89d7523dbbfa84b096958b5723d49678e85889d9c6a6bff3f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.5.1` - linux; amd64

```console
$ docker pull elasticsearch@sha256:dcc7cfea7f982ee739933671b9ba8ed370f3bfe12419a213a390fb611fb6a474
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **894.4 MB (894444926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a342779877f12fac7da943e5648997175592a195912ae9093a983c98071ff77b`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 17 Aug 2026 17:27:15 GMT
ENV container oci
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:975e595a9e6cbbfee7f07eb5443a58fb81eff06cafb12ae4f0e1422e8692c141 in /      
# Mon, 17 Aug 2026 17:27:16 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 17:27:16 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:65a3d9e22af3e56e090455b33d2c3174efac94e4f8a1283201a9e46186020641 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:65a3d9e22af3e56e090455b33d2c3174efac94e4f8a1283201a9e46186020641 in /root/buildinfo/      
# Mon, 17 Aug 2026 17:27:16 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T17:26:46Z" "org.opencontainers.image.revision"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "build-date"="2026-08-17T17:26:46Z" "architecture"="x86_64" "vcs-ref"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "vcs-type"="git" "release"="1786987521"org.opencontainers.image.created=2026-08-17T17:26:46Z,org.opencontainers.image.revision=6bb838e7904a1c68094d157a898fff623ad3fcb9
# Mon, 17 Aug 2026 22:38:26 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:38:26 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Mon, 17 Aug 2026 22:38:58 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 17 Aug 2026 22:38:58 GMT
COPY /bin/tini /bin/tini # buildkit
# Mon, 17 Aug 2026 22:38:58 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 17 Aug 2026 22:39:10 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Mon, 17 Aug 2026 22:39:10 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Mon, 17 Aug 2026 22:39:10 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:39:10 GMT
ENV SHELL=/bin/bash
# Mon, 17 Aug 2026 22:39:10 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:39:10 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Mon, 17 Aug 2026 22:39:10 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Mon, 17 Aug 2026 22:39:10 GMT
LABEL org.label-schema.build-date=2026-08-05T23:10:54.760245929Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=0e1cdd500cb446f51b847d131747da3cc500eee1 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.1 org.opencontainers.image.created=2026-08-05T23:10:54.760245929Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=0e1cdd500cb446f51b847d131747da3cc500eee1 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.1
# Mon, 17 Aug 2026 22:39:10 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.1 release=1 summary=Elasticsearch description=You know, for search.
# Mon, 17 Aug 2026 22:39:10 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 17 Aug 2026 22:39:10 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Mon, 17 Aug 2026 22:39:10 GMT
CMD ["eswrapper"]
# Mon, 17 Aug 2026 22:39:10 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:c282501e7b1aa336a39e8eb09b91d97b94921c378c6a6fbfe7b56d2db572c305`  
		Last Modified: Mon, 17 Aug 2026 18:11:34 GMT  
		Size: 40.7 MB (40711990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9ac2993da06cc3e98af8cd31243d8746edb05914668992c408a21f4bc945bc2`  
		Last Modified: Mon, 17 Aug 2026 22:40:06 GMT  
		Size: 4.1 MB (4109967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e509cc416560b8c2986cc2bd2408b2d67594ddc908206825ec5aab8190d3911`  
		Last Modified: Mon, 17 Aug 2026 22:40:06 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c3ede5e8bfab905fb1d534c18a409174b59caa496dd84726195f2fabf45b81a`  
		Last Modified: Mon, 17 Aug 2026 22:40:06 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55baa614dab0f248843d0462f801e6752950a406315bb1c0cb1e7ec0db7f00c6`  
		Last Modified: Mon, 17 Aug 2026 22:40:21 GMT  
		Size: 849.5 MB (849533006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50feda0af8b1c59f151e7704defafe8dc086d6f0a20d67337397eb86d8d000d3`  
		Last Modified: Mon, 17 Aug 2026 22:40:07 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecdcc94464929864039853a8000b0abc3ba8279ef8f5d48145559a4220f3e314`  
		Last Modified: Mon, 17 Aug 2026 22:40:07 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed96eb555cc4532fefacf2df4606392510773b36c9bcdbd85df48c5d0f86c650`  
		Last Modified: Mon, 17 Aug 2026 22:40:08 GMT  
		Size: 75.2 KB (75187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a8420f00c56c5953d3eadcf1e9bfddf2fc9c6d523f2f4351860167690d4646a`  
		Last Modified: Mon, 17 Aug 2026 22:40:08 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.1` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:4ed865ba97e062214771d5c6b237f3fc6e9a274a3bbaef844213121973c718cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2476877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:626c365f3a0b40943e5f9e20bef039e6d21bb3ccd6562ab36148ee299bd9b2c4`

```dockerfile
```

-	Layers:
	-	`sha256:664bdc812726378efe5daa64007a10728b7d0f8a551274d6938a2a3bcdb0270c`  
		Last Modified: Mon, 17 Aug 2026 22:40:06 GMT  
		Size: 2.4 MB (2443101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ad45161b0077bbe04ff6523920d8a6c101320094c8ea724a9f632c7f5018726`  
		Last Modified: Mon, 17 Aug 2026 22:40:06 GMT  
		Size: 33.8 KB (33776 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.5.1` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:08f476644961c0018a30dc237c5bbd0fc14143d7b7a108a825c2dd36c7cf1eca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **739.0 MB (738963471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e961e02fedcb04cf421f6f76e131cd82d5f4cbcbb2c22a6983408781ae103b73`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 17 Aug 2026 17:29:38 GMT
ENV container oci
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:bc0c34c3de4568914cc6d0ce9e475804776b9932a837352e0a0b8eaeec65f0ab in /      
# Mon, 17 Aug 2026 17:29:39 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 17:29:39 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:75017821d3d7ffd12376ef094bfe2a63592d7cc455658a85911fc189573e02d7 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:75017821d3d7ffd12376ef094bfe2a63592d7cc455658a85911fc189573e02d7 in /root/buildinfo/      
# Mon, 17 Aug 2026 17:29:40 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T17:29:16Z" "org.opencontainers.image.revision"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "build-date"="2026-08-17T17:29:16Z" "architecture"="aarch64" "vcs-ref"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "vcs-type"="git" "release"="1786987521"org.opencontainers.image.created=2026-08-17T17:29:16Z,org.opencontainers.image.revision=6bb838e7904a1c68094d157a898fff623ad3fcb9
# Mon, 17 Aug 2026 22:37:48 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:37:48 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Mon, 17 Aug 2026 22:38:32 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 17 Aug 2026 22:38:32 GMT
COPY /bin/tini /bin/tini # buildkit
# Mon, 17 Aug 2026 22:38:32 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 17 Aug 2026 22:38:40 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Mon, 17 Aug 2026 22:38:40 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Mon, 17 Aug 2026 22:38:40 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:38:40 GMT
ENV SHELL=/bin/bash
# Mon, 17 Aug 2026 22:38:40 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:38:40 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Mon, 17 Aug 2026 22:38:40 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Mon, 17 Aug 2026 22:38:40 GMT
LABEL org.label-schema.build-date=2026-08-05T23:10:54.760245929Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=0e1cdd500cb446f51b847d131747da3cc500eee1 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.1 org.opencontainers.image.created=2026-08-05T23:10:54.760245929Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=0e1cdd500cb446f51b847d131747da3cc500eee1 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.1
# Mon, 17 Aug 2026 22:38:40 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.1 release=1 summary=Elasticsearch description=You know, for search.
# Mon, 17 Aug 2026 22:38:40 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 17 Aug 2026 22:38:40 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Mon, 17 Aug 2026 22:38:40 GMT
CMD ["eswrapper"]
# Mon, 17 Aug 2026 22:38:40 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:210b7d6959bf1413d4a100e480de134d4278c3fb9c1808fc5395449f4bd1229f`  
		Last Modified: Mon, 17 Aug 2026 18:17:33 GMT  
		Size: 38.8 MB (38815799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8228474b60da47e91a2c00f292cdac68d010aa62f9e9e43c15f342cb4fdde095`  
		Last Modified: Mon, 17 Aug 2026 22:39:26 GMT  
		Size: 4.1 MB (4108561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fecf076ce9337be6f50a5552adddcb4dcd493f340afc4959a76f588bed249fbf`  
		Last Modified: Mon, 17 Aug 2026 22:39:26 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b834fc97a05e4e4ef1d9d97579e69fbfedbfa4956c87bb0ddeb6e8c5f330f319`  
		Last Modified: Mon, 17 Aug 2026 22:39:26 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6962679489c227f17782c5d3451748bb56207be349c2c577c1c997bac804b49`  
		Last Modified: Mon, 17 Aug 2026 22:39:38 GMT  
		Size: 696.0 MB (695950659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:410413b56da87826efe548945c4bba226e72ce495dc50828c4facc4c016c854f`  
		Last Modified: Mon, 17 Aug 2026 22:39:27 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc1601d6f21108e4fc7937d92b691e6f2327d8e81db836808b97f860a2cb0b27`  
		Last Modified: Mon, 17 Aug 2026 22:39:27 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7e9b5d2006bce1aec409f37edc7800109b03ccb7977ebcf66fdf2675419ee0`  
		Last Modified: Mon, 17 Aug 2026 22:39:28 GMT  
		Size: 74.1 KB (74107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3614ad9715ddb086a3e72ed2583d3cf536ec1976703fe2f4fb8a5884341f75ab`  
		Last Modified: Mon, 17 Aug 2026 22:39:28 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.1` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:7b6e598dbd661317044e1b4a9dc491da3345b1d806f63683da1165d5cd58d056
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2475839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c178b2fb59fdd477f7a6ac6e61439af4b9b4fd8d1a181a24e52494bac760384a`

```dockerfile
```

-	Layers:
	-	`sha256:7842e2a8e04c2ea81e35490f6c9ea25542b677b1e130d91bf9fc3a3fd4358a04`  
		Last Modified: Mon, 17 Aug 2026 22:39:26 GMT  
		Size: 2.4 MB (2441881 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5a1eeaf5bd5f4bced8a544c65cdb1c7e8cc17b84f80796cd153554a6fb82a40`  
		Last Modified: Mon, 17 Aug 2026 22:39:26 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json
