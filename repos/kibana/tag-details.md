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
$ docker pull kibana@sha256:94ce859dcc81d9126b904631fae3760d7adb63921d3641a561edee9d9ea9ce26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.3.8` - linux; amd64

```console
$ docker pull kibana@sha256:ff507f15e07ba14278615c3bb50e0a0d15aca9cac5d753861f8b162cac9f53ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.0 MB (466041635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab0218ce587e46c863412fa37708dc4808b3a2807cbe15b6ca4c3e9dfd5857d1`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.openshift.expose-services=""
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 22 Jul 2026 07:34:24 GMT
ENV container oci
# Wed, 22 Jul 2026 07:34:25 GMT
COPY dir:6b16b3336a884691d82bd90e5faf7d65fad1354d2664539a143b7bcc0d24b71e in /      
# Wed, 22 Jul 2026 07:34:25 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 22 Jul 2026 07:34:25 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 07:34:25 GMT
COPY dir:3c57dcdf8d00b61e1e938fb8386fff8fc937e99ea4eadb82d9df5d9aeb4fdee1 in /usr/share/buildinfo/      
# Wed, 22 Jul 2026 07:34:25 GMT
COPY dir:3c57dcdf8d00b61e1e938fb8386fff8fc937e99ea4eadb82d9df5d9aeb4fdee1 in /root/buildinfo/      
# Wed, 22 Jul 2026 07:34:25 GMT
LABEL "org.opencontainers.image.created"="2026-07-22T07:34:05Z" "org.opencontainers.image.revision"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "build-date"="2026-07-22T07:34:05Z" "architecture"="x86_64" "vcs-ref"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "vcs-type"="git" "release"="1784705586"org.opencontainers.image.created=2026-07-22T07:34:05Z,org.opencontainers.image.revision=9932c86214d5e8b9c79570f3f4ebe16275359bc0
# Wed, 22 Jul 2026 18:28:57 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 22 Jul 2026 18:28:57 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:37:19 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 22 Jul 2026 18:37:20 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 22 Jul 2026 18:37:20 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 22 Jul 2026 18:37:20 GMT
RUN fc-cache -v # buildkit
# Wed, 22 Jul 2026 18:37:20 GMT
WORKDIR /usr/share/kibana
# Wed, 22 Jul 2026 18:37:20 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 22 Jul 2026 18:37:20 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 22 Jul 2026 18:37:20 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:37:20 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 22 Jul 2026 18:37:20 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 22 Jul 2026 18:37:21 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 22 Jul 2026 18:37:22 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 22 Jul 2026 18:37:22 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 22 Jul 2026 18:37:22 GMT
LABEL org.label-schema.build-date=2026-07-15T22:23:34.585Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-15T22:23:34.585Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8
# Wed, 22 Jul 2026 18:37:22 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.3.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 22 Jul 2026 18:37:22 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 22 Jul 2026 18:37:22 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 22 Jul 2026 18:37:22 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 22 Jul 2026 18:37:22 GMT
USER 1000
```

-	Layers:
	-	`sha256:4e7920a6df9f698998c80db9c24d69dedc87ab71cb83d5f35c3db42281db6ec0`  
		Last Modified: Wed, 22 Jul 2026 08:43:24 GMT  
		Size: 40.7 MB (40722592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:985c437bae7bfd36e84ad7f3f2691de3fc6ebd63a8e897444a9c92d3386b9667`  
		Last Modified: Wed, 22 Jul 2026 18:38:23 GMT  
		Size: 19.3 MB (19327908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:043474430d176345374d4512a5a91b22f5f215d49fc07d1149a410fb2fa0bc89`  
		Last Modified: Wed, 22 Jul 2026 18:38:30 GMT  
		Size: 389.4 MB (389432707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89dcc5d76198fc95134aa70d480c59c915a728d7d569698ed6a7d66a96b13a0`  
		Last Modified: Wed, 22 Jul 2026 18:38:22 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c93916f67e87ee8cfe4249dde9fbc4d0b0997d1a72ff56194487be500bfaad9`  
		Last Modified: Wed, 22 Jul 2026 18:38:23 GMT  
		Size: 16.5 MB (16460492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce2f1f81ed861e4901d004f4f9b0296d39abe4b27c0250648a7821b5137d1f5`  
		Last Modified: Wed, 22 Jul 2026 18:38:23 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba55f1c142bf1eae9343010960e52a404e97399079c57c96a1b79b41cb5b98f`  
		Last Modified: Wed, 22 Jul 2026 18:38:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae39d4204974d6e7ad7bc1f6b6ce8fd52c2ead0d225098a1d4e5ea62f66a60ad`  
		Last Modified: Wed, 22 Jul 2026 18:38:25 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9956ef6db93e4aace46b477444bdaa1034191a439035a58ca2cb53fd0d33ce64`  
		Last Modified: Wed, 22 Jul 2026 18:38:25 GMT  
		Size: 4.9 KB (4928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce95d82cc3e8a2b815a2d4529657b76795b068f6618efcfcbd172f1b8b19f030`  
		Last Modified: Wed, 22 Jul 2026 18:38:26 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cc90bce1c6ee088d2969a0043541e675b8951352ce48a7b89312bcda98ba6a`  
		Last Modified: Wed, 22 Jul 2026 18:38:26 GMT  
		Size: 74.5 KB (74548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03bfa53468964ed6aa223e6ae5502c99438ea65c4e9d9911a465b18c75e72112`  
		Last Modified: Wed, 22 Jul 2026 18:38:27 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d0a7570f8c6325f2a0058420385a6a6ddf8b2323d168c0ae90f13b74213661b`  
		Last Modified: Wed, 22 Jul 2026 18:38:27 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.3.8` - unknown; unknown

```console
$ docker pull kibana@sha256:286dece98c91a2f48499e230b28f03d8f30a3d474191f147b28f8210d6d335e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5809706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1f1e594657788a53ea2ead69478ec91d5fd50a14b1aff7a4b53ab19d28e04b`

```dockerfile
```

-	Layers:
	-	`sha256:db0dc3cd08c7bb49af488e3f191b68793506d5ae6bacff36882fe239f2621e6f`  
		Last Modified: Wed, 22 Jul 2026 18:38:22 GMT  
		Size: 5.8 MB (5766481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:276ca1d2466dffc39eb16bbcbd87726038354919f3adca51003565adfb554f60`  
		Last Modified: Wed, 22 Jul 2026 18:38:22 GMT  
		Size: 43.2 KB (43225 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.3.8` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:42dbbfbd6289d3725b59740f9f20f084186dcd29ed40f06e2e0e6bcd91cb2305
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **476.9 MB (476940394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f19d5c00eb7c5a768d51d01656169972001e82747bc01cbc2205331dd8cdeeb`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.openshift.expose-services=""
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 22 Jul 2026 07:37:07 GMT
ENV container oci
# Wed, 22 Jul 2026 07:37:08 GMT
COPY dir:13cb9595e24a2f94b16cce79d23e558d6f0db7a9c73a3191107351f48264bcc1 in /      
# Wed, 22 Jul 2026 07:37:08 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 22 Jul 2026 07:37:08 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 07:37:08 GMT
COPY dir:094a17be797e369d330171a023f19cc40f274ac5717bef56f0a13530510171e7 in /usr/share/buildinfo/      
# Wed, 22 Jul 2026 07:37:08 GMT
COPY dir:094a17be797e369d330171a023f19cc40f274ac5717bef56f0a13530510171e7 in /root/buildinfo/      
# Wed, 22 Jul 2026 07:37:09 GMT
LABEL "org.opencontainers.image.created"="2026-07-22T07:36:45Z" "org.opencontainers.image.revision"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "build-date"="2026-07-22T07:36:45Z" "architecture"="aarch64" "vcs-ref"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "vcs-type"="git" "release"="1784705586"org.opencontainers.image.created=2026-07-22T07:36:45Z,org.opencontainers.image.revision=9932c86214d5e8b9c79570f3f4ebe16275359bc0
# Wed, 22 Jul 2026 18:53:55 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 22 Jul 2026 18:53:55 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 22 Jul 2026 19:00:44 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 22 Jul 2026 19:00:45 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 22 Jul 2026 19:00:45 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 22 Jul 2026 19:00:45 GMT
RUN fc-cache -v # buildkit
# Wed, 22 Jul 2026 19:00:45 GMT
WORKDIR /usr/share/kibana
# Wed, 22 Jul 2026 19:00:45 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 22 Jul 2026 19:00:45 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 22 Jul 2026 19:00:45 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 19:00:45 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 22 Jul 2026 19:00:45 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 22 Jul 2026 19:00:46 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 22 Jul 2026 19:00:47 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 22 Jul 2026 19:00:47 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 22 Jul 2026 19:00:47 GMT
LABEL org.label-schema.build-date=2026-07-15T22:23:34.585Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-15T22:23:34.585Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8
# Wed, 22 Jul 2026 19:00:47 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.3.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 22 Jul 2026 19:00:47 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 22 Jul 2026 19:00:47 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 22 Jul 2026 19:00:47 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 22 Jul 2026 19:00:47 GMT
USER 1000
```

-	Layers:
	-	`sha256:874d407f446b6129b274afbba9c870e8b07666e3e15e80c2fdb80ce6e0fe8f97`  
		Last Modified: Wed, 22 Jul 2026 08:43:24 GMT  
		Size: 38.8 MB (38824182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3d14f5adc0242859627949ceea7c7f0d02dac2235ad32152a75bace1ccebcdd`  
		Last Modified: Wed, 22 Jul 2026 19:01:54 GMT  
		Size: 19.3 MB (19282860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d179bf421d54482275133a69b0e5fa3d216cc7244cf2a72340ddba5e83523126`  
		Last Modified: Wed, 22 Jul 2026 19:02:03 GMT  
		Size: 402.3 MB (402276464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4ad58ba17100472ce4dc4fd63c58009df3bf3d6248d4bae46215f1dfb1f9c4`  
		Last Modified: Wed, 22 Jul 2026 19:01:53 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b38901b1c4a0af08fda4f1faea009d6b5efe3152206a332c630cec6c6fa8358e`  
		Last Modified: Wed, 22 Jul 2026 19:01:54 GMT  
		Size: 16.5 MB (16460484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f45b344f3ebe99428723e7ef4159efd58236a0f2e4a93d66aa50e1292d70fbc`  
		Last Modified: Wed, 22 Jul 2026 19:01:55 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a214205a35c1c9d97fd3ef699ded21293e4031e7998aa04c013de060a24f2a3`  
		Last Modified: Wed, 22 Jul 2026 19:01:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c37c090cfa868d94290b455ceb6c35483be3c2ec71c2145e6d83244796aa9ba9`  
		Last Modified: Wed, 22 Jul 2026 19:01:56 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13bd7a0def020253a6647a12ff3d3c487ce71b187f1508c7ec1b9deb89daa5a1`  
		Last Modified: Wed, 22 Jul 2026 19:01:56 GMT  
		Size: 4.9 KB (4925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1f233b3e1bedd827e825913c274aa4ae9412be090894ed2617fc4a317b08089`  
		Last Modified: Wed, 22 Jul 2026 19:01:57 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfd6b27260aa37a1620e0bfcb506213670f3aca8e37b22392e1c8ee5462c4ca7`  
		Last Modified: Wed, 22 Jul 2026 19:01:57 GMT  
		Size: 73.5 KB (73450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:defced4bab9cb70f8ae77568cf4f10959a5f54ddcf7235734fd4b24715d0d58a`  
		Last Modified: Wed, 22 Jul 2026 19:01:57 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3ebf2ab89df87e2c1f3c5477416212ceebd7b5fe0c42475d3a8f4675a233d9`  
		Last Modified: Wed, 22 Jul 2026 19:01:59 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.3.8` - unknown; unknown

```console
$ docker pull kibana@sha256:0d7595a59ff746765a4d1726f0282b17ef90aadcf21da42f28bea938492eb3b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5806854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:373fec5f76e72e0ab351509e67099a7616d401938b6f54e0f58b0e8c840ca07b`

```dockerfile
```

-	Layers:
	-	`sha256:e8f9dedb7bbffa5a2f5b6732c1edba55762f2dd7892b2329a56982ce498414f0`  
		Last Modified: Wed, 22 Jul 2026 19:01:53 GMT  
		Size: 5.8 MB (5763371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:677377f5e116d9a3f8cc8e4abfdf9226408bf3e379c71975dc3fbfe27480707c`  
		Last Modified: Wed, 22 Jul 2026 19:01:53 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.4.4`

```console
$ docker pull kibana@sha256:2fcd20b42b91f7f65fa75867e3f7ca9c71bcd31dc9f19806b84190db6cf576ed
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.4` - linux; amd64

```console
$ docker pull kibana@sha256:95508b3e77720efc211153467429640015bd35d11cc691a6c3112bb951dd28b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **532.1 MB (532054147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5ca6b9bf2e08224d526bdadc0a4f7a4178cc7fef64792d4fa703adc033f8954`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.openshift.expose-services=""
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 22 Jul 2026 07:34:24 GMT
ENV container oci
# Wed, 22 Jul 2026 07:34:25 GMT
COPY dir:6b16b3336a884691d82bd90e5faf7d65fad1354d2664539a143b7bcc0d24b71e in /      
# Wed, 22 Jul 2026 07:34:25 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 22 Jul 2026 07:34:25 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 07:34:25 GMT
COPY dir:3c57dcdf8d00b61e1e938fb8386fff8fc937e99ea4eadb82d9df5d9aeb4fdee1 in /usr/share/buildinfo/      
# Wed, 22 Jul 2026 07:34:25 GMT
COPY dir:3c57dcdf8d00b61e1e938fb8386fff8fc937e99ea4eadb82d9df5d9aeb4fdee1 in /root/buildinfo/      
# Wed, 22 Jul 2026 07:34:25 GMT
LABEL "org.opencontainers.image.created"="2026-07-22T07:34:05Z" "org.opencontainers.image.revision"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "build-date"="2026-07-22T07:34:05Z" "architecture"="x86_64" "vcs-ref"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "vcs-type"="git" "release"="1784705586"org.opencontainers.image.created=2026-07-22T07:34:05Z,org.opencontainers.image.revision=9932c86214d5e8b9c79570f3f4ebe16275359bc0
# Wed, 22 Jul 2026 18:28:59 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 22 Jul 2026 18:28:59 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:38:00 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 22 Jul 2026 18:38:00 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 22 Jul 2026 18:38:00 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 22 Jul 2026 18:38:01 GMT
RUN fc-cache -v # buildkit
# Wed, 22 Jul 2026 18:38:01 GMT
WORKDIR /usr/share/kibana
# Wed, 22 Jul 2026 18:38:01 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 22 Jul 2026 18:38:01 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 22 Jul 2026 18:38:01 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:38:01 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 22 Jul 2026 18:38:01 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 22 Jul 2026 18:38:02 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 22 Jul 2026 18:38:02 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 22 Jul 2026 18:38:03 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 22 Jul 2026 18:38:03 GMT
LABEL org.label-schema.build-date=2026-07-15T16:25:48.957Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-15T16:25:48.957Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4
# Wed, 22 Jul 2026 18:38:03 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.4 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 22 Jul 2026 18:38:03 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 22 Jul 2026 18:38:03 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 22 Jul 2026 18:38:03 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 22 Jul 2026 18:38:03 GMT
USER 1000
```

-	Layers:
	-	`sha256:4e7920a6df9f698998c80db9c24d69dedc87ab71cb83d5f35c3db42281db6ec0`  
		Last Modified: Wed, 22 Jul 2026 08:43:24 GMT  
		Size: 40.7 MB (40722592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44633db13fce1116e5a239fe2fae6121e82a3a3155929f7222c10c2dc17f9646`  
		Last Modified: Wed, 22 Jul 2026 18:39:18 GMT  
		Size: 19.3 MB (19327888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f2a02ef7c2dab554e33a60e8e16bb6a0435678ffd0d7784667ebd49b477aed9`  
		Last Modified: Wed, 22 Jul 2026 18:39:26 GMT  
		Size: 455.4 MB (455445237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7f9345b9ad497733040045da55340d34da6522f1ee1d9645a887c0f9abee92`  
		Last Modified: Wed, 22 Jul 2026 18:39:16 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18483785fe9bafdc073e67d1e550f31607d0c2550a93ace8b9cf623113d15a6`  
		Last Modified: Wed, 22 Jul 2026 18:39:17 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9967a6939beb45b9cfe4eeec1e5650aeac483abcc3bfee63f6c4953e43e49c51`  
		Last Modified: Wed, 22 Jul 2026 18:39:18 GMT  
		Size: 5.2 KB (5220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35dc9e957a17834ffd60ee80c614968d1a89f298568442c5abd8182f4f83288`  
		Last Modified: Wed, 22 Jul 2026 18:39:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea387b884bd0e73897680f90aa2d436a3ea7584d63dceab14252142bccb64a94`  
		Last Modified: Wed, 22 Jul 2026 18:39:19 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96f3442b9db82ffd40435031a55f159d09874cbd3059a4767e84ce5adcf69235`  
		Last Modified: Wed, 22 Jul 2026 18:39:19 GMT  
		Size: 4.9 KB (4928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb3f86aba92ff6d05c133d1157d028d6930db795f310d0c1b7e2ac6fa6fb460`  
		Last Modified: Wed, 22 Jul 2026 18:39:20 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe69e3a7f733e15820270c70db4c54e97f89b644e4fd3255663311d2a9724566`  
		Last Modified: Wed, 22 Jul 2026 18:39:21 GMT  
		Size: 74.5 KB (74547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:001a060b3d09c920863b9ac4e5997c11c753edf5221e82d91835c223ea600669`  
		Last Modified: Wed, 22 Jul 2026 18:39:21 GMT  
		Size: 1.1 KB (1051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:682ff80bbfcb8cb939ad352c2af4f54b357d39ef374562974317eaedb0e21285`  
		Last Modified: Wed, 22 Jul 2026 18:39:22 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.4` - unknown; unknown

```console
$ docker pull kibana@sha256:ecb737d90641abac1144fe086c2d332687d427c7adf3f6c9af1163d4eaec6583
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5869470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:839fd736bb5b5c3636046784eeec39878a717a69edd8bd03560c0d78b88a2277`

```dockerfile
```

-	Layers:
	-	`sha256:ff90bc351aec25bc58827d1ad9a50679abccdd27815fd792adfbdffe941d627b`  
		Last Modified: Wed, 22 Jul 2026 18:39:17 GMT  
		Size: 5.8 MB (5826244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b31a76a5be6227ea07c7fbd1825407530765fa087bffae3327e42d532ff6a00f`  
		Last Modified: Wed, 22 Jul 2026 18:39:16 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.4` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:32f1b4e691e347b44eac63c9be0f4c6f12879a80997ba33bf85ae5ca98ddf844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **543.0 MB (543049686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b15365f56b17b841dc6b3906becb448fcdbe543722cccf0051231bf0d7accfdc`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.openshift.expose-services=""
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 22 Jul 2026 07:37:07 GMT
ENV container oci
# Wed, 22 Jul 2026 07:37:08 GMT
COPY dir:13cb9595e24a2f94b16cce79d23e558d6f0db7a9c73a3191107351f48264bcc1 in /      
# Wed, 22 Jul 2026 07:37:08 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 22 Jul 2026 07:37:08 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 07:37:08 GMT
COPY dir:094a17be797e369d330171a023f19cc40f274ac5717bef56f0a13530510171e7 in /usr/share/buildinfo/      
# Wed, 22 Jul 2026 07:37:08 GMT
COPY dir:094a17be797e369d330171a023f19cc40f274ac5717bef56f0a13530510171e7 in /root/buildinfo/      
# Wed, 22 Jul 2026 07:37:09 GMT
LABEL "org.opencontainers.image.created"="2026-07-22T07:36:45Z" "org.opencontainers.image.revision"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "build-date"="2026-07-22T07:36:45Z" "architecture"="aarch64" "vcs-ref"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "vcs-type"="git" "release"="1784705586"org.opencontainers.image.created=2026-07-22T07:36:45Z,org.opencontainers.image.revision=9932c86214d5e8b9c79570f3f4ebe16275359bc0
# Wed, 22 Jul 2026 18:53:54 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 22 Jul 2026 18:53:54 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 22 Jul 2026 19:01:13 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 22 Jul 2026 19:01:14 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 22 Jul 2026 19:01:14 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 22 Jul 2026 19:01:14 GMT
RUN fc-cache -v # buildkit
# Wed, 22 Jul 2026 19:01:14 GMT
WORKDIR /usr/share/kibana
# Wed, 22 Jul 2026 19:01:14 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 22 Jul 2026 19:01:14 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 22 Jul 2026 19:01:14 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 19:01:14 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 22 Jul 2026 19:01:14 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 22 Jul 2026 19:01:15 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 22 Jul 2026 19:01:16 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 22 Jul 2026 19:01:16 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 22 Jul 2026 19:01:16 GMT
LABEL org.label-schema.build-date=2026-07-15T16:25:48.957Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-15T16:25:48.957Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4
# Wed, 22 Jul 2026 19:01:16 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.4 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 22 Jul 2026 19:01:16 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 22 Jul 2026 19:01:16 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 22 Jul 2026 19:01:16 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 22 Jul 2026 19:01:16 GMT
USER 1000
```

-	Layers:
	-	`sha256:874d407f446b6129b274afbba9c870e8b07666e3e15e80c2fdb80ce6e0fe8f97`  
		Last Modified: Wed, 22 Jul 2026 08:43:24 GMT  
		Size: 38.8 MB (38824182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3c987ed9b1d8507bb2ee9f7cf8a0762b44092ef9fab74393a1604549a8fa9c`  
		Last Modified: Wed, 22 Jul 2026 19:02:35 GMT  
		Size: 19.3 MB (19282885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea14068e5a5d1ae05a40c283749dacf69c54c424c9021ac862d1469f508a1118`  
		Last Modified: Wed, 22 Jul 2026 19:02:49 GMT  
		Size: 468.4 MB (468385716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed5a04d1755960299059a5a9b242bcd809693db69feec2db1f57e18d56576e00`  
		Last Modified: Wed, 22 Jul 2026 19:02:34 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b250392d2097f63cab3e90bef044a0c399ff8d40b20ebf53888b33081449accc`  
		Last Modified: Wed, 22 Jul 2026 19:02:35 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3db062b03fe013f4b3d2a4e226dd50cd649f589fd03516b15b7a314da5d3d1`  
		Last Modified: Wed, 22 Jul 2026 19:02:35 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:164fa69093245b68118188ee99f980d10bea727a389adcf36f123f303281bbea`  
		Last Modified: Wed, 22 Jul 2026 19:02:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0cddac031dbf3b9f2eeda5a72a3ec3a2adbcce87a972aae87fa62c4c3f2b640`  
		Last Modified: Wed, 22 Jul 2026 19:02:37 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a24db1be7256e49f73b720544ee562c1c5b961a4040d311731deb470a361490d`  
		Last Modified: Wed, 22 Jul 2026 19:02:37 GMT  
		Size: 4.9 KB (4928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d39737e6661951bc524359fe057e34a12cbb50a6cb4000e224003b8f5b83da6`  
		Last Modified: Wed, 22 Jul 2026 19:02:38 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de2b764004de13dc0fb9d79ae991aced5f8cc5e747b2952e3d2cd23cea2727b4`  
		Last Modified: Wed, 22 Jul 2026 19:02:38 GMT  
		Size: 73.5 KB (73454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14dc1228b82e4ac05ee2d8e1467d667256415df48a1645f917f383b8548efb09`  
		Last Modified: Wed, 22 Jul 2026 19:02:38 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc01cca4765606524542c2112d4d47802eaf9c3495e3b1ff42e3e288b63b60b7`  
		Last Modified: Wed, 22 Jul 2026 19:02:40 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.4` - unknown; unknown

```console
$ docker pull kibana@sha256:c21e4d6c6366caf51fd9e05c4236de56d2627b41a617e741525ed545b3195b30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5866617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c0076d47c65a09c1757896b7877629c8e6680afa996a9a479b3c54f9c74d177`

```dockerfile
```

-	Layers:
	-	`sha256:eeee8f936cb1ddf4c325b3979d42081163bfe91c8b7aed1cb17dbaf000200515`  
		Last Modified: Wed, 22 Jul 2026 19:02:34 GMT  
		Size: 5.8 MB (5823134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e7e06073227a5bf40f93bab8afa3f3fa505e3189cc47506e6b0cd4f49feb24a`  
		Last Modified: Wed, 22 Jul 2026 19:02:34 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
