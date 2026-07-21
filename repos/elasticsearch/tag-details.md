<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:8.19.19`](#elasticsearch81919)
-	[`elasticsearch:9.3.8`](#elasticsearch938)
-	[`elasticsearch:9.4.4`](#elasticsearch944)

## `elasticsearch:8.19.19`

```console
$ docker pull elasticsearch@sha256:2af87a5d486518a448a3be2143f5f4ccf17c482bb3d2deb85dcfef9e0308fdfb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `elasticsearch:8.19.19` - linux; amd64

```console
$ docker pull elasticsearch@sha256:81638f259a534a36a353f681e46a8983b6c5650005deb3b811b033f311ba5970
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **723.5 MB (723537317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41ac10aab11faf3782b61ede7e5862275c8ccf81bfd226339e5ac37b9e97d801`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 16:49:46 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Tue, 21 Jul 2026 16:49:46 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 21 Jul 2026 16:49:46 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 21 Jul 2026 16:49:46 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 21 Jul 2026 16:51:25 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Tue, 21 Jul 2026 16:51:25 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 21 Jul 2026 16:51:25 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 16:51:25 GMT
ENV SHELL=/bin/bash
# Tue, 21 Jul 2026 16:51:26 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 21 Jul 2026 16:51:26 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 21 Jul 2026 16:51:26 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Tue, 21 Jul 2026 16:51:26 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Tue, 21 Jul 2026 16:51:26 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 21 Jul 2026 16:51:26 GMT
LABEL org.label-schema.build-date=2026-07-15T22:15:58.852563788Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=0b6bd198d583b8566336c0db61afb70b346c6882 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.19 org.opencontainers.image.created=2026-07-15T22:15:58.852563788Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=0b6bd198d583b8566336c0db61afb70b346c6882 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.19
# Tue, 21 Jul 2026 16:51:26 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 21 Jul 2026 16:51:26 GMT
CMD ["eswrapper"]
# Tue, 21 Jul 2026 16:51:26 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0cc1f8923d1615d45d15989f706641673537f0c10af4f21904dd2c5d42c7cd`  
		Last Modified: Tue, 21 Jul 2026 16:52:18 GMT  
		Size: 7.6 MB (7608507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c18c5a439a0b1ddec8d3357bb4d43ec7ffba71d90d046819f59b47d179c01557`  
		Last Modified: Tue, 21 Jul 2026 16:52:18 GMT  
		Size: 3.5 KB (3528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2222dda240b06515dc12e2897edfddd2855afe4ed05e6f7ccf0903cf85edfec7`  
		Last Modified: Tue, 21 Jul 2026 16:52:30 GMT  
		Size: 685.9 MB (685916699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:346945c99f250b1be9565aca48b117fefe6bd1b0ef2983f05f49b45a5d1f96ae`  
		Last Modified: Tue, 21 Jul 2026 16:52:18 GMT  
		Size: 9.5 KB (9534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c16f89b7e892dd9906c10c211da75294ba1b2c46e39201788f6f7a87d3f7f5e1`  
		Last Modified: Tue, 21 Jul 2026 16:52:19 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c77734ebdfff03711c1dfead378860ced8fc57aa2beae519e6548461cb3c0ea`  
		Last Modified: Tue, 21 Jul 2026 16:52:19 GMT  
		Size: 164.2 KB (164188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5f66cd62715154c8a5394d8a08dce4b2e910408bf8195eace823bbb87afbb11`  
		Last Modified: Tue, 21 Jul 2026 16:52:20 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01275806c3bbb8cc97b5f3ed651f077d2c0b2f5868d1f212c7c93f8d38fd5be1`  
		Last Modified: Tue, 21 Jul 2026 16:52:20 GMT  
		Size: 97.1 KB (97103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.19` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:f95199f4d602ed2f93f24cf21a5f52f605c69936fe9b92ca42f898261947bffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3228398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f68484d47bb99383f96f740589ab7f71846163c6d508038bf877eefb3762456`

```dockerfile
```

-	Layers:
	-	`sha256:55f1f129d5e2fdd27f575defb18a9de2bbd6a77874af9f5ad968f15c3a2d4ba2`  
		Last Modified: Tue, 21 Jul 2026 16:52:18 GMT  
		Size: 3.2 MB (3191583 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d23c3459128bbc197989e6f0c7c995bcc37503868e87055d347d8dccb04b2d30`  
		Last Modified: Tue, 21 Jul 2026 16:52:18 GMT  
		Size: 36.8 KB (36815 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.3.8`

```console
$ docker pull elasticsearch@sha256:e341e7eae25d42c5fc7926e18ed970e8f064c82d77b65d97226a0c9a095db6e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.3.8` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:38de23add277ebf84e4320b74a25859ce0660c4323611525e0612453984170ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **566.5 MB (566510903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81df57731d691c66037e348ab908ee88b6d4e242c4b4866a9e959d17d022d533`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 21 Jul 2026 01:10:52 GMT
ENV container oci
# Tue, 21 Jul 2026 01:10:53 GMT
COPY dir:91cba88ba8f66a4d62e50f78add4d1fd07a5799e60037509c9ca5a48fefaa091 in /      
# Tue, 21 Jul 2026 01:10:53 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 01:10:53 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 01:10:53 GMT
COPY dir:190349813a667505f76174069131421a998a39a32ab7f30fbe8be3d4df745463 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 01:10:53 GMT
COPY dir:190349813a667505f76174069131421a998a39a32ab7f30fbe8be3d4df745463 in /root/buildinfo/      
# Tue, 21 Jul 2026 01:10:54 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T01:10:31Z" "org.opencontainers.image.revision"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "build-date"="2026-07-21T01:10:31Z" "architecture"="aarch64" "vcs-ref"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "vcs-type"="git" "release"="1784596070"org.opencontainers.image.created=2026-07-21T01:10:31Z,org.opencontainers.image.revision=4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec
# Tue, 21 Jul 2026 17:01:29 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 21 Jul 2026 17:01:29 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 21 Jul 2026 17:01:59 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 21 Jul 2026 17:01:59 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 21 Jul 2026 17:01:59 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 21 Jul 2026 17:02:05 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 21 Jul 2026 17:02:05 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 21 Jul 2026 17:02:05 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 17:02:05 GMT
ENV SHELL=/bin/bash
# Tue, 21 Jul 2026 17:02:05 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 21 Jul 2026 17:02:05 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 21 Jul 2026 17:02:05 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 21 Jul 2026 17:02:05 GMT
LABEL org.label-schema.build-date=2026-07-15T22:14:38.667958010Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=171dd53e53c29b91f45d2d87857a3f74db48cca5 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-15T22:14:38.667958010Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=171dd53e53c29b91f45d2d87857a3f74db48cca5 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8
# Tue, 21 Jul 2026 17:02:05 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.3.8 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 21 Jul 2026 17:02:05 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 21 Jul 2026 17:02:05 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 21 Jul 2026 17:02:05 GMT
CMD ["eswrapper"]
# Tue, 21 Jul 2026 17:02:05 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:87b99ca60407b5b3044b907de710ecb00dd7222e3a38acbc4a3fc51d11d7c04e`  
		Last Modified: Tue, 21 Jul 2026 05:00:39 GMT  
		Size: 38.8 MB (38807059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caa1f27a799962e4624d54f611b692173a83a3424fdb5e925fa1514783904b4a`  
		Last Modified: Tue, 21 Jul 2026 17:02:44 GMT  
		Size: 4.1 MB (4110206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29af5d3535116644fa6c4ce2843aac58cfcbf80a6d61cadccf653afa28415426`  
		Last Modified: Tue, 21 Jul 2026 17:02:44 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adaa1bc5348afeb6476f9e3ad4f9309874872998231fb194b4707ef46e74b9c7`  
		Last Modified: Tue, 21 Jul 2026 17:02:43 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4140922101c1daacd8388ae13e971b50fc7a31a19060744f7a724b691caf2a0`  
		Last Modified: Tue, 21 Jul 2026 17:02:54 GMT  
		Size: 523.5 MB (523505189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65861e19f8c62f7cb4af4eae125c9db62053e810c9e4cf0e8a820d28f6c18829`  
		Last Modified: Tue, 21 Jul 2026 17:02:45 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9cb32d1ae5645f2bce7ffe12f7a623b81e20f4029d77cea9d7895250245399`  
		Last Modified: Tue, 21 Jul 2026 17:02:45 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40e282f3217ad7703febc9b04a2eaa2244d3e8d31b437498ca93a059d092bf17`  
		Last Modified: Tue, 21 Jul 2026 17:02:46 GMT  
		Size: 74.1 KB (74102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ae98e62390d0f04cf30571801d010fe8de8ffc15aba6a887244ca100fa7437`  
		Last Modified: Tue, 21 Jul 2026 17:02:46 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.3.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:4562b1a622532c98c1eb8f621beb3dd628f7f6d5ec35276acb16270f770f0c2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2122184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3663dae2020f7705bf3a6878dcaebdf6e03da96f31bdc8ee7739bf55174a402b`

```dockerfile
```

-	Layers:
	-	`sha256:c051778f588136e83a2a93c0bbe27127a4a43baf09867436e92dd3e58edddcd1`  
		Last Modified: Tue, 21 Jul 2026 17:02:44 GMT  
		Size: 2.1 MB (2088146 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ec54244919bdfed446c9180a9a91ee08108a29f9856337f0967852dd26a7f04`  
		Last Modified: Tue, 21 Jul 2026 17:02:44 GMT  
		Size: 34.0 KB (34038 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.4.4`

```console
$ docker pull elasticsearch@sha256:82ac0287d8ea416dbcbaab9bc012b1625da88128896c4dc6ea4690093e415f36
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.4` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:d9a1782513e1623206a7317c652f80904b227e5ac93aec970d8d6577c6c67b82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **710.8 MB (710821755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d602abe1894873b178c207f09b07ebdd7a59ad62f10aba1ff31e55cc94d2514`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 21 Jul 2026 01:10:52 GMT
ENV container oci
# Tue, 21 Jul 2026 01:10:53 GMT
COPY dir:91cba88ba8f66a4d62e50f78add4d1fd07a5799e60037509c9ca5a48fefaa091 in /      
# Tue, 21 Jul 2026 01:10:53 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 01:10:53 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 01:10:53 GMT
COPY dir:190349813a667505f76174069131421a998a39a32ab7f30fbe8be3d4df745463 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 01:10:53 GMT
COPY dir:190349813a667505f76174069131421a998a39a32ab7f30fbe8be3d4df745463 in /root/buildinfo/      
# Tue, 21 Jul 2026 01:10:54 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T01:10:31Z" "org.opencontainers.image.revision"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "build-date"="2026-07-21T01:10:31Z" "architecture"="aarch64" "vcs-ref"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "vcs-type"="git" "release"="1784596070"org.opencontainers.image.created=2026-07-21T01:10:31Z,org.opencontainers.image.revision=4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec
# Tue, 21 Jul 2026 17:01:32 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 21 Jul 2026 17:01:32 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 21 Jul 2026 17:02:09 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 21 Jul 2026 17:02:09 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 21 Jul 2026 17:02:10 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 21 Jul 2026 17:02:17 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 21 Jul 2026 17:02:17 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 21 Jul 2026 17:02:17 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 17:02:17 GMT
ENV SHELL=/bin/bash
# Tue, 21 Jul 2026 17:02:17 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 21 Jul 2026 17:02:17 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 21 Jul 2026 17:02:17 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 21 Jul 2026 17:02:17 GMT
LABEL org.label-schema.build-date=2026-07-15T22:13:42.125968334Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=77cd231096e56b56ac1d24445a9430a252622e6d org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-15T22:13:42.125968334Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=77cd231096e56b56ac1d24445a9430a252622e6d org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4
# Tue, 21 Jul 2026 17:02:17 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.4 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 21 Jul 2026 17:02:17 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 21 Jul 2026 17:02:17 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 21 Jul 2026 17:02:17 GMT
CMD ["eswrapper"]
# Tue, 21 Jul 2026 17:02:17 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:87b99ca60407b5b3044b907de710ecb00dd7222e3a38acbc4a3fc51d11d7c04e`  
		Last Modified: Tue, 21 Jul 2026 05:00:39 GMT  
		Size: 38.8 MB (38807059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdfc40086c7e6b064c14f7a61187e02e24cc3476eddc52ed76f9747270af9e7b`  
		Last Modified: Tue, 21 Jul 2026 17:03:04 GMT  
		Size: 4.1 MB (4110258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea024f2eb34658330544ee0323d448f2d5c6bdc2f44340c10a0bac0cfee9c77b`  
		Last Modified: Tue, 21 Jul 2026 17:03:03 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e826561b501c27804a85d8a6cbf662a86374a99acc68caa911972f64ce1a9e9`  
		Last Modified: Tue, 21 Jul 2026 17:03:04 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08e42116d2db184f6acd5dbff38cecc4899b952df0320ee250c76f269550c831`  
		Last Modified: Tue, 21 Jul 2026 17:03:27 GMT  
		Size: 667.8 MB (667815985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:015b40a75fe7e0fd4391483159b67e609e210147599d5ec19eb0ce40cc91a92c`  
		Last Modified: Tue, 21 Jul 2026 17:03:05 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be293463569329ea66eb4f26a6769d824dcb7994eea13832fa0818994386eb95`  
		Last Modified: Tue, 21 Jul 2026 17:03:05 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23cdb73aefc497573e63e546f6237e6f6db2b4a44d3163856a0e70a109a6706d`  
		Last Modified: Tue, 21 Jul 2026 17:03:06 GMT  
		Size: 74.1 KB (74109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e199ec388c831ad2d1573df01506ed2a69475d91e9ea8bb279b65f5f5fb70f2`  
		Last Modified: Tue, 21 Jul 2026 17:03:07 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.4` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:79f7943558a046b9215c7c5f0dd4d0c8360ce1b94994cd0cd1a07fa3757203d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e15d4a9f593784508b29270ac4ea03966a5cb6e118efc865c2d1629e5b7b06a8`

```dockerfile
```

-	Layers:
	-	`sha256:0f747cec97e9082ad7522086959403ff9c2847e031e32f061dbf82884ec4393f`  
		Last Modified: Tue, 21 Jul 2026 17:03:04 GMT  
		Size: 2.4 MB (2388667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4570f7b63e2ca77230ac2a8995581e5b4e1147581a21b765ca1cc98ea58eb63`  
		Last Modified: Tue, 21 Jul 2026 17:03:04 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json
