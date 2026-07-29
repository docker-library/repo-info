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
$ docker pull kibana@sha256:4c8b8d3f80b7e03c3c9ba418c042ccccb5e1d3a22ce6b988f85a38718f2fa76c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.3.8` - linux; amd64

```console
$ docker pull kibana@sha256:d7f8d3eb808132b48207e59a9c8fd704d1e7a2623a735a711d1805b5272cf8e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.0 MB (466023780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a4310368068a46d82109def3cc05ace59b1c4b61bd868f3ea07bdab36f3af9e`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:52:58 GMT
ENV container oci
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:3c47f725c6bc27e82037ebd32982187d7c3fdb026b27c68e8afaccfbbd204f83 in /      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:52:59 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:52:32Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:52:32Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:52:32Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:28:17 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 29 Jul 2026 18:28:17 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:36:20 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 29 Jul 2026 18:36:21 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 29 Jul 2026 18:36:21 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 29 Jul 2026 18:36:21 GMT
RUN fc-cache -v # buildkit
# Wed, 29 Jul 2026 18:36:21 GMT
WORKDIR /usr/share/kibana
# Wed, 29 Jul 2026 18:36:21 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 29 Jul 2026 18:36:21 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 29 Jul 2026 18:36:21 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:36:21 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 29 Jul 2026 18:36:21 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 18:36:22 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 29 Jul 2026 18:36:23 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 29 Jul 2026 18:36:23 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 29 Jul 2026 18:36:23 GMT
LABEL org.label-schema.build-date=2026-07-15T22:23:34.585Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-15T22:23:34.585Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8
# Wed, 29 Jul 2026 18:36:23 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.3.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 29 Jul 2026 18:36:23 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 29 Jul 2026 18:36:23 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 29 Jul 2026 18:36:23 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 29 Jul 2026 18:36:23 GMT
USER 1000
```

-	Layers:
	-	`sha256:4ea47df267f432c56243aff71faf74e328d0558e2bee83a9cd394e31d62a4129`  
		Last Modified: Tue, 28 Jul 2026 05:41:44 GMT  
		Size: 40.7 MB (40700572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c54d677e90db4a4724e7c0f06a51c7e4d85d333eff00855557ebc39e7c3d7a`  
		Last Modified: Wed, 29 Jul 2026 18:37:21 GMT  
		Size: 19.3 MB (19326877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:921f5c6eeef70de0855c7c56673b5f2170fb6ada9f3ee96631859fd5310ed28e`  
		Last Modified: Wed, 29 Jul 2026 18:37:27 GMT  
		Size: 389.4 MB (389437923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8028dc61030be194e1c2fded55586d6544dea37a8b0c98266d43c9ba8de5528`  
		Last Modified: Wed, 29 Jul 2026 18:37:20 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f6ba08e09a2671a0ff41606674931f0000ca1384b427b072fd662034b162725`  
		Last Modified: Wed, 29 Jul 2026 18:37:21 GMT  
		Size: 16.5 MB (16460475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86445b18790c5c679b45919af85c1c0d1cacd289b4627263fa48f610737dc83`  
		Last Modified: Wed, 29 Jul 2026 18:37:21 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ed16fc4cce694665fe662f865882f0b12699e5d3ef035b253a2e2f3d3b1b76`  
		Last Modified: Wed, 29 Jul 2026 18:37:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c4992f7476e78f037926f902414294221c3c857d73810898e3a46ce77f62fc5`  
		Last Modified: Wed, 29 Jul 2026 18:37:22 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20cd96e38b013eed691d65b792a82ffdc63386a524c93a7c18169a9d05ddca84`  
		Last Modified: Wed, 29 Jul 2026 18:37:22 GMT  
		Size: 4.9 KB (4926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0dc2e2751e43460789abaf13b1038580c328b65e0b62f77ab92af696c9af5de`  
		Last Modified: Wed, 29 Jul 2026 18:37:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d5f21a23d3da9ca1e9be16b90412bbde2e548b30de7231a1bebc7dbabc7f32`  
		Last Modified: Wed, 29 Jul 2026 18:37:24 GMT  
		Size: 74.5 KB (74547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aeac9c3fd227325dec262d20f45da010351dafbac4aa8b5412c2bc38528a879`  
		Last Modified: Wed, 29 Jul 2026 18:37:24 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30e7e8fc5f0f60a258bdd11b9a34f499eb913f8b09d9e310138df1ffa8d28e6`  
		Last Modified: Wed, 29 Jul 2026 18:37:25 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.3.8` - unknown; unknown

```console
$ docker pull kibana@sha256:9e3f74f5e362b3acc2fe11a72b67532f026cd7f18bb26cf16a3d7f4dc3f54bc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5809706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbe4eb8dc975f59fd2483998717ddda0b5a8d44813b623120833969a5b3c2f26`

```dockerfile
```

-	Layers:
	-	`sha256:9b141de79fe0a4b98ca6139f601c86a2d1d80ed673cbf02dd0bedd1b628b6f33`  
		Last Modified: Wed, 29 Jul 2026 18:37:20 GMT  
		Size: 5.8 MB (5766481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80e83fab2c9540d12f3986ffca209b67856439b276c5879696ec606f017aba74`  
		Last Modified: Wed, 29 Jul 2026 18:37:20 GMT  
		Size: 43.2 KB (43225 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.3.8` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:7fccc21daec19e61463314d0ba4e59dec997982994baf767412d9f2eb7022abb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **477.0 MB (476956653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f654e0d43171bbe6b94f93743e1a0bc0dc82f85d6566865daf5218ebf5ce7238`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:54:32 GMT
ENV container oci
# Tue, 28 Jul 2026 04:54:33 GMT
COPY dir:769b2354bc8edc7a99743746593875a88e8e231193bec804f059f55be2297f6b in /      
# Tue, 28 Jul 2026 04:54:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:54:33 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:54:33 GMT
COPY dir:73e49171ade23d8843dd062725616e7374a5634990954b80e20cf6a75ad5de95 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:54:33 GMT
COPY dir:73e49171ade23d8843dd062725616e7374a5634990954b80e20cf6a75ad5de95 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:54:33 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:54:11Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:54:11Z" "architecture"="aarch64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:54:11Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:27:49 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 29 Jul 2026 18:27:49 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:34:39 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 29 Jul 2026 18:34:39 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 29 Jul 2026 18:34:40 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 29 Jul 2026 18:34:40 GMT
RUN fc-cache -v # buildkit
# Wed, 29 Jul 2026 18:34:40 GMT
WORKDIR /usr/share/kibana
# Wed, 29 Jul 2026 18:34:40 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 29 Jul 2026 18:34:40 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 29 Jul 2026 18:34:40 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:34:40 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 29 Jul 2026 18:34:40 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 18:34:41 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 29 Jul 2026 18:34:42 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 29 Jul 2026 18:34:42 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 29 Jul 2026 18:34:42 GMT
LABEL org.label-schema.build-date=2026-07-15T22:23:34.585Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-15T22:23:34.585Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8
# Wed, 29 Jul 2026 18:34:42 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.3.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 29 Jul 2026 18:34:42 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 29 Jul 2026 18:34:42 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 29 Jul 2026 18:34:42 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 29 Jul 2026 18:34:42 GMT
USER 1000
```

-	Layers:
	-	`sha256:4431e8a4eff3b814ee9a578afed4f42f29096b2d18c83f5206d2321ac4cb1a54`  
		Last Modified: Tue, 28 Jul 2026 05:41:47 GMT  
		Size: 38.8 MB (38838081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d676117ce9baa2f95dacd21caa52b0e12b9011f15a2a01df8469061ded84be8`  
		Last Modified: Wed, 29 Jul 2026 18:35:48 GMT  
		Size: 19.3 MB (19283665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bc03b0afc126ee476b23886f881d03d423b9b3abc12718d34b3c01aaf2992a8`  
		Last Modified: Wed, 29 Jul 2026 18:35:55 GMT  
		Size: 402.3 MB (402278014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a181886998c5fabea399e79b47edbbccb5b01b26e32d29d4fe0cc2b4383df3`  
		Last Modified: Wed, 29 Jul 2026 18:35:47 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:964a932b77488f36915d4c2ac697f79feb79c1c67354c7b1ba26f9388999eaf6`  
		Last Modified: Wed, 29 Jul 2026 18:35:48 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f23c4d37da281658d6fc7327256980708d7b4058fbd338f38c658d45a9f4739f`  
		Last Modified: Wed, 29 Jul 2026 18:35:48 GMT  
		Size: 5.2 KB (5217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6786ac96b5b6de6a8344f8bc063b6229279688eaa285e62c67e688fdfa3e2b5`  
		Last Modified: Wed, 29 Jul 2026 18:35:50 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d97422a7cd1d878ee844ac2137b11e000cc15b686b3d15f04485582673565e7`  
		Last Modified: Wed, 29 Jul 2026 18:35:50 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df453d30d65d401673cd83d5eb5d90d386271c2d6cb3108286152e5d74a5be2`  
		Last Modified: Wed, 29 Jul 2026 18:35:50 GMT  
		Size: 4.9 KB (4925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2daf33fb4aff0145f071a51a2b44a30dca2424b3dc124d2c92bd00f71503fc2e`  
		Last Modified: Wed, 29 Jul 2026 18:35:51 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db669067f9264e53c976c6fdb1b36aceb9363a1d1f6361436b23173649331086`  
		Last Modified: Wed, 29 Jul 2026 18:35:51 GMT  
		Size: 73.5 KB (73452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27016e9b198899ea7b8a23a7b61340ec6c06dd765a4e6218b9a742ea242b38d8`  
		Last Modified: Wed, 29 Jul 2026 18:35:51 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eb60cd76747d5e6640355dab0867e30f6cb17ff6ffa088ab8411434bd7c7ca7`  
		Last Modified: Wed, 29 Jul 2026 18:35:52 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.3.8` - unknown; unknown

```console
$ docker pull kibana@sha256:1827fd269bd6240d547ae07bf8a255dcefede4deab9d7adc6ff891a60cd9a5e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5806854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e91a925b0affb00694ac02cd117aef91c3e921d5771a0161ccd771f6c38946`

```dockerfile
```

-	Layers:
	-	`sha256:c7357bbc3c56f35f99eb3ea09482fd36265c8f7954d622a2211f8bd2a9459acc`  
		Last Modified: Wed, 29 Jul 2026 18:35:48 GMT  
		Size: 5.8 MB (5763371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8498293246f27a338af4230703811106221e88f50bd157f473ed2b05f7e8420`  
		Last Modified: Wed, 29 Jul 2026 18:35:47 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.4.4`

```console
$ docker pull kibana@sha256:eaf9d6ab974820b34baee854f4fa20ffa6076d69b17b0111ae7c43263259d961
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.4` - linux; amd64

```console
$ docker pull kibana@sha256:7c525bbcef75cd1696a7c2ed4f70fe7181631e796cf5ccef981f1f83bebaadc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **532.0 MB (532032166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbadc229cf36b6468f794311d32410a75067e5f168fc26b0e4dd96f36612d11b`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:52:58 GMT
ENV container oci
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:3c47f725c6bc27e82037ebd32982187d7c3fdb026b27c68e8afaccfbbd204f83 in /      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:52:59 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:52:32Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:52:32Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:52:32Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:28:21 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 29 Jul 2026 18:28:21 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:37:06 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 29 Jul 2026 18:37:07 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 29 Jul 2026 18:37:07 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 29 Jul 2026 18:37:07 GMT
RUN fc-cache -v # buildkit
# Wed, 29 Jul 2026 18:37:07 GMT
WORKDIR /usr/share/kibana
# Wed, 29 Jul 2026 18:37:07 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 29 Jul 2026 18:37:07 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 29 Jul 2026 18:37:07 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:37:07 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 29 Jul 2026 18:37:07 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 18:37:08 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 29 Jul 2026 18:37:09 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 29 Jul 2026 18:37:09 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 29 Jul 2026 18:37:09 GMT
LABEL org.label-schema.build-date=2026-07-15T16:25:48.957Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-15T16:25:48.957Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4
# Wed, 29 Jul 2026 18:37:09 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.4 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 29 Jul 2026 18:37:09 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 29 Jul 2026 18:37:09 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 29 Jul 2026 18:37:09 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 29 Jul 2026 18:37:09 GMT
USER 1000
```

-	Layers:
	-	`sha256:4ea47df267f432c56243aff71faf74e328d0558e2bee83a9cd394e31d62a4129`  
		Last Modified: Tue, 28 Jul 2026 05:41:44 GMT  
		Size: 40.7 MB (40700572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81d55efa2528cd1c07cd4d866d55f584df9fa13602ba0645eb7a149473bcdcc4`  
		Last Modified: Wed, 29 Jul 2026 18:38:22 GMT  
		Size: 19.3 MB (19326834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7864bcf99d7c7660ffe6708dc340d48e8fe827d24b8e38afbde31c7aac5ce438`  
		Last Modified: Wed, 29 Jul 2026 18:38:35 GMT  
		Size: 455.4 MB (455446347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f2481a227a20f844ca2cdfbb2c3947b26d7e6015c57ba5a187a2bc8c713c48`  
		Last Modified: Wed, 29 Jul 2026 18:38:21 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ff385c3c052600fcb7166a3f4d10da16851ad82e327c306fe127d912083b9e`  
		Last Modified: Wed, 29 Jul 2026 18:38:22 GMT  
		Size: 16.5 MB (16460482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcecd7f763a3ee91d535b5191cb27bbf578cc6335cc3aa1069f2507b7cc466f9`  
		Last Modified: Wed, 29 Jul 2026 18:38:22 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22ae86024cc60bcf6d74ebd5d534ac93dca203accf7240a9f268f72998233c68`  
		Last Modified: Wed, 29 Jul 2026 18:38:23 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf3b2ca5f9b859f06178b129509caf938577cc658e2c00ba998eecb3bfe86a1`  
		Last Modified: Wed, 29 Jul 2026 18:38:23 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0290bb5414504ff68564bb028aaa36725346521ebb41cd54967ef0d8d4c14e4`  
		Last Modified: Wed, 29 Jul 2026 18:38:23 GMT  
		Size: 4.9 KB (4923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cd3e86b77a352b447c72652d4c667647997b9954c291199b4a5d5eca08bd407`  
		Last Modified: Wed, 29 Jul 2026 18:38:25 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdd2cdc4e2b867a2f98fe08a3e9c95e38d726063eeb4f297a227c701be49c843`  
		Last Modified: Wed, 29 Jul 2026 18:38:25 GMT  
		Size: 74.5 KB (74546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:501b859a635978bd04927b8115dcf811162cc0ca0b7b4e2c0fb3710511ebab67`  
		Last Modified: Wed, 29 Jul 2026 18:38:25 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c2918d67921791d155c8258892ab558c2fdaf44667a41650347d481a2c41dcb`  
		Last Modified: Wed, 29 Jul 2026 18:38:26 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.4` - unknown; unknown

```console
$ docker pull kibana@sha256:ecb611071c71879f94633750cea3b891124d212f4aefb43023b7a2b3749d9d86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5869470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dde6d043c9620b94b60044273ad29664dacb2a054f058a27a8e6efb3ae7ff91`

```dockerfile
```

-	Layers:
	-	`sha256:9f4534ca9f64e29ea4f25133fd270b6162ea5f033e16bd338cce7db5f0e78314`  
		Last Modified: Wed, 29 Jul 2026 18:38:21 GMT  
		Size: 5.8 MB (5826244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12fd0b9252b2eb57bdfe2979991bb6e340617277ff4515301818956ab5c2e198`  
		Last Modified: Wed, 29 Jul 2026 18:38:21 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.4` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:28a66fea04406fc9ba198aa0fa7b30191dda4e2c890eb46f942362a29bd25123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **543.1 MB (543067121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c9b719c9575b1a7c0a69632c5d3b9c025240fd029f84cbe2a5dfba8c21e707`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:54:32 GMT
ENV container oci
# Tue, 28 Jul 2026 04:54:33 GMT
COPY dir:769b2354bc8edc7a99743746593875a88e8e231193bec804f059f55be2297f6b in /      
# Tue, 28 Jul 2026 04:54:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:54:33 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:54:33 GMT
COPY dir:73e49171ade23d8843dd062725616e7374a5634990954b80e20cf6a75ad5de95 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:54:33 GMT
COPY dir:73e49171ade23d8843dd062725616e7374a5634990954b80e20cf6a75ad5de95 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:54:33 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:54:11Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:54:11Z" "architecture"="aarch64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:54:11Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:27:45 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 29 Jul 2026 18:27:45 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:35:11 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 29 Jul 2026 18:35:12 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 29 Jul 2026 18:35:12 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Wed, 29 Jul 2026 18:35:12 GMT
RUN fc-cache -v # buildkit
# Wed, 29 Jul 2026 18:35:12 GMT
WORKDIR /usr/share/kibana
# Wed, 29 Jul 2026 18:35:12 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 29 Jul 2026 18:35:12 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 29 Jul 2026 18:35:12 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:35:12 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 29 Jul 2026 18:35:12 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 18:35:13 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 29 Jul 2026 18:35:14 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 29 Jul 2026 18:35:14 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 29 Jul 2026 18:35:14 GMT
LABEL org.label-schema.build-date=2026-07-15T16:25:48.957Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-15T16:25:48.957Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4
# Wed, 29 Jul 2026 18:35:14 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.4 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Wed, 29 Jul 2026 18:35:15 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 29 Jul 2026 18:35:15 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 29 Jul 2026 18:35:15 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 29 Jul 2026 18:35:15 GMT
USER 1000
```

-	Layers:
	-	`sha256:4431e8a4eff3b814ee9a578afed4f42f29096b2d18c83f5206d2321ac4cb1a54`  
		Last Modified: Tue, 28 Jul 2026 05:41:47 GMT  
		Size: 38.8 MB (38838081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33d0a57c733e8e11265694584ce343024632da4d92990c141191ea270da7143a`  
		Last Modified: Wed, 29 Jul 2026 18:36:33 GMT  
		Size: 19.3 MB (19283716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d205159d0f41e309f4a0fa527e8c94d91bf827e00197b43cc46474c0cecfd70`  
		Last Modified: Wed, 29 Jul 2026 18:36:41 GMT  
		Size: 468.4 MB (468388434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c5aeadb5ad7aed158494d66bca62d71becc5b0c1680faac1d3dd39f28a268c6`  
		Last Modified: Wed, 29 Jul 2026 18:36:32 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc3ca970dcd48462072bb8a35f7b4f7b55f1d0a759f582c21f6345dcd14f2bc`  
		Last Modified: Wed, 29 Jul 2026 18:36:33 GMT  
		Size: 16.5 MB (16460483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bf40163155c629f3664acd796ae8c2558cbe5f74c15d14c16f557baff24bdca`  
		Last Modified: Wed, 29 Jul 2026 18:36:33 GMT  
		Size: 5.2 KB (5220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96c158ce4698ad766a846ce2cfbed7547a10479d9a63f6c13b3a2ed5271c3555`  
		Last Modified: Wed, 29 Jul 2026 18:36:34 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f5bd795b4e9b4f18b3e3bdbd21728e279d038ce9fe196299236df9bda08e58`  
		Last Modified: Wed, 29 Jul 2026 18:36:35 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21d668f909abbd73fe7cce44b932f0264138462fec200b10c5f2adca36d8c7f`  
		Last Modified: Wed, 29 Jul 2026 18:36:34 GMT  
		Size: 4.9 KB (4926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17bfa671dffb06b7959e979ca135226377a6a5066120bfb980a009cc21f84bc5`  
		Last Modified: Wed, 29 Jul 2026 18:36:36 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18849aa19578d062e51dc61efef392a35416f8d68d5a200c736e55ea79c6a942`  
		Last Modified: Wed, 29 Jul 2026 18:36:36 GMT  
		Size: 73.5 KB (73452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24feec69beef2de19b26eaa73b360b36af3469d510be7ac58133f6c3bc37580b`  
		Last Modified: Wed, 29 Jul 2026 18:36:36 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b6966a58fe234df871368515c1ca2d67ad07d936ee1e00dd92cf8d88425dd4f`  
		Last Modified: Wed, 29 Jul 2026 18:36:37 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.4` - unknown; unknown

```console
$ docker pull kibana@sha256:9d965d8f4bd58fbc47571e8bebd45789366e95804be2434845aea70a056579c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5866617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000a664011b05db5484ab4c8038e93df4c6566a3bc70e38ebc5bffccf4dcffcc`

```dockerfile
```

-	Layers:
	-	`sha256:019de1e5dd32e3797991d6d359917835ea304206d44d9cdc722eb110f52911bc`  
		Last Modified: Wed, 29 Jul 2026 18:36:32 GMT  
		Size: 5.8 MB (5823134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1859c9d8d42e298f0488eb018fabe3828be33e764b7ecd156b8078f0345758ad`  
		Last Modified: Wed, 29 Jul 2026 18:36:32 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
