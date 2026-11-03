<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:8.19.23`](#elasticsearch81923)
-	[`elasticsearch:9.4.8`](#elasticsearch948)
-	[`elasticsearch:9.5.5`](#elasticsearch955)

## `elasticsearch:8.19.23`

```console
$ docker pull elasticsearch@sha256:ef5cafd961d7e273f13fed8def82e63c5ae0491106b5eecb5a69aa12d64f089b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:8.19.23` - linux; amd64

```console
$ docker pull elasticsearch@sha256:0901d9a1166b6f9864499db584a8d6d480d2ce15969cfd746ab3c40f1e2644d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **723.0 MB (723034357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c0e6134ddc59ad290a6ef244d412daf73d2877da7aacc56578a5cb2cda45bca`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:14:38 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Mon, 26 Oct 2026 23:14:39 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Mon, 26 Oct 2026 23:14:40 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 26 Oct 2026 23:14:40 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 26 Oct 2026 23:15:19 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Mon, 26 Oct 2026 23:15:19 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Mon, 26 Oct 2026 23:15:19 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:15:19 GMT
ENV SHELL=/bin/bash
# Mon, 26 Oct 2026 23:15:19 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:15:20 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Mon, 26 Oct 2026 23:15:20 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Mon, 26 Oct 2026 23:15:20 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Mon, 26 Oct 2026 23:15:20 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Mon, 26 Oct 2026 23:15:20 GMT
LABEL org.label-schema.build-date=2026-09-30T23:11:55.493565832Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=6940e499f8a38841809b8e295a20c6421c95d9e4 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.23 org.opencontainers.image.created=2026-09-30T23:11:55.493565832Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=6940e499f8a38841809b8e295a20c6421c95d9e4 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.23
# Mon, 26 Oct 2026 23:15:20 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:15:20 GMT
CMD ["eswrapper"]
# Mon, 26 Oct 2026 23:15:20 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a2dce1c910da6a266be8df41e2285766d3a9ac0b1842265da60e3799a89ec91`  
		Last Modified: Mon, 26 Oct 2026 23:16:13 GMT  
		Size: 4.5 MB (4461280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb4b5c50bd858e240ac1973e99e018a1eb7de334deee06a25e5ff8d04cfbbbf`  
		Last Modified: Mon, 26 Oct 2026 23:16:13 GMT  
		Size: 3.5 KB (3525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a8ec4ce850247e7fe37f8c8191ded4bfae2765b9148dfbeafefc103246373bd`  
		Last Modified: Mon, 26 Oct 2026 23:16:24 GMT  
		Size: 688.5 MB (688529574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:732740e3997dfad11bfdfc5774d802e14dda1b7d5c4f70747a34eaa61704df6e`  
		Last Modified: Mon, 26 Oct 2026 23:16:13 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11e7230fee3ac04da18af497c8cff6d50cfc276af17874b68e6dee7eda40fc22`  
		Last Modified: Mon, 26 Oct 2026 23:16:14 GMT  
		Size: 1.7 KB (1713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3458b5e77bf12600e859e7ae4f7299c5a0b29f57e12ac9e02fa81b626d7ba37`  
		Last Modified: Mon, 26 Oct 2026 23:16:14 GMT  
		Size: 164.2 KB (164189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f80c125e2088277edf9d15c53527535f9c768a3b013f5b6683721e2f1ceb540`  
		Last Modified: Mon, 26 Oct 2026 23:16:14 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccb2b1a84b51253e00237dd81b06bed5f38fdb19a44798a10e715ae9b3982366`  
		Last Modified: Mon, 26 Oct 2026 23:16:15 GMT  
		Size: 96.5 KB (96495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.23` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:0e2575dee48272c00a3d6763f59164fc22428ab471fcf9b539c549c9bfb78b9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3223160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afcd7d621bdb9046d994e2f5498211d088935a3530c7230558566b7e288e894e`

```dockerfile
```

-	Layers:
	-	`sha256:ff6e063c50abb629ea60352833ae34c28e7f30e6b71cd3a627022de2493cfeee`  
		Last Modified: Mon, 26 Oct 2026 23:16:13 GMT  
		Size: 3.2 MB (3186345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea7d6aa5a0cff169f74bd5486176243d82f116f3604c3ce4ec73451706ed1ad9`  
		Last Modified: Mon, 26 Oct 2026 23:16:13 GMT  
		Size: 36.8 KB (36815 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:8.19.23` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:ce3cb222f5875072fff3d4eb32af940c1f96e59b0e0642d6a6d0c77fe7ec6fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **571.1 MB (571077538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:581ae9aab5ba6ff685147ecafe7deffaafa15d18012d172bb1c090b58d26177c`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:19:04 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Mon, 26 Oct 2026 23:19:04 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Mon, 26 Oct 2026 23:19:04 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 26 Oct 2026 23:19:04 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 26 Oct 2026 23:20:07 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Mon, 26 Oct 2026 23:20:08 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Mon, 26 Oct 2026 23:20:08 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:20:08 GMT
ENV SHELL=/bin/bash
# Mon, 26 Oct 2026 23:20:08 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:20:08 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Mon, 26 Oct 2026 23:20:08 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Mon, 26 Oct 2026 23:20:08 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Mon, 26 Oct 2026 23:20:08 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Mon, 26 Oct 2026 23:20:08 GMT
LABEL org.label-schema.build-date=2026-09-30T23:11:55.493565832Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=6940e499f8a38841809b8e295a20c6421c95d9e4 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.23 org.opencontainers.image.created=2026-09-30T23:11:55.493565832Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=6940e499f8a38841809b8e295a20c6421c95d9e4 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.23
# Mon, 26 Oct 2026 23:20:08 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:20:08 GMT
CMD ["eswrapper"]
# Mon, 26 Oct 2026 23:20:08 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:715d635d7a46070fe87c9c116d1f3d0dd4544cd1a591cef4c0a177179145d578`  
		Last Modified: Mon, 26 Oct 2026 23:20:47 GMT  
		Size: 4.5 MB (4464924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49b1c7725f3e9c15b34d99f669817f8b5096ae15297aa77bfa81a3b7381cfe2a`  
		Last Modified: Mon, 26 Oct 2026 23:20:47 GMT  
		Size: 3.5 KB (3526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8fe2524e85f9af283cc2a0eb4c040d3021bd2f738d076798444bc9295b815e`  
		Last Modified: Mon, 26 Oct 2026 23:20:57 GMT  
		Size: 537.4 MB (537400507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca2fdca27079c93c1d7ad2c37815335c74ce49c3e5faef6a48115b326a3db49`  
		Last Modified: Mon, 26 Oct 2026 23:20:47 GMT  
		Size: 9.1 KB (9106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff1c9974e66d3c1404d186c89098679a08f60b7c6d75540db47cb1d1ed16d3d`  
		Last Modified: Mon, 26 Oct 2026 23:20:48 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c87a1b1043d77f6ce1b01dd1936796e0bc1d0dae484084ac373ace5519d54ccc`  
		Last Modified: Mon, 26 Oct 2026 23:20:49 GMT  
		Size: 160.7 KB (160694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d74ebf04861b78c36fd178a6148aab1837d21b8ef80619f55e915735e4f2839`  
		Last Modified: Mon, 26 Oct 2026 23:20:49 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40893256244385e34fc719d7aa6708978fa088ea65206e5fa930765ff141fed4`  
		Last Modified: Mon, 26 Oct 2026 23:20:50 GMT  
		Size: 96.5 KB (96499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.23` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:4d526bd2dcf51628a37742d739fd7b0007ad043de19da89d65e605aa5fd34c98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3223776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34b70d9a49f0e76e549ec193ee065dcae05a870229cfa3437d4861f4d6c64bbb`

```dockerfile
```

-	Layers:
	-	`sha256:c1ee48900fc889b757696d09d9e51054def83f1afe3e581fb4e232e643b6dd63`  
		Last Modified: Mon, 26 Oct 2026 23:20:47 GMT  
		Size: 3.2 MB (3186758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b034637a39723a96c3c1c47760fb060832837567130a56f0d2ff2121a40d2226`  
		Last Modified: Mon, 26 Oct 2026 23:20:47 GMT  
		Size: 37.0 KB (37018 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.4.8`

```console
$ docker pull elasticsearch@sha256:5f8be67eca5987b2ed57b8906fccd190db7a7066b83dd80480803e134399b0ce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.8` - linux; amd64

```console
$ docker pull elasticsearch@sha256:5baeb77413c3a1e68d5c4bac01f1d04cc4c78eb64606d4a0e825c8bc52dfdff3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **869.3 MB (869266241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fe8e45da573a1d58a82eba091b2e41f13c889afcaf01bb7b81ca7be4cb809a0`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 02 Nov 2026 00:24:06 GMT
ENV container oci
# Mon, 02 Nov 2026 00:24:06 GMT
COPY dir:cf1fefd4be4ce5fd82fa07ab19c9ebc91b7a3b97c257e48429ad961fafad7a2a in /      
# Mon, 02 Nov 2026 00:24:07 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 00:24:07 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 00:24:07 GMT
COPY dir:b80413ac409186f827c6d9af3ec402d8af6bb4a454f39ae79bbc5c2a9f19635c in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 00:24:07 GMT
COPY dir:b80413ac409186f827c6d9af3ec402d8af6bb4a454f39ae79bbc5c2a9f19635c in /root/buildinfo/      
# Mon, 02 Nov 2026 00:24:07 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T00:23:43Z" "org.opencontainers.image.revision"="dc4aefa4aecb10996718adb6435f6491abaff715" "build-date"="2026-11-02T00:23:43Z" "architecture"="x86_64" "vcs-ref"="dc4aefa4aecb10996718adb6435f6491abaff715" "vcs-type"="git" "release"="1793578971"org.opencontainers.image.created=2026-11-02T00:23:43Z,org.opencontainers.image.revision=dc4aefa4aecb10996718adb6435f6491abaff715
# Tue, 03 Nov 2026 00:55:26 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:55:26 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 03 Nov 2026 00:56:55 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 03 Nov 2026 00:56:55 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 03 Nov 2026 00:56:55 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 03 Nov 2026 00:57:06 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 03 Nov 2026 00:57:06 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 03 Nov 2026 00:57:06 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:57:06 GMT
ENV SHELL=/bin/bash
# Tue, 03 Nov 2026 00:57:06 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 00:57:06 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 03 Nov 2026 00:57:06 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 03 Nov 2026 00:57:06 GMT
LABEL org.label-schema.build-date=2026-10-01T01:07:34.887571291Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c042abbb0eaaaa61b49beef21d517468861a4db2 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-10-01T01:07:34.887571291Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c042abbb0eaaaa61b49beef21d517468861a4db2 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Tue, 03 Nov 2026 00:57:06 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 03 Nov 2026 00:57:06 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 03 Nov 2026 00:57:06 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:57:06 GMT
CMD ["eswrapper"]
# Tue, 03 Nov 2026 00:57:06 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:0811bc98b695d75fb388d477ae3bfd11d656060625574fd2cff4fde9fbb28941`  
		Last Modified: Mon, 02 Nov 2026 01:16:09 GMT  
		Size: 40.7 MB (40656388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40b411c8cc003f12c32967c8263f13d7ead377586b60818cd3770c9b2660748d`  
		Last Modified: Tue, 03 Nov 2026 00:58:02 GMT  
		Size: 4.4 MB (4396433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:777934c26de08f15455b8df239756c655cce4871946b1ad46ae661c0ec77a40d`  
		Last Modified: Tue, 03 Nov 2026 00:58:01 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4863de6f4ddaa7d277eee75f565f13290b1a62f7d3e75760d38f300c70c117a2`  
		Last Modified: Tue, 03 Nov 2026 00:58:01 GMT  
		Size: 9.5 KB (9533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a208b11b6f51194945ab3705e3f4bd8f3f86ba80df54fc5ee652157b6e8d75f8`  
		Last Modified: Tue, 03 Nov 2026 00:58:17 GMT  
		Size: 824.1 MB (824123456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3982bdc33cd861090371047b454d873f4b74703da5b10d3d94de44101e8d3978`  
		Last Modified: Tue, 03 Nov 2026 00:58:02 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7510d237dc3d3b858098c8a3d2f6ebec02a895875541fd94bd6cc3d46b814f3d`  
		Last Modified: Tue, 03 Nov 2026 00:58:02 GMT  
		Size: 1.7 KB (1721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2287acbee5ae8f39eeeeaba54934a7c73aa2faac46c386c8a1989efbb5ff74d`  
		Last Modified: Tue, 03 Nov 2026 00:58:03 GMT  
		Size: 75.2 KB (75188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3743bea5a4c52480c023a5299566671ecda0c7fdf204b86151ded5e1a357554e`  
		Last Modified: Tue, 03 Nov 2026 00:58:04 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:081c6d333a6cf3fd2472d9aeff780f44d6d189853fcb5627818a85ea4e19f5a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2401642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29e91eb5686e96ef0dbd2dc13cb4d0aa96604c594810ef2f445b7907fb49c31f`

```dockerfile
```

-	Layers:
	-	`sha256:5fcda7354bc5732775680f9b53230f8d380dbe50124d880418231a70f7fd3d99`  
		Last Modified: Tue, 03 Nov 2026 00:58:01 GMT  
		Size: 2.4 MB (2367859 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92c400442afaf79a4232f22f93150feacf8d979a3841bd0f1195c139084c05a9`  
		Last Modified: Tue, 03 Nov 2026 00:58:01 GMT  
		Size: 33.8 KB (33783 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.8` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:be91955c8d0de6947f359035e480caf949d9064dd5a7ed89015c4b7f78652a34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.9 MB (713885078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ccb9f4a39a4e2b63c91a0b69063fbf59a61aa5b7d88441a2aac513c380e66a0`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 02 Nov 2026 00:25:54 GMT
ENV container oci
# Mon, 02 Nov 2026 00:25:55 GMT
COPY dir:beed1d3a16575ec118f191761da739f3c3ef4d43b6f2d9506bd7c069a5485c34 in /      
# Mon, 02 Nov 2026 00:25:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 00:25:55 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 00:25:56 GMT
COPY dir:d04491bd234c5ba6fb79223a8b3de7ac6f96d8f78b91768d0baaaf3dfdcf46d8 in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 00:25:56 GMT
COPY dir:d04491bd234c5ba6fb79223a8b3de7ac6f96d8f78b91768d0baaaf3dfdcf46d8 in /root/buildinfo/      
# Mon, 02 Nov 2026 00:25:57 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T00:25:24Z" "org.opencontainers.image.revision"="dc4aefa4aecb10996718adb6435f6491abaff715" "build-date"="2026-11-02T00:25:24Z" "architecture"="aarch64" "vcs-ref"="dc4aefa4aecb10996718adb6435f6491abaff715" "vcs-type"="git" "release"="1793578971"org.opencontainers.image.created=2026-11-02T00:25:24Z,org.opencontainers.image.revision=dc4aefa4aecb10996718adb6435f6491abaff715
# Tue, 03 Nov 2026 00:55:35 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:55:35 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 03 Nov 2026 00:56:42 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 03 Nov 2026 00:56:42 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 03 Nov 2026 00:56:42 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 03 Nov 2026 00:56:49 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 03 Nov 2026 00:56:49 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 03 Nov 2026 00:56:49 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:56:49 GMT
ENV SHELL=/bin/bash
# Tue, 03 Nov 2026 00:56:49 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 00:56:50 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 03 Nov 2026 00:56:50 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 03 Nov 2026 00:56:50 GMT
LABEL org.label-schema.build-date=2026-10-01T01:07:34.887571291Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c042abbb0eaaaa61b49beef21d517468861a4db2 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-10-01T01:07:34.887571291Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c042abbb0eaaaa61b49beef21d517468861a4db2 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Tue, 03 Nov 2026 00:56:50 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 03 Nov 2026 00:56:50 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 03 Nov 2026 00:56:50 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:56:50 GMT
CMD ["eswrapper"]
# Tue, 03 Nov 2026 00:56:50 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:523fc0b16ef3fb709fb87d6929dec51b632bf658c79e38ac795e0e360eb9a90c`  
		Last Modified: Mon, 02 Nov 2026 01:16:09 GMT  
		Size: 38.8 MB (38764189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac231099aa2f2860f67c32c89bb0bc0aa8394566f10073071cd0070071f35032`  
		Last Modified: Tue, 03 Nov 2026 00:57:36 GMT  
		Size: 4.4 MB (4389472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d58c9d3425c469b4b1bfaa81f5293978421ae1beb08d52ae62638a61c2e91f`  
		Last Modified: Tue, 03 Nov 2026 00:57:36 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11ed18ca28e54df1f318bd8745e876547b2b075febf653d167a8ce5c3832af5f`  
		Last Modified: Tue, 03 Nov 2026 00:57:36 GMT  
		Size: 9.1 KB (9103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2df7377743bd2a22bde48cceb3aa0a74fd9f82dea628f783d7afea97955d76a2`  
		Last Modified: Tue, 03 Nov 2026 00:57:47 GMT  
		Size: 670.6 MB (670642958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe1f1ce8c4ba4c84a30d20f162de49ca5f7f680a2827f859d42580492899c27`  
		Last Modified: Tue, 03 Nov 2026 00:57:37 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ad8c48ea25312c389070b8f0f00dbf5c58a9d78512c28e0b8e5b32dcf0ef77`  
		Last Modified: Tue, 03 Nov 2026 00:57:37 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87a72c92066761de4846f9001be2da069bfbb16427ad5222947044b224e9fba`  
		Last Modified: Tue, 03 Nov 2026 00:57:37 GMT  
		Size: 74.1 KB (74111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0a17886c2ebcdb31c3f5e024217d9d6655bf608350b520d65063c12572d986e`  
		Last Modified: Tue, 03 Nov 2026 00:57:38 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:f14864a98d75adc7df1f140254d2e4a1b805d1852dbdfad3abd0261ac46eb017
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2400605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb3557df5b2bf0d8d923a6bf07ddbf8d79d35e19e0c7039261ed07aa738a6b22`

```dockerfile
```

-	Layers:
	-	`sha256:0d635e3eb2e4f0581970b15a1c0581f154e061f9519370e89786cd31865bec91`  
		Last Modified: Tue, 03 Nov 2026 00:57:36 GMT  
		Size: 2.4 MB (2366639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5753fad029927f722ab4e5bb3d80adec0e5ab1ae116850cc0b7a0589779d7f7`  
		Last Modified: Tue, 03 Nov 2026 00:57:36 GMT  
		Size: 34.0 KB (33966 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.5.5`

```console
$ docker pull elasticsearch@sha256:764a939891119d97e130b4d5da196c330afb2338382ada9e1b9b7943ce6707df
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.5.5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:921857a4e493457ae5a31e763729992c705f38d60ba610ab5daee523b4716012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **895.8 MB (895766541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf38ed1e48f0e8436f7dd61328ecff68f106733d658c14a8d9d59a01c3e0a27`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 00:24:05 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 00:24:06 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 02 Nov 2026 00:24:06 GMT
ENV container oci
# Mon, 02 Nov 2026 00:24:06 GMT
COPY dir:cf1fefd4be4ce5fd82fa07ab19c9ebc91b7a3b97c257e48429ad961fafad7a2a in /      
# Mon, 02 Nov 2026 00:24:07 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 00:24:07 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 00:24:07 GMT
COPY dir:b80413ac409186f827c6d9af3ec402d8af6bb4a454f39ae79bbc5c2a9f19635c in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 00:24:07 GMT
COPY dir:b80413ac409186f827c6d9af3ec402d8af6bb4a454f39ae79bbc5c2a9f19635c in /root/buildinfo/      
# Mon, 02 Nov 2026 00:24:07 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T00:23:43Z" "org.opencontainers.image.revision"="dc4aefa4aecb10996718adb6435f6491abaff715" "build-date"="2026-11-02T00:23:43Z" "architecture"="x86_64" "vcs-ref"="dc4aefa4aecb10996718adb6435f6491abaff715" "vcs-type"="git" "release"="1793578971"org.opencontainers.image.created=2026-11-02T00:23:43Z,org.opencontainers.image.revision=dc4aefa4aecb10996718adb6435f6491abaff715
# Tue, 03 Nov 2026 00:55:29 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:55:29 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 03 Nov 2026 01:01:37 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 03 Nov 2026 01:01:37 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 03 Nov 2026 01:01:37 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 03 Nov 2026 01:01:48 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 03 Nov 2026 01:01:49 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 03 Nov 2026 01:01:49 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 01:01:49 GMT
ENV SHELL=/bin/bash
# Tue, 03 Nov 2026 01:01:49 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 01:01:49 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 03 Nov 2026 01:01:49 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 03 Nov 2026 01:01:49 GMT
LABEL org.label-schema.build-date=2026-09-30T22:12:03.984586187Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=48acba663b09e70b115dd879329141506c377890 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T22:12:03.984586187Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=48acba663b09e70b115dd879329141506c377890 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Tue, 03 Nov 2026 01:01:49 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 03 Nov 2026 01:01:49 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 03 Nov 2026 01:01:49 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 03 Nov 2026 01:01:49 GMT
CMD ["eswrapper"]
# Tue, 03 Nov 2026 01:01:49 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:0811bc98b695d75fb388d477ae3bfd11d656060625574fd2cff4fde9fbb28941`  
		Last Modified: Mon, 02 Nov 2026 01:16:09 GMT  
		Size: 40.7 MB (40656388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af36ba7aeaffdcd7f185cd58a5c7f8b4c1f5176907389374e984e54f68f984c`  
		Last Modified: Tue, 03 Nov 2026 01:02:45 GMT  
		Size: 4.4 MB (4396413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:287825d35b3fea4e19125e1a0dc1d8392f93bad4f93e963f075318a42f39640e`  
		Last Modified: Tue, 03 Nov 2026 01:02:45 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912f4fca966747e8efb0ccd03eb075f7baa59396412111fe18e23f59e63a73b5`  
		Last Modified: Tue, 03 Nov 2026 01:02:44 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a82631098df20c79581f5984b5a2ff3914269dcc06043e2ccd2e69518ea9eeef`  
		Last Modified: Tue, 03 Nov 2026 01:03:00 GMT  
		Size: 850.6 MB (850623775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78b41ed90668eaf6a56d0cc05afca4992ed24e54b66b6e8ace0fcc8157c86ee`  
		Last Modified: Tue, 03 Nov 2026 01:02:46 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dac396bb392bdb5bdf1e2bd65feb2dc25531988b912f9059ab745155ba303c4`  
		Last Modified: Tue, 03 Nov 2026 01:02:46 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae43765cd4fb7e7fdd003084127b2c92387420f2a5bff5eff73cc147793b1923`  
		Last Modified: Tue, 03 Nov 2026 01:02:46 GMT  
		Size: 75.2 KB (75189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab0609c4b7b450a3e5133c17f32bb44750a985b281240942c762ec3e033e6d9`  
		Last Modified: Tue, 03 Nov 2026 01:02:47 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:1efc164af7b532765169267df7cd544d7edcc6bff479d96b9e10c612ec8667a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2452724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb381a5e89605e11972812c56f0975171ae7f560082f6899b00b0d19ac5a9423`

```dockerfile
```

-	Layers:
	-	`sha256:515288bae652920814a1d5a17c6ccabff7405ebeb2621582a7db28d3229f7361`  
		Last Modified: Tue, 03 Nov 2026 01:02:45 GMT  
		Size: 2.4 MB (2418940 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31186d66d6e40c492daf872945c04588f32aea589fb1080fab3a9b3787a853e8`  
		Last Modified: Tue, 03 Nov 2026 01:02:44 GMT  
		Size: 33.8 KB (33784 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.5.5` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:406df1f8dc3e56226ca31241012ca14f50c409586a44bacd2f84f8a1b9aee08f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **740.3 MB (740333934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0ada22f19838170f898d4e6e81f4b4affecca3177426aabec7ecdb3e7ffda63`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 02 Nov 2026 00:25:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 00:25:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 02 Nov 2026 00:25:54 GMT
ENV container oci
# Mon, 02 Nov 2026 00:25:55 GMT
COPY dir:beed1d3a16575ec118f191761da739f3c3ef4d43b6f2d9506bd7c069a5485c34 in /      
# Mon, 02 Nov 2026 00:25:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 00:25:55 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 00:25:56 GMT
COPY dir:d04491bd234c5ba6fb79223a8b3de7ac6f96d8f78b91768d0baaaf3dfdcf46d8 in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 00:25:56 GMT
COPY dir:d04491bd234c5ba6fb79223a8b3de7ac6f96d8f78b91768d0baaaf3dfdcf46d8 in /root/buildinfo/      
# Mon, 02 Nov 2026 00:25:57 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T00:25:24Z" "org.opencontainers.image.revision"="dc4aefa4aecb10996718adb6435f6491abaff715" "build-date"="2026-11-02T00:25:24Z" "architecture"="aarch64" "vcs-ref"="dc4aefa4aecb10996718adb6435f6491abaff715" "vcs-type"="git" "release"="1793578971"org.opencontainers.image.created=2026-11-02T00:25:24Z,org.opencontainers.image.revision=dc4aefa4aecb10996718adb6435f6491abaff715
# Tue, 03 Nov 2026 00:55:34 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 03 Nov 2026 00:55:34 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 03 Nov 2026 00:56:05 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 03 Nov 2026 00:56:05 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 03 Nov 2026 00:56:05 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 03 Nov 2026 00:56:13 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 03 Nov 2026 00:56:13 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 03 Nov 2026 00:56:13 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:56:13 GMT
ENV SHELL=/bin/bash
# Tue, 03 Nov 2026 00:56:13 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 00:56:13 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 03 Nov 2026 00:56:13 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 03 Nov 2026 00:56:13 GMT
LABEL org.label-schema.build-date=2026-09-30T22:12:03.984586187Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=48acba663b09e70b115dd879329141506c377890 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T22:12:03.984586187Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=48acba663b09e70b115dd879329141506c377890 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Tue, 03 Nov 2026 00:56:13 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 03 Nov 2026 00:56:13 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 03 Nov 2026 00:56:13 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 03 Nov 2026 00:56:13 GMT
CMD ["eswrapper"]
# Tue, 03 Nov 2026 00:56:13 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:523fc0b16ef3fb709fb87d6929dec51b632bf658c79e38ac795e0e360eb9a90c`  
		Last Modified: Mon, 02 Nov 2026 01:16:09 GMT  
		Size: 38.8 MB (38764189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b724b676c3383c48132e6fad3200a010a7c5c8d82ac49bb26daff59db09108`  
		Last Modified: Tue, 03 Nov 2026 00:56:59 GMT  
		Size: 4.4 MB (4389475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a82fe24f077ca2211288298b52a535e830de46fe91cdf442e1716de6261ae8f`  
		Last Modified: Tue, 03 Nov 2026 00:56:59 GMT  
		Size: 1.5 KB (1528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1188401217563703176bdb1264dfe0b56e3b0b35f5028ef39cc57b719e5c50`  
		Last Modified: Tue, 03 Nov 2026 00:56:59 GMT  
		Size: 9.1 KB (9098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5a16c54f49feb2577664c2b354dc42f497b1164d0789a78fd63d82aec7390e8`  
		Last Modified: Tue, 03 Nov 2026 00:57:14 GMT  
		Size: 697.1 MB (697091828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc020dc001fa8e31672ac5c0b14629966787b740eaeeb73a818528343f791272`  
		Last Modified: Tue, 03 Nov 2026 00:57:00 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:659575adea15ae9aea6c4fa7ac210d5273fc09547ce80e806e04f12b06aa6ca8`  
		Last Modified: Tue, 03 Nov 2026 00:57:00 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ef104e32d75e56317be16cbbc919cb6322dfc9f3c703a6d675f4e14e1c09f9f`  
		Last Modified: Tue, 03 Nov 2026 00:57:00 GMT  
		Size: 74.1 KB (74103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f59e60294f09d7084aefd871d9990511ef4bd843b3d95098f3a8d03e7583e4`  
		Last Modified: Tue, 03 Nov 2026 00:57:02 GMT  
		Size: 1.7 KB (1693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:ed2f8a1442fa3af5251d94a601db88fc03b58f369c2a109147f167a943eb1000
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2451686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f486050aa376885fe3cc2e36505da94966709f3181770e4b61dd2d34102e7ff`

```dockerfile
```

-	Layers:
	-	`sha256:d16e7cd9f86c7784180289f6690e94993f158ea7743e467dbd51f2df72019e5a`  
		Last Modified: Tue, 03 Nov 2026 00:56:59 GMT  
		Size: 2.4 MB (2417720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d946fda22912d30eadece0636060ac77c53941b5ec594235769cf80a9c6c49f0`  
		Last Modified: Tue, 03 Nov 2026 00:56:59 GMT  
		Size: 34.0 KB (33966 bytes)  
		MIME: application/vnd.in-toto+json
