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
$ docker pull elasticsearch@sha256:5c5a1e3f72c79fecc6d50f37bf5b7b5b6a219230acddce0cee3a0e085b14b1dc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.8` - linux; amd64

```console
$ docker pull elasticsearch@sha256:92c4b508fef6547ccf4e2addeb153f3351552c57a7a9b083563089ae2fbf65d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **869.3 MB (869348292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b69a8e440a1ff0d60b152609606d6440599d2f4e4ce1c5e9d345e8bc8b0690`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 12 Oct 2026 12:37:49 GMT
ENV container oci
# Mon, 12 Oct 2026 12:37:50 GMT
COPY dir:e45266e494b9752d347f82bff660e367c92279dd3110ea5b3aba7f7174fdf656 in /      
# Mon, 12 Oct 2026 12:37:50 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 12:37:50 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 12:37:51 GMT
COPY dir:a1b3412d0ee6658591c067c250fc387d859e4d182c15f2dde66e7f77f7cb6d4a in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 12:37:51 GMT
COPY dir:a1b3412d0ee6658591c067c250fc387d859e4d182c15f2dde66e7f77f7cb6d4a in /root/buildinfo/      
# Mon, 12 Oct 2026 12:37:51 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T12:36:05Z" "org.opencontainers.image.revision"="605f9da3afeb17ea0827cac3edf823279a26c42f" "build-date"="2026-10-12T12:36:05Z" "architecture"="x86_64" "vcs-ref"="605f9da3afeb17ea0827cac3edf823279a26c42f" "vcs-type"="git" "release"="1791808450"org.opencontainers.image.created=2026-10-12T12:36:05Z,org.opencontainers.image.revision=605f9da3afeb17ea0827cac3edf823279a26c42f
# Tue, 13 Oct 2026 00:35:37 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:35:37 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 13 Oct 2026 00:37:14 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 13 Oct 2026 00:37:14 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 13 Oct 2026 00:37:14 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 13 Oct 2026 00:37:25 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 13 Oct 2026 00:37:25 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 13 Oct 2026 00:37:25 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:37:25 GMT
ENV SHELL=/bin/bash
# Tue, 13 Oct 2026 00:37:25 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:37:25 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 13 Oct 2026 00:37:25 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 13 Oct 2026 00:37:25 GMT
LABEL org.label-schema.build-date=2026-10-01T01:07:34.887571291Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c042abbb0eaaaa61b49beef21d517468861a4db2 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-10-01T01:07:34.887571291Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c042abbb0eaaaa61b49beef21d517468861a4db2 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Tue, 13 Oct 2026 00:37:25 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 13 Oct 2026 00:37:25 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 13 Oct 2026 00:37:25 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 00:37:25 GMT
CMD ["eswrapper"]
# Tue, 13 Oct 2026 00:37:25 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:c8fb2f748d0518200c41845a3bbb526397078028e42feaddaf7208534fc575b4`  
		Last Modified: Mon, 12 Oct 2026 14:31:54 GMT  
		Size: 40.7 MB (40731722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d67165cc206415c2527fffa7bf596a75070a6ef810f7f119e5d889e098afc00`  
		Last Modified: Tue, 13 Oct 2026 00:38:23 GMT  
		Size: 4.4 MB (4403183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b283749b567e0468db703bfd5dba4bbeb3e0ab9fdc33837a613ec9a9b4d6d71f`  
		Last Modified: Tue, 13 Oct 2026 00:38:23 GMT  
		Size: 1.5 KB (1528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5b7652b10cf5e0fd4aab443a45ac942f9a747b6ff2d1ceba0b426ade309a95`  
		Last Modified: Tue, 13 Oct 2026 00:38:23 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8167d7855b007f15d65f90445b4f2baa2c86e61ddc5a21900803c48f21f9518`  
		Last Modified: Tue, 13 Oct 2026 00:38:37 GMT  
		Size: 824.1 MB (824123425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbfb904be9309590c030787f849d6a7dc25902503f6c1854e4936597ccb0c361`  
		Last Modified: Tue, 13 Oct 2026 00:38:24 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3ac7f9839f0a55676f2e236fc0490c12b6b57b9c00a537f86f94b6711884aed`  
		Last Modified: Tue, 13 Oct 2026 00:38:24 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5656311205d5369fec75848153bca5b68f62ec2384e3fe9ee31037caf7e96ec6`  
		Last Modified: Tue, 13 Oct 2026 00:38:25 GMT  
		Size: 75.2 KB (75189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6de1ac29e1ac9aab74c52319479975653220acce6c53d699ff39d613747ba3f`  
		Last Modified: Tue, 13 Oct 2026 00:38:25 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:958be226346a0deebf8243aa29ec7fa63dc22e3fbf7b8fc56aa345880e23c8c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3f05f27fe7da1567abf54f7c6dd51d80d20d8e2d78aac2a2314377f180349ed`

```dockerfile
```

-	Layers:
	-	`sha256:da6fae249741a591ef7d0a3dbf095593049b3d82fb65f208d20bb4c500efcb84`  
		Last Modified: Tue, 13 Oct 2026 00:38:23 GMT  
		Size: 2.4 MB (2386386 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f41f34db474fc7a060a55b7dc308c48b285d61ad7adb4d2aea2840d5a1794d4c`  
		Last Modified: Tue, 13 Oct 2026 00:38:23 GMT  
		Size: 33.8 KB (33783 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.8` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:d0d69a77d441e3f3a21034dcc257be0d6c16915b39e029cb459c25e073c5cad1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.9 MB (713924543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88631408e07dcb0af7560be82fd1e259ec167ab345c2cc88cd4c567973eefe17`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 12 Oct 2026 12:37:19 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:19 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 12 Oct 2026 12:37:20 GMT
ENV container oci
# Mon, 12 Oct 2026 12:37:21 GMT
COPY dir:123af182f2411d6301e92c5816a09ad572a38ac45c6a006a2a67fe12bba24337 in /      
# Mon, 12 Oct 2026 12:37:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 12:37:22 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 12:37:22 GMT
COPY dir:af25db34574ac74a77dcb2c3247cf0e47211ca3e53116d59e2c507bd5db60e5e in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 12:37:22 GMT
COPY dir:af25db34574ac74a77dcb2c3247cf0e47211ca3e53116d59e2c507bd5db60e5e in /root/buildinfo/      
# Mon, 12 Oct 2026 12:37:23 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T12:36:49Z" "org.opencontainers.image.revision"="605f9da3afeb17ea0827cac3edf823279a26c42f" "build-date"="2026-10-12T12:36:49Z" "architecture"="aarch64" "vcs-ref"="605f9da3afeb17ea0827cac3edf823279a26c42f" "vcs-type"="git" "release"="1791808450"org.opencontainers.image.created=2026-10-12T12:36:49Z,org.opencontainers.image.revision=605f9da3afeb17ea0827cac3edf823279a26c42f
# Tue, 13 Oct 2026 00:33:48 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:33:48 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 13 Oct 2026 00:35:06 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 13 Oct 2026 00:35:06 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 13 Oct 2026 00:35:06 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 13 Oct 2026 00:35:13 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 13 Oct 2026 00:35:13 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 13 Oct 2026 00:35:13 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:35:13 GMT
ENV SHELL=/bin/bash
# Tue, 13 Oct 2026 00:35:13 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:35:13 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 13 Oct 2026 00:35:13 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 13 Oct 2026 00:35:13 GMT
LABEL org.label-schema.build-date=2026-10-01T01:07:34.887571291Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c042abbb0eaaaa61b49beef21d517468861a4db2 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-10-01T01:07:34.887571291Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c042abbb0eaaaa61b49beef21d517468861a4db2 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Tue, 13 Oct 2026 00:35:13 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 13 Oct 2026 00:35:13 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 13 Oct 2026 00:35:13 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 00:35:13 GMT
CMD ["eswrapper"]
# Tue, 13 Oct 2026 00:35:13 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:e9b14607c5b59da407fa1d8ceb91765c821f6a3e5637af082c822b0741fd9481`  
		Last Modified: Mon, 12 Oct 2026 14:30:43 GMT  
		Size: 38.8 MB (38798784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec58878f92ee1f984d8ce1df90a2d4f48a134a3bc064ac226a1fc784fd3996ec`  
		Last Modified: Tue, 13 Oct 2026 00:36:00 GMT  
		Size: 4.4 MB (4394294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9e4c27523bb83c0521a64d0da0da8e0a8b2fb3f2a5243c3d66307457cea998c`  
		Last Modified: Tue, 13 Oct 2026 00:35:59 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6a96f5f91fe12726e381f868dc72d544fdc246d31bc2db56ae9460eba17c03`  
		Last Modified: Tue, 13 Oct 2026 00:35:59 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3ff56ee0ef3ccc496f65bc400b509b9f5cb43cb8d1b23292c676c1f0ee0afcf`  
		Last Modified: Tue, 13 Oct 2026 00:36:12 GMT  
		Size: 670.6 MB (670643017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b41f9c66038d49a15daa55d653d5538761ea35d0447bd9c30d1cda7ccc18db7`  
		Last Modified: Tue, 13 Oct 2026 00:36:01 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62806b94b984bf3a8216d5e68455c9908f5f0c6f6d3c7857086054da5495df50`  
		Last Modified: Tue, 13 Oct 2026 00:36:01 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b75c4172bf1ce9833cff7a712d7b8c0491f43b2e2cce5c9453f3be9ef553510`  
		Last Modified: Tue, 13 Oct 2026 00:36:01 GMT  
		Size: 74.1 KB (74103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bed936fd9ac62054771f054e2698e316c23ac3ea8ecacf1a52a5b3a61daf346`  
		Last Modified: Tue, 13 Oct 2026 00:36:02 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:dfb3127ae6ec55c1c5b46e8327120c3b5e1002cbd2929dade72269c24e1f1a94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2419132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd1bab1201567b4716b622bde6c8a577aad611244e57da51605dbb49855fbe42`

```dockerfile
```

-	Layers:
	-	`sha256:ea8310fc209cef3cc425ff19f128bffcd7dc9b788b6f55bc936db9c5b3509782`  
		Last Modified: Tue, 13 Oct 2026 00:36:00 GMT  
		Size: 2.4 MB (2385166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a02ce92c3b8176e159cfdf977c1762612337946ad15996db904f3c4243afbf0a`  
		Last Modified: Tue, 13 Oct 2026 00:35:59 GMT  
		Size: 34.0 KB (33966 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.5.5`

```console
$ docker pull elasticsearch@sha256:4e69180ed6f2abc91e85d8f3d5e393fed19ce3f4135489dc8636b7f6a9c8eeea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.5.5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:d4e031cc3ba99fd6b40fd7434b9570e62cc4dc1d8f5b733821d370e65c07e935
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **895.8 MB (895848613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9995b8b72be968cb98b7579cfbee57d01f3bdb8e96d928122dfa5988015e4cd8`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 12 Oct 2026 12:37:49 GMT
ENV container oci
# Mon, 12 Oct 2026 12:37:50 GMT
COPY dir:e45266e494b9752d347f82bff660e367c92279dd3110ea5b3aba7f7174fdf656 in /      
# Mon, 12 Oct 2026 12:37:50 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 12:37:50 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 12:37:51 GMT
COPY dir:a1b3412d0ee6658591c067c250fc387d859e4d182c15f2dde66e7f77f7cb6d4a in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 12:37:51 GMT
COPY dir:a1b3412d0ee6658591c067c250fc387d859e4d182c15f2dde66e7f77f7cb6d4a in /root/buildinfo/      
# Mon, 12 Oct 2026 12:37:51 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T12:36:05Z" "org.opencontainers.image.revision"="605f9da3afeb17ea0827cac3edf823279a26c42f" "build-date"="2026-10-12T12:36:05Z" "architecture"="x86_64" "vcs-ref"="605f9da3afeb17ea0827cac3edf823279a26c42f" "vcs-type"="git" "release"="1791808450"org.opencontainers.image.created=2026-10-12T12:36:05Z,org.opencontainers.image.revision=605f9da3afeb17ea0827cac3edf823279a26c42f
# Tue, 13 Oct 2026 00:35:45 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:35:45 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 13 Oct 2026 00:37:22 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 13 Oct 2026 00:37:22 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 13 Oct 2026 00:37:22 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 13 Oct 2026 00:37:33 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 13 Oct 2026 00:37:33 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 13 Oct 2026 00:37:33 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:37:33 GMT
ENV SHELL=/bin/bash
# Tue, 13 Oct 2026 00:37:33 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:37:33 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 13 Oct 2026 00:37:33 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 13 Oct 2026 00:37:33 GMT
LABEL org.label-schema.build-date=2026-09-30T22:12:03.984586187Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=48acba663b09e70b115dd879329141506c377890 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T22:12:03.984586187Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=48acba663b09e70b115dd879329141506c377890 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Tue, 13 Oct 2026 00:37:33 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 13 Oct 2026 00:37:34 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 13 Oct 2026 00:37:34 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 00:37:34 GMT
CMD ["eswrapper"]
# Tue, 13 Oct 2026 00:37:34 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:c8fb2f748d0518200c41845a3bbb526397078028e42feaddaf7208534fc575b4`  
		Last Modified: Mon, 12 Oct 2026 14:31:54 GMT  
		Size: 40.7 MB (40731722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01dc9a1d236bd8ee593779c622fc9cd2b83294ff401f37da2dda88f93a44213c`  
		Last Modified: Tue, 13 Oct 2026 00:38:33 GMT  
		Size: 4.4 MB (4403183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:974eafab0f45142d16f7549335717948dd091bd9ef49c1e5a3702853d9e1cfa9`  
		Last Modified: Tue, 13 Oct 2026 00:38:33 GMT  
		Size: 1.5 KB (1531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1711dcab4546f10e93d9d87e3e6729a6ff4a4427f41a54e8fac74a0e3db7ad4a`  
		Last Modified: Tue, 13 Oct 2026 00:38:33 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9061060939e78f27de352f9dcd5d4683562610523a542d25524c27ff540a26`  
		Last Modified: Tue, 13 Oct 2026 00:38:47 GMT  
		Size: 850.6 MB (850623745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbee4d66953943b54f59a84b05733059568dd2585dc9f4b30d4113ca6d5b2f6f`  
		Last Modified: Tue, 13 Oct 2026 00:38:34 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f55c0d95bbc2d82ce1a1479e76bd6bc26d0d53681cec518a339527e96e3d6ebc`  
		Last Modified: Tue, 13 Oct 2026 00:38:34 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49d26ac85e72adc0e15cf68356f88bc924d81c6bd2e755158f093c8b9c206b21`  
		Last Modified: Tue, 13 Oct 2026 00:38:35 GMT  
		Size: 75.2 KB (75184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e0369b0834bcbffb7ae15a0cb768d46b81943ac58814a9dde02e453502369e`  
		Last Modified: Tue, 13 Oct 2026 00:38:36 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:491ffa852439542df45d682e21de3d15955b3da2941a2bf54a64cb4daa42e9b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2471251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7263d1003f1c8fd326237281db7c8aa8a75ab71424aad85dd95672b3a1d8e72`

```dockerfile
```

-	Layers:
	-	`sha256:b0984b139409f52b57cb64c61ccc0706d19da843396cccaf7743d821e0e843a2`  
		Last Modified: Tue, 13 Oct 2026 00:38:33 GMT  
		Size: 2.4 MB (2437467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:636f705b2c79bf5dff8f1131869bb28b5d823d1056dafaf0d46cdee1609dbb14`  
		Last Modified: Tue, 13 Oct 2026 00:38:33 GMT  
		Size: 33.8 KB (33784 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.5.5` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:41870fd86e61fe9662e24c26d472f4bd5a731fdfc3afdd318fd2d6c5d63f6223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **740.4 MB (740373313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c52be70af9bf807c5d191d1e9637cccf1e3513be2558be8b9228970a450171c`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 12 Oct 2026 12:37:19 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:19 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 12 Oct 2026 12:37:20 GMT
ENV container oci
# Mon, 12 Oct 2026 12:37:21 GMT
COPY dir:123af182f2411d6301e92c5816a09ad572a38ac45c6a006a2a67fe12bba24337 in /      
# Mon, 12 Oct 2026 12:37:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 12:37:22 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 12:37:22 GMT
COPY dir:af25db34574ac74a77dcb2c3247cf0e47211ca3e53116d59e2c507bd5db60e5e in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 12:37:22 GMT
COPY dir:af25db34574ac74a77dcb2c3247cf0e47211ca3e53116d59e2c507bd5db60e5e in /root/buildinfo/      
# Mon, 12 Oct 2026 12:37:23 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T12:36:49Z" "org.opencontainers.image.revision"="605f9da3afeb17ea0827cac3edf823279a26c42f" "build-date"="2026-10-12T12:36:49Z" "architecture"="aarch64" "vcs-ref"="605f9da3afeb17ea0827cac3edf823279a26c42f" "vcs-type"="git" "release"="1791808450"org.opencontainers.image.created=2026-10-12T12:36:49Z,org.opencontainers.image.revision=605f9da3afeb17ea0827cac3edf823279a26c42f
# Tue, 13 Oct 2026 00:52:43 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:52:43 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 13 Oct 2026 00:53:17 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 13 Oct 2026 00:53:17 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 13 Oct 2026 00:53:17 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 13 Oct 2026 00:53:25 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 13 Oct 2026 00:53:25 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 13 Oct 2026 00:53:25 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:53:25 GMT
ENV SHELL=/bin/bash
# Tue, 13 Oct 2026 00:53:25 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:53:25 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 13 Oct 2026 00:53:25 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 13 Oct 2026 00:53:25 GMT
LABEL org.label-schema.build-date=2026-09-30T22:12:03.984586187Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=48acba663b09e70b115dd879329141506c377890 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T22:12:03.984586187Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=48acba663b09e70b115dd879329141506c377890 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Tue, 13 Oct 2026 00:53:25 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 13 Oct 2026 00:53:25 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 13 Oct 2026 00:53:25 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 00:53:25 GMT
CMD ["eswrapper"]
# Tue, 13 Oct 2026 00:53:25 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:e9b14607c5b59da407fa1d8ceb91765c821f6a3e5637af082c822b0741fd9481`  
		Last Modified: Mon, 12 Oct 2026 14:30:43 GMT  
		Size: 38.8 MB (38798784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe963d5b3b80fd514de438ab91782592d8ca2532a49e56dc194fb495f1d34c03`  
		Last Modified: Tue, 13 Oct 2026 00:54:12 GMT  
		Size: 4.4 MB (4394273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63b59fcfd7ceafceecc4df688003b31f9b556a8fd228d057f99c50b203f5c8e8`  
		Last Modified: Tue, 13 Oct 2026 00:54:11 GMT  
		Size: 1.5 KB (1531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f25733392ff35b132be980da1b27ac994a22b814520892acb93be000e1ad188`  
		Last Modified: Tue, 13 Oct 2026 00:54:11 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f131648a6798d0d9a8a89c334719132fcd08426ea3131dd712606c2618ba37f9`  
		Last Modified: Tue, 13 Oct 2026 00:54:23 GMT  
		Size: 697.1 MB (697091807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec8a0d254bcc2fdce90f04ecfed021725bc102a943280492becb13eb2539772`  
		Last Modified: Tue, 13 Oct 2026 00:54:13 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13976981a17ac272233b2fed927c4b2d629d41f7d3e40c82931a7d52b7a5b746`  
		Last Modified: Tue, 13 Oct 2026 00:54:13 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a46827f584d6c20c70f90a94b4ccd1627c40c3566707a286a1dd89b3ad1ed2a`  
		Last Modified: Tue, 13 Oct 2026 00:54:13 GMT  
		Size: 74.1 KB (74103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff49506fd4648d432a753e8d12d02faf6349705fe6b81091fbb1eeaff9326c58`  
		Last Modified: Tue, 13 Oct 2026 00:54:14 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:7129fb4e2152b1ee02d95e3fadee5744a13a07374c89f42707a5a30c862f871c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2470212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43bfef5efe37896655976ad1b9df776d7b4bbe840ab4f048e5115d683dc79bb1`

```dockerfile
```

-	Layers:
	-	`sha256:c1370c76faa48984483f66db7b4dcc61dbb9142a36b3d6561909e0bb6ad102e0`  
		Last Modified: Tue, 13 Oct 2026 00:54:12 GMT  
		Size: 2.4 MB (2436247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d603dee47357f9bdd89a66fa44f18ec17910869d0f58260560833a9d9746b074`  
		Last Modified: Tue, 13 Oct 2026 00:54:11 GMT  
		Size: 34.0 KB (33965 bytes)  
		MIME: application/vnd.in-toto+json
