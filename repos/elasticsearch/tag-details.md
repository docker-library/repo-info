<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:8.19.25`](#elasticsearch81925)
-	[`elasticsearch:9.4.8`](#elasticsearch948)
-	[`elasticsearch:9.5.5`](#elasticsearch955)

## `elasticsearch:8.19.25`

```console
$ docker pull elasticsearch@sha256:ef44866274bd7cb2c644f4f6657ce0832819f662adb66b2769d0ba5dabad77d6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:8.19.25` - linux; amd64

```console
$ docker pull elasticsearch@sha256:24086349684aad66e016491f77fcff49471488e966221ea809755163a52fa546
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **720.5 MB (720521428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7941638105b247390333243de48f6971380672c7e4d6f697b1d9e0f0692661a9`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:19:14 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Wed, 11 Nov 2026 23:19:14 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 11 Nov 2026 23:19:14 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 11 Nov 2026 23:19:14 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 11 Nov 2026 23:20:35 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Wed, 11 Nov 2026 23:20:35 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 11 Nov 2026 23:20:35 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:20:35 GMT
ENV SHELL=/bin/bash
# Wed, 11 Nov 2026 23:20:35 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:20:36 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 11 Nov 2026 23:20:36 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 11 Nov 2026 23:20:36 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 11 Nov 2026 23:20:36 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 11 Nov 2026 23:20:36 GMT
LABEL org.label-schema.build-date=2026-11-05T11:37:05.670595677Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=104cb8651ae63460f8147c582dcdbf5c38451712 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.25 org.opencontainers.image.created=2026-11-05T11:37:05.670595677Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=104cb8651ae63460f8147c582dcdbf5c38451712 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.25
# Wed, 11 Nov 2026 23:20:36 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:20:36 GMT
CMD ["eswrapper"]
# Wed, 11 Nov 2026 23:20:36 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7492aeb6571df73b0a7d1f79eebfec867efa22346c1c3d8114ffcffeb78c72f2`  
		Last Modified: Wed, 11 Nov 2026 23:21:31 GMT  
		Size: 6.9 MB (6873228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:410b083dfd01b1d65c7a888d9fef3a2294969cd2b354dfb27787de80393d043c`  
		Last Modified: Wed, 11 Nov 2026 23:21:30 GMT  
		Size: 3.5 KB (3527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91da48d4b6c16cac5fd9cd96dfeeb96321d40772de6f44ec268e5ce2e7f5d67`  
		Last Modified: Wed, 11 Nov 2026 23:21:44 GMT  
		Size: 683.6 MB (683579069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0f0f3e6e236a1dd0387b07dfc9ceb915b667537a70d9b52002efb1b3c1bae3f`  
		Last Modified: Wed, 11 Nov 2026 23:21:30 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2cb81d0974c966ebd4b6500ecdfb60fb37091041ee9990db8426b1a4bbbb9d6`  
		Last Modified: Wed, 11 Nov 2026 23:21:32 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd3065fa996d2cebd4de97ec9712dc6dfd7f23f51de313a36a6a3e409a96eca`  
		Last Modified: Wed, 11 Nov 2026 23:21:32 GMT  
		Size: 164.2 KB (164193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a6716efe9eb1af155081430127e6b11bdca5cf45226458be9649fb64f3e6840`  
		Last Modified: Wed, 11 Nov 2026 23:21:32 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fca0f50e8fb4a2d594a69489913b32062c2d590dfe11d32c9474e91e13377ca`  
		Last Modified: Wed, 11 Nov 2026 23:21:33 GMT  
		Size: 96.5 KB (96499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.25` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:f3bc6bdb95a6ed36c634f3371e6d544ae7e1963ffc1fc6fa31b063e861e8ad06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3223785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a3989201a6082e1f682cb9157676f06ecb48ab411231fd51adca9c7a8e9fa9c`

```dockerfile
```

-	Layers:
	-	`sha256:90bf3dc5b88f6804f162bf46cd757e446c1f734172418bdda68221fb160ae74c`  
		Last Modified: Wed, 11 Nov 2026 23:21:31 GMT  
		Size: 3.2 MB (3186970 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e28f043936dfe6d78973978bbf95887044642522d613d92a9d0732dee6f9ccc`  
		Last Modified: Wed, 11 Nov 2026 23:21:30 GMT  
		Size: 36.8 KB (36815 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:8.19.25` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:78e6464daf8f66f107dc9de502bc7f5d7ecdd2936e66cdd56e8cba06402b4eee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **566.2 MB (566168228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceca3d21574dd3ff3d285cd125036217b62f56a897ff377f783adfd306cddf45`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:22:55 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Wed, 11 Nov 2026 23:22:55 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 11 Nov 2026 23:22:55 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 11 Nov 2026 23:22:55 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 11 Nov 2026 23:24:02 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Wed, 11 Nov 2026 23:24:02 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 11 Nov 2026 23:24:02 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:24:02 GMT
ENV SHELL=/bin/bash
# Wed, 11 Nov 2026 23:24:02 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:24:02 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 11 Nov 2026 23:24:02 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 11 Nov 2026 23:24:03 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 11 Nov 2026 23:24:03 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 11 Nov 2026 23:24:03 GMT
LABEL org.label-schema.build-date=2026-11-05T11:37:05.670595677Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=104cb8651ae63460f8147c582dcdbf5c38451712 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.25 org.opencontainers.image.created=2026-11-05T11:37:05.670595677Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=104cb8651ae63460f8147c582dcdbf5c38451712 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.25
# Wed, 11 Nov 2026 23:24:03 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:24:03 GMT
CMD ["eswrapper"]
# Wed, 11 Nov 2026 23:24:03 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43b778c3edea77fe0a7e9f2e841e987686d2557a8984d05467fd41575d624b9f`  
		Last Modified: Wed, 11 Nov 2026 23:24:43 GMT  
		Size: 4.5 MB (4465479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bbc8de0b436fd109fd6401df6dece1231ee11c164274daab02c95a41b6dc034`  
		Last Modified: Wed, 11 Nov 2026 23:24:43 GMT  
		Size: 3.5 KB (3524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c34c6a7fea6951220ea5a8a69c25c6c555372b4c9c046b488a8f7c3a063e26`  
		Last Modified: Wed, 11 Nov 2026 23:24:53 GMT  
		Size: 532.5 MB (532465522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a53108b84844c2915c1fc6a2e39426940f91348951ca6a7334183013b90228`  
		Last Modified: Wed, 11 Nov 2026 23:24:43 GMT  
		Size: 9.1 KB (9103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c130df2e5cf29eee5bcde3d7cb90ecdccc92df68f8dbd82c51d60f809eb734e0`  
		Last Modified: Wed, 11 Nov 2026 23:24:44 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:954d419f3f050137cb7bf436173643da49a68b399c4cc4974bc97da73ca96f72`  
		Last Modified: Wed, 11 Nov 2026 23:24:44 GMT  
		Size: 160.7 KB (160687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25bff865d696e3b941c9b979c624c7fca83063a2702e94875852e243fa606a15`  
		Last Modified: Wed, 11 Nov 2026 23:24:44 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6d5f3d498528a2c82c7e860d1ededc9593d489223ad6608b152881067f81f25`  
		Last Modified: Wed, 11 Nov 2026 23:24:45 GMT  
		Size: 96.5 KB (96501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.25` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:4e4a4d6e975ffed81eb48cef4924e478923d3007267183063a10d3165a547d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3224401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e24327feea318b3fa9d28b7a24f52d058b4dfb6478926bf665f5316c40c581ab`

```dockerfile
```

-	Layers:
	-	`sha256:d99eea1cc838c4a352770ada8c8b1da29ff7b4a1bdd18ad5127e644d9391747f`  
		Last Modified: Wed, 11 Nov 2026 23:24:43 GMT  
		Size: 3.2 MB (3187383 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32f78c6b2a97b5dbef9c7830f4de64343b6a810e565eeaadcacc84f3b41c4862`  
		Last Modified: Wed, 11 Nov 2026 23:24:42 GMT  
		Size: 37.0 KB (37018 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.4.8`

```console
$ docker pull elasticsearch@sha256:03badf0fa01fc03145a3e4e282f9c5d93684d837fef961413dd73742c4bc790c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.8` - linux; amd64

```console
$ docker pull elasticsearch@sha256:4d9ddd2550f8ae3aa7858a3b0b7fc3fc60dc31694d63b3ac268edb85be97ea9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **869.3 MB (869270318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cff393ac3b0f3572ae6325b48609e7b743c793f612011acf46fac97b0b0352e6`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 12 Nov 2026 07:10:03 GMT
ENV container oci
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:4925913982ee23b93a5459c6c94a48de8c0673c106763b3fd70dc3eefa0ce90f in /      
# Thu, 12 Nov 2026 07:10:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 07:10:04 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:fd0ea76c9f943a84d285f5b85a5dba9debc1ef1ff54714702d4773c2412fac40 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:fd0ea76c9f943a84d285f5b85a5dba9debc1ef1ff54714702d4773c2412fac40 in /root/buildinfo/      
# Thu, 12 Nov 2026 07:10:05 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T07:09:34Z" "org.opencontainers.image.revision"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "build-date"="2026-11-12T07:09:34Z" "architecture"="x86_64" "vcs-ref"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "vcs-type"="git" "release"="1794467051"org.opencontainers.image.created=2026-11-12T07:09:34Z,org.opencontainers.image.revision=c500a3e71632eb6956c45968727fbf5e847c5c1d
# Fri, 13 Nov 2026 21:46:59 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:47:00 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Fri, 13 Nov 2026 21:48:38 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 13 Nov 2026 21:48:38 GMT
COPY /bin/tini /bin/tini # buildkit
# Fri, 13 Nov 2026 21:48:38 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 13 Nov 2026 21:48:49 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Fri, 13 Nov 2026 21:48:49 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Fri, 13 Nov 2026 21:48:49 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:48:49 GMT
ENV SHELL=/bin/bash
# Fri, 13 Nov 2026 21:48:49 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:48:49 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Fri, 13 Nov 2026 21:48:49 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Fri, 13 Nov 2026 21:48:49 GMT
LABEL org.label-schema.build-date=2026-10-01T01:07:34.887571291Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c042abbb0eaaaa61b49beef21d517468861a4db2 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-10-01T01:07:34.887571291Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c042abbb0eaaaa61b49beef21d517468861a4db2 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Fri, 13 Nov 2026 21:48:49 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Elasticsearch description=You know, for search.
# Fri, 13 Nov 2026 21:48:49 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 13 Nov 2026 21:48:49 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Fri, 13 Nov 2026 21:48:49 GMT
CMD ["eswrapper"]
# Fri, 13 Nov 2026 21:48:49 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:a910e564830ecfbbdd4d0f366b4c40043cd255993dfb8d713b53c0b186a7eaa4`  
		Last Modified: Thu, 12 Nov 2026 09:38:47 GMT  
		Size: 40.7 MB (40669413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9bd9191079a6db4fdb7e5cc24fe3fb7f9e5d7efe852f8505dbd6c843f5a74c`  
		Last Modified: Fri, 13 Nov 2026 21:49:45 GMT  
		Size: 4.4 MB (4387646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5ccdea523468ce76c8e13ad3309337e44f447d8b084872a957129032ef4b56f`  
		Last Modified: Fri, 13 Nov 2026 21:49:45 GMT  
		Size: 1.5 KB (1533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365cdc806b72e7a51dd6b2159a79ff662bfdc53fd3fe9093c2431b43237293e2`  
		Last Modified: Fri, 13 Nov 2026 21:49:45 GMT  
		Size: 9.5 KB (9528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:567b533e82a96a99bb07e2ff246c23c5cb8decc046a7474724e1b99dc68296c2`  
		Last Modified: Fri, 13 Nov 2026 21:49:59 GMT  
		Size: 824.1 MB (824123320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27827ae3aeebc90f2b8bd35edda2033e00db363a93acefd441e560b2573b3b10`  
		Last Modified: Fri, 13 Nov 2026 21:49:46 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db094bae64e536040caf7180b0bc9b7f30e6e8ca706b52254ade0dc0399c3b06`  
		Last Modified: Fri, 13 Nov 2026 21:49:46 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e9fe5d87984326b6250f22720203a40a21672d2b8ca6f3a876225bdb0d2bf87`  
		Last Modified: Fri, 13 Nov 2026 21:49:46 GMT  
		Size: 75.2 KB (75165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c737b5937f6aeab794aa28bd4ac9ed808e39cb3e9502e88a31acc97d0626e075`  
		Last Modified: Fri, 13 Nov 2026 21:49:47 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:f2ba1c5b60e014b4f94b0feffe24ab510e8caefa7b24dae9d23fef13228344cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2401595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:619cfde4be02d155603feb8a7d017301a7aae2ac6fe2739006d0ffebbfd95b92`

```dockerfile
```

-	Layers:
	-	`sha256:07b5d45f781358cb3ef8cfbee2c30973cd2a3904100e2bc5dd5f64eed0ca560b`  
		Last Modified: Fri, 13 Nov 2026 21:49:45 GMT  
		Size: 2.4 MB (2367811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b202eb9e70530641fa8fa24af7a34a1fd212106a4d61bc2c62fe758e2591c0b8`  
		Last Modified: Fri, 13 Nov 2026 21:49:45 GMT  
		Size: 33.8 KB (33784 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.8` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:4645e20b91d233ddfce97f9603e41f1f25a408422274edcc6265b392f71ee4cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.8 MB (713795769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d68482fdf4995943aa88896c99411bc552f94a9f8d94697b97215372a365ce5`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 12 Nov 2026 07:12:46 GMT
ENV container oci
# Thu, 12 Nov 2026 07:12:47 GMT
COPY dir:4d87526a7738e67f2849dec8cc7456d51f10cd8903f2b487983c9a8e8cf85454 in /      
# Thu, 12 Nov 2026 07:12:47 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 07:12:48 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 07:12:48 GMT
COPY dir:b8fefbe8743dd0d8522b33cd4fd83dde7d1f8d19d41b8dc58938df13462cf373 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 07:12:48 GMT
COPY dir:b8fefbe8743dd0d8522b33cd4fd83dde7d1f8d19d41b8dc58938df13462cf373 in /root/buildinfo/      
# Thu, 12 Nov 2026 07:12:49 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T07:12:16Z" "org.opencontainers.image.revision"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "build-date"="2026-11-12T07:12:16Z" "architecture"="aarch64" "vcs-ref"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "vcs-type"="git" "release"="1794467051"org.opencontainers.image.created=2026-11-12T07:12:16Z,org.opencontainers.image.revision=c500a3e71632eb6956c45968727fbf5e847c5c1d
# Fri, 13 Nov 2026 21:46:02 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:46:02 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Fri, 13 Nov 2026 21:46:33 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 13 Nov 2026 21:46:33 GMT
COPY /bin/tini /bin/tini # buildkit
# Fri, 13 Nov 2026 21:46:33 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 13 Nov 2026 21:46:41 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Fri, 13 Nov 2026 21:46:41 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Fri, 13 Nov 2026 21:46:41 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:46:41 GMT
ENV SHELL=/bin/bash
# Fri, 13 Nov 2026 21:46:41 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:46:41 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Fri, 13 Nov 2026 21:46:41 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Fri, 13 Nov 2026 21:46:41 GMT
LABEL org.label-schema.build-date=2026-10-01T01:07:34.887571291Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c042abbb0eaaaa61b49beef21d517468861a4db2 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-10-01T01:07:34.887571291Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c042abbb0eaaaa61b49beef21d517468861a4db2 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Fri, 13 Nov 2026 21:46:41 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Elasticsearch description=You know, for search.
# Fri, 13 Nov 2026 21:46:41 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 13 Nov 2026 21:46:41 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Fri, 13 Nov 2026 21:46:41 GMT
CMD ["eswrapper"]
# Fri, 13 Nov 2026 21:46:41 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:d3fe075a76b1285aa041b2e11e27b50e9193a929b1d8a84c06e18764d60bddbc`  
		Last Modified: Thu, 12 Nov 2026 09:56:13 GMT  
		Size: 38.7 MB (38679109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c324906d89a880b38d74b95ec5aeccc87fcebd3af85b6600ee327711e06d2c`  
		Last Modified: Fri, 13 Nov 2026 21:47:28 GMT  
		Size: 4.4 MB (4385220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8767c8ccf4a428accc8d96196ea139b45a67e6492e0ea9259616551720ad3c62`  
		Last Modified: Fri, 13 Nov 2026 21:47:28 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:019e73b2261e5d1f2a3a11ae47a98059e4fa0ad7c3ba21e8db641c4047b6bbc4`  
		Last Modified: Fri, 13 Nov 2026 21:47:28 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:083eea3bdd4e7801274c572ba26c690d15fdd9ca5c767e6bf6ad63cf469df97e`  
		Last Modified: Fri, 13 Nov 2026 21:47:39 GMT  
		Size: 670.6 MB (670642995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d0fb496fc321b85aac08b062d02b53863d160a7aacbbdf42ea59f312726a89`  
		Last Modified: Fri, 13 Nov 2026 21:47:29 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c51b70a4e762aa09e1dc0c0e0b75818142daf066678f59253b67c5b697c28e`  
		Last Modified: Fri, 13 Nov 2026 21:47:29 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:408d45ab6472ffd170851ea0cca81deece06cc3b6d67b67c19a6b3ac1bae8ded`  
		Last Modified: Fri, 13 Nov 2026 21:47:29 GMT  
		Size: 74.1 KB (74102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6acc854437919ed7c54e39daad46fb6f95f4f38f65087994b4a9bf3e9305bbdd`  
		Last Modified: Fri, 13 Nov 2026 21:47:30 GMT  
		Size: 1.7 KB (1694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:3e31cf6f9d962bc3e61ce1b28b384e69ba6fdf2b30e467c27c6cf1347fd76467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2400557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ccd3a5ce68b8812aa93e5a7bd5c5a001fcaba1f424f9fd05ddcdc890315239`

```dockerfile
```

-	Layers:
	-	`sha256:5e0bfdfca990f996502f32ba5637ede9f3daf942ae6d48332caa33c7381cc0a5`  
		Last Modified: Fri, 13 Nov 2026 21:47:28 GMT  
		Size: 2.4 MB (2366591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64bad18e32df601da4b8dbbf6c8ec9d61ea49f9b827aba03745e2ee6414fa42a`  
		Last Modified: Fri, 13 Nov 2026 21:47:28 GMT  
		Size: 34.0 KB (33966 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.5.5`

```console
$ docker pull elasticsearch@sha256:b7b0f24e9b5e90656ffe69804b3a48907499ab2b9cd67f02b7af3aff1b026a89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.5.5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:4f963521f1ac85a08b27f2ac1c864697c9729ade989ed49d2a143cf5f79c222f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **895.8 MB (895770814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caeff9384879f790348923ddc61914e70984f45e28a88c392809dc97996a4e2f`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 12 Nov 2026 07:10:03 GMT
ENV container oci
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:4925913982ee23b93a5459c6c94a48de8c0673c106763b3fd70dc3eefa0ce90f in /      
# Thu, 12 Nov 2026 07:10:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 07:10:04 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:fd0ea76c9f943a84d285f5b85a5dba9debc1ef1ff54714702d4773c2412fac40 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:fd0ea76c9f943a84d285f5b85a5dba9debc1ef1ff54714702d4773c2412fac40 in /root/buildinfo/      
# Thu, 12 Nov 2026 07:10:05 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T07:09:34Z" "org.opencontainers.image.revision"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "build-date"="2026-11-12T07:09:34Z" "architecture"="x86_64" "vcs-ref"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "vcs-type"="git" "release"="1794467051"org.opencontainers.image.created=2026-11-12T07:09:34Z,org.opencontainers.image.revision=c500a3e71632eb6956c45968727fbf5e847c5c1d
# Fri, 13 Nov 2026 21:47:02 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:47:03 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Fri, 13 Nov 2026 21:48:27 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 13 Nov 2026 21:48:27 GMT
COPY /bin/tini /bin/tini # buildkit
# Fri, 13 Nov 2026 21:48:27 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 13 Nov 2026 21:48:38 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Fri, 13 Nov 2026 21:48:38 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Fri, 13 Nov 2026 21:48:38 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:48:38 GMT
ENV SHELL=/bin/bash
# Fri, 13 Nov 2026 21:48:38 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:48:38 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Fri, 13 Nov 2026 21:48:38 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Fri, 13 Nov 2026 21:48:38 GMT
LABEL org.label-schema.build-date=2026-09-30T22:12:03.984586187Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=48acba663b09e70b115dd879329141506c377890 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T22:12:03.984586187Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=48acba663b09e70b115dd879329141506c377890 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Fri, 13 Nov 2026 21:48:38 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Elasticsearch description=You know, for search.
# Fri, 13 Nov 2026 21:48:39 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 13 Nov 2026 21:48:39 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Fri, 13 Nov 2026 21:48:39 GMT
CMD ["eswrapper"]
# Fri, 13 Nov 2026 21:48:39 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:a910e564830ecfbbdd4d0f366b4c40043cd255993dfb8d713b53c0b186a7eaa4`  
		Last Modified: Thu, 12 Nov 2026 09:38:47 GMT  
		Size: 40.7 MB (40669413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20978a2e03ccd10d50f39cdc00d43e4fc52e8baf269fec1e2f21452db21acadd`  
		Last Modified: Fri, 13 Nov 2026 21:49:35 GMT  
		Size: 4.4 MB (4387660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4eec3d4df147d5b955566d38683737c0501bdd856b3f7ffc18bc83eef04f168`  
		Last Modified: Fri, 13 Nov 2026 21:49:34 GMT  
		Size: 1.5 KB (1539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17488fd64ea9daa520c260096d68a0ea81079400653133f7f2e4e027bcfdd3d1`  
		Last Modified: Fri, 13 Nov 2026 21:49:35 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca02ccbd8cc707c32b1fd5a1131f8de8ac5053520b6fa133a3a6e1bf269268c3`  
		Last Modified: Fri, 13 Nov 2026 21:49:54 GMT  
		Size: 850.6 MB (850623797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5fee0a77f6d86e3277b9218799f99a43dc61bac5f2e67acd448ec24d23304c`  
		Last Modified: Fri, 13 Nov 2026 21:49:36 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f0c2f277a803dff9ff80c9723999db865c24dde354ac3e0655a7d00408ff0b`  
		Last Modified: Fri, 13 Nov 2026 21:49:36 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63ab30e72753b76ee04492d63da07c9b3fc6d4989ab16d13268f00ee90ba22c8`  
		Last Modified: Fri, 13 Nov 2026 21:49:36 GMT  
		Size: 75.2 KB (75162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:508456e78dd718fd9fe4f3ae1d011767242a2bb7f9d25cfaae8b51d14729835d`  
		Last Modified: Fri, 13 Nov 2026 21:49:37 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:b36e04ebad8f472d81cd30ece41e24ca0a34cb8545c64b2e2a31ae8d40cb0ac4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2452674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:431e4c5c92cd8954d67a40b4fbc9e429b7d6bac1b65d7a02952be79c7b9168ba`

```dockerfile
```

-	Layers:
	-	`sha256:102ab9c6acbf86016e08448ac8b7b1adea4ac2525d0148fb0101142351051d02`  
		Last Modified: Fri, 13 Nov 2026 21:49:35 GMT  
		Size: 2.4 MB (2418892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90fda936f0a8ed324d90dc87ab30b6f7d81909367d647dced3dde387216808fb`  
		Last Modified: Fri, 13 Nov 2026 21:49:34 GMT  
		Size: 33.8 KB (33782 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.5.5` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:663a197358255486c53ffb8c5476ebaa0e7b3904c3dbb5f95f2bab84b56c22c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **740.2 MB (740244584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f99a70b9af0e5579f9b4c38c6cbe02a1062b313e436e0f8a95b13a422a7f601`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 12 Nov 2026 07:12:46 GMT
ENV container oci
# Thu, 12 Nov 2026 07:12:47 GMT
COPY dir:4d87526a7738e67f2849dec8cc7456d51f10cd8903f2b487983c9a8e8cf85454 in /      
# Thu, 12 Nov 2026 07:12:47 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 07:12:48 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 07:12:48 GMT
COPY dir:b8fefbe8743dd0d8522b33cd4fd83dde7d1f8d19d41b8dc58938df13462cf373 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 07:12:48 GMT
COPY dir:b8fefbe8743dd0d8522b33cd4fd83dde7d1f8d19d41b8dc58938df13462cf373 in /root/buildinfo/      
# Thu, 12 Nov 2026 07:12:49 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T07:12:16Z" "org.opencontainers.image.revision"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "build-date"="2026-11-12T07:12:16Z" "architecture"="aarch64" "vcs-ref"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "vcs-type"="git" "release"="1794467051"org.opencontainers.image.created=2026-11-12T07:12:16Z,org.opencontainers.image.revision=c500a3e71632eb6956c45968727fbf5e847c5c1d
# Fri, 13 Nov 2026 21:46:10 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:46:10 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Fri, 13 Nov 2026 21:47:24 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 13 Nov 2026 21:47:24 GMT
COPY /bin/tini /bin/tini # buildkit
# Fri, 13 Nov 2026 21:47:24 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 13 Nov 2026 21:47:31 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Fri, 13 Nov 2026 21:47:32 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Fri, 13 Nov 2026 21:47:32 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:47:32 GMT
ENV SHELL=/bin/bash
# Fri, 13 Nov 2026 21:47:32 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:47:32 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Fri, 13 Nov 2026 21:47:32 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Fri, 13 Nov 2026 21:47:32 GMT
LABEL org.label-schema.build-date=2026-09-30T22:12:03.984586187Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=48acba663b09e70b115dd879329141506c377890 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T22:12:03.984586187Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=48acba663b09e70b115dd879329141506c377890 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Fri, 13 Nov 2026 21:47:32 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Elasticsearch description=You know, for search.
# Fri, 13 Nov 2026 21:47:32 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 13 Nov 2026 21:47:32 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Fri, 13 Nov 2026 21:47:32 GMT
CMD ["eswrapper"]
# Fri, 13 Nov 2026 21:47:32 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:d3fe075a76b1285aa041b2e11e27b50e9193a929b1d8a84c06e18764d60bddbc`  
		Last Modified: Thu, 12 Nov 2026 09:56:13 GMT  
		Size: 38.7 MB (38679109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8503e2b64d45763caf429475d9c47e7145b2145d3f8fbcbac28af0f23f90c5f9`  
		Last Modified: Fri, 13 Nov 2026 21:48:19 GMT  
		Size: 4.4 MB (4385299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c0d468759ee111f9f0a77c33c12a2cbefb18029601eb0fa84cd83164ad5adf7`  
		Last Modified: Fri, 13 Nov 2026 21:48:19 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07d7db29a471371d57644f134ff9c0396e5ada50f9f73e8e75bb8186df924571`  
		Last Modified: Fri, 13 Nov 2026 21:48:19 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d2481eb1593b4be3d31318b933804359013bd2abe2ef5d90a165e9cd37de39`  
		Last Modified: Fri, 13 Nov 2026 21:48:58 GMT  
		Size: 697.1 MB (697091730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1632ea5ad2986b20d4186dec40063e00d8abac78250a1cc02ddfb4689319bc4a`  
		Last Modified: Fri, 13 Nov 2026 21:48:20 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c0213063b6bd85abbcd08d5ae048f70a37c692da52abdcec742611f50e93f16`  
		Last Modified: Fri, 13 Nov 2026 21:48:20 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f60f7addb46f7ccd5609dc1728f11912654a10cb6e9735647197bb098ef5ec0b`  
		Last Modified: Fri, 13 Nov 2026 21:48:21 GMT  
		Size: 74.1 KB (74101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c46b306b88f86be55c2de6525c846b0f3e7ac994fd7c2cf012a25f5e0d21b6c`  
		Last Modified: Fri, 13 Nov 2026 21:48:22 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:826d75d64550b760b9215ba097c693e61ec2b9d92c005247e6cbc991e9f96eb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2451638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9124d3ad1152db7ac4a129628b76111f49752962ef9cf55de34eaa18b062ae8`

```dockerfile
```

-	Layers:
	-	`sha256:1bd6c8d06e5e878a427cf7f55999980c7081b6c26bb8e8b2ccc3f99f9505c710`  
		Last Modified: Fri, 13 Nov 2026 21:48:19 GMT  
		Size: 2.4 MB (2417672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0bc13afdfe7d1aeeb979f6a798038041777c37abaa072928924e46aaaa451027`  
		Last Modified: Fri, 13 Nov 2026 21:48:19 GMT  
		Size: 34.0 KB (33966 bytes)  
		MIME: application/vnd.in-toto+json
