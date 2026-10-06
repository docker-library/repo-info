<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:8.19.23`](#elasticsearch81923)
-	[`elasticsearch:9.4.8`](#elasticsearch948)
-	[`elasticsearch:9.5.5`](#elasticsearch955)

## `elasticsearch:8.19.23`

```console
$ docker pull elasticsearch@sha256:8b1751877c984f3e4f59bafb15fc890e01969a744255fd5f6860c060b62cff36
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:8.19.23` - linux; amd64

```console
$ docker pull elasticsearch@sha256:e5910af940fbbb5a529aa5f4f39273e85a20b76cef1d966473ce05f84d85d394
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **725.5 MB (725491476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5382fb75ec6d5098410b44db1b5558858dcd03aa22cd8417e3fdda6499d0268`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 21:42:12 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Tue, 06 Oct 2026 21:42:13 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 06 Oct 2026 21:42:13 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 06 Oct 2026 21:42:13 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 06 Oct 2026 21:43:54 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Tue, 06 Oct 2026 21:43:54 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 06 Oct 2026 21:43:54 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:43:54 GMT
ENV SHELL=/bin/bash
# Tue, 06 Oct 2026 21:43:54 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:43:55 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 06 Oct 2026 21:43:55 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Tue, 06 Oct 2026 21:43:55 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Tue, 06 Oct 2026 21:43:55 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 06 Oct 2026 21:43:55 GMT
LABEL org.label-schema.build-date=2026-09-30T23:11:55.493565832Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=6940e499f8a38841809b8e295a20c6421c95d9e4 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.23 org.opencontainers.image.created=2026-09-30T23:11:55.493565832Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=6940e499f8a38841809b8e295a20c6421c95d9e4 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.23
# Tue, 06 Oct 2026 21:43:55 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 21:43:55 GMT
CMD ["eswrapper"]
# Tue, 06 Oct 2026 21:43:55 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0764e84abfee01bcc93e8580d436879837306216ac6cad7ea29cb7ee52c125e`  
		Last Modified: Tue, 06 Oct 2026 21:44:47 GMT  
		Size: 6.9 MB (6920980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f2cdec3b6e289d706ce668c52a89dd4fef563802855fdd3a78152201ea4db33`  
		Last Modified: Tue, 06 Oct 2026 21:44:47 GMT  
		Size: 3.5 KB (3530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d661b5d5a82f8fc4ba3cf4dc6c1ffaf62b45acdca2e8ac44f775bbafd96b59d`  
		Last Modified: Tue, 06 Oct 2026 21:44:59 GMT  
		Size: 688.5 MB (688529558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a48c2b961a98e41d64281e8665d0a667c58e5dd1c3cd17920abe03567c1e72ea`  
		Last Modified: Tue, 06 Oct 2026 21:44:47 GMT  
		Size: 9.5 KB (9533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758661ade972c470d24f7f85a25b9d923c2c57403185edefe5752844d1cbf362`  
		Last Modified: Tue, 06 Oct 2026 21:44:48 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3bfdaf72006a6f95fe269e2f7d61586c98cb57a26173449c68ec576dbebf298`  
		Last Modified: Tue, 06 Oct 2026 21:44:48 GMT  
		Size: 164.2 KB (164193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be9c1e0fb6bb157bea93e87049bb2dcc696cb4f42389336e27dc9eb1b13fe7f8`  
		Last Modified: Tue, 06 Oct 2026 21:44:48 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2638d1028467cdde73c3e77a676bc798cc9a6313fc29a71cc0839fbe1a66ebb4`  
		Last Modified: Tue, 06 Oct 2026 21:44:49 GMT  
		Size: 97.1 KB (97102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.23` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:673d1fff8ebefb604142f0a81acd3c4d098a2b58697ca14d9c4d37a7a086da10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3223792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:738a7a8967dff1ee68724c9934e849b07821bbac3da8680fe838433818a24844`

```dockerfile
```

-	Layers:
	-	`sha256:a533ebedc893953e659c182a3c4da25b0215b503cadc3bd7169bbc598dd890b1`  
		Last Modified: Tue, 06 Oct 2026 21:44:47 GMT  
		Size: 3.2 MB (3186977 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa86dddffc5cb20d3167957dd640ad5baf6e01ba211442d57f7ed8e3060f372e`  
		Last Modified: Tue, 06 Oct 2026 21:44:47 GMT  
		Size: 36.8 KB (36815 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:8.19.23` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:fea91543269b7175e74c109f1e1d55c62818657318e4e6f37aff79be6b99ec95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **573.4 MB (573396157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff985bbe0813f53081276bd2d9876e3154b16d65bc20830f669e7a0f52b1f5f`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 21:41:54 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Tue, 06 Oct 2026 21:41:54 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 06 Oct 2026 21:41:54 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 06 Oct 2026 21:41:54 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 06 Oct 2026 21:42:31 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Tue, 06 Oct 2026 21:42:31 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 06 Oct 2026 21:42:31 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:42:31 GMT
ENV SHELL=/bin/bash
# Tue, 06 Oct 2026 21:42:31 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:42:31 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 06 Oct 2026 21:42:31 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Tue, 06 Oct 2026 21:42:31 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Tue, 06 Oct 2026 21:42:31 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 06 Oct 2026 21:42:31 GMT
LABEL org.label-schema.build-date=2026-09-30T23:11:55.493565832Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=6940e499f8a38841809b8e295a20c6421c95d9e4 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.23 org.opencontainers.image.created=2026-09-30T23:11:55.493565832Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=6940e499f8a38841809b8e295a20c6421c95d9e4 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.23
# Tue, 06 Oct 2026 21:42:31 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 21:42:31 GMT
CMD ["eswrapper"]
# Tue, 06 Oct 2026 21:42:31 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed87e3e12bfa6c814ebed70d229707d8577fe18766c1f441c7163677b5bd00e6`  
		Last Modified: Tue, 06 Oct 2026 21:43:11 GMT  
		Size: 6.8 MB (6782830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e88667251fbf7e0b10abb08b5719dad92c524a179d7d2d47f0cdeaf9b1dfc84`  
		Last Modified: Tue, 06 Oct 2026 21:43:10 GMT  
		Size: 3.5 KB (3528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fdf8fc581d29111d2b8801823bbdedb6cbc150013b800a81d3972c55c71a784`  
		Last Modified: Tue, 06 Oct 2026 21:43:21 GMT  
		Size: 537.4 MB (537400671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71131238ba0c6f936f02e749a18dd6286ae4cd32148640e27f6f03b90765d75f`  
		Last Modified: Tue, 06 Oct 2026 21:43:10 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:340325c66cd3e3d0e4a5477392b634b730330742f0ce6cd75c5033158b798f62`  
		Last Modified: Tue, 06 Oct 2026 21:43:11 GMT  
		Size: 1.7 KB (1715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b9ba346d7cfc8dc3fd2791237832e978ba974efb9062ddef1c4a58cbce40d5`  
		Last Modified: Tue, 06 Oct 2026 21:43:12 GMT  
		Size: 160.7 KB (160686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e83246068051e2ebd8c572d5a3a69582f3c6c9d006d4046a6fbc8f4523ebe43`  
		Last Modified: Tue, 06 Oct 2026 21:43:12 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66fa70c5f8a3e9e04f663ade383ad77d5b28a5da5dfa795c0440863788e8ffe1`  
		Last Modified: Tue, 06 Oct 2026 21:43:13 GMT  
		Size: 97.1 KB (97099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.23` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:3330f0c91417012c6e30db79ad5fc2e67ee04fd6afe6c4013cef09860a23b9bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3224407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24cb516fc1896de8a0c871b5e10f9e00a54d4a4b7327699ba26c4ca2ec43eda`

```dockerfile
```

-	Layers:
	-	`sha256:ccf796737f9d106bf6471eb8fbbd0622f3e3261ec80701a6afba43c73ba25e1f`  
		Last Modified: Tue, 06 Oct 2026 21:43:10 GMT  
		Size: 3.2 MB (3187390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d169c7dfa775b1169d2e9e2aa5b657cfc39d48dae2c8a967a717633283eac12e`  
		Last Modified: Tue, 06 Oct 2026 21:43:10 GMT  
		Size: 37.0 KB (37017 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.4.8`

```console
$ docker pull elasticsearch@sha256:3a6734fab633d67e3d4703d4784fe7f6514bc338766d0ecee4050e630a95c1a3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.8` - linux; amd64

```console
$ docker pull elasticsearch@sha256:4c61164f43e3a9553cefc61429b80666a1af40cd799813c42745e32fe7a29385
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **869.3 MB (869320506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1157063a8ac99e0c90b24009d83a82101154be953a63e5514bfbe849cf401d7`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 06 Oct 2026 09:41:08 GMT
ENV container oci
# Tue, 06 Oct 2026 09:41:08 GMT
COPY dir:f50158eee9e07cbf4aceebaec88e4c8773d7166ca83ee42f91072d081a60608e in /      
# Tue, 06 Oct 2026 09:41:08 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 09:41:08 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 09:41:08 GMT
COPY dir:5310e3bbec09dd41addbb6f81f36a5a94f773036935363707f1d4e803fd1f750 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 09:41:08 GMT
COPY dir:5310e3bbec09dd41addbb6f81f36a5a94f773036935363707f1d4e803fd1f750 in /root/buildinfo/      
# Tue, 06 Oct 2026 09:41:09 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T09:40:51Z" "org.opencontainers.image.revision"="84687598811e20f52a46b476c889a722893da6fd" "build-date"="2026-10-06T09:40:51Z" "architecture"="x86_64" "vcs-ref"="84687598811e20f52a46b476c889a722893da6fd" "vcs-type"="git" "release"="1791279563"org.opencontainers.image.created=2026-10-06T09:40:51Z,org.opencontainers.image.revision=84687598811e20f52a46b476c889a722893da6fd
# Tue, 06 Oct 2026 23:01:00 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 06 Oct 2026 23:01:00 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 06 Oct 2026 23:02:37 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 06 Oct 2026 23:02:37 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 06 Oct 2026 23:02:37 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 06 Oct 2026 23:02:48 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 06 Oct 2026 23:02:48 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 06 Oct 2026 23:02:48 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 23:02:48 GMT
ENV SHELL=/bin/bash
# Tue, 06 Oct 2026 23:02:48 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 06 Oct 2026 23:02:48 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 06 Oct 2026 23:02:48 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 06 Oct 2026 23:02:48 GMT
LABEL org.label-schema.build-date=2026-10-01T01:07:34.887571291Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c042abbb0eaaaa61b49beef21d517468861a4db2 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-10-01T01:07:34.887571291Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c042abbb0eaaaa61b49beef21d517468861a4db2 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Tue, 06 Oct 2026 23:02:48 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 06 Oct 2026 23:02:48 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 06 Oct 2026 23:02:48 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 23:02:48 GMT
CMD ["eswrapper"]
# Tue, 06 Oct 2026 23:02:48 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:5f6aa419d45f217f7bbb8965a7f5de28a0c0124032a4ff1b28141d8f44c4fea7`  
		Last Modified: Tue, 06 Oct 2026 10:25:27 GMT  
		Size: 40.7 MB (40701553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c997fef71aa5d7c50916c3be9072835d5b5e74db8dfe1eb5f2c0baa6c5a53b5`  
		Last Modified: Tue, 06 Oct 2026 23:03:48 GMT  
		Size: 4.4 MB (4405609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e9d6a2c78ec223e6783922039dc16f6f8f5828266862d6053665adb4cd5bda`  
		Last Modified: Tue, 06 Oct 2026 23:03:47 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e25750f03792c40af0b88bbc3ba99017f51129869308992cdfc14ac536c8c3`  
		Last Modified: Tue, 06 Oct 2026 23:03:47 GMT  
		Size: 9.5 KB (9528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b6298c38a876dca54cc7f6afe5f2e699ad7acb8a51e80064ee7eddfabd23fce`  
		Last Modified: Tue, 06 Oct 2026 23:04:03 GMT  
		Size: 824.1 MB (824123395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8b0d1803604a3c82e74e8961e00daff4a317aeb1f6d5ae17751df794be05151`  
		Last Modified: Tue, 06 Oct 2026 23:03:49 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09616d16264fb429c45dd2b225db61484678b7ca84d09aea600383a58de0a65f`  
		Last Modified: Tue, 06 Oct 2026 23:03:49 GMT  
		Size: 1.7 KB (1715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:710afa1da6aab6c4f6411328bcfe65f570097dcef154d78547553ca038078e92`  
		Last Modified: Tue, 06 Oct 2026 23:03:49 GMT  
		Size: 75.2 KB (75183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7e6b96449790a14b3d19be010cddd1e5362d8ed1acdee08b7fe0e21e16b7bdb`  
		Last Modified: Tue, 06 Oct 2026 23:03:50 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:16dd428920469e32ba7ad87e55162b88259e138edfcacd13611c44df7ff90af5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24962b49c944d504eaced79a98d2862b25efc35158ceac048ee20d0ec018e733`

```dockerfile
```

-	Layers:
	-	`sha256:a38aba73a73e7f0121412c88bc064a331b3783f94a5dd12d51164607c1a1c05a`  
		Last Modified: Tue, 06 Oct 2026 23:03:48 GMT  
		Size: 2.4 MB (2386386 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b58911b40c8ad3a72771011c69350807b508cd6fef2a18f482f8777df0fceced`  
		Last Modified: Tue, 06 Oct 2026 23:03:47 GMT  
		Size: 33.8 KB (33784 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.8` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:1b087bf64b266bdf5593a98b1a330bb657ca5c5a638ac739836ff4615e844406
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.9 MB (713930934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef882cd2cdc3e284f856de022cf2c5bfc77d801853e12d6b3dc21669d616e02`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 06 Oct 2026 09:42:21 GMT
ENV container oci
# Tue, 06 Oct 2026 09:42:22 GMT
COPY dir:1d4511abff0d0cabc191309fe39f03480b6374c9bc8873ac0c048d111c3a696b in /      
# Tue, 06 Oct 2026 09:42:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 09:42:22 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 09:42:22 GMT
COPY dir:ed9162b19cefc1e3d222d4f003eb91be76332500a704865cd7734be6ad4d448e in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 09:42:22 GMT
COPY dir:ed9162b19cefc1e3d222d4f003eb91be76332500a704865cd7734be6ad4d448e in /root/buildinfo/      
# Tue, 06 Oct 2026 09:42:22 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T09:42:00Z" "org.opencontainers.image.revision"="84687598811e20f52a46b476c889a722893da6fd" "build-date"="2026-10-06T09:42:00Z" "architecture"="aarch64" "vcs-ref"="84687598811e20f52a46b476c889a722893da6fd" "vcs-type"="git" "release"="1791279563"org.opencontainers.image.created=2026-10-06T09:42:00Z,org.opencontainers.image.revision=84687598811e20f52a46b476c889a722893da6fd
# Tue, 06 Oct 2026 23:00:48 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 06 Oct 2026 23:00:48 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 06 Oct 2026 23:01:22 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 06 Oct 2026 23:01:22 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 06 Oct 2026 23:01:22 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 06 Oct 2026 23:01:29 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 06 Oct 2026 23:01:30 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 06 Oct 2026 23:01:30 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 23:01:30 GMT
ENV SHELL=/bin/bash
# Tue, 06 Oct 2026 23:01:30 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 06 Oct 2026 23:01:30 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 06 Oct 2026 23:01:30 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 06 Oct 2026 23:01:30 GMT
LABEL org.label-schema.build-date=2026-10-01T01:07:34.887571291Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c042abbb0eaaaa61b49beef21d517468861a4db2 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-10-01T01:07:34.887571291Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c042abbb0eaaaa61b49beef21d517468861a4db2 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Tue, 06 Oct 2026 23:01:30 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 06 Oct 2026 23:01:30 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 06 Oct 2026 23:01:30 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 23:01:30 GMT
CMD ["eswrapper"]
# Tue, 06 Oct 2026 23:01:30 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:6e3ee034ac700d9806da676936d58b1720e1c6ca90636cbbae190d0a885a71b2`  
		Last Modified: Tue, 06 Oct 2026 10:50:47 GMT  
		Size: 38.8 MB (38805435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffd9b384eee0dfab261d61e879897989b890dc8519a1cae19e77637e20cdb9c2`  
		Last Modified: Tue, 06 Oct 2026 23:02:17 GMT  
		Size: 4.4 MB (4394059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942d35b96f97b11e750f15e43e5d82aa7e274a8d103dd5e1a0396161ba38df54`  
		Last Modified: Tue, 06 Oct 2026 23:02:16 GMT  
		Size: 1.5 KB (1528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0921424f1957bd164e4354dfe81e4b10bfce386936a33fc42b013472249f2b9a`  
		Last Modified: Tue, 06 Oct 2026 23:02:17 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede66fafb2725303cd40e55d18c10f5bfde0e49566cbd472369711e746f6ef86`  
		Last Modified: Tue, 06 Oct 2026 23:02:29 GMT  
		Size: 670.6 MB (670642993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f0b5396c37f5f34d77eb6ef35c046c18611aa02d5bd402b0b3e4b60eb08750b`  
		Last Modified: Tue, 06 Oct 2026 23:02:18 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9040f39dd2f9d74103834ee35fe96be7caf192eaddd21ddf9c4fb52f53405f2`  
		Last Modified: Tue, 06 Oct 2026 23:02:18 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025f39f43693c3c2d7b59c1a04af29e7748ac967a2ec563224955d20341bdf11`  
		Last Modified: Tue, 06 Oct 2026 23:02:18 GMT  
		Size: 74.1 KB (74104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7055b2ecdf47ed6834f3c2f73278dfcd1e6680244ebbc83cf436af484417e360`  
		Last Modified: Tue, 06 Oct 2026 23:02:19 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:31a0b7efcc20d9385432462c3c0d8b1005da703523e9a72260f6a4f881a77ae1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2419132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c58fe573d33d00b5d9ca635c5fcd0eecb23b1f44b2f1f2eea144d2da2b17ec`

```dockerfile
```

-	Layers:
	-	`sha256:79e4331d9cdc46d5f5306b63b853c98985753177e8689f6df0c32034a6149706`  
		Last Modified: Tue, 06 Oct 2026 23:02:17 GMT  
		Size: 2.4 MB (2385166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4dd0de4e42cb23736c2e84b2c1310d80adf09663ce4fca283cfce8d04f6314b3`  
		Last Modified: Tue, 06 Oct 2026 23:02:16 GMT  
		Size: 34.0 KB (33966 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.5.5`

```console
$ docker pull elasticsearch@sha256:320bef0140dcaa30527babaae9d7a41c0ccc001e97ab87c08171d867b89e8f4f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.5.5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:cb4893c81bf99036c8bf89bfa814b9a6410be49bc22be0b1b58167084dee0038
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **895.8 MB (895820941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53d86200b8121ba02560413286baf1f1bad2d4f04292b42a167c7c21bbd2ff73`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 06 Oct 2026 09:41:08 GMT
ENV container oci
# Tue, 06 Oct 2026 09:41:08 GMT
COPY dir:f50158eee9e07cbf4aceebaec88e4c8773d7166ca83ee42f91072d081a60608e in /      
# Tue, 06 Oct 2026 09:41:08 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 09:41:08 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 09:41:08 GMT
COPY dir:5310e3bbec09dd41addbb6f81f36a5a94f773036935363707f1d4e803fd1f750 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 09:41:08 GMT
COPY dir:5310e3bbec09dd41addbb6f81f36a5a94f773036935363707f1d4e803fd1f750 in /root/buildinfo/      
# Tue, 06 Oct 2026 09:41:09 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T09:40:51Z" "org.opencontainers.image.revision"="84687598811e20f52a46b476c889a722893da6fd" "build-date"="2026-10-06T09:40:51Z" "architecture"="x86_64" "vcs-ref"="84687598811e20f52a46b476c889a722893da6fd" "vcs-type"="git" "release"="1791279563"org.opencontainers.image.created=2026-10-06T09:40:51Z,org.opencontainers.image.revision=84687598811e20f52a46b476c889a722893da6fd
# Tue, 06 Oct 2026 23:01:59 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 06 Oct 2026 23:01:59 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 06 Oct 2026 23:03:32 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 06 Oct 2026 23:03:32 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 06 Oct 2026 23:03:32 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 06 Oct 2026 23:03:44 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 06 Oct 2026 23:03:44 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 06 Oct 2026 23:03:44 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 23:03:44 GMT
ENV SHELL=/bin/bash
# Tue, 06 Oct 2026 23:03:44 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 06 Oct 2026 23:03:44 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 06 Oct 2026 23:03:44 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 06 Oct 2026 23:03:44 GMT
LABEL org.label-schema.build-date=2026-09-30T22:12:03.984586187Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=48acba663b09e70b115dd879329141506c377890 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T22:12:03.984586187Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=48acba663b09e70b115dd879329141506c377890 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Tue, 06 Oct 2026 23:03:44 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 06 Oct 2026 23:03:44 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 06 Oct 2026 23:03:44 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 23:03:44 GMT
CMD ["eswrapper"]
# Tue, 06 Oct 2026 23:03:44 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:5f6aa419d45f217f7bbb8965a7f5de28a0c0124032a4ff1b28141d8f44c4fea7`  
		Last Modified: Tue, 06 Oct 2026 10:25:27 GMT  
		Size: 40.7 MB (40701553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e356f8130fc9652e94ded8b200b813af278084112af4a8538d30d0df078f95`  
		Last Modified: Tue, 06 Oct 2026 23:04:44 GMT  
		Size: 4.4 MB (4405579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede6ea5ffd9b12cf1d8705dfcd986cc1fc0ef60854a40850292cbaa5191e8b68`  
		Last Modified: Tue, 06 Oct 2026 23:04:44 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaec225528463573faec8ebe93e87d0eaa9ff8ac8e4510b222c506970660f741`  
		Last Modified: Tue, 06 Oct 2026 23:04:44 GMT  
		Size: 9.5 KB (9529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f789d28e4c78bce7ce6601d37fbfea95826841c393f9e2e17de56b6d57e4fae1`  
		Last Modified: Tue, 06 Oct 2026 23:04:59 GMT  
		Size: 850.6 MB (850623856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afd2451ff19eb4ac250a4ce8a841e46e276051dc0952faa7bdb405515a23800b`  
		Last Modified: Tue, 06 Oct 2026 23:04:45 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f327eca9eb42f33f2f77a4fe72da3ae6036bcf9624ba3ca3c2904b20de04c1b`  
		Last Modified: Tue, 06 Oct 2026 23:04:45 GMT  
		Size: 1.7 KB (1715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:305c2a4f4bdcd490252df52a0e33fb28b752b39741604d659d9f7919fb2fe45d`  
		Last Modified: Tue, 06 Oct 2026 23:04:45 GMT  
		Size: 75.2 KB (75184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2280955927980ba195128a92bc3ca50a20fd9edbd8b9b9f6464383d93103b2d`  
		Last Modified: Tue, 06 Oct 2026 23:04:46 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:5a2189b40fa1648e725ec18373038d3a9479b9d49c94adf03645d91784544a9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2471251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55cd941b72a152c92e245f772ecd271cc87d5a945813f443bdb50b7689f1db38`

```dockerfile
```

-	Layers:
	-	`sha256:066dc26c80fa1ae980995bccf09c851df4ec5ef3ebfbcbf5e4ac64ca1086fc2d`  
		Last Modified: Tue, 06 Oct 2026 23:04:44 GMT  
		Size: 2.4 MB (2437467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71e22821de75dabdc39c4e31b6ed035fe8d4dd31e48aee134dbccf2b61e258d0`  
		Last Modified: Tue, 06 Oct 2026 23:04:44 GMT  
		Size: 33.8 KB (33784 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.5.5` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:434903cd4e6e592752e626ed88bcdef3fe36f9808260347d039964e7a98702f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **740.4 MB (740379622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cdd620571d70e4f3f23f3db044d6a9046291ea387b0e701a9c03193b1dc0103`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 06 Oct 2026 09:42:21 GMT
ENV container oci
# Tue, 06 Oct 2026 09:42:22 GMT
COPY dir:1d4511abff0d0cabc191309fe39f03480b6374c9bc8873ac0c048d111c3a696b in /      
# Tue, 06 Oct 2026 09:42:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 09:42:22 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 09:42:22 GMT
COPY dir:ed9162b19cefc1e3d222d4f003eb91be76332500a704865cd7734be6ad4d448e in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 09:42:22 GMT
COPY dir:ed9162b19cefc1e3d222d4f003eb91be76332500a704865cd7734be6ad4d448e in /root/buildinfo/      
# Tue, 06 Oct 2026 09:42:22 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T09:42:00Z" "org.opencontainers.image.revision"="84687598811e20f52a46b476c889a722893da6fd" "build-date"="2026-10-06T09:42:00Z" "architecture"="aarch64" "vcs-ref"="84687598811e20f52a46b476c889a722893da6fd" "vcs-type"="git" "release"="1791279563"org.opencontainers.image.created=2026-10-06T09:42:00Z,org.opencontainers.image.revision=84687598811e20f52a46b476c889a722893da6fd
# Tue, 06 Oct 2026 23:01:32 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 06 Oct 2026 23:01:32 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 06 Oct 2026 23:02:07 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 06 Oct 2026 23:02:07 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 06 Oct 2026 23:02:07 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 06 Oct 2026 23:02:15 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 06 Oct 2026 23:02:15 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 06 Oct 2026 23:02:15 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 23:02:15 GMT
ENV SHELL=/bin/bash
# Tue, 06 Oct 2026 23:02:15 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 06 Oct 2026 23:02:15 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 06 Oct 2026 23:02:15 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 06 Oct 2026 23:02:15 GMT
LABEL org.label-schema.build-date=2026-09-30T22:12:03.984586187Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=48acba663b09e70b115dd879329141506c377890 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T22:12:03.984586187Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=48acba663b09e70b115dd879329141506c377890 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Tue, 06 Oct 2026 23:02:15 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 06 Oct 2026 23:02:15 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 06 Oct 2026 23:02:15 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 23:02:15 GMT
CMD ["eswrapper"]
# Tue, 06 Oct 2026 23:02:15 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:6e3ee034ac700d9806da676936d58b1720e1c6ca90636cbbae190d0a885a71b2`  
		Last Modified: Tue, 06 Oct 2026 10:50:47 GMT  
		Size: 38.8 MB (38805435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f39399bdd01b3167473a8bebcf53930588a803bc332a81d675af6604472bccc`  
		Last Modified: Tue, 06 Oct 2026 23:03:03 GMT  
		Size: 4.4 MB (4393955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7af143247016b7b4e4e7d2fe0d02c5905c6c3bca9abf185eb96c66ec39d16f4f`  
		Last Modified: Tue, 06 Oct 2026 23:03:03 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f48103821beb7f71dad063daa31bbe733b80822886bf8cd30c0f2ed49cdbfd7e`  
		Last Modified: Tue, 06 Oct 2026 23:03:02 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b258bc2f9e645425416708528224822e08db8667261aa1f027e2ddb15e63ddcd`  
		Last Modified: Tue, 06 Oct 2026 23:03:15 GMT  
		Size: 697.1 MB (697091788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e3e6ef01b394dab62105633f99efae41433f93f33709dfae93002894d041ae8`  
		Last Modified: Tue, 06 Oct 2026 23:03:04 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6bd303073d8f11f860e8483a233f4192076e9089cf4ac12362cbd3ed868429`  
		Last Modified: Tue, 06 Oct 2026 23:03:04 GMT  
		Size: 1.7 KB (1715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e99c63e78b57667a2f8e56d9480ee4fd8c16a9a78c24e4b18b396f55476bd7a`  
		Last Modified: Tue, 06 Oct 2026 23:03:04 GMT  
		Size: 74.1 KB (74104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ac7586df62d87cae6e98aedc962cc7cc03e553f604034de3dfd04c73181fb4`  
		Last Modified: Tue, 06 Oct 2026 23:03:05 GMT  
		Size: 1.7 KB (1697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:20393910dfe310a0a807658b924dde8e1b7a5c00667e91844fc84938a3f09172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2470213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c625e5811e95ac3c0a652570dc4c15dd19f50f4fee9ee78970f5a5c2fece6f51`

```dockerfile
```

-	Layers:
	-	`sha256:146dc9eb258efdf1314f164e53f0fa6ef5ecd6fe5928adc74d3a9ff61e9f376f`  
		Last Modified: Tue, 06 Oct 2026 23:03:03 GMT  
		Size: 2.4 MB (2436247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:205170de8cd180a200a7101b2b9cfedfbd93a04a6ae4b58cc0f07dd377973e30`  
		Last Modified: Tue, 06 Oct 2026 23:03:02 GMT  
		Size: 34.0 KB (33966 bytes)  
		MIME: application/vnd.in-toto+json
