<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:8.19.19`](#elasticsearch81919)
-	[`elasticsearch:9.3.8`](#elasticsearch938)
-	[`elasticsearch:9.4.4`](#elasticsearch944)

## `elasticsearch:8.19.19`

```console
$ docker pull elasticsearch@sha256:2062cb98a4dd1b90ec588cffe88b831e9e3a4054c2632553ebddf20171cf5203
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:8.19.19` - linux; amd64

```console
$ docker pull elasticsearch@sha256:85184197d7d2def97485c3fcb0bdb3de5cb8e043a2c447cbc0e974bc6ab85887
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **722.8 MB (722810538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e985a52f15b1788ea27c161ac40c1d9136ea914c5b127912103b352bdb271af`
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
# Tue, 04 Aug 2026 01:29:05 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Tue, 04 Aug 2026 01:29:05 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 04 Aug 2026 01:29:06 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 04 Aug 2026 01:29:06 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 04 Aug 2026 01:29:49 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Tue, 04 Aug 2026 01:29:49 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 04 Aug 2026 01:29:49 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:29:49 GMT
ENV SHELL=/bin/bash
# Tue, 04 Aug 2026 01:29:49 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:29:49 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 04 Aug 2026 01:29:49 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Tue, 04 Aug 2026 01:29:50 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Tue, 04 Aug 2026 01:29:50 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 04 Aug 2026 01:29:50 GMT
LABEL org.label-schema.build-date=2026-07-15T22:15:58.852563788Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=0b6bd198d583b8566336c0db61afb70b346c6882 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.19 org.opencontainers.image.created=2026-07-15T22:15:58.852563788Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=0b6bd198d583b8566336c0db61afb70b346c6882 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.19
# Tue, 04 Aug 2026 01:29:50 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:29:50 GMT
CMD ["eswrapper"]
# Tue, 04 Aug 2026 01:29:50 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99bb56aef3fa1a9b5a2e4d32bbcff7b23a0c9a84942148ef740399fce78733c6`  
		Last Modified: Tue, 04 Aug 2026 01:30:43 GMT  
		Size: 6.9 MB (6866319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:373eafb86db8d253b4cb7375422d958dc905e312797a023591d9dcb4ca8fe12e`  
		Last Modified: Tue, 04 Aug 2026 01:30:42 GMT  
		Size: 3.5 KB (3528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a5a222bfe8bb4e51f7a31c87e9732e21201c8b78a15662ed416c95d037fa24f`  
		Last Modified: Tue, 04 Aug 2026 01:30:54 GMT  
		Size: 685.9 MB (685916609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9e6f94d067b154f5d2491571f7929fed71285281f05907602406e00ca2a381`  
		Last Modified: Tue, 04 Aug 2026 01:30:42 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547ea27b79fd768abb594800439b708b8c4dc4c17d71aaeaa3956ea9def430af`  
		Last Modified: Tue, 04 Aug 2026 01:30:44 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58718e188efd9d84dba20d2201b430494ecd63137075fc8e54a4691534201364`  
		Last Modified: Tue, 04 Aug 2026 01:30:44 GMT  
		Size: 164.2 KB (164188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f92f5a0ebc5bd8546c20a45d6cdd06803b7c01b1a176ac365c3c734780073b3`  
		Last Modified: Tue, 04 Aug 2026 01:30:44 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63eacec22158ec25e7d1ff956f29d984dc740caa6b2b55aca0376b617f502a42`  
		Last Modified: Tue, 04 Aug 2026 01:30:45 GMT  
		Size: 97.1 KB (97098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.19` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:b75e6d34f840327d5c5f9226598a62580a379f9da77391d07ed5cfad19e4e18a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3228398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:592d9955fa3b0507c08531bf97f58bb612b4449e1afa60e10518b7a6a1967769`

```dockerfile
```

-	Layers:
	-	`sha256:b69b9cea586c83bcde05eb40b4cef28158544c56542dc0defb6e48cf269736ee`  
		Last Modified: Tue, 04 Aug 2026 01:30:43 GMT  
		Size: 3.2 MB (3191583 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3e937874c404c150d83abc908cf186871fdc1d7f2ec1f4ba308c1721336bd29`  
		Last Modified: Tue, 04 Aug 2026 01:30:42 GMT  
		Size: 36.8 KB (36815 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:8.19.19` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:5f107985401ba967f8af434f0f3c5d53e1813628b502ef13678d52918e72ee7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **568.4 MB (568351593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b8da6abaf252fdb9f7f66525e30f612e085f451ef08ff74e084d729d4278b21`
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
# Tue, 04 Aug 2026 01:29:23 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Tue, 04 Aug 2026 01:29:23 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 04 Aug 2026 01:29:23 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 04 Aug 2026 01:29:23 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 04 Aug 2026 01:30:27 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Tue, 04 Aug 2026 01:30:27 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 04 Aug 2026 01:30:27 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:30:27 GMT
ENV SHELL=/bin/bash
# Tue, 04 Aug 2026 01:30:27 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:30:27 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 04 Aug 2026 01:30:27 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Tue, 04 Aug 2026 01:30:27 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Tue, 04 Aug 2026 01:30:27 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 04 Aug 2026 01:30:27 GMT
LABEL org.label-schema.build-date=2026-07-15T22:15:58.852563788Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=0b6bd198d583b8566336c0db61afb70b346c6882 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.19 org.opencontainers.image.created=2026-07-15T22:15:58.852563788Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=0b6bd198d583b8566336c0db61afb70b346c6882 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.19
# Tue, 04 Aug 2026 01:30:27 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:30:27 GMT
CMD ["eswrapper"]
# Tue, 04 Aug 2026 01:30:27 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f28188a264ade3aa4379f02126516ecb0ba77c4de15087971880889c673b307`  
		Last Modified: Tue, 04 Aug 2026 01:31:07 GMT  
		Size: 4.5 MB (4459209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:714edb0b06f93f98f4c3b25120a60eace70768532be577711536ac18f9b79826`  
		Last Modified: Tue, 04 Aug 2026 01:31:07 GMT  
		Size: 3.5 KB (3526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12a9d52b309bd483a7cb1d68193982d074fa9b51abc054f8c1058cdc1b9a0c2f`  
		Last Modified: Tue, 04 Aug 2026 01:31:17 GMT  
		Size: 534.7 MB (534732996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e01e1066c7bf02ddcbc2ed3f6fc8585e48c69e20bec9a5533a3ab5d01323e46`  
		Last Modified: Tue, 04 Aug 2026 01:31:07 GMT  
		Size: 9.1 KB (9104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:608d7b9624a3c8c8eb996554145233222e10bd90641a2811dd9a85178e1d14e0`  
		Last Modified: Tue, 04 Aug 2026 01:31:09 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:852862fe1a09936b0bcbb65f43e5ee8a14f079cfa9b1809260c3c0de9bf372f0`  
		Last Modified: Tue, 04 Aug 2026 01:31:09 GMT  
		Size: 160.7 KB (160687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:707be8bf197b9494892d0616388a4fe2f324b96ef38a43b68955ffe7bc2ae137`  
		Last Modified: Tue, 04 Aug 2026 01:31:09 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcd7861f6b237c3971043c812f8629b5d78ff6a04d8b9cee7b22b260e398b126`  
		Last Modified: Tue, 04 Aug 2026 01:31:10 GMT  
		Size: 97.1 KB (97100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.19` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:33c67ecd9d490940f08371b53c201d4e5c8540f762e79ce1c3a38994e65632cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3229014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e43d8c050b4615adef820143f2019b1a842b4ac9e46b91431922ef547df73eb4`

```dockerfile
```

-	Layers:
	-	`sha256:1f5a97dc475d550b8552fe7e072f90201127a22c815e03d7c0d0cfe0149f970c`  
		Last Modified: Tue, 04 Aug 2026 01:31:07 GMT  
		Size: 3.2 MB (3191996 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2917b5d1ce8c3ca2acd9df46858fafa043fba5832dce96f75c4995138a33b382`  
		Last Modified: Tue, 04 Aug 2026 01:31:07 GMT  
		Size: 37.0 KB (37018 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.3.8`

```console
$ docker pull elasticsearch@sha256:6f3e4f09da97501cb8ff8b645af8c60f43584dc2c41de94f6494bb9b34131556
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.3.8` - linux; amd64

```console
$ docker pull elasticsearch@sha256:55403472c8d8e43eba82c822b65f5179fbbad3b8ec511fadff2c93382aa2bb48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **722.5 MB (722519701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca10ff3902966c0f7974cec4934f000888fe6bdac1b9dfe3ddea59b73c11db8e`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 29 Jul 2026 15:33:59 GMT
ENV container oci
# Wed, 29 Jul 2026 15:33:59 GMT
COPY dir:2712bf6adcbfed5a600b822e93b2431cf1da8013a362d751954f4417ddc9cb0f in /      
# Wed, 29 Jul 2026 15:33:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 15:33:59 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 15:33:59 GMT
COPY dir:6628822f227400c36a43db1d6feb34b2bb83cd8e625284f06b5597d2d1cfa0a2 in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 15:33:59 GMT
COPY dir:6628822f227400c36a43db1d6feb34b2bb83cd8e625284f06b5597d2d1cfa0a2 in /root/buildinfo/      
# Wed, 29 Jul 2026 15:34:00 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T15:33:16Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-29T15:33:16Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785339117"org.opencontainers.image.created=2026-07-29T15:33:16Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Fri, 31 Jul 2026 00:14:03 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:14:04 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Fri, 31 Jul 2026 00:15:06 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 31 Jul 2026 00:15:06 GMT
COPY /bin/tini /bin/tini # buildkit
# Fri, 31 Jul 2026 00:15:07 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 31 Jul 2026 00:15:16 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Fri, 31 Jul 2026 00:15:16 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Fri, 31 Jul 2026 00:15:16 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:15:16 GMT
ENV SHELL=/bin/bash
# Fri, 31 Jul 2026 00:15:16 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Fri, 31 Jul 2026 00:15:16 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Fri, 31 Jul 2026 00:15:16 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Fri, 31 Jul 2026 00:15:16 GMT
LABEL org.label-schema.build-date=2026-07-15T22:14:38.667958010Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=171dd53e53c29b91f45d2d87857a3f74db48cca5 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-15T22:14:38.667958010Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=171dd53e53c29b91f45d2d87857a3f74db48cca5 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8
# Fri, 31 Jul 2026 00:15:16 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.3.8 release=1 summary=Elasticsearch description=You know, for search.
# Fri, 31 Jul 2026 00:15:16 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 31 Jul 2026 00:15:16 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:15:16 GMT
CMD ["eswrapper"]
# Fri, 31 Jul 2026 00:15:16 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:fa84e92aded1f99bf9799f6272da6aa325a0ec5833ce54b6067c83c51d373be1`  
		Last Modified: Wed, 29 Jul 2026 16:07:04 GMT  
		Size: 40.7 MB (40700889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4982e19056c7b68d81506cf6ac2dd786022d5a8fdd6456570eb400d2e9eed35`  
		Last Modified: Fri, 31 Jul 2026 00:16:09 GMT  
		Size: 4.1 MB (4110566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0c927ff17e95b4c572e25f2d41f3b5c4f39d7a5fd06c756afd78876c43648d`  
		Last Modified: Fri, 31 Jul 2026 00:16:09 GMT  
		Size: 1.5 KB (1528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f63ab19a9f0d7f112aad6a54e95891a56609c41b1d3c9a29c4ec771a6ab845`  
		Last Modified: Fri, 31 Jul 2026 00:16:09 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e11fa018c7ebb470d482c1de762d99c0ac82beb3de2d7d3ce9b9160c78748fc`  
		Last Modified: Fri, 31 Jul 2026 00:16:22 GMT  
		Size: 677.6 MB (677618283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4c2530d92953e5c2bd62140b81be99353281654d3fdfba6575662c645361e2`  
		Last Modified: Fri, 31 Jul 2026 00:16:10 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fb545e27b141dae713e1f3ce4a8cad44012a623498b815af14020251aaed073`  
		Last Modified: Fri, 31 Jul 2026 00:16:10 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0e0075a8b608544dadb83e0f2933adac2a4eeb151796152884cf3500f79647e`  
		Last Modified: Fri, 31 Jul 2026 00:16:11 GMT  
		Size: 75.2 KB (75186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0762f66d532993735859d7062079dff6ec889ac2ad3d1cc8d51dde1b804005b`  
		Last Modified: Fri, 31 Jul 2026 00:16:11 GMT  
		Size: 1.7 KB (1694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.3.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:787c1f372885e65c7998ee83be2a8baccb9d6e0571e46f90dd79fd483b295bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2123230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64c8f8dcfad81b7851ce66e70c9803fd8c7941812b44af81e923fafe1ecb0365`

```dockerfile
```

-	Layers:
	-	`sha256:4187a9f9764486444352a5c69727fdaa8ad4a709901977d25070ce442612df2f`  
		Last Modified: Fri, 31 Jul 2026 00:16:09 GMT  
		Size: 2.1 MB (2089374 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13021aab499923be369b036dfe748d560fe7c44868f8dca9c59e41a9ad2e9342`  
		Last Modified: Fri, 31 Jul 2026 00:16:09 GMT  
		Size: 33.9 KB (33856 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.3.8` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:4a98c3a18a7067703591c2a3392911f8e6d8815f9f016419f8085dcb25bd3cb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **566.5 MB (566541855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45a70a7d8a1f1d296473d55ff0ab073c6c98d604368e3f2c8b8df19f51ef5a72`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 29 Jul 2026 15:36:13 GMT
ENV container oci
# Wed, 29 Jul 2026 15:36:14 GMT
COPY dir:e79037c55caea67c80589bc5c498ecc00baf2b82e3344e06bc5ee039b57b79cb in /      
# Wed, 29 Jul 2026 15:36:14 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 15:36:14 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 15:36:14 GMT
COPY dir:517f2664f3696939cbf5526fe39167b1f9602ed288bfd2d17c092a9a6937e54e in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 15:36:14 GMT
COPY dir:517f2664f3696939cbf5526fe39167b1f9602ed288bfd2d17c092a9a6937e54e in /root/buildinfo/      
# Wed, 29 Jul 2026 15:36:14 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T15:35:52Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-29T15:35:52Z" "architecture"="aarch64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785339117"org.opencontainers.image.created=2026-07-29T15:35:52Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Fri, 31 Jul 2026 00:17:01 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:17:01 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Fri, 31 Jul 2026 00:17:52 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 31 Jul 2026 00:17:52 GMT
COPY /bin/tini /bin/tini # buildkit
# Fri, 31 Jul 2026 00:17:52 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 31 Jul 2026 00:17:58 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Fri, 31 Jul 2026 00:17:58 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Fri, 31 Jul 2026 00:17:58 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:17:58 GMT
ENV SHELL=/bin/bash
# Fri, 31 Jul 2026 00:17:58 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Fri, 31 Jul 2026 00:17:58 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Fri, 31 Jul 2026 00:17:58 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Fri, 31 Jul 2026 00:17:58 GMT
LABEL org.label-schema.build-date=2026-07-15T22:14:38.667958010Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=171dd53e53c29b91f45d2d87857a3f74db48cca5 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-15T22:14:38.667958010Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=171dd53e53c29b91f45d2d87857a3f74db48cca5 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8
# Fri, 31 Jul 2026 00:17:58 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.3.8 release=1 summary=Elasticsearch description=You know, for search.
# Fri, 31 Jul 2026 00:17:59 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 31 Jul 2026 00:17:59 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:17:59 GMT
CMD ["eswrapper"]
# Fri, 31 Jul 2026 00:17:59 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:f72706ee3c4ed7f3012002662319b160e1be4b1d724cbcbdb1344189ada6e8c6`  
		Last Modified: Wed, 29 Jul 2026 16:05:36 GMT  
		Size: 38.8 MB (38838336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:184256492cbb09fca489956a86c1f050dd47e0794f59d124d48933f52099dd1c`  
		Last Modified: Fri, 31 Jul 2026 00:18:36 GMT  
		Size: 4.1 MB (4109982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:777cae4fb7df0653030283081e8037df3e62814b2e07b296bb609245bc544f5b`  
		Last Modified: Fri, 31 Jul 2026 00:18:36 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:113f8d0b1cf02439962632a818727dadd2bf94712b7f99da47140299dc11d5de`  
		Last Modified: Fri, 31 Jul 2026 00:18:36 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e560e5f66d2c6565dc0dbdc5bd91e34b2f55249599f073767a053c32b5f2d4e`  
		Last Modified: Fri, 31 Jul 2026 00:18:46 GMT  
		Size: 523.5 MB (523505088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f48e2e0f423cc73a8eece31a2affc3b0ddb67fc9cd063c8cd7957301e5a8e6ed`  
		Last Modified: Fri, 31 Jul 2026 00:18:37 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23307df5867c413705f30813bdc9dad71fd4fa81ad31dbd7a34fd2ec2721fe7c`  
		Last Modified: Fri, 31 Jul 2026 00:18:37 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52904c13866e41d8eb57e647cba3d347e7529dca5fb5c8542d7835f7e36102a5`  
		Last Modified: Fri, 31 Jul 2026 00:18:38 GMT  
		Size: 74.1 KB (74103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6948db506982b523ea4051f3674ebf0d6408ce884c7cc2a9a5fc914c87a3866a`  
		Last Modified: Fri, 31 Jul 2026 00:18:39 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.3.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:cda35c48730ec5427693385ec690e96e6f7acae77138ed76a1a377f6e2e09866
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2122192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46c0438e16be8cef803e11107ba34e798042d183dce58af5a8184e20181f8aa9`

```dockerfile
```

-	Layers:
	-	`sha256:077d3b1a868225f10f443e51d7d145bcfe81fae1ffe35c302abc1570940d9115`  
		Last Modified: Fri, 31 Jul 2026 00:18:36 GMT  
		Size: 2.1 MB (2088154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c731d4a5d82ed74362a6dea3e331e24c7a3c2b5d793567c287f2452714a6ac10`  
		Last Modified: Fri, 31 Jul 2026 00:18:36 GMT  
		Size: 34.0 KB (34038 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.4.4`

```console
$ docker pull elasticsearch@sha256:7de2137b43d9f263cffe51f139a9f3144da7b9941de615fb4317fc539f4d16a7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.4` - linux; amd64

```console
$ docker pull elasticsearch@sha256:c060ba28f5cfea4eedd8fb85bd5f6bf7d120e53040ee038a289c28979af7128c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **866.2 MB (866243380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3e5c642b3f9082731ab9e3a5d5d659728b29627ed806bf5fec20995a6077640`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 29 Jul 2026 15:33:59 GMT
ENV container oci
# Wed, 29 Jul 2026 15:33:59 GMT
COPY dir:2712bf6adcbfed5a600b822e93b2431cf1da8013a362d751954f4417ddc9cb0f in /      
# Wed, 29 Jul 2026 15:33:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 15:33:59 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 15:33:59 GMT
COPY dir:6628822f227400c36a43db1d6feb34b2bb83cd8e625284f06b5597d2d1cfa0a2 in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 15:33:59 GMT
COPY dir:6628822f227400c36a43db1d6feb34b2bb83cd8e625284f06b5597d2d1cfa0a2 in /root/buildinfo/      
# Wed, 29 Jul 2026 15:34:00 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T15:33:16Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-29T15:33:16Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785339117"org.opencontainers.image.created=2026-07-29T15:33:16Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Fri, 31 Jul 2026 00:14:06 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:14:06 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Fri, 31 Jul 2026 00:14:38 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 31 Jul 2026 00:14:38 GMT
COPY /bin/tini /bin/tini # buildkit
# Fri, 31 Jul 2026 00:14:38 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 31 Jul 2026 00:14:49 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Fri, 31 Jul 2026 00:14:49 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Fri, 31 Jul 2026 00:14:49 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:14:49 GMT
ENV SHELL=/bin/bash
# Fri, 31 Jul 2026 00:14:49 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Fri, 31 Jul 2026 00:14:49 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Fri, 31 Jul 2026 00:14:49 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Fri, 31 Jul 2026 00:14:49 GMT
LABEL org.label-schema.build-date=2026-07-15T22:13:42.125968334Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=77cd231096e56b56ac1d24445a9430a252622e6d org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-15T22:13:42.125968334Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=77cd231096e56b56ac1d24445a9430a252622e6d org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4
# Fri, 31 Jul 2026 00:14:49 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.4 release=1 summary=Elasticsearch description=You know, for search.
# Fri, 31 Jul 2026 00:14:50 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 31 Jul 2026 00:14:50 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:14:50 GMT
CMD ["eswrapper"]
# Fri, 31 Jul 2026 00:14:50 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:fa84e92aded1f99bf9799f6272da6aa325a0ec5833ce54b6067c83c51d373be1`  
		Last Modified: Wed, 29 Jul 2026 16:07:04 GMT  
		Size: 40.7 MB (40700889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3027cfdd1a89ae86fa8d0b4881a67f1bde008510ffb4b48ab36b7f13d5867237`  
		Last Modified: Fri, 31 Jul 2026 00:15:44 GMT  
		Size: 4.1 MB (4110592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba4458d88fa25c0b2c0e7e1e257a9976d0762027596a1c61471e7bdcc6b3a584`  
		Last Modified: Fri, 31 Jul 2026 00:15:44 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf60f8c7cf5a0d9b8b6030aacd91f834c58a0493efd865a91b826659d4dc3a3`  
		Last Modified: Fri, 31 Jul 2026 00:15:44 GMT  
		Size: 9.5 KB (9529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d340a935394da929a33035f461a017b1ec229e1bdc74774f31211ff7c53997a4`  
		Last Modified: Fri, 31 Jul 2026 00:15:58 GMT  
		Size: 821.3 MB (821341945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7ebb944e1dad02b791b7250df8333c3e121e4ae96f6c64fe3e6c11334b190b0`  
		Last Modified: Fri, 31 Jul 2026 00:15:45 GMT  
		Size: 267.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a065ade31e92d81929c8a689b8f0f486561f46c86fdf44de4ef3e2cfb87d367`  
		Last Modified: Fri, 31 Jul 2026 00:15:46 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15959e448b61d64d7cde5585b82409f006485f6eb3585a2fe6a0f43ddbb9d55b`  
		Last Modified: Fri, 31 Jul 2026 00:15:46 GMT  
		Size: 75.2 KB (75182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ce7745f55bc589b959cd1b53b6b5b02bd0a5cd235f6d49ce1df55bb1d0d4c8`  
		Last Modified: Fri, 31 Jul 2026 00:15:47 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.4` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:0902b7a48181d46262a61119f2b97730bf39adb12cadd072840bf512b6ddc0ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2423669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bab6e289e106811a77d67b7527e0ebbe02683318706ed77270b324aa372059b8`

```dockerfile
```

-	Layers:
	-	`sha256:4ed239d08670b643073a6dd65e631f8e15ab3d203c1083a9c761b23413c04090`  
		Last Modified: Fri, 31 Jul 2026 00:15:44 GMT  
		Size: 2.4 MB (2389895 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce27acbfffb839ac8306d4de74a6a7ea16122abc2010de661027c7f5465827a5`  
		Last Modified: Fri, 31 Jul 2026 00:15:44 GMT  
		Size: 33.8 KB (33774 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.4` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:24d0f0581b1e3304299289b9c36ae0756e5fd458ca988fb68932ff061518b28d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **710.9 MB (710852744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e21f475a7fc754708fa02e07a1e6ba402b0dcb00a13637e3e8b05a2e5377ed30`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 29 Jul 2026 15:36:13 GMT
ENV container oci
# Wed, 29 Jul 2026 15:36:14 GMT
COPY dir:e79037c55caea67c80589bc5c498ecc00baf2b82e3344e06bc5ee039b57b79cb in /      
# Wed, 29 Jul 2026 15:36:14 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 15:36:14 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 15:36:14 GMT
COPY dir:517f2664f3696939cbf5526fe39167b1f9602ed288bfd2d17c092a9a6937e54e in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 15:36:14 GMT
COPY dir:517f2664f3696939cbf5526fe39167b1f9602ed288bfd2d17c092a9a6937e54e in /root/buildinfo/      
# Wed, 29 Jul 2026 15:36:14 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T15:35:52Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-29T15:35:52Z" "architecture"="aarch64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785339117"org.opencontainers.image.created=2026-07-29T15:35:52Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Fri, 31 Jul 2026 00:17:02 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:17:03 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Fri, 31 Jul 2026 00:18:07 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 31 Jul 2026 00:18:07 GMT
COPY /bin/tini /bin/tini # buildkit
# Fri, 31 Jul 2026 00:18:07 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 31 Jul 2026 00:18:15 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Fri, 31 Jul 2026 00:18:15 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Fri, 31 Jul 2026 00:18:15 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:18:15 GMT
ENV SHELL=/bin/bash
# Fri, 31 Jul 2026 00:18:15 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Fri, 31 Jul 2026 00:18:15 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Fri, 31 Jul 2026 00:18:15 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Fri, 31 Jul 2026 00:18:15 GMT
LABEL org.label-schema.build-date=2026-07-15T22:13:42.125968334Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=77cd231096e56b56ac1d24445a9430a252622e6d org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-15T22:13:42.125968334Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=77cd231096e56b56ac1d24445a9430a252622e6d org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4
# Fri, 31 Jul 2026 00:18:15 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.4 release=1 summary=Elasticsearch description=You know, for search.
# Fri, 31 Jul 2026 00:18:15 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 31 Jul 2026 00:18:15 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:18:15 GMT
CMD ["eswrapper"]
# Fri, 31 Jul 2026 00:18:15 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:f72706ee3c4ed7f3012002662319b160e1be4b1d724cbcbdb1344189ada6e8c6`  
		Last Modified: Wed, 29 Jul 2026 16:05:36 GMT  
		Size: 38.8 MB (38838336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef59d880d76a65642aa0d2576733ee52d2ebcab3bd90784db830fa7521b3a48`  
		Last Modified: Fri, 31 Jul 2026 00:19:00 GMT  
		Size: 4.1 MB (4109918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:932a174e44c6a3ca32922a5d36bd7af1ceb29c8ae40a603a352f09fd8fdb7f3a`  
		Last Modified: Fri, 31 Jul 2026 00:18:59 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b00b04d240837b7b77ecbb99cdd9d0dec2443e608562d59eb6a0e87d6e56e0a9`  
		Last Modified: Fri, 31 Jul 2026 00:18:59 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c18e95ea79abed688a66743a9facc46c5a1d477721ba1ad1a030bcc9dbad65`  
		Last Modified: Fri, 31 Jul 2026 00:19:11 GMT  
		Size: 667.8 MB (667816037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fa940bf1e160e41997b2022cf3fef15c1722e8735b12201c97daa2d4408c3b7`  
		Last Modified: Fri, 31 Jul 2026 00:19:00 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d07649d138ba65b43cfee827bffd5f26b7f59e5e4e59477dab3672fd15aa6123`  
		Last Modified: Fri, 31 Jul 2026 00:19:00 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20da24a357bcaf58790fe638d079f0e74bae29ed8b29629affd26225c6ece40f`  
		Last Modified: Fri, 31 Jul 2026 00:19:01 GMT  
		Size: 74.1 KB (74107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb73317c6f910b626a1eb642cae91881f1729e2fbaa71141a9a1cec72d38a818`  
		Last Modified: Fri, 31 Jul 2026 00:19:02 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.4` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:16525729780faec0f18c44b1f36db0590ec40fc2b4a225edef2c66f220964343
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9676c9a5c69e1b6f495dd00a073c999d7096058f0b3d0a0013b78ba2bf689a6b`

```dockerfile
```

-	Layers:
	-	`sha256:8bed48d0ae7d8ad4b303f4bf386690113b2af0bfeb1e137b033431dcff4a475f`  
		Last Modified: Fri, 31 Jul 2026 00:18:59 GMT  
		Size: 2.4 MB (2388675 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16762ce7512797d2c4db936bdeb8f13e6cada9add69d8f074d9526f38c4e971b`  
		Last Modified: Fri, 31 Jul 2026 00:18:59 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json
