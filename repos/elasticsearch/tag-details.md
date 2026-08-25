<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:8.19.20`](#elasticsearch81920)
-	[`elasticsearch:9.4.5`](#elasticsearch945)
-	[`elasticsearch:9.5.2`](#elasticsearch952)

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
$ docker pull elasticsearch@sha256:0b6f7a12d6630f43b81b77a615ac839bd664555a61c5ea8a01d057793ca093a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:f952fcf4281afa14399ce09a46f81c5b32c33401dd4b2589d174748b4fe2bcc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **868.8 MB (868804963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8009cd0a6d184521b162e32b396eca923536ce31d6d1df44d502822d1f927afd`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 25 Aug 2026 08:42:09 GMT
ENV container oci
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:8b54154024a9f6604a1f7d88b375ea31b450980a74152912280af8df957f00cd in /      
# Tue, 25 Aug 2026 08:42:09 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 08:42:09 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:070ea34291ea740e6cd31833ff6dcb8f3000a7173f6294c8f875540d0e160dbf in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:070ea34291ea740e6cd31833ff6dcb8f3000a7173f6294c8f875540d0e160dbf in /root/buildinfo/      
# Tue, 25 Aug 2026 08:42:10 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T08:41:53Z" "org.opencontainers.image.revision"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "build-date"="2026-08-25T08:41:53Z" "architecture"="x86_64" "vcs-ref"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "vcs-type"="git" "release"="1787647261"org.opencontainers.image.created=2026-08-25T08:41:53Z,org.opencontainers.image.revision=85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f
# Tue, 25 Aug 2026 17:46:19 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 25 Aug 2026 17:46:19 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 25 Aug 2026 17:46:51 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 25 Aug 2026 17:46:51 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 25 Aug 2026 17:46:51 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 25 Aug 2026 17:47:02 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 25 Aug 2026 17:47:02 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 25 Aug 2026 17:47:02 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:47:02 GMT
ENV SHELL=/bin/bash
# Tue, 25 Aug 2026 17:47:02 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 25 Aug 2026 17:47:02 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 25 Aug 2026 17:47:02 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 25 Aug 2026 17:47:02 GMT
LABEL org.label-schema.build-date=2026-08-05T22:14:02.491442712Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=adc1f04ffdd393d1977990338d5512c5eaf1ce94 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.5 org.opencontainers.image.created=2026-08-05T22:14:02.491442712Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=adc1f04ffdd393d1977990338d5512c5eaf1ce94 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.5
# Tue, 25 Aug 2026 17:47:02 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.5 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 25 Aug 2026 17:47:02 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 25 Aug 2026 17:47:02 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 17:47:02 GMT
CMD ["eswrapper"]
# Tue, 25 Aug 2026 17:47:02 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:4853116e101d40f67d98c14106326af68960f39e03627259f46bfe4c535cca9b`  
		Last Modified: Tue, 25 Aug 2026 09:35:48 GMT  
		Size: 40.7 MB (40711993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0628f0db181550a0cecbf2592a8b3d35c084edea805a6a14ca531a7eefcd0651`  
		Last Modified: Tue, 25 Aug 2026 17:47:57 GMT  
		Size: 4.1 MB (4110205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6538164cdcbce9339b34c2a073dc191ed1485e5031b0f2f82c312520696c83`  
		Last Modified: Tue, 25 Aug 2026 17:47:56 GMT  
		Size: 1.5 KB (1528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18bb5f85a01399570270db95cb960620da68d72d06756acd173bfca5abf0c9a8`  
		Last Modified: Tue, 25 Aug 2026 17:47:56 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d103511a6cd8f7c948e6667d815aa4820d80fdadcac6efb74d1af203576282c3`  
		Last Modified: Tue, 25 Aug 2026 17:48:13 GMT  
		Size: 823.9 MB (823892806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb78484b6fa5d6180329473c34df52b4c92c059a482004d8ad107edcd06fd42`  
		Last Modified: Tue, 25 Aug 2026 17:47:57 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d575cc921d849382100eacff2d6d46a9e96b77ea1f1b68061ecd1ebb57318c8f`  
		Last Modified: Tue, 25 Aug 2026 17:47:58 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5120f7c23fa683e18e516cd2b1c9241a0023568b81068563bee3076734053510`  
		Last Modified: Tue, 25 Aug 2026 17:47:58 GMT  
		Size: 75.2 KB (75185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7885fc175ef474894c6db24d6034d85b3d6901c8e36e23cd75dd7539ff7132e`  
		Last Modified: Tue, 25 Aug 2026 17:47:59 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:a2f60763e96112df52bbfe5db316bda71eea6db6ddc9e86fb33ce92ea85a2ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2423799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d939625bc0215b9a748002e9c623e5d29c0e81d1a4d69a3cce5aa57bfbf10be`

```dockerfile
```

-	Layers:
	-	`sha256:170da62e59f82e116feb0648325318a70456ad8cda19f9f89ff3a2e623837bd5`  
		Last Modified: Tue, 25 Aug 2026 17:47:57 GMT  
		Size: 2.4 MB (2390023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e376a35d696b4fec2c9fac4a3ad0c82d723a8dd1b32f91256312a8817eaba59e`  
		Last Modified: Tue, 25 Aug 2026 17:47:56 GMT  
		Size: 33.8 KB (33776 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.5` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:7dc1626fb9c7b05403f61b5bfebda2bb25e57ce819d15272b2769178e4e45dfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.4 MB (713372934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7f42694ca7b4789afa93dd9bbb5ba8c451a302f8a5d9d0fb6f5df2c006c9ef2`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 25 Aug 2026 08:43:54 GMT
ENV container oci
# Tue, 25 Aug 2026 08:43:55 GMT
COPY dir:fc82963b4cd1761f20a1a620749f6598604531a4997e7419bffffcb2369d8feb in /      
# Tue, 25 Aug 2026 08:43:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 08:43:55 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 08:43:55 GMT
COPY dir:3079f305cc24544d349abf38a4bec53199670ed6b04fb0218ac1be8ab8e4f589 in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 08:43:55 GMT
COPY dir:3079f305cc24544d349abf38a4bec53199670ed6b04fb0218ac1be8ab8e4f589 in /root/buildinfo/      
# Tue, 25 Aug 2026 08:43:55 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T08:43:32Z" "org.opencontainers.image.revision"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "build-date"="2026-08-25T08:43:32Z" "architecture"="aarch64" "vcs-ref"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "vcs-type"="git" "release"="1787647261"org.opencontainers.image.created=2026-08-25T08:43:32Z,org.opencontainers.image.revision=85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f
# Tue, 25 Aug 2026 17:45:44 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 25 Aug 2026 17:45:44 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 25 Aug 2026 17:46:12 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 25 Aug 2026 17:46:12 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 25 Aug 2026 17:46:12 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 25 Aug 2026 17:46:20 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 25 Aug 2026 17:46:20 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 25 Aug 2026 17:46:20 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:46:20 GMT
ENV SHELL=/bin/bash
# Tue, 25 Aug 2026 17:46:20 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 25 Aug 2026 17:46:20 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 25 Aug 2026 17:46:20 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 25 Aug 2026 17:46:20 GMT
LABEL org.label-schema.build-date=2026-08-05T22:14:02.491442712Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=adc1f04ffdd393d1977990338d5512c5eaf1ce94 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.5 org.opencontainers.image.created=2026-08-05T22:14:02.491442712Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=adc1f04ffdd393d1977990338d5512c5eaf1ce94 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.5
# Tue, 25 Aug 2026 17:46:20 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.5 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 25 Aug 2026 17:46:20 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 25 Aug 2026 17:46:20 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 17:46:20 GMT
CMD ["eswrapper"]
# Tue, 25 Aug 2026 17:46:20 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:cfeec01a2bba583c2dcde9b457cc89d4b56583567390972f5501ce5ad4fa4ae8`  
		Last Modified: Tue, 25 Aug 2026 09:35:36 GMT  
		Size: 38.8 MB (38815608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31ee73c3f40edf5e57054807ce764611885c51e72f3a76686c028316b87d98ca`  
		Last Modified: Tue, 25 Aug 2026 17:47:06 GMT  
		Size: 4.1 MB (4109098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d6290726b925eb285d5c261a283b575f09a9943b58f9574be7c643a480999d`  
		Last Modified: Tue, 25 Aug 2026 17:47:06 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cca7fe8f6900687894989f5515e171c6d9ca94678a94522ed7d3f94bf4fdfc39`  
		Last Modified: Tue, 25 Aug 2026 17:47:06 GMT  
		Size: 9.1 KB (9097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda1777ef3e966c3a73b7bc695913025460e867afe1f0b262d46449e87025718`  
		Last Modified: Tue, 25 Aug 2026 17:47:19 GMT  
		Size: 670.4 MB (670359784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1aa38c194880b9b9a4f09091b8a247d8457c94da931b3b8bc6c5e1d6ef4ab95`  
		Last Modified: Tue, 25 Aug 2026 17:47:07 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8284eedefdd65e6f2ac369c317d49303cf70ae35275207728fe4311969310dac`  
		Last Modified: Tue, 25 Aug 2026 17:47:07 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:493987466e4558b85b8e032af99f569fc50fa8191ecc9086ccb452b262b683f0`  
		Last Modified: Tue, 25 Aug 2026 17:47:08 GMT  
		Size: 74.1 KB (74104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baa609c4026f9697107173b68a0ef4fef94f3f958d51384899f43db6f5381061`  
		Last Modified: Tue, 25 Aug 2026 17:47:08 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:6a54a4919369621ec8694929038a181bd77e690d6530c5375418bf630c4a1244
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a45fd948cc985704ffc07ea993ba01a66d058e88c321e9bcc6ff8f42734a90c`

```dockerfile
```

-	Layers:
	-	`sha256:ecadf1b40384d7a706446470f2413cbbed488216bef89db653a2759d50a22eea`  
		Last Modified: Tue, 25 Aug 2026 17:47:06 GMT  
		Size: 2.4 MB (2388803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0240bc073c6d7e46cebfee584f81f1870ba12aafc881c3e149bd7bc60c1e75a`  
		Last Modified: Tue, 25 Aug 2026 17:47:06 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.5.2`

```console
$ docker pull elasticsearch@sha256:7b92af0bc2055e499c903ad631b40e646bd07edd8cf206da9b9265942925e5e2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.5.2` - linux; amd64

```console
$ docker pull elasticsearch@sha256:f4826179c3a80de9fc2b521b009aeff6246bc00ea1f367b8e28f12e0f51261e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **894.6 MB (894588654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cf56f51d3da1236ef59c908ee7757d103b2b2089007a2554fd65a0b51c61871`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 25 Aug 2026 08:42:09 GMT
ENV container oci
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:8b54154024a9f6604a1f7d88b375ea31b450980a74152912280af8df957f00cd in /      
# Tue, 25 Aug 2026 08:42:09 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 08:42:09 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:070ea34291ea740e6cd31833ff6dcb8f3000a7173f6294c8f875540d0e160dbf in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:070ea34291ea740e6cd31833ff6dcb8f3000a7173f6294c8f875540d0e160dbf in /root/buildinfo/      
# Tue, 25 Aug 2026 08:42:10 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T08:41:53Z" "org.opencontainers.image.revision"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "build-date"="2026-08-25T08:41:53Z" "architecture"="x86_64" "vcs-ref"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "vcs-type"="git" "release"="1787647261"org.opencontainers.image.created=2026-08-25T08:41:53Z,org.opencontainers.image.revision=85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f
# Tue, 25 Aug 2026 17:49:14 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 25 Aug 2026 17:49:14 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 25 Aug 2026 17:50:45 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 25 Aug 2026 17:50:45 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 25 Aug 2026 17:50:45 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 25 Aug 2026 17:50:57 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 25 Aug 2026 17:50:57 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 25 Aug 2026 17:50:57 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:50:57 GMT
ENV SHELL=/bin/bash
# Tue, 25 Aug 2026 17:50:57 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 25 Aug 2026 17:50:57 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 25 Aug 2026 17:50:57 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 25 Aug 2026 17:50:57 GMT
LABEL org.label-schema.build-date=2026-08-18T10:07:58.745010960Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=b42549c72e6e040825b13e5d8ebf7ff63886b24d org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.2 org.opencontainers.image.created=2026-08-18T10:07:58.745010960Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=b42549c72e6e040825b13e5d8ebf7ff63886b24d org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.2
# Tue, 25 Aug 2026 17:50:57 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.2 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 25 Aug 2026 17:50:57 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 25 Aug 2026 17:50:57 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 17:50:57 GMT
CMD ["eswrapper"]
# Tue, 25 Aug 2026 17:50:57 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:4853116e101d40f67d98c14106326af68960f39e03627259f46bfe4c535cca9b`  
		Last Modified: Tue, 25 Aug 2026 09:35:48 GMT  
		Size: 40.7 MB (40711993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:314e0edd83d6b4052fc2ac1028e3eafc8557d6a7aa18b8542d3c9ee95888f2ec`  
		Last Modified: Tue, 25 Aug 2026 17:51:53 GMT  
		Size: 4.1 MB (4110257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c39a4a5a1ca61b094a6e87a962c6da0c0ce4e7c9de6088b36ca07cdee613586`  
		Last Modified: Tue, 25 Aug 2026 17:51:53 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a366ab27cb7f87f7e9fcd3fd903c2aa50fc63f5a9e3b8c6f8cd523f0cdf0fb6e`  
		Last Modified: Tue, 25 Aug 2026 17:51:53 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b576140deb4bc3a0a460999cf06926270efaf13dec07a859e1384d276b77036`  
		Last Modified: Tue, 25 Aug 2026 17:52:20 GMT  
		Size: 849.7 MB (849676445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661d1bcb5aa737851ae4f47b89a7d0723964bcce1eef8bde278089c96552e3c7`  
		Last Modified: Tue, 25 Aug 2026 17:51:54 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec3e794cf9bc2cc994d09355fd35b6a221ee7a0cdb3f36a4a8e44c051d2644e`  
		Last Modified: Tue, 25 Aug 2026 17:51:54 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2b42bb658d75d7bf2a0b8eab3e8b06b5cd7d46b6691c5a017d5c257a0ad6525`  
		Last Modified: Tue, 25 Aug 2026 17:51:54 GMT  
		Size: 75.2 KB (75188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:363b11f72fa83d066dff4bb2d2213f3444815719a4bbd0e12aa3e0774f6c9de7`  
		Last Modified: Tue, 25 Aug 2026 17:51:55 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.2` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:fefb77500fc9040fd09c832e46fb4d628476b3084c659f3c0b7eb6e100db7874
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2475852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:185c91ba05eab229aae47a60bcb6bc8fa6624db089c2df2ef132103f34e03942`

```dockerfile
```

-	Layers:
	-	`sha256:b292c6570d1d0e231581f2ee5f0d4fd3965651b361d7ab10b5f33b997cf00321`  
		Last Modified: Tue, 25 Aug 2026 17:51:53 GMT  
		Size: 2.4 MB (2442076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c699dd3cda6181270702b32261c0f5a73bd9a15c8b2cbb9a9d16bb2130386e5f`  
		Last Modified: Tue, 25 Aug 2026 17:51:53 GMT  
		Size: 33.8 KB (33776 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.5.2` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:2d5ae8917aa525decacb03c3b690a13d11e59dea8c5278fc1085e9e4d5999ef1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **739.1 MB (739082736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06c27386c5b0d03f2a9c4b129d6a473d152528c9a4ad2140e4eb03337b16dc35`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 25 Aug 2026 08:43:54 GMT
ENV container oci
# Tue, 25 Aug 2026 08:43:55 GMT
COPY dir:fc82963b4cd1761f20a1a620749f6598604531a4997e7419bffffcb2369d8feb in /      
# Tue, 25 Aug 2026 08:43:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 08:43:55 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 08:43:55 GMT
COPY dir:3079f305cc24544d349abf38a4bec53199670ed6b04fb0218ac1be8ab8e4f589 in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 08:43:55 GMT
COPY dir:3079f305cc24544d349abf38a4bec53199670ed6b04fb0218ac1be8ab8e4f589 in /root/buildinfo/      
# Tue, 25 Aug 2026 08:43:55 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T08:43:32Z" "org.opencontainers.image.revision"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "build-date"="2026-08-25T08:43:32Z" "architecture"="aarch64" "vcs-ref"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "vcs-type"="git" "release"="1787647261"org.opencontainers.image.created=2026-08-25T08:43:32Z,org.opencontainers.image.revision=85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f
# Tue, 25 Aug 2026 17:45:27 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 25 Aug 2026 17:45:27 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 25 Aug 2026 17:46:35 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 25 Aug 2026 17:46:35 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 25 Aug 2026 17:46:35 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 25 Aug 2026 17:46:43 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 25 Aug 2026 17:46:43 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 25 Aug 2026 17:46:43 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:46:43 GMT
ENV SHELL=/bin/bash
# Tue, 25 Aug 2026 17:46:43 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 25 Aug 2026 17:46:43 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 25 Aug 2026 17:46:43 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 25 Aug 2026 17:46:43 GMT
LABEL org.label-schema.build-date=2026-08-18T10:07:58.745010960Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=b42549c72e6e040825b13e5d8ebf7ff63886b24d org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.2 org.opencontainers.image.created=2026-08-18T10:07:58.745010960Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=b42549c72e6e040825b13e5d8ebf7ff63886b24d org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.2
# Tue, 25 Aug 2026 17:46:43 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.2 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 25 Aug 2026 17:46:43 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 25 Aug 2026 17:46:43 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 17:46:43 GMT
CMD ["eswrapper"]
# Tue, 25 Aug 2026 17:46:43 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:cfeec01a2bba583c2dcde9b457cc89d4b56583567390972f5501ce5ad4fa4ae8`  
		Last Modified: Tue, 25 Aug 2026 09:35:36 GMT  
		Size: 38.8 MB (38815608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5590ab10ad0abc657e9954e5d344b8205045280f88a53dc052e30d0bba2a8e96`  
		Last Modified: Tue, 25 Aug 2026 17:47:30 GMT  
		Size: 4.1 MB (4109048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf202d78d785aa1771e836c18ee8d8b497ef7ec8936c11c7a481507ecbd2c77`  
		Last Modified: Tue, 25 Aug 2026 17:47:30 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2bbbc9b79bb4f7a0f17b7e382e73ac6ecec37b054746343b40cad7a5f750807`  
		Last Modified: Tue, 25 Aug 2026 17:47:30 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f5977255134a00916d784f21a50391ab9b632f518ef72f586c253a272f79a0`  
		Last Modified: Tue, 25 Aug 2026 17:47:43 GMT  
		Size: 696.1 MB (696069625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef818bb40bb37efadedf1d4e89ab9209fcb4fe292f39f4a65afc7e9466a2188d`  
		Last Modified: Tue, 25 Aug 2026 17:47:31 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef93237ce3ac88f5ded359ef6b488768c7d4ab46e42d339af07c7c089cffa9e`  
		Last Modified: Tue, 25 Aug 2026 17:47:31 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c69cd147a5c7103ee7bfa1a387b0e31d6b66c083e710476f6bee6846ca574e57`  
		Last Modified: Tue, 25 Aug 2026 17:47:32 GMT  
		Size: 74.1 KB (74109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d79dcf592681a8b893ccc82d5705deb694f5a6976354e2c87ed2f41032f9e377`  
		Last Modified: Tue, 25 Aug 2026 17:47:33 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.2` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:4ad22dfdbb19a7386e665b9c8eab8d5981b99dd9a1c91500d7a9d73b76543971
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2474814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85f6d0a7a4b3c120fbc63ce148705a16bf8e950ae62ff31f6ee4d3b4fd71fe2`

```dockerfile
```

-	Layers:
	-	`sha256:ed71272ed9725985830fd482abd4438ee3e78064cd2189c69da23ff706bbd2ec`  
		Last Modified: Tue, 25 Aug 2026 17:47:30 GMT  
		Size: 2.4 MB (2440856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:053d04af6fcb1a6bf5728132dd329d1907cd554b16142f682895d769eac62668`  
		Last Modified: Tue, 25 Aug 2026 17:47:30 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json
