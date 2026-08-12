<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:8.19.20`](#elasticsearch81920)
-	[`elasticsearch:9.4.5`](#elasticsearch945)
-	[`elasticsearch:9.5.1`](#elasticsearch951)

## `elasticsearch:8.19.20`

```console
$ docker pull elasticsearch@sha256:2a281a42a9d116ce84e4b798856b49a96bd98048aa125202312d18d5346bdaf3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:8.19.20` - linux; amd64

```console
$ docker pull elasticsearch@sha256:50d734c42aa1ea73b294313425b80893a01d10172c4752e86a773fc31d3b6204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **725.9 MB (725890498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0806f9c9b4c699470da42219f5e51dd8b0286553b95a78fcae5d9b4bad3f76ce`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Wed, 12 Aug 2026 17:31:29 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Wed, 12 Aug 2026 17:31:30 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 12 Aug 2026 17:31:30 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 12 Aug 2026 17:31:30 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 12 Aug 2026 17:32:26 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Wed, 12 Aug 2026 17:32:26 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 12 Aug 2026 17:32:26 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:32:26 GMT
ENV SHELL=/bin/bash
# Wed, 12 Aug 2026 17:32:26 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 12 Aug 2026 17:32:26 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 12 Aug 2026 17:32:26 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 12 Aug 2026 17:32:26 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 12 Aug 2026 17:32:26 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 12 Aug 2026 17:32:26 GMT
LABEL org.label-schema.build-date=2026-08-05T22:14:37.858379356Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=91f5381ece296ddc32b554f997269478b9224af8 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.20 org.opencontainers.image.created=2026-08-05T22:14:37.858379356Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=91f5381ece296ddc32b554f997269478b9224af8 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.20
# Wed, 12 Aug 2026 17:32:26 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:32:26 GMT
CMD ["eswrapper"]
# Wed, 12 Aug 2026 17:32:26 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:185de5ae39631c46839aa47f2a3a883acca66f12726679cb088e3a856f6e6418`  
		Last Modified: Wed, 12 Aug 2026 17:33:19 GMT  
		Size: 7.5 MB (7533320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d53b131ea9735496dc8ae0b700b5622251905a0df4bcd82f196d46315dd26d6b`  
		Last Modified: Wed, 12 Aug 2026 17:33:19 GMT  
		Size: 3.5 KB (3531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a1dea04ce4b93b988e630c857711fa92a498d730a33939ac0291b030f0c4d71`  
		Last Modified: Wed, 12 Aug 2026 17:33:31 GMT  
		Size: 688.3 MB (688329561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1798392ce3636b254de7af8be8a29b2f9cb95357cff73b649e6624dde08a03a6`  
		Last Modified: Wed, 12 Aug 2026 17:33:19 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b60d89b94c127b5a5f161a29c3f9dc61efb09ac6215fa7c551455481e156fe6c`  
		Last Modified: Wed, 12 Aug 2026 17:33:20 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3472926d03f9377259323d27b516b48bdc6ace1d094b7c03d33de1993be9f1e7`  
		Last Modified: Wed, 12 Aug 2026 17:33:20 GMT  
		Size: 164.2 KB (164187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba50440e915b483ad5619e62b20e99fc65bd62f148d8382aadde006389be0403`  
		Last Modified: Wed, 12 Aug 2026 17:33:21 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93e3fcce96a1f1e0df46a1a365990bc6704389e24b7b5ea250e2d857fcb01c42`  
		Last Modified: Wed, 12 Aug 2026 17:33:21 GMT  
		Size: 97.1 KB (97101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.20` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:0214687569c83beb59eb238da85b9332d930788bc92bb8c380cf7819f0f118fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3228476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfc4ace5a9bc4fe0fbe891081bf474dfbfc54583d810b4f0eb9b040166446670`

```dockerfile
```

-	Layers:
	-	`sha256:523fc38caf155e5a5e9a398bb8f23fc7c9f326a901c746b82572954048a55d3d`  
		Last Modified: Wed, 12 Aug 2026 17:33:19 GMT  
		Size: 3.2 MB (3191662 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c895027c8607925c95db431441054774b6869a5727ee15c3709e36db12740c40`  
		Last Modified: Wed, 12 Aug 2026 17:33:19 GMT  
		Size: 36.8 KB (36814 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:8.19.20` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:cb2197f0a00cc304bb04b7622293998eba7d2f18c0c1fe683284ad9655227e35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **571.4 MB (571418416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a21923ce58b3fb2daf60d71efda1f0aa62aef5f0f08c1f006b98ce16553d94b5`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Wed, 12 Aug 2026 17:36:20 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Wed, 12 Aug 2026 17:36:20 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 12 Aug 2026 17:36:20 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 12 Aug 2026 17:36:20 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 12 Aug 2026 17:36:57 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Wed, 12 Aug 2026 17:36:57 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 12 Aug 2026 17:36:57 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:36:57 GMT
ENV SHELL=/bin/bash
# Wed, 12 Aug 2026 17:36:57 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 12 Aug 2026 17:36:57 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 12 Aug 2026 17:36:57 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 12 Aug 2026 17:36:57 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 12 Aug 2026 17:36:57 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 12 Aug 2026 17:36:57 GMT
LABEL org.label-schema.build-date=2026-08-05T22:14:37.858379356Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=91f5381ece296ddc32b554f997269478b9224af8 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.20 org.opencontainers.image.created=2026-08-05T22:14:37.858379356Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=91f5381ece296ddc32b554f997269478b9224af8 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.20
# Wed, 12 Aug 2026 17:36:57 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:36:57 GMT
CMD ["eswrapper"]
# Wed, 12 Aug 2026 17:36:57 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab27b78a58285c3c3760cdd2b3ad05a483875eac0e4e82eec8f601dcdc85b79c`  
		Last Modified: Wed, 12 Aug 2026 17:37:37 GMT  
		Size: 5.1 MB (5126346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d25a12e60a8d299191a5162ec50e0cf36bda1cfab0a9d40144113e448de3135b`  
		Last Modified: Wed, 12 Aug 2026 17:37:37 GMT  
		Size: 3.5 KB (3527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e2cd5c6745e8d2b569e16e48795d6bce715c7cd1863fcfb27b7ba08afcd4d7d`  
		Last Modified: Wed, 12 Aug 2026 17:37:47 GMT  
		Size: 537.1 MB (537132689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfbd7b3be6ad997d93a14f3a4c2c5c130d45ae7483b2cfa11a08f8869963bda`  
		Last Modified: Wed, 12 Aug 2026 17:37:37 GMT  
		Size: 9.1 KB (9103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e1d46497d8158fe2a6770eb4c46bf8237a07a113c3db9f6359d8b1f1f70748`  
		Last Modified: Wed, 12 Aug 2026 17:37:38 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a97aa44ca23c4d642f53a9157a62485fcb57d98d4382519f361c869a21f605`  
		Last Modified: Wed, 12 Aug 2026 17:37:38 GMT  
		Size: 160.7 KB (160684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3dbe5ae9747c3091feb9b27a48010940cdc16dc798aded3191cf32d2b0473cc`  
		Last Modified: Wed, 12 Aug 2026 17:37:39 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5b41d350a25d43f6f7f073525b9be268310e0c7a2ebc5a3f1aca6fc40b1170`  
		Last Modified: Wed, 12 Aug 2026 17:37:39 GMT  
		Size: 97.1 KB (97098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.20` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:51926616501bebe01ec0a1a5a640512835095e4dd936c482f7d4cd5205ecaee5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3229093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a49ae8bd97178b6388b214d85b12c13cb27419113877f88db3a0ff267c3852ed`

```dockerfile
```

-	Layers:
	-	`sha256:d2a5485f39fadeb24410d4bcc2c702a0f3cb00e136e1777df3aa8708afe55290`  
		Last Modified: Wed, 12 Aug 2026 17:37:37 GMT  
		Size: 3.2 MB (3192075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7dad11fd310278ae6acafc75f704cbec8742c93076424d83562569647a77faf5`  
		Last Modified: Wed, 12 Aug 2026 17:37:37 GMT  
		Size: 37.0 KB (37018 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.4.5`

```console
$ docker pull elasticsearch@sha256:b51c009005d683093e9c9ff03d00225b30fb9228f261d737d4c79a41e8496413
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:1c8d318b911cd83f3e6a7722cf054b648f171f65fb00775a202309de3231ae1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **868.8 MB (868799876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5834d3036ac9e9fc80bb965727eacd70a32a8ea6b91d9a3fdff095e64aa4f344`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 10 Aug 2026 16:56:02 GMT
ENV container oci
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:df00d2ddcafd5d3230e4389e976d7b8e34c276ca8e8d50edc2315b0141add52b in /      
# Mon, 10 Aug 2026 16:56:03 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 16:56:03 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:1a5179848530af6cfaa2736badbd86d3fafb52f86a723fc761a88e2b21a91f65 in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:1a5179848530af6cfaa2736badbd86d3fafb52f86a723fc761a88e2b21a91f65 in /root/buildinfo/      
# Mon, 10 Aug 2026 16:56:03 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T16:55:47Z" "org.opencontainers.image.revision"="905bde9da31110a4bb776761a921a6b4e6b12a93" "build-date"="2026-08-10T16:55:47Z" "architecture"="x86_64" "vcs-ref"="905bde9da31110a4bb776761a921a6b4e6b12a93" "vcs-type"="git" "release"="1786380870"org.opencontainers.image.created=2026-08-10T16:55:47Z,org.opencontainers.image.revision=905bde9da31110a4bb776761a921a6b4e6b12a93
# Wed, 12 Aug 2026 17:31:23 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 12 Aug 2026 17:31:23 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 12 Aug 2026 17:32:20 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 12 Aug 2026 17:32:20 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 12 Aug 2026 17:32:20 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 12 Aug 2026 17:32:31 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 12 Aug 2026 17:32:31 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 12 Aug 2026 17:32:31 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:32:31 GMT
ENV SHELL=/bin/bash
# Wed, 12 Aug 2026 17:32:31 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 12 Aug 2026 17:32:31 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 12 Aug 2026 17:32:31 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 12 Aug 2026 17:32:31 GMT
LABEL org.label-schema.build-date=2026-08-05T22:14:02.491442712Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=adc1f04ffdd393d1977990338d5512c5eaf1ce94 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.5 org.opencontainers.image.created=2026-08-05T22:14:02.491442712Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=adc1f04ffdd393d1977990338d5512c5eaf1ce94 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.5
# Wed, 12 Aug 2026 17:32:31 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.5 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 12 Aug 2026 17:32:31 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 12 Aug 2026 17:32:31 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:32:31 GMT
CMD ["eswrapper"]
# Wed, 12 Aug 2026 17:32:31 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:2b8131e88da7bc7239bd3e4fd72821791bec3c3a93924daef20a3a2e88e4a3d3`  
		Last Modified: Mon, 10 Aug 2026 18:10:48 GMT  
		Size: 40.7 MB (40708738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e91005076730f69680b3e36ac31a54bbc303ede48e60cce878ec19ad5051710`  
		Last Modified: Wed, 12 Aug 2026 17:33:30 GMT  
		Size: 4.1 MB (4108368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfaff2abd94e3e758379c8f335b3848ebc07231f694c6e85973b0ee78241ed5b`  
		Last Modified: Wed, 12 Aug 2026 17:33:29 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0f5e01f15191824b2e92554b8c5915ab71cd8c714361634e5f6e64deaf09f84`  
		Last Modified: Wed, 12 Aug 2026 17:33:30 GMT  
		Size: 9.5 KB (9533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c6ee8d904ac5fbcea8ed03eee11356cad04cf68903225e05c0b957bc3675211`  
		Last Modified: Wed, 12 Aug 2026 17:33:44 GMT  
		Size: 823.9 MB (823892802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562ddbd24b77a7da1b238bd2f9a959f0ffc38c053029e13394fa42fd78c9ed86`  
		Last Modified: Wed, 12 Aug 2026 17:33:31 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c2dcc19d84bf3b4a078013cd5b3e853281b6cfde73f98bca88d00e5c1b0b1d9`  
		Last Modified: Wed, 12 Aug 2026 17:33:31 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d0fa0a2a9e0e1dfda3b45ae393cd7603c6b080609b3457d8a88e7c3914b97c`  
		Last Modified: Wed, 12 Aug 2026 17:33:31 GMT  
		Size: 75.2 KB (75188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8183201bf0e3212725ec10b13974ab18a48a9ade7b327f702c3b9600251671d2`  
		Last Modified: Wed, 12 Aug 2026 17:33:32 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:926e97db5e8979ba3c24e2d6aeb72e39a17e56d2592320b9a45bf7c3de7d3c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2423775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:318db9c492169913488280c6f4207a23c62385aacb7789d51d163f2a56b8d8a3`

```dockerfile
```

-	Layers:
	-	`sha256:d602fa4aba79ba13a9235827695ce56d303de765a3c4b7d4094d972e2bf60cc8`  
		Last Modified: Wed, 12 Aug 2026 17:33:30 GMT  
		Size: 2.4 MB (2389999 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc41d37a529b14fd7919f534cc53366be51ac68d96cbcbc5a4c414a0754da8a0`  
		Last Modified: Wed, 12 Aug 2026 17:33:30 GMT  
		Size: 33.8 KB (33776 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.5` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:348d69d67d83223b5eb61c64429afa3189d72682122fd03cded6adef262fd655
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.3 MB (713347909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cbfc34fceff29f8d3bf3ad542f1d78f63f1be6b35775160159e293e0852e6a0`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 10 Aug 2026 16:58:36 GMT
ENV container oci
# Mon, 10 Aug 2026 16:58:37 GMT
COPY dir:a29571d1d7f0219756ea4cbeea7cbd2d7c70f920d886563530efb6b5f51db754 in /      
# Mon, 10 Aug 2026 16:58:37 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 16:58:37 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 16:58:37 GMT
COPY dir:affb4b0d326dc89d183bd019c6447bd9c3122f330427c74027adfef3eaf39c3c in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 16:58:37 GMT
COPY dir:affb4b0d326dc89d183bd019c6447bd9c3122f330427c74027adfef3eaf39c3c in /root/buildinfo/      
# Mon, 10 Aug 2026 16:58:37 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T16:58:14Z" "org.opencontainers.image.revision"="905bde9da31110a4bb776761a921a6b4e6b12a93" "build-date"="2026-08-10T16:58:14Z" "architecture"="aarch64" "vcs-ref"="905bde9da31110a4bb776761a921a6b4e6b12a93" "vcs-type"="git" "release"="1786380870"org.opencontainers.image.created=2026-08-10T16:58:14Z,org.opencontainers.image.revision=905bde9da31110a4bb776761a921a6b4e6b12a93
# Wed, 12 Aug 2026 17:39:51 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 12 Aug 2026 17:39:51 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 12 Aug 2026 17:40:29 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 12 Aug 2026 17:40:29 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 12 Aug 2026 17:40:29 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 12 Aug 2026 17:40:36 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 12 Aug 2026 17:40:36 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 12 Aug 2026 17:40:36 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:40:36 GMT
ENV SHELL=/bin/bash
# Wed, 12 Aug 2026 17:40:36 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 12 Aug 2026 17:40:37 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 12 Aug 2026 17:40:37 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 12 Aug 2026 17:40:37 GMT
LABEL org.label-schema.build-date=2026-08-05T22:14:02.491442712Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=adc1f04ffdd393d1977990338d5512c5eaf1ce94 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.5 org.opencontainers.image.created=2026-08-05T22:14:02.491442712Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=adc1f04ffdd393d1977990338d5512c5eaf1ce94 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.5
# Wed, 12 Aug 2026 17:40:37 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.5 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 12 Aug 2026 17:40:37 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 12 Aug 2026 17:40:37 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:40:37 GMT
CMD ["eswrapper"]
# Wed, 12 Aug 2026 17:40:37 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:e3f9ee4410f580b6aa25583df525121fb62e969983ca4535073d9018d260fec1`  
		Last Modified: Mon, 10 Aug 2026 18:10:53 GMT  
		Size: 38.8 MB (38791667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d04898391116c4ebcb0a255c64d96449eba006560aa942d1236cb940c84bd01c`  
		Last Modified: Wed, 12 Aug 2026 17:41:22 GMT  
		Size: 4.1 MB (4108013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68e76e75837852c9d5e8d8f47808009dc8938abb38a247f79c77f713d489769`  
		Last Modified: Wed, 12 Aug 2026 17:41:22 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fc31a44dd05321055109d39b3d3b35643819a5206cc8cae067b58e48c382176`  
		Last Modified: Wed, 12 Aug 2026 17:41:22 GMT  
		Size: 9.1 KB (9103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb8de64892480ab20a84f2a7be8d13da481c360cba685de9d2c34dc3021290f0`  
		Last Modified: Wed, 12 Aug 2026 17:41:34 GMT  
		Size: 670.4 MB (670359773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4d8d5f703224291d637ac036652dfb9fcfc31ca2e7d2a17517127e035493b5d`  
		Last Modified: Wed, 12 Aug 2026 17:41:23 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffb935387abcadd452b3b1f30faa23d54a6b1fe142fe0095cbce06815b43ba56`  
		Last Modified: Wed, 12 Aug 2026 17:41:23 GMT  
		Size: 1.7 KB (1722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8988c8db548984ecc68bd488853dedda6ac19ba7179eb309be0b1cd68a37530`  
		Last Modified: Wed, 12 Aug 2026 17:41:24 GMT  
		Size: 74.1 KB (74107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e194d12f00921dfe93d06a534efb980a51bd8cdcbd5686b3d175ad7682b563`  
		Last Modified: Wed, 12 Aug 2026 17:41:24 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.5` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:2efcd9fdf829f458c8b6898eb782b100419a4358c9ea90d00d0e01ecdd095e8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5d7e1f78edee7f0eb644e68a2612a35d75cdcf03c2b1fdc672b980a0762fe7e`

```dockerfile
```

-	Layers:
	-	`sha256:3612020485f68c41b7c64d0aa5cd60e1634293772df7d39964521ae56c89692f`  
		Last Modified: Wed, 12 Aug 2026 17:41:22 GMT  
		Size: 2.4 MB (2388779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34fe12168a908fd6344943e6d5ea32ee4d5717fe9260a9dbe54fb829894b18b5`  
		Last Modified: Wed, 12 Aug 2026 17:41:22 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.5.1`

```console
$ docker pull elasticsearch@sha256:0a773a8a09e2f73387ee22dbeb0218dcad6395648565ca40bc072674b53e444b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.5.1` - linux; amd64

```console
$ docker pull elasticsearch@sha256:f21364fb0bddc777dd7dddd2787cfb28e6a17c40df41d4fbe44458ecfa71e2c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **894.4 MB (894440426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc4283a39200350b65331042fd144e0e76115f5092ef21c7ba57a86b266063d`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 10 Aug 2026 16:56:02 GMT
ENV container oci
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:df00d2ddcafd5d3230e4389e976d7b8e34c276ca8e8d50edc2315b0141add52b in /      
# Mon, 10 Aug 2026 16:56:03 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 16:56:03 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:1a5179848530af6cfaa2736badbd86d3fafb52f86a723fc761a88e2b21a91f65 in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:1a5179848530af6cfaa2736badbd86d3fafb52f86a723fc761a88e2b21a91f65 in /root/buildinfo/      
# Mon, 10 Aug 2026 16:56:03 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T16:55:47Z" "org.opencontainers.image.revision"="905bde9da31110a4bb776761a921a6b4e6b12a93" "build-date"="2026-08-10T16:55:47Z" "architecture"="x86_64" "vcs-ref"="905bde9da31110a4bb776761a921a6b4e6b12a93" "vcs-type"="git" "release"="1786380870"org.opencontainers.image.created=2026-08-10T16:55:47Z,org.opencontainers.image.revision=905bde9da31110a4bb776761a921a6b4e6b12a93
# Wed, 12 Aug 2026 17:31:21 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 12 Aug 2026 17:31:21 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 12 Aug 2026 17:31:57 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 12 Aug 2026 17:31:57 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 12 Aug 2026 17:31:57 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 12 Aug 2026 17:32:08 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 12 Aug 2026 17:32:08 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 12 Aug 2026 17:32:08 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:32:08 GMT
ENV SHELL=/bin/bash
# Wed, 12 Aug 2026 17:32:08 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 12 Aug 2026 17:32:09 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 12 Aug 2026 17:32:09 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 12 Aug 2026 17:32:09 GMT
LABEL org.label-schema.build-date=2026-08-05T23:10:54.760245929Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=0e1cdd500cb446f51b847d131747da3cc500eee1 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.1 org.opencontainers.image.created=2026-08-05T23:10:54.760245929Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=0e1cdd500cb446f51b847d131747da3cc500eee1 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.1
# Wed, 12 Aug 2026 17:32:09 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.1 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 12 Aug 2026 17:32:09 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 12 Aug 2026 17:32:09 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:32:09 GMT
CMD ["eswrapper"]
# Wed, 12 Aug 2026 17:32:09 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:2b8131e88da7bc7239bd3e4fd72821791bec3c3a93924daef20a3a2e88e4a3d3`  
		Last Modified: Mon, 10 Aug 2026 18:10:48 GMT  
		Size: 40.7 MB (40708738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ba9c6982dd560c10538cde28ec0b46ccf04540b1c9d32172103024fbdb4a59f`  
		Last Modified: Wed, 12 Aug 2026 17:33:05 GMT  
		Size: 4.1 MB (4108379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f4ffc7a5873a75342f6f27013ad2fd3bfad504a7d195ce8955da0c6a21b22f3`  
		Last Modified: Wed, 12 Aug 2026 17:33:05 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfd53931cf9223004c1ca4da83e54db71935e8caa522b97a5de5fcbcc36be6f1`  
		Last Modified: Wed, 12 Aug 2026 17:33:05 GMT  
		Size: 9.5 KB (9534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be2e7bbf036bf2b4377ec66b4be6bb546ebdaa3681ad2145e03aab8abf7b441`  
		Last Modified: Wed, 12 Aug 2026 17:33:25 GMT  
		Size: 849.5 MB (849533337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:699726ca917cb3364a9fe560505c68c4690c7a9984ed4b4d20c3e87d40b02b20`  
		Last Modified: Wed, 12 Aug 2026 17:33:06 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df94b948ad84f2a3061f4437cdd4124a698b8f2718ffdca93ddcf933dd8a1e7`  
		Last Modified: Wed, 12 Aug 2026 17:33:06 GMT  
		Size: 1.7 KB (1722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2e9d7c6bc4e09dd00391022e83140d607a80514e541278d4f4b3d0d55ff8e01`  
		Last Modified: Wed, 12 Aug 2026 17:33:07 GMT  
		Size: 75.2 KB (75188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10fe47fea76457261976c3ee2689103aac1921cafd66835a163745a589414c2e`  
		Last Modified: Wed, 12 Aug 2026 17:33:07 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.1` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:2edf0c2958e17e42dc411ce901d5b87a5fa7fe732c0cabcc03d72269fff81ce5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2476853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9bc1a1e5673cea695005e4eac9f1e435b47f733e6e965afd33375ae21c714db`

```dockerfile
```

-	Layers:
	-	`sha256:5474ec283d4b4a7d1b6e26ff1d986a0ab5dbcf94e5807514b5e9ea5008ea612e`  
		Last Modified: Wed, 12 Aug 2026 17:33:05 GMT  
		Size: 2.4 MB (2443077 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f3a6fa99a425c7d8eab2eb3fbf3fcdfd1addc76b46278b5a5acc0bc97f9f771`  
		Last Modified: Wed, 12 Aug 2026 17:33:05 GMT  
		Size: 33.8 KB (33776 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.5.1` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:f427e36ce29e0aa3cd51b6fa265386db9ce333853ad188907737820936ee8f8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **738.9 MB (738938908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75ed9bd4b2e2a426817a5ebf8f060397f12a457f1eee1ef096b03fd8fba439cb`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 10 Aug 2026 16:58:36 GMT
ENV container oci
# Mon, 10 Aug 2026 16:58:37 GMT
COPY dir:a29571d1d7f0219756ea4cbeea7cbd2d7c70f920d886563530efb6b5f51db754 in /      
# Mon, 10 Aug 2026 16:58:37 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 16:58:37 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 16:58:37 GMT
COPY dir:affb4b0d326dc89d183bd019c6447bd9c3122f330427c74027adfef3eaf39c3c in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 16:58:37 GMT
COPY dir:affb4b0d326dc89d183bd019c6447bd9c3122f330427c74027adfef3eaf39c3c in /root/buildinfo/      
# Mon, 10 Aug 2026 16:58:37 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T16:58:14Z" "org.opencontainers.image.revision"="905bde9da31110a4bb776761a921a6b4e6b12a93" "build-date"="2026-08-10T16:58:14Z" "architecture"="aarch64" "vcs-ref"="905bde9da31110a4bb776761a921a6b4e6b12a93" "vcs-type"="git" "release"="1786380870"org.opencontainers.image.created=2026-08-10T16:58:14Z,org.opencontainers.image.revision=905bde9da31110a4bb776761a921a6b4e6b12a93
# Wed, 12 Aug 2026 17:37:26 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 12 Aug 2026 17:37:26 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 12 Aug 2026 17:38:04 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 12 Aug 2026 17:38:04 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 12 Aug 2026 17:38:04 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 12 Aug 2026 17:38:12 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 12 Aug 2026 17:38:12 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 12 Aug 2026 17:38:12 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:38:12 GMT
ENV SHELL=/bin/bash
# Wed, 12 Aug 2026 17:38:12 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 12 Aug 2026 17:38:12 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 12 Aug 2026 17:38:12 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 12 Aug 2026 17:38:12 GMT
LABEL org.label-schema.build-date=2026-08-05T23:10:54.760245929Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=0e1cdd500cb446f51b847d131747da3cc500eee1 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.1 org.opencontainers.image.created=2026-08-05T23:10:54.760245929Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=0e1cdd500cb446f51b847d131747da3cc500eee1 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.1
# Wed, 12 Aug 2026 17:38:12 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.1 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 12 Aug 2026 17:38:12 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 12 Aug 2026 17:38:12 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:38:12 GMT
CMD ["eswrapper"]
# Wed, 12 Aug 2026 17:38:12 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:e3f9ee4410f580b6aa25583df525121fb62e969983ca4535073d9018d260fec1`  
		Last Modified: Mon, 10 Aug 2026 18:10:53 GMT  
		Size: 38.8 MB (38791667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1faa8c9d1e6be3f6a68fc6c4416d53b7f596a44b9304cd22677a2d672a65628d`  
		Last Modified: Wed, 12 Aug 2026 17:38:59 GMT  
		Size: 4.1 MB (4108083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ded3007228dd7e0c0a06c428dc6f8feb8aa6d981806c76f02015b1e1ca1c5d`  
		Last Modified: Wed, 12 Aug 2026 17:38:59 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:745e16aa36ea3fe069ae2f0a7580716b73c859064a5ee5d21c23d7b65795548f`  
		Last Modified: Wed, 12 Aug 2026 17:38:59 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09490bffada7a786568c8ede83ddb98723665a6d4994b94c90bd60d7b6fb664f`  
		Last Modified: Wed, 12 Aug 2026 17:39:11 GMT  
		Size: 696.0 MB (695950704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e00cbc524ebbd4bcd90b2816f91d6329b03720636440a6e4a4cedbee8c856f6`  
		Last Modified: Wed, 12 Aug 2026 17:39:00 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a221b58a08f80f916752b1415fa41642b9332f77dff1959326c189beff509105`  
		Last Modified: Wed, 12 Aug 2026 17:39:00 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7c5cc986fa3e75d86640032d3d53159d275c3f95549aaaccf663763b6d8de82`  
		Last Modified: Wed, 12 Aug 2026 17:39:01 GMT  
		Size: 74.1 KB (74106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5d65ca083cfcda088a10632129f9b5179159322135d913476dc69c8968c6d4d`  
		Last Modified: Wed, 12 Aug 2026 17:39:02 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.1` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:211aebe906ee37a407787b08a62a1448d7382e3b485cb430f00cb1d1031f29ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2475814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25317c765e41764c9e4ae29c22ae43423390dc160ab7115bc31d75951469b9d7`

```dockerfile
```

-	Layers:
	-	`sha256:e5ac098f9e8f123f067ccd4dd53717ea42b698bd78584e344cd1509e6d3b3dec`  
		Last Modified: Wed, 12 Aug 2026 17:38:59 GMT  
		Size: 2.4 MB (2441857 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8478ae60541ab70276a4d2b5db1cfffa712f3c9f86c2736c1ee2ae778e450e70`  
		Last Modified: Wed, 12 Aug 2026 17:38:59 GMT  
		Size: 34.0 KB (33957 bytes)  
		MIME: application/vnd.in-toto+json
