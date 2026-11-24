<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:8.19.25`](#elasticsearch81925)
-	[`elasticsearch:9.4.8`](#elasticsearch948)
-	[`elasticsearch:9.5.5`](#elasticsearch955)

## `elasticsearch:8.19.25`

```console
$ docker pull elasticsearch@sha256:d609f45c5b8ac4f97090d4029520a256581c8f0b70b6cc28aa82255aa98b9bec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:8.19.25` - linux; amd64

```console
$ docker pull elasticsearch@sha256:f886f627a4522f6fbf9d42c20627599769c9cf9a45383180546418743f9908ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **724.9 MB (724885460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e348e23415add708aeaa1a508586f9b20f6271d4daa11f4ed83219207dd2bdc5`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:17:17 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Fri, 20 Nov 2026 03:17:17 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Fri, 20 Nov 2026 03:17:17 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 20 Nov 2026 03:17:17 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 20 Nov 2026 03:18:03 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Fri, 20 Nov 2026 03:18:03 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Fri, 20 Nov 2026 03:18:03 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:18:03 GMT
ENV SHELL=/bin/bash
# Fri, 20 Nov 2026 03:18:03 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:18:03 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Fri, 20 Nov 2026 03:18:03 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Fri, 20 Nov 2026 03:18:03 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Fri, 20 Nov 2026 03:18:03 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Fri, 20 Nov 2026 03:18:03 GMT
LABEL org.label-schema.build-date=2026-11-05T11:37:05.670595677Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=104cb8651ae63460f8147c582dcdbf5c38451712 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.25 org.opencontainers.image.created=2026-11-05T11:37:05.670595677Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=104cb8651ae63460f8147c582dcdbf5c38451712 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.25
# Fri, 20 Nov 2026 03:18:03 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:18:03 GMT
CMD ["eswrapper"]
# Fri, 20 Nov 2026 03:18:03 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b486a86f6d4f861466ee9764faf27d0d15a0a08cb91da3a386a9149243e85557`  
		Last Modified: Fri, 20 Nov 2026 03:18:58 GMT  
		Size: 11.2 MB (11237509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae5cad08d8e6501fb71969cbab86403f24eb784c0086f124032a8c6b7fbccd4`  
		Last Modified: Fri, 20 Nov 2026 03:18:58 GMT  
		Size: 3.5 KB (3530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638a4024a9ad1d6819fdeb18bf3c4e206e0c1b04c780b51e9979ab9db1a5d93d`  
		Last Modified: Fri, 20 Nov 2026 03:19:09 GMT  
		Size: 683.6 MB (683578740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f59fa9a0780a0fb0236ce514137302c4750de8f13ddf23eb102f57c25b0e3c4`  
		Last Modified: Fri, 20 Nov 2026 03:18:58 GMT  
		Size: 9.5 KB (9533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f5f8b2226832026cded8198197054e5ee857d0a39708623e541d873fd9b79b1`  
		Last Modified: Fri, 20 Nov 2026 03:18:59 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb4889ebf48ec81010088a08f7bb446655c774dd8504cf49e81291ced7665f01`  
		Last Modified: Fri, 20 Nov 2026 03:18:59 GMT  
		Size: 164.2 KB (164194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e50adcbc97e5977950c0e7405e1c5f2cd1b20d31dda924bd094aae924fe84c5`  
		Last Modified: Fri, 20 Nov 2026 03:19:00 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9495d2078aaf875be2978319118ffe9b5ed8735309423936b67c696e566dc3`  
		Last Modified: Fri, 20 Nov 2026 03:19:00 GMT  
		Size: 96.5 KB (96501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.25` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:03c669f82a195129d0c14c8f6171b6e8771d13ed0ac3ab6d9c5a8f82cfbf1d49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3223800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8c38e1be1ffcca14ad25207ba2ffdb0baea5c84d59d8ec9b44fe0cfdb9c657b`

```dockerfile
```

-	Layers:
	-	`sha256:a992de931be4b93aed5b9bd62ce2e03161bf1f3e1f5b55f3b866538dafb72fd8`  
		Last Modified: Fri, 20 Nov 2026 03:18:58 GMT  
		Size: 3.2 MB (3186976 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e4df9aecfae3d309fcef130e2f27d03622ac1c55ec9ccef33d118de9a41b9b8`  
		Last Modified: Fri, 20 Nov 2026 03:18:58 GMT  
		Size: 36.8 KB (36824 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:8.19.25` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:a5541fba096928ac19f8703442c04f6c674af70d2c1f106d9b9b93d4dbcb65cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **572.7 MB (572706975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b77d8c00a468e56a019765cc04c1bc37fff9bcc5746be080fa5980e9639355a`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:17:58 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Fri, 20 Nov 2026 03:17:58 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Fri, 20 Nov 2026 03:17:58 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 20 Nov 2026 03:17:58 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 20 Nov 2026 03:18:26 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Fri, 20 Nov 2026 03:18:26 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Fri, 20 Nov 2026 03:18:26 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:18:26 GMT
ENV SHELL=/bin/bash
# Fri, 20 Nov 2026 03:18:26 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:18:26 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Fri, 20 Nov 2026 03:18:26 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Fri, 20 Nov 2026 03:18:26 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Fri, 20 Nov 2026 03:18:26 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Fri, 20 Nov 2026 03:18:26 GMT
LABEL org.label-schema.build-date=2026-11-05T11:37:05.670595677Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=104cb8651ae63460f8147c582dcdbf5c38451712 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.25 org.opencontainers.image.created=2026-11-05T11:37:05.670595677Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=104cb8651ae63460f8147c582dcdbf5c38451712 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.25
# Fri, 20 Nov 2026 03:18:26 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:18:26 GMT
CMD ["eswrapper"]
# Fri, 20 Nov 2026 03:18:26 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e06128d1bc04dc157c6211e001b9094de7a479778adacb5ccb1b0794e0fbe308`  
		Last Modified: Fri, 20 Nov 2026 03:19:06 GMT  
		Size: 11.0 MB (11004130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b689cd5bddb9191396b72f23cbc969b25f6cd307421f57e8be0215362a259ffa`  
		Last Modified: Fri, 20 Nov 2026 03:19:05 GMT  
		Size: 3.5 KB (3529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3a1d0be8a8769501cad09cb380b64c7cf7150ffb946599de771266f8c69d45d`  
		Last Modified: Fri, 20 Nov 2026 03:19:15 GMT  
		Size: 532.5 MB (532465544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e2399ade2b9c3d1db50e1f05090b97ac832a8f6f7741299fa791cbde9b335ae`  
		Last Modified: Fri, 20 Nov 2026 03:19:05 GMT  
		Size: 9.1 KB (9106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4928afe6f35b4dfa19be09164ad4d4a62cfd17d19317d53af8996e17aad78ef8`  
		Last Modified: Fri, 20 Nov 2026 03:19:06 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cbe69dbccc1bcea8a6ab7c02967c0f2f7eda9b726063050c52a6d9396d173d1`  
		Last Modified: Fri, 20 Nov 2026 03:19:07 GMT  
		Size: 160.7 KB (160692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4be5ed2d6585a3ce4b75c37651c05618f12f5d3bc74930f6860b7b9d880479`  
		Last Modified: Fri, 20 Nov 2026 03:19:07 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f76ff45de74842f4243b894fae95a96ee58940d3d49a55b2160d4e63485356e8`  
		Last Modified: Fri, 20 Nov 2026 03:19:08 GMT  
		Size: 96.5 KB (96499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.25` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:dfb8eb84e8d07d460c61f72e0e379e844f51b6641424b70d8529ac6aec60e14b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3224416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbbdaed9de06dc7c6203ab569e259ee33781268b939abe5cfd632d0d3df0e228`

```dockerfile
```

-	Layers:
	-	`sha256:e9f51e7622a58c7e18c831728b214b6d8a8bcb6563817c0af5a8948276151626`  
		Last Modified: Fri, 20 Nov 2026 03:19:06 GMT  
		Size: 3.2 MB (3187389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:064ff1241a3f0b21f7e82ce950a465afed95fca8d1c477046b392d453fd422a1`  
		Last Modified: Fri, 20 Nov 2026 03:19:05 GMT  
		Size: 37.0 KB (37027 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.4.8`

```console
$ docker pull elasticsearch@sha256:7d23da0662fd93355ac005abaca0e128ed8ed64ed92fd80cc5b3da6d5fcdc5f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.8` - linux; amd64

```console
$ docker pull elasticsearch@sha256:eb1071d3936281cd9a4c2fdd43e4244a3fb7d313d419ad27bc038c364e441233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **869.2 MB (869247963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34b89589d655ae4abf03696f74bcb4354760ed0cb785057347534c6f84e79def`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:11:03 GMT
ENV container oci
# Fri, 20 Nov 2026 18:11:03 GMT
COPY dir:5ceae98eafdeee79793af167e1b53d2c048d524a5506bb0c01569c4bbeaef4f8 in /      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:11:04 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /root/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:10:41Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:10:41Z" "architecture"="x86_64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:10:41Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:09:02 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:09:02 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Mon, 23 Nov 2026 22:09:35 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 23 Nov 2026 22:09:35 GMT
COPY /bin/tini /bin/tini # buildkit
# Mon, 23 Nov 2026 22:09:35 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 23 Nov 2026 22:09:46 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Mon, 23 Nov 2026 22:09:46 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Mon, 23 Nov 2026 22:09:46 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:09:46 GMT
ENV SHELL=/bin/bash
# Mon, 23 Nov 2026 22:09:46 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:09:46 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Mon, 23 Nov 2026 22:09:46 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Mon, 23 Nov 2026 22:09:46 GMT
LABEL org.label-schema.build-date=2026-10-01T01:07:34.887571291Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c042abbb0eaaaa61b49beef21d517468861a4db2 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-10-01T01:07:34.887571291Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c042abbb0eaaaa61b49beef21d517468861a4db2 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Mon, 23 Nov 2026 22:09:46 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Elasticsearch description=You know, for search.
# Mon, 23 Nov 2026 22:09:47 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 23 Nov 2026 22:09:47 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Mon, 23 Nov 2026 22:09:47 GMT
CMD ["eswrapper"]
# Mon, 23 Nov 2026 22:09:47 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:42dd82cfea990337e85629f4800f64d42e5fca052db254cd3386d99051476958`  
		Last Modified: Fri, 20 Nov 2026 19:55:30 GMT  
		Size: 40.6 MB (40646846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8ef0e16b359c3cdc449ec31477aef066a5bd7e04569abfffdb425e505ee3f1c`  
		Last Modified: Mon, 23 Nov 2026 22:10:41 GMT  
		Size: 4.4 MB (4387748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0113b12f837164d450ba2323f56b688fa3d0de4a6cad471a2b15dab6088d926f`  
		Last Modified: Mon, 23 Nov 2026 22:10:41 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b69db083720f111ba69347c36509c43d70f74b24c7fb4c9b4094ca4d6d54891`  
		Last Modified: Mon, 23 Nov 2026 22:10:40 GMT  
		Size: 9.5 KB (9533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0f4d9b24fcd9b2a7213a709de2d3d34d7b6b317294aeec38538d944bf6c9914`  
		Last Modified: Mon, 23 Nov 2026 22:10:57 GMT  
		Size: 824.1 MB (824123424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1bc1f12bd0dbbd261c69470f2d972ca285e492e4c5eb9cef24b7499d6a0c36`  
		Last Modified: Mon, 23 Nov 2026 22:10:42 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc042ec7a66a65958160a1b444ec72ac294673afe798757cfd106f6bc49f1c63`  
		Last Modified: Mon, 23 Nov 2026 22:10:42 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5211956de616d13a738505dc49277dc801fe5b31580258ca14d78ff17b9b5b8`  
		Last Modified: Mon, 23 Nov 2026 22:10:42 GMT  
		Size: 75.2 KB (75168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd8cf9c5f36b522baf8861e7a57ee55a385053595c5b603bf1158e590b26be3d`  
		Last Modified: Mon, 23 Nov 2026 22:10:43 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:3e4cfcb340129d858f2c755fcc550a2d6bcc9b14b73e1f5eaf852f4b773700d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2401635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:586eba1000fd3dd600fd1319b7cc93b8dd574d7b8896e2af5b5e4bee86d629e5`

```dockerfile
```

-	Layers:
	-	`sha256:ddf79516fca1bc39462b9a9de2686fcf47e47096952f3e69aac1fc988ef30e68`  
		Last Modified: Mon, 23 Nov 2026 22:10:41 GMT  
		Size: 2.4 MB (2367851 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92a77c6fdbc6dc0133c2694c3485e0e58779efa25e135becc92f4272699a9d2d`  
		Last Modified: Mon, 23 Nov 2026 22:10:40 GMT  
		Size: 33.8 KB (33784 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.8` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:573ff4acb514e0c5714d867f7e00cf97a7b7a04dbc42aa34f50f72576a07ff4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.8 MB (713822027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6beecdaf0d79a14a4aa6ffd9a3d166231b3c1dc4216cca6f6ba534a18add0b`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:12:47 GMT
ENV container oci
# Fri, 20 Nov 2026 18:12:49 GMT
COPY dir:2777349c454497d0bc88142806b0acc7931a2a02082de3b6e563fd8f4b29edfa in /      
# Fri, 20 Nov 2026 18:12:49 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:12:49 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:12:49 GMT
COPY dir:d1ad60195b09061439df8466db67c1762e03297f9d39d2253d60653440d2091b in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:12:50 GMT
COPY dir:d1ad60195b09061439df8466db67c1762e03297f9d39d2253d60653440d2091b in /root/buildinfo/      
# Fri, 20 Nov 2026 18:12:50 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:12:15Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:12:15Z" "architecture"="aarch64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:12:15Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:07:38 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:07:39 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Mon, 23 Nov 2026 22:08:11 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 23 Nov 2026 22:08:11 GMT
COPY /bin/tini /bin/tini # buildkit
# Mon, 23 Nov 2026 22:08:11 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 23 Nov 2026 22:08:18 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Mon, 23 Nov 2026 22:08:19 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Mon, 23 Nov 2026 22:08:19 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:08:19 GMT
ENV SHELL=/bin/bash
# Mon, 23 Nov 2026 22:08:19 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:08:19 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Mon, 23 Nov 2026 22:08:19 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Mon, 23 Nov 2026 22:08:19 GMT
LABEL org.label-schema.build-date=2026-10-01T01:07:34.887571291Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c042abbb0eaaaa61b49beef21d517468861a4db2 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-10-01T01:07:34.887571291Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c042abbb0eaaaa61b49beef21d517468861a4db2 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Mon, 23 Nov 2026 22:08:19 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Elasticsearch description=You know, for search.
# Mon, 23 Nov 2026 22:08:19 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 23 Nov 2026 22:08:19 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Mon, 23 Nov 2026 22:08:19 GMT
CMD ["eswrapper"]
# Mon, 23 Nov 2026 22:08:19 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:aba77be659b3ca4c2aca19e9a0e50914427b3b809b11dc864d16e2377d40e17a`  
		Last Modified: Fri, 20 Nov 2026 19:55:56 GMT  
		Size: 38.7 MB (38704070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a789a4535db53b291c4763817b924d0b06474ac89a0f978a9883d8dd8232753`  
		Last Modified: Mon, 23 Nov 2026 22:09:05 GMT  
		Size: 4.4 MB (4386553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf16611e89d8ae241ac9e23a2f5aeee88bcb39f68e78f08ede89d0483bfab1d`  
		Last Modified: Mon, 23 Nov 2026 22:09:04 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1497a8827d403bcbf8b50fc84136f380e8ac653e7124f62b1e25e134d35d8639`  
		Last Modified: Mon, 23 Nov 2026 22:09:04 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4305c48c741a29d3e3982b7adc2bcbbeb5ccf229f0632dc9747eb24c4925363`  
		Last Modified: Mon, 23 Nov 2026 22:09:16 GMT  
		Size: 670.6 MB (670642948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50574d314f4579adafc30575d30e76fb0e736ecae8b205c19edfe36bc422955a`  
		Last Modified: Mon, 23 Nov 2026 22:09:05 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:886f91e3c6ef3327abd7289dae66338b3a68d9fccbaaf13a9c9d8b966a85eaa0`  
		Last Modified: Mon, 23 Nov 2026 22:09:06 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a6ec318c51442443a68b6a5b302ba75a43a9c3c30896284116d97cb78f787fa`  
		Last Modified: Mon, 23 Nov 2026 22:09:06 GMT  
		Size: 74.1 KB (74105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd26b3ba70d63b8ab614aeeda5687cf5b344c357f14e90bc44df70ed81e71273`  
		Last Modified: Mon, 23 Nov 2026 22:09:07 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:48e8baa9ebb9c249f1e3d6684017e109f3299aae23b631ee61885e630b61b592
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2400597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:336d0d565213ae9a692cac103b042418686c46142fe6f9b2ea64b1475e2332b2`

```dockerfile
```

-	Layers:
	-	`sha256:9d784a5c50a8ea537fa832af09e6274236bf3b4acbae944dc55e671b31e66025`  
		Last Modified: Mon, 23 Nov 2026 22:09:04 GMT  
		Size: 2.4 MB (2366631 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:281610089593f8c855cd7b966af152d0bce47e4ebdfa5aa997e63d18f4fe4bbb`  
		Last Modified: Mon, 23 Nov 2026 22:09:04 GMT  
		Size: 34.0 KB (33966 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.5.5`

```console
$ docker pull elasticsearch@sha256:8baa90f33c54cbe3c964401d8263c696e7ce2f2a74b12143d7e9e51d5e931168
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.5.5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:e56ef982910cba7679dc6fbb15487b859d79b5b41f1bdd20ad11598beee08d2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **895.7 MB (895748355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05409aa6d698d69df923e31cb6f253c593820d6706b8b67bd12ef4f618013c4c`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:11:03 GMT
ENV container oci
# Fri, 20 Nov 2026 18:11:03 GMT
COPY dir:5ceae98eafdeee79793af167e1b53d2c048d524a5506bb0c01569c4bbeaef4f8 in /      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:11:04 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /root/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:10:41Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:10:41Z" "architecture"="x86_64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:10:41Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:09:03 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:09:04 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Mon, 23 Nov 2026 22:10:30 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 23 Nov 2026 22:10:30 GMT
COPY /bin/tini /bin/tini # buildkit
# Mon, 23 Nov 2026 22:10:30 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 23 Nov 2026 22:10:41 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Mon, 23 Nov 2026 22:10:41 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Mon, 23 Nov 2026 22:10:41 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:10:41 GMT
ENV SHELL=/bin/bash
# Mon, 23 Nov 2026 22:10:41 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:10:41 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Mon, 23 Nov 2026 22:10:41 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Mon, 23 Nov 2026 22:10:41 GMT
LABEL org.label-schema.build-date=2026-09-30T22:12:03.984586187Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=48acba663b09e70b115dd879329141506c377890 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T22:12:03.984586187Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=48acba663b09e70b115dd879329141506c377890 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Mon, 23 Nov 2026 22:10:41 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Elasticsearch description=You know, for search.
# Mon, 23 Nov 2026 22:10:41 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 23 Nov 2026 22:10:41 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Mon, 23 Nov 2026 22:10:41 GMT
CMD ["eswrapper"]
# Mon, 23 Nov 2026 22:10:41 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:42dd82cfea990337e85629f4800f64d42e5fca052db254cd3386d99051476958`  
		Last Modified: Fri, 20 Nov 2026 19:55:30 GMT  
		Size: 40.6 MB (40646846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2775c5cad9c012902190f78f2b0a3c3f457d4e479d994ecb4e471f875d5e1b`  
		Last Modified: Mon, 23 Nov 2026 22:11:46 GMT  
		Size: 4.4 MB (4387750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef4f12cbd2d4c8321411fb0afc64c6cbff457065de1093666dd6fda6629bb44f`  
		Last Modified: Mon, 23 Nov 2026 22:11:46 GMT  
		Size: 1.5 KB (1540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:653498e4c17695e35490e57a457a73575a16570a56d7369c81c6c974116bb5a8`  
		Last Modified: Mon, 23 Nov 2026 22:11:46 GMT  
		Size: 9.5 KB (9533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92028a632b05adf746cbbcc90068ce342fc21f7633ea9b7a575b41efe7011993`  
		Last Modified: Mon, 23 Nov 2026 22:12:01 GMT  
		Size: 850.6 MB (850623808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a9e12ce463ae06204a8bbd5e9735c5cb9ee9911ce13cf0bb04a0bb19b9cc5f1`  
		Last Modified: Mon, 23 Nov 2026 22:11:47 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf46067b03e45560ee1d0dab7909df8f9327b42d3b40e1fb6836d95a28bf6d95`  
		Last Modified: Mon, 23 Nov 2026 22:11:47 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acf6739b714dad9645201c333307883ba66eaf1bd9960fc9c39c364673c9506d`  
		Last Modified: Mon, 23 Nov 2026 22:11:47 GMT  
		Size: 75.2 KB (75164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb92df4281c48812232047cc5515d6e4e7e34b9053641c88b89d8be1f1fb6b7`  
		Last Modified: Mon, 23 Nov 2026 22:11:48 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:f878e400d73186924d068d5861a6b193172e6e5715190fafcb9551c1839a12b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2452715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a2471b9c4ce45025ae727013238e0a5bbbec8f62a2989d874ceb65ccafbf5e`

```dockerfile
```

-	Layers:
	-	`sha256:9370930b6ad758cc17a8a5fb4e595cbb559f688b8e1dedc7d96a1130b01fc05b`  
		Last Modified: Mon, 23 Nov 2026 22:11:46 GMT  
		Size: 2.4 MB (2418932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c067a24a4d1f2448794c50bbd5433d86bfafd284f5f76378cb9cd5c94d246ba6`  
		Last Modified: Mon, 23 Nov 2026 22:11:46 GMT  
		Size: 33.8 KB (33783 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.5.5` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:024d062e9730445c7fb7c02c9e751a40236f312a7e85661f80a1ef65287605d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **740.3 MB (740270828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a9d7dd30f29c497d70fb3b425cd0719289e9d7427cf6f965f24be77a13c86d9`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:12:47 GMT
ENV container oci
# Fri, 20 Nov 2026 18:12:49 GMT
COPY dir:2777349c454497d0bc88142806b0acc7931a2a02082de3b6e563fd8f4b29edfa in /      
# Fri, 20 Nov 2026 18:12:49 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:12:49 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:12:49 GMT
COPY dir:d1ad60195b09061439df8466db67c1762e03297f9d39d2253d60653440d2091b in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:12:50 GMT
COPY dir:d1ad60195b09061439df8466db67c1762e03297f9d39d2253d60653440d2091b in /root/buildinfo/      
# Fri, 20 Nov 2026 18:12:50 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:12:15Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:12:15Z" "architecture"="aarch64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:12:15Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:07:38 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:07:38 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Mon, 23 Nov 2026 22:08:52 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 23 Nov 2026 22:08:52 GMT
COPY /bin/tini /bin/tini # buildkit
# Mon, 23 Nov 2026 22:08:52 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 23 Nov 2026 22:09:00 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Mon, 23 Nov 2026 22:09:00 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Mon, 23 Nov 2026 22:09:00 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:09:00 GMT
ENV SHELL=/bin/bash
# Mon, 23 Nov 2026 22:09:00 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:09:00 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Mon, 23 Nov 2026 22:09:00 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Mon, 23 Nov 2026 22:09:00 GMT
LABEL org.label-schema.build-date=2026-09-30T22:12:03.984586187Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=48acba663b09e70b115dd879329141506c377890 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T22:12:03.984586187Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=48acba663b09e70b115dd879329141506c377890 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Mon, 23 Nov 2026 22:09:00 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Elasticsearch description=You know, for search.
# Mon, 23 Nov 2026 22:09:00 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 23 Nov 2026 22:09:00 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Mon, 23 Nov 2026 22:09:00 GMT
CMD ["eswrapper"]
# Mon, 23 Nov 2026 22:09:00 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:aba77be659b3ca4c2aca19e9a0e50914427b3b809b11dc864d16e2377d40e17a`  
		Last Modified: Fri, 20 Nov 2026 19:55:56 GMT  
		Size: 38.7 MB (38704070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d86aae15ad2f98191100c02167faf021bf7a57dcc6f4b7223c77e4e49010c7`  
		Last Modified: Mon, 23 Nov 2026 22:09:47 GMT  
		Size: 4.4 MB (4386550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bce9cf3b4f9bc6c42d37159ad594960f920b7354eec27e67140d2777922ac870`  
		Last Modified: Mon, 23 Nov 2026 22:09:47 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d94cbcad5bde1f38973c669ded5101ac5ad90169c6eea36f660a9dfa2e99e13`  
		Last Modified: Mon, 23 Nov 2026 22:09:47 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e271cc6a5a69aa85586173852c7c5f9d19299fd3e3d3b5d4b15d60ce2a4c86ad`  
		Last Modified: Mon, 23 Nov 2026 22:10:02 GMT  
		Size: 697.1 MB (697091755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2a5309d5f1e209934a66cc41f477f58c0017c3548b8b707b07c5e5d4489b427`  
		Last Modified: Mon, 23 Nov 2026 22:09:49 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04300f3866299d8a0830b72f39972e240c692d38ad8d5eb0d9345898772a70b9`  
		Last Modified: Mon, 23 Nov 2026 22:09:49 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae0daceef526306cea0f3ee0a727020d545cc81d0f2ee0f0e8a7bf8db62bd21f`  
		Last Modified: Mon, 23 Nov 2026 22:09:49 GMT  
		Size: 74.1 KB (74106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d689d24e5ecef7b30ae9fb50092a391d6b345a10da49483839a206c4f98b4a17`  
		Last Modified: Mon, 23 Nov 2026 22:09:50 GMT  
		Size: 1.7 KB (1694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:8dec6f704bf4303142319d76e03a3df6732b5a09351601daeac970714961ef07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2451678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59db0017e8852bd299a966edc1287e866b936487034e4bb6013edcceefbfde8b`

```dockerfile
```

-	Layers:
	-	`sha256:f8fc855e152923834b62248764c135b8b339d436e3bca2b00b43e4da78c42b21`  
		Last Modified: Mon, 23 Nov 2026 22:09:48 GMT  
		Size: 2.4 MB (2417712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24c5d5388582036530e3f67c569239a9b80045fb1ea23702814af1b6bf00e8b9`  
		Last Modified: Mon, 23 Nov 2026 22:09:48 GMT  
		Size: 34.0 KB (33966 bytes)  
		MIME: application/vnd.in-toto+json
