<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:8.19.25`](#kibana81925)
-	[`kibana:9.4.8`](#kibana948)
-	[`kibana:9.5.5`](#kibana955)

## `kibana:8.19.25`

```console
$ docker pull kibana@sha256:f04f765b84827f3e418fc6cc8d652aa1ec81422b9309a949656fd817371b44d6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:8.19.25` - linux; amd64

```console
$ docker pull kibana@sha256:37cc52b44e0c6e2a3b58b9644d4ba382f251cc20601b6a85a1f94ec22838d4f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.7 MB (454732512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad52c0c54d89284405af7c3e415ddafb36d6e0c339ec701001521892127b71a2`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Tue, 10 Nov 2026 20:14:12 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 10 Nov 2026 20:14:12 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 20:22:30 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 10 Nov 2026 20:22:30 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 10 Nov 2026 20:22:30 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 10 Nov 2026 20:22:30 GMT
RUN fc-cache -v # buildkit
# Tue, 10 Nov 2026 20:22:30 GMT
WORKDIR /usr/share/kibana
# Tue, 10 Nov 2026 20:22:30 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 10 Nov 2026 20:22:30 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 10 Nov 2026 20:22:30 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 20:22:31 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 10 Nov 2026 20:22:31 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 20:22:31 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 10 Nov 2026 20:22:32 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 10 Nov 2026 20:22:32 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 10 Nov 2026 20:22:32 GMT
LABEL org.label-schema.build-date=2026-11-05T11:06:44.382Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=3544eac4694b201b2dfb2ece54b8d28c08389679 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.25 org.opencontainers.image.created=2026-11-05T11:06:44.382Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=3544eac4694b201b2dfb2ece54b8d28c08389679 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.25
# Tue, 10 Nov 2026 20:22:32 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 10 Nov 2026 20:22:32 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 10 Nov 2026 20:22:32 GMT
USER 1000
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe0fc91bc96e6a81a1fa481c6b9d49143b0c2692ebb83ea0785cbc9991312cd6`  
		Last Modified: Tue, 10 Nov 2026 20:23:29 GMT  
		Size: 9.4 MB (9412097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649df3b3bc55542a190849ae1e6775ec9c9f43a9b05d4b88d4b48243babf35f9`  
		Last Modified: Tue, 10 Nov 2026 20:23:37 GMT  
		Size: 398.9 MB (398908802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20063e771ca89b96fdbf7f57e64df49404f38e285217d0529d406201c77560fa`  
		Last Modified: Tue, 10 Nov 2026 20:23:28 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df12ca41a7aba371c7f21b1f9af187bd0ff05ee8d58049844d84d709374db1c`  
		Last Modified: Tue, 10 Nov 2026 20:23:29 GMT  
		Size: 16.5 MB (16460486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b251ecd2f428791c00f66233bed00c2fcf00b3fb3ce544f43b435343844017`  
		Last Modified: Tue, 10 Nov 2026 20:23:30 GMT  
		Size: 5.2 KB (5243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:549b5ccc3ccf4feb9e8033b245ee25f016fa56ebb59cf44aca71ab7ac94c3365`  
		Last Modified: Tue, 10 Nov 2026 20:23:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1dc0e04b590bab5416e8b0624f102de4b0c8834ea54462fc0ec7b3561fbf3a`  
		Last Modified: Tue, 10 Nov 2026 20:23:31 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c935acdef90ff1c40dae307dc76d1992fc7b65586608dc70bed9b8062885f9`  
		Last Modified: Tue, 10 Nov 2026 20:23:31 GMT  
		Size: 4.8 KB (4822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a1efe4224a37c40b5e83209c52825f3bce6964109fe3d4e633614365cce5c17`  
		Last Modified: Tue, 10 Nov 2026 20:23:32 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:260845f48bf87333496702b03c5df390aa7bc97134b020ad026ada7b7c60d85d`  
		Last Modified: Tue, 10 Nov 2026 20:23:32 GMT  
		Size: 161.7 KB (161739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b21839f8528149e30f923ca13d7e0dc3027cc2fc6e88f885c8db604cdeb18c`  
		Last Modified: Tue, 10 Nov 2026 20:23:32 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.25` - unknown; unknown

```console
$ docker pull kibana@sha256:38cc5bc69a4741fff1148fd705bb04529c280bd28bad7187582ff0de474ef2a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4760241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:840d9998b1b0174525450e1cb0f40d272a7364d5d633713a3dab25db350853b4`

```dockerfile
```

-	Layers:
	-	`sha256:df7354a1572ca3c58b2b1633876956ea7f81cc8cd3c7d4085e73ca4ec6403968`  
		Last Modified: Tue, 10 Nov 2026 20:23:28 GMT  
		Size: 4.7 MB (4719326 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ba48ad4ca748a8224b4924892bb7a4995290cefb9dbe9b817de8070d044864a`  
		Last Modified: Tue, 10 Nov 2026 20:23:28 GMT  
		Size: 40.9 KB (40915 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:8.19.25` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:e624c2f02459de91502b19adcec12ddff23dabb61387b1ebe425cd573466defe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.9 MB (466874686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1207c6f320244155c6406066f7a539e604286ba148f2d9b4ad70d2555d819fd7`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Tue, 10 Nov 2026 20:14:48 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 10 Nov 2026 20:14:48 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 20:21:31 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 10 Nov 2026 20:21:32 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 10 Nov 2026 20:21:32 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 10 Nov 2026 20:21:32 GMT
RUN fc-cache -v # buildkit
# Tue, 10 Nov 2026 20:21:32 GMT
WORKDIR /usr/share/kibana
# Tue, 10 Nov 2026 20:21:32 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 10 Nov 2026 20:21:32 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 10 Nov 2026 20:21:32 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 20:21:32 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 10 Nov 2026 20:21:32 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 20:21:33 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 10 Nov 2026 20:21:34 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 10 Nov 2026 20:21:34 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 10 Nov 2026 20:21:34 GMT
LABEL org.label-schema.build-date=2026-11-05T11:06:44.382Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=3544eac4694b201b2dfb2ece54b8d28c08389679 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.25 org.opencontainers.image.created=2026-11-05T11:06:44.382Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=3544eac4694b201b2dfb2ece54b8d28c08389679 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.25
# Tue, 10 Nov 2026 20:21:34 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 10 Nov 2026 20:21:34 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 10 Nov 2026 20:21:34 GMT
USER 1000
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bb446e5bb7bd77323a8478071409647b1ec3a438447bec56b974bfdc2f8de2c`  
		Last Modified: Tue, 10 Nov 2026 20:22:41 GMT  
		Size: 9.4 MB (9438146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304476f8bf1ef9de20d5753622d47754877ac1da7fe6bf007e0bd6331364840d`  
		Last Modified: Tue, 10 Nov 2026 20:22:48 GMT  
		Size: 411.9 MB (411856314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0483bd34c83971a1f6d1421c7e33a343ba1151eb6f42ddbab693ba2d70ff991f`  
		Last Modified: Tue, 10 Nov 2026 20:22:40 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2dd67ee85d89936a180e18b14c27daf81dc8376d59dad9fde80dc1dc3ebd49`  
		Last Modified: Tue, 10 Nov 2026 20:22:41 GMT  
		Size: 16.5 MB (16460495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33bd16ae22481b4990d0bfc9cad3f8a768ad8e26b6bb6de9c5bd73f8a057d8a0`  
		Last Modified: Tue, 10 Nov 2026 20:22:41 GMT  
		Size: 5.2 KB (5241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c2e5ed94890b8ed964b58ea8df639dcc4367e2e8294917773430527c4eb7991`  
		Last Modified: Tue, 10 Nov 2026 20:22:42 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d6897a9753aba264d76c3653698f944e9652468319d39b2a0dc1c9ee009a18`  
		Last Modified: Tue, 10 Nov 2026 20:22:43 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ace8c0b67c31a6e910fef96859a96e603ba5e6e851ea54d6cbd90772f0e3361`  
		Last Modified: Tue, 10 Nov 2026 20:22:43 GMT  
		Size: 4.8 KB (4823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742fd1455ea6373f7d486b9cc490e1f1cc0ed742ec7cd06218f8af5042af7edd`  
		Last Modified: Tue, 10 Nov 2026 20:22:44 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5315279738eddfc5bbf67999e323b9a82946841b0c51d47e30734ab14f80b2d8`  
		Last Modified: Tue, 10 Nov 2026 20:22:44 GMT  
		Size: 158.3 KB (158253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446316f191c1a06b613c6db435d1167eb446f981b9a2265d452631b6714978b3`  
		Last Modified: Tue, 10 Nov 2026 20:22:44 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.25` - unknown; unknown

```console
$ docker pull kibana@sha256:c3671672d44a1181d11224bb5fdbe0735417a4967cd7832278b7518785b63d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4761553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c54480e1a925f9d7535447feb7ec38a33dc5afe5d86a5ae18f0caf290e8a72d`

```dockerfile
```

-	Layers:
	-	`sha256:e31ee0a545df1280b371ac1478164fff35b69ca32da5d1b4b472d4a63e2faf1a`  
		Last Modified: Tue, 10 Nov 2026 20:22:41 GMT  
		Size: 4.7 MB (4720390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ce2896a3904b5a504a7ea63f124c8ba8fe39de4af637a5a36ec1e2ed6d7131e`  
		Last Modified: Tue, 10 Nov 2026 20:22:40 GMT  
		Size: 41.2 KB (41163 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.4.8`

```console
$ docker pull kibana@sha256:372b65aa3f858812dd49d20fe2032710cf126b967aa65b8294da63c368317d68
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.8` - linux; amd64

```console
$ docker pull kibana@sha256:2f04a15df066252d8238b01565ee65965593853e5c085e23ab8789fa6c3ae390
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **545.6 MB (545633644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79ac33c6d1e87dc074732747d7d4fba39b26897ebbd38354a3193cd3489f17b2`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:08:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 09 Nov 2026 01:08:05 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 01:08:05 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 09 Nov 2026 01:08:05 GMT
ENV container oci
# Mon, 09 Nov 2026 01:08:06 GMT
COPY dir:9eb7fe1483abb86fafcd0fbf84cfecbc7c9615d954a2774b27c93dfb190ebd65 in /      
# Mon, 09 Nov 2026 01:08:06 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 01:08:06 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 01:08:07 GMT
COPY dir:113d0492bea3970cfccd46af4e646444dcba2306c37393f7867d936019c7530b in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 01:08:07 GMT
COPY dir:113d0492bea3970cfccd46af4e646444dcba2306c37393f7867d936019c7530b in /root/buildinfo/      
# Mon, 09 Nov 2026 01:08:07 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T01:06:50Z" "org.opencontainers.image.revision"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "build-date"="2026-11-09T01:06:50Z" "architecture"="x86_64" "vcs-ref"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "vcs-type"="git" "release"="1794186349"org.opencontainers.image.created=2026-11-09T01:06:50Z,org.opencontainers.image.revision=a318bccac4792b0ffc2c8d2a7b700e69ba665079
# Tue, 10 Nov 2026 21:48:58 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 10 Nov 2026 21:48:58 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:58:18 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 10 Nov 2026 21:58:19 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 10 Nov 2026 21:58:19 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 10 Nov 2026 21:58:19 GMT
RUN fc-cache -v # buildkit
# Tue, 10 Nov 2026 21:58:19 GMT
WORKDIR /usr/share/kibana
# Tue, 10 Nov 2026 21:58:19 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 10 Nov 2026 21:58:19 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 10 Nov 2026 21:58:19 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:58:19 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 10 Nov 2026 21:58:19 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:58:20 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 10 Nov 2026 21:58:21 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 10 Nov 2026 21:58:21 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 10 Nov 2026 21:58:21 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Tue, 10 Nov 2026 21:58:21 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 10 Nov 2026 21:58:21 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 10 Nov 2026 21:58:21 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 10 Nov 2026 21:58:21 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 10 Nov 2026 21:58:21 GMT
USER 1000
```

-	Layers:
	-	`sha256:2789facb1a5b2775fea7adde25fbe9982aa5639bcda32a3a035159eb54c6ad35`  
		Last Modified: Mon, 09 Nov 2026 03:11:14 GMT  
		Size: 40.7 MB (40682185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0855eefc3c1f908807cccbf9e31087a28ce267ad8f390bddeba36b828a75f836`  
		Last Modified: Tue, 10 Nov 2026 21:59:28 GMT  
		Size: 19.3 MB (19312796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a2d34abd76b2744e17fe8bf40d19a1f667fb1c05b87792e2c0d827798fd8b6c`  
		Last Modified: Tue, 10 Nov 2026 21:59:36 GMT  
		Size: 469.1 MB (469080247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38be944efe327092e9c2bfe5a1b52cda4bbb1c4aac8e9f427d85ebb52e8014b1`  
		Last Modified: Tue, 10 Nov 2026 21:59:27 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f14c07cbc3caded521ab48682aac600d4fe9179a479fa9bf70fd0f292c9fefb`  
		Last Modified: Tue, 10 Nov 2026 21:59:28 GMT  
		Size: 16.5 MB (16460478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab066e253bb011e69e8d0dc7adebf49ae356edc4c2840f91b90c9a6a4ec45aa5`  
		Last Modified: Tue, 10 Nov 2026 21:59:28 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc6529def9304bb8999951edf56e4461262675fae5aed4dca9954d27cfb52c7c`  
		Last Modified: Tue, 10 Nov 2026 21:59:29 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5234da46617de4adb86582acca3c152dfc0119de1a7e2c49d9967a6e949ea60`  
		Last Modified: Tue, 10 Nov 2026 21:59:29 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b00c070e96abe3ab8b35ad8e015aa41dac55d9bf7a7ed2b7ed75b7a6b77e3049`  
		Last Modified: Tue, 10 Nov 2026 21:59:30 GMT  
		Size: 4.9 KB (4931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9f852e72d86c111b47d84fc21e239778ad6ca338b96360d4c131bf1efc7301a`  
		Last Modified: Tue, 10 Nov 2026 21:59:31 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42ae252c3a87c1aa078364eb09bc786d08ff63cab095ac3112d9d60e0e3ad010`  
		Last Modified: Tue, 10 Nov 2026 21:59:31 GMT  
		Size: 74.5 KB (74546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0242997e054d92c25cf479a555181dd3e22c87cffe346953bea731f844bbe31`  
		Last Modified: Tue, 10 Nov 2026 21:59:31 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:743ed62853885fbdccb6e53bc582a4448d1b0d94d3ecb53fc5a382dc8c232227`  
		Last Modified: Tue, 10 Nov 2026 21:59:32 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:e3fe86b94343ee73c1ca49f30bdbe97c5bd0dae4602f71f0b0cb0f7815e38690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5901771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dacb4193cc53620534e842997cffac3e43ffcbff3b5d1e081c8029602dde7be0`

```dockerfile
```

-	Layers:
	-	`sha256:2de80a6329c3823e9c69c57ecbf2a404ea18eeb344157ca12f8493288f6b8770`  
		Last Modified: Tue, 10 Nov 2026 21:59:27 GMT  
		Size: 5.9 MB (5858545 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fd03dd1cda41c8f6d54f63609e746833ffd3733a87f04bcdcf57b70e1ae02ba`  
		Last Modified: Tue, 10 Nov 2026 21:59:27 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.8` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:20360b84da196456e0c55483ae46861984c81e50d06ee83d676675411c9a2639
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **557.1 MB (557067072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f82cb47fdeb08ad1150b87ba0fff2ed645cb91affab2e540a61d444a22d93aa6`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 09 Nov 2026 01:09:23 GMT
ENV container oci
# Mon, 09 Nov 2026 01:09:24 GMT
COPY dir:c64a3fab6fbd9c83c22b7c3160855229a2f77503d8810a44260c85bbadecd08b in /      
# Mon, 09 Nov 2026 01:09:25 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 01:09:25 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 01:09:25 GMT
COPY dir:a7b9fc1ec276b470b91ac7f5d0116cd6e7f22c97d5e274215635ac5d5a214745 in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 01:09:26 GMT
COPY dir:a7b9fc1ec276b470b91ac7f5d0116cd6e7f22c97d5e274215635ac5d5a214745 in /root/buildinfo/      
# Mon, 09 Nov 2026 01:09:26 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T01:08:53Z" "org.opencontainers.image.revision"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "build-date"="2026-11-09T01:08:53Z" "architecture"="aarch64" "vcs-ref"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "vcs-type"="git" "release"="1794186349"org.opencontainers.image.created=2026-11-09T01:08:53Z,org.opencontainers.image.revision=a318bccac4792b0ffc2c8d2a7b700e69ba665079
# Tue, 10 Nov 2026 21:51:59 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 10 Nov 2026 21:51:59 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 10 Nov 2026 22:00:00 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 10 Nov 2026 22:00:01 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 10 Nov 2026 22:00:01 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 10 Nov 2026 22:00:01 GMT
RUN fc-cache -v # buildkit
# Tue, 10 Nov 2026 22:00:01 GMT
WORKDIR /usr/share/kibana
# Tue, 10 Nov 2026 22:00:01 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 10 Nov 2026 22:00:01 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 10 Nov 2026 22:00:01 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 22:00:01 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 10 Nov 2026 22:00:01 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 22:00:02 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 10 Nov 2026 22:00:03 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 10 Nov 2026 22:00:04 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 10 Nov 2026 22:00:04 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Tue, 10 Nov 2026 22:00:04 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 10 Nov 2026 22:00:04 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 10 Nov 2026 22:00:04 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 10 Nov 2026 22:00:04 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 10 Nov 2026 22:00:04 GMT
USER 1000
```

-	Layers:
	-	`sha256:f800754b2b30fbd746290877c9ebb909e5c3e306e231c43a66c23980b19aedc2`  
		Last Modified: Mon, 09 Nov 2026 06:13:13 GMT  
		Size: 38.7 MB (38728868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2440394d7e5afb509aa5f98823beb6870a6bc9728bc4483c2ad02b60aa3786e6`  
		Last Modified: Tue, 10 Nov 2026 22:01:27 GMT  
		Size: 19.3 MB (19256983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d808a9d7b8bcf94e1d4138a15f4c62bee4fea3cc1630eb5daddbed80f20ea1`  
		Last Modified: Tue, 10 Nov 2026 22:01:36 GMT  
		Size: 482.5 MB (482524333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ac3225a15b959d1db7dd9e5bcfe76c5eccaa936b2aa90317bd08ec84eda8c46`  
		Last Modified: Tue, 10 Nov 2026 22:01:26 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd6ce09ebfd443bfad4c76073b026839440651f53b78dd6d3ca21162ba50c89f`  
		Last Modified: Tue, 10 Nov 2026 22:01:27 GMT  
		Size: 16.5 MB (16460475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:222335f16ec99abcee1d992effe1265bb6ed218261872f1f1ea6c01d35272fd1`  
		Last Modified: Tue, 10 Nov 2026 22:01:27 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec1ea0736be1d0c2dcafb07ff5821b55856a039f6dc88952f326844dac475db`  
		Last Modified: Tue, 10 Nov 2026 22:01:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b36d8af82f87e19092f0482f035db0a82f2f37390c3242d19424575610fb295a`  
		Last Modified: Tue, 10 Nov 2026 22:01:29 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adfa07f896baacbb42ede8467fe28aa49c5737abb70822481debbdccfc246d56`  
		Last Modified: Tue, 10 Nov 2026 22:01:30 GMT  
		Size: 4.9 KB (4926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7501967280aebd7f3613212f2ff36770399f44c0370aeb4791c7a6adb6e0e694`  
		Last Modified: Tue, 10 Nov 2026 22:01:30 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3ea96181face8aac28c8dc005829fde1fbfd6d5ac2397aa8cccbd359a07d9a8`  
		Last Modified: Tue, 10 Nov 2026 22:01:30 GMT  
		Size: 73.5 KB (73450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec4ad19743e78cc6ee0e788bd5e26a87e82fb298b75c26429df4b5eaae4f0cf`  
		Last Modified: Tue, 10 Nov 2026 22:01:31 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:904942eb08aa2fbc3476b31dc72144b4283238f216040571ea390767f03794b4`  
		Last Modified: Tue, 10 Nov 2026 22:01:31 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:20e559a015e132ae3a052c55d01b47e309583312b578fc3c2a60a1b307f1808d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5898918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad1ac3fc7081e89f934df0f535f2de45a7eff53df5de369900b368628b3b6b3d`

```dockerfile
```

-	Layers:
	-	`sha256:201adfd47a61cc266e0d8c1e3c54c802aecaaf10855f98f80d68bb59f5dc2d3a`  
		Last Modified: Tue, 10 Nov 2026 22:01:26 GMT  
		Size: 5.9 MB (5855435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f59ffeee54caf6bada1fc5a02146f20c3c074349e3a7d24b1b9aa80ec1af468`  
		Last Modified: Tue, 10 Nov 2026 22:01:26 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.5.5`

```console
$ docker pull kibana@sha256:b833821b8c42609a227b0031cb37ea366d8df76d689120bdf344bc21982f3fc4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.5` - linux; amd64

```console
$ docker pull kibana@sha256:fb9137ace7c4f58efe99c7e7e82b2c3873222b64d5cb0abba96b01b6e7dc5d0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.3 MB (537254190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ebef07b24c402516906b00afe8f7cf2571f67172d19b0f2d5c773fc4598843`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:08:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 09 Nov 2026 01:08:05 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 01:08:05 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 09 Nov 2026 01:08:05 GMT
ENV container oci
# Mon, 09 Nov 2026 01:08:06 GMT
COPY dir:9eb7fe1483abb86fafcd0fbf84cfecbc7c9615d954a2774b27c93dfb190ebd65 in /      
# Mon, 09 Nov 2026 01:08:06 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 01:08:06 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 01:08:07 GMT
COPY dir:113d0492bea3970cfccd46af4e646444dcba2306c37393f7867d936019c7530b in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 01:08:07 GMT
COPY dir:113d0492bea3970cfccd46af4e646444dcba2306c37393f7867d936019c7530b in /root/buildinfo/      
# Mon, 09 Nov 2026 01:08:07 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T01:06:50Z" "org.opencontainers.image.revision"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "build-date"="2026-11-09T01:06:50Z" "architecture"="x86_64" "vcs-ref"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "vcs-type"="git" "release"="1794186349"org.opencontainers.image.created=2026-11-09T01:06:50Z,org.opencontainers.image.revision=a318bccac4792b0ffc2c8d2a7b700e69ba665079
# Tue, 10 Nov 2026 21:49:00 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 10 Nov 2026 21:49:00 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:56:46 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 10 Nov 2026 21:56:46 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 10 Nov 2026 21:56:46 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 10 Nov 2026 21:56:47 GMT
RUN fc-cache -v # buildkit
# Tue, 10 Nov 2026 21:56:47 GMT
WORKDIR /usr/share/kibana
# Tue, 10 Nov 2026 21:56:47 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 10 Nov 2026 21:56:47 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 10 Nov 2026 21:56:47 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:56:47 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 10 Nov 2026 21:56:47 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:56:48 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 10 Nov 2026 21:56:48 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 10 Nov 2026 21:56:48 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 10 Nov 2026 21:56:48 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Tue, 10 Nov 2026 21:56:48 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 10 Nov 2026 21:56:49 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 10 Nov 2026 21:56:49 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 10 Nov 2026 21:56:49 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 10 Nov 2026 21:56:49 GMT
USER 1000
```

-	Layers:
	-	`sha256:2789facb1a5b2775fea7adde25fbe9982aa5639bcda32a3a035159eb54c6ad35`  
		Last Modified: Mon, 09 Nov 2026 03:11:14 GMT  
		Size: 40.7 MB (40682185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b47b522bae7c130a155ba45e1877798636f81d44a7c4535e4aa517b8d7286b2`  
		Last Modified: Tue, 10 Nov 2026 21:57:56 GMT  
		Size: 19.3 MB (19312780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ce00f3d8037c30e235ce846ef2cda7d7aa80dff5382ef3b87dce0b759c72e3`  
		Last Modified: Tue, 10 Nov 2026 21:58:04 GMT  
		Size: 460.7 MB (460700722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb997de1c5275e376db520bea85aacf028619e4116f32bbf07243d8b945f2abd`  
		Last Modified: Tue, 10 Nov 2026 21:57:55 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42330ed4bb9048322df78762860fcf3b2dc51be8c13ad10474d34a3d33022be2`  
		Last Modified: Tue, 10 Nov 2026 21:57:56 GMT  
		Size: 16.5 MB (16460493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21bb1942547b32f306348dc300edfc46f246f59664cf7e1509774bae1ccec28a`  
		Last Modified: Tue, 10 Nov 2026 21:57:56 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:114252bd821e358d82184e59e902338497f91d91263eaf26a4cff45824addbfe`  
		Last Modified: Tue, 10 Nov 2026 21:57:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5de6d0570c24ca3b49841c3977060610f02fbf84310afce67159a30316cffcd`  
		Last Modified: Tue, 10 Nov 2026 21:57:57 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1e21e2a7dfb06e4947690ee42cc7eca10f4ecfaf82b9eed9295bf1c80b24c0`  
		Last Modified: Tue, 10 Nov 2026 21:57:58 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef3d2f4f8ce9844a9a35bc99021945c1b1cd5c785bd61e38ca5dfabe2ee93da2`  
		Last Modified: Tue, 10 Nov 2026 21:57:59 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0981b2fc05675769b42fd5dfc71d752eb059369e180efeae3c9c9931fcf1a7df`  
		Last Modified: Tue, 10 Nov 2026 21:57:59 GMT  
		Size: 74.5 KB (74547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:380d6190d5f2dd5fbdf796deeab619a423711a0c00117630a803a9d41dae305e`  
		Last Modified: Tue, 10 Nov 2026 21:57:59 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa93f3d90394719868e4c4199b9ee6b193bc08e1af6064cb3c3ef4af09a3827`  
		Last Modified: Tue, 10 Nov 2026 21:58:00 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:a24839671a49bb929b22ae6b8db84696b94b2a16623a5e7922e33b14800d43da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6121836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:445da66fde6e4e52535b8e8289fc936df5fcaeea3bb74ec377f4f7d428be05f0`

```dockerfile
```

-	Layers:
	-	`sha256:b8f03bd2af1b243d0da71ad3c66d56aaf2c83c2a5adaa89f6915adf02a6fd196`  
		Last Modified: Tue, 10 Nov 2026 21:57:55 GMT  
		Size: 6.1 MB (6078610 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a88b68773a34d06f6d6c1984ace6ead067fd8a1102e3422b80c813c6a99938e7`  
		Last Modified: Tue, 10 Nov 2026 21:57:55 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.5` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:c85d498882aa0e4db6f8bcfa3579547ea83534a73814320409a6c5414148dc34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **548.7 MB (548706723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2fd4cace68f1b79dbec47f90899d6aeff06906cd588ece5020b7bc256b211c`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 01:09:23 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 09 Nov 2026 01:09:23 GMT
ENV container oci
# Mon, 09 Nov 2026 01:09:24 GMT
COPY dir:c64a3fab6fbd9c83c22b7c3160855229a2f77503d8810a44260c85bbadecd08b in /      
# Mon, 09 Nov 2026 01:09:25 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 01:09:25 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 01:09:25 GMT
COPY dir:a7b9fc1ec276b470b91ac7f5d0116cd6e7f22c97d5e274215635ac5d5a214745 in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 01:09:26 GMT
COPY dir:a7b9fc1ec276b470b91ac7f5d0116cd6e7f22c97d5e274215635ac5d5a214745 in /root/buildinfo/      
# Mon, 09 Nov 2026 01:09:26 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T01:08:53Z" "org.opencontainers.image.revision"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "build-date"="2026-11-09T01:08:53Z" "architecture"="aarch64" "vcs-ref"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "vcs-type"="git" "release"="1794186349"org.opencontainers.image.created=2026-11-09T01:08:53Z,org.opencontainers.image.revision=a318bccac4792b0ffc2c8d2a7b700e69ba665079
# Tue, 10 Nov 2026 21:52:04 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 10 Nov 2026 21:52:04 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:58:26 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 10 Nov 2026 21:58:27 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 10 Nov 2026 21:58:27 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 10 Nov 2026 21:58:27 GMT
RUN fc-cache -v # buildkit
# Tue, 10 Nov 2026 21:58:27 GMT
WORKDIR /usr/share/kibana
# Tue, 10 Nov 2026 21:58:28 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 10 Nov 2026 21:58:28 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 10 Nov 2026 21:58:28 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:58:28 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 10 Nov 2026 21:58:28 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:58:28 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 10 Nov 2026 21:58:29 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 10 Nov 2026 21:58:30 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 10 Nov 2026 21:58:30 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Tue, 10 Nov 2026 21:58:30 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 10 Nov 2026 21:58:30 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 10 Nov 2026 21:58:30 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 10 Nov 2026 21:58:30 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 10 Nov 2026 21:58:30 GMT
USER 1000
```

-	Layers:
	-	`sha256:f800754b2b30fbd746290877c9ebb909e5c3e306e231c43a66c23980b19aedc2`  
		Last Modified: Mon, 09 Nov 2026 06:13:13 GMT  
		Size: 38.7 MB (38728868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e1b1d085907b42c97781d92db2174f0373faf40e8ce217b498bbe3739f847c`  
		Last Modified: Tue, 10 Nov 2026 21:59:47 GMT  
		Size: 19.3 MB (19256894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58666aa338f4154cffbe40913e6bfcedd2cebce22b02cdaae1001f6d2ba55ab5`  
		Last Modified: Tue, 10 Nov 2026 21:59:55 GMT  
		Size: 474.2 MB (474163986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81d88a2981457ae65a9b35524f2e7bc7634f9a7370b6ea7227380c47a7cc25b7`  
		Last Modified: Tue, 10 Nov 2026 21:59:46 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ecb1df36210d22b125640649888fc9ec036d0b46f6d062b5b195f3e35204d90`  
		Last Modified: Tue, 10 Nov 2026 21:59:47 GMT  
		Size: 16.5 MB (16460489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da37b48619ca8b9de7d701bb43be3052110c34e1c6bd7118edf9fd0b79ce6e95`  
		Last Modified: Tue, 10 Nov 2026 21:59:47 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f760cba528d4cb65c23d6f3736a79c5ba53b7f08dfcaa717404731a434afbf0`  
		Last Modified: Tue, 10 Nov 2026 21:59:48 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3017b4cc869fd722797bb96b2953648ffe4c72d63adb52113d7d168cc13a15dd`  
		Last Modified: Tue, 10 Nov 2026 21:59:49 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0515087c403be1800eac321da9fbd2348385e54737208464b59269fd982c1947`  
		Last Modified: Tue, 10 Nov 2026 21:59:49 GMT  
		Size: 5.0 KB (4997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c1575204843d1bd22e9051c1e35b178530bc5df9f830dffc962002e36eeee1`  
		Last Modified: Tue, 10 Nov 2026 21:59:50 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc9c249215e9880cc19303758b109ee64ab76b0d67b1b2141ba2486be316e6be`  
		Last Modified: Tue, 10 Nov 2026 21:59:50 GMT  
		Size: 73.5 KB (73451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:957225b720301d0548017b394ea1559ec08e38e5106ff10025fcc75056bf4919`  
		Last Modified: Tue, 10 Nov 2026 21:59:50 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3ac2285771f1aa53371f610d5b6d5fb76df2d6f424eb7863979547865a27b7f`  
		Last Modified: Tue, 10 Nov 2026 21:59:51 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:c4e9f16cc6eb53298daf5274e3068fc96fefcb43abfd733c7dff6047650e3a66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6118983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95e2b30c5b2511503f0b0cbd606e00af61d0bfba6a791d321122016bcc0342c0`

```dockerfile
```

-	Layers:
	-	`sha256:9fe7a6bf0025afc3f4ff629e584a7279ff9bcb527ab635be05140e5bb2e50bed`  
		Last Modified: Tue, 10 Nov 2026 21:59:46 GMT  
		Size: 6.1 MB (6075500 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e6c8e698d5710b0bf6f33d1770e5d46d8a5dbd99533efb669fca55e019237d9`  
		Last Modified: Tue, 10 Nov 2026 21:59:46 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
