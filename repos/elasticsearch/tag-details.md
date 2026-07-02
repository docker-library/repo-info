<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:8.19.18`](#elasticsearch81918)
-	[`elasticsearch:9.3.7`](#elasticsearch937)
-	[`elasticsearch:9.4.3`](#elasticsearch943)

## `elasticsearch:8.19.18`

```console
$ docker pull elasticsearch@sha256:a47c94cfbcee3d15512e4daaa00c6370c5418f028661a695f21a1938437dde16
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:8.19.18` - linux; amd64

```console
$ docker pull elasticsearch@sha256:2a29962a60b359cf050062d18acd80546552bc43e26f4d6326b39a5863d3c96c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **722.3 MB (722339526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2553b0692b9c1e7f54cea6ebc669baaebe5cdf9d5445270fdeaccd0d5b8fa254`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:22:47 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Thu, 02 Jul 2026 02:22:48 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Thu, 02 Jul 2026 02:22:48 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 02 Jul 2026 02:22:48 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 02 Jul 2026 02:23:42 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Thu, 02 Jul 2026 02:23:42 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Thu, 02 Jul 2026 02:23:42 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:23:42 GMT
ENV SHELL=/bin/bash
# Thu, 02 Jul 2026 02:23:42 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:23:43 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Thu, 02 Jul 2026 02:23:43 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Thu, 02 Jul 2026 02:23:43 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Thu, 02 Jul 2026 02:23:43 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Thu, 02 Jul 2026 02:23:43 GMT
LABEL org.label-schema.build-date=2026-06-26T10:09:47.981719133Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=e8ac685d1710aae2c9fc9ca61e2956ab9424d5f8 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.18 org.opencontainers.image.created=2026-06-26T10:09:47.981719133Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=e8ac685d1710aae2c9fc9ca61e2956ab9424d5f8 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.18
# Thu, 02 Jul 2026 02:23:43 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:23:43 GMT
CMD ["eswrapper"]
# Thu, 02 Jul 2026 02:23:43 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:231bc4dfebf673c40d1c42e75d85b23e7baf10ed32ff067c096af0ebb0575a9c`  
		Last Modified: Thu, 02 Jul 2026 02:24:37 GMT  
		Size: 7.1 MB (7105352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de9d58beab24c6e4c7562973ca1e0bb8c5bc93bd15529e8deb8e8b2c582b4852`  
		Last Modified: Thu, 02 Jul 2026 02:24:37 GMT  
		Size: 3.5 KB (3536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76d98358fa20d55415a1e310785067dac9e406a3f0e1dfc63fabb9770e29610`  
		Last Modified: Thu, 02 Jul 2026 02:24:51 GMT  
		Size: 685.2 MB (685222049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e448360a1c650b75dbb7a3705dc8d7e2b0734346ea8a6ba5784a0db929a924c`  
		Last Modified: Thu, 02 Jul 2026 02:24:37 GMT  
		Size: 9.5 KB (9533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3306c637a26098b314c87645a7ed10c512f085e047e54f29de717a464d830e1`  
		Last Modified: Thu, 02 Jul 2026 02:24:38 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52be32a48370eca2dc71a1fdea30346cb7d91ed1bf9def2ba539598bc6c18601`  
		Last Modified: Thu, 02 Jul 2026 02:24:38 GMT  
		Size: 164.2 KB (164197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f289392a0c69ebd10b42791f7ff7c67b020f33b67977be16a918addb56ae2f35`  
		Last Modified: Thu, 02 Jul 2026 02:24:39 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a71840f414447cc7c54a6f63501e32e93c60620cc76efc999c8c28a59bf5ee7`  
		Last Modified: Thu, 02 Jul 2026 02:24:40 GMT  
		Size: 97.1 KB (97101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.18` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:60fbf833bfc4c2c4a367b437c20ee22dae12a612b0ef33a571bffb07f35de644
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3228449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f04ff5159116f16cd55ba790a93b6658edbcb5aa73baefbb5e6b6e2a99043bfd`

```dockerfile
```

-	Layers:
	-	`sha256:19cb58a838c96a9acc05e95b3ca190099f02565ee926c805927233b340993300`  
		Last Modified: Thu, 02 Jul 2026 02:24:37 GMT  
		Size: 3.2 MB (3191634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:586beadddc7b42a5b70d6846e6964b5074bb3155879796d727372939cddb841f`  
		Last Modified: Thu, 02 Jul 2026 02:24:37 GMT  
		Size: 36.8 KB (36815 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:8.19.18` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:8347cb482b0c63b2e127dde3775a54368d78b0d37e17d6b3f4abf2ed29b84054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **570.3 MB (570251608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410fe4461290d6e36328b6fdaa65aea95b38039ce119069aeaa4cec675a69205`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:21:45 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Thu, 02 Jul 2026 02:21:45 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Thu, 02 Jul 2026 02:21:45 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 02 Jul 2026 02:21:45 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 02 Jul 2026 02:22:29 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Thu, 02 Jul 2026 02:22:29 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Thu, 02 Jul 2026 02:22:29 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:22:29 GMT
ENV SHELL=/bin/bash
# Thu, 02 Jul 2026 02:22:29 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:22:29 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Thu, 02 Jul 2026 02:22:29 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Thu, 02 Jul 2026 02:22:30 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Thu, 02 Jul 2026 02:22:30 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Thu, 02 Jul 2026 02:22:30 GMT
LABEL org.label-schema.build-date=2026-06-26T10:09:47.981719133Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=e8ac685d1710aae2c9fc9ca61e2956ab9424d5f8 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.18 org.opencontainers.image.created=2026-06-26T10:09:47.981719133Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=e8ac685d1710aae2c9fc9ca61e2956ab9424d5f8 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.18
# Thu, 02 Jul 2026 02:22:30 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:22:30 GMT
CMD ["eswrapper"]
# Thu, 02 Jul 2026 02:22:30 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7aa24e9b1c2c783081cab70680640f7a7a8be623892ffb6500bf1b9b10e8c7c`  
		Last Modified: Thu, 02 Jul 2026 02:23:09 GMT  
		Size: 7.1 MB (7064732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7be6c1b333cd29505d4d3811bc77e59a33c314e3b7c7263217e26d6e8fd27286`  
		Last Modified: Thu, 02 Jul 2026 02:23:08 GMT  
		Size: 3.5 KB (3528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392cfb4a2413cea33a83addb01184cc6cf9547db0f832f3a618e490184f9746f`  
		Last Modified: Thu, 02 Jul 2026 02:23:19 GMT  
		Size: 534.0 MB (534030108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba87c1f95381adf8e5976eeb170e37c96ea032f67331a0e6c20cfabbd3969b7`  
		Last Modified: Thu, 02 Jul 2026 02:23:08 GMT  
		Size: 9.1 KB (9104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:774349b6f18bb31cc5f6defb6c4f7e5f0582e4f0aae54a121ecea30bc4dfbad3`  
		Last Modified: Thu, 02 Jul 2026 02:23:09 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10526067cfabbf9bec6eb21f25c1e45f4cc26134e5f8f52bb8798b9f237f8b72`  
		Last Modified: Thu, 02 Jul 2026 02:23:09 GMT  
		Size: 160.7 KB (160699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a163b0d6ede6205889bc930334ef207a5601dad6e4f25aaf9d3ff16949dfe980`  
		Last Modified: Thu, 02 Jul 2026 02:23:10 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b376684d1ce47c1e109d6d87850735e98ea4b4d90f44ac1496988ca91e49906d`  
		Last Modified: Thu, 02 Jul 2026 02:23:11 GMT  
		Size: 97.1 KB (97100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.18` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:690c9b21c39129256201868e55d061948ff78229cbe1099b7a8ccf18e73b4ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3229064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:607fb0f456a706180bc63bda857f4098dbe097380b1a53d2e8d5881a16e4eaac`

```dockerfile
```

-	Layers:
	-	`sha256:35adce8806c28e859cb282fb6bb7d2f0d73860c3b8b7d9a64c51b7c92751b485`  
		Last Modified: Thu, 02 Jul 2026 02:23:08 GMT  
		Size: 3.2 MB (3192047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c56eb525de9dd2882f54ae2fe045c68930f7efa9776232739e0163c1048d61a8`  
		Last Modified: Thu, 02 Jul 2026 02:23:08 GMT  
		Size: 37.0 KB (37017 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.3.7`

```console
$ docker pull elasticsearch@sha256:9b25daa3f0e9522674604ea4b6064982beb1d2bc3b2799b8c24e79470300fce8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.3.7` - linux; amd64

```console
$ docker pull elasticsearch@sha256:639ef7f7911e5f0848c17c5b403edd712a5638f3c0bcb37b544f5ac7c9b4d11a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **721.8 MB (721823444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4df1a77c4f0190e8dc03bc8ab1bf1747c84f9f87797cdecb9bab2cd482dd7f8`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 30 Jun 2026 05:29:32 GMT
ENV container oci
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:efac128f83583a6247aea2e1de3f354267a91fa9afbb47889a2bebf40b22f4af in /      
# Tue, 30 Jun 2026 05:29:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 30 Jun 2026 05:29:33 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:041b210b17febe96db30cba4f2b22eb7e05f976482f5a304098344e035b1cad8 in /usr/share/buildinfo/      
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:041b210b17febe96db30cba4f2b22eb7e05f976482f5a304098344e035b1cad8 in /root/buildinfo/      
# Tue, 30 Jun 2026 05:29:33 GMT
LABEL "org.opencontainers.image.created"="2026-06-30T05:29:15Z" "org.opencontainers.image.revision"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "build-date"="2026-06-30T05:29:15Z" "architecture"="x86_64" "vcs-ref"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "vcs-type"="git" "release"="1782797275"org.opencontainers.image.created=2026-06-30T05:29:15Z,org.opencontainers.image.revision=9d52f7ccf5e43749249b95c398cdcb9020bc399d
# Wed, 01 Jul 2026 00:23:02 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:23:02 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 01 Jul 2026 00:24:21 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 01 Jul 2026 00:24:21 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 01 Jul 2026 00:24:21 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 01 Jul 2026 00:24:30 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 01 Jul 2026 00:24:31 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 01 Jul 2026 00:24:31 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:24:31 GMT
ENV SHELL=/bin/bash
# Wed, 01 Jul 2026 00:24:31 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:24:31 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 01 Jul 2026 00:24:31 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 01 Jul 2026 00:24:31 GMT
LABEL org.label-schema.build-date=2026-06-25T11:08:08.777765252Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=8a1aee1fa2521e4355e4586014854bf740707344 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.3.7 org.opencontainers.image.created=2026-06-25T11:08:08.777765252Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=8a1aee1fa2521e4355e4586014854bf740707344 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.7
# Wed, 01 Jul 2026 00:24:31 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.3.7 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 01 Jul 2026 00:24:31 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 01 Jul 2026 00:24:31 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 01 Jul 2026 00:24:31 GMT
CMD ["eswrapper"]
# Wed, 01 Jul 2026 00:24:31 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:8af57f051b373375a1be8f892172089259ad624ed8452291226c539055e60228`  
		Last Modified: Tue, 30 Jun 2026 06:57:41 GMT  
		Size: 40.7 MB (40689427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35114394d76f8155d5c38a387f730985a1fa5158cf91ef129c55e58dc9a56da1`  
		Last Modified: Wed, 01 Jul 2026 00:25:24 GMT  
		Size: 4.1 MB (4108843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c20b0071825ff965d875539356037a347d0fae46b0ee7c18dd6041b12ff8ee3`  
		Last Modified: Wed, 01 Jul 2026 00:25:24 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5021357a814e3c66b6c48c98fa14a3c237d0e0c867ecb278d52ff29e69733b0c`  
		Last Modified: Wed, 01 Jul 2026 00:25:23 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31ef02f9b02987b42c1f2ba03ddda61d17dd517a476904ffe14836f8cf1e5176`  
		Last Modified: Wed, 01 Jul 2026 00:25:37 GMT  
		Size: 676.9 MB (676935210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ab1f005a7835d9164788391d9f71c6abc86c47b722b383258a8c50446e57c3`  
		Last Modified: Wed, 01 Jul 2026 00:25:25 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f4194cbe473fb41737c32c8c13bec35806d96e313817618e5d8784e2403191b`  
		Last Modified: Wed, 01 Jul 2026 00:25:25 GMT  
		Size: 1.7 KB (1721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060bf6414e38ff760d4fab0d2d41ea48bc433d20f96fbb90b56c404e7ada9c77`  
		Last Modified: Wed, 01 Jul 2026 00:25:26 GMT  
		Size: 75.2 KB (75192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f6635f0d892b2f4b191a175ac3a35e6a28946ff6f6406557d2a4f3219118c63`  
		Last Modified: Wed, 01 Jul 2026 00:25:26 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.3.7` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:2d2a0879d7c14326b210e09ceaf5a3a7736ddf32c9ddac48b939edeca1c53ce2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2123293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aefae3a18f604de74c6fc0748b36816c998474322d405ef8923d8020ac89df4`

```dockerfile
```

-	Layers:
	-	`sha256:d02736cbab49809d1d79f774a46e54a5dc31cc6cb94f23d851a07f7dd1df17a5`  
		Last Modified: Wed, 01 Jul 2026 00:25:24 GMT  
		Size: 2.1 MB (2089437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:231c7259afc6197df93ea3d3bf5879d1c4d7bbdd774499e869060d727b3da2d8`  
		Last Modified: Wed, 01 Jul 2026 00:25:24 GMT  
		Size: 33.9 KB (33856 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.3.7` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:11f9889e5636808395554f56ff98938c0367adb73bec9db74ab5ad30f691091e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **565.9 MB (565892746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7e52576271e8f57a77f6e355cf27a381fa6d381028cb3573418c53ddf9d97b5`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 30 Jun 2026 05:31:32 GMT
ENV container oci
# Tue, 30 Jun 2026 05:31:33 GMT
COPY dir:33d9a0597e0a229533d40301027624dd670560f4cec941a76f227790e1dd51ed in /      
# Tue, 30 Jun 2026 05:31:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 30 Jun 2026 05:31:33 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 05:31:33 GMT
COPY dir:a896e70442063b6b2aecdf0aac7a09d8b18a0772ea7b0aee60c2830a8ad0b28a in /usr/share/buildinfo/      
# Tue, 30 Jun 2026 05:31:33 GMT
COPY dir:a896e70442063b6b2aecdf0aac7a09d8b18a0772ea7b0aee60c2830a8ad0b28a in /root/buildinfo/      
# Tue, 30 Jun 2026 05:31:34 GMT
LABEL "org.opencontainers.image.created"="2026-06-30T05:31:10Z" "org.opencontainers.image.revision"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "build-date"="2026-06-30T05:31:10Z" "architecture"="aarch64" "vcs-ref"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "vcs-type"="git" "release"="1782797275"org.opencontainers.image.created=2026-06-30T05:31:10Z,org.opencontainers.image.revision=9d52f7ccf5e43749249b95c398cdcb9020bc399d
# Wed, 01 Jul 2026 00:14:04 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:14:04 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 01 Jul 2026 00:14:39 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 01 Jul 2026 00:14:39 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 01 Jul 2026 00:14:39 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 01 Jul 2026 00:14:45 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 01 Jul 2026 00:14:45 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 01 Jul 2026 00:14:45 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:14:45 GMT
ENV SHELL=/bin/bash
# Wed, 01 Jul 2026 00:14:45 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:14:45 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 01 Jul 2026 00:14:45 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 01 Jul 2026 00:14:45 GMT
LABEL org.label-schema.build-date=2026-06-25T11:08:08.777765252Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=8a1aee1fa2521e4355e4586014854bf740707344 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.3.7 org.opencontainers.image.created=2026-06-25T11:08:08.777765252Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=8a1aee1fa2521e4355e4586014854bf740707344 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.7
# Wed, 01 Jul 2026 00:14:45 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.3.7 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 01 Jul 2026 00:14:46 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 01 Jul 2026 00:14:46 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 01 Jul 2026 00:14:46 GMT
CMD ["eswrapper"]
# Wed, 01 Jul 2026 00:14:46 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:96c16ad0505847764761c5c4d0a82cd8a619f3e93c57f6a4b081cb9d4d0dd3e7`  
		Last Modified: Tue, 30 Jun 2026 06:59:10 GMT  
		Size: 38.8 MB (38848656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89eddf407cc64df4a53580f714607d4d075400236055d991305f62e06141a2d`  
		Last Modified: Wed, 01 Jul 2026 00:15:25 GMT  
		Size: 4.1 MB (4111281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d36abce0571d354a20c78cca9337b32cd8974ff5fb8b84bdaf2936990bbf84`  
		Last Modified: Wed, 01 Jul 2026 00:15:25 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:367b91471e5e6791f9b5e86fa3c602ace6d75429241316f53a4675099b311cfa`  
		Last Modified: Wed, 01 Jul 2026 00:15:25 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5294c071368af337dd05e9f7424d3b265e3473011e8c3dc5a07644b26ddd11f3`  
		Last Modified: Wed, 01 Jul 2026 00:15:37 GMT  
		Size: 522.8 MB (522844366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e84cc5168137250b9cc1094562635cb2c8d958747cd9314711736e10e8225a63`  
		Last Modified: Wed, 01 Jul 2026 00:15:26 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25394ca5732cb63292cf3d6745e950dc89629cda5c30798677097ccc0b121f94`  
		Last Modified: Wed, 01 Jul 2026 00:15:26 GMT  
		Size: 1.7 KB (1715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c11a698728c96f3469362aad611c6ed79edc230738894d113ea9246ba8b64bd`  
		Last Modified: Wed, 01 Jul 2026 00:15:27 GMT  
		Size: 74.1 KB (74104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38064d6f53314494d5a65748a1ff31dbc1b24e89c87435ce7e41de67906e44a`  
		Last Modified: Wed, 01 Jul 2026 00:15:28 GMT  
		Size: 1.7 KB (1697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.3.7` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:c22d17345216b91177a9a5dd38efa833709c17d82f532a9e41ed198858047fc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2122255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abdf4e83d68a17c5a74ca1513b4333300c0de2b2e0ab91375220293dfdf7288e`

```dockerfile
```

-	Layers:
	-	`sha256:ff9e732bec4c0cfb41cdcc4d1928700b26ee94961e8a4b30c090a25bcd74be04`  
		Last Modified: Wed, 01 Jul 2026 00:15:25 GMT  
		Size: 2.1 MB (2088217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f20a945f1be6c089062cdcb5f4c1c29c8f2a316b6d5651258b486ba5b9a423`  
		Last Modified: Wed, 01 Jul 2026 00:15:25 GMT  
		Size: 34.0 KB (34038 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.4.3`

```console
$ docker pull elasticsearch@sha256:7e951dbda7692c1402de66b02523d349b7807d99269d9d2cd54092acd4ce5e0e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.3` - linux; amd64

```console
$ docker pull elasticsearch@sha256:27415e69d0508ec9cb94dfa39ebb4e0e01394a9f99c81fd3e1cfe46e78a3f971
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **865.5 MB (865479936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:722c9d8a61bbd97971a026211750756777618e16302831eb8f32a99379bcb55e`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 30 Jun 2026 05:29:32 GMT
ENV container oci
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:efac128f83583a6247aea2e1de3f354267a91fa9afbb47889a2bebf40b22f4af in /      
# Tue, 30 Jun 2026 05:29:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 30 Jun 2026 05:29:33 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:041b210b17febe96db30cba4f2b22eb7e05f976482f5a304098344e035b1cad8 in /usr/share/buildinfo/      
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:041b210b17febe96db30cba4f2b22eb7e05f976482f5a304098344e035b1cad8 in /root/buildinfo/      
# Tue, 30 Jun 2026 05:29:33 GMT
LABEL "org.opencontainers.image.created"="2026-06-30T05:29:15Z" "org.opencontainers.image.revision"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "build-date"="2026-06-30T05:29:15Z" "architecture"="x86_64" "vcs-ref"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "vcs-type"="git" "release"="1782797275"org.opencontainers.image.created=2026-06-30T05:29:15Z,org.opencontainers.image.revision=9d52f7ccf5e43749249b95c398cdcb9020bc399d
# Wed, 01 Jul 2026 00:23:37 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:23:37 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 01 Jul 2026 00:24:31 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 01 Jul 2026 00:24:31 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 01 Jul 2026 00:24:31 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 01 Jul 2026 00:24:42 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 01 Jul 2026 00:24:42 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 01 Jul 2026 00:24:42 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:24:42 GMT
ENV SHELL=/bin/bash
# Wed, 01 Jul 2026 00:24:42 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:24:42 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 01 Jul 2026 00:24:42 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 01 Jul 2026 00:24:42 GMT
LABEL org.label-schema.build-date=2026-06-25T14:04:34.316306228Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=45f6a06b1b441b41fe711059b8720013173e7c89 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.3 org.opencontainers.image.created=2026-06-25T14:04:34.316306228Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=45f6a06b1b441b41fe711059b8720013173e7c89 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.3
# Wed, 01 Jul 2026 00:24:42 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.3 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 01 Jul 2026 00:24:43 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 01 Jul 2026 00:24:43 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 01 Jul 2026 00:24:43 GMT
CMD ["eswrapper"]
# Wed, 01 Jul 2026 00:24:43 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:8af57f051b373375a1be8f892172089259ad624ed8452291226c539055e60228`  
		Last Modified: Tue, 30 Jun 2026 06:57:41 GMT  
		Size: 40.7 MB (40689427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c27b195c1eab53252a45ff59a72b5d9db4bd5fa773676f3d4b9bfe2a1b0594`  
		Last Modified: Wed, 01 Jul 2026 00:25:39 GMT  
		Size: 4.1 MB (4108860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e31b46ce4e6e298dc332a04085c954da74c39fef76c81c4cbc1c0dde13c1f2c`  
		Last Modified: Wed, 01 Jul 2026 00:25:38 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e477afdd90068665bbe9cf4176727afd6d25b8a0cb1138c63d2b493ed7e68b1a`  
		Last Modified: Wed, 01 Jul 2026 00:25:38 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d048db419247bb61ed5dc69ec5e03926f8848392059184b4e3b999119ddd470d`  
		Last Modified: Wed, 01 Jul 2026 00:25:54 GMT  
		Size: 820.6 MB (820591697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a45e0ab9f92fd566f173eeab5eaa1cc01c0d9d51bf7a3ea64acecfd8f0be3ee6`  
		Last Modified: Wed, 01 Jul 2026 00:25:40 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d04a74ebf706f97aad805f67382d09b184aed11ca1bbf71cd1f1b626893ac90`  
		Last Modified: Wed, 01 Jul 2026 00:25:40 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1f1dc4db8ff2f2e90dcc4ff922d2435cfa98067cce0a4afd8e87537b5463a18`  
		Last Modified: Wed, 01 Jul 2026 00:25:40 GMT  
		Size: 75.2 KB (75182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9ba1d21330ded0ef814a706e3ee6a93b7b6170e7a623f75730e13c2e37a2cd`  
		Last Modified: Wed, 01 Jul 2026 00:25:41 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.3` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:b0e6fddcc5aaa26812a066ed218b903bd4ca745a7238b3eda624a9a64f39606e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2423734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f3777d2e2c182009517118d12a82f66431193d9a66fb5ddf95a0954c32a5827`

```dockerfile
```

-	Layers:
	-	`sha256:93c38ee4a457266cebac88ac4635faee141f6dae6f884c290af3f2392cf0c7c0`  
		Last Modified: Wed, 01 Jul 2026 00:25:38 GMT  
		Size: 2.4 MB (2389958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9e6eb2186d0d1bf8e515e86dd43d7e10f5963dc63f77b9bcb8142805245ea86`  
		Last Modified: Wed, 01 Jul 2026 00:25:38 GMT  
		Size: 33.8 KB (33776 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.3` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:9eeda85eb502d0dc4e61d6a55716b28fd016add7ea8d3eb0148366b23455c633
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **710.1 MB (710115784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12083a6b750589f4b7a16e9eb0f8103ad6876f66eca57fabcb27acfc912f814d`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 30 Jun 2026 05:31:32 GMT
ENV container oci
# Tue, 30 Jun 2026 05:31:33 GMT
COPY dir:33d9a0597e0a229533d40301027624dd670560f4cec941a76f227790e1dd51ed in /      
# Tue, 30 Jun 2026 05:31:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 30 Jun 2026 05:31:33 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 05:31:33 GMT
COPY dir:a896e70442063b6b2aecdf0aac7a09d8b18a0772ea7b0aee60c2830a8ad0b28a in /usr/share/buildinfo/      
# Tue, 30 Jun 2026 05:31:33 GMT
COPY dir:a896e70442063b6b2aecdf0aac7a09d8b18a0772ea7b0aee60c2830a8ad0b28a in /root/buildinfo/      
# Tue, 30 Jun 2026 05:31:34 GMT
LABEL "org.opencontainers.image.created"="2026-06-30T05:31:10Z" "org.opencontainers.image.revision"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "build-date"="2026-06-30T05:31:10Z" "architecture"="aarch64" "vcs-ref"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "vcs-type"="git" "release"="1782797275"org.opencontainers.image.created=2026-06-30T05:31:10Z,org.opencontainers.image.revision=9d52f7ccf5e43749249b95c398cdcb9020bc399d
# Wed, 01 Jul 2026 00:14:17 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:14:17 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 01 Jul 2026 00:15:26 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 01 Jul 2026 00:15:26 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 01 Jul 2026 00:15:26 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 01 Jul 2026 00:15:34 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 01 Jul 2026 00:15:34 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 01 Jul 2026 00:15:34 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:15:34 GMT
ENV SHELL=/bin/bash
# Wed, 01 Jul 2026 00:15:34 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:15:34 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 01 Jul 2026 00:15:34 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 01 Jul 2026 00:15:34 GMT
LABEL org.label-schema.build-date=2026-06-25T14:04:34.316306228Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=45f6a06b1b441b41fe711059b8720013173e7c89 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.3 org.opencontainers.image.created=2026-06-25T14:04:34.316306228Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=45f6a06b1b441b41fe711059b8720013173e7c89 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.3
# Wed, 01 Jul 2026 00:15:34 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.3 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 01 Jul 2026 00:15:34 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 01 Jul 2026 00:15:34 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 01 Jul 2026 00:15:34 GMT
CMD ["eswrapper"]
# Wed, 01 Jul 2026 00:15:34 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:96c16ad0505847764761c5c4d0a82cd8a619f3e93c57f6a4b081cb9d4d0dd3e7`  
		Last Modified: Tue, 30 Jun 2026 06:59:10 GMT  
		Size: 38.8 MB (38848656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b222d73ec3945c27496f3d73c9fe8d471cc541256ae6bd36a1b5be3afa8e83c`  
		Last Modified: Wed, 01 Jul 2026 00:16:20 GMT  
		Size: 4.1 MB (4111298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3107d212e0392004bca6136e48fa73b79a770e6b806244295441baec1575484f`  
		Last Modified: Wed, 01 Jul 2026 00:16:20 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c905022a061d6455f5704200e5c08c0cdee7476c5b72b79da18e303de1387048`  
		Last Modified: Wed, 01 Jul 2026 00:16:20 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112f8d1a7c1015ae53f84704832b5dcbd02623657332d71de73dd4fc11da26fe`  
		Last Modified: Wed, 01 Jul 2026 00:16:33 GMT  
		Size: 667.1 MB (667067371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9f867d9600487dcdff8dab811232f17586d189e62c17ea507618e9c52043a0c`  
		Last Modified: Wed, 01 Jul 2026 00:16:21 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86e525a34931868246f4670f9e3978eea9d65b92af03cad53ddf719eb54932c`  
		Last Modified: Wed, 01 Jul 2026 00:16:21 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:117ad4d33571d3fd8d9f588a265960e2e0c506404a2c513c1515edbbfd333fe5`  
		Last Modified: Wed, 01 Jul 2026 00:16:22 GMT  
		Size: 74.1 KB (74112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cacb256fd84a479877602b9b2d2642bc13f5703b8a235eb738e31c25839e0b74`  
		Last Modified: Wed, 01 Jul 2026 00:16:22 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.3` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:13b42a280058a994a4ae97ef28adaaaf0c13e56740bbd16e8dd1299f8912cb92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:385ab8179c7f1af0fc78e41078eff831bbe01f5020c7b4033a6b8cdbeb11eaca`

```dockerfile
```

-	Layers:
	-	`sha256:8f43578d1cb9cd1f837f0e5affa2e289a3f730742cde044cd36deedfce470b8f`  
		Last Modified: Wed, 01 Jul 2026 00:16:20 GMT  
		Size: 2.4 MB (2388738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9d7b980557f806338dafe872e83ee05f9a3a66b0aa918f8686538f606a44030`  
		Last Modified: Wed, 01 Jul 2026 00:16:20 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json
