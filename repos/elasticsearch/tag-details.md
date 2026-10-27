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
$ docker pull elasticsearch@sha256:0132ea015df53e66d2dae4bf45c873491376226017db34a724810442154fba18
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.8` - linux; amd64

```console
$ docker pull elasticsearch@sha256:8f7508dff5bfe36edbe3ad83a8428a75ada3a09153cd06ab1c51856da92df796
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **869.3 MB (869263115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192feea6b8abccfd561fb6f489b17349785850fb65953b3b60fdc052c8107814`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.openshift.expose-services=""
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 26 Oct 2026 21:34:11 GMT
ENV container oci
# Mon, 26 Oct 2026 21:34:12 GMT
COPY dir:0bbd26efdf764fb2a803e39c5f9309efe9ad8dccb284af5b7fa3a1cebd98b694 in /      
# Mon, 26 Oct 2026 21:34:12 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 26 Oct 2026 21:34:12 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 21:34:12 GMT
COPY dir:bccb91511254896ec73fa490978e787e07440fafd7ecf802fe25adcbef4f6383 in /usr/share/buildinfo/      
# Mon, 26 Oct 2026 21:34:13 GMT
COPY dir:bccb91511254896ec73fa490978e787e07440fafd7ecf802fe25adcbef4f6383 in /root/buildinfo/      
# Mon, 26 Oct 2026 21:34:13 GMT
LABEL "org.opencontainers.image.created"="2026-10-26T21:33:49Z" "org.opencontainers.image.revision"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "build-date"="2026-10-26T21:33:49Z" "architecture"="x86_64" "vcs-ref"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "vcs-type"="git" "release"="1793050346"org.opencontainers.image.created=2026-10-26T21:33:49Z,org.opencontainers.image.revision=8b3700629f01b12b6b7b939daabd7c1a5c7026bb
# Tue, 27 Oct 2026 17:44:26 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 27 Oct 2026 17:44:26 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 27 Oct 2026 17:45:52 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 27 Oct 2026 17:45:52 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 27 Oct 2026 17:45:52 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 27 Oct 2026 17:46:03 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 27 Oct 2026 17:46:03 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 27 Oct 2026 17:46:03 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:46:03 GMT
ENV SHELL=/bin/bash
# Tue, 27 Oct 2026 17:46:03 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 27 Oct 2026 17:46:04 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 27 Oct 2026 17:46:04 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 27 Oct 2026 17:46:04 GMT
LABEL org.label-schema.build-date=2026-10-01T01:07:34.887571291Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c042abbb0eaaaa61b49beef21d517468861a4db2 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-10-01T01:07:34.887571291Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c042abbb0eaaaa61b49beef21d517468861a4db2 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Tue, 27 Oct 2026 17:46:04 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 27 Oct 2026 17:46:04 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 27 Oct 2026 17:46:04 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:46:04 GMT
CMD ["eswrapper"]
# Tue, 27 Oct 2026 17:46:04 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:8f4a4ef7ec87af1eb84ab8382222fe461e965d7d1c9f8b34dd0890b7009a51bb`  
		Last Modified: Mon, 26 Oct 2026 23:50:49 GMT  
		Size: 40.7 MB (40654237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b969b940388e1af9f97b722f2b83bf4bae9b35ad71e09fb1427558596fa201a0`  
		Last Modified: Tue, 27 Oct 2026 17:47:00 GMT  
		Size: 4.4 MB (4395518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a63ac7617af39d8d70fe9ae1d9e50083c55f5acc892594df9a4d6e396898abf`  
		Last Modified: Tue, 27 Oct 2026 17:47:00 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6645f0231e25ffa7338cf7ae3f0b411364aa368b0c168f23f4d715de5770403d`  
		Last Modified: Tue, 27 Oct 2026 17:47:00 GMT  
		Size: 9.5 KB (9533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e0e7a632b5d4d2db792f94aee2246823d59766dba5bb6abd8ccec1b1f9e9fb4`  
		Last Modified: Tue, 27 Oct 2026 17:47:16 GMT  
		Size: 824.1 MB (824123397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37fa37b8fbbf350fcb21453013ce4a3082ff926d363e9beb0977de463a94d52f`  
		Last Modified: Tue, 27 Oct 2026 17:47:01 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a597fe3b40c2260e692dcccc4931f46d962aed2e7e97616b88e4ba46fd7b4cbc`  
		Last Modified: Tue, 27 Oct 2026 17:47:01 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d4384bcf9dfc7566f00924135f43ff96f6ebdb9e12561b72bf4d03228003483`  
		Last Modified: Tue, 27 Oct 2026 17:47:01 GMT  
		Size: 75.2 KB (75183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c027d3e14ccb82def64dfbe2eb45f9f1726fec6ab34c793832a525f85fabf0b`  
		Last Modified: Tue, 27 Oct 2026 17:47:02 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:29dbaba12281d22ae5be56794757c034dcd7187616cc7e9fbb86dcc851c00b8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2401635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0553e15000c3eba2e1f4e3c314b3bef5cf580cd7e72b2312d6f5f2e48d49a70`

```dockerfile
```

-	Layers:
	-	`sha256:94ee9e1d823859662b6db101066173977cdc3b71bed25bc46a5d7d2debea41f7`  
		Last Modified: Tue, 27 Oct 2026 17:47:00 GMT  
		Size: 2.4 MB (2367851 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6813d4eeebf37643258b773323cd94355b778c3f827d1bb444be957b0040210`  
		Last Modified: Tue, 27 Oct 2026 17:47:00 GMT  
		Size: 33.8 KB (33784 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.8` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:da07e688238357c196dd0de76ffe66c42f6df1505d90f736a86b2bc768db77e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.8 MB (713824639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd018fc34552e4d87fbe8f8c1f0dfef55e01700c131d15741acd3fe2d05783bc`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.openshift.expose-services=""
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 26 Oct 2026 21:35:43 GMT
ENV container oci
# Mon, 26 Oct 2026 21:35:44 GMT
COPY dir:4514a7c12566dae98fd88118fcb921951dfe1c5fb68bcd967fa7403f502ed7b3 in /      
# Mon, 26 Oct 2026 21:35:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 26 Oct 2026 21:35:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 21:35:45 GMT
COPY dir:c38a861e2747d356888cd619d2f45be75d2e7b4ef861b9622c424d2044b8abe0 in /usr/share/buildinfo/      
# Mon, 26 Oct 2026 21:35:45 GMT
COPY dir:c38a861e2747d356888cd619d2f45be75d2e7b4ef861b9622c424d2044b8abe0 in /root/buildinfo/      
# Mon, 26 Oct 2026 21:35:46 GMT
LABEL "org.opencontainers.image.created"="2026-10-26T21:35:14Z" "org.opencontainers.image.revision"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "build-date"="2026-10-26T21:35:14Z" "architecture"="aarch64" "vcs-ref"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "vcs-type"="git" "release"="1793050346"org.opencontainers.image.created=2026-10-26T21:35:14Z,org.opencontainers.image.revision=8b3700629f01b12b6b7b939daabd7c1a5c7026bb
# Tue, 27 Oct 2026 17:41:09 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 27 Oct 2026 17:41:09 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 27 Oct 2026 17:42:17 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 27 Oct 2026 17:42:17 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 27 Oct 2026 17:42:17 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 27 Oct 2026 17:42:24 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 27 Oct 2026 17:42:24 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 27 Oct 2026 17:42:24 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:42:24 GMT
ENV SHELL=/bin/bash
# Tue, 27 Oct 2026 17:42:24 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 27 Oct 2026 17:42:25 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 27 Oct 2026 17:42:25 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 27 Oct 2026 17:42:25 GMT
LABEL org.label-schema.build-date=2026-10-01T01:07:34.887571291Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c042abbb0eaaaa61b49beef21d517468861a4db2 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-10-01T01:07:34.887571291Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c042abbb0eaaaa61b49beef21d517468861a4db2 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Tue, 27 Oct 2026 17:42:25 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 27 Oct 2026 17:42:25 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 27 Oct 2026 17:42:25 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:42:25 GMT
CMD ["eswrapper"]
# Tue, 27 Oct 2026 17:42:25 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:2b634c6fd82e08c6136245eb9edf17629696bc4de0436c0eaad35e2a1f3e8050`  
		Last Modified: Mon, 26 Oct 2026 23:50:49 GMT  
		Size: 38.7 MB (38703543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9872c72652a5fa27bc44cd89a86f1e8abd3ec829b9d722de0890c215691c0ce6`  
		Last Modified: Tue, 27 Oct 2026 17:43:10 GMT  
		Size: 4.4 MB (4389682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99764b4ef998493a0021b78668a0434e6cd983cf2212cf06e9ed9178c2072d3e`  
		Last Modified: Tue, 27 Oct 2026 17:43:10 GMT  
		Size: 1.5 KB (1528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf42ef91d778359b7bfa4e834abee226a9bafcc72f0fc10a14d992d3e0542de4`  
		Last Modified: Tue, 27 Oct 2026 17:43:10 GMT  
		Size: 9.1 KB (9104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93ac121f915af0d1109207f379056e6619d13f2c949b98e24c37b593ade620ed`  
		Last Modified: Tue, 27 Oct 2026 17:43:22 GMT  
		Size: 670.6 MB (670642955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f2035dcfc48c00734325e198079ec960cdc1d2d570232d03a166fc23c9225f2`  
		Last Modified: Tue, 27 Oct 2026 17:43:11 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cda1023af3952a69b43d8a14e84f659aaa8fbdbc13383bb39ce275e0aeec9c9`  
		Last Modified: Tue, 27 Oct 2026 17:43:11 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cadf5abadfbec542213bc63bec8b2574e30ba6be0a6a2954978dce76d47326ef`  
		Last Modified: Tue, 27 Oct 2026 17:43:11 GMT  
		Size: 74.1 KB (74113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cfcffa5aeb9588e915220023dc75f624c2771621c59baa2df06ffd3e4011929`  
		Last Modified: Tue, 27 Oct 2026 17:43:12 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:d494b5d23f04d342f59c83e1a37fd1c78ed2db045f663592d0c133f78976a557
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2400597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d630ed9726530c5496e4038d78444a16a1d20cd9a57e79cb18f3209621a605eb`

```dockerfile
```

-	Layers:
	-	`sha256:1d7c217845340eec9096a0fecdf01cbdc06888d8f62bbb5dd264d6396e55b2bc`  
		Last Modified: Tue, 27 Oct 2026 17:43:10 GMT  
		Size: 2.4 MB (2366631 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87a9960f1a63d5c2d1f06a17b415cc43c20f164f2f18221506051ce2f5f0a1a4`  
		Last Modified: Tue, 27 Oct 2026 17:43:10 GMT  
		Size: 34.0 KB (33966 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.5.5`

```console
$ docker pull elasticsearch@sha256:1f537272deddf92b5c94bcaeb25180c2d0e1558f7d21bcbaf3fdaa74400c4607
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.5.5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:5f017fd21ebd1939df294ce4b27b0a75a4aaea8687d6b00e9a483ee0d63b46ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **895.8 MB (895763544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f647d94fd42c0d0ccba34a6fada8d154cc4f866d5a0a9c90eb89ce86bde752`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.openshift.expose-services=""
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 26 Oct 2026 21:34:11 GMT
ENV container oci
# Mon, 26 Oct 2026 21:34:12 GMT
COPY dir:0bbd26efdf764fb2a803e39c5f9309efe9ad8dccb284af5b7fa3a1cebd98b694 in /      
# Mon, 26 Oct 2026 21:34:12 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 26 Oct 2026 21:34:12 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 21:34:12 GMT
COPY dir:bccb91511254896ec73fa490978e787e07440fafd7ecf802fe25adcbef4f6383 in /usr/share/buildinfo/      
# Mon, 26 Oct 2026 21:34:13 GMT
COPY dir:bccb91511254896ec73fa490978e787e07440fafd7ecf802fe25adcbef4f6383 in /root/buildinfo/      
# Mon, 26 Oct 2026 21:34:13 GMT
LABEL "org.opencontainers.image.created"="2026-10-26T21:33:49Z" "org.opencontainers.image.revision"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "build-date"="2026-10-26T21:33:49Z" "architecture"="x86_64" "vcs-ref"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "vcs-type"="git" "release"="1793050346"org.opencontainers.image.created=2026-10-26T21:33:49Z,org.opencontainers.image.revision=8b3700629f01b12b6b7b939daabd7c1a5c7026bb
# Tue, 27 Oct 2026 17:44:16 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 27 Oct 2026 17:44:16 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 27 Oct 2026 17:44:53 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 27 Oct 2026 17:44:53 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 27 Oct 2026 17:44:53 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 27 Oct 2026 17:45:04 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 27 Oct 2026 17:45:04 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 27 Oct 2026 17:45:04 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:45:04 GMT
ENV SHELL=/bin/bash
# Tue, 27 Oct 2026 17:45:04 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 27 Oct 2026 17:45:04 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 27 Oct 2026 17:45:04 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 27 Oct 2026 17:45:04 GMT
LABEL org.label-schema.build-date=2026-09-30T22:12:03.984586187Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=48acba663b09e70b115dd879329141506c377890 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T22:12:03.984586187Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=48acba663b09e70b115dd879329141506c377890 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Tue, 27 Oct 2026 17:45:04 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 27 Oct 2026 17:45:04 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 27 Oct 2026 17:45:04 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:45:04 GMT
CMD ["eswrapper"]
# Tue, 27 Oct 2026 17:45:04 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:8f4a4ef7ec87af1eb84ab8382222fe461e965d7d1c9f8b34dd0890b7009a51bb`  
		Last Modified: Mon, 26 Oct 2026 23:50:49 GMT  
		Size: 40.7 MB (40654237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5207780cb9ec8bbd490139d63b6f668df1f4b1b9b7527423c63f49da269ec93e`  
		Last Modified: Tue, 27 Oct 2026 17:46:02 GMT  
		Size: 4.4 MB (4395523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed885eef1dedaf20ddcace8efe51a463432c8e2fb41256569f0ea8a08435d25`  
		Last Modified: Tue, 27 Oct 2026 17:46:02 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef3d426dbbc967049e4cda7f5539cbeb368983d4bf379c2750cacc54ce96a243`  
		Last Modified: Tue, 27 Oct 2026 17:46:02 GMT  
		Size: 9.5 KB (9534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9e7b30769925901a4fa399ee28d31de7d41db9bb6e457bc783d486e12e3b530`  
		Last Modified: Tue, 27 Oct 2026 17:46:18 GMT  
		Size: 850.6 MB (850623814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c3482fd050910f306deabacc5be0da2fd282e9dc9d0a096d73a50307e5ee8cd`  
		Last Modified: Tue, 27 Oct 2026 17:46:03 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:473a453d6db0503246eac88f4b99d41496b8933accff185bac8c55fa433e9823`  
		Last Modified: Tue, 27 Oct 2026 17:46:04 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e56ff88112bba284e75e7ed0bacd982da72bbea6bffd0e5db2a91646f507bf`  
		Last Modified: Tue, 27 Oct 2026 17:46:04 GMT  
		Size: 75.2 KB (75190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4bbc35dbab3486e1c2430d87e77afb35a9a8dba5a874c5858f4dc279346e7da`  
		Last Modified: Tue, 27 Oct 2026 17:46:05 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:b8ae0a9b6e03a213d1cbefce0c4ffd31988607b52ee75481c9a3b452939ee0fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2452715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9899847f88c92f5380d0314a94aa674dada5da0c6a8c9c41618fb3ffcc185463`

```dockerfile
```

-	Layers:
	-	`sha256:28b4eaabeaa291c91053a567fd020ce00947bfec2c25f9b667774020bed44866`  
		Last Modified: Tue, 27 Oct 2026 17:46:02 GMT  
		Size: 2.4 MB (2418932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10aad37dd6fb50884a2ada02027dc116b5432934624129c242ea5802549a79a2`  
		Last Modified: Tue, 27 Oct 2026 17:46:02 GMT  
		Size: 33.8 KB (33783 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.5.5` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:34cccd4b0b73d0898e71dcc81d67908424635ad9857b1c9c77e34487376e13da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **740.3 MB (740273485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c89219b99592680f4857f92a395a56e3d07febc22b938f5e35b00babc2a3f20d`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.openshift.expose-services=""
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 26 Oct 2026 21:35:43 GMT
ENV container oci
# Mon, 26 Oct 2026 21:35:44 GMT
COPY dir:4514a7c12566dae98fd88118fcb921951dfe1c5fb68bcd967fa7403f502ed7b3 in /      
# Mon, 26 Oct 2026 21:35:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 26 Oct 2026 21:35:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 21:35:45 GMT
COPY dir:c38a861e2747d356888cd619d2f45be75d2e7b4ef861b9622c424d2044b8abe0 in /usr/share/buildinfo/      
# Mon, 26 Oct 2026 21:35:45 GMT
COPY dir:c38a861e2747d356888cd619d2f45be75d2e7b4ef861b9622c424d2044b8abe0 in /root/buildinfo/      
# Mon, 26 Oct 2026 21:35:46 GMT
LABEL "org.opencontainers.image.created"="2026-10-26T21:35:14Z" "org.opencontainers.image.revision"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "build-date"="2026-10-26T21:35:14Z" "architecture"="aarch64" "vcs-ref"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "vcs-type"="git" "release"="1793050346"org.opencontainers.image.created=2026-10-26T21:35:14Z,org.opencontainers.image.revision=8b3700629f01b12b6b7b939daabd7c1a5c7026bb
# Tue, 27 Oct 2026 17:41:14 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 27 Oct 2026 17:41:14 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 27 Oct 2026 17:42:58 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 27 Oct 2026 17:42:58 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 27 Oct 2026 17:42:58 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 27 Oct 2026 17:43:06 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 27 Oct 2026 17:43:06 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 27 Oct 2026 17:43:06 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:43:06 GMT
ENV SHELL=/bin/bash
# Tue, 27 Oct 2026 17:43:06 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 27 Oct 2026 17:43:06 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 27 Oct 2026 17:43:06 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 27 Oct 2026 17:43:06 GMT
LABEL org.label-schema.build-date=2026-09-30T22:12:03.984586187Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=48acba663b09e70b115dd879329141506c377890 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T22:12:03.984586187Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=48acba663b09e70b115dd879329141506c377890 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Tue, 27 Oct 2026 17:43:06 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 27 Oct 2026 17:43:06 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 27 Oct 2026 17:43:06 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:43:06 GMT
CMD ["eswrapper"]
# Tue, 27 Oct 2026 17:43:06 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:2b634c6fd82e08c6136245eb9edf17629696bc4de0436c0eaad35e2a1f3e8050`  
		Last Modified: Mon, 26 Oct 2026 23:50:49 GMT  
		Size: 38.7 MB (38703543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8689400e3253997a4f60cc7db525dc340aded6b48d2692d8ff07a4e96d00b087`  
		Last Modified: Tue, 27 Oct 2026 17:43:53 GMT  
		Size: 4.4 MB (4389685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2c3567f938ec2a8c1832ab432b7e6faf50724968b7c70b6a574cb414769dbb`  
		Last Modified: Tue, 27 Oct 2026 17:43:53 GMT  
		Size: 1.5 KB (1531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf0901bf7192ac4d69645f52e350d2f4c2862a68f119109fb77048bc5a47563`  
		Last Modified: Tue, 27 Oct 2026 17:43:53 GMT  
		Size: 9.1 KB (9098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:877807e57c068da0f234a5338919cd760a5ba89639858a1ad7fd1b9a7d9bcb19`  
		Last Modified: Tue, 27 Oct 2026 17:44:06 GMT  
		Size: 697.1 MB (697091803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b2b67576733dfdd13aadde6e897c40ea1de051813c0de3648c05e06e8c3dab`  
		Last Modified: Tue, 27 Oct 2026 17:43:54 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df5da5c05c24573779076e8691a51686bc526b3f0e41570f89bb159a00dbf75`  
		Last Modified: Tue, 27 Oct 2026 17:43:54 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5865f01f1fd3d6376481d7b26a0e495e84cb64201e4d0e57101167f1d4fbe112`  
		Last Modified: Tue, 27 Oct 2026 17:43:55 GMT  
		Size: 74.1 KB (74109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ab7a714237a4e8b7ab02ae0b8642d368ba5f7a8dba49fc7cbf0606481f50be`  
		Last Modified: Tue, 27 Oct 2026 17:43:56 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:047ccf67019336dbf05d862fe472255545d270975ebe39a05fbb5ffd01ef7b6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2451676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d0550c30695acbb4066afb27daaac91ab3e46a30bc6d3bd87de9441be5e2c4c`

```dockerfile
```

-	Layers:
	-	`sha256:b4b4c63f5df44330f7e0803f52fdb6becf7906421ac9ea96fd138644acd356da`  
		Last Modified: Tue, 27 Oct 2026 17:43:53 GMT  
		Size: 2.4 MB (2417712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d0b061eab99fb8c27f02b2f08d40e63dbf2b97a217dd6cf16d529a89fc28afc`  
		Last Modified: Tue, 27 Oct 2026 17:43:53 GMT  
		Size: 34.0 KB (33964 bytes)  
		MIME: application/vnd.in-toto+json
