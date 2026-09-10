<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:8.19.21`](#kibana81921)
-	[`kibana:9.4.6`](#kibana946)
-	[`kibana:9.5.3`](#kibana953)

## `kibana:8.19.21`

```console
$ docker pull kibana@sha256:32cb06d440cb1594319c55e522561a327a800192cb3143b6b0b1a5735fdcf6c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:8.19.21` - linux; amd64

```console
$ docker pull kibana@sha256:a25815486172c84460aa3adee3115185998df70d881c28942d1cdb8bb78e8396
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.6 MB (456575311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8330a78a03839237fa68edadc77a9a3891dbce51b377d0fde6fcd1dcbfdf59fe`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:42 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 09 Sep 2026 02:32:42 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:40:58 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 09 Sep 2026 02:40:59 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 09 Sep 2026 02:40:59 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 09 Sep 2026 02:40:59 GMT
RUN fc-cache -v # buildkit
# Wed, 09 Sep 2026 02:40:59 GMT
WORKDIR /usr/share/kibana
# Wed, 09 Sep 2026 02:40:59 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 09 Sep 2026 02:40:59 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 09 Sep 2026 02:40:59 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:40:59 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 09 Sep 2026 02:40:59 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 02:41:00 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 09 Sep 2026 02:41:00 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 09 Sep 2026 02:41:01 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 09 Sep 2026 02:41:01 GMT
LABEL org.label-schema.build-date=2026-08-26T18:14:44.924Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=f8b192d79d9df731fc3811263f4461d842834c6a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.21 org.opencontainers.image.created=2026-08-26T18:14:44.924Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=f8b192d79d9df731fc3811263f4461d842834c6a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.21
# Wed, 09 Sep 2026 02:41:01 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 09 Sep 2026 02:41:01 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 09 Sep 2026 02:41:01 GMT
USER 1000
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc471418bf0d7b5bfcdf3d1c46779e4e79f814c8d4a42d4237322333e33a344a`  
		Last Modified: Wed, 09 Sep 2026 02:41:59 GMT  
		Size: 9.4 MB (9393656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bead274bcc6626da0bb5f323bcd2bb951c981bbd3b2fa59dd129f422f1d58b80`  
		Last Modified: Wed, 09 Sep 2026 02:42:07 GMT  
		Size: 400.8 MB (400774402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a5a0c22045a238dba0195296a6524105a6c14e4754599b2406672af118a2770`  
		Last Modified: Wed, 09 Sep 2026 02:41:58 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b5cacf8dbc586f79b3fd3befb4cc37d6f42a99fec6aad799b290758faf1174`  
		Last Modified: Wed, 09 Sep 2026 02:41:59 GMT  
		Size: 16.5 MB (16460485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c31aa99b81fafb5991ccb6b4ef130d48b77e990276626203c4411e43c19ba9c9`  
		Last Modified: Wed, 09 Sep 2026 02:42:00 GMT  
		Size: 5.2 KB (5240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8934b45d1b6c5bcccb3c59eb38ab95ff07b2a4bf1de064afa2de78b05520b3`  
		Last Modified: Wed, 09 Sep 2026 02:42:01 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:415d3b2e77d5e87861df17f0d36ca0f54029df351bd935c1108d52b2d60f444f`  
		Last Modified: Wed, 09 Sep 2026 02:42:01 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1f7870c8cee4e26724f41386f1fb616994e4d9c4a056312ce0566919e826d3`  
		Last Modified: Wed, 09 Sep 2026 02:42:01 GMT  
		Size: 4.8 KB (4821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:390a98a50cfd3e427767d76874d839152019ac60820746070e0078021cba81e6`  
		Last Modified: Wed, 09 Sep 2026 02:42:02 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcadc0d9ebcfd488665ec12958269ad029d6226d79c73236f97ffcdebfffb59f`  
		Last Modified: Wed, 09 Sep 2026 02:42:02 GMT  
		Size: 161.7 KB (161738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:737e93d8b72911521b388b99d6ee51a50d1ab93268b2cf3731289490faca1e3d`  
		Last Modified: Wed, 09 Sep 2026 02:42:02 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.21` - unknown; unknown

```console
$ docker pull kibana@sha256:e5e794adccefd025a5908470ab422014a23450d5dff02746e66734223d69f433
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4889037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce31434e11a67c96d0efdb81939b417d3df15ecd6b89483ab65a0ee96eb5f1f8`

```dockerfile
```

-	Layers:
	-	`sha256:067555636987f0c55d69632b50b87484a35fd2dd4e6864cfc5ee1af5dff9b8b0`  
		Last Modified: Wed, 09 Sep 2026 02:41:59 GMT  
		Size: 4.8 MB (4848122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52495a3b8a3a7c507789356d499964b4387fa81c65fb516db1487e3827c6944f`  
		Last Modified: Wed, 09 Sep 2026 02:41:58 GMT  
		Size: 40.9 KB (40915 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:8.19.21` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:8e915bb140a5a4ba2bf16c69c7dd3fd579c00c22558fc7f4889675f7ce2ef7f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **469.3 MB (469265919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61f0f5321220937ab34e7a74e9cbd51208aca5404e363f0f659a1f905c02709c`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 03:17:35 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 09 Sep 2026 03:17:35 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:24:16 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 09 Sep 2026 03:24:17 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 09 Sep 2026 03:24:17 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 09 Sep 2026 03:24:17 GMT
RUN fc-cache -v # buildkit
# Wed, 09 Sep 2026 03:24:17 GMT
WORKDIR /usr/share/kibana
# Wed, 09 Sep 2026 03:24:17 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 09 Sep 2026 03:24:17 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 09 Sep 2026 03:24:17 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:24:17 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 09 Sep 2026 03:24:17 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 03:24:18 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 09 Sep 2026 03:24:19 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 09 Sep 2026 03:24:19 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 09 Sep 2026 03:24:19 GMT
LABEL org.label-schema.build-date=2026-08-26T18:14:44.924Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=f8b192d79d9df731fc3811263f4461d842834c6a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.21 org.opencontainers.image.created=2026-08-26T18:14:44.924Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=f8b192d79d9df731fc3811263f4461d842834c6a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.21
# Wed, 09 Sep 2026 03:24:19 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 09 Sep 2026 03:24:19 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 09 Sep 2026 03:24:19 GMT
USER 1000
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9593ec606a7421e2f8b640e6b828bb8ab98b45025c3351e7fffe9629b39f01fc`  
		Last Modified: Wed, 09 Sep 2026 03:25:29 GMT  
		Size: 9.4 MB (9414166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa83d92bdcc07fde32ca4a44716a74f8a71e2ae507b6584ce88a11b11bba859`  
		Last Modified: Wed, 09 Sep 2026 03:25:36 GMT  
		Size: 414.3 MB (414271655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b66ec943d1049960e52b9c8811df0050c5449aa0efb57bda855a96c3867725d3`  
		Last Modified: Wed, 09 Sep 2026 03:25:28 GMT  
		Size: 9.1 KB (9098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:429a00d4a0c27e4f6905c292065d5b67b9acef59ed8b76fa7c13d5b3feefe347`  
		Last Modified: Wed, 09 Sep 2026 03:25:29 GMT  
		Size: 16.5 MB (16460487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf39838404d3fd6a36944e33d697358e41b8fbbdf21c67e2ae88bf6330e8483`  
		Last Modified: Wed, 09 Sep 2026 03:25:30 GMT  
		Size: 5.2 KB (5243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc2ab76a3d4c8ec070e8d405958d341eef8365db7ed0392ac3ad0875d7f48150`  
		Last Modified: Wed, 09 Sep 2026 03:25:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b3ffc1266af8c8343402aadd4321808cd9833434817d80bc07843303322b2d`  
		Last Modified: Wed, 09 Sep 2026 03:25:30 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6379853bd012ebb5f67acd37ca53252a4a1e96b37853ddf0c2bb70387fd2ed7`  
		Last Modified: Wed, 09 Sep 2026 03:25:31 GMT  
		Size: 4.8 KB (4820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f12ccfcd60880d70e6e2908557af087157f61e83392630e55b9ad8c138c4cd7`  
		Last Modified: Wed, 09 Sep 2026 03:25:31 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4252211db79fe4fd99874067699b2a5fc65082a1f878f8ac6fed522cc152d26`  
		Last Modified: Wed, 09 Sep 2026 03:25:32 GMT  
		Size: 158.3 KB (158252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:254cb6a3dace74d25aa661d94516abd11f76ee7fd4221a0ab3e74a387f2abc69`  
		Last Modified: Wed, 09 Sep 2026 03:25:32 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.21` - unknown; unknown

```console
$ docker pull kibana@sha256:73c504743451d3010c0a270d87b4b18f4e5566401660d70c6776255dd31e5c92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4890349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:960d3a857f0f2e40a7ee1d7a9d799e7d8f5269d95d16219d7d5a22513252934c`

```dockerfile
```

-	Layers:
	-	`sha256:bb478eb9a5bceea69538c0bf1a7b56411b5a76b51e6ee8a121070b453ae00c2f`  
		Last Modified: Wed, 09 Sep 2026 03:25:28 GMT  
		Size: 4.8 MB (4849186 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6be5b67c9f1f7c6e7ad8b9ab34bc8908fc3841161821c23c1ea53302e95f035`  
		Last Modified: Wed, 09 Sep 2026 03:25:28 GMT  
		Size: 41.2 KB (41163 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.4.6`

```console
$ docker pull kibana@sha256:24516165fd2a5b4cfa91549bb6b2be7d14d4ee8949a7c62a40edaf2ab4bcccb3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.6` - linux; amd64

```console
$ docker pull kibana@sha256:e3b8609de590657ba79e69623780b3c0ac4da56f9e379605cb86d814e242d544
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **565.8 MB (565832116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7de914b33df0fc85e194264d6d06dd4b658def6e80d95beb40e29db6b4171a`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 09 Sep 2026 07:32:04 GMT
ENV container oci
# Wed, 09 Sep 2026 07:32:05 GMT
COPY dir:7d4e1add6b136709dfd81a23f253956035f58d34c5d236b96fba89c53c087ca2 in /      
# Wed, 09 Sep 2026 07:32:05 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 07:32:05 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 07:32:05 GMT
COPY dir:aab9058c830b4fe09c53d67f66c40e388b8f6b803bd122483e9e5b39e792636e in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 07:32:05 GMT
COPY dir:aab9058c830b4fe09c53d67f66c40e388b8f6b803bd122483e9e5b39e792636e in /root/buildinfo/      
# Wed, 09 Sep 2026 07:32:06 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T07:31:28Z" "org.opencontainers.image.revision"="032ccfa67770989ab0253359280f8ba2cf77ce39" "build-date"="2026-09-09T07:31:28Z" "architecture"="x86_64" "vcs-ref"="032ccfa67770989ab0253359280f8ba2cf77ce39" "vcs-type"="git" "release"="1788939036"org.opencontainers.image.created=2026-09-09T07:31:28Z,org.opencontainers.image.revision=032ccfa67770989ab0253359280f8ba2cf77ce39
# Wed, 09 Sep 2026 22:38:59 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 09 Sep 2026 22:38:59 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:49:48 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 09 Sep 2026 22:49:49 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 09 Sep 2026 22:49:49 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 09 Sep 2026 22:49:49 GMT
RUN fc-cache -v # buildkit
# Wed, 09 Sep 2026 22:49:49 GMT
WORKDIR /usr/share/kibana
# Wed, 09 Sep 2026 22:49:49 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 09 Sep 2026 22:49:49 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 09 Sep 2026 22:49:49 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:49:49 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 09 Sep 2026 22:49:49 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 22:49:50 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 09 Sep 2026 22:49:51 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 09 Sep 2026 22:49:51 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 09 Sep 2026 22:49:51 GMT
LABEL org.label-schema.build-date=2026-08-26T20:30:47.515Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=692551ad493ed71169e295e2160446428ee00b15 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T20:30:47.515Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=692551ad493ed71169e295e2160446428ee00b15 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Wed, 09 Sep 2026 22:49:51 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 09 Sep 2026 22:49:51 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 09 Sep 2026 22:49:51 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 09 Sep 2026 22:49:51 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 09 Sep 2026 22:49:51 GMT
USER 1000
```

-	Layers:
	-	`sha256:399616a84899868b5dcba80b172eb2b68d9d6ceba1655cad130718f24d1f2160`  
		Last Modified: Wed, 09 Sep 2026 08:28:28 GMT  
		Size: 40.7 MB (40711761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4542ce85817a693c9816827dd1526c9b90a2cec42b02b9209a152406adede52d`  
		Last Modified: Wed, 09 Sep 2026 22:51:08 GMT  
		Size: 19.3 MB (19323043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae97f244321eb91a22a1074b34cfdcbc599f25878e51d783f7600817c572a87`  
		Last Modified: Wed, 09 Sep 2026 22:51:17 GMT  
		Size: 489.2 MB (489238877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a2b49a69fcddf3874ccae4dddf3d3f5da670bad42d3cfd381d0ceb52cfacd7c`  
		Last Modified: Wed, 09 Sep 2026 22:51:07 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05700baf3ffc781590679538b2ee0fbfe0bf04c1f4b3fedffbccab5b58db90f7`  
		Last Modified: Wed, 09 Sep 2026 22:51:08 GMT  
		Size: 16.5 MB (16460487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bf3f41dcb839c5a728599539a20ab586138daaa51e3446dd9cfb67bd7d5c8b9`  
		Last Modified: Wed, 09 Sep 2026 22:51:09 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95f224574228b3a1b7141dea3acc11120ffaa82e49829323778ca386dc001671`  
		Last Modified: Wed, 09 Sep 2026 22:51:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8685d8fc0a8751cb9ebf7bc039059eadd339a3b17d6a39a529545b4cc5d33f`  
		Last Modified: Wed, 09 Sep 2026 22:51:10 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f87fe56f04a554e8740e8b9d1d525f9d18eba7d0447edec9d6e5a3fcd0e2c1ce`  
		Last Modified: Wed, 09 Sep 2026 22:51:10 GMT  
		Size: 4.9 KB (4928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7cf87ff1b498ddd4291f2607630d244c99cd45a9dfe469966c5ddc060442aca`  
		Last Modified: Wed, 09 Sep 2026 22:51:11 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3447ea6d93a206ab054c7d1d16f40297ec3c79b641a41b2a67e4c50e197e01b7`  
		Last Modified: Wed, 09 Sep 2026 22:51:11 GMT  
		Size: 74.5 KB (74547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d7778a8f6a904c7f8ac1cd5b2e04efe4d995c024205695a94ea5f5c628dbd7d`  
		Last Modified: Wed, 09 Sep 2026 22:51:11 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:274ecc96074c673ba85589ed011833d8ab9e15f89102bf2456f6b264be75c277`  
		Last Modified: Wed, 09 Sep 2026 22:51:12 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.6` - unknown; unknown

```console
$ docker pull kibana@sha256:209ddb12d85667b06e04dae107f64b29ae32a56610b8548a8f476a9e5dcb7e0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5949488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e104dec466b471e9c2bbe0441abf230cbe4dc5dd55d1ebb7f4e8bdc4518d4731`

```dockerfile
```

-	Layers:
	-	`sha256:0aaff93d08cac8800cfcbbd5917a19339433f50d7d5f6781946b05328893d71e`  
		Last Modified: Wed, 09 Sep 2026 22:51:08 GMT  
		Size: 5.9 MB (5906262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4f0235eb2fd92d9d2f0c642b61b1d586a8d6b2db924551facb67b67a8efdb5a`  
		Last Modified: Wed, 09 Sep 2026 22:51:07 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.6` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:9a968fe79a5f737aa96adac0c23b85e133b52ee26a4761c6f54b83b664d5de2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **577.4 MB (577350942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451b7762b8c541cd173906ab157d158fe213e69559b87be08a777ecd0d99aa4b`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 09 Sep 2026 07:33:36 GMT
ENV container oci
# Wed, 09 Sep 2026 07:33:36 GMT
COPY dir:bdf3d4ab52392fbb0b0cd322fb5ac95c784eadfe4f93f014ac96c337e0054015 in /      
# Wed, 09 Sep 2026 07:33:36 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 07:33:36 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 07:33:37 GMT
COPY dir:e6162a6f62758b77ea88d8c390bcc03627248124d50f4dd0fd77aef7b6bdffd0 in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 07:33:37 GMT
COPY dir:e6162a6f62758b77ea88d8c390bcc03627248124d50f4dd0fd77aef7b6bdffd0 in /root/buildinfo/      
# Wed, 09 Sep 2026 07:33:37 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T07:33:14Z" "org.opencontainers.image.revision"="032ccfa67770989ab0253359280f8ba2cf77ce39" "build-date"="2026-09-09T07:33:14Z" "architecture"="aarch64" "vcs-ref"="032ccfa67770989ab0253359280f8ba2cf77ce39" "vcs-type"="git" "release"="1788939036"org.opencontainers.image.created=2026-09-09T07:33:14Z,org.opencontainers.image.revision=032ccfa67770989ab0253359280f8ba2cf77ce39
# Wed, 09 Sep 2026 22:37:48 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 09 Sep 2026 22:37:48 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:46:49 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 09 Sep 2026 22:46:50 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 09 Sep 2026 22:46:50 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 09 Sep 2026 22:46:50 GMT
RUN fc-cache -v # buildkit
# Wed, 09 Sep 2026 22:46:50 GMT
WORKDIR /usr/share/kibana
# Wed, 09 Sep 2026 22:46:50 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 09 Sep 2026 22:46:50 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 09 Sep 2026 22:46:50 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:46:50 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 09 Sep 2026 22:46:50 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 22:46:51 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 09 Sep 2026 22:46:52 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 09 Sep 2026 22:46:52 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 09 Sep 2026 22:46:52 GMT
LABEL org.label-schema.build-date=2026-08-26T20:30:47.515Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=692551ad493ed71169e295e2160446428ee00b15 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T20:30:47.515Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=692551ad493ed71169e295e2160446428ee00b15 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Wed, 09 Sep 2026 22:46:52 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 09 Sep 2026 22:46:52 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 09 Sep 2026 22:46:52 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 09 Sep 2026 22:46:52 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 09 Sep 2026 22:46:52 GMT
USER 1000
```

-	Layers:
	-	`sha256:374f212d7a74263aefa7d3cf064825d27ce22b5a5491d106d1c42a1fe1638d0c`  
		Last Modified: Wed, 09 Sep 2026 08:28:59 GMT  
		Size: 38.8 MB (38810277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:097739d0043c64ce77b04505f14d8bb51e44324b742b2b1a1ab306f98310bee1`  
		Last Modified: Wed, 09 Sep 2026 22:48:18 GMT  
		Size: 19.3 MB (19264301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ada5780b72f0d92258a96fd1b54448d8ce37fcbdb01074f09e409cfe331ec92`  
		Last Modified: Wed, 09 Sep 2026 22:48:26 GMT  
		Size: 502.7 MB (502719459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7f48c8713664fa315da9b58203e0373b9d9d27b85cdf49c97677f14602ffc4`  
		Last Modified: Wed, 09 Sep 2026 22:48:17 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b170ed0f8e47eca73b914b4c554381b4295cbca8c8bd74f859301e017e6b8915`  
		Last Modified: Wed, 09 Sep 2026 22:48:18 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5248ed8b027ded4bdda58a3fb9e3fc55769b5a981ac5358b2f45d6d916ab3554`  
		Last Modified: Wed, 09 Sep 2026 22:48:18 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aed540feeb87349cb82d69f290c2615b6d4cd2b7825a2e8ebe15a317a1bed684`  
		Last Modified: Wed, 09 Sep 2026 22:48:19 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7936e5fba6ac9cb63fecf9dba10c77a287494a6ed7671dcc9e40dd18a28fcea1`  
		Last Modified: Wed, 09 Sep 2026 22:48:19 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f88ec45068894caa5583dddc33bc4cbe96338b5cc0e9e2f599d7408500654e03`  
		Last Modified: Wed, 09 Sep 2026 22:48:20 GMT  
		Size: 4.9 KB (4930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ddc0d8f57026c1755f836637d9aff902547d79850ca4d6269920648c26551fc`  
		Last Modified: Wed, 09 Sep 2026 22:48:20 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0603c066881df9a2c78836519d5228c9ba24bd15eeef61f650d373fdf2285223`  
		Last Modified: Wed, 09 Sep 2026 22:48:20 GMT  
		Size: 73.5 KB (73452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d310ff818b07ad050be50ab727439681bb3a7446c7b116dc5c0453dd9dc2d0`  
		Last Modified: Wed, 09 Sep 2026 22:48:21 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b32de5eb3a6fdb0b2d9295a312928b6704cb71e72a79524fabdcd834a6927f1e`  
		Last Modified: Wed, 09 Sep 2026 22:48:22 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.6` - unknown; unknown

```console
$ docker pull kibana@sha256:61c837a9ebffc6e728ae450ee59f3e355aabc7c97a4335a9fdfacb6238ab8a9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5946633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0041f777a2834f828ff2eec52d7639c5838ac9d1c54f87916a8849a2927b46d`

```dockerfile
```

-	Layers:
	-	`sha256:78c5255ff7e569cd97f989d05a43c21246ed9dd67dffe75923e2a48f09f424d9`  
		Last Modified: Wed, 09 Sep 2026 22:48:17 GMT  
		Size: 5.9 MB (5903152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09f9647c4c70ef75d8dd8df7fb8f0fe446787cfb07a3e0a83b291e58cc9cbf4c`  
		Last Modified: Wed, 09 Sep 2026 22:48:17 GMT  
		Size: 43.5 KB (43481 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.5.3`

```console
$ docker pull kibana@sha256:3d359d97aa87ff32b9aa6be9cb5c75d835a9c6eb212219bb3f28e2fe3833b327
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.3` - linux; amd64

```console
$ docker pull kibana@sha256:2d13e91fc90e64bd041a86a62b9e5bf7d7bc1bec2b2ce3f86a650b71322f1144
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **560.8 MB (560837515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b02f6828520bc936714838f67dd8a7df216a292fcadc9c63b4607e16a54e80a`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 09 Sep 2026 07:32:04 GMT
ENV container oci
# Wed, 09 Sep 2026 07:32:05 GMT
COPY dir:7d4e1add6b136709dfd81a23f253956035f58d34c5d236b96fba89c53c087ca2 in /      
# Wed, 09 Sep 2026 07:32:05 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 07:32:05 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 07:32:05 GMT
COPY dir:aab9058c830b4fe09c53d67f66c40e388b8f6b803bd122483e9e5b39e792636e in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 07:32:05 GMT
COPY dir:aab9058c830b4fe09c53d67f66c40e388b8f6b803bd122483e9e5b39e792636e in /root/buildinfo/      
# Wed, 09 Sep 2026 07:32:06 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T07:31:28Z" "org.opencontainers.image.revision"="032ccfa67770989ab0253359280f8ba2cf77ce39" "build-date"="2026-09-09T07:31:28Z" "architecture"="x86_64" "vcs-ref"="032ccfa67770989ab0253359280f8ba2cf77ce39" "vcs-type"="git" "release"="1788939036"org.opencontainers.image.created=2026-09-09T07:31:28Z,org.opencontainers.image.revision=032ccfa67770989ab0253359280f8ba2cf77ce39
# Wed, 09 Sep 2026 22:39:12 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 09 Sep 2026 22:39:12 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:49:49 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 09 Sep 2026 22:49:49 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 09 Sep 2026 22:49:49 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 09 Sep 2026 22:49:49 GMT
RUN fc-cache -v # buildkit
# Wed, 09 Sep 2026 22:49:49 GMT
WORKDIR /usr/share/kibana
# Wed, 09 Sep 2026 22:49:49 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 09 Sep 2026 22:49:49 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 09 Sep 2026 22:49:49 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:49:50 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 09 Sep 2026 22:49:50 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 22:49:50 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 09 Sep 2026 22:49:51 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 09 Sep 2026 22:49:51 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 09 Sep 2026 22:49:51 GMT
LABEL org.label-schema.build-date=2026-09-01T14:33:18.580Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=2169f1de4c917fce03905cc3110f3f523e2184d2 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T14:33:18.580Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=2169f1de4c917fce03905cc3110f3f523e2184d2 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3
# Wed, 09 Sep 2026 22:49:51 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.3 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 09 Sep 2026 22:49:51 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 09 Sep 2026 22:49:51 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 09 Sep 2026 22:49:51 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 09 Sep 2026 22:49:51 GMT
USER 1000
```

-	Layers:
	-	`sha256:399616a84899868b5dcba80b172eb2b68d9d6ceba1655cad130718f24d1f2160`  
		Last Modified: Wed, 09 Sep 2026 08:28:28 GMT  
		Size: 40.7 MB (40711761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:948aa45288fc5cce549f4fc7856376ff0e761aa36708530ab4f0df65564b818d`  
		Last Modified: Wed, 09 Sep 2026 22:51:08 GMT  
		Size: 19.3 MB (19322937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9f93416b225c464c113c80866b51548749a1066ef0268508f5227a07ecc93a`  
		Last Modified: Wed, 09 Sep 2026 22:51:16 GMT  
		Size: 484.2 MB (484244320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7ecb39439098310d474fd08d2a2781c6296febb84305ef663e0ee50bb7bf7c1`  
		Last Modified: Wed, 09 Sep 2026 22:51:07 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46fe396c9905a31a8fd119e781a8c19514978e53696e2f3890d3a40b44a1fbf9`  
		Last Modified: Wed, 09 Sep 2026 22:51:08 GMT  
		Size: 16.5 MB (16460484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98f37b729936cfb8f33fbd2915c5a5177f0d11876b5acaceba8db8625b568f1d`  
		Last Modified: Wed, 09 Sep 2026 22:51:08 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95f224574228b3a1b7141dea3acc11120ffaa82e49829323778ca386dc001671`  
		Last Modified: Wed, 09 Sep 2026 22:51:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122c178be5dd20c081e03a8aa38c4e0f2469a41f60e9acdad37c99a47b426754`  
		Last Modified: Wed, 09 Sep 2026 22:51:10 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e866e796243e03fa6ee95b45493dad5f12d7e384b50c32df259b241da6f0adea`  
		Last Modified: Wed, 09 Sep 2026 22:51:10 GMT  
		Size: 5.0 KB (5003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d79daa4646a385a6f46194804621a81c9242921adb3506d1e766b845e1b5cbc3`  
		Last Modified: Wed, 09 Sep 2026 22:51:11 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3447ea6d93a206ab054c7d1d16f40297ec3c79b641a41b2a67e4c50e197e01b7`  
		Last Modified: Wed, 09 Sep 2026 22:51:11 GMT  
		Size: 74.5 KB (74547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d7778a8f6a904c7f8ac1cd5b2e04efe4d995c024205695a94ea5f5c628dbd7d`  
		Last Modified: Wed, 09 Sep 2026 22:51:11 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a824d574d11d4789bcddc383df19eb35b8252a3f6742ff652f3f26dcb225af68`  
		Last Modified: Wed, 09 Sep 2026 22:51:12 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.3` - unknown; unknown

```console
$ docker pull kibana@sha256:35fbaa1203ba79dd13c8a7e7d51184ea9366e6ce59841c87a2503a8e43e59c99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6141063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a48fabc26aaba53466cada4e0a2aac4bb0b0a6eca9cacc41874673028ad8018`

```dockerfile
```

-	Layers:
	-	`sha256:86cdf775cf4033ed8cda0ef8a65c5e556dad00c7d70fc963929403e23d5e9ba7`  
		Last Modified: Wed, 09 Sep 2026 22:51:07 GMT  
		Size: 6.1 MB (6097838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3410202887ad4d2d93e85b2d7dd20fa1635244d6df1c5e9098c28a81ae1b438`  
		Last Modified: Wed, 09 Sep 2026 22:51:07 GMT  
		Size: 43.2 KB (43225 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.3` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:ffd78b0d056aae41aa5085b6bd8d4810b5b57bdd8055016be533bd579f684215
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **572.3 MB (572345256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e088683ebdf32dc09592f7bcd7bb5bc66178c55577e2fc32b9c5139401dc197`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 09 Sep 2026 07:33:36 GMT
ENV container oci
# Wed, 09 Sep 2026 07:33:36 GMT
COPY dir:bdf3d4ab52392fbb0b0cd322fb5ac95c784eadfe4f93f014ac96c337e0054015 in /      
# Wed, 09 Sep 2026 07:33:36 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 07:33:36 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 07:33:37 GMT
COPY dir:e6162a6f62758b77ea88d8c390bcc03627248124d50f4dd0fd77aef7b6bdffd0 in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 07:33:37 GMT
COPY dir:e6162a6f62758b77ea88d8c390bcc03627248124d50f4dd0fd77aef7b6bdffd0 in /root/buildinfo/      
# Wed, 09 Sep 2026 07:33:37 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T07:33:14Z" "org.opencontainers.image.revision"="032ccfa67770989ab0253359280f8ba2cf77ce39" "build-date"="2026-09-09T07:33:14Z" "architecture"="aarch64" "vcs-ref"="032ccfa67770989ab0253359280f8ba2cf77ce39" "vcs-type"="git" "release"="1788939036"org.opencontainers.image.created=2026-09-09T07:33:14Z,org.opencontainers.image.revision=032ccfa67770989ab0253359280f8ba2cf77ce39
# Wed, 09 Sep 2026 22:37:52 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 09 Sep 2026 22:37:52 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:45:00 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 09 Sep 2026 22:45:01 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 09 Sep 2026 22:45:01 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 09 Sep 2026 22:45:01 GMT
RUN fc-cache -v # buildkit
# Wed, 09 Sep 2026 22:45:01 GMT
WORKDIR /usr/share/kibana
# Wed, 09 Sep 2026 22:45:01 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 09 Sep 2026 22:45:01 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 09 Sep 2026 22:45:01 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:45:01 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 09 Sep 2026 22:45:01 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 22:45:02 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 09 Sep 2026 22:45:03 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 09 Sep 2026 22:45:03 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 09 Sep 2026 22:45:03 GMT
LABEL org.label-schema.build-date=2026-09-01T14:33:18.580Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=2169f1de4c917fce03905cc3110f3f523e2184d2 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T14:33:18.580Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=2169f1de4c917fce03905cc3110f3f523e2184d2 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3
# Wed, 09 Sep 2026 22:45:03 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.3 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 09 Sep 2026 22:45:03 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 09 Sep 2026 22:45:03 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 09 Sep 2026 22:45:03 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 09 Sep 2026 22:45:03 GMT
USER 1000
```

-	Layers:
	-	`sha256:374f212d7a74263aefa7d3cf064825d27ce22b5a5491d106d1c42a1fe1638d0c`  
		Last Modified: Wed, 09 Sep 2026 08:28:59 GMT  
		Size: 38.8 MB (38810277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d29c27940600592a855ecf29b7ffbc065beaf00d858a550ad0a9416f2c2d0259`  
		Last Modified: Wed, 09 Sep 2026 22:46:25 GMT  
		Size: 19.3 MB (19264372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1288d192901f66273082feb7b5291af41f6ea317b51bea29a361292e54156d9`  
		Last Modified: Wed, 09 Sep 2026 22:46:33 GMT  
		Size: 497.7 MB (497713647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b07f7627ee48246043bbfe3c910dcf29d2144a5d2c95a631177e654bacc9f67`  
		Last Modified: Wed, 09 Sep 2026 22:46:24 GMT  
		Size: 9.1 KB (9097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdd327d993ea4936bacf557dd45979e7b05a89c91ec89f967c47c5af65edf17f`  
		Last Modified: Wed, 09 Sep 2026 22:46:25 GMT  
		Size: 16.5 MB (16460484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6e13cc8d78f5bb09b855d1a3ce24f26d7e690332280f490b540d86000cbe132`  
		Last Modified: Wed, 09 Sep 2026 22:46:25 GMT  
		Size: 5.2 KB (5219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b407182dc19b6ac919b1209ac60e63972f011560efcdb42d454758bc0f2270`  
		Last Modified: Wed, 09 Sep 2026 22:46:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6077c18ad61eee618b31d7d813ff5ca21c81e902124760b43fa8b8033968c04`  
		Last Modified: Wed, 09 Sep 2026 22:46:26 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8777c926d6efe7a1a30b351304cb125ede361bd8556c1e5cd014fc94efc2913c`  
		Last Modified: Wed, 09 Sep 2026 22:46:27 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeb9f80ed7c977955adc3459bc8cb533193635b71c983d5fce65b387e9c197ac`  
		Last Modified: Wed, 09 Sep 2026 22:46:27 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d3b2ce35bc05a8713a2752a80334b267c5a7a6de548f2e02fadd34683ee935e`  
		Last Modified: Wed, 09 Sep 2026 22:46:28 GMT  
		Size: 73.4 KB (73449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60084b0a73eb4bf0cfaf0391fbae28d070bf1025cbc28fe1287795b1a6b3cb40`  
		Last Modified: Wed, 09 Sep 2026 22:46:28 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a50a8053b00ddd0c16ccb725ec9a1fce922ace9947b3d24fd879010989183f0e`  
		Last Modified: Wed, 09 Sep 2026 22:46:29 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.3` - unknown; unknown

```console
$ docker pull kibana@sha256:5601015600acf8497df63cc17598b568261aba8b49d7d32f8296fc8a33d93595
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6138211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaa3528a7d65b45acca873a38c558eb252830cfe49118098c352587561c26381`

```dockerfile
```

-	Layers:
	-	`sha256:a832a6f466a1e0148d1dc1cf04f7974e211a4dd8126c331d3aec0c46ce4cf2bb`  
		Last Modified: Wed, 09 Sep 2026 22:46:24 GMT  
		Size: 6.1 MB (6094728 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8f1571ba05130d7918abe0adfae44294222fe029bb5f29fc8229d816b1fdc5c`  
		Last Modified: Wed, 09 Sep 2026 22:46:24 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
