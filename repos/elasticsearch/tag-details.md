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
$ docker pull elasticsearch@sha256:bc244439d6facaf81aa5633cf5b8d6db882c45d5bf812e60c068dd00968d48e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.3.8` - linux; amd64

```console
$ docker pull elasticsearch@sha256:09792445d401da90833a2ed6ba25a3043667a075e025ca5cc88f80657fbbaa64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **722.5 MB (722526537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab76a097b5f972d8f1a03508dd39e850f8dd0ae2927ff0ae08bb7e3710c2dd40`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL io.openshift.expose-services=""
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 05 Aug 2026 05:12:12 GMT
ENV container oci
# Wed, 05 Aug 2026 05:12:13 GMT
COPY dir:566bd7ceef314001d2d4000252aedc98335cb96737e8ca003268a81789b22de2 in /      
# Wed, 05 Aug 2026 05:12:13 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 05 Aug 2026 05:12:13 GMT
CMD ["/bin/bash"]
# Wed, 05 Aug 2026 05:12:13 GMT
COPY dir:f9035c16287ce6eab77e9c51b8fb202e226cae36f96964d20bdabe9900031efc in /usr/share/buildinfo/      
# Wed, 05 Aug 2026 05:12:13 GMT
COPY dir:f9035c16287ce6eab77e9c51b8fb202e226cae36f96964d20bdabe9900031efc in /root/buildinfo/      
# Wed, 05 Aug 2026 05:12:13 GMT
LABEL "org.opencontainers.image.created"="2026-08-05T05:11:46Z" "org.opencontainers.image.revision"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "build-date"="2026-08-05T05:11:46Z" "architecture"="x86_64" "vcs-ref"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "vcs-type"="git" "release"="1785906621"org.opencontainers.image.created=2026-08-05T05:11:46Z,org.opencontainers.image.revision=1ca6f1fd6baff20888272c2426a8dc7f6030dff2
# Wed, 05 Aug 2026 18:15:51 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 05 Aug 2026 18:15:52 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 05 Aug 2026 18:16:22 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 05 Aug 2026 18:16:22 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 05 Aug 2026 18:16:22 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 05 Aug 2026 18:16:32 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 05 Aug 2026 18:16:32 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 05 Aug 2026 18:16:32 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 18:16:32 GMT
ENV SHELL=/bin/bash
# Wed, 05 Aug 2026 18:16:32 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 05 Aug 2026 18:16:32 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 05 Aug 2026 18:16:32 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 05 Aug 2026 18:16:32 GMT
LABEL org.label-schema.build-date=2026-07-15T22:14:38.667958010Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=171dd53e53c29b91f45d2d87857a3f74db48cca5 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-15T22:14:38.667958010Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=171dd53e53c29b91f45d2d87857a3f74db48cca5 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8
# Wed, 05 Aug 2026 18:16:32 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.3.8 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 05 Aug 2026 18:16:33 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 05 Aug 2026 18:16:33 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 18:16:33 GMT
CMD ["eswrapper"]
# Wed, 05 Aug 2026 18:16:33 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:f5e26a8514cb54661b214b756f0f307e562755e1865d1e13fa375c8e6c6b88ae`  
		Last Modified: Wed, 05 Aug 2026 06:11:38 GMT  
		Size: 40.7 MB (40708771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f4b29cda2a62a4df882481e55561a7f9a18f467e73dfe77879957bd051374df`  
		Last Modified: Wed, 05 Aug 2026 18:17:23 GMT  
		Size: 4.1 MB (4109488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a40dbb961dc905ce4d5679b0e6cacf27bdd13b8d9d0a9196d55f46f318c69a81`  
		Last Modified: Wed, 05 Aug 2026 18:17:22 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f45b11da2fdbfe5c62db68cb2bd2253a85db1c0010e3a836c9e92256d830078`  
		Last Modified: Wed, 05 Aug 2026 18:17:22 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28f104a072f77988b1640c3b21feb28af4e0b327e9d93a5553b83ea7791c145e`  
		Last Modified: Wed, 05 Aug 2026 18:17:35 GMT  
		Size: 677.6 MB (677618320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dd95c41e2420b85592541ab1fb80afe6298fe3904aa922f8ac2884776c28518`  
		Last Modified: Wed, 05 Aug 2026 18:17:24 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742a367f251e68e43bb443779ddc50474480c2f639603f1715e9664659af1c04`  
		Last Modified: Wed, 05 Aug 2026 18:17:24 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a2ef32a6fb3b9cd57a33942761cec6efa2c511c760c7ce9dec37cdfe051a50`  
		Last Modified: Wed, 05 Aug 2026 18:17:24 GMT  
		Size: 75.2 KB (75185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a516b9e06cd0c76941f356354a06819b1bb23aa5073b132d8574d7f77c7e5760`  
		Last Modified: Wed, 05 Aug 2026 18:17:25 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.3.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:51351fa56a090e82f1f8f8d3e3f55e965c352bd6255caa940db7e36eefab0003
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2123243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3597012c471c3b428c211ecde68f6c7aab8cba7e685a278ec27cb15d4905625`

```dockerfile
```

-	Layers:
	-	`sha256:efed72c862fa4b2f610e39afe188b48b65422486222d7fb67f88c24356128fcf`  
		Last Modified: Wed, 05 Aug 2026 18:17:22 GMT  
		Size: 2.1 MB (2089387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:469d7161a1fe65ea77f715beeb595508c717849e07c03eb63749eb31ba147c94`  
		Last Modified: Wed, 05 Aug 2026 18:17:22 GMT  
		Size: 33.9 KB (33856 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.3.8` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:baeeadeef3fe833d67a2ffbc82f4a05518849be700da9deddc3cf01d6686a1ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **566.5 MB (566509687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:713f91dcd77b6a236fdf3478bbccec9a168cbb8900c623bbfbbdc9461f6828c2`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.openshift.expose-services=""
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 05 Aug 2026 05:14:19 GMT
ENV container oci
# Wed, 05 Aug 2026 05:14:20 GMT
COPY dir:353d0b802c7bafe293cb00c4bee1ca7723a5390ae04dc844a3a7d0512dfa7188 in /      
# Wed, 05 Aug 2026 05:14:20 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 05 Aug 2026 05:14:20 GMT
CMD ["/bin/bash"]
# Wed, 05 Aug 2026 05:14:20 GMT
COPY dir:6307b37184d91d5470cef4e26e792c3988b7f20aa29464c1e657d34f7b14c41f in /usr/share/buildinfo/      
# Wed, 05 Aug 2026 05:14:20 GMT
COPY dir:6307b37184d91d5470cef4e26e792c3988b7f20aa29464c1e657d34f7b14c41f in /root/buildinfo/      
# Wed, 05 Aug 2026 05:14:20 GMT
LABEL "org.opencontainers.image.created"="2026-08-05T05:13:59Z" "org.opencontainers.image.revision"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "build-date"="2026-08-05T05:13:59Z" "architecture"="aarch64" "vcs-ref"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "vcs-type"="git" "release"="1785906621"org.opencontainers.image.created=2026-08-05T05:13:59Z,org.opencontainers.image.revision=1ca6f1fd6baff20888272c2426a8dc7f6030dff2
# Wed, 05 Aug 2026 18:17:41 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 05 Aug 2026 18:17:42 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 05 Aug 2026 18:18:34 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 05 Aug 2026 18:18:34 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 05 Aug 2026 18:18:34 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 05 Aug 2026 18:18:40 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 05 Aug 2026 18:18:40 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 05 Aug 2026 18:18:40 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 18:18:40 GMT
ENV SHELL=/bin/bash
# Wed, 05 Aug 2026 18:18:40 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 05 Aug 2026 18:18:40 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 05 Aug 2026 18:18:40 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 05 Aug 2026 18:18:40 GMT
LABEL org.label-schema.build-date=2026-07-15T22:14:38.667958010Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=171dd53e53c29b91f45d2d87857a3f74db48cca5 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-15T22:14:38.667958010Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=171dd53e53c29b91f45d2d87857a3f74db48cca5 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8
# Wed, 05 Aug 2026 18:18:40 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.3.8 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 05 Aug 2026 18:18:40 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 05 Aug 2026 18:18:40 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 18:18:40 GMT
CMD ["eswrapper"]
# Wed, 05 Aug 2026 18:18:40 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:5a99040b034c68b0560dce13016c272ff01da7a59b1bcf22a9d2b71ead46ab6e`  
		Last Modified: Wed, 05 Aug 2026 06:11:46 GMT  
		Size: 38.8 MB (38809285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea0d4febb5c8e898bb0c6d35698d9a0f87afb8a3c7052f611b9c583204ac7414`  
		Last Modified: Wed, 05 Aug 2026 18:19:20 GMT  
		Size: 4.1 MB (4106863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31a6161ed27f5c65ef1fb490cc6e9b248bb9d9bac593c5858c8c7f00a669580c`  
		Last Modified: Wed, 05 Aug 2026 18:19:20 GMT  
		Size: 1.5 KB (1538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2442d6953f272ce1dbccd0c4a9f237d7947074dfe7163248aee4852ec5689013`  
		Last Modified: Wed, 05 Aug 2026 18:19:20 GMT  
		Size: 9.1 KB (9098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea15f7a8f734bac6908d3de7857faf56cf12ad9656d4bab4b9b5fec06e4b0147`  
		Last Modified: Wed, 05 Aug 2026 18:19:29 GMT  
		Size: 523.5 MB (523505089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64d61ba6ece7917425acf9472ca7a6b0e7bb71e3f13a0ec25fa3b18df4ded18d`  
		Last Modified: Wed, 05 Aug 2026 18:19:21 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aef8699441d070756437efb5f0e52191c622c5c32a1cb4a0b273c3e51845e2d0`  
		Last Modified: Wed, 05 Aug 2026 18:19:21 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4757f21155b4110d4f72c17bb6d433fd7675f7d5a948217f4fbd23d6795923df`  
		Last Modified: Wed, 05 Aug 2026 18:19:22 GMT  
		Size: 74.1 KB (74103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e0be0ce0e0aa29767b2c86952bff1c57d84fd8de5eec647140d258528028fa`  
		Last Modified: Wed, 05 Aug 2026 18:19:22 GMT  
		Size: 1.7 KB (1693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.3.8` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:93a9f2795fceb588f0b700acccc48ab77e28192b38fd160431585bf766583072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2122205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e0106fc6f54b751b6df204acced87242faf706e7ef44273682c7cd28374455b`

```dockerfile
```

-	Layers:
	-	`sha256:084c522dcd9271fdaed58eb05939db6b3723242c048368e01cc8fd83ad8f6fc0`  
		Last Modified: Wed, 05 Aug 2026 18:19:20 GMT  
		Size: 2.1 MB (2088167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47696961f7a1ffdc63b9ff18dbb29071624f4a373501bf6d793978661023661c`  
		Last Modified: Wed, 05 Aug 2026 18:19:20 GMT  
		Size: 34.0 KB (34038 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.4.4`

```console
$ docker pull elasticsearch@sha256:5b4517639f5c027e5abc0dbb29dc99e0662b2d060befe17d91c953b88020391d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.4` - linux; amd64

```console
$ docker pull elasticsearch@sha256:807fe853f180c535521cf853d9f7d21650698cd0b0965e8a2df13ff0ec55a516
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **866.3 MB (866250067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e6762303daf6158163a4ce22870a45e37c7b245d507a1809acfd8dec62b8489`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL io.openshift.expose-services=""
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 05 Aug 2026 05:12:12 GMT
ENV container oci
# Wed, 05 Aug 2026 05:12:13 GMT
COPY dir:566bd7ceef314001d2d4000252aedc98335cb96737e8ca003268a81789b22de2 in /      
# Wed, 05 Aug 2026 05:12:13 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 05 Aug 2026 05:12:13 GMT
CMD ["/bin/bash"]
# Wed, 05 Aug 2026 05:12:13 GMT
COPY dir:f9035c16287ce6eab77e9c51b8fb202e226cae36f96964d20bdabe9900031efc in /usr/share/buildinfo/      
# Wed, 05 Aug 2026 05:12:13 GMT
COPY dir:f9035c16287ce6eab77e9c51b8fb202e226cae36f96964d20bdabe9900031efc in /root/buildinfo/      
# Wed, 05 Aug 2026 05:12:13 GMT
LABEL "org.opencontainers.image.created"="2026-08-05T05:11:46Z" "org.opencontainers.image.revision"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "build-date"="2026-08-05T05:11:46Z" "architecture"="x86_64" "vcs-ref"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "vcs-type"="git" "release"="1785906621"org.opencontainers.image.created=2026-08-05T05:11:46Z,org.opencontainers.image.revision=1ca6f1fd6baff20888272c2426a8dc7f6030dff2
# Wed, 05 Aug 2026 18:15:32 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 05 Aug 2026 18:15:32 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 05 Aug 2026 18:16:06 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 05 Aug 2026 18:16:06 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 05 Aug 2026 18:16:06 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 05 Aug 2026 18:16:17 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 05 Aug 2026 18:16:17 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 05 Aug 2026 18:16:17 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 18:16:17 GMT
ENV SHELL=/bin/bash
# Wed, 05 Aug 2026 18:16:17 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 05 Aug 2026 18:16:17 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 05 Aug 2026 18:16:17 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 05 Aug 2026 18:16:17 GMT
LABEL org.label-schema.build-date=2026-07-15T22:13:42.125968334Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=77cd231096e56b56ac1d24445a9430a252622e6d org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-15T22:13:42.125968334Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=77cd231096e56b56ac1d24445a9430a252622e6d org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4
# Wed, 05 Aug 2026 18:16:17 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.4 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 05 Aug 2026 18:16:18 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 05 Aug 2026 18:16:18 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 18:16:18 GMT
CMD ["eswrapper"]
# Wed, 05 Aug 2026 18:16:18 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:f5e26a8514cb54661b214b756f0f307e562755e1865d1e13fa375c8e6c6b88ae`  
		Last Modified: Wed, 05 Aug 2026 06:11:38 GMT  
		Size: 40.7 MB (40708771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05177ed086d705c931a20811f51ef5f31596252d53ba55fa87667c4f7cf2047f`  
		Last Modified: Wed, 05 Aug 2026 18:17:13 GMT  
		Size: 4.1 MB (4109534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ed411466dc2c54d6ea30a3075488dcbfc5dcde53377f201ac639bddb655b67`  
		Last Modified: Wed, 05 Aug 2026 18:17:13 GMT  
		Size: 1.5 KB (1528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44bb47f8b5069fe0959693fe0976f8fee224d72204b4ef3e74340407771b119`  
		Last Modified: Wed, 05 Aug 2026 18:17:13 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05b2ba6aa20b92b72059fad3c0601f5fad1b9f6e76bf26ec9088b5b4c8ee4a68`  
		Last Modified: Wed, 05 Aug 2026 18:17:29 GMT  
		Size: 821.3 MB (821341805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea594eb26be903c074a3bf97d657165070723db71b5331d825eae59933bc26e0`  
		Last Modified: Wed, 05 Aug 2026 18:17:14 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d037b2280f0f772aef8102d48063a6d7d609f7e5a4d8313b6d3023f83c0ad1e`  
		Last Modified: Wed, 05 Aug 2026 18:17:14 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7aa3f77e9ac530274d9153033f6c779bd40a47f47ec32edcca7287d44174914`  
		Last Modified: Wed, 05 Aug 2026 18:17:14 GMT  
		Size: 75.2 KB (75185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:447a3ee8d08323c81aa020d3ecc90820901d160378a4d14a94cf1087d5eed881`  
		Last Modified: Wed, 05 Aug 2026 18:17:15 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.4` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:c450d485bd6f6b7a009fc46a503919fcac00bd41670a1f4993fa818b7ed2f742
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2423684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65e6d06ab4011e8cde03d37eefaf03a000af9de157ce3e2458c9637713d3ee97`

```dockerfile
```

-	Layers:
	-	`sha256:87710e59120a4ed90149e57ee1325ebd8b9ed744327dd5f82d7222625df9143f`  
		Last Modified: Wed, 05 Aug 2026 18:17:13 GMT  
		Size: 2.4 MB (2389908 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7c14c5ef7e902067aad8676c20754942635bf887b469285055c07e0cd587e7b`  
		Last Modified: Wed, 05 Aug 2026 18:17:13 GMT  
		Size: 33.8 KB (33776 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.4` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:e785f66e15d0bb68ecb3a1cf3f158924d572b2986046d0c6f7aa3f5c0fb86744
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **710.8 MB (710820689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02a0b775c05117887ac90d4d206a4a9cd6b7d6ace0969d37e1b4b3447f0e3842`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.openshift.expose-services=""
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 05 Aug 2026 05:14:19 GMT
ENV container oci
# Wed, 05 Aug 2026 05:14:20 GMT
COPY dir:353d0b802c7bafe293cb00c4bee1ca7723a5390ae04dc844a3a7d0512dfa7188 in /      
# Wed, 05 Aug 2026 05:14:20 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 05 Aug 2026 05:14:20 GMT
CMD ["/bin/bash"]
# Wed, 05 Aug 2026 05:14:20 GMT
COPY dir:6307b37184d91d5470cef4e26e792c3988b7f20aa29464c1e657d34f7b14c41f in /usr/share/buildinfo/      
# Wed, 05 Aug 2026 05:14:20 GMT
COPY dir:6307b37184d91d5470cef4e26e792c3988b7f20aa29464c1e657d34f7b14c41f in /root/buildinfo/      
# Wed, 05 Aug 2026 05:14:20 GMT
LABEL "org.opencontainers.image.created"="2026-08-05T05:13:59Z" "org.opencontainers.image.revision"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "build-date"="2026-08-05T05:13:59Z" "architecture"="aarch64" "vcs-ref"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "vcs-type"="git" "release"="1785906621"org.opencontainers.image.created=2026-08-05T05:13:59Z,org.opencontainers.image.revision=1ca6f1fd6baff20888272c2426a8dc7f6030dff2
# Wed, 05 Aug 2026 18:14:37 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 05 Aug 2026 18:14:37 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 05 Aug 2026 18:15:43 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 05 Aug 2026 18:15:43 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 05 Aug 2026 18:15:44 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 05 Aug 2026 18:15:51 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 05 Aug 2026 18:15:51 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 05 Aug 2026 18:15:51 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 18:15:51 GMT
ENV SHELL=/bin/bash
# Wed, 05 Aug 2026 18:15:51 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 05 Aug 2026 18:15:51 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 05 Aug 2026 18:15:51 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 05 Aug 2026 18:15:51 GMT
LABEL org.label-schema.build-date=2026-07-15T22:13:42.125968334Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=77cd231096e56b56ac1d24445a9430a252622e6d org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-15T22:13:42.125968334Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=77cd231096e56b56ac1d24445a9430a252622e6d org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4
# Wed, 05 Aug 2026 18:15:51 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.4 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 05 Aug 2026 18:15:51 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 05 Aug 2026 18:15:51 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 05 Aug 2026 18:15:51 GMT
CMD ["eswrapper"]
# Wed, 05 Aug 2026 18:15:51 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:5a99040b034c68b0560dce13016c272ff01da7a59b1bcf22a9d2b71ead46ab6e`  
		Last Modified: Wed, 05 Aug 2026 06:11:46 GMT  
		Size: 38.8 MB (38809285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d1406678e4854bd8a74d5aa08c1d622f1221f4c0044c9593d4c4c9ee420d124`  
		Last Modified: Wed, 05 Aug 2026 18:16:36 GMT  
		Size: 4.1 MB (4106908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e50daacc96fe8844222953bf66c445258666ba7c7add26b7421cf3627af1a704`  
		Last Modified: Wed, 05 Aug 2026 18:16:36 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d8c8029ceb2805fcc9988d6895cc52b6beec615b6651acb92cd627c392f897a`  
		Last Modified: Wed, 05 Aug 2026 18:16:36 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cec15a5534197bb5e24366e77ab150b57073495d78205336be2221919d6bfed0`  
		Last Modified: Wed, 05 Aug 2026 18:16:49 GMT  
		Size: 667.8 MB (667816047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beca730122229150f97bebacf1bbac7f7639087dc8b0fa431500ebcb2bc6745b`  
		Last Modified: Wed, 05 Aug 2026 18:16:37 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ee480abc80b146ca374e8b560f34437edff1cec0b58202a6472dc63f5cacef`  
		Last Modified: Wed, 05 Aug 2026 18:16:37 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1d9ea7e9cc3ff23ee7da3065823627b5d3c9e402eacd907cb1cd08baf30b1b1`  
		Last Modified: Wed, 05 Aug 2026 18:16:38 GMT  
		Size: 74.1 KB (74105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:723be803df9d2ef7b1f7a5928db1db087645a16723910967a41962520ca7f503`  
		Last Modified: Wed, 05 Aug 2026 18:16:39 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.4` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:27d2eb7f82384ca390f69d44e258d69d24a44e721c3f484cb182a5c45f452b89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46ff6c47b47bc7ca82b3ff1e857e03291cc4917968e0af8f82542105f4b8fd6`

```dockerfile
```

-	Layers:
	-	`sha256:f44d6c5ae840524ad5e34ab0a2184108c20f5f288e5b7720080d5dbddd5e5d27`  
		Last Modified: Wed, 05 Aug 2026 18:16:36 GMT  
		Size: 2.4 MB (2388688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:241600ff3a4a19835c8c6fbd7e0bb3ad54a95aa84c52e619030408422df5342b`  
		Last Modified: Wed, 05 Aug 2026 18:16:36 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json
