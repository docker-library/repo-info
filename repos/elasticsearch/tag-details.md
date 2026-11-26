<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:8.19.26`](#elasticsearch81926)
-	[`elasticsearch:9.4.10`](#elasticsearch9410)
-	[`elasticsearch:9.5.7`](#elasticsearch957)

## `elasticsearch:8.19.26`

```console
$ docker pull elasticsearch@sha256:9507398e316f867a21c2c5e0dcb825075067510125e733b4c7b690683325a29f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:8.19.26` - linux; amd64

```console
$ docker pull elasticsearch@sha256:5213c56b1aab44efd333a2f9f874f4c8fef947a1041f930d80595e903ed4e9a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **725.1 MB (725095009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bade7bfefe0c5bf9faced2f29b66010cf5a872fe6c67bf5bd7b60526b2e04200`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Wed, 25 Nov 2026 23:44:48 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Wed, 25 Nov 2026 23:44:48 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 25 Nov 2026 23:44:48 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 25 Nov 2026 23:44:48 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 25 Nov 2026 23:45:37 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Wed, 25 Nov 2026 23:45:37 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 25 Nov 2026 23:45:37 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Nov 2026 23:45:37 GMT
ENV SHELL=/bin/bash
# Wed, 25 Nov 2026 23:45:37 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 25 Nov 2026 23:45:37 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 25 Nov 2026 23:45:37 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 25 Nov 2026 23:45:37 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 25 Nov 2026 23:45:37 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 25 Nov 2026 23:45:37 GMT
LABEL org.label-schema.build-date=2026-11-19T05:07:06.704032607Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c4a373185f14fffc55d2c04c3def6368addab03b org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.26 org.opencontainers.image.created=2026-11-19T05:07:06.704032607Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c4a373185f14fffc55d2c04c3def6368addab03b org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.26
# Wed, 25 Nov 2026 23:45:37 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 25 Nov 2026 23:45:37 GMT
CMD ["eswrapper"]
# Wed, 25 Nov 2026 23:45:37 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9c151d0392c0e07edd89961c2892f85003b05cfe1d7ff8c6c04fa9632e48bc`  
		Last Modified: Wed, 25 Nov 2026 23:46:28 GMT  
		Size: 11.2 MB (11237676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a459fcf51de312932d5e3b9bb1ac060a07c1ecf3b0fe59da5a4d8007e488bf9c`  
		Last Modified: Wed, 25 Nov 2026 23:46:28 GMT  
		Size: 3.5 KB (3526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d1f9806cb86c83c78aa9171e63f4fe85a3ecc90bfd4f5d7c48e8fec63f198a7`  
		Last Modified: Wed, 25 Nov 2026 23:46:41 GMT  
		Size: 683.8 MB (683788130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6300b4e27970cd929e4cba8ef63c3e30c22c17f0cfa6d20ea5a678211058873e`  
		Last Modified: Wed, 25 Nov 2026 23:46:28 GMT  
		Size: 9.5 KB (9534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f801ae441cacdeb3ee4f09c869a96b785e3390ddfcd7cfdbc1a3d180110ddc58`  
		Last Modified: Wed, 25 Nov 2026 23:46:29 GMT  
		Size: 1.7 KB (1715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b64e7ec6c20f7c55193c3c3bb82702c166d472f3c8b40e554382199b6292637`  
		Last Modified: Wed, 25 Nov 2026 23:46:29 GMT  
		Size: 164.2 KB (164191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54eab66601bc77907fc88315219f7842ab0ea41e9a9988fa42a7c8cb89b69adf`  
		Last Modified: Wed, 25 Nov 2026 23:46:30 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7a268caeb23f56958ea8d14acfe7701b58aaceec530c7090fd4f4b70582d7e`  
		Last Modified: Wed, 25 Nov 2026 23:46:30 GMT  
		Size: 96.5 KB (96502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.26` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:6543a2ea2f77a1b63b5e235d934f384ed646342ab0c4f676340feb94cdbb5402
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3223243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d43952ede5c95194bbf521e8d7a56122b24a0510285719b2f67a3948f46975c7`

```dockerfile
```

-	Layers:
	-	`sha256:8ed29ffea4d11cdad40ba44c4b19b62b8b1babe8429f0633199f952c721558b3`  
		Last Modified: Wed, 25 Nov 2026 23:46:28 GMT  
		Size: 3.2 MB (3186419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e29b379b3fad776e91ef39ea6b6bbe96a53bc77b4fc2cd2d6731b77d572d955`  
		Last Modified: Wed, 25 Nov 2026 23:46:28 GMT  
		Size: 36.8 KB (36824 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:8.19.26` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:91a397590cf540ca15ce58434483ff5057b0637dd64d5e4ebb7f1f63f0a35fef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **572.9 MB (572905623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0033ea85d6f58bb3f5400da19e0656b7bdb29edfb8cef034e1d8c8165f48cabd`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Wed, 25 Nov 2026 23:45:07 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Wed, 25 Nov 2026 23:45:08 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 25 Nov 2026 23:45:08 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 25 Nov 2026 23:45:08 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 25 Nov 2026 23:45:53 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Wed, 25 Nov 2026 23:45:53 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 25 Nov 2026 23:45:53 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Nov 2026 23:45:53 GMT
ENV SHELL=/bin/bash
# Wed, 25 Nov 2026 23:45:53 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 25 Nov 2026 23:45:53 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 25 Nov 2026 23:45:53 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 25 Nov 2026 23:45:53 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 25 Nov 2026 23:45:53 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 25 Nov 2026 23:45:53 GMT
LABEL org.label-schema.build-date=2026-11-19T05:07:06.704032607Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=c4a373185f14fffc55d2c04c3def6368addab03b org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.26 org.opencontainers.image.created=2026-11-19T05:07:06.704032607Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=c4a373185f14fffc55d2c04c3def6368addab03b org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.26
# Wed, 25 Nov 2026 23:45:53 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 25 Nov 2026 23:45:53 GMT
CMD ["eswrapper"]
# Wed, 25 Nov 2026 23:45:53 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe98f56bdeab18a91294410588c8996a9303ffa685241c81caefd1848e21ce1`  
		Last Modified: Wed, 25 Nov 2026 23:46:33 GMT  
		Size: 11.0 MB (11006267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44a2cf272a3a5ea284fb1876bd1681094dc51058dfebe6fe236d8db68b50e7ab`  
		Last Modified: Wed, 25 Nov 2026 23:46:33 GMT  
		Size: 3.5 KB (3528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a97c8d56c0616d39309bbf25987fb812b1e90e3852b345bc25f69205f2e1c048`  
		Last Modified: Wed, 25 Nov 2026 23:46:42 GMT  
		Size: 532.7 MB (532662064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2bbb28229cb07c5ab21e5756c97b3d7b3eb26be8c375ff0b77c74b4e2a650a`  
		Last Modified: Wed, 25 Nov 2026 23:46:33 GMT  
		Size: 9.1 KB (9103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc912e712bde8c362267743e4464d3ee9c4da97b1de19d8eb76d59791678d034`  
		Last Modified: Wed, 25 Nov 2026 23:46:34 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:038bd23cf43071d56c2d4f50627553ca08c44f4b670052a843eed455d366340e`  
		Last Modified: Wed, 25 Nov 2026 23:46:34 GMT  
		Size: 160.7 KB (160691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7d3fd81aaa7bd844eb3860da843275fba1f9a00738f40c2fd07a5b8a56ed330`  
		Last Modified: Wed, 25 Nov 2026 23:46:35 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:799060e04ff2fb66c9183a41147c38beb855e14854303d51abb1e6d56268087d`  
		Last Modified: Wed, 25 Nov 2026 23:46:35 GMT  
		Size: 96.5 KB (96498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.26` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:ac0767c5ccbd488188e2b58e757b9b9e4bb571434d60168ef13b8a50b26ae6d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3223859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d7a40b88f24c112f7b92cbe0100eb16e56ae34e7cd4555606e80a7431fac1ee`

```dockerfile
```

-	Layers:
	-	`sha256:6b8e1d90c4e3e8bc63fbc1c7e08bd1633a7a17a8863a0b80c4deec263bc46f4f`  
		Last Modified: Wed, 25 Nov 2026 23:46:33 GMT  
		Size: 3.2 MB (3186832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f23c3ad8c5a107883cccf3c58f2dab98fffda2bfc7612a5691f17a29111a31b`  
		Last Modified: Wed, 25 Nov 2026 23:46:33 GMT  
		Size: 37.0 KB (37027 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.4.10`

```console
$ docker pull elasticsearch@sha256:8d06903adadc1b217e0163228a5d3e45bfe28874fbef4f5c0cbb62cb9cc5aebb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.10` - linux; amd64

```console
$ docker pull elasticsearch@sha256:b6850d0b23d25a0151c0ade60e8a160f9f9e8d7298cd92f0c4771b06eeb93db7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **864.4 MB (864417737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32185faa64aaa0dc89678a57d62a54d19350156e7b4bca97474ac59cb31d9ffd`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:11:03 GMT
ENV container oci
# Fri, 20 Nov 2026 18:11:03 GMT
COPY dir:5ceae98eafdeee79793af167e1b53d2c048d524a5506bb0c01569c4bbeaef4f8 in /      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:11:04 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /root/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:10:41Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:10:41Z" "architecture"="x86_64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:10:41Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Wed, 25 Nov 2026 23:44:53 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 25 Nov 2026 23:44:53 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 25 Nov 2026 23:46:20 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 25 Nov 2026 23:46:20 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 25 Nov 2026 23:46:20 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 25 Nov 2026 23:46:31 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 25 Nov 2026 23:46:31 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 25 Nov 2026 23:46:31 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Nov 2026 23:46:31 GMT
ENV SHELL=/bin/bash
# Wed, 25 Nov 2026 23:46:31 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 25 Nov 2026 23:46:31 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 25 Nov 2026 23:46:31 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 25 Nov 2026 23:46:31 GMT
LABEL org.label-schema.build-date=2026-11-19T15:36:13.710096684Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=598c938bcfcbc648b9446ade1367c6aadb7fd369 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.10 org.opencontainers.image.created=2026-11-19T15:36:13.710096684Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=598c938bcfcbc648b9446ade1367c6aadb7fd369 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.10
# Wed, 25 Nov 2026 23:46:31 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.10 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 25 Nov 2026 23:46:31 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 25 Nov 2026 23:46:31 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 25 Nov 2026 23:46:31 GMT
CMD ["eswrapper"]
# Wed, 25 Nov 2026 23:46:31 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:42dd82cfea990337e85629f4800f64d42e5fca052db254cd3386d99051476958`  
		Last Modified: Fri, 20 Nov 2026 19:55:30 GMT  
		Size: 40.6 MB (40646846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51407eadf17117ac0fe43989f13a621047e135ce70135edc849780d38a0f75c4`  
		Last Modified: Wed, 25 Nov 2026 23:47:28 GMT  
		Size: 4.4 MB (4387749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71427e2c0f5caf7c0eae3a211c8eb8d3a07fb284676bd8f216553189ccd2954`  
		Last Modified: Wed, 25 Nov 2026 23:47:28 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60c18e93aa184f74475e4832b34a295b9de92dd582035b583954e5818d6bc5ff`  
		Last Modified: Wed, 25 Nov 2026 23:47:28 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc96adafd156ccafb2b9d781ed029bc68a3efaa2f99dbd6533dbd3f46f826c25`  
		Last Modified: Wed, 25 Nov 2026 23:47:44 GMT  
		Size: 819.3 MB (819293207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:591641242ec18f99037cc3b1f310b8921daf2e51c51fd69333a1ca7694e29f6a`  
		Last Modified: Wed, 25 Nov 2026 23:47:29 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95b1c485da1e87c72f3f9b8bfa23fb968c98c468dfcc3b9daf4dd38f15b09e73`  
		Last Modified: Wed, 25 Nov 2026 23:47:29 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3013072a7bed82d809a730f58f9a686775a23a507005061343dbb8b111004dc`  
		Last Modified: Wed, 25 Nov 2026 23:47:29 GMT  
		Size: 75.2 KB (75162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:391ed75dc6c594b58684633349c0ddefbd1b512c8eb1fa80d0a619ba723f0510`  
		Last Modified: Wed, 25 Nov 2026 23:47:30 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.10` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:7e9bf597ac2d72809dbf8321e50d75dd793667596cb7143cf837e81f05096a6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56143217c0ac291b9e72f091a36e231b58129eaf7a678f398e30db0c55a605d`

```dockerfile
```

-	Layers:
	-	`sha256:1f03156135d13a0e16a24e6c9c83949997003a727d53a73545ae6411e225802b`  
		Last Modified: Wed, 25 Nov 2026 23:47:28 GMT  
		Size: 2.4 MB (2368393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c874f2b88d612da31cbffd85684664942e52791669b76938d2e5d9b5c282cd0c`  
		Last Modified: Wed, 25 Nov 2026 23:47:28 GMT  
		Size: 34.2 KB (34177 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.10` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:19bc758cfe0de222494be774b144236ec3ea5c30360cbbea1182cfd459ce762d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **709.0 MB (709027934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6031ca2257a3ea523fcf45cbcaf84f19d454d8cce96302d1614bdd86a1ab2ce`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:12:47 GMT
ENV container oci
# Fri, 20 Nov 2026 18:12:49 GMT
COPY dir:2777349c454497d0bc88142806b0acc7931a2a02082de3b6e563fd8f4b29edfa in /      
# Fri, 20 Nov 2026 18:12:49 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:12:49 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:12:49 GMT
COPY dir:d1ad60195b09061439df8466db67c1762e03297f9d39d2253d60653440d2091b in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:12:50 GMT
COPY dir:d1ad60195b09061439df8466db67c1762e03297f9d39d2253d60653440d2091b in /root/buildinfo/      
# Fri, 20 Nov 2026 18:12:50 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:12:15Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:12:15Z" "architecture"="aarch64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:12:15Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Wed, 25 Nov 2026 23:44:55 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 25 Nov 2026 23:44:56 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 25 Nov 2026 23:45:27 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 25 Nov 2026 23:45:27 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 25 Nov 2026 23:45:27 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 25 Nov 2026 23:45:34 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 25 Nov 2026 23:45:34 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 25 Nov 2026 23:45:34 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Nov 2026 23:45:34 GMT
ENV SHELL=/bin/bash
# Wed, 25 Nov 2026 23:45:34 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 25 Nov 2026 23:45:34 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 25 Nov 2026 23:45:34 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 25 Nov 2026 23:45:34 GMT
LABEL org.label-schema.build-date=2026-11-19T15:36:13.710096684Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=598c938bcfcbc648b9446ade1367c6aadb7fd369 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.10 org.opencontainers.image.created=2026-11-19T15:36:13.710096684Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=598c938bcfcbc648b9446ade1367c6aadb7fd369 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.10
# Wed, 25 Nov 2026 23:45:34 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.10 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 25 Nov 2026 23:45:35 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 25 Nov 2026 23:45:35 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 25 Nov 2026 23:45:35 GMT
CMD ["eswrapper"]
# Wed, 25 Nov 2026 23:45:35 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:aba77be659b3ca4c2aca19e9a0e50914427b3b809b11dc864d16e2377d40e17a`  
		Last Modified: Fri, 20 Nov 2026 19:55:56 GMT  
		Size: 38.7 MB (38704070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d641b164f24dd02b48645baffe2cdcc7281fb3c6d9e9951765f5e5b4bd1eee5a`  
		Last Modified: Wed, 25 Nov 2026 23:46:20 GMT  
		Size: 4.4 MB (4386544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12feeb8cb85659e90dd3eb9f62aa39ff3ad2bb42e65a4240d3a4d13785bd00f`  
		Last Modified: Wed, 25 Nov 2026 23:46:20 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d4b9fa221fc02b3d9b54ae715f029ba097a5b3c0de75f82bd3a1be3d24a4946`  
		Last Modified: Wed, 25 Nov 2026 23:46:20 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87859aea61d113ac042eb0fd1f9bc823ba274c6575e541a6abd41d65beeb8f1a`  
		Last Modified: Wed, 25 Nov 2026 23:46:33 GMT  
		Size: 665.8 MB (665848878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b67ac63c631eff87003a04320b9206bde31f9a7e2c2db9294f3ae728f1122766`  
		Last Modified: Wed, 25 Nov 2026 23:46:21 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03672ade913bb40ce69a870b3fe7d943e723187fc19620b06e7160a49ed92294`  
		Last Modified: Wed, 25 Nov 2026 23:46:21 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fea60263bda438fdad56155093875737fc42b4d8db4f00ed68d812680c4db909`  
		Last Modified: Wed, 25 Nov 2026 23:46:21 GMT  
		Size: 74.1 KB (74101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6219041e087e18b5705f9785964a4c83530ffcff0b43667938e4c8cebb31a0e`  
		Last Modified: Wed, 25 Nov 2026 23:46:22 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.10` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:553d080f77407d8a168c0695b101b44a3fa3095fc526e631ae963cc8fcef8d6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2401532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5f694303e58e9b35f8d471a439df215c1dbb17f844ad527f4b0918a704638f5`

```dockerfile
```

-	Layers:
	-	`sha256:421dbb15dcb8db34aec75bef057595bc165066092c168b66d9f1e9faca059cf8`  
		Last Modified: Wed, 25 Nov 2026 23:46:20 GMT  
		Size: 2.4 MB (2367173 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3c545862ac196bec0dfa81453b0fbea0fcb9a52ad9c682961020d1215475a7d`  
		Last Modified: Wed, 25 Nov 2026 23:46:20 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.5.7`

```console
$ docker pull elasticsearch@sha256:e6d7ea460831636c630a48611b661af5a4fc8e6e1afedd683a81d4ad10486008
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.5.7` - linux; amd64

```console
$ docker pull elasticsearch@sha256:f602124b62242d6d1347020debc9304a440b01da3029693382b7388a7130e90f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **758.3 MB (758305045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59ada062dd01ade06e565ac66d68f8f6124045b2d0436263a53142b11eb823a0`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:11:03 GMT
ENV container oci
# Fri, 20 Nov 2026 18:11:03 GMT
COPY dir:5ceae98eafdeee79793af167e1b53d2c048d524a5506bb0c01569c4bbeaef4f8 in /      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:11:04 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /root/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:10:41Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:10:41Z" "architecture"="x86_64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:10:41Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Wed, 25 Nov 2026 23:44:57 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 25 Nov 2026 23:44:58 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 25 Nov 2026 23:46:23 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 25 Nov 2026 23:46:23 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 25 Nov 2026 23:46:23 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 25 Nov 2026 23:46:33 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 25 Nov 2026 23:46:33 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 25 Nov 2026 23:46:33 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Nov 2026 23:46:33 GMT
ENV SHELL=/bin/bash
# Wed, 25 Nov 2026 23:46:33 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 25 Nov 2026 23:46:33 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 25 Nov 2026 23:46:33 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 25 Nov 2026 23:46:33 GMT
LABEL org.label-schema.build-date=2026-11-19T00:34:54.990835033Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=d16690c781d994379d7d7be885c266543c2f6991 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.7 org.opencontainers.image.created=2026-11-19T00:34:54.990835033Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=d16690c781d994379d7d7be885c266543c2f6991 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.7
# Wed, 25 Nov 2026 23:46:33 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.7 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 25 Nov 2026 23:46:33 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 25 Nov 2026 23:46:33 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 25 Nov 2026 23:46:33 GMT
CMD ["eswrapper"]
# Wed, 25 Nov 2026 23:46:33 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:42dd82cfea990337e85629f4800f64d42e5fca052db254cd3386d99051476958`  
		Last Modified: Fri, 20 Nov 2026 19:55:30 GMT  
		Size: 40.6 MB (40646846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63026eb7720050d2feca1511583034370ed25a9aa8b625702dabb40efdf604ca`  
		Last Modified: Wed, 25 Nov 2026 23:47:25 GMT  
		Size: 4.4 MB (4387707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983b180f3f7d9e214cf97957838dc0857616f1f070a86d416a183b0b2f031c5d`  
		Last Modified: Wed, 25 Nov 2026 23:47:24 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12c44d6b5dd0f1db64c5d0f416b4a67a7ebc8f8b7bad90a62c2db6f925f5eb57`  
		Last Modified: Wed, 25 Nov 2026 23:47:24 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97b5f1cfde448ec404649b80c35fdde849b3febf64936cac3f23e73d2fceb1a0`  
		Last Modified: Wed, 25 Nov 2026 23:47:36 GMT  
		Size: 713.2 MB (713180550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de58accf0a054c3490bdfcfd73784dca7678c256572dea689482a2e34e5b922e`  
		Last Modified: Wed, 25 Nov 2026 23:47:26 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:849a5c694e6516109fed8c6175e225415c2e7d4af9014b37b99254dd98faf85d`  
		Last Modified: Wed, 25 Nov 2026 23:47:26 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d3dc85e71cd1e03b5cb77ba00086c5843768676c3ee9a7266620574825e05b`  
		Last Modified: Wed, 25 Nov 2026 23:47:26 GMT  
		Size: 75.2 KB (75168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa7ca675494a2cf8704c6893cadb269666d17d24558459e17d2a75cafa5e16b4`  
		Last Modified: Wed, 25 Nov 2026 23:47:27 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.7` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:4e5350f9f8eec7b36b871b243bc40f4a4e0d44ab336bda7d61ec093d13256c68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2455015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa4692c60afeb766a5698266bac3e613089f92e605f78e86f7561c143550df30`

```dockerfile
```

-	Layers:
	-	`sha256:eed20847374abd2aae12aaaee7d9f62036e356d7ca75c6b49cb5b51925b2c1c5`  
		Last Modified: Wed, 25 Nov 2026 23:47:25 GMT  
		Size: 2.4 MB (2420107 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42d913d54c5cc02ec1c87e27420237103fd4e1e6b52eb14db42408005220ced0`  
		Last Modified: Wed, 25 Nov 2026 23:47:24 GMT  
		Size: 34.9 KB (34908 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.5.7` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:a41105df093b996b3051c2e9391ea29209c4c58b150b20250926badb6b98337d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.8 MB (602844829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907cc5c33ab5c3fcecbf6a0e6d7dbb79dca862059e1b20fe532f463f371dc83c`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:12:47 GMT
ENV container oci
# Fri, 20 Nov 2026 18:12:49 GMT
COPY dir:2777349c454497d0bc88142806b0acc7931a2a02082de3b6e563fd8f4b29edfa in /      
# Fri, 20 Nov 2026 18:12:49 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:12:49 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:12:49 GMT
COPY dir:d1ad60195b09061439df8466db67c1762e03297f9d39d2253d60653440d2091b in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:12:50 GMT
COPY dir:d1ad60195b09061439df8466db67c1762e03297f9d39d2253d60653440d2091b in /root/buildinfo/      
# Fri, 20 Nov 2026 18:12:50 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:12:15Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:12:15Z" "architecture"="aarch64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:12:15Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Wed, 25 Nov 2026 23:45:02 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils tar zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 25 Nov 2026 23:45:02 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 25 Nov 2026 23:45:32 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 25 Nov 2026 23:45:32 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 25 Nov 2026 23:45:32 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 25 Nov 2026 23:45:39 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 25 Nov 2026 23:45:39 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 25 Nov 2026 23:45:39 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Nov 2026 23:45:39 GMT
ENV SHELL=/bin/bash
# Wed, 25 Nov 2026 23:45:39 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 25 Nov 2026 23:45:39 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 25 Nov 2026 23:45:39 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 25 Nov 2026 23:45:39 GMT
LABEL org.label-schema.build-date=2026-11-19T00:34:54.990835033Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=d16690c781d994379d7d7be885c266543c2f6991 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.7 org.opencontainers.image.created=2026-11-19T00:34:54.990835033Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=d16690c781d994379d7d7be885c266543c2f6991 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.7
# Wed, 25 Nov 2026 23:45:39 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.7 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 25 Nov 2026 23:45:39 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 25 Nov 2026 23:45:39 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 25 Nov 2026 23:45:39 GMT
CMD ["eswrapper"]
# Wed, 25 Nov 2026 23:45:39 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:aba77be659b3ca4c2aca19e9a0e50914427b3b809b11dc864d16e2377d40e17a`  
		Last Modified: Fri, 20 Nov 2026 19:55:56 GMT  
		Size: 38.7 MB (38704070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ac57e499a17c213104dccc96f01b033b701ad6d1bdb7e4b2f2c9c287743eaad`  
		Last Modified: Wed, 25 Nov 2026 23:46:21 GMT  
		Size: 4.4 MB (4386549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c723e9230525dddf3eafa0d3ed99d536374308b95d19b6a676bd3efea0d7bb57`  
		Last Modified: Wed, 25 Nov 2026 23:46:21 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba11649f67942067ccb8611c7373fbbb07f493759b71a611df0ae70bd41c1a0`  
		Last Modified: Wed, 25 Nov 2026 23:46:21 GMT  
		Size: 9.1 KB (9103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5e44dcc096ee6d5e9fba9b00be0f044f0146c18e66ec3d68365a1698e25aede`  
		Last Modified: Wed, 25 Nov 2026 23:46:30 GMT  
		Size: 559.7 MB (559665753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d4d56a715c0e70a231ae755a8597a16ff0272559c4f0587a590058e6166d18`  
		Last Modified: Wed, 25 Nov 2026 23:46:22 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1279830396349b0bddb0d058e30d9e4390787f593feea581a0451ad909ed54c`  
		Last Modified: Wed, 25 Nov 2026 23:46:22 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2ec00aba7088d25e5bb67c6d28cb1aaf1025c738fc2e1511e817275cbb732d2`  
		Last Modified: Wed, 25 Nov 2026 23:46:22 GMT  
		Size: 74.1 KB (74108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31c20d24d24969b975b15fe3b51b9e0c279de908fb5273cbde899b2ccffde9a1`  
		Last Modified: Wed, 25 Nov 2026 23:46:23 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.7` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:4aa298084e3eb4e358a98a838910eb161d00593b200000dd37a61873b4b1f39c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2453977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4239cd05165517205f637621c4882f7ee23c5105edc63e77039be2222f2acdab`

```dockerfile
```

-	Layers:
	-	`sha256:cecc08b8159cdda298dd773f59d41c8cc5eb53622d41ef321a2d24cf154539ac`  
		Last Modified: Wed, 25 Nov 2026 23:46:21 GMT  
		Size: 2.4 MB (2418887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e301b228a19b429c9ed84319f069a788b0b91469dd93ad0b780f1a7f6461d2c`  
		Last Modified: Wed, 25 Nov 2026 23:46:20 GMT  
		Size: 35.1 KB (35090 bytes)  
		MIME: application/vnd.in-toto+json
