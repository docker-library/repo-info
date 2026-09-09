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
$ docker pull kibana@sha256:56f462d8132493b05c208b7d515adeb153b3b53301211e0b38f9c8321d5626e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.6` - linux; amd64

```console
$ docker pull kibana@sha256:88078718801a41567ac09d1d7f55b0ca364355b40ae9c1b65213a6291afdbfcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **565.8 MB (565835735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae9ec804e12d6898e7b508791575c37d7573060ee5eb88cd2966b8ad69ccd9be`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Tue, 01 Sep 2026 23:04:38 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 01 Sep 2026 23:04:38 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 01 Sep 2026 23:14:38 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 01 Sep 2026 23:14:39 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 01 Sep 2026 23:14:39 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 01 Sep 2026 23:14:39 GMT
RUN fc-cache -v # buildkit
# Tue, 01 Sep 2026 23:14:39 GMT
WORKDIR /usr/share/kibana
# Tue, 01 Sep 2026 23:14:39 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 01 Sep 2026 23:14:39 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 01 Sep 2026 23:14:39 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:14:39 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 01 Sep 2026 23:14:39 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 01 Sep 2026 23:14:40 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 01 Sep 2026 23:14:41 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 01 Sep 2026 23:14:41 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 01 Sep 2026 23:14:41 GMT
LABEL org.label-schema.build-date=2026-08-26T20:30:47.515Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=692551ad493ed71169e295e2160446428ee00b15 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T20:30:47.515Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=692551ad493ed71169e295e2160446428ee00b15 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Tue, 01 Sep 2026 23:14:41 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 01 Sep 2026 23:14:42 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 01 Sep 2026 23:14:42 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 01 Sep 2026 23:14:42 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 01 Sep 2026 23:14:42 GMT
USER 1000
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade6640bb51b6057210db45f1829be18c56813455d1303bb42be8a1a8578b219`  
		Last Modified: Tue, 01 Sep 2026 23:15:52 GMT  
		Size: 19.3 MB (19315851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e2d3d85d237d21c340a9e71682a4c2c7a97a31fa5151b4be21517e72e182de`  
		Last Modified: Tue, 01 Sep 2026 23:16:01 GMT  
		Size: 489.3 MB (489251883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:940bbbfb5679096f4c9f840603a3c58c16a4e50f24c24a8eef89647f337278d1`  
		Last Modified: Tue, 01 Sep 2026 23:15:51 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b989562e37cfa1a6c2a7fda1b45e4496af742b08b5cf51ee85d6ab88d5ffcc`  
		Last Modified: Tue, 01 Sep 2026 23:15:52 GMT  
		Size: 16.5 MB (16460489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9dac72abe7eb34402b48de7ca99c146ca2c86bd0b33fc7f8cda438aed6300d8`  
		Last Modified: Tue, 01 Sep 2026 23:15:53 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26db4d305ee955995590162f3125dfc74b7b72e8210e3b8965b8144a44314cd7`  
		Last Modified: Tue, 01 Sep 2026 23:15:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:907231f26dc2983f558ad4cc451fa72343105f44ab88dd7a4577c50e7a0557d2`  
		Last Modified: Tue, 01 Sep 2026 23:15:54 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f9884d6a8d8144bde56401b2732008e3b3ca7ab4bf9bd85a76e553070cf637`  
		Last Modified: Tue, 01 Sep 2026 23:15:54 GMT  
		Size: 4.9 KB (4926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c91796006a54f760205fcfd0d331feeddaded7c4db07d74ecf5d4847cbe15287`  
		Last Modified: Tue, 01 Sep 2026 23:15:55 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c49a3c95443dcf1fd90df6e0819304b50c4c79b3ce6646ccf6f5b66acba7dbe1`  
		Last Modified: Tue, 01 Sep 2026 23:15:55 GMT  
		Size: 74.5 KB (74547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67214950c898b264a94ab9865559cada4ec725121458b58822ae9252e70632f0`  
		Last Modified: Tue, 01 Sep 2026 23:15:55 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d90fcc3d222ce5df574ebe1845bdf5c5dd575c444e13a0bee88d835b1fc968c`  
		Last Modified: Tue, 01 Sep 2026 23:15:56 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.6` - unknown; unknown

```console
$ docker pull kibana@sha256:59b8f9ef1f780ebb996b17ecb349f2c07f119f46cd763afe5bbc631036641eb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5949486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d818abac37684a6c7ecfbe0ae84d2891409534c144915b106de2bf21bab7ee25`

```dockerfile
```

-	Layers:
	-	`sha256:174b86de79b74000e8a526676146b112bb1dfce5297228856bfe2742f60acbcc`  
		Last Modified: Tue, 01 Sep 2026 23:15:52 GMT  
		Size: 5.9 MB (5906260 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad9b1e4f56cd3274f0fe34b0b176776a73552e45c5f1297e33c7b5a417e01f27`  
		Last Modified: Tue, 01 Sep 2026 23:15:51 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.6` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:815e885d2fa0be9d603753358f9a76a66ce584ec98d2a60365e1f298b0f28c6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **577.4 MB (577370411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46408c6a6f1bd1d613a18299ca3ed21a530cca0448c1a9be89f74c001ead6bc`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:55:27 GMT
ENV container oci
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:f2269a49305dc61b5c62efda70ce8327957d5aafa0915c5b324ac4402d0afd7e in /      
# Mon, 31 Aug 2026 08:55:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:55:28 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:314f6db1cd15d342fa9962b7dae89ed14fe0c81c812223914e17998e1aac0abe in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:314f6db1cd15d342fa9962b7dae89ed14fe0c81c812223914e17998e1aac0abe in /root/buildinfo/      
# Mon, 31 Aug 2026 08:55:28 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:55:06Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:55:06Z" "architecture"="aarch64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:55:06Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Tue, 01 Sep 2026 23:05:31 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 01 Sep 2026 23:05:31 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 01 Sep 2026 23:13:48 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 01 Sep 2026 23:13:49 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 01 Sep 2026 23:13:49 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 01 Sep 2026 23:13:49 GMT
RUN fc-cache -v # buildkit
# Tue, 01 Sep 2026 23:13:49 GMT
WORKDIR /usr/share/kibana
# Tue, 01 Sep 2026 23:13:49 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 01 Sep 2026 23:13:49 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 01 Sep 2026 23:13:49 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:13:49 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 01 Sep 2026 23:13:49 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 01 Sep 2026 23:13:50 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 01 Sep 2026 23:13:51 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 01 Sep 2026 23:13:51 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 01 Sep 2026 23:13:51 GMT
LABEL org.label-schema.build-date=2026-08-26T20:30:47.515Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=692551ad493ed71169e295e2160446428ee00b15 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T20:30:47.515Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=692551ad493ed71169e295e2160446428ee00b15 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Tue, 01 Sep 2026 23:13:51 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 01 Sep 2026 23:13:51 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 01 Sep 2026 23:13:51 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 01 Sep 2026 23:13:51 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 01 Sep 2026 23:13:51 GMT
USER 1000
```

-	Layers:
	-	`sha256:8289a871631249c9c1a3b2366de832716cd43c77864c245a1c1364a2abeb5704`  
		Last Modified: Mon, 31 Aug 2026 10:01:50 GMT  
		Size: 38.8 MB (38815996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7d0fba5ceef3bd83c4ef4ee0ae85853ebaa2302813cf953201590e2acd9871c`  
		Last Modified: Tue, 01 Sep 2026 23:15:17 GMT  
		Size: 19.3 MB (19265078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a69427842ee0e76df5c04431bb081f3e41c967e50596d447b7d2cf7c64578a9`  
		Last Modified: Tue, 01 Sep 2026 23:15:27 GMT  
		Size: 502.7 MB (502732438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e81b5dcfa0f823aa308676855ff96db115eec90b905240a256d7ca4e195af66`  
		Last Modified: Tue, 01 Sep 2026 23:15:17 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6e683f258bfcd0f92c1f4d182a9ee73fdb4a67a8d14fa410954aa94bd6b564c`  
		Last Modified: Tue, 01 Sep 2026 23:15:18 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72cda8e6c5c368796800f9c4014b61c7eb7fd85dc3c7c76b685e2232003937d0`  
		Last Modified: Tue, 01 Sep 2026 23:15:18 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96018d5c2008e7362ecfc95a20b5bd6d6c0f2b2da9bb546072662382be5c05e6`  
		Last Modified: Tue, 01 Sep 2026 23:15:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdbe0a5baf3fc808031d01fec44d393f946b0a2eb9e87c1180d7e6d9469e5f42`  
		Last Modified: Tue, 01 Sep 2026 23:15:19 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a54394f45a3a7a171327f38105f6abcae7752f604bda8e90957617e3c6686d0`  
		Last Modified: Tue, 01 Sep 2026 23:15:19 GMT  
		Size: 4.9 KB (4928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:837b47069da5545ff62a3aca6a477c80bcf6f37540c740aa6ba362476448c034`  
		Last Modified: Tue, 01 Sep 2026 23:15:20 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:344114b8234a489966636c5aa2d96cb5fcfd2850274f587726117c15d85f8c97`  
		Last Modified: Tue, 01 Sep 2026 23:15:20 GMT  
		Size: 73.5 KB (73453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9db590f7b4dfa6e5791e99283a59f1845f9f90066b0742fbfba83408aba74f3`  
		Last Modified: Tue, 01 Sep 2026 23:15:20 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8e3ddc01dff981e0e9e37a0e5ced4523bea9f8b94064f3bf890575d3b768975`  
		Last Modified: Tue, 01 Sep 2026 23:15:21 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.6` - unknown; unknown

```console
$ docker pull kibana@sha256:281d53682dfe260dfb587e8ccf0c7dbee8580b43bdf7f8878409d0b5e6297093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5946633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79e2316865394cd871049fa09fa7dad3aebc33e8c464b113dfc600579e9815cb`

```dockerfile
```

-	Layers:
	-	`sha256:8d96fa5d5cd3a8dd2ba6a17091baf4ca8abc08bbe0f0a1eb2925cd3532a4fa80`  
		Last Modified: Tue, 01 Sep 2026 23:15:17 GMT  
		Size: 5.9 MB (5903150 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4336b46c84298921e2d8cb62aa7e499ba5dde73ca0076f866671f56292adf39`  
		Last Modified: Tue, 01 Sep 2026 23:15:16 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.5.3`

```console
$ docker pull kibana@sha256:fbb8308617e3f0d57a7769d5e3e19298c624517d9d7e140cda62c5d3aecc8ae0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.3` - linux; amd64

```console
$ docker pull kibana@sha256:0fbcf08772532bc27be1d202249a0535ec53acc5589bc59e3fa5b396819fa778
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **560.8 MB (560827758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89a6adc100dce49fa5f38b90ce65e443570a25de5b0891ffc144ff12ec9a60b1`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Thu, 03 Sep 2026 19:06:02 GMT
EXPOSE map[5601/tcp:{}]
# Thu, 03 Sep 2026 19:06:02 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Thu, 03 Sep 2026 19:19:14 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Thu, 03 Sep 2026 19:19:14 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Thu, 03 Sep 2026 19:19:14 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Thu, 03 Sep 2026 19:19:14 GMT
RUN fc-cache -v # buildkit
# Thu, 03 Sep 2026 19:19:14 GMT
WORKDIR /usr/share/kibana
# Thu, 03 Sep 2026 19:19:15 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Thu, 03 Sep 2026 19:19:15 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 03 Sep 2026 19:19:15 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Sep 2026 19:19:15 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Thu, 03 Sep 2026 19:19:15 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 19:19:15 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Thu, 03 Sep 2026 19:19:16 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Thu, 03 Sep 2026 19:19:16 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Thu, 03 Sep 2026 19:19:16 GMT
LABEL org.label-schema.build-date=2026-09-01T14:33:18.580Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=2169f1de4c917fce03905cc3110f3f523e2184d2 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T14:33:18.580Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=2169f1de4c917fce03905cc3110f3f523e2184d2 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3
# Thu, 03 Sep 2026 19:19:16 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.3 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Thu, 03 Sep 2026 19:19:17 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 03 Sep 2026 19:19:17 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Thu, 03 Sep 2026 19:19:17 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Thu, 03 Sep 2026 19:19:17 GMT
USER 1000
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4203b99ed4f1460bb57490325504f45283be714802992966b129e8e9c9eb6b34`  
		Last Modified: Thu, 03 Sep 2026 19:20:33 GMT  
		Size: 19.3 MB (19315907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c75cb2551711fc7f32e63cd3fb7073ae5f292b87a84482c4d0503bfa965ff2e6`  
		Last Modified: Thu, 03 Sep 2026 19:20:42 GMT  
		Size: 484.2 MB (484243771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e95a6ae0810d690b08aaed529bc84da7557320351d9ffac875835569349741de`  
		Last Modified: Thu, 03 Sep 2026 19:20:32 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c50fec87f5fd206646079fa5d1752cb37d6f316475c64e6d46ec9378ef29b1c`  
		Last Modified: Thu, 03 Sep 2026 19:20:34 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1334bf61e177fba20c8b12166cb5d6f8c125d990cf862e6b81159acaac43fd66`  
		Last Modified: Thu, 03 Sep 2026 19:20:34 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c4f53a55d514b48c909f52506232e97f35640bc0b1a5490b46c0998d4e74943`  
		Last Modified: Thu, 03 Sep 2026 19:20:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:218eadee283aa6cca39ae3be748aa938fd5f29bc1c32efd97964752160648c3e`  
		Last Modified: Thu, 03 Sep 2026 19:20:35 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df4d8e60977246b2a152521769c975f5e6664d0917d07e366c27c73ba67c5587`  
		Last Modified: Thu, 03 Sep 2026 19:20:35 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ac99c4795f634cca07cd9ac551bb141965821f2364b76439246cf8d0f2cf7dc`  
		Last Modified: Thu, 03 Sep 2026 19:20:36 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0195a1f7435f997f902ff33e977f9b8360a7aa7a3ca2d400cd5d496bf8cb238d`  
		Last Modified: Thu, 03 Sep 2026 19:20:36 GMT  
		Size: 74.5 KB (74548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5dea5a03c5d631e053fd7422f60c4941b72081c98d095962365e3b0b0c8adf9`  
		Last Modified: Thu, 03 Sep 2026 19:20:36 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c761d544bc35aa79e043313e3da6dd6dd6589ac2df8ac91f12b32df3e41ca0f`  
		Last Modified: Thu, 03 Sep 2026 19:20:38 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.3` - unknown; unknown

```console
$ docker pull kibana@sha256:7e99653777a61c9db272be14748a4b0f2c4c1fec34c4cb80698bccfb119f67b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6141062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:116a82ab991cb5bdf1849bc89910305dd3340b44144fb57df7610e35c6bae115`

```dockerfile
```

-	Layers:
	-	`sha256:59a3420b43af59f06d3866d18438eb720301c23696fac5296ea0e0a9ca521df8`  
		Last Modified: Thu, 03 Sep 2026 19:20:33 GMT  
		Size: 6.1 MB (6097836 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:420073f953d0d6da43aa5aa6e258e383c51035e5c037b4cfb25d2839a585dacc`  
		Last Modified: Thu, 03 Sep 2026 19:20:32 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.3` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:cf1097a9fe469580abeae242ad1e0a416aa9cb98902a274a624fa36f5c052b9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **572.4 MB (572351694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c6fa9bfc6d3a284522b350de0cc09aca98b79ceec11d84ca22bb687dd845cd8`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:55:27 GMT
ENV container oci
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:f2269a49305dc61b5c62efda70ce8327957d5aafa0915c5b324ac4402d0afd7e in /      
# Mon, 31 Aug 2026 08:55:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:55:28 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:314f6db1cd15d342fa9962b7dae89ed14fe0c81c812223914e17998e1aac0abe in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:314f6db1cd15d342fa9962b7dae89ed14fe0c81c812223914e17998e1aac0abe in /root/buildinfo/      
# Mon, 31 Aug 2026 08:55:28 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:55:06Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:55:06Z" "architecture"="aarch64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:55:06Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Thu, 03 Sep 2026 19:05:42 GMT
EXPOSE map[5601/tcp:{}]
# Thu, 03 Sep 2026 19:05:42 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Thu, 03 Sep 2026 19:12:51 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Thu, 03 Sep 2026 19:12:52 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Thu, 03 Sep 2026 19:12:52 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Thu, 03 Sep 2026 19:12:52 GMT
RUN fc-cache -v # buildkit
# Thu, 03 Sep 2026 19:12:52 GMT
WORKDIR /usr/share/kibana
# Thu, 03 Sep 2026 19:12:53 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Thu, 03 Sep 2026 19:12:53 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 03 Sep 2026 19:12:53 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Sep 2026 19:12:53 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Thu, 03 Sep 2026 19:12:53 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 19:12:53 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Thu, 03 Sep 2026 19:12:54 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Thu, 03 Sep 2026 19:12:55 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Thu, 03 Sep 2026 19:12:55 GMT
LABEL org.label-schema.build-date=2026-09-01T14:33:18.580Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=2169f1de4c917fce03905cc3110f3f523e2184d2 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T14:33:18.580Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=2169f1de4c917fce03905cc3110f3f523e2184d2 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3
# Thu, 03 Sep 2026 19:12:55 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.3 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Thu, 03 Sep 2026 19:12:55 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 03 Sep 2026 19:12:55 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Thu, 03 Sep 2026 19:12:55 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Thu, 03 Sep 2026 19:12:55 GMT
USER 1000
```

-	Layers:
	-	`sha256:8289a871631249c9c1a3b2366de832716cd43c77864c245a1c1364a2abeb5704`  
		Last Modified: Mon, 31 Aug 2026 10:01:50 GMT  
		Size: 38.8 MB (38815996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66fd7d638420b0bc050d9b14ea8f79f5f930a5a41bb5df6f0887669c8326741d`  
		Last Modified: Thu, 03 Sep 2026 19:14:17 GMT  
		Size: 19.3 MB (19265085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcdbcc16e3260661082c375e8b093f6a6466b7d491e18a6046a9480eeb026177`  
		Last Modified: Thu, 03 Sep 2026 19:14:29 GMT  
		Size: 497.7 MB (497713615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14e47c1fb35208b6abb8e6068219b93e5f7241e4b94de0153390c2c620acdabf`  
		Last Modified: Thu, 03 Sep 2026 19:14:16 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1195bd9e86063fb948e9030f0ae0ad8413a8019d9a6286df59f0729ecde2c4f`  
		Last Modified: Thu, 03 Sep 2026 19:14:17 GMT  
		Size: 16.5 MB (16460493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfac46968c1002702cdc52e92d99750b3577a528ea0cb092ccd4a61bc06939bc`  
		Last Modified: Thu, 03 Sep 2026 19:14:17 GMT  
		Size: 5.2 KB (5229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81ca72834d3cc44265e5c24c547b0c922866ab7f768f83d178e46c978553d1b`  
		Last Modified: Thu, 03 Sep 2026 19:14:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b96f83ad850abfff6f47ed7803e4d5c46786faa2585bbee01653ab571f9b6255`  
		Last Modified: Thu, 03 Sep 2026 19:14:19 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad08a76dffeac5d68acce1efb3f554a4ea9463884f3b9de88f78fc8b7277a8f`  
		Last Modified: Thu, 03 Sep 2026 19:14:19 GMT  
		Size: 5.0 KB (5005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2c142755265aef3497d9603b801517913febf4f841167bb7ef1f44a1b655e14`  
		Last Modified: Thu, 03 Sep 2026 19:14:20 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b21f23af15992697c12d59bd1b7ce2c4d2361834e9eb12dcdb7b5d0ca2cd5cce`  
		Last Modified: Thu, 03 Sep 2026 19:14:20 GMT  
		Size: 73.5 KB (73456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25959fac5b1bf93e9568173913ab4a63c04d234b5c1017f2027ac5d2ef78397c`  
		Last Modified: Thu, 03 Sep 2026 19:14:20 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa300ddb1a9b472eddd95a8f6ca6b69324459b070ca547f69f207782ce421cc5`  
		Last Modified: Thu, 03 Sep 2026 19:14:21 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.3` - unknown; unknown

```console
$ docker pull kibana@sha256:caa921a4ee396386212e0ce213ec7879f661f919a581f9db6137fa4ed0daa734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6138208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:169560391a8d909cffd8b14a67521cde3a1e89a03887ede03727eaa0a04a2106`

```dockerfile
```

-	Layers:
	-	`sha256:ff240dea00715d1a15f82de3e12430d29587d8a517349094f374307bace194bd`  
		Last Modified: Thu, 03 Sep 2026 19:14:16 GMT  
		Size: 6.1 MB (6094726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bb9fab6cd1c7cedce0a2eac0bdeb652b9c3194cdc8f00af956b9cfc73dd70c8`  
		Last Modified: Thu, 03 Sep 2026 19:14:16 GMT  
		Size: 43.5 KB (43482 bytes)  
		MIME: application/vnd.in-toto+json
