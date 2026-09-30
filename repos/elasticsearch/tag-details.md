<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:8.19.22`](#elasticsearch81922)
-	[`elasticsearch:9.4.6`](#elasticsearch946)
-	[`elasticsearch:9.5.3`](#elasticsearch953)

## `elasticsearch:8.19.22`

```console
$ docker pull elasticsearch@sha256:d071f96fab6c11db8fbf8cd23ac296bf96fdb71f4b56c23b1b4da88c7057c991
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:8.19.22` - linux; amd64

```console
$ docker pull elasticsearch@sha256:1841fda6970f84073525a239179c3e129352de11eb56986074a3db1cd3301d13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **725.4 MB (725408264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bb399745e739c1994b9dad3a9b5559f420f7a5a5815919cb5458192ac8847eb`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 23 Sep 2026 16:58:19 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Wed, 23 Sep 2026 16:58:19 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 23 Sep 2026 16:58:19 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 23 Sep 2026 16:58:19 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 23 Sep 2026 16:59:14 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Wed, 23 Sep 2026 16:59:14 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 23 Sep 2026 16:59:14 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Sep 2026 16:59:14 GMT
ENV SHELL=/bin/bash
# Wed, 23 Sep 2026 16:59:14 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 23 Sep 2026 16:59:14 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 23 Sep 2026 16:59:14 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 23 Sep 2026 16:59:14 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 23 Sep 2026 16:59:14 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 23 Sep 2026 16:59:14 GMT
LABEL org.label-schema.build-date=2026-09-18T10:10:07.018982263Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=3b2a41103de35e0af4064d647974032fcc1bcde9 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.22 org.opencontainers.image.created=2026-09-18T10:10:07.018982263Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=3b2a41103de35e0af4064d647974032fcc1bcde9 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.22
# Wed, 23 Sep 2026 16:59:14 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 23 Sep 2026 16:59:14 GMT
CMD ["eswrapper"]
# Wed, 23 Sep 2026 16:59:14 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a55029dfff8380214adc9b28e1e1a8aa4037e1778fc10bea025eb0f1a49d540`  
		Last Modified: Wed, 23 Sep 2026 17:00:06 GMT  
		Size: 6.9 MB (6871563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9857b496e248614d06a359046046a710c88ea006b828eae2e5dfc1938fdceace`  
		Last Modified: Wed, 23 Sep 2026 17:00:05 GMT  
		Size: 3.5 KB (3527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0704c66e48f1cc70c044590278de33e4d3e051bf744029f37c654314bf4fe8b0`  
		Last Modified: Wed, 23 Sep 2026 17:00:26 GMT  
		Size: 688.5 MB (688496088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfbc173b856685369451186575a71be9d999d6d4a019e1517da906f902baa4a6`  
		Last Modified: Wed, 23 Sep 2026 17:00:05 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199e786a6640405c3927c9ab58986a159365994aed65fc6c196c376241a524d8`  
		Last Modified: Wed, 23 Sep 2026 17:00:07 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c375a1db484c443b46a44f45aa144ac6f25db2d3f6384084c0e41fe34f3f17c`  
		Last Modified: Wed, 23 Sep 2026 17:00:07 GMT  
		Size: 164.2 KB (164184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a5a64337f1183d7819e21475b935cdfb11af57fb4cb97b5a73435a15ce8926`  
		Last Modified: Wed, 23 Sep 2026 17:00:09 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dad1a1ad516da0e072735f9de93f32a6431ae2544967320d6344003682a1a76`  
		Last Modified: Wed, 23 Sep 2026 17:00:10 GMT  
		Size: 97.1 KB (97100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.22` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:4e865f9c1bafc3f0b2d08fc8110ed37cbed0827add6ad7eb683c4b50cbcd524a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3223786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc0960a5337196ac3a9641ade185c14161658cfa70f043bf6da6b1e76f61b130`

```dockerfile
```

-	Layers:
	-	`sha256:adaee96d258a30c29dcaba1dca2aa8d61e4d49d2999aeed20ff30c886f33b933`  
		Last Modified: Wed, 23 Sep 2026 17:00:05 GMT  
		Size: 3.2 MB (3186971 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65dd430fdc6e14e6af8abf0211ee1f8d5b0981bf92b79ac18b1541c83dd4249a`  
		Last Modified: Wed, 23 Sep 2026 17:00:04 GMT  
		Size: 36.8 KB (36815 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:8.19.22` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:b8c54cec6cfcde3c121d7aa1ab4cd2081a27607aedd5b05c37c5b9e28cd02711
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **573.4 MB (573402696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9854de34303c24c3e02d9e2b30e6ae4fcc18a6f772bd6c8bb38c76adf49c2fa1`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 23 Sep 2026 16:58:34 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Wed, 23 Sep 2026 16:58:34 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 23 Sep 2026 16:58:34 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 23 Sep 2026 16:58:34 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 23 Sep 2026 16:59:12 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Wed, 23 Sep 2026 16:59:12 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 23 Sep 2026 16:59:12 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Sep 2026 16:59:12 GMT
ENV SHELL=/bin/bash
# Wed, 23 Sep 2026 16:59:12 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 23 Sep 2026 16:59:12 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 23 Sep 2026 16:59:12 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 23 Sep 2026 16:59:12 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 23 Sep 2026 16:59:12 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 23 Sep 2026 16:59:12 GMT
LABEL org.label-schema.build-date=2026-09-18T10:10:07.018982263Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=3b2a41103de35e0af4064d647974032fcc1bcde9 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.22 org.opencontainers.image.created=2026-09-18T10:10:07.018982263Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=3b2a41103de35e0af4064d647974032fcc1bcde9 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.22
# Wed, 23 Sep 2026 16:59:12 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 23 Sep 2026 16:59:12 GMT
CMD ["eswrapper"]
# Wed, 23 Sep 2026 16:59:12 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:578203ec482f38ad3b224c027db0549f8372a283a800d9aa6cefc8f1ffc0bc41`  
		Last Modified: Wed, 23 Sep 2026 16:59:52 GMT  
		Size: 6.8 MB (6831154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d085bc0da3b02f7cf0092c55217d75d0e4ca2a60b585bdff588bffd9abbaa5f`  
		Last Modified: Wed, 23 Sep 2026 16:59:51 GMT  
		Size: 3.5 KB (3525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc846240fc76ba0f2d426d0b200288238c1a42ceea07889b1656dbcf951f9e6`  
		Last Modified: Wed, 23 Sep 2026 17:00:02 GMT  
		Size: 537.4 MB (537357392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:165d772af50ec723b3ce3ef1946e3f17a79122db970c7aeab1b3e0beae5044d0`  
		Last Modified: Wed, 23 Sep 2026 16:59:52 GMT  
		Size: 9.1 KB (9104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04a3d9ca10bd849fd6e918f78f643489eaff44685c7c2dc0a183701a7918b754`  
		Last Modified: Wed, 23 Sep 2026 16:59:53 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116a667dc092f2f7fdbb62b7fbc23924f26c12b3bb385f9ae215af92ffcaef14`  
		Last Modified: Wed, 23 Sep 2026 16:59:53 GMT  
		Size: 160.7 KB (160688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34ceb8d95c160b107af52eec832dd8d906cf8e9a6402a4a4158b4517e6a47b3c`  
		Last Modified: Wed, 23 Sep 2026 16:59:53 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:866a7fc71f0b6c68c0712b1cd310b296f14d2ea5fb667e09847174863d780af3`  
		Last Modified: Wed, 23 Sep 2026 16:59:54 GMT  
		Size: 97.1 KB (97099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.22` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:edfa7d51f3a58345e4856d5d8ab19e36e056ced0230e43890672e56aaff07020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3224402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86ccb455b2c99b52ee5a7a328c5295b9f09eee27ebb78e4ae34ae45764f49eaa`

```dockerfile
```

-	Layers:
	-	`sha256:753e8bdd696ccb6454dc4e8296046dca572a04e476d76ba1c2767e65678ffbb7`  
		Last Modified: Wed, 23 Sep 2026 16:59:52 GMT  
		Size: 3.2 MB (3187384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5d02058a86a815a5cf7c23a5e958eec5fd633351cca4f5092bcd58e47fe120a`  
		Last Modified: Wed, 23 Sep 2026 16:59:51 GMT  
		Size: 37.0 KB (37018 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.4.6`

```console
$ docker pull elasticsearch@sha256:e51ca1ec84d1fbb23df693971dcb1fac2450b794795352b79c7a760e72a74b6f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.6` - linux; amd64

```console
$ docker pull elasticsearch@sha256:10ba2164df6e7fcc55da7a4a1f3611ab5db445e0d60cddf2279818e2697e5c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **868.9 MB (868914837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec51e18960fef17ce142a3a57cd2e2b504aa71b4e2ab21660e0b8a8ab2cdcaf3`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 30 Sep 2026 07:43:40 GMT
ENV container oci
# Wed, 30 Sep 2026 07:43:40 GMT
COPY dir:01535d66c659bac5dc638e334bb8c0882e8bbe4dcc144deb448bf0673973267f in /      
# Wed, 30 Sep 2026 07:43:41 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:43:41 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:43:41 GMT
COPY dir:ab52b8f578b642c9cfffb8cfa8cb04095b99e8289c57b6d99f5db899ce19dbbd in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:43:41 GMT
COPY dir:ab52b8f578b642c9cfffb8cfa8cb04095b99e8289c57b6d99f5db899ce19dbbd in /root/buildinfo/      
# Wed, 30 Sep 2026 07:43:41 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:43:22Z" "org.opencontainers.image.revision"="f354e3d450169972cb1f8df64acae506d96d4c49" "build-date"="2026-09-30T07:43:22Z" "architecture"="x86_64" "vcs-ref"="f354e3d450169972cb1f8df64acae506d96d4c49" "vcs-type"="git" "release"="1790754119"org.opencontainers.image.created=2026-09-30T07:43:22Z,org.opencontainers.image.revision=f354e3d450169972cb1f8df64acae506d96d4c49
# Wed, 30 Sep 2026 21:04:09 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:04:09 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 30 Sep 2026 21:05:38 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 30 Sep 2026 21:05:38 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 30 Sep 2026 21:05:38 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 30 Sep 2026 21:05:49 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 30 Sep 2026 21:05:49 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 30 Sep 2026 21:05:49 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:05:49 GMT
ENV SHELL=/bin/bash
# Wed, 30 Sep 2026 21:05:49 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 30 Sep 2026 21:05:49 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 30 Sep 2026 21:05:49 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 30 Sep 2026 21:05:49 GMT
LABEL org.label-schema.build-date=2026-08-26T22:12:16.859701616Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=10011cbc74640115d0ffac0cef7c925aec4754f5 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T22:12:16.859701616Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=10011cbc74640115d0ffac0cef7c925aec4754f5 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Wed, 30 Sep 2026 21:05:49 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 30 Sep 2026 21:05:49 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 30 Sep 2026 21:05:49 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 30 Sep 2026 21:05:49 GMT
CMD ["eswrapper"]
# Wed, 30 Sep 2026 21:05:49 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:dc56ef34398ed4f6c8151f31ee5784575bedb47794f5ba379ebc2a25834fac35`  
		Last Modified: Wed, 30 Sep 2026 08:42:23 GMT  
		Size: 40.7 MB (40700861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:476eb41e76367c5702d234bfde1bcf9963127b48882e48bba8b9a4bc64fdfd82`  
		Last Modified: Wed, 30 Sep 2026 21:06:45 GMT  
		Size: 4.1 MB (4107709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60121305ae07328fb6b52d987fa9bd4b22dd8f6b2773265525f5e07cbc82f651`  
		Last Modified: Wed, 30 Sep 2026 21:06:45 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed537d2d4c0c7250c1e1a54ebc435b39eb42194f02b40dd02e72f64917ee957`  
		Last Modified: Wed, 30 Sep 2026 21:06:44 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ff4eafec5e4b3d24bc0ac96b225df64084a58c7f76b9706c8bb4a5cc2da3453`  
		Last Modified: Wed, 30 Sep 2026 21:07:12 GMT  
		Size: 824.0 MB (824016310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:799cd4d77e56bafe707e57c54779704034f1eef0c14ad1bae94c81b10e2f8027`  
		Last Modified: Wed, 30 Sep 2026 21:06:46 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f16ccb350d45dcd45776bb3e26367f4764744db17013409b37f378cf5373853a`  
		Last Modified: Wed, 30 Sep 2026 21:06:46 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb34e7c662436f88923f4377cc97c352a7c1b7b3f5b0c44ab9dfff3372011eda`  
		Last Modified: Wed, 30 Sep 2026 21:06:46 GMT  
		Size: 75.2 KB (75183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53ed8297ed16ad5a4d6489f761293f538726b35502fa5c8f47060936ce71477`  
		Last Modified: Wed, 30 Sep 2026 21:06:47 GMT  
		Size: 1.7 KB (1693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.6` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:a5abd69e5f5c219ebe1142ba84055da90f6347043c627dbf4e2541a1bf8e56c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb977837f7c4987b977046cb416aa4c5c467246d757350f19be575b1cc499551`

```dockerfile
```

-	Layers:
	-	`sha256:c3de2cf44630976fcb6f5b94d9fadf47f45422920edc69d4826960d25c6a58c8`  
		Last Modified: Wed, 30 Sep 2026 21:06:45 GMT  
		Size: 2.4 MB (2389021 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c11d317d3c51f49dbd889e20a61c7d9cec061eb88250b79c12175ddf5e9a32a6`  
		Last Modified: Wed, 30 Sep 2026 21:06:45 GMT  
		Size: 33.8 KB (33775 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.6` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:05464948ab62a0391b3b6e93b0f35b55b593a8dce102cc9ebd7192ded14cd11f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.5 MB (713484965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd611ddad8eb25f52470b7bb208078b328c84017e68cd4cd03a7f7a67b8405e5`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:45:10 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 30 Sep 2026 07:45:10 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:45:10 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 30 Sep 2026 07:45:10 GMT
ENV container oci
# Wed, 30 Sep 2026 07:45:10 GMT
COPY dir:06d90a0b7db8992c03ff9664b8cd3e00c58fd39e054579d5795d410389dd5e96 in /      
# Wed, 30 Sep 2026 07:45:10 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:45:10 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:45:10 GMT
COPY dir:c0678317d7ed63442d60483211d5a1c6d09172186a4f2982932461d0f7e083bf in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:45:11 GMT
COPY dir:c0678317d7ed63442d60483211d5a1c6d09172186a4f2982932461d0f7e083bf in /root/buildinfo/      
# Wed, 30 Sep 2026 07:45:11 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:44:47Z" "org.opencontainers.image.revision"="f354e3d450169972cb1f8df64acae506d96d4c49" "build-date"="2026-09-30T07:44:47Z" "architecture"="aarch64" "vcs-ref"="f354e3d450169972cb1f8df64acae506d96d4c49" "vcs-type"="git" "release"="1790754119"org.opencontainers.image.created=2026-09-30T07:44:47Z,org.opencontainers.image.revision=f354e3d450169972cb1f8df64acae506d96d4c49
# Wed, 30 Sep 2026 21:03:22 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:03:22 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 30 Sep 2026 21:04:39 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 30 Sep 2026 21:04:39 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 30 Sep 2026 21:04:39 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 30 Sep 2026 21:04:47 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 30 Sep 2026 21:04:47 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 30 Sep 2026 21:04:47 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:04:47 GMT
ENV SHELL=/bin/bash
# Wed, 30 Sep 2026 21:04:47 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 30 Sep 2026 21:04:47 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 30 Sep 2026 21:04:47 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 30 Sep 2026 21:04:47 GMT
LABEL org.label-schema.build-date=2026-08-26T22:12:16.859701616Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=10011cbc74640115d0ffac0cef7c925aec4754f5 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T22:12:16.859701616Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=10011cbc74640115d0ffac0cef7c925aec4754f5 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Wed, 30 Sep 2026 21:04:47 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 30 Sep 2026 21:04:47 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 30 Sep 2026 21:04:47 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 30 Sep 2026 21:04:47 GMT
CMD ["eswrapper"]
# Wed, 30 Sep 2026 21:04:47 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:b8f4af811c7c98a1b33bf1a9f90c3e1b1f2296b681895a0031b0560a5db8a0a4`  
		Last Modified: Wed, 30 Sep 2026 08:42:32 GMT  
		Size: 38.8 MB (38801364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbe234dcfcd0c9fe1418c6f99b7b667e5835f1eba07d76d294bc8ec0c2297dee`  
		Last Modified: Wed, 30 Sep 2026 21:05:34 GMT  
		Size: 4.1 MB (4102562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32591dd1bff73bf3f572be8841f55e7c05175b16092238ab2244b3909851c282`  
		Last Modified: Wed, 30 Sep 2026 21:05:34 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03c80cdb31ad8eb08d4b7a7bca5d7a5868fe35592067a6a515f795fc525aac18`  
		Last Modified: Wed, 30 Sep 2026 21:05:33 GMT  
		Size: 9.1 KB (9098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dcb1acf236189f3c086131175ef73b4e91c6137dddb0fe9805c56a7cf52e983`  
		Last Modified: Wed, 30 Sep 2026 21:05:46 GMT  
		Size: 670.5 MB (670492591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551efe916f038fbfc312e451a0702ebfffa7fe5798688265fe79810bc5cc2b19`  
		Last Modified: Wed, 30 Sep 2026 21:05:35 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca969bb285ab8fafd8f62f88c663cb23ad245c144f4c8c977ff16bcc3ae7643d`  
		Last Modified: Wed, 30 Sep 2026 21:05:35 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01e6656fb5cb29aa53163d4de739df8dedf8f605073b96c82c43bdfe2f74c04d`  
		Last Modified: Wed, 30 Sep 2026 21:05:35 GMT  
		Size: 74.1 KB (74105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01c54106aec3bb76a3672875817354338675f3ae9de5c4f841c1c9ee18b3bee0`  
		Last Modified: Wed, 30 Sep 2026 21:05:36 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.6` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:5ae8f0869d96133fc17937bdf8b8b18d560a1db93c4840a9b4164c22e3af78e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7978afbc6b78911508346884c0630f940bbc3a063e67340222ff64cf6b0b5c40`

```dockerfile
```

-	Layers:
	-	`sha256:96a9b37795564c94b13fa389cc8d40cc04566baf899f9eec5746b5b593757a37`  
		Last Modified: Wed, 30 Sep 2026 21:05:34 GMT  
		Size: 2.4 MB (2387801 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a01a08fd973805718b499566394d5b9ff870980c52e939c35538bc92e4b6cb73`  
		Last Modified: Wed, 30 Sep 2026 21:05:34 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.5.3`

```console
$ docker pull elasticsearch@sha256:e23d4758358a4e356cc2ef3259a5a6f345cacc1722c10dffe6d7150a1a78e52f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.5.3` - linux; amd64

```console
$ docker pull elasticsearch@sha256:e741b5de30ecbaf3cc42b2bb620b10c95a9d323de6428482a0463790e62f8fd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **894.6 MB (894604496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90d5b54bdbac6d517d9dc1d8349fa9b5b225d82e9f0126ffd8cff38a19ed090`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 30 Sep 2026 07:43:40 GMT
ENV container oci
# Wed, 30 Sep 2026 07:43:40 GMT
COPY dir:01535d66c659bac5dc638e334bb8c0882e8bbe4dcc144deb448bf0673973267f in /      
# Wed, 30 Sep 2026 07:43:41 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:43:41 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:43:41 GMT
COPY dir:ab52b8f578b642c9cfffb8cfa8cb04095b99e8289c57b6d99f5db899ce19dbbd in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:43:41 GMT
COPY dir:ab52b8f578b642c9cfffb8cfa8cb04095b99e8289c57b6d99f5db899ce19dbbd in /root/buildinfo/      
# Wed, 30 Sep 2026 07:43:41 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:43:22Z" "org.opencontainers.image.revision"="f354e3d450169972cb1f8df64acae506d96d4c49" "build-date"="2026-09-30T07:43:22Z" "architecture"="x86_64" "vcs-ref"="f354e3d450169972cb1f8df64acae506d96d4c49" "vcs-type"="git" "release"="1790754119"org.opencontainers.image.created=2026-09-30T07:43:22Z,org.opencontainers.image.revision=f354e3d450169972cb1f8df64acae506d96d4c49
# Wed, 30 Sep 2026 21:04:11 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:04:11 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 30 Sep 2026 21:05:47 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 30 Sep 2026 21:05:47 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 30 Sep 2026 21:05:47 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 30 Sep 2026 21:05:58 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 30 Sep 2026 21:05:58 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 30 Sep 2026 21:05:58 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:05:58 GMT
ENV SHELL=/bin/bash
# Wed, 30 Sep 2026 21:05:58 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 30 Sep 2026 21:05:59 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 30 Sep 2026 21:05:59 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 30 Sep 2026 21:05:59 GMT
LABEL org.label-schema.build-date=2026-09-01T16:11:59.322249404Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=367ec317ec5f668dd864d41be06052a567102fec org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T16:11:59.322249404Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=367ec317ec5f668dd864d41be06052a567102fec org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3
# Wed, 30 Sep 2026 21:05:59 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.3 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 30 Sep 2026 21:05:59 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 30 Sep 2026 21:05:59 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 30 Sep 2026 21:05:59 GMT
CMD ["eswrapper"]
# Wed, 30 Sep 2026 21:05:59 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:dc56ef34398ed4f6c8151f31ee5784575bedb47794f5ba379ebc2a25834fac35`  
		Last Modified: Wed, 30 Sep 2026 08:42:23 GMT  
		Size: 40.7 MB (40700861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b3c3ae8ac5e3d52ab5c8fb30f201d4c10312890869844e5866345dac4f5bf5`  
		Last Modified: Wed, 30 Sep 2026 21:06:53 GMT  
		Size: 4.1 MB (4107689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ce191ff65a706813ab4b780c7b7a962837c01248f1ebdbf59edf64abc5d98a2`  
		Last Modified: Wed, 30 Sep 2026 21:06:53 GMT  
		Size: 1.5 KB (1528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:947c9862e2394da2699de6c504751d7fd347cfc6039f87f2487900fdbc7a775a`  
		Last Modified: Wed, 30 Sep 2026 21:06:53 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b7f311dc6b99bff09283eeb836dfc7072fd5b9cb071f13b79f170cdaad115c6`  
		Last Modified: Wed, 30 Sep 2026 21:07:07 GMT  
		Size: 849.7 MB (849705987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38fded88595a30447c210e53670ecdf4c9ceae96c956b20beca919a1c439eb2f`  
		Last Modified: Wed, 30 Sep 2026 21:06:54 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7f01661b3d1cf38e346c5e51c335ab541f3e48c131ff540fb70913cd09e9db`  
		Last Modified: Wed, 30 Sep 2026 21:06:54 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a90157b0187a88078bf16f6ebe7083ae31714278b176b709f3b3304eea0d017a`  
		Last Modified: Wed, 30 Sep 2026 21:06:54 GMT  
		Size: 75.2 KB (75185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ce0f96dbb7fdea82dd17fc42ca1af039da02002dd9de9e92560368299b0912`  
		Last Modified: Wed, 30 Sep 2026 21:06:55 GMT  
		Size: 1.7 KB (1697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.3` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:d43a1d23deb27e92721f3abc2872e0a39c2e4eb48be5c26b58dec276bfbfe7ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2475876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0b9bae2ce2a7657b52285c7eda9ee504b6ac1224b5a065b303231b4b2a97497`

```dockerfile
```

-	Layers:
	-	`sha256:4979324b5757d9fd10453b7d8e3073afd5d22511d564c33da76f810ef9c69e32`  
		Last Modified: Wed, 30 Sep 2026 21:06:53 GMT  
		Size: 2.4 MB (2442102 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c22ed49a37ca776cc72de2987ceb2846f652290d811dca9bbeed38d976ec063`  
		Last Modified: Wed, 30 Sep 2026 21:06:53 GMT  
		Size: 33.8 KB (33774 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.5.3` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:633066e8c42b8d248dda7a1816ed5390b971943db15ee133f2c4f113c64fd60f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **739.1 MB (739103536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff72c6b5c86c054cf70916448753a16f4a61889d993509963ddd9a67bacee72`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:45:10 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 30 Sep 2026 07:45:10 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:45:10 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 30 Sep 2026 07:45:10 GMT
ENV container oci
# Wed, 30 Sep 2026 07:45:10 GMT
COPY dir:06d90a0b7db8992c03ff9664b8cd3e00c58fd39e054579d5795d410389dd5e96 in /      
# Wed, 30 Sep 2026 07:45:10 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:45:10 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:45:10 GMT
COPY dir:c0678317d7ed63442d60483211d5a1c6d09172186a4f2982932461d0f7e083bf in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:45:11 GMT
COPY dir:c0678317d7ed63442d60483211d5a1c6d09172186a4f2982932461d0f7e083bf in /root/buildinfo/      
# Wed, 30 Sep 2026 07:45:11 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:44:47Z" "org.opencontainers.image.revision"="f354e3d450169972cb1f8df64acae506d96d4c49" "build-date"="2026-09-30T07:44:47Z" "architecture"="aarch64" "vcs-ref"="f354e3d450169972cb1f8df64acae506d96d4c49" "vcs-type"="git" "release"="1790754119"org.opencontainers.image.created=2026-09-30T07:44:47Z,org.opencontainers.image.revision=f354e3d450169972cb1f8df64acae506d96d4c49
# Wed, 30 Sep 2026 21:03:21 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:03:21 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 30 Sep 2026 21:04:00 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 30 Sep 2026 21:04:00 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 30 Sep 2026 21:04:00 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 30 Sep 2026 21:04:08 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 30 Sep 2026 21:04:08 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 30 Sep 2026 21:04:08 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:04:08 GMT
ENV SHELL=/bin/bash
# Wed, 30 Sep 2026 21:04:08 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 30 Sep 2026 21:04:08 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 30 Sep 2026 21:04:08 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 30 Sep 2026 21:04:08 GMT
LABEL org.label-schema.build-date=2026-09-01T16:11:59.322249404Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=367ec317ec5f668dd864d41be06052a567102fec org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T16:11:59.322249404Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=367ec317ec5f668dd864d41be06052a567102fec org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3
# Wed, 30 Sep 2026 21:04:08 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.3 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 30 Sep 2026 21:04:08 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 30 Sep 2026 21:04:08 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 30 Sep 2026 21:04:08 GMT
CMD ["eswrapper"]
# Wed, 30 Sep 2026 21:04:08 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:b8f4af811c7c98a1b33bf1a9f90c3e1b1f2296b681895a0031b0560a5db8a0a4`  
		Last Modified: Wed, 30 Sep 2026 08:42:32 GMT  
		Size: 38.8 MB (38801364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e0142dd2d5f37ede6d225e02977a2f28862177d84cbc277e0363747a4b80153`  
		Last Modified: Wed, 30 Sep 2026 21:04:55 GMT  
		Size: 4.1 MB (4102600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79e717cb8cbebe610bac5aff5090bb32ad61164eacbafbe8a3e1d0ed1977206b`  
		Last Modified: Wed, 30 Sep 2026 21:04:55 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c5bfb36a9e036edb5a29a48d69aaf80012983c4cc3658d2daa338d3a4e413e2`  
		Last Modified: Wed, 30 Sep 2026 21:04:55 GMT  
		Size: 9.1 KB (9097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6cb4e1a3b322d3cc86d91617ad6a439beb8158ab5b27d24238f671399fc73f`  
		Last Modified: Wed, 30 Sep 2026 21:05:07 GMT  
		Size: 696.1 MB (696111125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beab0f657370b6342e4b58e8cb360823e756349c831595388de39893450f9ab3`  
		Last Modified: Wed, 30 Sep 2026 21:04:56 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efcead97788d0a0e7b4efc5b9ec6c41cf0d5af80b5dd8c74b70a764caa97705b`  
		Last Modified: Wed, 30 Sep 2026 21:04:56 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e33cd395516ee889d8296aee62c9b29a4aad442f2fe2e1413fcf506bd351b6`  
		Last Modified: Wed, 30 Sep 2026 21:04:57 GMT  
		Size: 74.1 KB (74104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9e37513d0eff0e9fb5ea65ae869c9af362c2106467784ec0fa4d3edc338877`  
		Last Modified: Wed, 30 Sep 2026 21:04:57 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.3` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:25bc7bbda1c936cca52ac156b92ba7c2ccb3bf618e7f889766ebe4b6094f79f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2474840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:140c498d8d16429d7dd30be614af33c9045dbff6048b89b9abba7daf720d3c09`

```dockerfile
```

-	Layers:
	-	`sha256:075ccb754d3fbf39c38941fb7c85cd1ba8df2374dc474183204e04da6ddcf71c`  
		Last Modified: Wed, 30 Sep 2026 21:04:55 GMT  
		Size: 2.4 MB (2440882 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fe3a2395b0438106d0441af8db946c8948134bb875e8d1b24919ffb897436a5`  
		Last Modified: Wed, 30 Sep 2026 21:04:55 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json
