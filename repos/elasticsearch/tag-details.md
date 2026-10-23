<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:8.19.23`](#elasticsearch81923)
-	[`elasticsearch:9.4.8`](#elasticsearch948)
-	[`elasticsearch:9.5.5`](#elasticsearch955)

## `elasticsearch:8.19.23`

```console
$ docker pull elasticsearch@sha256:3f4d63c59ca5a05b535179dfcced47a514119e351fa81653f69902beacae90c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:8.19.23` - linux; amd64

```console
$ docker pull elasticsearch@sha256:451a7a9334adbf0d3a185c55f40676cc627f8f9233e0dedd95f0211720b004c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **723.7 MB (723705145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed77f8404d73102bb00714bb8004e466cc2da4a92befa2dc593194f81a79d5ba`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:21:12 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Sat, 17 Oct 2026 00:21:12 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Sat, 17 Oct 2026 00:21:12 GMT
ENV ELASTIC_CONTAINER=true
# Sat, 17 Oct 2026 00:21:12 GMT
WORKDIR /usr/share/elasticsearch
# Sat, 17 Oct 2026 00:21:55 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Sat, 17 Oct 2026 00:21:55 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Sat, 17 Oct 2026 00:21:55 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:21:55 GMT
ENV SHELL=/bin/bash
# Sat, 17 Oct 2026 00:21:55 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:21:56 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Sat, 17 Oct 2026 00:21:56 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Sat, 17 Oct 2026 00:21:56 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Sat, 17 Oct 2026 00:21:56 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Sat, 17 Oct 2026 00:21:56 GMT
LABEL org.label-schema.build-date=2026-09-30T23:11:55.493565832Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=6940e499f8a38841809b8e295a20c6421c95d9e4 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.23 org.opencontainers.image.created=2026-09-30T23:11:55.493565832Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=6940e499f8a38841809b8e295a20c6421c95d9e4 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.23
# Sat, 17 Oct 2026 00:21:56 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:21:56 GMT
CMD ["eswrapper"]
# Sat, 17 Oct 2026 00:21:56 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1f07b502179bea9a39542d63c8f8bd11c421305f00e1e381724049feca567c0`  
		Last Modified: Sat, 17 Oct 2026 00:22:48 GMT  
		Size: 5.1 MB (5133293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80b957c0183b2c81ad37d520951b1cce53c33e2284c644a784e4c689a1463a11`  
		Last Modified: Sat, 17 Oct 2026 00:22:48 GMT  
		Size: 3.5 KB (3528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:544762ff5a9ca7be5fc23a78213d66ab22498f0757baac7f413524ec7556d414`  
		Last Modified: Sat, 17 Oct 2026 00:23:00 GMT  
		Size: 688.5 MB (688529586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546c0d8a7499663994c777997ef92955919561e88eb5bf55fd191ab7fd560bb3`  
		Last Modified: Sat, 17 Oct 2026 00:22:48 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24660f31a564015b1f6b6f3bc53eb62e4e8d9dc205fa0a52d00140a7b9439ec9`  
		Last Modified: Sat, 17 Oct 2026 00:22:49 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f550f6a758de80cd446b6a8cb6b43cf792bd1562ab5ee7837aefbe1dadc49bce`  
		Last Modified: Sat, 17 Oct 2026 00:22:50 GMT  
		Size: 164.2 KB (164190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b8b0649860074c735be9c2ab5ad6c75ba526e3bdcc95c75edec2cd997e3b6ee`  
		Last Modified: Sat, 17 Oct 2026 00:22:50 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54cfc0783def5e5eeaf8da733c2837b7f029108ecb606e097a9d5a4d44d2baed`  
		Last Modified: Sat, 17 Oct 2026 00:22:50 GMT  
		Size: 97.1 KB (97103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.23` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:48fd77486e5de5d52b1c4bca93d2e4d38ed674b18764a0d1cc931529d8873404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3223792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be2ab76a329cfde65011bcaf818c6615a444ea68fc541a6f3c5ccc6e18a1dc74`

```dockerfile
```

-	Layers:
	-	`sha256:8d062ed29e3d7ac7642e26984fc6b65f05d2fca79995d426b2f9911b1db061ee`  
		Last Modified: Sat, 17 Oct 2026 00:22:48 GMT  
		Size: 3.2 MB (3186977 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00cda5764ad3b09f77c5b8fd89ed2f8fc59e43dd92992d2f1d1860563be8c9a6`  
		Last Modified: Sat, 17 Oct 2026 00:22:48 GMT  
		Size: 36.8 KB (36815 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:8.19.23` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:6744edfef177ecc80c9cee25a0a0ec3d2ca188fe399ab3483268ff507f1b3041
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **571.7 MB (571745809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9fb85c92df6f41f72197b3136b2de2a98cf35fb1312bc98e1b314158b33c3f9`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:21:03 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Sat, 17 Oct 2026 00:21:03 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Sat, 17 Oct 2026 00:21:03 GMT
ENV ELASTIC_CONTAINER=true
# Sat, 17 Oct 2026 00:21:03 GMT
WORKDIR /usr/share/elasticsearch
# Sat, 17 Oct 2026 00:22:30 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Sat, 17 Oct 2026 00:22:30 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Sat, 17 Oct 2026 00:22:30 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:22:30 GMT
ENV SHELL=/bin/bash
# Sat, 17 Oct 2026 00:22:30 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:22:30 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Sat, 17 Oct 2026 00:22:30 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Sat, 17 Oct 2026 00:22:30 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Sat, 17 Oct 2026 00:22:30 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Sat, 17 Oct 2026 00:22:30 GMT
LABEL org.label-schema.build-date=2026-09-30T23:11:55.493565832Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=6940e499f8a38841809b8e295a20c6421c95d9e4 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.23 org.opencontainers.image.created=2026-09-30T23:11:55.493565832Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=6940e499f8a38841809b8e295a20c6421c95d9e4 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.23
# Sat, 17 Oct 2026 00:22:30 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:22:30 GMT
CMD ["eswrapper"]
# Sat, 17 Oct 2026 00:22:30 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27da924c55b420c34b2101f0b40411cb46dd8ddfe44f88ba4dddfe659ee5b675`  
		Last Modified: Sat, 17 Oct 2026 00:23:09 GMT  
		Size: 5.1 MB (5132862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032cefe5f4b0ba40c6ea0582b21575b16339cecfd5f25eed63be6fe32101b1ed`  
		Last Modified: Sat, 17 Oct 2026 00:23:08 GMT  
		Size: 3.5 KB (3532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13acf50c3463888e48f358f5a15e8a150a6d5beb7eaccba6858e66c29bea3dce`  
		Last Modified: Sat, 17 Oct 2026 00:23:19 GMT  
		Size: 537.4 MB (537400598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d39c128f1865cd600eef27d001236444cadbc1b3abf34df60cc7958a084436f`  
		Last Modified: Sat, 17 Oct 2026 00:23:08 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92613a94f73ac2394f758501588de8404a54769317a0aa1cdb179635bdfd2356`  
		Last Modified: Sat, 17 Oct 2026 00:23:10 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f798c9b4a5c31bd857ea467d7c35d4b5dc6a5c40e84da818bd163776e18818d`  
		Last Modified: Sat, 17 Oct 2026 00:23:10 GMT  
		Size: 160.7 KB (160695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b1b24dee4fbfaf21965b3216861b25a0f6620268026d1a29ba6bf430823d27`  
		Last Modified: Sat, 17 Oct 2026 00:23:10 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e4af4b623410487c8046a1cec72a01d1d90f77728a330872d69a149b3c3e0c`  
		Last Modified: Sat, 17 Oct 2026 00:23:11 GMT  
		Size: 97.1 KB (97102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.23` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:4e8f92acc07fd60a3b4827b7c0247dff4e74baf8309e8b7c53e68ce320b048d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3224408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f4547ccf98dd7d82440288fc6e2171f660de064a75a0ac8849349b905a71f39`

```dockerfile
```

-	Layers:
	-	`sha256:9ed5e9433f1adf4307d55c27541b570ac87be2d7b124b2a8fbd935edb06558a7`  
		Last Modified: Sat, 17 Oct 2026 00:23:09 GMT  
		Size: 3.2 MB (3187390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3637302f02cf53896a0b8946ca05b32cc27669a7706efc5808aba64f3b394088`  
		Last Modified: Sat, 17 Oct 2026 00:23:09 GMT  
		Size: 37.0 KB (37018 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.4.8`

```console
$ docker pull elasticsearch@sha256:0284f64ddb88641af0dda55e4fe8b0f9df040f20d15ce234b50867da03a740ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.8` - linux; amd64

```console
$ docker pull elasticsearch@sha256:c33bcb936d007973b987d671f7b7fe6b786d7992641cceef4e3c2bed83628bfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **869.2 MB (869218805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccb0165c1ac88f2377dbcb755f967e1296eab1d1611e84250fc63b5ccae81db8`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 23 Oct 2026 07:55:55 GMT
ENV container oci
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:2fc4551098c6ebd5c0304b2f61efdc67d6aebcbff8032750054f600bbeec82fc in /      
# Fri, 23 Oct 2026 07:55:56 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 07:55:56 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:a78b034003bd0e620e960223059e9c224ee88be75273ffd75b7039efe65e4145 in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:a78b034003bd0e620e960223059e9c224ee88be75273ffd75b7039efe65e4145 in /root/buildinfo/      
# Fri, 23 Oct 2026 07:55:57 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T07:55:29Z" "org.opencontainers.image.revision"="59d275375d644e97803eb1be638cb4b2fa111a25" "build-date"="2026-10-23T07:55:29Z" "architecture"="x86_64" "vcs-ref"="59d275375d644e97803eb1be638cb4b2fa111a25" "vcs-type"="git" "release"="1792742033"org.opencontainers.image.created=2026-10-23T07:55:29Z,org.opencontainers.image.revision=59d275375d644e97803eb1be638cb4b2fa111a25
# Fri, 23 Oct 2026 16:51:11 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:51:12 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Fri, 23 Oct 2026 16:52:35 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 23 Oct 2026 16:52:35 GMT
COPY /bin/tini /bin/tini # buildkit
# Fri, 23 Oct 2026 16:52:35 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 23 Oct 2026 16:52:46 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Fri, 23 Oct 2026 16:52:46 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Fri, 23 Oct 2026 16:52:46 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:52:46 GMT
ENV SHELL=/bin/bash
# Fri, 23 Oct 2026 16:52:46 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Fri, 23 Oct 2026 16:52:46 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Fri, 23 Oct 2026 16:52:46 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Fri, 23 Oct 2026 16:52:46 GMT
LABEL org.label-schema.build-date=2026-10-01T01:07:34.887571291Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c042abbb0eaaaa61b49beef21d517468861a4db2 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-10-01T01:07:34.887571291Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c042abbb0eaaaa61b49beef21d517468861a4db2 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Fri, 23 Oct 2026 16:52:46 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Elasticsearch description=You know, for search.
# Fri, 23 Oct 2026 16:52:46 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 23 Oct 2026 16:52:46 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 16:52:46 GMT
CMD ["eswrapper"]
# Fri, 23 Oct 2026 16:52:46 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:74b09d47403b6e0522a8cc3fd6a898259e54bbaae0be6c397399bd41ee27d9c1`  
		Last Modified: Fri, 23 Oct 2026 09:52:32 GMT  
		Size: 40.6 MB (40609256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85cba06e222558669c0b420a2326853b02084a5564e7e63dce643494a8ce0c9`  
		Last Modified: Fri, 23 Oct 2026 16:53:44 GMT  
		Size: 4.4 MB (4396255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adb1eed30d4f181028f86102b8f76c590708aa716dadd8254062c8610e1bffeb`  
		Last Modified: Fri, 23 Oct 2026 16:53:43 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d8b74ce760a926bc5d93fc92d5f5386266e35af19e9e237d56aab7176a68ab`  
		Last Modified: Fri, 23 Oct 2026 16:53:43 GMT  
		Size: 9.5 KB (9533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7304504c45c61e2129b4e203f9169ddef537830d65c3679efe76cb3599d35f4`  
		Last Modified: Fri, 23 Oct 2026 16:53:58 GMT  
		Size: 824.1 MB (824123339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de31b60e19491e0baf25c96910909afbb988fdeeda3050c36a5a69f1b6ef393a`  
		Last Modified: Fri, 23 Oct 2026 16:53:45 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0fe7b7a9035a04a4e88f1161c49ea23ffe0358e63c6ce06b8033347c199c0f7`  
		Last Modified: Fri, 23 Oct 2026 16:53:45 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b98e4705d5b413802cf776fb48672202365c68bcce2a7aa6e2a6d7eb9d7ee77`  
		Last Modified: Fri, 23 Oct 2026 16:53:45 GMT  
		Size: 75.2 KB (75178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:783704078c9f0f032ff99b2e76df4498dcc4b6156e9ef95d11c3341ad68f0234`  
		Last Modified: Fri, 23 Oct 2026 16:53:46 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:b4dfafc2f62c50306fbd3310b1028c07e397775ae52ba3913996be1d0f2e4878
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2401626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aad9c5c083936b018d51acbf21a92931c7937e071c3bdbfac1eedc480c9fd91`

```dockerfile
```

-	Layers:
	-	`sha256:a42751cff9e6a6432d5ec9c1886a9f85ae880d8b16522666c5fed8da9494e7b8`  
		Last Modified: Fri, 23 Oct 2026 16:53:44 GMT  
		Size: 2.4 MB (2367843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e36befef0f3e006bcb0b2831c7933176006f9c4252d37232bcfb0288aec89f4`  
		Last Modified: Fri, 23 Oct 2026 16:53:43 GMT  
		Size: 33.8 KB (33783 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.8` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:7205e35d0f2cfffda6a6de310ecf38583fb857bf83d3a50367e111076bf2a43c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.8 MB (713835802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1889e17b8f9367b877b91f0a4477a885bf3f66f4e06ff852f405b22ce95871a4`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 07:58:17 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 23 Oct 2026 07:58:17 GMT
ENV container oci
# Fri, 23 Oct 2026 07:58:18 GMT
COPY dir:5dfa310507da27398f8076c2456ffd2197b043828a75f962db7044d875161543 in /      
# Fri, 23 Oct 2026 07:58:18 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 07:58:18 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 07:58:19 GMT
COPY dir:245207855491c502875407ff924decd7477ce054eb0ef618bc047892ca9116ea in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 07:58:19 GMT
COPY dir:245207855491c502875407ff924decd7477ce054eb0ef618bc047892ca9116ea in /root/buildinfo/      
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T07:57:45Z" "org.opencontainers.image.revision"="59d275375d644e97803eb1be638cb4b2fa111a25" "build-date"="2026-10-23T07:57:45Z" "architecture"="aarch64" "vcs-ref"="59d275375d644e97803eb1be638cb4b2fa111a25" "vcs-type"="git" "release"="1792742033"org.opencontainers.image.created=2026-10-23T07:57:45Z,org.opencontainers.image.revision=59d275375d644e97803eb1be638cb4b2fa111a25
# Fri, 23 Oct 2026 16:51:14 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:51:14 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Fri, 23 Oct 2026 16:51:47 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 23 Oct 2026 16:51:47 GMT
COPY /bin/tini /bin/tini # buildkit
# Fri, 23 Oct 2026 16:51:47 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 23 Oct 2026 16:51:55 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Fri, 23 Oct 2026 16:51:55 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Fri, 23 Oct 2026 16:51:55 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:51:55 GMT
ENV SHELL=/bin/bash
# Fri, 23 Oct 2026 16:51:55 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Fri, 23 Oct 2026 16:51:55 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Fri, 23 Oct 2026 16:51:55 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Fri, 23 Oct 2026 16:51:55 GMT
LABEL org.label-schema.build-date=2026-10-01T01:07:34.887571291Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c042abbb0eaaaa61b49beef21d517468861a4db2 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-10-01T01:07:34.887571291Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c042abbb0eaaaa61b49beef21d517468861a4db2 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Fri, 23 Oct 2026 16:51:55 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Elasticsearch description=You know, for search.
# Fri, 23 Oct 2026 16:51:55 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 23 Oct 2026 16:51:55 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 16:51:55 GMT
CMD ["eswrapper"]
# Fri, 23 Oct 2026 16:51:55 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:6cb90586f16ba5f631bc69ed4b10258b9b651fbb54718f47b878a4abd17252cb`  
		Last Modified: Fri, 23 Oct 2026 09:53:00 GMT  
		Size: 38.7 MB (38714705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2712df085f83dc107ba91b60e47265f394ff300748068fc2f6e7fa4aa6f34c9a`  
		Last Modified: Fri, 23 Oct 2026 16:52:40 GMT  
		Size: 4.4 MB (4389699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd9cd8d34b1125bf85a1b90d0979419021b26ce777d744734e0047d692dbe93a`  
		Last Modified: Fri, 23 Oct 2026 16:52:40 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb41d5cb080daa4de30c9f4f224b693f1d94c935be18c95149254a00b62bdea`  
		Last Modified: Fri, 23 Oct 2026 16:52:40 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c01dd702f2c5ed36958e25ab205b710cd3556e11077fd359736183b4412350fb`  
		Last Modified: Fri, 23 Oct 2026 16:52:52 GMT  
		Size: 670.6 MB (670642949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abf0a64cb69b09661b65a60669fd6635275ee6f7aa4b9dd6ce240fdd5955b39`  
		Last Modified: Fri, 23 Oct 2026 16:52:41 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d3f11f9b477b30955d666cbef7227842cd881560a532d22ca950b4b3fbba9e`  
		Last Modified: Fri, 23 Oct 2026 16:52:41 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d650605c222aa488e595e9d8fefa0bc6fb40d54aa23c60a822b612e8a095c3c`  
		Last Modified: Fri, 23 Oct 2026 16:52:42 GMT  
		Size: 74.1 KB (74103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42d43769bf4d1dd880e40d550ef8e86c6f7a21bfdf6e8e22bc3222efff66812b`  
		Last Modified: Fri, 23 Oct 2026 16:52:42 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:0155af872a944a8cbb22b76fbf1377ae1c846b6f4baaa34bd708b539b03fcb1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2400589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62192db65e28c7f7dc3011901dbc4a39db41a363a14446d85b1938129ea193a7`

```dockerfile
```

-	Layers:
	-	`sha256:301008e56ea6597d8385f2941e6cf46fceb553b79caea624a72effcb7c564b20`  
		Last Modified: Fri, 23 Oct 2026 16:52:40 GMT  
		Size: 2.4 MB (2366623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ecc64e908c407ce7b0316f7076a290727d190006d221e3621bcdbd53bb94faa`  
		Last Modified: Fri, 23 Oct 2026 16:52:40 GMT  
		Size: 34.0 KB (33966 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.5.5`

```console
$ docker pull elasticsearch@sha256:da9e6fed4949f114c526cf51f5130fed9e30fe9f03a2ea7bf64ccbdc129fca8c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.5.5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:e28594eba96a79061f832092a8b5cb19f8f1053decd60fc1a6ca713ff5cf4699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **895.7 MB (895719369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:349d2e5c84a51daee7324ec92b2e7b130485c6b5d26d7bb4353dcffa25ecef2d`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 23 Oct 2026 07:55:55 GMT
ENV container oci
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:2fc4551098c6ebd5c0304b2f61efdc67d6aebcbff8032750054f600bbeec82fc in /      
# Fri, 23 Oct 2026 07:55:56 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 07:55:56 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:a78b034003bd0e620e960223059e9c224ee88be75273ffd75b7039efe65e4145 in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:a78b034003bd0e620e960223059e9c224ee88be75273ffd75b7039efe65e4145 in /root/buildinfo/      
# Fri, 23 Oct 2026 07:55:57 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T07:55:29Z" "org.opencontainers.image.revision"="59d275375d644e97803eb1be638cb4b2fa111a25" "build-date"="2026-10-23T07:55:29Z" "architecture"="x86_64" "vcs-ref"="59d275375d644e97803eb1be638cb4b2fa111a25" "vcs-type"="git" "release"="1792742033"org.opencontainers.image.created=2026-10-23T07:55:29Z,org.opencontainers.image.revision=59d275375d644e97803eb1be638cb4b2fa111a25
# Fri, 23 Oct 2026 16:51:17 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:51:17 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Fri, 23 Oct 2026 16:52:37 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 23 Oct 2026 16:52:37 GMT
COPY /bin/tini /bin/tini # buildkit
# Fri, 23 Oct 2026 16:52:37 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 23 Oct 2026 16:52:48 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Fri, 23 Oct 2026 16:52:48 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Fri, 23 Oct 2026 16:52:48 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:52:48 GMT
ENV SHELL=/bin/bash
# Fri, 23 Oct 2026 16:52:48 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Fri, 23 Oct 2026 16:52:48 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Fri, 23 Oct 2026 16:52:48 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Fri, 23 Oct 2026 16:52:48 GMT
LABEL org.label-schema.build-date=2026-09-30T22:12:03.984586187Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=48acba663b09e70b115dd879329141506c377890 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T22:12:03.984586187Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=48acba663b09e70b115dd879329141506c377890 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Fri, 23 Oct 2026 16:52:48 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Elasticsearch description=You know, for search.
# Fri, 23 Oct 2026 16:52:48 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 23 Oct 2026 16:52:48 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 16:52:48 GMT
CMD ["eswrapper"]
# Fri, 23 Oct 2026 16:52:48 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:74b09d47403b6e0522a8cc3fd6a898259e54bbaae0be6c397399bd41ee27d9c1`  
		Last Modified: Fri, 23 Oct 2026 09:52:32 GMT  
		Size: 40.6 MB (40609256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1dcf8b180a81796acba9c1271586c2c4e90cbb0470d7dd3ae42c5d941276623`  
		Last Modified: Fri, 23 Oct 2026 16:53:43 GMT  
		Size: 4.4 MB (4396346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f081a8d347278131b6c5fec8e833ba831c2b009d5d1557d69addf82d0a7a7630`  
		Last Modified: Fri, 23 Oct 2026 16:53:43 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:458c03b4bcf32619ca230e6ae221588e842938f96633c8458d6eac64a7e583d5`  
		Last Modified: Fri, 23 Oct 2026 16:53:43 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76bc996d4c9c4422f5171b4d8e2fe96adc1d3f3a10baac0d6ca7ea34809f8c57`  
		Last Modified: Fri, 23 Oct 2026 16:53:58 GMT  
		Size: 850.6 MB (850623813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6466edb0c670f1f9cb259df24a1cbd1f5db62f4c674a4bb52c0f10add063e18e`  
		Last Modified: Fri, 23 Oct 2026 16:53:44 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661dec5d5ec2ffe0e87c6dd42b9020f8b6e00b6b22b79fa9721d20437ed1af66`  
		Last Modified: Fri, 23 Oct 2026 16:53:44 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179765f3643638aed866e5535415f79c7d4ab397ad017ad28bfc13fb11b4d37d`  
		Last Modified: Fri, 23 Oct 2026 16:53:44 GMT  
		Size: 75.2 KB (75180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63897a2899b1b4c907754cd528e00572d857c5e5c75c65efa26c5d61f626b5c`  
		Last Modified: Fri, 23 Oct 2026 16:53:45 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:f34acac80b4512dbb99a6c7234390af1bf730f84deb892930e720b568d791be9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2452708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2a860d7f4ffdff0fe2d93bdfe51372764a2e89742a95e4d275737ad1230d65`

```dockerfile
```

-	Layers:
	-	`sha256:f0438422862afffb55c45726c40314cb0b4a14351c4b615d7709877bfd6b4bd1`  
		Last Modified: Fri, 23 Oct 2026 16:53:43 GMT  
		Size: 2.4 MB (2418924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afeab1d6720f9198adeee4fc8590369fdb27197fb0f8b885ef07bd9291f37c4c`  
		Last Modified: Fri, 23 Oct 2026 16:53:43 GMT  
		Size: 33.8 KB (33784 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.5.5` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:92230541730d7ea06dc240a911cf98cc2739f10ad787c2c4c763469eb4110407
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **740.3 MB (740284689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c3e6f18e0147597f1deadb95c87e212242251f3ddf42fadb1148171caef8eac`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 07:58:17 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 23 Oct 2026 07:58:17 GMT
ENV container oci
# Fri, 23 Oct 2026 07:58:18 GMT
COPY dir:5dfa310507da27398f8076c2456ffd2197b043828a75f962db7044d875161543 in /      
# Fri, 23 Oct 2026 07:58:18 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 07:58:18 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 07:58:19 GMT
COPY dir:245207855491c502875407ff924decd7477ce054eb0ef618bc047892ca9116ea in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 07:58:19 GMT
COPY dir:245207855491c502875407ff924decd7477ce054eb0ef618bc047892ca9116ea in /root/buildinfo/      
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T07:57:45Z" "org.opencontainers.image.revision"="59d275375d644e97803eb1be638cb4b2fa111a25" "build-date"="2026-10-23T07:57:45Z" "architecture"="aarch64" "vcs-ref"="59d275375d644e97803eb1be638cb4b2fa111a25" "vcs-type"="git" "release"="1792742033"org.opencontainers.image.created=2026-10-23T07:57:45Z,org.opencontainers.image.revision=59d275375d644e97803eb1be638cb4b2fa111a25
# Fri, 23 Oct 2026 16:51:18 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:51:18 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Fri, 23 Oct 2026 16:51:54 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 23 Oct 2026 16:51:54 GMT
COPY /bin/tini /bin/tini # buildkit
# Fri, 23 Oct 2026 16:51:54 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 23 Oct 2026 16:52:02 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Fri, 23 Oct 2026 16:52:02 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Fri, 23 Oct 2026 16:52:02 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:52:02 GMT
ENV SHELL=/bin/bash
# Fri, 23 Oct 2026 16:52:02 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Fri, 23 Oct 2026 16:52:02 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Fri, 23 Oct 2026 16:52:02 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Fri, 23 Oct 2026 16:52:02 GMT
LABEL org.label-schema.build-date=2026-09-30T22:12:03.984586187Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=48acba663b09e70b115dd879329141506c377890 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T22:12:03.984586187Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=48acba663b09e70b115dd879329141506c377890 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Fri, 23 Oct 2026 16:52:02 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Elasticsearch description=You know, for search.
# Fri, 23 Oct 2026 16:52:02 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 23 Oct 2026 16:52:02 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 16:52:02 GMT
CMD ["eswrapper"]
# Fri, 23 Oct 2026 16:52:02 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:6cb90586f16ba5f631bc69ed4b10258b9b651fbb54718f47b878a4abd17252cb`  
		Last Modified: Fri, 23 Oct 2026 09:53:00 GMT  
		Size: 38.7 MB (38714705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65d9bf13204ffaf9c13b4fa1a707d32396a86ad9c312afb15a706925661cae5e`  
		Last Modified: Fri, 23 Oct 2026 16:52:50 GMT  
		Size: 4.4 MB (4389762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6eeb58abb84342e6ddc470f9accd5de34b8f104e39475056f6beef1a3d8d732`  
		Last Modified: Fri, 23 Oct 2026 16:52:50 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa8f80cd1bacc534205d369331b6c326e60e053100edcea9d0ab6eede9142f06`  
		Last Modified: Fri, 23 Oct 2026 16:52:50 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5399aa3ae50dd2f849b1997157b6031eb5c9b1d8b221066ed3ed9958682daf1`  
		Last Modified: Fri, 23 Oct 2026 16:53:11 GMT  
		Size: 697.1 MB (697091786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa82541cc11a17b4323f22650ea5716810e7d5e47aac8fdf77e82664d275987d`  
		Last Modified: Fri, 23 Oct 2026 16:52:51 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670ca91b2b26f36d4f6b4d28a42412852b43c68da9ebc55670ea711eb471baa5`  
		Last Modified: Fri, 23 Oct 2026 16:52:51 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9a4a7cd73ce44e1d5299dba94f960cbb781823c985130da41893f4e4596362`  
		Last Modified: Fri, 23 Oct 2026 16:52:52 GMT  
		Size: 74.1 KB (74097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abaf267953c8b44490878d6643410bfb81fcc7bf5cf565fe2d22795bfa688d85`  
		Last Modified: Fri, 23 Oct 2026 16:52:53 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:8b42a73c2ff2163d2c20c84b3654b0b38430ee7b56438c544ce70f32606f9f07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2451670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64ab7697df9a9f2039f3036f0d85fd61d25b8e26cb88776986cbf39ba6260e07`

```dockerfile
```

-	Layers:
	-	`sha256:695e9d7d0435d841763f296556be89fb4d9d2742b68eb89227d93441065ed90f`  
		Last Modified: Fri, 23 Oct 2026 16:52:50 GMT  
		Size: 2.4 MB (2417704 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3e849fa07e980b04bb458175c2436aaaf8b2035b638fa28dfe4cd710baef5d8`  
		Last Modified: Fri, 23 Oct 2026 16:52:50 GMT  
		Size: 34.0 KB (33966 bytes)  
		MIME: application/vnd.in-toto+json
