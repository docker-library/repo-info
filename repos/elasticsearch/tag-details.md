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
$ docker pull elasticsearch@sha256:99c345b96ae2bccd5da3b390f362bc51fb6221ffa1401afd540fc3d5b2e136ae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.3.7` - linux; amd64

```console
$ docker pull elasticsearch@sha256:276229bfde17525b25cf3a2bbf83eafb7ae81b0745df4a62f7bd86882ceefd0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **721.8 MB (721820915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4cea0a06a08aec6fdc3c49645fe64db08384b96631731c4fa77c46fb2b9a64`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:23:58 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:00 GMT
COPY dir:dda677ba051a98116648e1a287f61c3a14228d29afcce98aa2f96b7d97c25f06 in /      
# Wed, 15 Jul 2026 05:24:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:01 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:02 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:22:58Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:22:58Z" "architecture"="x86_64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:22:58Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:23:10 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:23:10 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Thu, 16 Jul 2026 00:24:21 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 16 Jul 2026 00:24:21 GMT
COPY /bin/tini /bin/tini # buildkit
# Thu, 16 Jul 2026 00:24:21 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 16 Jul 2026 00:24:30 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Thu, 16 Jul 2026 00:24:30 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Thu, 16 Jul 2026 00:24:30 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:24:30 GMT
ENV SHELL=/bin/bash
# Thu, 16 Jul 2026 00:24:30 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:24:30 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Thu, 16 Jul 2026 00:24:30 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Thu, 16 Jul 2026 00:24:30 GMT
LABEL org.label-schema.build-date=2026-06-25T11:08:08.777765252Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=8a1aee1fa2521e4355e4586014854bf740707344 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.3.7 org.opencontainers.image.created=2026-06-25T11:08:08.777765252Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=8a1aee1fa2521e4355e4586014854bf740707344 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.7
# Thu, 16 Jul 2026 00:24:30 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.3.7 release=1 summary=Elasticsearch description=You know, for search.
# Thu, 16 Jul 2026 00:24:31 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 16 Jul 2026 00:24:31 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Thu, 16 Jul 2026 00:24:31 GMT
CMD ["eswrapper"]
# Thu, 16 Jul 2026 00:24:31 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c97698c28aaa212f2f1a826374431c0e5236f456bebd1ada0814513ced07d9`  
		Last Modified: Thu, 16 Jul 2026 00:25:22 GMT  
		Size: 4.1 MB (4107572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be002afe3dfaccf2c16ee31bb6089f622e62d689e9d2034ff3a96bf11b6e5b1`  
		Last Modified: Thu, 16 Jul 2026 00:25:22 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:135eedccd0d4f04be0d47e5aa8ad9c9a12a8c158cffdfccb2eaacefab1492d7e`  
		Last Modified: Thu, 16 Jul 2026 00:25:22 GMT  
		Size: 9.5 KB (9533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4230e69881861f6c5a86491a5d33c9165df8a020cc7f661dd79bd65350e51cb6`  
		Last Modified: Thu, 16 Jul 2026 00:25:35 GMT  
		Size: 676.9 MB (676935238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1375e357e07713c1cbde140e36fa30563724fd2fc6ea1b493883c1e7ace60ada`  
		Last Modified: Thu, 16 Jul 2026 00:25:23 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f958fae2ccc3e2c9b914613dd6949d47d913b1cb772b748b43b940460cf59a99`  
		Last Modified: Thu, 16 Jul 2026 00:25:24 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efb9ead929f0dbb6f55600bcace430be9ef90de7b952e245dc5c766c99de653e`  
		Last Modified: Thu, 16 Jul 2026 00:25:24 GMT  
		Size: 75.2 KB (75191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7376c50065afeb999eee75158b7ca1432ea332444402d9fa9a99bd9ff80a847d`  
		Last Modified: Thu, 16 Jul 2026 00:25:25 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.3.7` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:dfb5a0dd80d3ea448da6c20345891d1de71e15e959b3b6b95327003aa65a9d38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2123293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abbc0a14315aff6b717fb6746a62545e75ca57dc6422abda0e296cfed31a13b6`

```dockerfile
```

-	Layers:
	-	`sha256:c5bda020764ba5a29c5bdfd3c7b99f81038230c9d0d93b29e3933c4447c8ef06`  
		Last Modified: Thu, 16 Jul 2026 00:25:22 GMT  
		Size: 2.1 MB (2089437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a06008334bcd26b81a0cf81f11dde619bfbf77a860165cb46083cfda8c29df48`  
		Last Modified: Thu, 16 Jul 2026 00:25:22 GMT  
		Size: 33.9 KB (33856 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.3.7` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:09cfdbfacf1d1dea096a6f98027309e3e8108a320002f5228b1e1ae1ce6621cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **565.9 MB (565872017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cb64e79f63516658bf47d2925f92a4a28b9e7b99042ee11653b8d9ed678d09a`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:24:50 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:51 GMT
COPY dir:f7c8e662c3292e2603100c327cf13d8efc9fc2dd911fb477df032cb5542cc0e4 in /      
# Wed, 15 Jul 2026 05:24:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:51 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:51 GMT
COPY dir:ff90d0a81deeceda02ad7ce190c6d799c4c499889c0cc7090bd1e332979d4f07 in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:51 GMT
COPY dir:ff90d0a81deeceda02ad7ce190c6d799c4c499889c0cc7090bd1e332979d4f07 in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:52 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:24:27Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:24:27Z" "architecture"="aarch64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:24:27Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:24:11 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:24:11 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Thu, 16 Jul 2026 00:25:04 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 16 Jul 2026 00:25:04 GMT
COPY /bin/tini /bin/tini # buildkit
# Thu, 16 Jul 2026 00:25:04 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 16 Jul 2026 00:25:10 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Thu, 16 Jul 2026 00:25:10 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Thu, 16 Jul 2026 00:25:10 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:25:10 GMT
ENV SHELL=/bin/bash
# Thu, 16 Jul 2026 00:25:10 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:25:11 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Thu, 16 Jul 2026 00:25:11 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Thu, 16 Jul 2026 00:25:11 GMT
LABEL org.label-schema.build-date=2026-06-25T11:08:08.777765252Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=8a1aee1fa2521e4355e4586014854bf740707344 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.3.7 org.opencontainers.image.created=2026-06-25T11:08:08.777765252Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=8a1aee1fa2521e4355e4586014854bf740707344 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.7
# Thu, 16 Jul 2026 00:25:11 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.3.7 release=1 summary=Elasticsearch description=You know, for search.
# Thu, 16 Jul 2026 00:25:11 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 16 Jul 2026 00:25:11 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Thu, 16 Jul 2026 00:25:11 GMT
CMD ["eswrapper"]
# Thu, 16 Jul 2026 00:25:11 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:7ce9fd1dd40cd1b3485743f9ba234221d41bec07d83f53e3336c641264fc8211`  
		Last Modified: Wed, 15 Jul 2026 06:14:31 GMT  
		Size: 38.8 MB (38829586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed3bdfda6a4073af70ed9506440c9f5b32c8b0d5fa88151c519bf9fab0e7afb5`  
		Last Modified: Thu, 16 Jul 2026 00:25:50 GMT  
		Size: 4.1 MB (4109798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf32b7483c5cef372216588faed6489d87545f12ce7df2e9caea64de79bc592`  
		Last Modified: Thu, 16 Jul 2026 00:25:50 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0718b6b1f3ba0d08e7ee89a4e0bf022d0c8a5df01f9df4b372bd868d92b6b89c`  
		Last Modified: Thu, 16 Jul 2026 00:25:50 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:898db608bfa8ba8a1fbc003c5e9c2c3fd06b09c6189698640109eb018105c84c`  
		Last Modified: Thu, 16 Jul 2026 00:26:07 GMT  
		Size: 522.8 MB (522844180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b988ab338ee89ca89e0fd47779a36e9d9e78f194ad840bc828b7e987a5f64b`  
		Last Modified: Thu, 16 Jul 2026 00:25:51 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:123a2fde48ae8789dab83d4b6636ba3f70d6ffb8eebcf5c0f68a5af1aec039cb`  
		Last Modified: Thu, 16 Jul 2026 00:25:51 GMT  
		Size: 1.7 KB (1721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ee4bf4f3e14396036d80c12a5461bbe8cad5b29d6f4afbe3eb530f270382fe`  
		Last Modified: Thu, 16 Jul 2026 00:25:52 GMT  
		Size: 74.1 KB (74110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:315098ef933c4ab0f5a7243e2c517b5d0b332e208e80770396404b4e7f144a58`  
		Last Modified: Thu, 16 Jul 2026 00:25:53 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.3.7` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:e94136c40d33642f9fe8201ac9e54f71a7664fc5037d56dacebb60b98059813f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2122254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6498949d9e0d924198c9e306d711cb5f64a534c2ac25e978b926f86cc5fe30d4`

```dockerfile
```

-	Layers:
	-	`sha256:53c4dd4450a6d8505dacf3592a81cf46517a33e399213c1ab73c222883159ee3`  
		Last Modified: Thu, 16 Jul 2026 00:25:50 GMT  
		Size: 2.1 MB (2088217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9dff7ac8c8504b03d2e91f8902cd6a87298195e510b409eed91c41428d5105b7`  
		Last Modified: Thu, 16 Jul 2026 00:25:50 GMT  
		Size: 34.0 KB (34037 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.4.3`

```console
$ docker pull elasticsearch@sha256:fa8f4ebbc41c2d8b88c3371d4159893364ae0ea8306dc62aefecaa1643f2d137
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.3` - linux; amd64

```console
$ docker pull elasticsearch@sha256:1c3d4a35512fa3450494dc5c68abb766a18682a6e678da586dbb0ca149d84d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **865.5 MB (865477577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c36fc5ebe11ee12e3ca3b40bc473494525cb8e1799d55648d5b39ea8ab68931`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:23:58 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:00 GMT
COPY dir:dda677ba051a98116648e1a287f61c3a14228d29afcce98aa2f96b7d97c25f06 in /      
# Wed, 15 Jul 2026 05:24:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:01 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:02 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:22:58Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:22:58Z" "architecture"="x86_64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:22:58Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:23:12 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:23:12 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Thu, 16 Jul 2026 00:23:46 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 16 Jul 2026 00:23:46 GMT
COPY /bin/tini /bin/tini # buildkit
# Thu, 16 Jul 2026 00:23:46 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 16 Jul 2026 00:23:57 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Thu, 16 Jul 2026 00:23:57 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Thu, 16 Jul 2026 00:23:57 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:23:57 GMT
ENV SHELL=/bin/bash
# Thu, 16 Jul 2026 00:23:57 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:23:57 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Thu, 16 Jul 2026 00:23:57 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Thu, 16 Jul 2026 00:23:57 GMT
LABEL org.label-schema.build-date=2026-06-25T14:04:34.316306228Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=45f6a06b1b441b41fe711059b8720013173e7c89 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.3 org.opencontainers.image.created=2026-06-25T14:04:34.316306228Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=45f6a06b1b441b41fe711059b8720013173e7c89 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.3
# Thu, 16 Jul 2026 00:23:57 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.3 release=1 summary=Elasticsearch description=You know, for search.
# Thu, 16 Jul 2026 00:23:57 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 16 Jul 2026 00:23:57 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Thu, 16 Jul 2026 00:23:57 GMT
CMD ["eswrapper"]
# Thu, 16 Jul 2026 00:23:57 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944de3b38d55649d639ba5280af7f3f4c22c816bea234bb912ac9264f7a2926d`  
		Last Modified: Thu, 16 Jul 2026 00:24:53 GMT  
		Size: 4.1 MB (4107565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2822af1db01ddf9b551facf544a56f9c3cf3d2c12852c8baee377616ba4cfba`  
		Last Modified: Thu, 16 Jul 2026 00:24:53 GMT  
		Size: 1.5 KB (1528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe26a971ca93afad28bb8167cd22f73efa70df4ce943d674093d5a7adc9b6a3`  
		Last Modified: Thu, 16 Jul 2026 00:24:53 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad9c0615484d9f53cdd7275e4c15dc135ac80f28278f4ea434324d80409b231e`  
		Last Modified: Thu, 16 Jul 2026 00:25:08 GMT  
		Size: 820.6 MB (820591913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00005feeced468371e84f5d82af428b7eb1cbd4f588b24d1795f3ce72cfbeb1f`  
		Last Modified: Thu, 16 Jul 2026 00:24:54 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b637ee6e84271fbd61e6241b9d2034de61239f23ac8ed97e282650095128494d`  
		Last Modified: Thu, 16 Jul 2026 00:24:54 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179155362b4eda3d04ce88900f73fc8e225b29ebd65f88c0d8c5130b3af3b2c2`  
		Last Modified: Thu, 16 Jul 2026 00:24:54 GMT  
		Size: 75.2 KB (75187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ea6c83ffbd41be760ca09f6be3a9275389fa80ee543962bba7bc81ba2cf8505`  
		Last Modified: Thu, 16 Jul 2026 00:24:55 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.3` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:dd5a08bcd34d5b23f301bcf56910662b7d3c33cbbe40f6ecf2a7568ef9801c2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2423733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c0fb5cd5c29a778ab1b63d4bc5d2cc4dde8a2aec060714499eb02be86d1ce10`

```dockerfile
```

-	Layers:
	-	`sha256:adc3a2f4273a339af3c085740e9ce6f724b239dc24662a560b3f1aeb08b8715b`  
		Last Modified: Thu, 16 Jul 2026 00:24:53 GMT  
		Size: 2.4 MB (2389958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c8c89780906ed527be866718a67496c3761d72860332899ed0fde580b433f2a`  
		Last Modified: Thu, 16 Jul 2026 00:24:53 GMT  
		Size: 33.8 KB (33775 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.3` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:cd22943dc80ff30b20ff4f9ba1a2dc7e82a771b2c495816aa3eb4f72b0137b98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **710.1 MB (710095177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd5fd5796fba79cf43914a56ea935f7e5240debc6fce75a997c7d30df48ad5a5`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:24:50 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:51 GMT
COPY dir:f7c8e662c3292e2603100c327cf13d8efc9fc2dd911fb477df032cb5542cc0e4 in /      
# Wed, 15 Jul 2026 05:24:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:51 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:51 GMT
COPY dir:ff90d0a81deeceda02ad7ce190c6d799c4c499889c0cc7090bd1e332979d4f07 in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:51 GMT
COPY dir:ff90d0a81deeceda02ad7ce190c6d799c4c499889c0cc7090bd1e332979d4f07 in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:52 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:24:27Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:24:27Z" "architecture"="aarch64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:24:27Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:24:14 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:24:14 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Thu, 16 Jul 2026 00:24:41 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 16 Jul 2026 00:24:41 GMT
COPY /bin/tini /bin/tini # buildkit
# Thu, 16 Jul 2026 00:24:41 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 16 Jul 2026 00:24:48 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Thu, 16 Jul 2026 00:24:48 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Thu, 16 Jul 2026 00:24:48 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:24:48 GMT
ENV SHELL=/bin/bash
# Thu, 16 Jul 2026 00:24:48 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:24:48 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Thu, 16 Jul 2026 00:24:48 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Thu, 16 Jul 2026 00:24:48 GMT
LABEL org.label-schema.build-date=2026-06-25T14:04:34.316306228Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=45f6a06b1b441b41fe711059b8720013173e7c89 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.3 org.opencontainers.image.created=2026-06-25T14:04:34.316306228Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=45f6a06b1b441b41fe711059b8720013173e7c89 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.3
# Thu, 16 Jul 2026 00:24:48 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.3 release=1 summary=Elasticsearch description=You know, for search.
# Thu, 16 Jul 2026 00:24:48 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 16 Jul 2026 00:24:48 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Thu, 16 Jul 2026 00:24:48 GMT
CMD ["eswrapper"]
# Thu, 16 Jul 2026 00:24:48 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:7ce9fd1dd40cd1b3485743f9ba234221d41bec07d83f53e3336c641264fc8211`  
		Last Modified: Wed, 15 Jul 2026 06:14:31 GMT  
		Size: 38.8 MB (38829586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:948d6c2a28a85cd95a1c3136e2cee02a909742e6e557a646ad3f6d0c89886a4e`  
		Last Modified: Thu, 16 Jul 2026 00:25:33 GMT  
		Size: 4.1 MB (4109747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30159c3952a1e74235e8119fe788db82b4a1d784da185dd3d7951e0f283d2d5f`  
		Last Modified: Thu, 16 Jul 2026 00:25:33 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd7100b44bc77fa887818fb0ccaa1eab99d84c47461b13669ec3d553cabf4f2`  
		Last Modified: Thu, 16 Jul 2026 00:25:33 GMT  
		Size: 9.1 KB (9103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3722ef5255c52e4cdece4f2a162c6829a9b7a109da010628a25a89364f5b0dd2`  
		Last Modified: Thu, 16 Jul 2026 00:25:45 GMT  
		Size: 667.1 MB (667067390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:015240553391713981c0ea3d0a5333260daa4106e4c0ff9c2ec620cd7698fa89`  
		Last Modified: Thu, 16 Jul 2026 00:25:34 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:497510e5822957cbd0ef098a5af4f4ff7667fe9bd1b43a83cd2a71626a1d47c4`  
		Last Modified: Thu, 16 Jul 2026 00:25:34 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f8eca68145dac9b08979fe1ff4e347118aeeb05b27dcf9263cdb45ef5ed8ddc`  
		Last Modified: Thu, 16 Jul 2026 00:25:35 GMT  
		Size: 74.1 KB (74105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f78f88bd070f5dc38cdbb0488e3891399ae374a696e04669e0bca4efabdab0e`  
		Last Modified: Thu, 16 Jul 2026 00:25:35 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.3` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:57241aafa5fbf7c16800fd67850a7be62f8f5438a64b654debfc5f32e670eb06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb387569214a82d47f1a394a814b7f1f4d9e763c09113302adba9d916a11ff07`

```dockerfile
```

-	Layers:
	-	`sha256:0d9381e9cf04781cfbebfd7a37ec7c0ca5839db0f0e5d39a4b718f3ebca721fd`  
		Last Modified: Thu, 16 Jul 2026 00:25:33 GMT  
		Size: 2.4 MB (2388738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:126c9dffe072bc84c9327c86ba34392b29ab91c46da662e25529c535b5da43ba`  
		Last Modified: Thu, 16 Jul 2026 00:25:32 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json
