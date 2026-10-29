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
$ docker pull elasticsearch@sha256:1dffa4373c084f1ea1fd397267f15134e8c690f49c27a900553ae0bd3a1d2e89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.8` - linux; amd64

```console
$ docker pull elasticsearch@sha256:6208a406a0b0ae53422d44af8dbdc162cf498a7b65feda3216852fc5795936cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **869.3 MB (869264953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd89e46840b41fb430475fe72512900978a02d70a4ad6622d291a14dbdb8ab3`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.openshift.expose-services=""
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 29 Oct 2026 05:54:23 GMT
ENV container oci
# Thu, 29 Oct 2026 05:54:23 GMT
COPY dir:cb36e4a04f700577f4d44e5ef8e97fee2e20c96c2328537ddf72d477ad63850e in /      
# Thu, 29 Oct 2026 05:54:24 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 29 Oct 2026 05:54:24 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 05:54:24 GMT
COPY dir:6f787a22ee9c86f2977e5bc3d8b8487c5e75e12cf005c8de8336495493a703c0 in /usr/share/buildinfo/      
# Thu, 29 Oct 2026 05:54:24 GMT
COPY dir:6f787a22ee9c86f2977e5bc3d8b8487c5e75e12cf005c8de8336495493a703c0 in /root/buildinfo/      
# Thu, 29 Oct 2026 05:54:24 GMT
LABEL "org.opencontainers.image.created"="2026-10-29T05:53:50Z" "org.opencontainers.image.revision"="9eac53daf60c61895dd274c7017f0605f411e146" "build-date"="2026-10-29T05:53:50Z" "architecture"="x86_64" "vcs-ref"="9eac53daf60c61895dd274c7017f0605f411e146" "vcs-type"="git" "release"="1793253163"org.opencontainers.image.created=2026-10-29T05:53:50Z,org.opencontainers.image.revision=9eac53daf60c61895dd274c7017f0605f411e146
# Thu, 29 Oct 2026 18:57:13 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Thu, 29 Oct 2026 18:57:13 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Thu, 29 Oct 2026 18:58:35 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 29 Oct 2026 18:58:35 GMT
COPY /bin/tini /bin/tini # buildkit
# Thu, 29 Oct 2026 18:58:35 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 29 Oct 2026 18:58:46 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Thu, 29 Oct 2026 18:58:46 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Thu, 29 Oct 2026 18:58:46 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 18:58:46 GMT
ENV SHELL=/bin/bash
# Thu, 29 Oct 2026 18:58:46 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 18:58:46 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Thu, 29 Oct 2026 18:58:46 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Thu, 29 Oct 2026 18:58:46 GMT
LABEL org.label-schema.build-date=2026-10-01T01:07:34.887571291Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c042abbb0eaaaa61b49beef21d517468861a4db2 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-10-01T01:07:34.887571291Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c042abbb0eaaaa61b49beef21d517468861a4db2 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Thu, 29 Oct 2026 18:58:46 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Elasticsearch description=You know, for search.
# Thu, 29 Oct 2026 18:58:46 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 29 Oct 2026 18:58:46 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 18:58:46 GMT
CMD ["eswrapper"]
# Thu, 29 Oct 2026 18:58:46 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:2164d2820af90f29766403e395ab877c03c4ae5dd020d8a1180c2bdb12e89bf2`  
		Last Modified: Thu, 29 Oct 2026 06:37:49 GMT  
		Size: 40.7 MB (40656045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d579277997dded4257d74e6088b9eeac06e1a25a941bd7bf58fb463d9cc713`  
		Last Modified: Thu, 29 Oct 2026 18:59:40 GMT  
		Size: 4.4 MB (4395633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c995cc102ec23d597d91833004a09a156614fd3e776096dbd15604457d42b045`  
		Last Modified: Thu, 29 Oct 2026 18:59:40 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07dd52081faa144cfa838d749aecb9741845f283f6cf279c9cc31a6b4eb77962`  
		Last Modified: Thu, 29 Oct 2026 18:59:40 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d1a5da0b45c3c5700353bdd63eb5b1411ec3abc1b8ad81b6f90b2aba5b83a28`  
		Last Modified: Thu, 29 Oct 2026 18:59:54 GMT  
		Size: 824.1 MB (824123320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:219ba6c56f425dcac0cdb35b4d5f86edd9e0d6b53b7271d2edcace5da2b5187c`  
		Last Modified: Thu, 29 Oct 2026 18:59:41 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a92004638b8133b88e15a6aed464783f40a3bc8800e7cbadbc016440aa5b4cd9`  
		Last Modified: Thu, 29 Oct 2026 18:59:42 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6bbf28fad25f71d03eb2609f32abb1db5e97e4e34fb6a98017c064ab574461b`  
		Last Modified: Thu, 29 Oct 2026 18:59:42 GMT  
		Size: 75.2 KB (75182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379b61ecd3323cc3d549d965ebbd7030d2e5289683d4adad329a0ae67b048427`  
		Last Modified: Thu, 29 Oct 2026 18:59:43 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:78bbd0eeaf0d6b41eb8f69ac0ce21568e33107b456ce1259c6ddae389be5acf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2401642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c1b9fa286b30d3e8f48dff869326af6f3f0482182fa0f0049f1280106fce8ec`

```dockerfile
```

-	Layers:
	-	`sha256:28ca157044c53ed4a78872f0edc52807fdd6aa72f9f57849a0ba5bbbccdcb96c`  
		Last Modified: Thu, 29 Oct 2026 18:59:40 GMT  
		Size: 2.4 MB (2367859 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fee83139a9a13dc9430aec37b4ad0c93f139147d0bf131d5d919711ad273e6b6`  
		Last Modified: Thu, 29 Oct 2026 18:59:40 GMT  
		Size: 33.8 KB (33783 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.8` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:5b3a9cdcf04279bd9e08f9f0854d697daefe0f35aa4397dfdd3337f73fe81a3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.8 MB (713839349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c03a1a20ba07dfaac810fb4b3455381ab3353a9900bdd973473c4e7f7d59fbd4`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.openshift.expose-services=""
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 29 Oct 2026 05:55:50 GMT
ENV container oci
# Thu, 29 Oct 2026 05:55:51 GMT
COPY dir:c2f7b4c82de3b29a784fee39f42a89d24dcfb89cdf321a56be39c3db78376c0a in /      
# Thu, 29 Oct 2026 05:55:52 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 29 Oct 2026 05:55:52 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 05:55:52 GMT
COPY dir:d5c8eb0f62c97002675f9b845c311f4fc41098098fd604bd72c8226e9fea1734 in /usr/share/buildinfo/      
# Thu, 29 Oct 2026 05:55:52 GMT
COPY dir:d5c8eb0f62c97002675f9b845c311f4fc41098098fd604bd72c8226e9fea1734 in /root/buildinfo/      
# Thu, 29 Oct 2026 05:55:53 GMT
LABEL "org.opencontainers.image.created"="2026-10-29T05:55:19Z" "org.opencontainers.image.revision"="9eac53daf60c61895dd274c7017f0605f411e146" "build-date"="2026-10-29T05:55:19Z" "architecture"="aarch64" "vcs-ref"="9eac53daf60c61895dd274c7017f0605f411e146" "vcs-type"="git" "release"="1793253163"org.opencontainers.image.created=2026-10-29T05:55:19Z,org.opencontainers.image.revision=9eac53daf60c61895dd274c7017f0605f411e146
# Thu, 29 Oct 2026 18:56:31 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Thu, 29 Oct 2026 18:56:31 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Thu, 29 Oct 2026 18:57:39 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 29 Oct 2026 18:57:39 GMT
COPY /bin/tini /bin/tini # buildkit
# Thu, 29 Oct 2026 18:57:39 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 29 Oct 2026 18:57:47 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Thu, 29 Oct 2026 18:57:47 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Thu, 29 Oct 2026 18:57:47 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 18:57:47 GMT
ENV SHELL=/bin/bash
# Thu, 29 Oct 2026 18:57:47 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 18:57:47 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Thu, 29 Oct 2026 18:57:47 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Thu, 29 Oct 2026 18:57:47 GMT
LABEL org.label-schema.build-date=2026-10-01T01:07:34.887571291Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c042abbb0eaaaa61b49beef21d517468861a4db2 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-10-01T01:07:34.887571291Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c042abbb0eaaaa61b49beef21d517468861a4db2 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Thu, 29 Oct 2026 18:57:47 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Elasticsearch description=You know, for search.
# Thu, 29 Oct 2026 18:57:47 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 29 Oct 2026 18:57:47 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 18:57:47 GMT
CMD ["eswrapper"]
# Thu, 29 Oct 2026 18:57:47 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:d1fd8731fe293042fa0b8c35e7a013605e676c89fdf9067f0f919ee6053921e5`  
		Last Modified: Thu, 29 Oct 2026 06:37:51 GMT  
		Size: 38.7 MB (38719163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f0146e9550c54fb83807a74457dbfa5ad9dca19cb141c900ca9fa07da71253c`  
		Last Modified: Thu, 29 Oct 2026 18:58:33 GMT  
		Size: 4.4 MB (4388792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc158cbd32a5b0e4368197b1f3cfbf0d7d4038fc61d3f1d64b94c7f318aeb2b4`  
		Last Modified: Thu, 29 Oct 2026 18:58:31 GMT  
		Size: 1.5 KB (1528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100234a462c085c6cc56b312ed2156a45853ff147a050c94d27f070fcd5920ce`  
		Last Modified: Thu, 29 Oct 2026 18:58:33 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08d5da79545ca5ee530742c9dfb9a685849350b2446f425d4f727f10595322d4`  
		Last Modified: Thu, 29 Oct 2026 18:58:44 GMT  
		Size: 670.6 MB (670642950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4467063675bb29ae386de94aa69b5276e7534f0594f68df33e631068f0c18df0`  
		Last Modified: Thu, 29 Oct 2026 18:58:33 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3566acb3571bc1292eca3d39b18904aa552cf022dcb366d832aedeca231a547`  
		Last Modified: Thu, 29 Oct 2026 18:58:34 GMT  
		Size: 1.7 KB (1715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8965244f02460d147da57d7e3936c410817ba4ee6d617a483ad4f70c87c6d2f`  
		Last Modified: Thu, 29 Oct 2026 18:58:34 GMT  
		Size: 74.1 KB (74102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac9f79a918bb360fb81c227b4147a6f421f1aa3aa837d324917a657a6d70591`  
		Last Modified: Thu, 29 Oct 2026 18:58:34 GMT  
		Size: 1.7 KB (1697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:a1c0eb4578f12a116817f80411bee4d8430b26afa8ca5e12319b68da58a3896a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2400605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58cae971b37155a31ece4559884f512103dd85197c27d27874f0248e25f21a67`

```dockerfile
```

-	Layers:
	-	`sha256:4b86d16ebae464b662f2d3718f095026211872382db26d8d0ff28a939883eb37`  
		Last Modified: Thu, 29 Oct 2026 18:58:33 GMT  
		Size: 2.4 MB (2366639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d53a673dba19c0dc4439449ac4eea2b492971d6f3e5551ff9e6c1f3cb265a82`  
		Last Modified: Thu, 29 Oct 2026 18:58:33 GMT  
		Size: 34.0 KB (33966 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.5.5`

```console
$ docker pull elasticsearch@sha256:52ffd9f66c98b7826a25da2ef7cac6186ecec158d8fb371bff325ad00b6eca93
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.5.5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:c718f8116e7efdd93f0b4cfe06050bf5f47d2883c98ee164b45fcc3d9a9a074e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **895.8 MB (895765383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6bd7a65c6f18f7343e31f47175d071c585b6316c547461f12ff780849382a23`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.openshift.expose-services=""
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 29 Oct 2026 05:54:23 GMT
ENV container oci
# Thu, 29 Oct 2026 05:54:23 GMT
COPY dir:cb36e4a04f700577f4d44e5ef8e97fee2e20c96c2328537ddf72d477ad63850e in /      
# Thu, 29 Oct 2026 05:54:24 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 29 Oct 2026 05:54:24 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 05:54:24 GMT
COPY dir:6f787a22ee9c86f2977e5bc3d8b8487c5e75e12cf005c8de8336495493a703c0 in /usr/share/buildinfo/      
# Thu, 29 Oct 2026 05:54:24 GMT
COPY dir:6f787a22ee9c86f2977e5bc3d8b8487c5e75e12cf005c8de8336495493a703c0 in /root/buildinfo/      
# Thu, 29 Oct 2026 05:54:24 GMT
LABEL "org.opencontainers.image.created"="2026-10-29T05:53:50Z" "org.opencontainers.image.revision"="9eac53daf60c61895dd274c7017f0605f411e146" "build-date"="2026-10-29T05:53:50Z" "architecture"="x86_64" "vcs-ref"="9eac53daf60c61895dd274c7017f0605f411e146" "vcs-type"="git" "release"="1793253163"org.opencontainers.image.created=2026-10-29T05:53:50Z,org.opencontainers.image.revision=9eac53daf60c61895dd274c7017f0605f411e146
# Thu, 29 Oct 2026 18:57:15 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Thu, 29 Oct 2026 18:57:15 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Thu, 29 Oct 2026 18:58:26 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 29 Oct 2026 18:58:26 GMT
COPY /bin/tini /bin/tini # buildkit
# Thu, 29 Oct 2026 18:58:26 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 29 Oct 2026 18:58:37 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Thu, 29 Oct 2026 18:58:37 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Thu, 29 Oct 2026 18:58:37 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 18:58:37 GMT
ENV SHELL=/bin/bash
# Thu, 29 Oct 2026 18:58:37 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 18:58:37 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Thu, 29 Oct 2026 18:58:37 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Thu, 29 Oct 2026 18:58:37 GMT
LABEL org.label-schema.build-date=2026-09-30T22:12:03.984586187Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=48acba663b09e70b115dd879329141506c377890 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T22:12:03.984586187Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=48acba663b09e70b115dd879329141506c377890 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Thu, 29 Oct 2026 18:58:37 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Elasticsearch description=You know, for search.
# Thu, 29 Oct 2026 18:58:38 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 29 Oct 2026 18:58:38 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 18:58:38 GMT
CMD ["eswrapper"]
# Thu, 29 Oct 2026 18:58:38 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:2164d2820af90f29766403e395ab877c03c4ae5dd020d8a1180c2bdb12e89bf2`  
		Last Modified: Thu, 29 Oct 2026 06:37:49 GMT  
		Size: 40.7 MB (40656045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae534fc784baa71273b2254aef9202adcf6d7370dba3040874edebbb82d4de0b`  
		Last Modified: Thu, 29 Oct 2026 18:59:35 GMT  
		Size: 4.4 MB (4395577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1deb33d56315b06a3821bbb2d5b9bf6f8c480c069b51a52e7a0c9f3daddac6e`  
		Last Modified: Thu, 29 Oct 2026 18:59:35 GMT  
		Size: 1.5 KB (1528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4385352e566b979b67b9b6dadbfd7cc89012c6c946197736d0e8bedf96ef52ca`  
		Last Modified: Thu, 29 Oct 2026 18:59:35 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e339394c96f76d5ac8545f780ccae734fec5cd61bcbde31a1ef9ad1949cd40b`  
		Last Modified: Thu, 29 Oct 2026 18:59:50 GMT  
		Size: 850.6 MB (850623802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bafb3c07c055990316cc3441940b6a1944fb0b4e46e9b6a786cf7801a63a8bdc`  
		Last Modified: Thu, 29 Oct 2026 18:59:36 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ced57ae972d7138103fe19db27212541ee57e90e295b78ff3f7b4787f4302e5`  
		Last Modified: Thu, 29 Oct 2026 18:59:36 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ef80800dff9b7aa4e56a84fb4f76de1a8b8f16694ce44547922307b051b77ac`  
		Last Modified: Thu, 29 Oct 2026 18:59:36 GMT  
		Size: 75.2 KB (75184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b39bfcc741478e212b201a1fa78b9e4bf611923b39ed27671a73a90649ab9a42`  
		Last Modified: Thu, 29 Oct 2026 18:59:37 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:fee8556325cf6b41d582c91187172bf254ed0e10caede61e681b12687f8419b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2452724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd19a78ef3d09e2ea6a83f02e112b5d4291f0ca78dd8297b772be5c48dc7cb73`

```dockerfile
```

-	Layers:
	-	`sha256:c0e91ae3f635b52ac362581d593cc090a20a97605943ba97ae39f29620084143`  
		Last Modified: Thu, 29 Oct 2026 18:59:35 GMT  
		Size: 2.4 MB (2418940 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8c9a7548aaa16cbdc45fa811726130da93047476c63d151bddbdfe80fe741c4`  
		Last Modified: Thu, 29 Oct 2026 18:59:34 GMT  
		Size: 33.8 KB (33784 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.5.5` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:2cb1f8baca7eb9c33276f6c7d4fe519768e4104f5f0931786768f15439ac769a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **740.3 MB (740288218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3907d383f155d96472135fa77fe1011b22cb1567d4d48b3913b4aed80731188e`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.openshift.expose-services=""
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 29 Oct 2026 05:55:50 GMT
ENV container oci
# Thu, 29 Oct 2026 05:55:51 GMT
COPY dir:c2f7b4c82de3b29a784fee39f42a89d24dcfb89cdf321a56be39c3db78376c0a in /      
# Thu, 29 Oct 2026 05:55:52 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 29 Oct 2026 05:55:52 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 05:55:52 GMT
COPY dir:d5c8eb0f62c97002675f9b845c311f4fc41098098fd604bd72c8226e9fea1734 in /usr/share/buildinfo/      
# Thu, 29 Oct 2026 05:55:52 GMT
COPY dir:d5c8eb0f62c97002675f9b845c311f4fc41098098fd604bd72c8226e9fea1734 in /root/buildinfo/      
# Thu, 29 Oct 2026 05:55:53 GMT
LABEL "org.opencontainers.image.created"="2026-10-29T05:55:19Z" "org.opencontainers.image.revision"="9eac53daf60c61895dd274c7017f0605f411e146" "build-date"="2026-10-29T05:55:19Z" "architecture"="aarch64" "vcs-ref"="9eac53daf60c61895dd274c7017f0605f411e146" "vcs-type"="git" "release"="1793253163"org.opencontainers.image.created=2026-10-29T05:55:19Z,org.opencontainers.image.revision=9eac53daf60c61895dd274c7017f0605f411e146
# Thu, 29 Oct 2026 18:56:31 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Thu, 29 Oct 2026 18:56:31 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Thu, 29 Oct 2026 18:57:36 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 29 Oct 2026 18:57:36 GMT
COPY /bin/tini /bin/tini # buildkit
# Thu, 29 Oct 2026 18:57:36 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 29 Oct 2026 18:57:44 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Thu, 29 Oct 2026 18:57:44 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Thu, 29 Oct 2026 18:57:44 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 18:57:44 GMT
ENV SHELL=/bin/bash
# Thu, 29 Oct 2026 18:57:44 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 18:57:44 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Thu, 29 Oct 2026 18:57:44 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Thu, 29 Oct 2026 18:57:44 GMT
LABEL org.label-schema.build-date=2026-09-30T22:12:03.984586187Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=48acba663b09e70b115dd879329141506c377890 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T22:12:03.984586187Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=48acba663b09e70b115dd879329141506c377890 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Thu, 29 Oct 2026 18:57:44 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Elasticsearch description=You know, for search.
# Thu, 29 Oct 2026 18:57:44 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 29 Oct 2026 18:57:44 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 18:57:44 GMT
CMD ["eswrapper"]
# Thu, 29 Oct 2026 18:57:44 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:d1fd8731fe293042fa0b8c35e7a013605e676c89fdf9067f0f919ee6053921e5`  
		Last Modified: Thu, 29 Oct 2026 06:37:51 GMT  
		Size: 38.7 MB (38719163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27876d0105f42d5278c22226cb5fc8a1f8c78cbe93a1a3522ef1a4171bc1b23`  
		Last Modified: Thu, 29 Oct 2026 18:58:31 GMT  
		Size: 4.4 MB (4388803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc158cbd32a5b0e4368197b1f3cfbf0d7d4038fc61d3f1d64b94c7f318aeb2b4`  
		Last Modified: Thu, 29 Oct 2026 18:58:31 GMT  
		Size: 1.5 KB (1528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5884e2b59f76f5fc58eed1eb3eb919d22c847f55d6422b653e9f15cc04e4a501`  
		Last Modified: Thu, 29 Oct 2026 18:58:31 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3f109fbe297700db790130e4aa140586cfbe0f53bc3f355593f5a17b4c5a3e`  
		Last Modified: Thu, 29 Oct 2026 18:58:42 GMT  
		Size: 697.1 MB (697091808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9cada0f33c5b4e101133793f483c342fa0a7f47718e807bdc2f1da0d6223128`  
		Last Modified: Thu, 29 Oct 2026 18:58:32 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d47c0189f2393d236fb5a174f5009f38ca2e5d0f227008a79b2094863e2898`  
		Last Modified: Thu, 29 Oct 2026 18:58:32 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29666d79cb50526f14eb492096c6ada1ff00bfce4fec53c61870ca31da74c78e`  
		Last Modified: Thu, 29 Oct 2026 18:58:33 GMT  
		Size: 74.1 KB (74103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:249a7235ca83405fbb8866a83f22d3b6dda5a80d387f320330120f93359d1f43`  
		Last Modified: Thu, 29 Oct 2026 18:58:33 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:a07f618ea48abfa69addcddc94e012a62040a786330495f29a4ef4f32232b27a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2451686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00abf2a1d89bfb08b940bfb8c20a3bd40435b84afe2402ebbcdf8a40173398f0`

```dockerfile
```

-	Layers:
	-	`sha256:95d43c311555254f7602775929e5d75a8b18d77b9b554ab03a41fb4235ebf446`  
		Last Modified: Thu, 29 Oct 2026 18:58:31 GMT  
		Size: 2.4 MB (2417720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79eb59c49391a371a4f18f92cd7d309669bf516377ef6472f99f29194307a633`  
		Last Modified: Thu, 29 Oct 2026 18:58:31 GMT  
		Size: 34.0 KB (33966 bytes)  
		MIME: application/vnd.in-toto+json
