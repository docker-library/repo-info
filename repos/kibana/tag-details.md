<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:8.19.19`](#kibana81919)
-	[`kibana:9.3.8`](#kibana938)
-	[`kibana:9.4.4`](#kibana944)

## `kibana:8.19.19`

```console
$ docker pull kibana@sha256:5e0ac2d1c4badda5ad17fdaf3b1af55f9b2b8e8998c171915880c237a0c61d2c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:8.19.19` - linux; amd64

```console
$ docker pull kibana@sha256:970ac4264db8d63b81ef64fc861f5fdc3abd515d7ce6c123976af95d52d26c85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.4 MB (454442587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08d6d371445bf6e877eb19847f7623efec2315971c83ba98a911c2c93c8e8dee`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

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
# Tue, 21 Jul 2026 16:51:52 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 21 Jul 2026 16:51:52 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 21 Jul 2026 17:00:06 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 21 Jul 2026 17:00:06 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 21 Jul 2026 17:00:06 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 21 Jul 2026 17:00:06 GMT
RUN fc-cache -v # buildkit
# Tue, 21 Jul 2026 17:00:07 GMT
WORKDIR /usr/share/kibana
# Tue, 21 Jul 2026 17:00:07 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 21 Jul 2026 17:00:07 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 21 Jul 2026 17:00:07 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 17:00:07 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 21 Jul 2026 17:00:07 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 21 Jul 2026 17:00:07 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 21 Jul 2026 17:00:08 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 21 Jul 2026 17:00:08 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 21 Jul 2026 17:00:08 GMT
LABEL org.label-schema.build-date=2026-07-15T18:11:08.890Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=9bed9b7c05fe39507eb73d1a334ca96aa0c32cee org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.19 org.opencontainers.image.created=2026-07-15T18:11:08.890Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=9bed9b7c05fe39507eb73d1a334ca96aa0c32cee org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.19
# Tue, 21 Jul 2026 17:00:08 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 21 Jul 2026 17:00:08 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 21 Jul 2026 17:00:08 GMT
USER 1000
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14bf20c29a5b0bd08400b9eef2e28582675aa462a632e723b2f4d13092c33d5`  
		Last Modified: Tue, 21 Jul 2026 17:01:05 GMT  
		Size: 9.4 MB (9391739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90852f6e108cca48d460047aec2b1949080fd97496e2f43249e3dd5848602e6f`  
		Last Modified: Tue, 21 Jul 2026 17:01:13 GMT  
		Size: 398.7 MB (398671256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4701a745f595806955338d5be94eab51c86ab7618260807d312e3b4599e1aa22`  
		Last Modified: Tue, 21 Jul 2026 17:01:04 GMT  
		Size: 9.5 KB (9529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9e2f5b764debb8c53c41e100e2893265b88b933bd46239d058eab9819bdf708`  
		Last Modified: Tue, 21 Jul 2026 17:01:06 GMT  
		Size: 16.5 MB (16460477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d2557afe31be2a4cf38100d2d59ef68c638b1426955eee29a7d012f4eea447c`  
		Last Modified: Tue, 21 Jul 2026 17:01:06 GMT  
		Size: 5.2 KB (5241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aed425ce789f246ae5fa779659825ea6279c69e17b04f56faaa99864f340dbd6`  
		Last Modified: Tue, 21 Jul 2026 17:01:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec1fb458147447366126ad9f5a03ea31766c71e5af466c5f69fd9764c1c8d25`  
		Last Modified: Tue, 21 Jul 2026 17:01:07 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01725a30427d72131aa2900122db8acd509813ce0c17cb227d63d1227b69f261`  
		Last Modified: Tue, 21 Jul 2026 17:01:08 GMT  
		Size: 4.8 KB (4821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:160b9d1d307a408351694c9c6b9405636c97ce2a9d3825cbce76b2fd409d72f7`  
		Last Modified: Tue, 21 Jul 2026 17:01:08 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d68e2250fa1217f16480d2b2a83f80fd9e7694aaa06a9e132a21a6052db123ca`  
		Last Modified: Tue, 21 Jul 2026 17:01:09 GMT  
		Size: 161.7 KB (161742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758dbfa5f9cfc13d11a67954fb91a92d17879948628d578f8fc22604e81b075e`  
		Last Modified: Tue, 21 Jul 2026 17:01:09 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.19` - unknown; unknown

```console
$ docker pull kibana@sha256:81686a64451e09e74744ca17c4cde7acb7935ac56d9aab2b246c70f0ae389c5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4953584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2259f8af286c34112055e9ae8b49625d87714b42882e6305440884fad66b5ec`

```dockerfile
```

-	Layers:
	-	`sha256:7fbcddacdb861650af34121be9e3c2e2086fbcb9465222ba630b005a8c687473`  
		Last Modified: Tue, 21 Jul 2026 17:01:05 GMT  
		Size: 4.9 MB (4912669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dd7aa77aad3fdfca87f9b036bf0a5a2eaeae6a95a75c808cff7a2c8b51c6990`  
		Last Modified: Tue, 21 Jul 2026 17:01:04 GMT  
		Size: 40.9 KB (40915 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:8.19.19` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:650665bcb534f3a840469f27a6ae1d8ade1460c097c3760ad7cf7fd66ddc84aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.5 MB (466530724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36283564f0f70e330851dc3aaaeaa7a8f17c2ee04016c8cf8725e3cdd33c44c`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

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
# Tue, 21 Jul 2026 16:50:36 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 21 Jul 2026 16:50:36 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 21 Jul 2026 16:57:44 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 21 Jul 2026 16:57:45 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 21 Jul 2026 16:57:45 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 21 Jul 2026 16:57:45 GMT
RUN fc-cache -v # buildkit
# Tue, 21 Jul 2026 16:57:45 GMT
WORKDIR /usr/share/kibana
# Tue, 21 Jul 2026 16:57:45 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 21 Jul 2026 16:57:45 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 21 Jul 2026 16:57:45 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 16:57:45 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 21 Jul 2026 16:57:45 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 21 Jul 2026 16:57:46 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 21 Jul 2026 16:57:47 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 21 Jul 2026 16:57:47 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 21 Jul 2026 16:57:47 GMT
LABEL org.label-schema.build-date=2026-07-15T18:11:08.890Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=9bed9b7c05fe39507eb73d1a334ca96aa0c32cee org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.19 org.opencontainers.image.created=2026-07-15T18:11:08.890Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=9bed9b7c05fe39507eb73d1a334ca96aa0c32cee org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.19
# Tue, 21 Jul 2026 16:57:47 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 21 Jul 2026 16:57:47 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 21 Jul 2026 16:57:47 GMT
USER 1000
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5473c1f237cd8233abbfaaae4829cfbac4dffdb3f243abf931ac151596cca6f`  
		Last Modified: Tue, 21 Jul 2026 16:58:54 GMT  
		Size: 9.4 MB (9410844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29b3e2513e02786f2657976b1e75c57c14d3b5c910c39edb3653aa74f4c09a4`  
		Last Modified: Tue, 21 Jul 2026 16:59:02 GMT  
		Size: 411.6 MB (411595597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ba91365c50c0d6412f370adbadb0e6b8758384772bfd2919a586c9542c1474`  
		Last Modified: Tue, 21 Jul 2026 16:58:53 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:862f08864efccbfd4dec50996a488edfdff559c55319201598715ca54b1c3a0f`  
		Last Modified: Tue, 21 Jul 2026 16:58:54 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3349e0a92b7e18d29208145e89f9b602f9b5f47a68cd9a3a6fe6bef9e372b6c`  
		Last Modified: Tue, 21 Jul 2026 16:58:54 GMT  
		Size: 5.2 KB (5242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63d49944a53e5257ea50ccb60fc7e19990d778d1c15f602155b56f8fd93a55d9`  
		Last Modified: Tue, 21 Jul 2026 16:58:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:840bf30bd6a7aa93ccb41bfeec2a9a256d2107ea60954445f00915c2a6265b0e`  
		Last Modified: Tue, 21 Jul 2026 16:58:56 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce6cd5f383301ae34b3405e84c0c7fd5b27940ee1842b9b8a0f5e766fb3473ca`  
		Last Modified: Tue, 21 Jul 2026 16:58:56 GMT  
		Size: 4.8 KB (4824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7213825143254946546f2b1dbd48ddee6e0c6c4b2825ecd2ae4bc573381c1a0f`  
		Last Modified: Tue, 21 Jul 2026 16:58:57 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9770c1d39e45874b4f9b48a77a76cd7e87fc4163f57e85d585739af2d2ae061`  
		Last Modified: Tue, 21 Jul 2026 16:58:57 GMT  
		Size: 158.3 KB (158262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c046ee5bc8a7f241503dcc555dad94a8894da4636a9d47571624661ad098ad11`  
		Last Modified: Tue, 21 Jul 2026 16:58:57 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.19` - unknown; unknown

```console
$ docker pull kibana@sha256:af06b94092249a63133a235c567597a05593d1c506fa27974a4842fb9d5ed4c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4954896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a1d81e4e9542cc20066e23cb38f9e000abb534fb3bc157e4a34060ead01b3ad`

```dockerfile
```

-	Layers:
	-	`sha256:855e50abcbac640f0494ec9851ec53c5c4aa12bde417702b165a952c2f75e145`  
		Last Modified: Tue, 21 Jul 2026 16:58:54 GMT  
		Size: 4.9 MB (4913733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35fbf697cdd25d146c0fc4fa8f39222eb47c097818cac8a254397b4634647591`  
		Last Modified: Tue, 21 Jul 2026 16:58:53 GMT  
		Size: 41.2 KB (41163 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.3.8`

```console
$ docker pull kibana@sha256:64259e41a86e23c1d449ec5a687064b777ff4b0b5cb1157c096f544961d6e398
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.3.8` - linux; amd64

```console
$ docker pull kibana@sha256:be2bb2d72fd1ffd142fe1e832eecc39179aac5f1da628264f7a971986f0a5e03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.0 MB (466020056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf806ddc15851752dacbbd47fb1253e683c6eec5b4b6a6c2541f579b3603dba2`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 21 Jul 2026 01:09:57 GMT
ENV container oci
# Tue, 21 Jul 2026 01:09:58 GMT
COPY dir:8b42b9fcf597f41b80a8fe199f2bf302332cfc86735eda7e5948c6f2d9073e65 in /      
# Tue, 21 Jul 2026 01:09:58 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 01:09:58 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 01:09:58 GMT
COPY dir:b745d7b8674edb55898cbd7ca84df6b3ac35b32be96c9a6e6425437dd5390ced in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 01:09:58 GMT
COPY dir:b745d7b8674edb55898cbd7ca84df6b3ac35b32be96c9a6e6425437dd5390ced in /root/buildinfo/      
# Tue, 21 Jul 2026 01:09:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T01:09:09Z" "org.opencontainers.image.revision"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "build-date"="2026-07-21T01:09:09Z" "architecture"="x86_64" "vcs-ref"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "vcs-type"="git" "release"="1784596070"org.opencontainers.image.created=2026-07-21T01:09:09Z,org.opencontainers.image.revision=4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec
# Tue, 21 Jul 2026 17:06:59 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 21 Jul 2026 17:06:59 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 21 Jul 2026 17:15:20 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 21 Jul 2026 17:15:20 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 21 Jul 2026 17:15:20 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 21 Jul 2026 17:15:20 GMT
RUN fc-cache -v # buildkit
# Tue, 21 Jul 2026 17:15:20 GMT
WORKDIR /usr/share/kibana
# Tue, 21 Jul 2026 17:15:21 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 21 Jul 2026 17:15:21 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 21 Jul 2026 17:15:21 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 17:15:21 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 21 Jul 2026 17:15:21 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 21 Jul 2026 17:15:21 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 21 Jul 2026 17:15:22 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 21 Jul 2026 17:15:22 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 21 Jul 2026 17:15:22 GMT
LABEL org.label-schema.build-date=2026-07-15T22:23:34.585Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-15T22:23:34.585Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8
# Tue, 21 Jul 2026 17:15:22 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.3.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 21 Jul 2026 17:15:22 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 21 Jul 2026 17:15:22 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 21 Jul 2026 17:15:22 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 21 Jul 2026 17:15:22 GMT
USER 1000
```

-	Layers:
	-	`sha256:a03e2de3abb5028372473288295f20855a0a709800a709cde6a88cfbb137abc3`  
		Last Modified: Tue, 21 Jul 2026 04:10:18 GMT  
		Size: 40.7 MB (40697275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7acb242b39c26b75d9c04b8ccb1727f6ba7ea813281b3f0f406101be8d7f75b9`  
		Last Modified: Tue, 21 Jul 2026 17:16:19 GMT  
		Size: 19.3 MB (19330226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fc559540ca92d4023370931083f03918cd7f1ab3648947a8248c0c68d35c5b8`  
		Last Modified: Tue, 21 Jul 2026 17:16:26 GMT  
		Size: 389.4 MB (389434122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc790d2e29c1c675c48274f61e9df825dcbbdc06630ff894166bffdb9562268`  
		Last Modified: Tue, 21 Jul 2026 17:16:18 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c09123d56fa3b92df8b63950184b68a66d2015581189bda6742ffbe718f4cd27`  
		Last Modified: Tue, 21 Jul 2026 17:16:19 GMT  
		Size: 16.5 MB (16460489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5d4f391f684170870001cb98b233d547dc148af3660ebeb7aa8c105d103bfd9`  
		Last Modified: Tue, 21 Jul 2026 17:16:19 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca8c2d8b965efc3ff587d7b5448ee4ad89f64ad8860a8543359758549daf0ad`  
		Last Modified: Tue, 21 Jul 2026 17:16:21 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9968a7913b452c829bfc764a7f067b1c4eaeecbce8a546f80e4b4539c7c25f2c`  
		Last Modified: Tue, 21 Jul 2026 17:16:21 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25c332fd44cc545bc5449cef7ac3ec8f695520bd00ccf4b30cf985ef425d1829`  
		Last Modified: Tue, 21 Jul 2026 17:16:21 GMT  
		Size: 4.9 KB (4928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397714893a85b4018307746aae84486547bf93ffcf8a87bcae0d7b8665ce20e3`  
		Last Modified: Tue, 21 Jul 2026 17:16:22 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9d4b5c4af46e7e374de195cad09c87ec51137a4d38c0ab4595622a9fce75c41`  
		Last Modified: Tue, 21 Jul 2026 17:16:22 GMT  
		Size: 74.5 KB (74546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf54d6b25b37bea73a175450e20b2a26155d097eb7593b9fab318cb1033f99c8`  
		Last Modified: Tue, 21 Jul 2026 17:16:22 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8450b7e458c873ece55c6773a9a608a1ed92a26842a9bf79774194f882af0bfc`  
		Last Modified: Tue, 21 Jul 2026 17:16:24 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.3.8` - unknown; unknown

```console
$ docker pull kibana@sha256:a4b59b2b32ce135c5bd59cd6324b33c800805b19c20c27709349d7db3fa6d0fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5809697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af23775bab08c71dde4b4c113b065d00714929ecac95de408c55ed2c064435ce`

```dockerfile
```

-	Layers:
	-	`sha256:7cbda097a99bdfc4d55c3b2a25d0e42f46f21c67a302b7daade53a601760e7b5`  
		Last Modified: Tue, 21 Jul 2026 17:16:19 GMT  
		Size: 5.8 MB (5766473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c7970b77c43e5b9de126108ae6caca99d261019ca4dcc9d4e1ea727dddbe9e1`  
		Last Modified: Tue, 21 Jul 2026 17:16:18 GMT  
		Size: 43.2 KB (43224 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.3.8` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:be9f72f00595e532ea7eea6c9037ee7d07e3b05eb065afd894e2f08e028e9ec3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **476.9 MB (476932085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:293ac47c8022bf9bc33779444732590c32a614e42ab3b662d237272036456e5f`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 21 Jul 2026 01:10:52 GMT
ENV container oci
# Tue, 21 Jul 2026 01:10:53 GMT
COPY dir:91cba88ba8f66a4d62e50f78add4d1fd07a5799e60037509c9ca5a48fefaa091 in /      
# Tue, 21 Jul 2026 01:10:53 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 01:10:53 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 01:10:53 GMT
COPY dir:190349813a667505f76174069131421a998a39a32ab7f30fbe8be3d4df745463 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 01:10:53 GMT
COPY dir:190349813a667505f76174069131421a998a39a32ab7f30fbe8be3d4df745463 in /root/buildinfo/      
# Tue, 21 Jul 2026 01:10:54 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T01:10:31Z" "org.opencontainers.image.revision"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "build-date"="2026-07-21T01:10:31Z" "architecture"="aarch64" "vcs-ref"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "vcs-type"="git" "release"="1784596070"org.opencontainers.image.created=2026-07-21T01:10:31Z,org.opencontainers.image.revision=4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec
# Tue, 21 Jul 2026 17:01:33 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 21 Jul 2026 17:01:33 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 21 Jul 2026 17:08:00 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 21 Jul 2026 17:08:01 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 21 Jul 2026 17:08:01 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 21 Jul 2026 17:08:01 GMT
RUN fc-cache -v # buildkit
# Tue, 21 Jul 2026 17:08:01 GMT
WORKDIR /usr/share/kibana
# Tue, 21 Jul 2026 17:08:02 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 21 Jul 2026 17:08:02 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 21 Jul 2026 17:08:02 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 17:08:02 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 21 Jul 2026 17:08:02 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 21 Jul 2026 17:08:02 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 21 Jul 2026 17:08:03 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 21 Jul 2026 17:08:04 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 21 Jul 2026 17:08:04 GMT
LABEL org.label-schema.build-date=2026-07-15T22:23:34.585Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-15T22:23:34.585Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8
# Tue, 21 Jul 2026 17:08:04 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.3.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 21 Jul 2026 17:08:04 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 21 Jul 2026 17:08:04 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 21 Jul 2026 17:08:04 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 21 Jul 2026 17:08:04 GMT
USER 1000
```

-	Layers:
	-	`sha256:87b99ca60407b5b3044b907de710ecb00dd7222e3a38acbc4a3fc51d11d7c04e`  
		Last Modified: Tue, 21 Jul 2026 05:00:39 GMT  
		Size: 38.8 MB (38807059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4db7558efefafb47bfe576956819ac8ebbffea8d4c17dbe453007d6073030be`  
		Last Modified: Tue, 21 Jul 2026 17:09:09 GMT  
		Size: 19.3 MB (19282551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb1c6dd1452c9fc52e31959fc36d3cf701caedc844b1afc40c797721d65af67b`  
		Last Modified: Tue, 21 Jul 2026 17:09:16 GMT  
		Size: 402.3 MB (402285572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eebc42567f76294a8f20746fd1e03c2804370f17e8b58e579377d812a63b992e`  
		Last Modified: Tue, 21 Jul 2026 17:09:08 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cf4ab0373f307e278c8fc628df5e0ed0d98a81014f45f42ac2f0055a0ec4435`  
		Last Modified: Tue, 21 Jul 2026 17:09:09 GMT  
		Size: 16.5 MB (16460484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73d57087461cfe8c91373f9c1cba7fcc4c926d5af053d02814a06190b3d9200a`  
		Last Modified: Tue, 21 Jul 2026 17:09:10 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199f996472f91fdd9147eed3fe7c85b70cab2e59bb15c6ccb5b1d742961387a9`  
		Last Modified: Tue, 21 Jul 2026 17:09:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5960abcb11b2a29c33d5392488c6f3c7417f48b2cdc5cc918821d10c6ff6c18a`  
		Last Modified: Tue, 21 Jul 2026 17:09:11 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99393e49c3029213308b98d1ac9239b4894fb987e22319932d6bb5ef250ceb3b`  
		Last Modified: Tue, 21 Jul 2026 17:09:11 GMT  
		Size: 4.9 KB (4929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078dfe0cbbc37c5e28036d4c09e77d664d23ad49e391524ba2840bff47208e99`  
		Last Modified: Tue, 21 Jul 2026 17:09:12 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63e99ba4737cc6d2a99d62747a60a2022f85e7119bd41e0a2f1c26f1aa0cdb3f`  
		Last Modified: Tue, 21 Jul 2026 17:09:12 GMT  
		Size: 73.5 KB (73452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45cad157e800536c24f7547845fe3ae41a00e6f127a6f12cd3ff5a9e19f8e625`  
		Last Modified: Tue, 21 Jul 2026 17:09:12 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34c087cd70c665fc29672beaf997cf0e428f69ddb2698dfa384c13009b0a201d`  
		Last Modified: Tue, 21 Jul 2026 17:09:13 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.3.8` - unknown; unknown

```console
$ docker pull kibana@sha256:4bba00a045238354f56ac14c907f5f53c9eb654b6577527a4780d696be3e2432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5806846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000c05ffb9272dd0ca25577391a58ef3c04224668fb3de4f0289772d998f33a6`

```dockerfile
```

-	Layers:
	-	`sha256:154c7d0d89141747ffe4e7404c3cf33092687f66abe82e9d0d0e04705b16e057`  
		Last Modified: Tue, 21 Jul 2026 17:09:09 GMT  
		Size: 5.8 MB (5763363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56c5acbe1c3cc354cf1b8306982aec11d24b7b935ce1b4823101b9e9295370b0`  
		Last Modified: Tue, 21 Jul 2026 17:09:08 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.4.4`

```console
$ docker pull kibana@sha256:7b9d59cfdec3d43e90e69f3ac8fb4c461e9dfd6a88292779e09664a5c4a869c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.4` - linux; amd64

```console
$ docker pull kibana@sha256:ffcfe3bd722dc0d15d31fc68024364a773d218bdd2b90709e049ea9aa463c9ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **532.0 MB (532041992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a202e1ce646786e7a750d57b3ad85a81676f297e950dcc80f124c50d487c2fb3`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 21 Jul 2026 01:09:57 GMT
ENV container oci
# Tue, 21 Jul 2026 01:09:58 GMT
COPY dir:8b42b9fcf597f41b80a8fe199f2bf302332cfc86735eda7e5948c6f2d9073e65 in /      
# Tue, 21 Jul 2026 01:09:58 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 01:09:58 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 01:09:58 GMT
COPY dir:b745d7b8674edb55898cbd7ca84df6b3ac35b32be96c9a6e6425437dd5390ced in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 01:09:58 GMT
COPY dir:b745d7b8674edb55898cbd7ca84df6b3ac35b32be96c9a6e6425437dd5390ced in /root/buildinfo/      
# Tue, 21 Jul 2026 01:09:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T01:09:09Z" "org.opencontainers.image.revision"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "build-date"="2026-07-21T01:09:09Z" "architecture"="x86_64" "vcs-ref"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "vcs-type"="git" "release"="1784596070"org.opencontainers.image.created=2026-07-21T01:09:09Z,org.opencontainers.image.revision=4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec
# Tue, 21 Jul 2026 17:08:22 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 21 Jul 2026 17:08:22 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 21 Jul 2026 17:17:25 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 21 Jul 2026 17:17:26 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 21 Jul 2026 17:17:26 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 21 Jul 2026 17:17:26 GMT
RUN fc-cache -v # buildkit
# Tue, 21 Jul 2026 17:17:26 GMT
WORKDIR /usr/share/kibana
# Tue, 21 Jul 2026 17:17:26 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 21 Jul 2026 17:17:26 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 21 Jul 2026 17:17:26 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 17:17:26 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 21 Jul 2026 17:17:26 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 21 Jul 2026 17:17:27 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 21 Jul 2026 17:17:28 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 21 Jul 2026 17:17:28 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 21 Jul 2026 17:17:28 GMT
LABEL org.label-schema.build-date=2026-07-15T16:25:48.957Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-15T16:25:48.957Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4
# Tue, 21 Jul 2026 17:17:28 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.4 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 21 Jul 2026 17:17:28 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 21 Jul 2026 17:17:28 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 21 Jul 2026 17:17:28 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 21 Jul 2026 17:17:28 GMT
USER 1000
```

-	Layers:
	-	`sha256:a03e2de3abb5028372473288295f20855a0a709800a709cde6a88cfbb137abc3`  
		Last Modified: Tue, 21 Jul 2026 04:10:18 GMT  
		Size: 40.7 MB (40697275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f4f83a5ddd2ddbd72f3ccf9c03da64b8551888f146e8bc4ec13d3f6af85a39e`  
		Last Modified: Tue, 21 Jul 2026 17:18:42 GMT  
		Size: 19.3 MB (19330304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543fb7aa8ba98528aea0d393ae6c30c75e93817c5ad5f3ee05a9f473613234dd`  
		Last Modified: Tue, 21 Jul 2026 17:18:51 GMT  
		Size: 455.5 MB (455455989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b931d51cf140a265e2aa2742d81127b19b54a1020644cf282c19c66aff26db6`  
		Last Modified: Tue, 21 Jul 2026 17:18:41 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5175623c4ac5d945a090c53dff2f1a0249840d2b276263fbd3de7bd9911f8f37`  
		Last Modified: Tue, 21 Jul 2026 17:18:42 GMT  
		Size: 16.5 MB (16460484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d32481ff80b2874d788b037067c6fbeb442dae9cfbcc154ed715c6aee604cd`  
		Last Modified: Tue, 21 Jul 2026 17:18:43 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3802f5e809b90801b55811a6a2875ccbe1b84e5ab6206d4a541e79fd2d189f3`  
		Last Modified: Tue, 21 Jul 2026 17:18:44 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a72b6e92afc82048d9dbbe1860feab9a3f6d6a1a83c9e91f45be8bda3e8535`  
		Last Modified: Tue, 21 Jul 2026 17:18:44 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6343df771e937224ef1f66784815139ba9bd19693895e0a81d65c0e9c81980af`  
		Last Modified: Tue, 21 Jul 2026 17:18:44 GMT  
		Size: 4.9 KB (4927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32006c95a40f1932a2350490a8f8a623e0486f14c95ed129b194b18887fa2b88`  
		Last Modified: Tue, 21 Jul 2026 17:18:45 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ed66a13cca40041255ccc19f378b2eef624937cd56c7620540947fac9f17d3`  
		Last Modified: Tue, 21 Jul 2026 17:18:46 GMT  
		Size: 74.5 KB (74548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17bc6364211c74c247f35551a67450695c4a7711dfb5838e79da62c078c0dd39`  
		Last Modified: Tue, 21 Jul 2026 17:18:46 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:845d246f0d986225f527ef70c498d6c7bb53f53d77055756c93e124bf0413d81`  
		Last Modified: Tue, 21 Jul 2026 17:18:47 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.4` - unknown; unknown

```console
$ docker pull kibana@sha256:6e3880539b8fcd2124f5383b94d90fe8d4d2540bcc30e76eed4363bde3215a21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5869462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9da18c9141d3d3d2e576b27dda4f827f1cd2d2a5fe7068bc7c4cba9d398becd`

```dockerfile
```

-	Layers:
	-	`sha256:17875b19f4fb689d320669e37196668129e56b642b63d7ebe89e24a06ba1431b`  
		Last Modified: Tue, 21 Jul 2026 17:18:42 GMT  
		Size: 5.8 MB (5826236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58d7a73f17e191b16006454a308836e48974e05f8a86132d810742edf0080fa3`  
		Last Modified: Tue, 21 Jul 2026 17:18:41 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.4` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:bb3d79089e3b4f7fae7d02f10b5a6d3ecee56be7c54eb600860f01bd567e5dc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **543.0 MB (543026160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917a20a64135a1fed38bf52868b478fb7b3d83a403130b8702c03e655f574aa0`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 21 Jul 2026 01:10:52 GMT
ENV container oci
# Tue, 21 Jul 2026 01:10:53 GMT
COPY dir:91cba88ba8f66a4d62e50f78add4d1fd07a5799e60037509c9ca5a48fefaa091 in /      
# Tue, 21 Jul 2026 01:10:53 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 01:10:53 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 01:10:53 GMT
COPY dir:190349813a667505f76174069131421a998a39a32ab7f30fbe8be3d4df745463 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 01:10:53 GMT
COPY dir:190349813a667505f76174069131421a998a39a32ab7f30fbe8be3d4df745463 in /root/buildinfo/      
# Tue, 21 Jul 2026 01:10:54 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T01:10:31Z" "org.opencontainers.image.revision"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "build-date"="2026-07-21T01:10:31Z" "architecture"="aarch64" "vcs-ref"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "vcs-type"="git" "release"="1784596070"org.opencontainers.image.created=2026-07-21T01:10:31Z,org.opencontainers.image.revision=4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec
# Tue, 21 Jul 2026 17:01:41 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 21 Jul 2026 17:01:41 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 21 Jul 2026 17:08:34 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 21 Jul 2026 17:08:34 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 21 Jul 2026 17:08:34 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 21 Jul 2026 17:08:35 GMT
RUN fc-cache -v # buildkit
# Tue, 21 Jul 2026 17:08:35 GMT
WORKDIR /usr/share/kibana
# Tue, 21 Jul 2026 17:08:35 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 21 Jul 2026 17:08:35 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 21 Jul 2026 17:08:35 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 17:08:35 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 21 Jul 2026 17:08:35 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 21 Jul 2026 17:08:36 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 21 Jul 2026 17:08:37 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 21 Jul 2026 17:08:37 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 21 Jul 2026 17:08:37 GMT
LABEL org.label-schema.build-date=2026-07-15T16:25:48.957Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-15T16:25:48.957Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4
# Tue, 21 Jul 2026 17:08:37 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.4 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 21 Jul 2026 17:08:37 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 21 Jul 2026 17:08:37 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 21 Jul 2026 17:08:37 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 21 Jul 2026 17:08:37 GMT
USER 1000
```

-	Layers:
	-	`sha256:87b99ca60407b5b3044b907de710ecb00dd7222e3a38acbc4a3fc51d11d7c04e`  
		Last Modified: Tue, 21 Jul 2026 05:00:39 GMT  
		Size: 38.8 MB (38807059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:798b947dac7d88532573605c240dc03836738e001b8a8491c2b02105cbc5df83`  
		Last Modified: Tue, 21 Jul 2026 17:09:55 GMT  
		Size: 19.3 MB (19282597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e76fb68e39e1411298ebc715045ed744d18fd1ed75538f4d4a9cd669e0d87057`  
		Last Modified: Tue, 21 Jul 2026 17:10:05 GMT  
		Size: 468.4 MB (468379593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aebd9729ac134a53fb448bda69124e3d83f07c7e1e3ebb316b7f9718bf46faca`  
		Last Modified: Tue, 21 Jul 2026 17:09:54 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cdbc4a05ade5a79a5e3ef357cb45d64be98765ce46cbb688584998b08e6ca46`  
		Last Modified: Tue, 21 Jul 2026 17:09:55 GMT  
		Size: 16.5 MB (16460489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b78eb2feebe25196ed5765b1bd17c7ece70a8c6c1e50893f7325c64d7c9f7c4`  
		Last Modified: Tue, 21 Jul 2026 17:09:55 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:145859cbd33e1c05891cc7e9054fc348cda6e935fcae583baa1fe3f62c31e795`  
		Last Modified: Tue, 21 Jul 2026 17:09:57 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dd76dae434ace352929a9a5767f3da49bc6de5f37a502158cd32365bbcb2df3`  
		Last Modified: Tue, 21 Jul 2026 17:09:57 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8240b0d4c5e900dbe8fe6d6b7b57410e1d24635be5547057682b591a1cdc8d18`  
		Last Modified: Tue, 21 Jul 2026 17:09:57 GMT  
		Size: 4.9 KB (4928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75166aa1e0030728773aac4f4fddd79a75eab64fe2b856fa1877d91c23ca2ddb`  
		Last Modified: Tue, 21 Jul 2026 17:09:58 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:836c4e170e8d8a53148f53f9af6fe0d5a653d75c7304da141284c0eb4e7b399e`  
		Last Modified: Tue, 21 Jul 2026 17:09:58 GMT  
		Size: 73.5 KB (73455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de573d3d55cf11b2a013ef83a66251478f6d950fdb22435f9d95345102c1816b`  
		Last Modified: Tue, 21 Jul 2026 17:09:58 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a2b40e175ce1757b61c931a31381d629790048c4fff424d43e5683fef1cc5aa`  
		Last Modified: Tue, 21 Jul 2026 17:09:59 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.4` - unknown; unknown

```console
$ docker pull kibana@sha256:643bab507d1b26b8fb5582f21caae3c370ae005f5e226f3e7e6b1967060bb8c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5866609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7e0383c8ffbb4ce8a9fc33ada922464c9b71ca21fec49feff76da0d75efd6c7`

```dockerfile
```

-	Layers:
	-	`sha256:f0a1f02063aab83983240207a109bb285bce145ec9623745e453af096fca498d`  
		Last Modified: Tue, 21 Jul 2026 17:09:55 GMT  
		Size: 5.8 MB (5823126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dddb5086151ae14e0fb1cea72277b91a536d9d4652f69f4875a886183e1c7159`  
		Last Modified: Tue, 21 Jul 2026 17:09:54 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
