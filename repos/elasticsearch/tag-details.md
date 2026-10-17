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
$ docker pull elasticsearch@sha256:982fa9b02b5ad57820d3a29d2ffc552fb12dececea4c3655bdd4da4c47a673cd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.8` - linux; amd64

```console
$ docker pull elasticsearch@sha256:09d65bb8d011b7728c12a3331f661fc36dc147c57119ba0150658bd28f2624a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **869.4 MB (869353291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062473e73b3ee5f4ad0d7d0998be0203aadc7400bd31b157d4e36f4b32614293`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 13 Oct 2026 13:35:54 GMT
ENV container oci
# Tue, 13 Oct 2026 13:35:54 GMT
COPY dir:2fcd1ca2b477955927b3f5efd987f047101cd586e309b90ff9e3d22cde3fa5f5 in /      
# Tue, 13 Oct 2026 13:35:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 13:35:55 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 13:35:55 GMT
COPY dir:1e352836f570c2fb121d4b2c30cdc17fed57486a0a1cdaa55d16d9971f6b0aa6 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 13:35:56 GMT
COPY dir:1e352836f570c2fb121d4b2c30cdc17fed57486a0a1cdaa55d16d9971f6b0aa6 in /root/buildinfo/      
# Tue, 13 Oct 2026 13:35:56 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T13:35:30Z" "org.opencontainers.image.revision"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "build-date"="2026-10-13T13:35:30Z" "architecture"="x86_64" "vcs-ref"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "vcs-type"="git" "release"="1791898448"org.opencontainers.image.created=2026-10-13T13:35:30Z,org.opencontainers.image.revision=31c16e4570d0b2dd27707ce88c88f65b1212cf78
# Tue, 13 Oct 2026 22:58:46 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:58:46 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 13 Oct 2026 23:00:05 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 13 Oct 2026 23:00:05 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 13 Oct 2026 23:00:05 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 13 Oct 2026 23:00:17 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 13 Oct 2026 23:00:17 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 13 Oct 2026 23:00:17 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 23:00:17 GMT
ENV SHELL=/bin/bash
# Tue, 13 Oct 2026 23:00:17 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 13 Oct 2026 23:00:17 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 13 Oct 2026 23:00:17 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 13 Oct 2026 23:00:17 GMT
LABEL org.label-schema.build-date=2026-10-01T01:07:34.887571291Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c042abbb0eaaaa61b49beef21d517468861a4db2 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-10-01T01:07:34.887571291Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c042abbb0eaaaa61b49beef21d517468861a4db2 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Tue, 13 Oct 2026 23:00:17 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 13 Oct 2026 23:00:17 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 13 Oct 2026 23:00:17 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 23:00:17 GMT
CMD ["eswrapper"]
# Tue, 13 Oct 2026 23:00:17 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:3655575efb35316918c7e7d2cb81ae7db0e4613f7ffbbadb4980cc0549ac2834`  
		Last Modified: Tue, 13 Oct 2026 14:51:42 GMT  
		Size: 40.7 MB (40737290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e2ce628711651493bd030fa8c0ff3bf5294394cab2da21df02f3c31c4a58248`  
		Last Modified: Tue, 13 Oct 2026 23:01:15 GMT  
		Size: 4.4 MB (4402572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf0cd868d9ef934d55bdcd2f156a4b23c86f231f53ac2cd4583f43fd202926fe`  
		Last Modified: Tue, 13 Oct 2026 23:01:15 GMT  
		Size: 1.5 KB (1528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912d773498f32d68d115f659ecb5312f73e7616bd7d5bfc7bcb740e7c70ff6ff`  
		Last Modified: Tue, 13 Oct 2026 23:01:15 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0e1efbba4e06a300d7102c301eb8be4bdcd35786b128bd5950131dd80343a81`  
		Last Modified: Tue, 13 Oct 2026 23:01:32 GMT  
		Size: 824.1 MB (824123459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8d66edfa7f4f3d143a46a8c64437c59da277a9746959d18ce244bfa89679ea3`  
		Last Modified: Tue, 13 Oct 2026 23:01:16 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85abb0299499e34031012a6a3086d0184f8ec7d50d09f66664a0f880df99a0c5`  
		Last Modified: Tue, 13 Oct 2026 23:01:17 GMT  
		Size: 1.7 KB (1721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0e2d459f1493f6d9edb0b7e2385e2de6f210d3310c4373868547890b6381d41`  
		Last Modified: Tue, 13 Oct 2026 23:01:17 GMT  
		Size: 75.2 KB (75190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8ca398c1efee56516b25cea15c8c514eff8e54c3ee9c1ca9399d6cd2f3f8c0c`  
		Last Modified: Tue, 13 Oct 2026 23:01:18 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:c2e7503eb615df611bf77c6c946e5490bf7845fa906d7a5e3f514f8444575193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e05130d4bb9e0756c993be837f257fd043862f1f0a9b9ee3896c4f4234b916b`

```dockerfile
```

-	Layers:
	-	`sha256:991b829a955e2d164bbad83017ad03112dc5afd22a73d3a0d8407a83626d8990`  
		Last Modified: Tue, 13 Oct 2026 23:01:15 GMT  
		Size: 2.4 MB (2386394 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:239ff1e003efd9753338e1ad2007c0b619c327cd8ce0a79e1e34ceea70844af8`  
		Last Modified: Tue, 13 Oct 2026 23:01:15 GMT  
		Size: 33.8 KB (33784 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.8` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:3a4b44b3f06a8f9311bca2d666906d5a4d05343bfbc27f5fd76fc77c570fb4cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.9 MB (713928433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829fd0fca1186c00ba228769ef73779ac7c71e98b46ec21a01155f1ed3814698`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 13 Oct 2026 13:38:25 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 13 Oct 2026 13:38:26 GMT
ENV container oci
# Tue, 13 Oct 2026 13:38:27 GMT
COPY dir:e0a9e23521da92370ef8c1c702abc899055259c540969022f975e6a9a5db74eb in /      
# Tue, 13 Oct 2026 13:38:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 13:38:28 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 13:38:28 GMT
COPY dir:cb0d3172eff5b926f8d3aeafcff4dec012c6f16fa22d7fd5ba6222362588b316 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 13:38:29 GMT
COPY dir:cb0d3172eff5b926f8d3aeafcff4dec012c6f16fa22d7fd5ba6222362588b316 in /root/buildinfo/      
# Tue, 13 Oct 2026 13:38:29 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T13:37:55Z" "org.opencontainers.image.revision"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "build-date"="2026-10-13T13:37:55Z" "architecture"="aarch64" "vcs-ref"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "vcs-type"="git" "release"="1791898448"org.opencontainers.image.created=2026-10-13T13:37:55Z,org.opencontainers.image.revision=31c16e4570d0b2dd27707ce88c88f65b1212cf78
# Tue, 13 Oct 2026 22:57:44 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:57:44 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 13 Oct 2026 22:59:00 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 13 Oct 2026 22:59:00 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 13 Oct 2026 22:59:00 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 13 Oct 2026 22:59:07 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 13 Oct 2026 22:59:07 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 13 Oct 2026 22:59:07 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:59:07 GMT
ENV SHELL=/bin/bash
# Tue, 13 Oct 2026 22:59:07 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:59:07 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 13 Oct 2026 22:59:07 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 13 Oct 2026 22:59:07 GMT
LABEL org.label-schema.build-date=2026-10-01T01:07:34.887571291Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c042abbb0eaaaa61b49beef21d517468861a4db2 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-10-01T01:07:34.887571291Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c042abbb0eaaaa61b49beef21d517468861a4db2 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Tue, 13 Oct 2026 22:59:07 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 13 Oct 2026 22:59:08 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 13 Oct 2026 22:59:08 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 22:59:08 GMT
CMD ["eswrapper"]
# Tue, 13 Oct 2026 22:59:08 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:8aa74cd1ed0a010c9e42b8f13484468b32e94ff9405ce295cbde110e8119e733`  
		Last Modified: Tue, 13 Oct 2026 14:52:30 GMT  
		Size: 38.8 MB (38804143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:266390ae3379bee0a852aab189e33e8ffd295479168cf27de80d315ff22f3b3d`  
		Last Modified: Tue, 13 Oct 2026 22:59:54 GMT  
		Size: 4.4 MB (4392887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d520516d29275b19e95d6e2128b61459e070173e93afbaead337f6a662f84ab9`  
		Last Modified: Tue, 13 Oct 2026 22:59:54 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:770d46eff94a8cc3baba48a213231ba243e9f86b16e98d5b4e9efe4bf295aecf`  
		Last Modified: Tue, 13 Oct 2026 22:59:54 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:924814f2d6312a571e27016f1bca38c85e92ba62feb6b3e5d287ec302b0dda09`  
		Last Modified: Tue, 13 Oct 2026 23:00:10 GMT  
		Size: 670.6 MB (670642953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:360b82054be9f98d983b07f9018a768279fbe6cbf8e2bea64dec49e617a09e86`  
		Last Modified: Tue, 13 Oct 2026 22:59:55 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a124ae115920f338214d8f9970bc8c43751d61949b2b81d43b679f86972eab2`  
		Last Modified: Tue, 13 Oct 2026 22:59:55 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba705257427bacfbf3c73c022b9581fd489581de3018e0b265f98f9afeea6f9`  
		Last Modified: Tue, 13 Oct 2026 22:59:55 GMT  
		Size: 74.1 KB (74105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5ab70e36a1209b295f213f9e9e27046ca009a97511787e0b7fd41f52d374c5e`  
		Last Modified: Tue, 13 Oct 2026 22:59:57 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:a47d52952a502e9c47ba6d4e3579e0d55c1e3dd0a8ade97367407ce811338cce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2419140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93d4fce0db10d03c14e50e6d745cea394a15db98a3ad85f0a5f56c03a50a78fa`

```dockerfile
```

-	Layers:
	-	`sha256:4cc85fd740dae540948e52a369ebb1cc33c19310ba5d70c2940f39ea3b7e5d95`  
		Last Modified: Tue, 13 Oct 2026 22:59:54 GMT  
		Size: 2.4 MB (2385174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fd714a947a492f3a91996a741247e38e43bdfe8eec2f275e2e163f05fed5535`  
		Last Modified: Tue, 13 Oct 2026 22:59:54 GMT  
		Size: 34.0 KB (33966 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.5.5`

```console
$ docker pull elasticsearch@sha256:33cae13fc18ef105e960cdd32327d402fbd7c6d4376c0b879ad703ee289d45d8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.5.5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:9bb041ea6d74a7550b9942d585f7ada5f4b749d3d4b3da0670140a5469d1a651
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **895.9 MB (895853561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4815da3e80eedaac10e2ac6c54de2f8a9d828294fea02ba674e5c7e1f77ba120`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 13 Oct 2026 13:35:54 GMT
ENV container oci
# Tue, 13 Oct 2026 13:35:54 GMT
COPY dir:2fcd1ca2b477955927b3f5efd987f047101cd586e309b90ff9e3d22cde3fa5f5 in /      
# Tue, 13 Oct 2026 13:35:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 13:35:55 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 13:35:55 GMT
COPY dir:1e352836f570c2fb121d4b2c30cdc17fed57486a0a1cdaa55d16d9971f6b0aa6 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 13:35:56 GMT
COPY dir:1e352836f570c2fb121d4b2c30cdc17fed57486a0a1cdaa55d16d9971f6b0aa6 in /root/buildinfo/      
# Tue, 13 Oct 2026 13:35:56 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T13:35:30Z" "org.opencontainers.image.revision"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "build-date"="2026-10-13T13:35:30Z" "architecture"="x86_64" "vcs-ref"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "vcs-type"="git" "release"="1791898448"org.opencontainers.image.created=2026-10-13T13:35:30Z,org.opencontainers.image.revision=31c16e4570d0b2dd27707ce88c88f65b1212cf78
# Tue, 13 Oct 2026 22:58:58 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:58:58 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 13 Oct 2026 23:00:32 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 13 Oct 2026 23:00:32 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 13 Oct 2026 23:00:32 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 13 Oct 2026 23:00:43 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 13 Oct 2026 23:00:43 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 13 Oct 2026 23:00:43 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 23:00:43 GMT
ENV SHELL=/bin/bash
# Tue, 13 Oct 2026 23:00:43 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 13 Oct 2026 23:00:43 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 13 Oct 2026 23:00:43 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 13 Oct 2026 23:00:43 GMT
LABEL org.label-schema.build-date=2026-09-30T22:12:03.984586187Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=48acba663b09e70b115dd879329141506c377890 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T22:12:03.984586187Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=48acba663b09e70b115dd879329141506c377890 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Tue, 13 Oct 2026 23:00:43 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 13 Oct 2026 23:00:43 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 13 Oct 2026 23:00:43 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 23:00:43 GMT
CMD ["eswrapper"]
# Tue, 13 Oct 2026 23:00:43 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:3655575efb35316918c7e7d2cb81ae7db0e4613f7ffbbadb4980cc0549ac2834`  
		Last Modified: Tue, 13 Oct 2026 14:51:42 GMT  
		Size: 40.7 MB (40737290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4af0a8570e3173e59f6b7cb45cd93507c61f18131d3d8c32c5b9d4c5006ed61`  
		Last Modified: Tue, 13 Oct 2026 23:01:40 GMT  
		Size: 4.4 MB (4402563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3631aca735439c5c3569f015a79a6e58ce22557a47755c160400e4fe91dcb9`  
		Last Modified: Tue, 13 Oct 2026 23:01:40 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d85dab5512d8ecf9928e8b5ee9e9eeb750154e0ffa1a1bc6bdc7c1238fde2e6`  
		Last Modified: Tue, 13 Oct 2026 23:01:40 GMT  
		Size: 9.5 KB (9533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453ca5127746458282b62dd956c61b80a8fa6a1cf69ab810553afe14c09a501e`  
		Last Modified: Tue, 13 Oct 2026 23:01:57 GMT  
		Size: 850.6 MB (850623747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05449c3ace96232333fa3b25f5a1de636a9c8aa9294d95b645545a219fb81bce`  
		Last Modified: Tue, 13 Oct 2026 23:01:41 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c63471a0645f3cefe3aacf7570ddff136289d11a38baa8cce327c7384f22740`  
		Last Modified: Tue, 13 Oct 2026 23:01:41 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:168a8a566b4a9a4c51277cf49f229b8df8486521c98ce4922c8aca508048b131`  
		Last Modified: Tue, 13 Oct 2026 23:01:42 GMT  
		Size: 75.2 KB (75183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f6e7fe671c3eabaa0f1a9b7a115077b51a0af2ddc579085dda051c363a7d5f`  
		Last Modified: Tue, 13 Oct 2026 23:01:43 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:d3bca80ac994e5ce8a67bc58a31352357aef39f6615820134e95d96976d5defd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2471259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66542d081d46fd771603aeb7357b3df80ba31f0692c98258aefb40e53946d69a`

```dockerfile
```

-	Layers:
	-	`sha256:9747c41a2cd2da1cbe74f8db17bd16dde7c45f714a802618f001dca11bdd7165`  
		Last Modified: Tue, 13 Oct 2026 23:01:40 GMT  
		Size: 2.4 MB (2437475 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42b2cc77f6a5231e5e53c70392fabc7fb13257adbed4ff8eb90764aaf3c22045`  
		Last Modified: Tue, 13 Oct 2026 23:01:40 GMT  
		Size: 33.8 KB (33784 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.5.5` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:8da2a0a4525e25390b936907f8e39a7b5c6600322e3e5b0e6a1ea9751c475d94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **740.4 MB (740377261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:403dbccfdea99ef29e1b67d10c95715f7bfce0e196b3ba5c3f1ef9278fa4b208`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 13 Oct 2026 13:38:25 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 13 Oct 2026 13:38:26 GMT
ENV container oci
# Tue, 13 Oct 2026 13:38:27 GMT
COPY dir:e0a9e23521da92370ef8c1c702abc899055259c540969022f975e6a9a5db74eb in /      
# Tue, 13 Oct 2026 13:38:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 13:38:28 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 13:38:28 GMT
COPY dir:cb0d3172eff5b926f8d3aeafcff4dec012c6f16fa22d7fd5ba6222362588b316 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 13:38:29 GMT
COPY dir:cb0d3172eff5b926f8d3aeafcff4dec012c6f16fa22d7fd5ba6222362588b316 in /root/buildinfo/      
# Tue, 13 Oct 2026 13:38:29 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T13:37:55Z" "org.opencontainers.image.revision"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "build-date"="2026-10-13T13:37:55Z" "architecture"="aarch64" "vcs-ref"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "vcs-type"="git" "release"="1791898448"org.opencontainers.image.created=2026-10-13T13:37:55Z,org.opencontainers.image.revision=31c16e4570d0b2dd27707ce88c88f65b1212cf78
# Tue, 13 Oct 2026 22:57:46 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:57:46 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 13 Oct 2026 22:58:58 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 13 Oct 2026 22:58:58 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 13 Oct 2026 22:58:58 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 13 Oct 2026 22:59:06 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 13 Oct 2026 22:59:06 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 13 Oct 2026 22:59:06 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:59:06 GMT
ENV SHELL=/bin/bash
# Tue, 13 Oct 2026 22:59:06 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:59:06 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 13 Oct 2026 22:59:06 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 13 Oct 2026 22:59:06 GMT
LABEL org.label-schema.build-date=2026-09-30T22:12:03.984586187Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=48acba663b09e70b115dd879329141506c377890 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T22:12:03.984586187Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=48acba663b09e70b115dd879329141506c377890 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Tue, 13 Oct 2026 22:59:06 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 13 Oct 2026 22:59:06 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 13 Oct 2026 22:59:06 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 22:59:06 GMT
CMD ["eswrapper"]
# Tue, 13 Oct 2026 22:59:06 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:8aa74cd1ed0a010c9e42b8f13484468b32e94ff9405ce295cbde110e8119e733`  
		Last Modified: Tue, 13 Oct 2026 14:52:30 GMT  
		Size: 38.8 MB (38804143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec6473e6ba3fb6e0eebd10c65a083a5ed08d234ed25c49ace8c956455eb25163`  
		Last Modified: Tue, 13 Oct 2026 22:59:54 GMT  
		Size: 4.4 MB (4392865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e812dcfac0d58e0ea06737297da36cb71157063c09e156ca609e2fb4311a942c`  
		Last Modified: Tue, 13 Oct 2026 22:59:54 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fcc87e47db87722b35c4b6eeca80c01cd34d92a5f5eaad049f85de504c50c1`  
		Last Modified: Tue, 13 Oct 2026 22:59:54 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13f459d182e55b02d3d26e22b42282a70e41f08f68b069efb44d2bd76fcaf266`  
		Last Modified: Tue, 13 Oct 2026 23:00:06 GMT  
		Size: 697.1 MB (697091803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:286b20004d100dd0d0a58f8bb5574ab9d9ee4e9f19649af28e5e4ed1405e3b91`  
		Last Modified: Tue, 13 Oct 2026 22:59:55 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de8a0c6bbb04b28127a360132f794af031c443e43604d4c92040f854e208b044`  
		Last Modified: Tue, 13 Oct 2026 22:59:55 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facbb3ea857590331b5551e1d087133ed019120b3172cc9017f9a88d9851f927`  
		Last Modified: Tue, 13 Oct 2026 22:59:55 GMT  
		Size: 74.1 KB (74104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5067557a8822d72a0a4e1ed5bafb4cfa855f38bb43ec2b06d6584936234f8fd`  
		Last Modified: Tue, 13 Oct 2026 22:59:56 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:c9f6c05412d6153fbb381ed67aff10aaee3eb35c5f9673b3d50246785be693d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2470221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:063ab1b8e47e54f10c28e90d77279b47dd4312f229dd912345ac060b16eef8e0`

```dockerfile
```

-	Layers:
	-	`sha256:f2cd72484446d35168a980f9fac8f455a28896c84fb38b98601b0b92526b1852`  
		Last Modified: Tue, 13 Oct 2026 22:59:54 GMT  
		Size: 2.4 MB (2436255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30b26a5cf850470b696e91fbc4fed1a27a952853a8fb654a73c6d02c9d13b977`  
		Last Modified: Tue, 13 Oct 2026 22:59:53 GMT  
		Size: 34.0 KB (33966 bytes)  
		MIME: application/vnd.in-toto+json
