<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:8.19.19`](#elasticsearch81919)
-	[`elasticsearch:9.3.8`](#elasticsearch938)
-	[`elasticsearch:9.4.4`](#elasticsearch944)

## `elasticsearch:8.19.19`

```console
$ docker pull elasticsearch@sha256:7901ce73287993e0a774e9d9b75f265c1af4cda895d47a28cbdd07e965fe5574
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
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

### `elasticsearch:8.19.19` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:dc707635f02b800994ee0e19755b49abd890d69ce1d9f86ed66d6146442fe314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **571.5 MB (571464643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44b6b91bfee07001969a8d9da750379540e7efec61340ff08de05b22fa09d05f`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 17:07:06 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Tue, 21 Jul 2026 17:07:07 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 21 Jul 2026 17:07:07 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 21 Jul 2026 17:07:07 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 21 Jul 2026 17:08:06 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Tue, 21 Jul 2026 17:08:06 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 21 Jul 2026 17:08:06 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 17:08:06 GMT
ENV SHELL=/bin/bash
# Tue, 21 Jul 2026 17:08:06 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 21 Jul 2026 17:08:06 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 21 Jul 2026 17:08:06 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Tue, 21 Jul 2026 17:08:06 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Tue, 21 Jul 2026 17:08:06 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 21 Jul 2026 17:08:06 GMT
LABEL org.label-schema.build-date=2026-07-15T22:15:58.852563788Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=0b6bd198d583b8566336c0db61afb70b346c6882 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.19 org.opencontainers.image.created=2026-07-15T22:15:58.852563788Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=0b6bd198d583b8566336c0db61afb70b346c6882 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.19
# Tue, 21 Jul 2026 17:08:06 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 21 Jul 2026 17:08:06 GMT
CMD ["eswrapper"]
# Tue, 21 Jul 2026 17:08:06 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4827de8d215ea759313fa41a8b10a9ec6b36ca4a73c3d9b18e001b67eb61f69c`  
		Last Modified: Tue, 21 Jul 2026 17:08:46 GMT  
		Size: 7.6 MB (7574860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16eda7d26677ab9d81cf4f460f79adc0f5d329d2e0d8d70c3470f35be717038c`  
		Last Modified: Tue, 21 Jul 2026 17:08:46 GMT  
		Size: 3.5 KB (3529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:788193d22cf9a025c175689da937757167bf3c1ceede1da5e568fb67b4ed3933`  
		Last Modified: Tue, 21 Jul 2026 17:08:56 GMT  
		Size: 534.7 MB (534733014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da1c6a2e8b04da8247cd0ffcb6fc0cc6eef6f0a3925209b5bf8d1f0abaabf7ca`  
		Last Modified: Tue, 21 Jul 2026 17:08:46 GMT  
		Size: 9.1 KB (9105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c288b6e4ed94828edd54d230eb8482f6b081f1476e54eba236e177a01e06dc2`  
		Last Modified: Tue, 21 Jul 2026 17:08:47 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:737478f88f9033bb5de0078bd87f4f3f63de8b93dff1bc04af1e668b31780fcc`  
		Last Modified: Tue, 21 Jul 2026 17:08:48 GMT  
		Size: 160.7 KB (160696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d23a958f32b14ceb565675060ce7d2b6eb0d83402f0804e4aa17b47e015452b`  
		Last Modified: Tue, 21 Jul 2026 17:08:48 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:486a4529bab09b1077e4e21c13a6cec3ec8e630b31afc1bc872567d3a1a16f17`  
		Last Modified: Tue, 21 Jul 2026 17:08:49 GMT  
		Size: 97.1 KB (97100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.19` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:3dd4b44e2b62cdc68794b166a5d03a8c439e835c5bf0acbe6499dd8a19b9bc12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3229013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b36754fee6fd6261cc8e7ecaaf8c4246f876f25678060621e8b38a47bfbaaaa`

```dockerfile
```

-	Layers:
	-	`sha256:1f725668b47f40fed595eaf13f61ad038fa394135c8b0f26f1a3851240054f50`  
		Last Modified: Tue, 21 Jul 2026 17:08:46 GMT  
		Size: 3.2 MB (3191996 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9eb8e806829d3f6b94c2d8dd15c6d85105fee64bfd614f2e8ea0960dd8cc4cec`  
		Last Modified: Tue, 21 Jul 2026 17:08:46 GMT  
		Size: 37.0 KB (37017 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.3.8`

```console
$ docker pull elasticsearch@sha256:3077a321869076782a79685d596af1373024118cb9fc996528c583c14cf10321
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.3.8` - linux; amd64

```console
$ docker pull elasticsearch@sha256:2fd76c2a43b7788254236929be8e71f1e08b5aea67d170abc5adfcbbe5ab2912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **722.5 MB (722540669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83560d60034779af29f8a5116fc135e2d19b1b73bbba743b01a42b88b231ff37`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.openshift.expose-services=""
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 22 Jul 2026 07:34:24 GMT
ENV container oci
# Wed, 22 Jul 2026 07:34:25 GMT
COPY dir:6b16b3336a884691d82bd90e5faf7d65fad1354d2664539a143b7bcc0d24b71e in /      
# Wed, 22 Jul 2026 07:34:25 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 22 Jul 2026 07:34:25 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 07:34:25 GMT
COPY dir:3c57dcdf8d00b61e1e938fb8386fff8fc937e99ea4eadb82d9df5d9aeb4fdee1 in /usr/share/buildinfo/      
# Wed, 22 Jul 2026 07:34:25 GMT
COPY dir:3c57dcdf8d00b61e1e938fb8386fff8fc937e99ea4eadb82d9df5d9aeb4fdee1 in /root/buildinfo/      
# Wed, 22 Jul 2026 07:34:25 GMT
LABEL "org.opencontainers.image.created"="2026-07-22T07:34:05Z" "org.opencontainers.image.revision"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "build-date"="2026-07-22T07:34:05Z" "architecture"="x86_64" "vcs-ref"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "vcs-type"="git" "release"="1784705586"org.opencontainers.image.created=2026-07-22T07:34:05Z,org.opencontainers.image.revision=9932c86214d5e8b9c79570f3f4ebe16275359bc0
# Wed, 22 Jul 2026 18:28:53 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:28:53 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 22 Jul 2026 18:30:04 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 22 Jul 2026 18:30:04 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 22 Jul 2026 18:30:04 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 22 Jul 2026 18:30:14 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 22 Jul 2026 18:30:14 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 22 Jul 2026 18:30:14 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:30:14 GMT
ENV SHELL=/bin/bash
# Wed, 22 Jul 2026 18:30:14 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:30:14 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 22 Jul 2026 18:30:14 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 22 Jul 2026 18:30:14 GMT
LABEL org.label-schema.build-date=2026-07-15T22:14:38.667958010Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=171dd53e53c29b91f45d2d87857a3f74db48cca5 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-15T22:14:38.667958010Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=171dd53e53c29b91f45d2d87857a3f74db48cca5 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8
# Wed, 22 Jul 2026 18:30:14 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.3.8 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 22 Jul 2026 18:30:14 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 22 Jul 2026 18:30:14 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 22 Jul 2026 18:30:14 GMT
CMD ["eswrapper"]
# Wed, 22 Jul 2026 18:30:14 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:4e7920a6df9f698998c80db9c24d69dedc87ab71cb83d5f35c3db42281db6ec0`  
		Last Modified: Wed, 22 Jul 2026 08:43:24 GMT  
		Size: 40.7 MB (40722592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2c1a2009b62994dfee5105996a1fe64e1208b7460eb579d94e08a43806322e6`  
		Last Modified: Wed, 22 Jul 2026 18:31:07 GMT  
		Size: 4.1 MB (4109753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06061cf041cbc8f845f87df3884576ab76142818e0736593c666cbecb84748b9`  
		Last Modified: Wed, 22 Jul 2026 18:31:06 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f238361621deaaf016b3257d5519ea14d6f672b820c557e670d076a22337861c`  
		Last Modified: Wed, 22 Jul 2026 18:31:07 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815c7ac7604e6c943c1ff57a39263dd05b6c8706f56fae809d39a0e1dd5c3401`  
		Last Modified: Wed, 22 Jul 2026 18:31:19 GMT  
		Size: 677.6 MB (677618361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b34d44b5e1154459275c1d85c7a5bda7a4b7653701b5cc919bb888dc98adef98`  
		Last Modified: Wed, 22 Jul 2026 18:31:08 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fdd508d9c82688e360ba092d7838323b1bf995f9597aa91f7296589e4c8de84`  
		Last Modified: Wed, 22 Jul 2026 18:31:08 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f97fc9b226094ae9763cb3a5075b8f6a6dfe69cfe4be2b0bc2b3f186ae94d68`  
		Last Modified: Wed, 22 Jul 2026 18:31:08 GMT  
		Size: 75.2 KB (75189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8fb174a88499ec44cb18d7cb0ac444e102a89e3ab5caaba021ad60a2b774656`  
		Last Modified: Wed, 22 Jul 2026 18:31:09 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.3.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:c787e4beeaf1fd36b70ea66481416e79c04594153fb87b699dc75c382d52b8e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2123230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1fc83de5cc6254592447d44e18e66077379b9e88cd951ea0a0c98fb09179423`

```dockerfile
```

-	Layers:
	-	`sha256:1799db3843e48a28789232dea31095ea749f518cfba5e57628f2dc0c01eb25e9`  
		Last Modified: Wed, 22 Jul 2026 18:31:07 GMT  
		Size: 2.1 MB (2089374 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7eca563a0f202ead287cb974ecacd126a6dea67e7543632bcbd4b52e8e5b085e`  
		Last Modified: Wed, 22 Jul 2026 18:31:06 GMT  
		Size: 33.9 KB (33856 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.3.8` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:f61c75a4d9910e330a01e09a8cd72b2794f93a6aa96139c3dcab036b7930660f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **566.5 MB (566527508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5866b067196fcf28d39328a2902a339d350fa8b7c002608827360346b0068731`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.openshift.expose-services=""
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 22 Jul 2026 07:37:07 GMT
ENV container oci
# Wed, 22 Jul 2026 07:37:08 GMT
COPY dir:13cb9595e24a2f94b16cce79d23e558d6f0db7a9c73a3191107351f48264bcc1 in /      
# Wed, 22 Jul 2026 07:37:08 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 22 Jul 2026 07:37:08 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 07:37:08 GMT
COPY dir:094a17be797e369d330171a023f19cc40f274ac5717bef56f0a13530510171e7 in /usr/share/buildinfo/      
# Wed, 22 Jul 2026 07:37:08 GMT
COPY dir:094a17be797e369d330171a023f19cc40f274ac5717bef56f0a13530510171e7 in /root/buildinfo/      
# Wed, 22 Jul 2026 07:37:09 GMT
LABEL "org.opencontainers.image.created"="2026-07-22T07:36:45Z" "org.opencontainers.image.revision"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "build-date"="2026-07-22T07:36:45Z" "architecture"="aarch64" "vcs-ref"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "vcs-type"="git" "release"="1784705586"org.opencontainers.image.created=2026-07-22T07:36:45Z,org.opencontainers.image.revision=9932c86214d5e8b9c79570f3f4ebe16275359bc0
# Wed, 22 Jul 2026 18:53:51 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:53:51 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 22 Jul 2026 18:54:45 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 22 Jul 2026 18:54:45 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 22 Jul 2026 18:54:45 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 22 Jul 2026 18:54:51 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 22 Jul 2026 18:54:51 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 22 Jul 2026 18:54:51 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:54:51 GMT
ENV SHELL=/bin/bash
# Wed, 22 Jul 2026 18:54:51 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:54:51 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 22 Jul 2026 18:54:51 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 22 Jul 2026 18:54:51 GMT
LABEL org.label-schema.build-date=2026-07-15T22:14:38.667958010Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=171dd53e53c29b91f45d2d87857a3f74db48cca5 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-15T22:14:38.667958010Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=171dd53e53c29b91f45d2d87857a3f74db48cca5 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8
# Wed, 22 Jul 2026 18:54:51 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.3.8 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 22 Jul 2026 18:54:51 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 22 Jul 2026 18:54:51 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 22 Jul 2026 18:54:51 GMT
CMD ["eswrapper"]
# Wed, 22 Jul 2026 18:54:51 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:874d407f446b6129b274afbba9c870e8b07666e3e15e80c2fdb80ce6e0fe8f97`  
		Last Modified: Wed, 22 Jul 2026 08:43:24 GMT  
		Size: 38.8 MB (38824182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d634c1399fcaf2f9613ad7e0072a9ca3e1866561f0e99782bc24bddacc2af0`  
		Last Modified: Wed, 22 Jul 2026 18:55:29 GMT  
		Size: 4.1 MB (4109837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebbf3403fa35587fc9eb4c98b15d6bbbcb21f1230d86230fa75093c7c9674276`  
		Last Modified: Wed, 22 Jul 2026 18:55:28 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004bc2dfa065a2408ec3e725ab4ce491f2e7bad7122f22c4e46dabb852dc8824`  
		Last Modified: Wed, 22 Jul 2026 18:55:28 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f0f73ede4768245929844bb91acd5a061614acbb7ca27985ca235ee8e3dc022`  
		Last Modified: Wed, 22 Jul 2026 18:55:38 GMT  
		Size: 523.5 MB (523505041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce8d26184e9d3baea787ac203c3702b50731acac4915de5c4bd4644e38507c40`  
		Last Modified: Wed, 22 Jul 2026 18:55:30 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38b965b2193a57668d6a3e14ca2eae7b796d4fe4f84174c7bd8584484fbb6284`  
		Last Modified: Wed, 22 Jul 2026 18:55:30 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c899743a5985a754cc6bd2fc20faa7e55936cfaa01a05fadb82141faef8e308e`  
		Last Modified: Wed, 22 Jul 2026 18:55:30 GMT  
		Size: 74.1 KB (74107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0eec1219762644878248bc067e4a56306f4ae504ddd2bc210b7666e48281503`  
		Last Modified: Wed, 22 Jul 2026 18:55:31 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.3.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:25d83bd6af12629e9fa26a53b2faffadb7b5a7ab9a298dba05733ee97cf85b9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2122191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f937b06e0cb0e8ac60a789565c8bba269ddd6d963e9766000f9fb746b11bc7ba`

```dockerfile
```

-	Layers:
	-	`sha256:bbfa7fce64b598a33203f4d64616c5b994c695baf0929e1d00bb1950bb53fa5a`  
		Last Modified: Wed, 22 Jul 2026 18:55:29 GMT  
		Size: 2.1 MB (2088154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bf9022757017f74e5ae1446dd06e15afd54f49fb1a5d55e7aa5a45f98c341da`  
		Last Modified: Wed, 22 Jul 2026 18:55:28 GMT  
		Size: 34.0 KB (34037 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.4.4`

```console
$ docker pull elasticsearch@sha256:ff25869c2b9f02af7b7297f188ad583772134f01ec256fdc9234e2492358bebc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.4` - linux; amd64

```console
$ docker pull elasticsearch@sha256:598470e50f58df2e31863a45b99b27005c2dfd2300971e81d54268bc5ec49a7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **866.3 MB (866264237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62f8b05ecbacec212258c1818912e85875f227ab31b144ad08da7b5861bc792a`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.openshift.expose-services=""
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 22 Jul 2026 07:34:24 GMT
ENV container oci
# Wed, 22 Jul 2026 07:34:25 GMT
COPY dir:6b16b3336a884691d82bd90e5faf7d65fad1354d2664539a143b7bcc0d24b71e in /      
# Wed, 22 Jul 2026 07:34:25 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 22 Jul 2026 07:34:25 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 07:34:25 GMT
COPY dir:3c57dcdf8d00b61e1e938fb8386fff8fc937e99ea4eadb82d9df5d9aeb4fdee1 in /usr/share/buildinfo/      
# Wed, 22 Jul 2026 07:34:25 GMT
COPY dir:3c57dcdf8d00b61e1e938fb8386fff8fc937e99ea4eadb82d9df5d9aeb4fdee1 in /root/buildinfo/      
# Wed, 22 Jul 2026 07:34:25 GMT
LABEL "org.opencontainers.image.created"="2026-07-22T07:34:05Z" "org.opencontainers.image.revision"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "build-date"="2026-07-22T07:34:05Z" "architecture"="x86_64" "vcs-ref"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "vcs-type"="git" "release"="1784705586"org.opencontainers.image.created=2026-07-22T07:34:05Z,org.opencontainers.image.revision=9932c86214d5e8b9c79570f3f4ebe16275359bc0
# Wed, 22 Jul 2026 18:28:53 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:28:53 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 22 Jul 2026 18:30:22 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 22 Jul 2026 18:30:22 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 22 Jul 2026 18:30:23 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 22 Jul 2026 18:30:33 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 22 Jul 2026 18:30:34 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 22 Jul 2026 18:30:34 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:30:34 GMT
ENV SHELL=/bin/bash
# Wed, 22 Jul 2026 18:30:34 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:30:34 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 22 Jul 2026 18:30:34 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 22 Jul 2026 18:30:34 GMT
LABEL org.label-schema.build-date=2026-07-15T22:13:42.125968334Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=77cd231096e56b56ac1d24445a9430a252622e6d org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-15T22:13:42.125968334Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=77cd231096e56b56ac1d24445a9430a252622e6d org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4
# Wed, 22 Jul 2026 18:30:34 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.4 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 22 Jul 2026 18:30:34 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 22 Jul 2026 18:30:34 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 22 Jul 2026 18:30:34 GMT
CMD ["eswrapper"]
# Wed, 22 Jul 2026 18:30:34 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:4e7920a6df9f698998c80db9c24d69dedc87ab71cb83d5f35c3db42281db6ec0`  
		Last Modified: Wed, 22 Jul 2026 08:43:24 GMT  
		Size: 40.7 MB (40722592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0964b212bcde6b59bba5128c716b6ca740d72851b1bceffc5ce6e8a3fb8d94a`  
		Last Modified: Wed, 22 Jul 2026 18:31:30 GMT  
		Size: 4.1 MB (4109739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06061cf041cbc8f845f87df3884576ab76142818e0736593c666cbecb84748b9`  
		Last Modified: Wed, 22 Jul 2026 18:31:06 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c8dc4a3d53273d6f64f50303fa67aa00cd0529cf49d1c0fd22273ea118a060`  
		Last Modified: Wed, 22 Jul 2026 18:31:30 GMT  
		Size: 9.5 KB (9533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070bfbf3f6106fe8cbaf79f54c86dbbf87f9bc48e8aee25bf55d91bcefbb462e`  
		Last Modified: Wed, 22 Jul 2026 18:31:46 GMT  
		Size: 821.3 MB (821341946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ef790004cd9d15ed248a5e0f59328c3c47c111a5e9043d5887b5dce84910a42`  
		Last Modified: Wed, 22 Jul 2026 18:31:30 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b255d2ca31fe89b54d457b25078d1adc78e0f6a2542477695c4eddf49c49ebe`  
		Last Modified: Wed, 22 Jul 2026 18:31:31 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c0e6092c3cdaf2918c9f29392ddafd9a3eb453a1efcb76ebc9f25307c35058`  
		Last Modified: Wed, 22 Jul 2026 18:31:31 GMT  
		Size: 75.2 KB (75184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a12b8ee8777478393c08bd0cf2b855da505d2e40da38cd92be3be0f16f466bfb`  
		Last Modified: Wed, 22 Jul 2026 18:31:32 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.4` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:60b19bea44471e53a0ae2336bee07e72fea558d75bc8e99f3060f9aacab76cff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2423671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44d7fe64eaad13dc64cbde8acc9e179878d065736fe3a796e72b24e464e40645`

```dockerfile
```

-	Layers:
	-	`sha256:091f24120b658ddd11d1192992819b660270bd967ba2dbe5911cf4eafd49d4cc`  
		Last Modified: Wed, 22 Jul 2026 18:31:30 GMT  
		Size: 2.4 MB (2389895 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93cf1ddecb021422c3fad5bb8f51066e9f014af8ceaa2e526a071a80b96b0c3d`  
		Last Modified: Wed, 22 Jul 2026 18:31:30 GMT  
		Size: 33.8 KB (33776 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.4` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:b13065f94058aaccc141e6f27289608516b374cd6d03b8e249d6dd0d93dbd2ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **710.8 MB (710838505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e8d78df6eabd87252e18570eb0dd383703179eafbfcb600c7dfdc2870cfbbb5`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.openshift.expose-services=""
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 22 Jul 2026 07:37:07 GMT
ENV container oci
# Wed, 22 Jul 2026 07:37:08 GMT
COPY dir:13cb9595e24a2f94b16cce79d23e558d6f0db7a9c73a3191107351f48264bcc1 in /      
# Wed, 22 Jul 2026 07:37:08 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 22 Jul 2026 07:37:08 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 07:37:08 GMT
COPY dir:094a17be797e369d330171a023f19cc40f274ac5717bef56f0a13530510171e7 in /usr/share/buildinfo/      
# Wed, 22 Jul 2026 07:37:08 GMT
COPY dir:094a17be797e369d330171a023f19cc40f274ac5717bef56f0a13530510171e7 in /root/buildinfo/      
# Wed, 22 Jul 2026 07:37:09 GMT
LABEL "org.opencontainers.image.created"="2026-07-22T07:36:45Z" "org.opencontainers.image.revision"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "build-date"="2026-07-22T07:36:45Z" "architecture"="aarch64" "vcs-ref"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "vcs-type"="git" "release"="1784705586"org.opencontainers.image.created=2026-07-22T07:36:45Z,org.opencontainers.image.revision=9932c86214d5e8b9c79570f3f4ebe16275359bc0
# Wed, 22 Jul 2026 18:53:52 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:53:52 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 22 Jul 2026 18:54:59 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 22 Jul 2026 18:54:59 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 22 Jul 2026 18:54:59 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 22 Jul 2026 18:55:06 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 22 Jul 2026 18:55:06 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 22 Jul 2026 18:55:06 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:55:06 GMT
ENV SHELL=/bin/bash
# Wed, 22 Jul 2026 18:55:06 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:55:06 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 22 Jul 2026 18:55:06 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 22 Jul 2026 18:55:06 GMT
LABEL org.label-schema.build-date=2026-07-15T22:13:42.125968334Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=77cd231096e56b56ac1d24445a9430a252622e6d org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-15T22:13:42.125968334Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=77cd231096e56b56ac1d24445a9430a252622e6d org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4
# Wed, 22 Jul 2026 18:55:06 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.4 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 22 Jul 2026 18:55:07 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 22 Jul 2026 18:55:07 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 22 Jul 2026 18:55:07 GMT
CMD ["eswrapper"]
# Wed, 22 Jul 2026 18:55:07 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:874d407f446b6129b274afbba9c870e8b07666e3e15e80c2fdb80ce6e0fe8f97`  
		Last Modified: Wed, 22 Jul 2026 08:43:24 GMT  
		Size: 38.8 MB (38824182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:732f6479eeabfaae2f7aa47e1fabeb7170aec312392d6a59d2ac0f128f326fa7`  
		Last Modified: Wed, 22 Jul 2026 18:55:53 GMT  
		Size: 4.1 MB (4109830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcf1d3b212bc0114aadea862860982a2c8d6e8c8719a605b483602d4a9447fbd`  
		Last Modified: Wed, 22 Jul 2026 18:55:53 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b78ceafecfb453fc42863974990a6878ef63990ff986ec71bdf4ce1d73191aa`  
		Last Modified: Wed, 22 Jul 2026 18:55:53 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3703b15534b719605696f284859e8a93393309f7896eb98057b5feb3421bbf2d`  
		Last Modified: Wed, 22 Jul 2026 18:56:06 GMT  
		Size: 667.8 MB (667816052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d700977aa44778af060c50df1e3a0c6d79e0bb8068ac06984429855d55fa53`  
		Last Modified: Wed, 22 Jul 2026 18:55:54 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9711a87a1b0fee452a4e4f4aa0ccafe1b142d787d6c43be6697de2a2a77ecd3`  
		Last Modified: Wed, 22 Jul 2026 18:55:55 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5c70a27e2892102eabe9273709ae07d4e02639bac4dbb9dbdc761805adb6489`  
		Last Modified: Wed, 22 Jul 2026 18:55:55 GMT  
		Size: 74.1 KB (74100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7edef22adc83b1db50325fbcb423f4f59c5350d896b91c3bebc2efe98c8e1c45`  
		Last Modified: Wed, 22 Jul 2026 18:55:56 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.4` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:e84830c7e14b5e115993515c53379604ff49977c9a3b2ab5f9e3d0872c0625cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9858f2108a8f66f66bae66032c746243c003ff253810e38df81f43dca7a705bf`

```dockerfile
```

-	Layers:
	-	`sha256:ee728d1c4f6ae4a5040bcf77c8d5ceee01082841e3f845e7bfa3f2ef18d82fe8`  
		Last Modified: Wed, 22 Jul 2026 18:55:53 GMT  
		Size: 2.4 MB (2388675 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90c18b9a9ac2694b085216377d6a9b46a8471095594779e45a199d60427ccee9`  
		Last Modified: Wed, 22 Jul 2026 18:55:53 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json
