<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:8.19.26`](#kibana81926)
-	[`kibana:9.4.10`](#kibana9410)
-	[`kibana:9.5.7`](#kibana957)

## `kibana:8.19.26`

```console
$ docker pull kibana@sha256:6adc448ce3083211b911bb455d6abbd0a71fba1b1c0fe826fde4dd8a798ff5bd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:8.19.26` - linux; amd64

```console
$ docker pull kibana@sha256:a14f40ec3b248b6e6a22a2c7672352b9ff1ff4c3a15d9d9939261388b0a863d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.9 MB (454886294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc694bd20a9f9a60ed115cbd04fb27d5f777c7f146cb9c1aded0660097426a86`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

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
# Wed, 25 Nov 2026 23:45:46 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 25 Nov 2026 23:45:46 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 25 Nov 2026 23:53:15 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 25 Nov 2026 23:53:15 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 25 Nov 2026 23:53:16 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 25 Nov 2026 23:53:16 GMT
RUN fc-cache -v # buildkit
# Wed, 25 Nov 2026 23:53:16 GMT
WORKDIR /usr/share/kibana
# Wed, 25 Nov 2026 23:53:16 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 25 Nov 2026 23:53:16 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 25 Nov 2026 23:53:16 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Nov 2026 23:53:16 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 25 Nov 2026 23:53:16 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 25 Nov 2026 23:53:17 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 25 Nov 2026 23:53:17 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 25 Nov 2026 23:53:17 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 25 Nov 2026 23:53:17 GMT
LABEL org.label-schema.build-date=2026-11-19T01:08:25.034Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=0baf8aa34687497ca0b63168a93c358fc405bd59 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.26 org.opencontainers.image.created=2026-11-19T01:08:25.034Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=0baf8aa34687497ca0b63168a93c358fc405bd59 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.26
# Wed, 25 Nov 2026 23:53:17 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 25 Nov 2026 23:53:17 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 25 Nov 2026 23:53:17 GMT
USER 1000
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83cf950eb7c9d367f2c4822d9a12303a2b3239716f36fcad20104f2f894c6071`  
		Last Modified: Wed, 25 Nov 2026 23:54:20 GMT  
		Size: 9.4 MB (9428513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569394910f9eabeb7063b2856fab36a69c9619759c538b716b4e995f17ba9d94`  
		Last Modified: Wed, 25 Nov 2026 23:54:28 GMT  
		Size: 399.0 MB (399020471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4779e9b97368c8fb2cbedeab37a911b31cba8c934c4a81c930f113c152c1c351`  
		Last Modified: Wed, 25 Nov 2026 23:54:20 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b804a55216cc60234c4b1150de12f808a89e4a035908fe8d3915bbcd4897dd7`  
		Last Modified: Wed, 25 Nov 2026 23:54:21 GMT  
		Size: 16.5 MB (16460491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c204540b7c2a9066ceff45f8dcf97e863504cc46a6b05c3ec9d84b5f094b5b9`  
		Last Modified: Wed, 25 Nov 2026 23:54:21 GMT  
		Size: 5.2 KB (5243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f62db2fc00c8e4421dfd018d87d832da4acc4d2851290fd9f40cfcc913f4810`  
		Last Modified: Wed, 25 Nov 2026 23:54:22 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ddec47908214e933597a2256530dd97a248f30a0dc6e0dac1d112d18ea325f4`  
		Last Modified: Wed, 25 Nov 2026 23:54:22 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d323c27b72f912ca823e02da32cde735e94201d25a1d32440f4baa3e664370b2`  
		Last Modified: Wed, 25 Nov 2026 23:54:22 GMT  
		Size: 4.8 KB (4824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eeee56600e5ebf7bf36761edd455a2970721debf56877584082ee9a59912abc`  
		Last Modified: Wed, 25 Nov 2026 23:54:23 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f1b439bf4931df0d3878a92c7f864643a2dffaddd0cb91724fb2e51ae130090`  
		Last Modified: Wed, 25 Nov 2026 23:54:23 GMT  
		Size: 161.7 KB (161739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e278112e7a52ffbda6c7b87a09cc4ef41170d7cf726ab5246cd0ffa3b83ba447`  
		Last Modified: Wed, 25 Nov 2026 23:54:23 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.26` - unknown; unknown

```console
$ docker pull kibana@sha256:e09bdb32fec251d8c1d5a9693c9e601298eddd1e9f28d646153d2992ad49e8cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4771613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a438f43b52bf25624ff9e3f07591ef5d27033ea48f6bb317d3454b6e28a0d9`

```dockerfile
```

-	Layers:
	-	`sha256:9ab89743c20c5e6a72331891dfe2c3b9bf625169d813aea63a971db18e9392b7`  
		Last Modified: Wed, 25 Nov 2026 23:54:20 GMT  
		Size: 4.7 MB (4730698 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d86c0398d5df3b58d6b9fdb693e019bddaff13581bc948e01bc29df71e09f84a`  
		Last Modified: Wed, 25 Nov 2026 23:54:19 GMT  
		Size: 40.9 KB (40915 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:8.19.26` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:779f5f8bd2fcd7700f61fb3698d30b8498e98d7375c48ab535f05c33d0447860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **467.0 MB (467001785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05d60363f7ffa96db92b372b34f267f685a131d2662bc4a9f7ccb55e77c3ba28`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

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
# Wed, 25 Nov 2026 23:45:11 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 25 Nov 2026 23:45:11 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 25 Nov 2026 23:51:55 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 25 Nov 2026 23:51:56 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 25 Nov 2026 23:51:56 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 25 Nov 2026 23:51:56 GMT
RUN fc-cache -v # buildkit
# Wed, 25 Nov 2026 23:51:56 GMT
WORKDIR /usr/share/kibana
# Wed, 25 Nov 2026 23:51:56 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 25 Nov 2026 23:51:56 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 25 Nov 2026 23:51:56 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Nov 2026 23:51:56 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 25 Nov 2026 23:51:56 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 25 Nov 2026 23:51:57 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 25 Nov 2026 23:51:58 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 25 Nov 2026 23:51:58 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 25 Nov 2026 23:51:58 GMT
LABEL org.label-schema.build-date=2026-11-19T01:08:25.034Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=0baf8aa34687497ca0b63168a93c358fc405bd59 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.26 org.opencontainers.image.created=2026-11-19T01:08:25.034Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=0baf8aa34687497ca0b63168a93c358fc405bd59 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.26
# Wed, 25 Nov 2026 23:51:58 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 25 Nov 2026 23:51:58 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 25 Nov 2026 23:51:58 GMT
USER 1000
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9fa43ee063473dadc599934e9fcb3232c31989adc9537d97e49609b8b1e56c2`  
		Last Modified: Wed, 25 Nov 2026 23:53:05 GMT  
		Size: 9.4 MB (9446820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbf2bb149c503f2e7b5d9280ea1233fa42e283ad0723ab61fb7f4292dd3c62e9`  
		Last Modified: Wed, 25 Nov 2026 23:53:12 GMT  
		Size: 411.9 MB (411949542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9d76493ac8fa7282c0b16ca3817521dc39ad2dbbd9f726f7bf3bb5fc8105329`  
		Last Modified: Wed, 25 Nov 2026 23:53:04 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:970d43ab8db81ed5852df2f731edc00feebee50e3e3ec287af771849c7bfdd36`  
		Last Modified: Wed, 25 Nov 2026 23:53:05 GMT  
		Size: 16.5 MB (16460494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d0a78845c641005eb09d78183a9f3a4da776aac152cb020fcd98fcc2108041`  
		Last Modified: Wed, 25 Nov 2026 23:53:06 GMT  
		Size: 5.2 KB (5242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:308bb3a1c6e38b9807dc1d60207c3901b88049e9c418cdc3b9dc08335acfe73a`  
		Last Modified: Wed, 25 Nov 2026 23:53:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f3c4125f8298f3b6b3e148046c52520fbda8afc4e5acad1dd51ac0de97995d6`  
		Last Modified: Wed, 25 Nov 2026 23:53:07 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc59e6db340667a5c842058d39413e8c588d12dc3f1e55807542af6ae8a0151`  
		Last Modified: Wed, 25 Nov 2026 23:53:07 GMT  
		Size: 4.8 KB (4825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57309bcb625ce3488222d7a811cab61a92816bfce56568a367f31c3e222926f3`  
		Last Modified: Wed, 25 Nov 2026 23:53:08 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:602cd54db84461a9fba9bac78742e0c867659ad5e81ce02e88cd023eac309725`  
		Last Modified: Wed, 25 Nov 2026 23:53:08 GMT  
		Size: 158.3 KB (158255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75e45230d98d6efddaef743aabe97a46c68931efb000ea8ad0b0e582c243024`  
		Last Modified: Wed, 25 Nov 2026 23:53:08 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.26` - unknown; unknown

```console
$ docker pull kibana@sha256:13aab3b27614d31b7729f0a9983277a46c43057ac7f8ec5bb5ab884adc65fa5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4772925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:950bd4dd808a6e9f77c9c0294f0ef970b1577b96657c0034c47336070116ea67`

```dockerfile
```

-	Layers:
	-	`sha256:2dd84ba6d0dc8f2dbc91d1c3801376368fac6ce954d8223488dbf50e4bd13a0e`  
		Last Modified: Wed, 25 Nov 2026 23:53:05 GMT  
		Size: 4.7 MB (4731762 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db737b7d13b9711b1fe29f5c042eaca3f9f6a48b492c68ad12a07c51e4228056`  
		Last Modified: Wed, 25 Nov 2026 23:53:04 GMT  
		Size: 41.2 KB (41163 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.4.10`

```console
$ docker pull kibana@sha256:95f53eea7fff6f3cd86d91b52a685ed2cae5934766bd21cb201097fd83d4ad17
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.10` - linux; amd64

```console
$ docker pull kibana@sha256:f9cc583e29080e658686d10b539654c4dad375dd105a6a1edf224235d77f1076
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **543.8 MB (543808726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6355394dd921ea8b030db9be514fdbdfb83df73b71e14f81020140cdecc8f296`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

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
# Wed, 25 Nov 2026 23:45:28 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 25 Nov 2026 23:45:28 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 25 Nov 2026 23:54:57 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 25 Nov 2026 23:54:57 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 25 Nov 2026 23:54:57 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 25 Nov 2026 23:54:58 GMT
RUN fc-cache -v # buildkit
# Wed, 25 Nov 2026 23:54:58 GMT
WORKDIR /usr/share/kibana
# Wed, 25 Nov 2026 23:54:58 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 25 Nov 2026 23:54:58 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 25 Nov 2026 23:54:58 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Nov 2026 23:54:58 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 25 Nov 2026 23:54:58 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 25 Nov 2026 23:54:58 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 25 Nov 2026 23:54:59 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 25 Nov 2026 23:54:59 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 25 Nov 2026 23:54:59 GMT
LABEL org.label-schema.build-date=2026-11-19T17:10:22.463Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a92eb90f4906ca1b8aaa355fa3d7fb242acc36ef org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.10 org.opencontainers.image.created=2026-11-19T17:10:22.463Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a92eb90f4906ca1b8aaa355fa3d7fb242acc36ef org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.10
# Wed, 25 Nov 2026 23:54:59 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.10 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 25 Nov 2026 23:55:00 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 25 Nov 2026 23:55:00 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 25 Nov 2026 23:55:00 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 25 Nov 2026 23:55:00 GMT
USER 1000
```

-	Layers:
	-	`sha256:42dd82cfea990337e85629f4800f64d42e5fca052db254cd3386d99051476958`  
		Last Modified: Fri, 20 Nov 2026 19:55:30 GMT  
		Size: 40.6 MB (40646846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb791d0e7028ade01cd38c57036ba5ed4093a053ba3ebd3a4336b4396b2b7c1f`  
		Last Modified: Wed, 25 Nov 2026 23:56:06 GMT  
		Size: 19.3 MB (19312417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bf8d3df180a14e0e1b73411ba00fe83331fb70fc2f887e9a907abdf2bb331d1`  
		Last Modified: Wed, 25 Nov 2026 23:56:13 GMT  
		Size: 467.3 MB (467291050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c40d2acb26fb2e87ff210b1b5dd9d4ef43baf758613e929f8ea26dd44774cdf0`  
		Last Modified: Wed, 25 Nov 2026 23:56:04 GMT  
		Size: 9.5 KB (9533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42d4002cb557d08d14bce66c4e558a9655570879a08562a17e0728a8a41b9f29`  
		Last Modified: Wed, 25 Nov 2026 23:56:05 GMT  
		Size: 16.5 MB (16460489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ba8196e9f703eb1767efa8917b6f4c8c4a3e5f7b6f9bb8ffb57dd1f0e094da0`  
		Last Modified: Wed, 25 Nov 2026 23:56:06 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2c040fc7a90110fa03002a9aa9f14ee34630ba81fe2bda6c7f551eaed44177`  
		Last Modified: Wed, 25 Nov 2026 23:56:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ccc7d09bde58a3dea6527aeb799de1bf7fde60ade4c0c776aa37fec5ed2e00f`  
		Last Modified: Wed, 25 Nov 2026 23:56:07 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6460e825e4b65f0c44f678edcf12b8b88f474dac925bb062703f1d90e42faa66`  
		Last Modified: Wed, 25 Nov 2026 23:56:07 GMT  
		Size: 4.9 KB (4929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84cf715a711e0306487ac0b84246befb7d5f7fa858771212892a14dc93cbe1c7`  
		Last Modified: Wed, 25 Nov 2026 23:56:08 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21dadeccf6bb151f364abe0fee0274d2d00b8a3106d7b0dd48017eb001636090`  
		Last Modified: Wed, 25 Nov 2026 23:56:08 GMT  
		Size: 74.5 KB (74524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bec78fe16157e463a63dd7438d2372ee4c66f1d7d973ad1762ccf6d9aa01599`  
		Last Modified: Wed, 25 Nov 2026 23:56:08 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c9966467059a1762d944e1cb45a928fcb3176c661f464a7d4a142cd6f14429e`  
		Last Modified: Wed, 25 Nov 2026 23:56:09 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.10` - unknown; unknown

```console
$ docker pull kibana@sha256:d3b2ead8a6915834d712cf195cbf502f6a028fed8ef639fa15665c50f8ffd116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5682247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0594395469dc5cb9b68ce7ec1dc770b4cc806208c98279cbe863646ed743993a`

```dockerfile
```

-	Layers:
	-	`sha256:74b6d5162be1ce93be5098cab1d4fa41efa958d60ee75b9658882289ff704788`  
		Last Modified: Wed, 25 Nov 2026 23:56:05 GMT  
		Size: 5.6 MB (5639014 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:272646fe649aa0e47eea04326a263c8ec49a502d541f5ae9113d3bd6f879b5a5`  
		Last Modified: Wed, 25 Nov 2026 23:56:04 GMT  
		Size: 43.2 KB (43233 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.10` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:de18fc9213e51bf421146b9ce8f154feed11480ed3d1ba4e22dbd6dadfdef320
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **554.8 MB (554762236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d321df0375ba2c5ab6cf07e1614412771a64362a8c60feb5e0d186b4168c22c`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

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
# Wed, 25 Nov 2026 23:45:40 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 25 Nov 2026 23:45:40 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 25 Nov 2026 23:53:07 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 25 Nov 2026 23:53:08 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 25 Nov 2026 23:53:08 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 25 Nov 2026 23:53:08 GMT
RUN fc-cache -v # buildkit
# Wed, 25 Nov 2026 23:53:08 GMT
WORKDIR /usr/share/kibana
# Wed, 25 Nov 2026 23:53:08 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 25 Nov 2026 23:53:08 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 25 Nov 2026 23:53:08 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Nov 2026 23:53:08 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 25 Nov 2026 23:53:08 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 25 Nov 2026 23:53:09 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 25 Nov 2026 23:53:11 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 25 Nov 2026 23:53:11 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 25 Nov 2026 23:53:11 GMT
LABEL org.label-schema.build-date=2026-11-19T17:10:22.463Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a92eb90f4906ca1b8aaa355fa3d7fb242acc36ef org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.10 org.opencontainers.image.created=2026-11-19T17:10:22.463Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a92eb90f4906ca1b8aaa355fa3d7fb242acc36ef org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.10
# Wed, 25 Nov 2026 23:53:11 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.10 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 25 Nov 2026 23:53:11 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 25 Nov 2026 23:53:11 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 25 Nov 2026 23:53:11 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 25 Nov 2026 23:53:11 GMT
USER 1000
```

-	Layers:
	-	`sha256:aba77be659b3ca4c2aca19e9a0e50914427b3b809b11dc864d16e2377d40e17a`  
		Last Modified: Fri, 20 Nov 2026 19:55:56 GMT  
		Size: 38.7 MB (38704070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84719d476e9a16de8de8ef4caa378c5de20d81c6e4b8890ba3cee939d4a4846a`  
		Last Modified: Wed, 25 Nov 2026 23:54:34 GMT  
		Size: 19.3 MB (19265415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0e9bc08cca2988135d9bfafdf1298dbe25c3d0ae37014fe932bd0aefb61df3d`  
		Last Modified: Wed, 25 Nov 2026 23:54:45 GMT  
		Size: 480.2 MB (480235861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d49a14d20390fac22998fee5ab7d819a20529dac705ed4b3061a1488b262ce4`  
		Last Modified: Wed, 25 Nov 2026 23:54:32 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:724be0fadc5ff78c1713d09c233c3520e761f3c30a8e4afd980f3d7b33b43202`  
		Last Modified: Wed, 25 Nov 2026 23:54:34 GMT  
		Size: 16.5 MB (16460484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bf6b4facca5bd6527ed636dbbfe449429c498be9f300e71cb6d5c61aaf7ef9b`  
		Last Modified: Wed, 25 Nov 2026 23:54:33 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23587e1229dab798809b24cce5ef44b722a1b1b804790af5972618c051b536d5`  
		Last Modified: Wed, 25 Nov 2026 23:54:35 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8997cd95156e1ea6d4bb5f1f1dac46d0fcfbf35e2cd47d7971906c3be0caf50d`  
		Last Modified: Wed, 25 Nov 2026 23:54:35 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69227925739fb4f0991589df08b231defb106a6f844a505b37fbfb56128b948f`  
		Last Modified: Wed, 25 Nov 2026 23:54:35 GMT  
		Size: 4.9 KB (4927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:285cfd7cf1e29216db4f219ca2c5db37811a9dddfc28b7c6f88a3f8c37a96b40`  
		Last Modified: Wed, 25 Nov 2026 23:54:36 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64d36c5a9a488c3abe6d7eccfea7c176ae7fc3785753ea17b2fef5f07d82aa3d`  
		Last Modified: Wed, 25 Nov 2026 23:54:36 GMT  
		Size: 73.4 KB (73449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ea5a2d4f2eec414f3a14deb2ae5214ff9bb3d57c8aa07768b0c42ceae1601f7`  
		Last Modified: Wed, 25 Nov 2026 23:54:36 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ff32160acb8501b72542106089c4d9690e270756ff2a2bcd17eb3f1ab27604e`  
		Last Modified: Wed, 25 Nov 2026 23:54:38 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.10` - unknown; unknown

```console
$ docker pull kibana@sha256:06ea29f05e4b72f989355d9b625d744230cff94e8431ef68f46b845520291307
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5679394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cab6701435d0e44f3d50c44d4eec4d376268969dfbd78dcb7f9196e6bef840d3`

```dockerfile
```

-	Layers:
	-	`sha256:ca20f76b7265d370901ac7eec7394641b30208797309a04e39631d1c14533048`  
		Last Modified: Wed, 25 Nov 2026 23:54:33 GMT  
		Size: 5.6 MB (5635904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3d960aa9095166d8c24bee8d7d5b612975edb19e1db162a4a16180aeab5121e`  
		Last Modified: Wed, 25 Nov 2026 23:54:32 GMT  
		Size: 43.5 KB (43490 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.5.7`

```console
$ docker pull kibana@sha256:efdfbd1b6788335dd9ec81fdaa146b9350580ff5732218448f1c320c14ba6a99
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.7` - linux; amd64

```console
$ docker pull kibana@sha256:97a821807b81e0826f9f45bf5e359e326079f8d9ccf84a98dc6cf94d940b2f77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **532.4 MB (532373625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41ee8e491f5e51f0c3cd790067c046cfc6a69745f411b08d5b7b33c5b2c92192`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

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
# Wed, 25 Nov 2026 23:46:02 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 25 Nov 2026 23:46:02 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 25 Nov 2026 23:53:51 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 25 Nov 2026 23:53:51 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 25 Nov 2026 23:53:51 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 25 Nov 2026 23:53:52 GMT
RUN fc-cache -v # buildkit
# Wed, 25 Nov 2026 23:53:52 GMT
WORKDIR /usr/share/kibana
# Wed, 25 Nov 2026 23:53:52 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 25 Nov 2026 23:53:52 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 25 Nov 2026 23:53:52 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Nov 2026 23:53:52 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 25 Nov 2026 23:53:52 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 25 Nov 2026 23:53:52 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 25 Nov 2026 23:53:53 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 25 Nov 2026 23:53:53 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 25 Nov 2026 23:53:53 GMT
LABEL org.label-schema.build-date=2026-11-18T23:19:31.569Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=283a70653526f064a884a69eb87ed6f1903a61f5 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.7 org.opencontainers.image.created=2026-11-18T23:19:31.569Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=283a70653526f064a884a69eb87ed6f1903a61f5 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.7
# Wed, 25 Nov 2026 23:53:53 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.7 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 25 Nov 2026 23:53:53 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 25 Nov 2026 23:53:53 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 25 Nov 2026 23:53:53 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 25 Nov 2026 23:53:53 GMT
USER 1000
```

-	Layers:
	-	`sha256:42dd82cfea990337e85629f4800f64d42e5fca052db254cd3386d99051476958`  
		Last Modified: Fri, 20 Nov 2026 19:55:30 GMT  
		Size: 40.6 MB (40646846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:806de84bdcb395dc81ae3ed9a9fac74573573a5ad3dff2b55ce530a3884ffe74`  
		Last Modified: Wed, 25 Nov 2026 23:55:06 GMT  
		Size: 19.3 MB (19312547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1770432f29fdbfc94d6dc22a9109184801e08b3a1e453022fb5c005d946c203`  
		Last Modified: Wed, 25 Nov 2026 23:55:17 GMT  
		Size: 455.9 MB (455855733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb1ac9db67a1cdb8574dd1946b656f821333d27854f9ec14848dd459014707c`  
		Last Modified: Wed, 25 Nov 2026 23:55:04 GMT  
		Size: 9.5 KB (9533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ee35a158690d10daa5f43fc9caa4f24e72667c5727e3cf98dcce4c0fe6eacd4`  
		Last Modified: Wed, 25 Nov 2026 23:55:05 GMT  
		Size: 16.5 MB (16460487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e997622d80c0eb8a6d1660d2c6b0544f3eed5b211b7a6c5bf48e76bd371fc94b`  
		Last Modified: Wed, 25 Nov 2026 23:55:05 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0c8454fb97ddb945a67f5bd171256588e00913b8fc3d6a322d7411bdf7b8f8`  
		Last Modified: Wed, 25 Nov 2026 23:55:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a40fd53051c29a559d39187c7da7a6dd148671165b182c2bf9c74d8732c60af`  
		Last Modified: Wed, 25 Nov 2026 23:55:07 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795882ee1055f47d9c7f9f8220bad510c9d98453b3f3a7a141e20f069b8c89c5`  
		Last Modified: Wed, 25 Nov 2026 23:55:07 GMT  
		Size: 5.0 KB (5010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:190882274ec56b78ff2088b0435652cae44b109f9af0692b5ca9564eb10dd263`  
		Last Modified: Wed, 25 Nov 2026 23:55:08 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6e232ee7071c0b3c17bc2d46c7ec617c1e59623d92c3e231fbccc837d19df1a`  
		Last Modified: Wed, 25 Nov 2026 23:55:09 GMT  
		Size: 74.5 KB (74525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807fc92b934be62fcafb552faf4fd36ec86558758071e255f41fb98b9949cf7e`  
		Last Modified: Wed, 25 Nov 2026 23:55:09 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6fb0b45f1927e047d9f2408aa711d0b4088b48d04aaec89067d53093c01e5b`  
		Last Modified: Wed, 25 Nov 2026 23:55:09 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.7` - unknown; unknown

```console
$ docker pull kibana@sha256:aaf9bbd1f5cda1936b8e9ca452f80e503baf04694eb3d38c79279bcd16287789
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5832664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792e2601bce4e1815fda733d2c650188a8be56f975b3a0dc912d270cdc276188`

```dockerfile
```

-	Layers:
	-	`sha256:65b777af1a673691438de9534f64bc1d8ee64a1a6ddbd001a2e314fc457f5a20`  
		Last Modified: Wed, 25 Nov 2026 23:55:05 GMT  
		Size: 5.8 MB (5789438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62c5deb926ee53f6c135f93df569225933e9126bb3e1e938f40fa0d8aa67556d`  
		Last Modified: Wed, 25 Nov 2026 23:55:04 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.7` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:0f03eaf347d105524bc7085f106f2cc2c47d2e0a2ba7a3e74eb67716e6f6779c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **543.3 MB (543300934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665c3e942e1202e6d22f64cd06cf067131eb12d256595509364947322b1f255c`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

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
# Wed, 25 Nov 2026 23:45:51 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 25 Nov 2026 23:45:51 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 25 Nov 2026 23:52:17 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 25 Nov 2026 23:52:17 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 25 Nov 2026 23:52:17 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 25 Nov 2026 23:52:17 GMT
RUN fc-cache -v # buildkit
# Wed, 25 Nov 2026 23:52:17 GMT
WORKDIR /usr/share/kibana
# Wed, 25 Nov 2026 23:52:17 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 25 Nov 2026 23:52:17 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 25 Nov 2026 23:52:17 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Nov 2026 23:52:17 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 25 Nov 2026 23:52:18 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 25 Nov 2026 23:52:18 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 25 Nov 2026 23:52:19 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 25 Nov 2026 23:52:19 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 25 Nov 2026 23:52:19 GMT
LABEL org.label-schema.build-date=2026-11-18T23:19:31.569Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=283a70653526f064a884a69eb87ed6f1903a61f5 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.7 org.opencontainers.image.created=2026-11-18T23:19:31.569Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=283a70653526f064a884a69eb87ed6f1903a61f5 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.7
# Wed, 25 Nov 2026 23:52:19 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.7 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 25 Nov 2026 23:52:19 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 25 Nov 2026 23:52:19 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 25 Nov 2026 23:52:19 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 25 Nov 2026 23:52:19 GMT
USER 1000
```

-	Layers:
	-	`sha256:aba77be659b3ca4c2aca19e9a0e50914427b3b809b11dc864d16e2377d40e17a`  
		Last Modified: Fri, 20 Nov 2026 19:55:56 GMT  
		Size: 38.7 MB (38704070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a51f8b198700462a789aed9a210abefd0eee0a00c17cf9475156e9f632b19a`  
		Last Modified: Wed, 25 Nov 2026 23:53:35 GMT  
		Size: 19.3 MB (19265543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bccdd807edaa3d454c95eca914bf3db74dea806ccc5b5b7f374c18b736506a`  
		Last Modified: Wed, 25 Nov 2026 23:53:44 GMT  
		Size: 468.8 MB (468774339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7057757e62bf34dedb75f0b3c45c46a6c408db46b878612608aea5182d274902`  
		Last Modified: Wed, 25 Nov 2026 23:53:34 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba9a65475a8f20a6d83d70d39a52ecd6d2a389eceb55e6dadd370655279cdf93`  
		Last Modified: Wed, 25 Nov 2026 23:53:35 GMT  
		Size: 16.5 MB (16460489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f74a09d1f9c230d3142c98b74938e53a01ae168217b72ad5d61078f1cb239b6`  
		Last Modified: Wed, 25 Nov 2026 23:53:35 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b99a7aa78939e4149d41642b7ff0a341c7c260f2a4712ee5439a1db5ae8f1c1d`  
		Last Modified: Wed, 25 Nov 2026 23:53:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27a4ae90f373b6034034b578e0e87d18c16ec7cf868056817698926323aeef2a`  
		Last Modified: Wed, 25 Nov 2026 23:53:37 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe86beef4f83d040b8a8554b1d5199ce564d6ecba568beb5633a6d809df33b0`  
		Last Modified: Wed, 25 Nov 2026 23:53:37 GMT  
		Size: 5.0 KB (5011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bef1a0217b7b553453be20e178a51b7b8b8321ff7fe8e32284a0ed890b40782`  
		Last Modified: Wed, 25 Nov 2026 23:53:38 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29c142868d03ae4f67329122004695e21021a8f0ce343fb130108e9767506bf5`  
		Last Modified: Wed, 25 Nov 2026 23:53:38 GMT  
		Size: 73.4 KB (73448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1696e2718af7717e62ebab8f3cdc5c46a3bafcaa7715816f37ccecc42b15dd1f`  
		Last Modified: Wed, 25 Nov 2026 23:53:38 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b0340e795882985cb2cb73e8f757426b37bb3582534cca30eccffacd5902e62`  
		Last Modified: Wed, 25 Nov 2026 23:53:39 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.7` - unknown; unknown

```console
$ docker pull kibana@sha256:13154476c2be1e1503dcec3484559f8a456a6c412898e68e8483a755f530bc6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5829811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03e5edf4b74a9c129ace978f4c9ebb67b977448c5c1925367d8feddc240a4210`

```dockerfile
```

-	Layers:
	-	`sha256:d04c85c2153cbbe8ba9c9cc3ee7634478cebe0fcfce961e5f2448eaaa7e3500b`  
		Last Modified: Wed, 25 Nov 2026 23:53:35 GMT  
		Size: 5.8 MB (5786328 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45d8a42d0dfbb35249e6936f7bbb4b6ff77aa9c812ebbaa653e5f4c14ce41a2b`  
		Last Modified: Wed, 25 Nov 2026 23:53:34 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
