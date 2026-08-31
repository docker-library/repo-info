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
$ docker pull elasticsearch@sha256:b0af55a1f3a9d3b80d5036ffa09007fab97da124d2ab6438410c33a1d19b3d8f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:e17a1f69e6b6c9cf8b2a14e14a323ee957ac366dc71d624f04b9b2aeebe60d7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **868.8 MB (868802323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c46714e203e4632c3682784c1009ebf6679458c4298357362dde8d33d08611b2`
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
# Mon, 31 Aug 2026 19:17:53 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:17:53 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Mon, 31 Aug 2026 19:19:23 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 31 Aug 2026 19:19:23 GMT
COPY /bin/tini /bin/tini # buildkit
# Mon, 31 Aug 2026 19:19:23 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 31 Aug 2026 19:19:34 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Mon, 31 Aug 2026 19:19:34 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Mon, 31 Aug 2026 19:19:34 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:19:34 GMT
ENV SHELL=/bin/bash
# Mon, 31 Aug 2026 19:19:34 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:19:34 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Mon, 31 Aug 2026 19:19:34 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Mon, 31 Aug 2026 19:19:34 GMT
LABEL org.label-schema.build-date=2026-08-05T22:14:02.491442712Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=adc1f04ffdd393d1977990338d5512c5eaf1ce94 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.5 org.opencontainers.image.created=2026-08-05T22:14:02.491442712Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=adc1f04ffdd393d1977990338d5512c5eaf1ce94 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.5
# Mon, 31 Aug 2026 19:19:34 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.5 release=1 summary=Elasticsearch description=You know, for search.
# Mon, 31 Aug 2026 19:19:34 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 31 Aug 2026 19:19:34 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:19:34 GMT
CMD ["eswrapper"]
# Mon, 31 Aug 2026 19:19:34 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28768c7f5d5e5d5ca6dc2fac42405e10864c931c51a801a951502fbf0a06089c`  
		Last Modified: Mon, 31 Aug 2026 19:20:32 GMT  
		Size: 4.1 MB (4109992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db9be06da82253fbaa614444aec6bf74866f7994be6cfd3c3c95c9fb80736ab0`  
		Last Modified: Mon, 31 Aug 2026 19:20:32 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74cd39d9af495545316aa65dfc6c27e3da0d4cd47e9e23104cf41e819bd7e002`  
		Last Modified: Mon, 31 Aug 2026 19:20:32 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a82e483b044f8d992f5c96439b191daf37cba1b32d522073451202d4f5ebe2e4`  
		Last Modified: Mon, 31 Aug 2026 19:20:46 GMT  
		Size: 823.9 MB (823892798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f3c41da8c88dd88b5bf29c251ba02c61ee1aa0524fef145258ebdabf9d089af`  
		Last Modified: Mon, 31 Aug 2026 19:20:33 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9697afe03808ee121a5a1832f110126eaa61f897ec72feac254cfacf6e6e229`  
		Last Modified: Mon, 31 Aug 2026 19:20:33 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14fa4cfe7e10030a7a39d7336b8898c07177750a99898cbdf6eca9ce7c7cd050`  
		Last Modified: Mon, 31 Aug 2026 19:20:33 GMT  
		Size: 75.2 KB (75186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1625cef1ecc102d488f21c62415641df70146cd5ffc386cd28b95d64edca12fa`  
		Last Modified: Mon, 31 Aug 2026 19:20:34 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:5d6043b6f8d1747e73b7995b37bae975f4c215a4b772cab97e028b110b768194
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2423807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab36ebc5597aec28c81c04862706e756d2dca8847227f119499577395a9ce9a`

```dockerfile
```

-	Layers:
	-	`sha256:09285404244656d03395faa692c6dc322c23dd72f7bf06bfac0e6c1510d4eef6`  
		Last Modified: Mon, 31 Aug 2026 19:20:32 GMT  
		Size: 2.4 MB (2390031 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8da21699d660536e26cd0e5569eb322c61ddd39a1c6b78697257f9ac9d37142e`  
		Last Modified: Mon, 31 Aug 2026 19:20:32 GMT  
		Size: 33.8 KB (33776 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.5` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:3ed61ff11c4db46fdd230a1db3b52bdbd5697c7c30425feb2dd4d0d33a0f70a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.4 MB (713374499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b963a56778d38e2a8a67e9966bbae59484d21a5f2ae90b653f4205e8b1a38cf`
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
# Mon, 31 Aug 2026 19:35:05 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:35:05 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Mon, 31 Aug 2026 19:36:15 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 31 Aug 2026 19:36:15 GMT
COPY /bin/tini /bin/tini # buildkit
# Mon, 31 Aug 2026 19:36:15 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 31 Aug 2026 19:36:22 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Mon, 31 Aug 2026 19:36:22 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Mon, 31 Aug 2026 19:36:22 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:36:22 GMT
ENV SHELL=/bin/bash
# Mon, 31 Aug 2026 19:36:22 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:36:23 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Mon, 31 Aug 2026 19:36:23 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Mon, 31 Aug 2026 19:36:23 GMT
LABEL org.label-schema.build-date=2026-08-05T22:14:02.491442712Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=adc1f04ffdd393d1977990338d5512c5eaf1ce94 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.5 org.opencontainers.image.created=2026-08-05T22:14:02.491442712Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=adc1f04ffdd393d1977990338d5512c5eaf1ce94 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.5
# Mon, 31 Aug 2026 19:36:23 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.5 release=1 summary=Elasticsearch description=You know, for search.
# Mon, 31 Aug 2026 19:36:23 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 31 Aug 2026 19:36:23 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:36:23 GMT
CMD ["eswrapper"]
# Mon, 31 Aug 2026 19:36:23 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:8289a871631249c9c1a3b2366de832716cd43c77864c245a1c1364a2abeb5704`  
		Last Modified: Mon, 31 Aug 2026 10:01:50 GMT  
		Size: 38.8 MB (38815996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994c2f6afd181982049afe96cb7d192e4c649f8d9c1a32b11b457b217dc5770c`  
		Last Modified: Mon, 31 Aug 2026 19:37:09 GMT  
		Size: 4.1 MB (4110309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37864341cc70fdd5c51c1d14ac73e9ac7a5f92bc41c1d32353b808c6fb47ec8c`  
		Last Modified: Mon, 31 Aug 2026 19:37:08 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5722fd09387e064ea8f710d42c977c6b76c96308a06e3921eb0caedf29717bf6`  
		Last Modified: Mon, 31 Aug 2026 19:37:08 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e538d482d447cf8bcbfded567a959b0b563341cdcc65c245b4ad6f8f976da14`  
		Last Modified: Mon, 31 Aug 2026 19:37:20 GMT  
		Size: 670.4 MB (670359743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0af0562bb3fdb5790f66d922240581885204d42394f5c34b8a1a9d00ac8643`  
		Last Modified: Mon, 31 Aug 2026 19:37:10 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:155819d926fbf5f2d474893b454a24f4c379e24f5221ba671ef4d517593ea0e3`  
		Last Modified: Mon, 31 Aug 2026 19:37:10 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3783e894f3579a5c8a678fea950885c4d11821b5cdd1ec7806ce8ec805a0e92`  
		Last Modified: Mon, 31 Aug 2026 19:37:10 GMT  
		Size: 74.1 KB (74106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bde3aab2d74a2e5fb53ccb231ce7203e354f138373c901145971f0393272398`  
		Last Modified: Mon, 31 Aug 2026 19:37:11 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:d50b32dd5ab60701070903a3dde3802daf90a1a16759d4e3e7d5664dc380d88c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ba960a94ddb56b8a0deec5cdf6a6a502a4f8fd31b2065636cfbf1ff66dc3e1`

```dockerfile
```

-	Layers:
	-	`sha256:0306f47d853715c9f489f2aabd2ae56f8091e1dcc8abf9cd67e941688ed3edc5`  
		Last Modified: Mon, 31 Aug 2026 19:37:09 GMT  
		Size: 2.4 MB (2388811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:631f82c79b35d1f2228ea6c47dd9204fe53875d9366751a655e6d5a54a4f6c14`  
		Last Modified: Mon, 31 Aug 2026 19:37:08 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.5.2`

```console
$ docker pull elasticsearch@sha256:d768a0096542cf868dae37ad4bee528b8dc15d0476d4a82e1f98f17950dd0f80
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.5.2` - linux; amd64

```console
$ docker pull elasticsearch@sha256:4ab7d4c2fc00ffa41eb08cd142dcafef1ce63807298dd5b3021ebd98df21b8fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **894.6 MB (894585760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:206f2274a73dadd417055f7b0df2d58f4d6bd944cda5bd916c4b3be4e0505b12`
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
# Mon, 31 Aug 2026 19:17:59 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:17:59 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Mon, 31 Aug 2026 19:19:30 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 31 Aug 2026 19:19:30 GMT
COPY /bin/tini /bin/tini # buildkit
# Mon, 31 Aug 2026 19:19:31 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 31 Aug 2026 19:19:42 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Mon, 31 Aug 2026 19:19:42 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Mon, 31 Aug 2026 19:19:42 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:19:42 GMT
ENV SHELL=/bin/bash
# Mon, 31 Aug 2026 19:19:42 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:19:42 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Mon, 31 Aug 2026 19:19:42 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Mon, 31 Aug 2026 19:19:42 GMT
LABEL org.label-schema.build-date=2026-08-18T10:07:58.745010960Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=b42549c72e6e040825b13e5d8ebf7ff63886b24d org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.2 org.opencontainers.image.created=2026-08-18T10:07:58.745010960Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=b42549c72e6e040825b13e5d8ebf7ff63886b24d org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.2
# Mon, 31 Aug 2026 19:19:42 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.2 release=1 summary=Elasticsearch description=You know, for search.
# Mon, 31 Aug 2026 19:19:42 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 31 Aug 2026 19:19:42 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:19:42 GMT
CMD ["eswrapper"]
# Mon, 31 Aug 2026 19:19:42 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4725fdb7ad9a81ecf75dd89c841f801ad98b3fd17bed210ffb13745d2e05ef24`  
		Last Modified: Mon, 31 Aug 2026 19:20:41 GMT  
		Size: 4.1 MB (4109887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44e2be310dd102a10e6b64b4d10f5d91b1eaaec4357374481ff1778f0ae88786`  
		Last Modified: Mon, 31 Aug 2026 19:20:41 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc0ff7d7b93c655e368ee74ebbe803fae4712c301f9fb746e9ca06ddf4509d6`  
		Last Modified: Mon, 31 Aug 2026 19:20:40 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9902a978b804814372ac571bce34ff8c3b40f88c57d2ad6ed3f3f06a845eb843`  
		Last Modified: Mon, 31 Aug 2026 19:20:57 GMT  
		Size: 849.7 MB (849676330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:842eb0c68a24d9f176c557c2eec6fe8a6eef61320ca9897a1d5b1fb48a02a6f8`  
		Last Modified: Mon, 31 Aug 2026 19:20:42 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:660ba02d0275a4c29518e3fa3838596c3cb254e3619684f39356b22d9c9524a3`  
		Last Modified: Mon, 31 Aug 2026 19:20:42 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b43608162cc52bba1322aeb1b58830bf05e859b76f0a49cb4648235621b333b0`  
		Last Modified: Mon, 31 Aug 2026 19:20:42 GMT  
		Size: 75.2 KB (75187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb33bad5ddd8db6a3aea06f845faea483b3c11debe7f2abb349fced58aa5914`  
		Last Modified: Mon, 31 Aug 2026 19:20:43 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.2` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:553ad91e0701b72b7d9a6f37562a11113c422bd30ee08ac698efc1c8ae6d7ee5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2475860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:263e85b39093cf4f985152b64a189c70769bf0d8c667a718ab8ba0447842337f`

```dockerfile
```

-	Layers:
	-	`sha256:d6e3f521ca3404d9f42140c09d07af20f48efe01fa0ffd31c6659ad0ebcbff71`  
		Last Modified: Mon, 31 Aug 2026 19:20:41 GMT  
		Size: 2.4 MB (2442084 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5b6e8cebb74ffa57ff7c5b670b297e097efe83f1bd77a805ce9c6cca186708e`  
		Last Modified: Mon, 31 Aug 2026 19:20:40 GMT  
		Size: 33.8 KB (33776 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.5.2` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:778f1a9f0c8eb603811c34ad2587f2a5ffabdd7f4e28ea1b270edf46cc0f81ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **739.1 MB (739084586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c372b1fddcd77f75a4a33c5218841e9963527fc028d9c2a30422473709296109`
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
# Mon, 31 Aug 2026 19:35:05 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:35:05 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Mon, 31 Aug 2026 19:36:16 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 31 Aug 2026 19:36:16 GMT
COPY /bin/tini /bin/tini # buildkit
# Mon, 31 Aug 2026 19:36:16 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 31 Aug 2026 19:36:24 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Mon, 31 Aug 2026 19:36:24 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Mon, 31 Aug 2026 19:36:24 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:36:24 GMT
ENV SHELL=/bin/bash
# Mon, 31 Aug 2026 19:36:24 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:36:24 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Mon, 31 Aug 2026 19:36:24 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Mon, 31 Aug 2026 19:36:24 GMT
LABEL org.label-schema.build-date=2026-08-18T10:07:58.745010960Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=b42549c72e6e040825b13e5d8ebf7ff63886b24d org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.2 org.opencontainers.image.created=2026-08-18T10:07:58.745010960Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=b42549c72e6e040825b13e5d8ebf7ff63886b24d org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.2
# Mon, 31 Aug 2026 19:36:24 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.2 release=1 summary=Elasticsearch description=You know, for search.
# Mon, 31 Aug 2026 19:36:24 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 31 Aug 2026 19:36:24 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:36:24 GMT
CMD ["eswrapper"]
# Mon, 31 Aug 2026 19:36:24 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:8289a871631249c9c1a3b2366de832716cd43c77864c245a1c1364a2abeb5704`  
		Last Modified: Mon, 31 Aug 2026 10:01:50 GMT  
		Size: 38.8 MB (38815996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4041ff27ac83f02aa5a17046a57669cbbebec1553eedba879ca4b6a8d1f50a12`  
		Last Modified: Mon, 31 Aug 2026 19:37:12 GMT  
		Size: 4.1 MB (4110314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37864341cc70fdd5c51c1d14ac73e9ac7a5f92bc41c1d32353b808c6fb47ec8c`  
		Last Modified: Mon, 31 Aug 2026 19:37:08 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4652b04ddf5266c05da683119bf26484cc5273ede51b7d31f11d45743c31040e`  
		Last Modified: Mon, 31 Aug 2026 19:37:11 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4322c12422d6542aacde2e610b22eef3a23c0b5126d808f40f272d4fa989dd8f`  
		Last Modified: Mon, 31 Aug 2026 19:37:27 GMT  
		Size: 696.1 MB (696069832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cc52e1783af9409719bd26af67ad9c391b5fdf7d6792b8814a1e7e9d5836251`  
		Last Modified: Mon, 31 Aug 2026 19:37:12 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d87ff8413e3d7531935b02af15f70fc4e2e3b694d7d16c3b5621c9ec78fad908`  
		Last Modified: Mon, 31 Aug 2026 19:37:13 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2172aac76baf7039c2ca5deb549468b5cc1d077339d1f3478ebc4af11b47468e`  
		Last Modified: Mon, 31 Aug 2026 19:37:13 GMT  
		Size: 74.1 KB (74102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6685560918f36977855b6c0a6cdb736ede72ed19a81cf7067e5162f204bdf771`  
		Last Modified: Mon, 31 Aug 2026 19:37:13 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.2` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:c936ab32da91d77d753c489edfb9594a898e9235170ad0dcabe9e8168facc3f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2474822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76c45a6a6620dc1e0ee2a25f8755d93cf1f7c4c437239a3422010c0f5cf7a38f`

```dockerfile
```

-	Layers:
	-	`sha256:a139feafece89c899bbda11e9f73d9e3e2a0afc5930f6d0075d86d4db29ab613`  
		Last Modified: Mon, 31 Aug 2026 19:37:12 GMT  
		Size: 2.4 MB (2440864 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c3a322b024b9cf893d18c2653074905aa4df4a558e52dc515ced9d34211cf22`  
		Last Modified: Mon, 31 Aug 2026 19:37:11 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json
