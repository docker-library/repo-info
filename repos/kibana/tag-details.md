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
$ docker pull kibana@sha256:9bbf99aeaf4933b3894a89921d906cdd24d14301a7d96ca5abfd09c79140e332
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.3.8` - linux; amd64

```console
$ docker pull kibana@sha256:66946c41ec2ead802039f0fb5d05de519e825c362dbfe3c332a2dd5423365cbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.0 MB (466024563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52a7a278ef786edbdb9b5716ebdb8ad3b440cee406066c17086ce20c017a053e`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

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
# Fri, 31 Jul 2026 00:14:09 GMT
EXPOSE map[5601/tcp:{}]
# Fri, 31 Jul 2026 00:14:09 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:22:26 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Fri, 31 Jul 2026 00:22:27 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Fri, 31 Jul 2026 00:22:27 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Fri, 31 Jul 2026 00:22:27 GMT
RUN fc-cache -v # buildkit
# Fri, 31 Jul 2026 00:22:27 GMT
WORKDIR /usr/share/kibana
# Fri, 31 Jul 2026 00:22:27 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Fri, 31 Jul 2026 00:22:27 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 31 Jul 2026 00:22:27 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:22:27 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Fri, 31 Jul 2026 00:22:27 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:22:28 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Fri, 31 Jul 2026 00:22:29 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Fri, 31 Jul 2026 00:22:29 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Fri, 31 Jul 2026 00:22:29 GMT
LABEL org.label-schema.build-date=2026-07-15T22:23:34.585Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-15T22:23:34.585Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8
# Fri, 31 Jul 2026 00:22:29 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.3.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Fri, 31 Jul 2026 00:22:29 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 31 Jul 2026 00:22:29 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Fri, 31 Jul 2026 00:22:29 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Fri, 31 Jul 2026 00:22:29 GMT
USER 1000
```

-	Layers:
	-	`sha256:fa84e92aded1f99bf9799f6272da6aa325a0ec5833ce54b6067c83c51d373be1`  
		Last Modified: Wed, 29 Jul 2026 16:07:04 GMT  
		Size: 40.7 MB (40700889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e63ecc793f9013290dd0711b072bcf8be45d42558a2aecee997c40aea7d52ed4`  
		Last Modified: Fri, 31 Jul 2026 00:23:30 GMT  
		Size: 19.3 MB (19326947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b25969e8247f06723dce72d60a538d3b53114ca3a995c96b212ef05ff30852`  
		Last Modified: Fri, 31 Jul 2026 00:23:37 GMT  
		Size: 389.4 MB (389438305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86d5137ca682ae71d9c25cafc12cc28c60af31c642c7b038a73770771701e69`  
		Last Modified: Fri, 31 Jul 2026 00:23:29 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893a5bc3d79e0e5a8300fdd59b4d4ccb388daa0321d33657c0eb0c8c86c8baa5`  
		Last Modified: Fri, 31 Jul 2026 00:23:30 GMT  
		Size: 16.5 MB (16460477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c67aa1ea2f94ff15d9c4cca6d9140ff40a22ac637020a739142bbf872ad5770`  
		Last Modified: Fri, 31 Jul 2026 00:23:30 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daaaed7c6593ad00c5263649a22d5bba1a1ea8d4bf85ec9ed44550a318be985d`  
		Last Modified: Fri, 31 Jul 2026 00:23:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00a4e25764bf91f33c8d6e83bd198a37f724652a4b330472f018bc3e8bb1dd91`  
		Last Modified: Fri, 31 Jul 2026 00:23:32 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47933df525017cec34dbc1f67c7da7549e55b4671164efba803cae6c1b771c8f`  
		Last Modified: Fri, 31 Jul 2026 00:23:32 GMT  
		Size: 4.9 KB (4928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b6ee12688e7c50102e71878c96ec7cf8f8580b36653af4090c64aa8f157d01`  
		Last Modified: Fri, 31 Jul 2026 00:23:33 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15fdb4f1f69b955a47c622309a5eed57224b2d6693b5cfc61c240694b0a0a3dc`  
		Last Modified: Fri, 31 Jul 2026 00:23:33 GMT  
		Size: 74.5 KB (74546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda5533b115224afaf1b6a6df48f3776009c1328800db78846608a7a9a539902`  
		Last Modified: Fri, 31 Jul 2026 00:23:33 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5c57cb336ed48a13e27072a3ce507b821a8fd185a4dd24040f0737bef47e388`  
		Last Modified: Fri, 31 Jul 2026 00:23:34 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.3.8` - unknown; unknown

```console
$ docker pull kibana@sha256:6d8d3c8123302a0bd5ac20e0ae362b8d8344798e6670be81a126be9368bbedbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5809707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e587b259a53355041d3041f90e7fc2de1feef4954ef0dec3c74e84cd7efa018f`

```dockerfile
```

-	Layers:
	-	`sha256:7d747c3f58befeabf619599207311f2b536a38bae3257676f12b94e02e93ee9a`  
		Last Modified: Fri, 31 Jul 2026 00:23:29 GMT  
		Size: 5.8 MB (5766481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd7daab5905e53a83323d3e0af357886267a6688d7106804067fa51054f0528`  
		Last Modified: Fri, 31 Jul 2026 00:23:29 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.3.8` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:d0d2ff70af0a73063f4a92915f7594505fdad90647c793619a5eabb1c9245b77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **477.0 MB (476956929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844e1f7ad4f3f28b3dbf77e6e4abb9bd4c2411ad914e6c7f92d52d2eaad0a94e`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

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
# Fri, 31 Jul 2026 00:17:10 GMT
EXPOSE map[5601/tcp:{}]
# Fri, 31 Jul 2026 00:17:10 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:23:53 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Fri, 31 Jul 2026 00:23:54 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Fri, 31 Jul 2026 00:23:54 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Fri, 31 Jul 2026 00:23:54 GMT
RUN fc-cache -v # buildkit
# Fri, 31 Jul 2026 00:23:54 GMT
WORKDIR /usr/share/kibana
# Fri, 31 Jul 2026 00:23:54 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Fri, 31 Jul 2026 00:23:54 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 31 Jul 2026 00:23:54 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:23:54 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Fri, 31 Jul 2026 00:23:54 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:23:55 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Fri, 31 Jul 2026 00:23:56 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Fri, 31 Jul 2026 00:23:56 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Fri, 31 Jul 2026 00:23:56 GMT
LABEL org.label-schema.build-date=2026-07-15T22:23:34.585Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-15T22:23:34.585Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e39c92c646f9a6b1e4b7b68d9f59967bb77d5732 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8
# Fri, 31 Jul 2026 00:23:56 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.3.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Fri, 31 Jul 2026 00:23:56 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 31 Jul 2026 00:23:56 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Fri, 31 Jul 2026 00:23:56 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Fri, 31 Jul 2026 00:23:56 GMT
USER 1000
```

-	Layers:
	-	`sha256:f72706ee3c4ed7f3012002662319b160e1be4b1d724cbcbdb1344189ada6e8c6`  
		Last Modified: Wed, 29 Jul 2026 16:05:36 GMT  
		Size: 38.8 MB (38838336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afcde23a0dde5f2d8f4ec72b3f63eab1a25b1106c4c77d6679cf9fd8e75094b2`  
		Last Modified: Fri, 31 Jul 2026 00:25:03 GMT  
		Size: 19.3 MB (19283728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87218cdf4c7bd08e726cdf34d71ee152d9a0421918becb815ae34234adf992b7`  
		Last Modified: Fri, 31 Jul 2026 00:25:10 GMT  
		Size: 402.3 MB (402277954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2665bddef5ad4ae9cd982f156d86d8805e86b6d7d3a1ac7fd64ef0e867874cd8`  
		Last Modified: Fri, 31 Jul 2026 00:25:01 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263c7dc8e8e03a1e81b08109ec2682c5b61f99dd6b9a69c17cfe6f40fa1f8853`  
		Last Modified: Fri, 31 Jul 2026 00:25:02 GMT  
		Size: 16.5 MB (16460492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c565f04d9921a6cdd488c2fb85c0f13dcee0e9f62f740c2e7d8b88ffd831b7`  
		Last Modified: Fri, 31 Jul 2026 00:25:03 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f01d54561d504a79272d480a1bd9e7f46ef2b71365925ea1568f9e3db37ab722`  
		Last Modified: Fri, 31 Jul 2026 00:25:04 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be4e18efa7ee3e24196fdb5baf92b80b28ddc008f5e3e279cf6bcd18feed1140`  
		Last Modified: Fri, 31 Jul 2026 00:25:04 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae5d83f61065502683d1a2d87560e2ce35481040caa0909ff15be88ec262db58`  
		Last Modified: Fri, 31 Jul 2026 00:25:04 GMT  
		Size: 4.9 KB (4929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae285646a390030ac3c90f0ca03407141687b22d0643d07acc0e8e1f1d8dc595`  
		Last Modified: Fri, 31 Jul 2026 00:25:05 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d034824cc3d89cc3c2df26ad8e204580cca9c8046c48ec76c7b6f11851084a`  
		Last Modified: Fri, 31 Jul 2026 00:25:05 GMT  
		Size: 73.5 KB (73455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e66ad534a6fc11f4202d97bf629c7805675aab01f45ff997cd04deddf563df9`  
		Last Modified: Fri, 31 Jul 2026 00:25:05 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fea5402efe7ed9c6bc5ab1a6fa5db427c5e3bd96093c9b91a980d522a88036a3`  
		Last Modified: Fri, 31 Jul 2026 00:25:06 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.3.8` - unknown; unknown

```console
$ docker pull kibana@sha256:3ac4b3a7898497010d256847b88b34adf9aca45f166775bf20b7c0502e9679f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5806854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17808cdc3487c3c9002b831d65e21eecf3f83d98d8244f0405e2d1cbcffb2bfe`

```dockerfile
```

-	Layers:
	-	`sha256:85d857969e0329f46a79a78ff614f9027f9c69b2de9a3fca839b939c1a85e614`  
		Last Modified: Fri, 31 Jul 2026 00:25:02 GMT  
		Size: 5.8 MB (5763371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d7d501d723f9d3f164ba14302da3acbd509bb4e414d45cf26d84dbb66e9597c`  
		Last Modified: Fri, 31 Jul 2026 00:25:01 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.4.4`

```console
$ docker pull kibana@sha256:627ee62f385d02ecbece8488ddeccc7b5d525d2904da915f9ff27cc762796539
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.4` - linux; amd64

```console
$ docker pull kibana@sha256:dc4e4af9b59535b1aa696f035bd30b1e11aea067a2b798d40f8e8636fc7bef79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **532.0 MB (532037961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61507da4171d6862c3ee50fa23c3fa3d3dc00e76ca837f0ca0183d8b0393aaea`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

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
# Fri, 31 Jul 2026 00:14:12 GMT
EXPOSE map[5601/tcp:{}]
# Fri, 31 Jul 2026 00:14:12 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:23:14 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Fri, 31 Jul 2026 00:23:14 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Fri, 31 Jul 2026 00:23:14 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Fri, 31 Jul 2026 00:23:15 GMT
RUN fc-cache -v # buildkit
# Fri, 31 Jul 2026 00:23:15 GMT
WORKDIR /usr/share/kibana
# Fri, 31 Jul 2026 00:23:15 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Fri, 31 Jul 2026 00:23:15 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 31 Jul 2026 00:23:15 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:23:15 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Fri, 31 Jul 2026 00:23:15 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:23:16 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Fri, 31 Jul 2026 00:23:16 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Fri, 31 Jul 2026 00:23:17 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Fri, 31 Jul 2026 00:23:17 GMT
LABEL org.label-schema.build-date=2026-07-15T16:25:48.957Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-15T16:25:48.957Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4
# Fri, 31 Jul 2026 00:23:17 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.4 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Fri, 31 Jul 2026 00:23:17 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 31 Jul 2026 00:23:17 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Fri, 31 Jul 2026 00:23:17 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Fri, 31 Jul 2026 00:23:17 GMT
USER 1000
```

-	Layers:
	-	`sha256:fa84e92aded1f99bf9799f6272da6aa325a0ec5833ce54b6067c83c51d373be1`  
		Last Modified: Wed, 29 Jul 2026 16:07:04 GMT  
		Size: 40.7 MB (40700889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869cced1bee49e16c2229404bf6a988ff2bd5793284dc0dc81f21b3e32c7db11`  
		Last Modified: Fri, 31 Jul 2026 00:24:31 GMT  
		Size: 19.3 MB (19326885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c21a01f886f18d24f2b12102049e1562383b12d574bae3f26c692da214c19bb`  
		Last Modified: Fri, 31 Jul 2026 00:24:39 GMT  
		Size: 455.5 MB (455451762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bcdebbbc42deb6e23a048dfefac874c92627e5b3061b8696ea44c48ca8d1e81`  
		Last Modified: Fri, 31 Jul 2026 00:24:30 GMT  
		Size: 9.5 KB (9528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90e0efe5312eb86477d8ec6bb4f3c4a0da354d4e14997c6fe60734774c0f9ccf`  
		Last Modified: Fri, 31 Jul 2026 00:24:31 GMT  
		Size: 16.5 MB (16460489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369e3e8af2b386abd6448eb527ea8a5758377adc90028fb23b50f91d4e9678f0`  
		Last Modified: Fri, 31 Jul 2026 00:24:31 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b95be48cd5dcef51041773789002c9a0399648c36fc9a13e1faef3b1d24209f5`  
		Last Modified: Fri, 31 Jul 2026 00:24:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d3c0f24dd0f7ecb80cfde9ca58f081b2ceb1deef87af73156e1ff012c97e343`  
		Last Modified: Fri, 31 Jul 2026 00:24:33 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58017b4abaebe533bd552ba0abb541af7f97fcc9f515f4cce5006e25f7609f19`  
		Last Modified: Fri, 31 Jul 2026 00:24:33 GMT  
		Size: 4.9 KB (4926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f71868b2709cfb68a66acd3f496a54059411d326457bbf0709eb34a36e0ed986`  
		Last Modified: Fri, 31 Jul 2026 00:24:34 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cefb98af5a66f90f16835dcd720a414cdd08fa65c534c55bf02110f6399d98d2`  
		Last Modified: Fri, 31 Jul 2026 00:24:34 GMT  
		Size: 74.5 KB (74545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:162a5332ea8fee96cf8a7bfa28ffdb3f48045afea0346723daa8bdc8b057f6de`  
		Last Modified: Fri, 31 Jul 2026 00:24:34 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:effacd563c0d21f12fe3539f9d56eba028bf39fba43c3f97860ada07eed46e07`  
		Last Modified: Fri, 31 Jul 2026 00:24:35 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.4` - unknown; unknown

```console
$ docker pull kibana@sha256:dbeb1af4222a2abf6166deee6c3efa0f65a134b5dbc0b0ab5e97fa6c89b7bed7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5869470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:096bfa26b950b9d3a06b5b65e8436840ba3db65401b5c8c37438d86995737b3c`

```dockerfile
```

-	Layers:
	-	`sha256:05ee87d4b42419f1f8e025255f3fe4df9fd5e15f7ee386f9f79eadf5be000bb5`  
		Last Modified: Fri, 31 Jul 2026 00:24:30 GMT  
		Size: 5.8 MB (5826244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4afda397980aaf52b053ae4404dd333dc83a97e2acaaea3b68c5300cb647e5c3`  
		Last Modified: Fri, 31 Jul 2026 00:24:30 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.4` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:74ee342e37e0af2f83885487d19bf0c58c29064abab33dfaec28a50ad82614bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **543.1 MB (543066079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27142e5237ac3f6eb27713d60021a0ea8fb1348eaf72750160af3de854c6b55`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

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
# Fri, 31 Jul 2026 00:17:09 GMT
EXPOSE map[5601/tcp:{}]
# Fri, 31 Jul 2026 00:17:09 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:24:32 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Fri, 31 Jul 2026 00:24:33 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Fri, 31 Jul 2026 00:24:33 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Fri, 31 Jul 2026 00:24:33 GMT
RUN fc-cache -v # buildkit
# Fri, 31 Jul 2026 00:24:33 GMT
WORKDIR /usr/share/kibana
# Fri, 31 Jul 2026 00:24:33 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Fri, 31 Jul 2026 00:24:33 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 31 Jul 2026 00:24:33 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:24:33 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Fri, 31 Jul 2026 00:24:33 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:24:34 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Fri, 31 Jul 2026 00:24:35 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Fri, 31 Jul 2026 00:24:35 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Fri, 31 Jul 2026 00:24:35 GMT
LABEL org.label-schema.build-date=2026-07-15T16:25:48.957Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-15T16:25:48.957Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=08c91e2fed2dbb7bdca4ec70b32630356bbeef07 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4
# Fri, 31 Jul 2026 00:24:35 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.4 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Fri, 31 Jul 2026 00:24:35 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Fri, 31 Jul 2026 00:24:35 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Fri, 31 Jul 2026 00:24:35 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Fri, 31 Jul 2026 00:24:35 GMT
USER 1000
```

-	Layers:
	-	`sha256:f72706ee3c4ed7f3012002662319b160e1be4b1d724cbcbdb1344189ada6e8c6`  
		Last Modified: Wed, 29 Jul 2026 16:05:36 GMT  
		Size: 38.8 MB (38838336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf8991c6795e23d99c5fbfd480c9459d1a79ee39a053b04e6bd5471acf97e86`  
		Last Modified: Fri, 31 Jul 2026 00:25:54 GMT  
		Size: 19.3 MB (19283797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79885955769478dcad9572bdd77231068827c4cce4f01a0a5c3f11a482766aa9`  
		Last Modified: Fri, 31 Jul 2026 00:26:02 GMT  
		Size: 468.4 MB (468387052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f3f29ab3259b36f253506a758e1aa90d57e4f990ecf449d009fdf721d0478a9`  
		Last Modified: Fri, 31 Jul 2026 00:25:52 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b15d79f51c755e310820365f5e8123c2640db29f768966cc411667bece669f4b`  
		Last Modified: Fri, 31 Jul 2026 00:25:53 GMT  
		Size: 16.5 MB (16460480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ad7015b5a0aeb8692c2580a0e44108fea3e415a291dd30ee44123dd3234b92`  
		Last Modified: Fri, 31 Jul 2026 00:25:53 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:effe316100fdfe306853997d8f18204730ff9434b06ed8dab6af435a5d7151b7`  
		Last Modified: Fri, 31 Jul 2026 00:25:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9bd5834a80ca994c1b39547ce179d2872fd4b57c93af54ba35ff8271a3d8d8a`  
		Last Modified: Fri, 31 Jul 2026 00:25:55 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfbc06958abf9c245a1ebcfb587c3dc3519a280dfb876036a418f4c266083823`  
		Last Modified: Fri, 31 Jul 2026 00:25:55 GMT  
		Size: 4.9 KB (4925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b8a386c718fcb55ee62ed6b7484ede7595e81020119b1e1c778db4d6b2600c`  
		Last Modified: Fri, 31 Jul 2026 00:25:56 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d255304dea88d5d849db4f9ba9f5bf517fe6d852c4bf3b19214cdbf19d458a`  
		Last Modified: Fri, 31 Jul 2026 00:25:56 GMT  
		Size: 73.5 KB (73453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973b11e4bbb8914faf732b39fbd5bf0afb4881189ad3d7a4a85fdcfdb0f20618`  
		Last Modified: Fri, 31 Jul 2026 00:25:56 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6eafae765f8484b48c853de22befafb273b467a6b8a4135efea979ac9a4ce55`  
		Last Modified: Fri, 31 Jul 2026 00:25:57 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.4` - unknown; unknown

```console
$ docker pull kibana@sha256:1a600e276c5ceced6479780a7de4d084ab971c42b44b0242b47357e5f12d2c12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5866617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:147d5b26bc72558b1cb6286eb60e3fff7e8dc343e049fa1e2fede37beb1efa39`

```dockerfile
```

-	Layers:
	-	`sha256:75b4122ff8188332ea8b0fbd8e0567a92528d869231b7e9046c82433172e4a57`  
		Last Modified: Fri, 31 Jul 2026 00:25:53 GMT  
		Size: 5.8 MB (5823134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d20aaf1d50811e351f2d7819794c1094f71b6375c577c7a606c5d705c374afc`  
		Last Modified: Fri, 31 Jul 2026 00:25:52 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
