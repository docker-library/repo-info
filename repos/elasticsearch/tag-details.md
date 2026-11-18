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
$ docker pull elasticsearch@sha256:f846fb37ab99a8faca2183ae726248d46294b9ae777502d364c60571aadd29b1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.8` - linux; amd64

```console
$ docker pull elasticsearch@sha256:7d2bb664ca14278287ab10aa1ecb05ec0d3fc7e1d6200b4adcea1e66c5e807ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **869.3 MB (869277321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e77ee0bf287a058f66ea8c21bf04b9ee80c772b7d92ec255171fd2f8388fe7`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 18 Nov 2026 11:34:58 GMT
ENV container oci
# Wed, 18 Nov 2026 11:34:59 GMT
COPY dir:6fb577b33d6b897109754e222f04b40d28eca71e767c06a8f97e8ed992af3521 in /      
# Wed, 18 Nov 2026 11:34:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:34:59 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:34:59 GMT
COPY dir:f2e48d20366904f6b13a4d8ede95af5672f192970fe36c37d676c06b33c4fdd7 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:35:00 GMT
COPY dir:f2e48d20366904f6b13a4d8ede95af5672f192970fe36c37d676c06b33c4fdd7 in /root/buildinfo/      
# Wed, 18 Nov 2026 11:35:00 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:34:36Z" "org.opencontainers.image.revision"="506148f67275a1ae38119bef9b8ca209a6ff507a" "build-date"="2026-11-18T11:34:36Z" "architecture"="x86_64" "vcs-ref"="506148f67275a1ae38119bef9b8ca209a6ff507a" "vcs-type"="git" "release"="1795001629"org.opencontainers.image.created=2026-11-18T11:34:36Z,org.opencontainers.image.revision=506148f67275a1ae38119bef9b8ca209a6ff507a
# Wed, 18 Nov 2026 21:42:06 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 18 Nov 2026 21:42:06 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 18 Nov 2026 21:42:55 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 18 Nov 2026 21:42:55 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 18 Nov 2026 21:42:55 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 18 Nov 2026 21:43:06 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 18 Nov 2026 21:43:06 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 18 Nov 2026 21:43:06 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:43:06 GMT
ENV SHELL=/bin/bash
# Wed, 18 Nov 2026 21:43:06 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:43:06 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 18 Nov 2026 21:43:06 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 18 Nov 2026 21:43:06 GMT
LABEL org.label-schema.build-date=2026-10-01T01:07:34.887571291Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c042abbb0eaaaa61b49beef21d517468861a4db2 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-10-01T01:07:34.887571291Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c042abbb0eaaaa61b49beef21d517468861a4db2 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Wed, 18 Nov 2026 21:43:06 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 18 Nov 2026 21:43:06 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 18 Nov 2026 21:43:06 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:43:06 GMT
CMD ["eswrapper"]
# Wed, 18 Nov 2026 21:43:06 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:c23374398181a4f60ce7fe1e5ee30bab79eff22d5d3aa94ed598ddee47dc229f`  
		Last Modified: Wed, 18 Nov 2026 16:30:18 GMT  
		Size: 40.7 MB (40676085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baa3018eea45bda4857be90cc0cafd4881d9b385a015cd3f42c40af89c917b94`  
		Last Modified: Wed, 18 Nov 2026 21:44:03 GMT  
		Size: 4.4 MB (4387888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:836854ae0cbd41c70449e04e2d013ff7c957fc03dde0084fee25312143c9e5f1`  
		Last Modified: Wed, 18 Nov 2026 21:44:02 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6aad0bc26bd1fbc335f0aba6c4e833c7ce5db823bed1f93df5769a1cf3a95d1`  
		Last Modified: Wed, 18 Nov 2026 21:44:02 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f914ed7f432268ecc769dd2c8bcf8bcdaf91a24f5006cdb704e30f4f62f40f71`  
		Last Modified: Wed, 18 Nov 2026 21:44:19 GMT  
		Size: 824.1 MB (824123408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0830e9b35e3b85ff4100c35aca123be09f2648a62ef69135e96402b031224cd`  
		Last Modified: Wed, 18 Nov 2026 21:44:03 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47d2b6853455bdf69aeee1b0f1b9e263592cd392cbe139507122b2bb05f9f65`  
		Last Modified: Wed, 18 Nov 2026 21:44:04 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8cf77676041d5db985b48c05c67cde84853e37f6beac31cbc9448863cddb86a`  
		Last Modified: Wed, 18 Nov 2026 21:44:04 GMT  
		Size: 75.2 KB (75162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1cea5ae5ce7b8c0057873b52fbe215756e60570c697a54f4e76d1d671800b62`  
		Last Modified: Wed, 18 Nov 2026 21:44:05 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:a743212e945a9661970b8abafede86f5f80faad75784c782f45e221556321b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2401603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48a6473eb1d22d76ae50a58917d379f75abf981f6aad59d38e4e9d30dfb474a0`

```dockerfile
```

-	Layers:
	-	`sha256:15344b0d05dad488be5bb6303628ee4398f52d3d7468ad9b90834fb236b21183`  
		Last Modified: Wed, 18 Nov 2026 21:44:02 GMT  
		Size: 2.4 MB (2367819 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:869a185e623d154e1c1506dc1e69fc62bb71952d9a51954603e47c8c15644646`  
		Last Modified: Wed, 18 Nov 2026 21:44:02 GMT  
		Size: 33.8 KB (33784 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.8` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:c51364934521efa80ba8897fa8defc66cb5c298c7503ee708a739a2bcefc8edb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.9 MB (713862075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f88ec505103bd3a39030c6eb0426ee4346cc6332a8228d2fd82769e0e2643cf`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 18 Nov 2026 11:36:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:36:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 18 Nov 2026 11:36:57 GMT
ENV container oci
# Wed, 18 Nov 2026 11:36:58 GMT
COPY dir:eee7fabfac1d2f3fb8ad9983912ceacfb7a2d25b2212bd95c123c4d0d51b81b6 in /      
# Wed, 18 Nov 2026 11:36:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:36:59 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:36:59 GMT
COPY dir:7cfd200b3d4ce0bf8a330208f8ea235e169c726ae2f96fcd7ec87ed6561a62d5 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:36:59 GMT
COPY dir:7cfd200b3d4ce0bf8a330208f8ea235e169c726ae2f96fcd7ec87ed6561a62d5 in /root/buildinfo/      
# Wed, 18 Nov 2026 11:37:00 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:36:26Z" "org.opencontainers.image.revision"="506148f67275a1ae38119bef9b8ca209a6ff507a" "build-date"="2026-11-18T11:36:26Z" "architecture"="aarch64" "vcs-ref"="506148f67275a1ae38119bef9b8ca209a6ff507a" "vcs-type"="git" "release"="1795001629"org.opencontainers.image.created=2026-11-18T11:36:26Z,org.opencontainers.image.revision=506148f67275a1ae38119bef9b8ca209a6ff507a
# Wed, 18 Nov 2026 21:41:59 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 18 Nov 2026 21:41:59 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 18 Nov 2026 21:43:03 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 18 Nov 2026 21:43:03 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 18 Nov 2026 21:43:03 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 18 Nov 2026 21:43:10 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 18 Nov 2026 21:43:10 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 18 Nov 2026 21:43:10 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:43:10 GMT
ENV SHELL=/bin/bash
# Wed, 18 Nov 2026 21:43:10 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:43:11 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 18 Nov 2026 21:43:11 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 18 Nov 2026 21:43:11 GMT
LABEL org.label-schema.build-date=2026-10-01T01:07:34.887571291Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c042abbb0eaaaa61b49beef21d517468861a4db2 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-10-01T01:07:34.887571291Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c042abbb0eaaaa61b49beef21d517468861a4db2 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Wed, 18 Nov 2026 21:43:11 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 18 Nov 2026 21:43:11 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 18 Nov 2026 21:43:11 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:43:11 GMT
CMD ["eswrapper"]
# Wed, 18 Nov 2026 21:43:11 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:43a13a3b1a9d32ca4e00b11b77daa68db7900831eb27e2a0bfa523b9764e2ff5`  
		Last Modified: Wed, 18 Nov 2026 17:00:22 GMT  
		Size: 38.7 MB (38744735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c62c677bdd2b3b552fc8db04006a52629474dc3900e3e93a4aad7a351091ba`  
		Last Modified: Wed, 18 Nov 2026 21:43:56 GMT  
		Size: 4.4 MB (4385919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40187c697fba0dd0fb5648cc66828886ef593fe4b2b1665030b5ca2104d35340`  
		Last Modified: Wed, 18 Nov 2026 21:43:55 GMT  
		Size: 1.5 KB (1528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5b6288ef14e81c6e7f2dc547a4931e5aeaf240cb83fe4c340692b7684814f3`  
		Last Modified: Wed, 18 Nov 2026 21:43:55 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c46f2e5a5e2f0ed0783afa465be4ddb4100c5e394315fa8def7bc63eada4148`  
		Last Modified: Wed, 18 Nov 2026 21:44:06 GMT  
		Size: 670.6 MB (670642979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:522ac3dc073f417a023ea97f5bb7f2dc75f94cb1ed0f47a9317d977ba711be03`  
		Last Modified: Wed, 18 Nov 2026 21:43:56 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b6204cb9388c574dc2ba70c094d898fbcac499140900f6c6445bd3770d6b2fb`  
		Last Modified: Wed, 18 Nov 2026 21:43:56 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a397209cf0ed53c6872d08bd4ae4c090ed1f33530afe5d661507edd657400c91`  
		Last Modified: Wed, 18 Nov 2026 21:43:57 GMT  
		Size: 74.1 KB (74098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d840f33c05ff65938deaae08844884701a7f2a31d776f3929f28fd635f7fc4`  
		Last Modified: Wed, 18 Nov 2026 21:43:58 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:76c4802da285e440fc40649c92c88e1aa98bc8264f8c78c93cccf8e60bc2d91b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2400564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ee25a9d57c353ceca9f0fd7bf22b4d0542170ff887b157227a8d8b6856c16d7`

```dockerfile
```

-	Layers:
	-	`sha256:592356c629fb80a6600ae3e24ff41a02e798a56b2226db38b09a880e0cf77627`  
		Last Modified: Wed, 18 Nov 2026 21:43:55 GMT  
		Size: 2.4 MB (2366599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c59513720f1fa04aaae9dd136449bf0cf0f759e5baff61b45012c6c124571a9f`  
		Last Modified: Wed, 18 Nov 2026 21:43:55 GMT  
		Size: 34.0 KB (33965 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.5.5`

```console
$ docker pull elasticsearch@sha256:6f11b295d5099c18b8774d280a82725d1184d0d5cb08373b12785ce7cd7a9bfb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.5.5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:4a39707f1fee76c2386a5d681d7c5e0c8d663d2fe22382980297e765fdc11d0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **895.8 MB (895777749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d127d09bc97109bf818ef460b99b1b1895b7a11e34b119fe43e7c4059a58539d`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 18 Nov 2026 11:34:58 GMT
ENV container oci
# Wed, 18 Nov 2026 11:34:59 GMT
COPY dir:6fb577b33d6b897109754e222f04b40d28eca71e767c06a8f97e8ed992af3521 in /      
# Wed, 18 Nov 2026 11:34:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:34:59 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:34:59 GMT
COPY dir:f2e48d20366904f6b13a4d8ede95af5672f192970fe36c37d676c06b33c4fdd7 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:35:00 GMT
COPY dir:f2e48d20366904f6b13a4d8ede95af5672f192970fe36c37d676c06b33c4fdd7 in /root/buildinfo/      
# Wed, 18 Nov 2026 11:35:00 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:34:36Z" "org.opencontainers.image.revision"="506148f67275a1ae38119bef9b8ca209a6ff507a" "build-date"="2026-11-18T11:34:36Z" "architecture"="x86_64" "vcs-ref"="506148f67275a1ae38119bef9b8ca209a6ff507a" "vcs-type"="git" "release"="1795001629"org.opencontainers.image.created=2026-11-18T11:34:36Z,org.opencontainers.image.revision=506148f67275a1ae38119bef9b8ca209a6ff507a
# Wed, 18 Nov 2026 21:42:08 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 18 Nov 2026 21:42:08 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 18 Nov 2026 21:42:48 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 18 Nov 2026 21:42:48 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 18 Nov 2026 21:42:48 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 18 Nov 2026 21:43:00 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 18 Nov 2026 21:43:00 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 18 Nov 2026 21:43:00 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:43:00 GMT
ENV SHELL=/bin/bash
# Wed, 18 Nov 2026 21:43:00 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:43:00 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 18 Nov 2026 21:43:00 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 18 Nov 2026 21:43:00 GMT
LABEL org.label-schema.build-date=2026-09-30T22:12:03.984586187Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=48acba663b09e70b115dd879329141506c377890 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T22:12:03.984586187Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=48acba663b09e70b115dd879329141506c377890 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Wed, 18 Nov 2026 21:43:00 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 18 Nov 2026 21:43:00 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 18 Nov 2026 21:43:00 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:43:00 GMT
CMD ["eswrapper"]
# Wed, 18 Nov 2026 21:43:00 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:c23374398181a4f60ce7fe1e5ee30bab79eff22d5d3aa94ed598ddee47dc229f`  
		Last Modified: Wed, 18 Nov 2026 16:30:18 GMT  
		Size: 40.7 MB (40676085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f592424a701d6e3c66c9049fbf2a043851fa8cb0420ec1b764fbbe33d41efd8b`  
		Last Modified: Wed, 18 Nov 2026 21:43:55 GMT  
		Size: 4.4 MB (4387879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f828aeb41b1648e3021959c9ed7aaf5261c4b9e7281d9f0a62a0c5e5f3a357a`  
		Last Modified: Wed, 18 Nov 2026 21:43:55 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:559f484eb8a2d9d6d9f32aec5dbd47e3860333d83c8058e7f0a465f97ebe141d`  
		Last Modified: Wed, 18 Nov 2026 21:43:55 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1524de2f1fb3a97aff3aa6c18c6fbfa3efe4b4573e0f1beeaa4bad495d8e8adb`  
		Last Modified: Wed, 18 Nov 2026 21:44:09 GMT  
		Size: 850.6 MB (850623859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16420d1c68141b268e42af07e20e90d8b0562c63ea1a28fd78c4992f1f73efc3`  
		Last Modified: Wed, 18 Nov 2026 21:43:56 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72df1e4070bf41e4884e5d480824b868b0259d47769278736bc57c6dcbdd6c4`  
		Last Modified: Wed, 18 Nov 2026 21:43:56 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc113c2de319804922e0b0c90454450a2771baef566b0312167ba26d892ce1da`  
		Last Modified: Wed, 18 Nov 2026 21:43:56 GMT  
		Size: 75.2 KB (75160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3821cf8bf574b4890738f975da25a25ffc957f0ef10672e6dc35e0fd9f7adbcb`  
		Last Modified: Wed, 18 Nov 2026 21:43:57 GMT  
		Size: 1.7 KB (1694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:ca05e60942527092314da5d555566ac33077a1ae8e9a96b4ec884e4cf90f0283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2452684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f36058a7f6357acec84566be9964936aeb4e44e3c019d4867d90bb3b6434923e`

```dockerfile
```

-	Layers:
	-	`sha256:00d973edad0180a0aa9ec2cba508cd335e0e7a9e29afccb695f94400df92620a`  
		Last Modified: Wed, 18 Nov 2026 21:43:55 GMT  
		Size: 2.4 MB (2418900 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7c1cafbec054219710b8ef6123c289480903f112d31c0895fa3e9c0e3450596`  
		Last Modified: Wed, 18 Nov 2026 21:43:55 GMT  
		Size: 33.8 KB (33784 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.5.5` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:57ef319e1bd272caa80b4a9b8cb16418ccb0619d3105b600f7cfd2da18830668
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **740.3 MB (740310916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c64321aad2a152bfbf346f91c35282488ab2eaab14f74eefb02ea1362a5c86ed`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 18 Nov 2026 11:36:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:36:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 18 Nov 2026 11:36:57 GMT
ENV container oci
# Wed, 18 Nov 2026 11:36:58 GMT
COPY dir:eee7fabfac1d2f3fb8ad9983912ceacfb7a2d25b2212bd95c123c4d0d51b81b6 in /      
# Wed, 18 Nov 2026 11:36:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:36:59 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:36:59 GMT
COPY dir:7cfd200b3d4ce0bf8a330208f8ea235e169c726ae2f96fcd7ec87ed6561a62d5 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:36:59 GMT
COPY dir:7cfd200b3d4ce0bf8a330208f8ea235e169c726ae2f96fcd7ec87ed6561a62d5 in /root/buildinfo/      
# Wed, 18 Nov 2026 11:37:00 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:36:26Z" "org.opencontainers.image.revision"="506148f67275a1ae38119bef9b8ca209a6ff507a" "build-date"="2026-11-18T11:36:26Z" "architecture"="aarch64" "vcs-ref"="506148f67275a1ae38119bef9b8ca209a6ff507a" "vcs-type"="git" "release"="1795001629"org.opencontainers.image.created=2026-11-18T11:36:26Z,org.opencontainers.image.revision=506148f67275a1ae38119bef9b8ca209a6ff507a
# Wed, 18 Nov 2026 21:41:59 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 18 Nov 2026 21:42:00 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 18 Nov 2026 21:42:33 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 18 Nov 2026 21:42:33 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 18 Nov 2026 21:42:33 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 18 Nov 2026 21:42:41 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 18 Nov 2026 21:42:41 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 18 Nov 2026 21:42:41 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:42:41 GMT
ENV SHELL=/bin/bash
# Wed, 18 Nov 2026 21:42:41 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:42:41 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 18 Nov 2026 21:42:41 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 18 Nov 2026 21:42:41 GMT
LABEL org.label-schema.build-date=2026-09-30T22:12:03.984586187Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=48acba663b09e70b115dd879329141506c377890 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T22:12:03.984586187Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=48acba663b09e70b115dd879329141506c377890 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Wed, 18 Nov 2026 21:42:41 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 18 Nov 2026 21:42:41 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 18 Nov 2026 21:42:41 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:42:41 GMT
CMD ["eswrapper"]
# Wed, 18 Nov 2026 21:42:41 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:43a13a3b1a9d32ca4e00b11b77daa68db7900831eb27e2a0bfa523b9764e2ff5`  
		Last Modified: Wed, 18 Nov 2026 17:00:22 GMT  
		Size: 38.7 MB (38744735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddac6cde6f91bd5f66944df6d2e03ffb293871f35c50508eb55bff7fc294edbf`  
		Last Modified: Wed, 18 Nov 2026 21:43:28 GMT  
		Size: 4.4 MB (4385920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec3dcb6e9c4fe8ebe29dc33e91bbcb36b5def43d42a12572597bd7a24498f70`  
		Last Modified: Wed, 18 Nov 2026 21:43:27 GMT  
		Size: 1.5 KB (1540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:761f86ad3d001650e78154c5661b96a0981c447ba1bbf28f724583bd58b3fdaa`  
		Last Modified: Wed, 18 Nov 2026 21:43:27 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:665d9be156fc2013012d422621fe75d3088d4223a65fc48237e0d3e8a5468f1d`  
		Last Modified: Wed, 18 Nov 2026 21:43:38 GMT  
		Size: 697.1 MB (697091802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4de5d3949b9ed52428b165bcd4ae97ee33538a9139c50362df310de8e455b44c`  
		Last Modified: Wed, 18 Nov 2026 21:43:28 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e3f01bf6a405f7be4b315a67cf06f1a219066700a22534063c85cfe1f0ab4c`  
		Last Modified: Wed, 18 Nov 2026 21:43:28 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5585d274ceca7f1efa439afe590680f58e1184e37eddb42f0cb03d2dc316b39a`  
		Last Modified: Wed, 18 Nov 2026 21:43:29 GMT  
		Size: 74.1 KB (74102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27fd2e56d72b2327baaf8f2a1c4aab8abe596016f7b1f9144536a04be4ba9bd`  
		Last Modified: Wed, 18 Nov 2026 21:43:30 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:4875b10ddade0d3572489f35db233595ac1fd67a5beb1ad4200f499a60c35374
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2451646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca94ce966ac742d24cd69a55008b1b0f7012de837f6040ffb43c125492c2144`

```dockerfile
```

-	Layers:
	-	`sha256:64680b496a3f6b62c7656d5f2b49fcd6e5a1c38fb17ad6511231130a88b03a8c`  
		Last Modified: Wed, 18 Nov 2026 21:43:28 GMT  
		Size: 2.4 MB (2417680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:170f0e5261c5abf136f5be3bf08ec6656703b7e78a774731abc5f43a0f9de36a`  
		Last Modified: Wed, 18 Nov 2026 21:43:27 GMT  
		Size: 34.0 KB (33966 bytes)  
		MIME: application/vnd.in-toto+json
