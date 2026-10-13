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
