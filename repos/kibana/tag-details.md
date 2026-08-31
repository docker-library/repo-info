<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:8.19.20`](#kibana81920)
-	[`kibana:9.4.5`](#kibana945)
-	[`kibana:9.5.2`](#kibana952)

## `kibana:8.19.20`

```console
$ docker pull kibana@sha256:33cc4a40540216bae462744c771d79a72364c61b621478865399e703570224f4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:8.19.20` - linux; amd64

```console
$ docker pull kibana@sha256:aa2bed410c3b4babef658c4d95b7430eabf103b57df5abffb725ddf0f7f4f38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.7 MB (456715799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ac7cf2ece514f020f21f37a36e09b4aacb48f950ebc406e17fa883b7660832`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:23:38 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 18 Aug 2026 19:23:38 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:31:52 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 18 Aug 2026 19:31:53 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 18 Aug 2026 19:31:53 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 18 Aug 2026 19:31:53 GMT
RUN fc-cache -v # buildkit
# Tue, 18 Aug 2026 19:31:53 GMT
WORKDIR /usr/share/kibana
# Tue, 18 Aug 2026 19:31:53 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 18 Aug 2026 19:31:53 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 18 Aug 2026 19:31:53 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:31:53 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 18 Aug 2026 19:31:53 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 19:31:54 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 18 Aug 2026 19:31:55 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 18 Aug 2026 19:31:55 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 18 Aug 2026 19:31:55 GMT
LABEL org.label-schema.build-date=2026-08-05T22:09:51.434Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=4036be744384423f261fcf74b1b99fd4d044dc97 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.20 org.opencontainers.image.created=2026-08-05T22:09:51.434Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=4036be744384423f261fcf74b1b99fd4d044dc97 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.20
# Tue, 18 Aug 2026 19:31:55 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 18 Aug 2026 19:31:55 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 18 Aug 2026 19:31:55 GMT
USER 1000
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c481a886976e256cf5752490f2c6f2bd428d071e3ae60660fda6c4dbd2fd05d`  
		Last Modified: Tue, 18 Aug 2026 19:32:53 GMT  
		Size: 9.4 MB (9392409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9239a5b307133214e7338179e3ab273e121943b0ee620a226cfa71562649a20`  
		Last Modified: Tue, 18 Aug 2026 19:33:00 GMT  
		Size: 400.9 MB (400926570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7735704036404b0863452fe426119c560754dcc1ff6fb234f1892edcdcfc75`  
		Last Modified: Tue, 18 Aug 2026 19:32:52 GMT  
		Size: 9.5 KB (9529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:707a7a5c2025a817d5ef0ccb37b93b4fe202f8f8652fe16a3160847da2f82d23`  
		Last Modified: Tue, 18 Aug 2026 19:32:53 GMT  
		Size: 16.5 MB (16460495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ebf49fef16e26dc9dfa284f9296d48f369155225176c2a3472a1a2e20a5e07`  
		Last Modified: Tue, 18 Aug 2026 19:32:54 GMT  
		Size: 5.2 KB (5241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3a711361ba59f93067be47806c1d1d093f939161b507e66bda3da1c82ac4d60`  
		Last Modified: Tue, 18 Aug 2026 19:32:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe9d890e57da39cc4d531fcf018bbea3aa442762f99de2fc78c1382c36a601ed`  
		Last Modified: Tue, 18 Aug 2026 19:32:55 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d1669fc90ad133dfe5d0a2d852fe71245fb3636843e49ecbc0a9aff5791c7c4`  
		Last Modified: Tue, 18 Aug 2026 19:32:55 GMT  
		Size: 4.8 KB (4821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:680b46ba4ec4373eb1ddf72b04f7733ee2f1c9385ad556a7cad1f63c0d51ae79`  
		Last Modified: Tue, 18 Aug 2026 19:32:56 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:885da5e1d07a3004b92f7072ce56c838207b671d60de3627e9794df71c8a2e6d`  
		Last Modified: Tue, 18 Aug 2026 19:32:56 GMT  
		Size: 161.7 KB (161742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef0f53778e3a4f5455e9ced57f1255fc59321f2dc9000cd5b8627a0c50d0011`  
		Last Modified: Tue, 18 Aug 2026 19:32:56 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.20` - unknown; unknown

```console
$ docker pull kibana@sha256:eeeb19068f1a89c95973e1f79967f0c97e056f7eee3a729efb87509487d74174
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5002082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b11966740c528e72b9d40e8bd10368f1a29e02cad23fe34e07be4583624e2663`

```dockerfile
```

-	Layers:
	-	`sha256:46873bd795627f34546d802f90de72d99d669c4c5266cf49f03a5ea04bfa63d7`  
		Last Modified: Tue, 18 Aug 2026 19:32:53 GMT  
		Size: 5.0 MB (4961167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:895156a4f1f19f4411b4a42530f205539cdb9478141b1f7f663419c8b4d6a522`  
		Last Modified: Tue, 18 Aug 2026 19:32:53 GMT  
		Size: 40.9 KB (40915 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:8.19.20` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:b214e2c122416cef1fccf2552003605aec24b90ba12aaf9ae560667aee46af57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **469.4 MB (469381092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:152a3ee4149c34c095511d44640a45b38b4f3cee75c617fbe9a7e564f76be7c1`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:23:55 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 18 Aug 2026 19:23:55 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:30:52 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 18 Aug 2026 19:30:53 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 18 Aug 2026 19:30:53 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 18 Aug 2026 19:30:53 GMT
RUN fc-cache -v # buildkit
# Tue, 18 Aug 2026 19:30:53 GMT
WORKDIR /usr/share/kibana
# Tue, 18 Aug 2026 19:30:53 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 18 Aug 2026 19:30:53 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 18 Aug 2026 19:30:53 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:30:53 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 18 Aug 2026 19:30:53 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 19:30:54 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 18 Aug 2026 19:30:55 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 18 Aug 2026 19:30:56 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 18 Aug 2026 19:30:56 GMT
LABEL org.label-schema.build-date=2026-08-05T22:09:51.434Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=4036be744384423f261fcf74b1b99fd4d044dc97 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.20 org.opencontainers.image.created=2026-08-05T22:09:51.434Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=4036be744384423f261fcf74b1b99fd4d044dc97 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.20
# Tue, 18 Aug 2026 19:30:56 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 18 Aug 2026 19:30:56 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 18 Aug 2026 19:30:56 GMT
USER 1000
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4233d404893ff44f076b06a4612fdd7857d1c2f223451ddeacb64fb564b4445`  
		Last Modified: Tue, 18 Aug 2026 19:32:03 GMT  
		Size: 9.4 MB (9412003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191db78eeb834f498e6c3546335c1241bcbbc6fe2b93f717a17a6a139cc19ac8`  
		Last Modified: Tue, 18 Aug 2026 19:32:10 GMT  
		Size: 414.4 MB (414441748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a73b0bb5f3a38b199f335056bdfdf9299da92f78194dfb4e03a00d3684d2ef9c`  
		Last Modified: Tue, 18 Aug 2026 19:32:02 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f0d9275e3ed853a6f121a6d28cbe43530840155ac703b9294ca557f6dd31b21`  
		Last Modified: Tue, 18 Aug 2026 19:32:03 GMT  
		Size: 16.5 MB (16460487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06361032f70a413b8547b140ba40b4022032f09a773fb99d7b7b5b659480df68`  
		Last Modified: Tue, 18 Aug 2026 19:32:03 GMT  
		Size: 5.2 KB (5246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93419f7581be79a4b08e0836a224b063df59419badeba4a33f17ba8dc95b1205`  
		Last Modified: Tue, 18 Aug 2026 19:32:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4654f83f54f5c559dd93a954686f584665265104db887730bb5fa8249d2bfc33`  
		Last Modified: Tue, 18 Aug 2026 19:32:05 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a8f4e3360eb443fc1fd527ebb5e3d90e3a3b2b8f159ba97e6dc3260cdd9fc0`  
		Last Modified: Tue, 18 Aug 2026 19:32:05 GMT  
		Size: 4.8 KB (4822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9fec04faeb182fa61d3628d8920cda8a3a2c25272ab0c5eb8ebe6b42b05a644`  
		Last Modified: Tue, 18 Aug 2026 19:32:05 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56e3afe5b57e2993daac78827e4a4aa37ef90a216b2dbe41c682bd328b71c5e9`  
		Last Modified: Tue, 18 Aug 2026 19:32:06 GMT  
		Size: 158.3 KB (158261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0404c71313f5c17003e27d2501479b6bf6a2de5019f410ca61ec2abb8659033`  
		Last Modified: Tue, 18 Aug 2026 19:32:06 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.20` - unknown; unknown

```console
$ docker pull kibana@sha256:179539f9784c59323c35be106e6aec189e6e4be850cc5ed38284c92f9c0e1e2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5003394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:429a4a4ee7b1b2b38bf2b55e06f8be50e77f1e995eb1d79fa7e7fc03bae1bcd7`

```dockerfile
```

-	Layers:
	-	`sha256:a7bf385da4d4a73fd5daf00d3ceca69fa22568c352778f3ede368e8368842a19`  
		Last Modified: Tue, 18 Aug 2026 19:32:03 GMT  
		Size: 5.0 MB (4962231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3195f8daa1957db5eb0f735d6f795bcadecf10b4d64471f15ae3456486fe855f`  
		Last Modified: Tue, 18 Aug 2026 19:32:02 GMT  
		Size: 41.2 KB (41163 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.4.5`

```console
$ docker pull kibana@sha256:5e7ac6e47da6deb62a418261fa7a48bb0c02a9c0bcec7801085d4ed3b90dcbf8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.5` - linux; amd64

```console
$ docker pull kibana@sha256:a64f7223d3a4f71e70f089789d668ed2ff563b488fe10e6c2be9645b30202e8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **534.8 MB (534790791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed6c9ba250083fc6488f01ee9c2b55174f0dfe311f8c5c24e1d0a58353344b9b`
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
# Mon, 31 Aug 2026 19:25:33 GMT
EXPOSE map[5601/tcp:{}]
# Mon, 31 Aug 2026 19:25:33 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:34:35 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Mon, 31 Aug 2026 19:34:36 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Mon, 31 Aug 2026 19:34:36 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Mon, 31 Aug 2026 19:34:36 GMT
RUN fc-cache -v # buildkit
# Mon, 31 Aug 2026 19:34:36 GMT
WORKDIR /usr/share/kibana
# Mon, 31 Aug 2026 19:34:36 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Mon, 31 Aug 2026 19:34:36 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 31 Aug 2026 19:34:36 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:34:36 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Mon, 31 Aug 2026 19:34:36 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:34:37 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Mon, 31 Aug 2026 19:34:38 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Mon, 31 Aug 2026 19:34:38 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Mon, 31 Aug 2026 19:34:38 GMT
LABEL org.label-schema.build-date=2026-08-05T14:27:25.294Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=bc80ff828630b51dd591207f43a54ea5ebf53270 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.5 org.opencontainers.image.created=2026-08-05T14:27:25.294Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=bc80ff828630b51dd591207f43a54ea5ebf53270 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.5
# Mon, 31 Aug 2026 19:34:38 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Mon, 31 Aug 2026 19:34:38 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 31 Aug 2026 19:34:38 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Mon, 31 Aug 2026 19:34:38 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Mon, 31 Aug 2026 19:34:38 GMT
USER 1000
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87db2da681f04e4223df3c9793380de7c86d812615e57de2d0e9384f3cdb0187`  
		Last Modified: Mon, 31 Aug 2026 19:35:45 GMT  
		Size: 19.3 MB (19316147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb41db6859cb7a51ae0523e3df563ece3e43cdcf8fde630211f893c47e39075`  
		Last Modified: Mon, 31 Aug 2026 19:35:53 GMT  
		Size: 458.2 MB (458206657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cc5728ae830dd5a563c65de23d32462f2adcf124cdd51a402f1b35e96933d75`  
		Last Modified: Mon, 31 Aug 2026 19:35:44 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c993d39a39e84242015eb858ea18fafcf09e4692bfdcf5925c9d5f9ec7f2c4f9`  
		Last Modified: Mon, 31 Aug 2026 19:35:45 GMT  
		Size: 16.5 MB (16460477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b669d25156dcca55d6d77ac7f51d0c98a31b4f9cb14e52a2416800858741391a`  
		Last Modified: Mon, 31 Aug 2026 19:35:45 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de765b63b423f8a8eb6b53c1a5b482354855c9591a8200e042f9fc435c4aaaae`  
		Last Modified: Mon, 31 Aug 2026 19:35:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6293c5a51f7f6149f0edd820ca72f046d0df0c4bdc441415f55c1c203e63fc73`  
		Last Modified: Mon, 31 Aug 2026 19:35:47 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13226ff89b82fd96d23255e58c2acccb3bc930aa78a9f07620780e8adee59dfc`  
		Last Modified: Mon, 31 Aug 2026 19:35:47 GMT  
		Size: 4.9 KB (4927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a31c8c9eb0a744980c1c6015880a2da0b44a4da8d29063a901c1db89fe90cc`  
		Last Modified: Mon, 31 Aug 2026 19:35:48 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94675804ab76c4fe98a2dd3c5b7b317b5c18a8dd5844da2f7a09104a3e70bf2a`  
		Last Modified: Mon, 31 Aug 2026 19:35:48 GMT  
		Size: 74.5 KB (74544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2839dd46f6fe38153f0822dd1c9dabfecb87f948cbf022d17fe7748360f5ac2e`  
		Last Modified: Mon, 31 Aug 2026 19:35:48 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25fdb70ef5b1ccceb05712414118af77c533f495c777089743ccef1c5aa14504`  
		Last Modified: Mon, 31 Aug 2026 19:35:49 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.5` - unknown; unknown

```console
$ docker pull kibana@sha256:a3f936210f9ed12ba1cade30692b1eeea1dea7e1596f1f4bd8ab2e14956be477
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6006816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e848981bfff8897b83794ff4313e58d234ea485f84d829e4e0f76284df77cd`

```dockerfile
```

-	Layers:
	-	`sha256:0553e0d200f332fc5175a4c197380fb35cd9859362afab12c7102a1706922bbe`  
		Last Modified: Mon, 31 Aug 2026 19:35:45 GMT  
		Size: 6.0 MB (5963590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4681b6bc156931d600b751ed4a400c0caf548e012eb04323746d0463991f4768`  
		Last Modified: Mon, 31 Aug 2026 19:35:44 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.5` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:5432fd76b280eff931ee739f6fc902bc79b2857474c2f8297048c460aa824f05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **546.3 MB (546317630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60e3e8f17b6dbbe13fb2a314c59e75d2c5aa928cae5c4639b5e4e3703612a247`
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
# Mon, 31 Aug 2026 19:43:01 GMT
EXPOSE map[5601/tcp:{}]
# Mon, 31 Aug 2026 19:43:01 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:50:38 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Mon, 31 Aug 2026 19:50:39 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Mon, 31 Aug 2026 19:50:39 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Mon, 31 Aug 2026 19:50:39 GMT
RUN fc-cache -v # buildkit
# Mon, 31 Aug 2026 19:50:40 GMT
WORKDIR /usr/share/kibana
# Mon, 31 Aug 2026 19:50:40 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Mon, 31 Aug 2026 19:50:40 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 31 Aug 2026 19:50:40 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:50:40 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Mon, 31 Aug 2026 19:50:40 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:50:41 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Mon, 31 Aug 2026 19:50:42 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Mon, 31 Aug 2026 19:50:42 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Mon, 31 Aug 2026 19:50:42 GMT
LABEL org.label-schema.build-date=2026-08-05T14:27:25.294Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=bc80ff828630b51dd591207f43a54ea5ebf53270 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.5 org.opencontainers.image.created=2026-08-05T14:27:25.294Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=bc80ff828630b51dd591207f43a54ea5ebf53270 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.5
# Mon, 31 Aug 2026 19:50:42 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Mon, 31 Aug 2026 19:50:42 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 31 Aug 2026 19:50:42 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Mon, 31 Aug 2026 19:50:42 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Mon, 31 Aug 2026 19:50:42 GMT
USER 1000
```

-	Layers:
	-	`sha256:8289a871631249c9c1a3b2366de832716cd43c77864c245a1c1364a2abeb5704`  
		Last Modified: Mon, 31 Aug 2026 10:01:50 GMT  
		Size: 38.8 MB (38815996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e86dd2607e9c834a6e66ff5121a5e0833d5b62d1c93fa8c2b340e459848f204`  
		Last Modified: Mon, 31 Aug 2026 19:52:05 GMT  
		Size: 19.3 MB (19265062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6872ef2993bdf7fd4727c0cf153256cbcd939d57fb4bb391cd7bed8b2736023a`  
		Last Modified: Mon, 31 Aug 2026 19:52:13 GMT  
		Size: 471.7 MB (471679664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7089918deec2ccc17a04b8e40f943695267456f1d9d19cd6d21a6bbc5d8e34`  
		Last Modified: Mon, 31 Aug 2026 19:52:04 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd2163de15f8eebde961dd91b8c8843a68cab1ac44b443de34ad7dcd412360be`  
		Last Modified: Mon, 31 Aug 2026 19:52:05 GMT  
		Size: 16.5 MB (16460487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39754fde2adddfb5bb54499243b3077c835645166dc5e2584863da90fb11356`  
		Last Modified: Mon, 31 Aug 2026 19:52:05 GMT  
		Size: 5.2 KB (5227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c824c2983cc4269fdc75b8076a1a98f9f7a21a565a8a291e6419463265a1a863`  
		Last Modified: Mon, 31 Aug 2026 19:52:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1608dfe489d659f6ae8d70dcbb9704c0659d2307b221d9975ccea7aa6c7aaffa`  
		Last Modified: Mon, 31 Aug 2026 19:52:07 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e2151cfe2d88777862c3d4de66977a1b0c252b396bbcaf21644f0e961c5475`  
		Last Modified: Mon, 31 Aug 2026 19:52:07 GMT  
		Size: 4.9 KB (4924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21c2096481ea97810f0a5b4531910d61780bb2460cc3b0a1a6c8c9c965cd44b`  
		Last Modified: Mon, 31 Aug 2026 19:52:08 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:193b33d533885cc8ed80de89c659a5433ae6245b6ebb62e626d351f234f46987`  
		Last Modified: Mon, 31 Aug 2026 19:52:09 GMT  
		Size: 73.5 KB (73454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a4ca2d4f3d4e0ea8cffeb2f26877e0adf879d0cd603012600106f0140783c16`  
		Last Modified: Mon, 31 Aug 2026 19:52:08 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8534179782cc1ee01cab77ec3232db71163a1ebaae0ea015278ada3bde71cdde`  
		Last Modified: Mon, 31 Aug 2026 19:52:09 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.5` - unknown; unknown

```console
$ docker pull kibana@sha256:17f74ea9cd5eb83a4760608e0a9e5d96ddf3912075ad3e7bffb22f701930bd9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6003963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5577f8cf9818a12dd14ea4e4b21a86b7bc8b9fa1152447eeeae91a9342b3a781`

```dockerfile
```

-	Layers:
	-	`sha256:a22bb0756402c17fd4877bf9688df687df49b704dbba8c253b0651015456189b`  
		Last Modified: Mon, 31 Aug 2026 19:52:05 GMT  
		Size: 6.0 MB (5960480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2b6b52b0d6b14be9e649c5fcecb9a29d0538ba03b9e31bb234336e71a9d9191`  
		Last Modified: Mon, 31 Aug 2026 19:52:04 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.5.2`

```console
$ docker pull kibana@sha256:43b5d872594d848bda4bb81a3e37141a1fc642f82aaab03e19ea0b249694da75
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.2` - linux; amd64

```console
$ docker pull kibana@sha256:d7cc86c625ea6cb1f380ec78441e0c510e8e3fef1a0e7eb4d58762cee56a92c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **560.6 MB (560616770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab594146bc5b2f4f150dcb1f60f93b01e6967adbaa04c7627f21e3c9e730438`
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
# Mon, 31 Aug 2026 19:25:48 GMT
EXPOSE map[5601/tcp:{}]
# Mon, 31 Aug 2026 19:25:48 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:34:29 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Mon, 31 Aug 2026 19:34:30 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Mon, 31 Aug 2026 19:34:30 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Mon, 31 Aug 2026 19:34:30 GMT
RUN fc-cache -v # buildkit
# Mon, 31 Aug 2026 19:34:30 GMT
WORKDIR /usr/share/kibana
# Mon, 31 Aug 2026 19:34:30 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Mon, 31 Aug 2026 19:34:30 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 31 Aug 2026 19:34:30 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:34:30 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Mon, 31 Aug 2026 19:34:30 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:34:31 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Mon, 31 Aug 2026 19:34:31 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Mon, 31 Aug 2026 19:34:32 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Mon, 31 Aug 2026 19:34:32 GMT
LABEL org.label-schema.build-date=2026-08-18T11:21:49.813Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=37dc1e9d6dbf80bb1cf22da5ed258d3f642d2f9c org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.2 org.opencontainers.image.created=2026-08-18T11:21:49.813Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=37dc1e9d6dbf80bb1cf22da5ed258d3f642d2f9c org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.2
# Mon, 31 Aug 2026 19:34:32 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.2 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Mon, 31 Aug 2026 19:34:32 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 31 Aug 2026 19:34:32 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Mon, 31 Aug 2026 19:34:32 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Mon, 31 Aug 2026 19:34:32 GMT
USER 1000
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de63b1913361bec153ade0770b4aa4547ae42e9c19a8582bc4f497addf406699`  
		Last Modified: Mon, 31 Aug 2026 19:35:42 GMT  
		Size: 19.3 MB (19315834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8541c6995871b474788d02ddfb05476d24743106618dad8a15e0a6ad0b77de25`  
		Last Modified: Mon, 31 Aug 2026 19:35:49 GMT  
		Size: 484.0 MB (484032852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33341a1431022733ca923fca54364243131b6022bcdc42e6faf418e9b980ab6`  
		Last Modified: Mon, 31 Aug 2026 19:35:41 GMT  
		Size: 9.5 KB (9529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:967e2b73002e3bb1e0d672e48c25bbd62a94443c76e1546510b7cc0e9e8a5d38`  
		Last Modified: Mon, 31 Aug 2026 19:35:42 GMT  
		Size: 16.5 MB (16460487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:490a9a49e1a85fad7d05e56ee95deff305e7798803ee6cabc8bbc83d632e2a25`  
		Last Modified: Mon, 31 Aug 2026 19:35:42 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00d47140fee9beed5722cd5f1066774918a6f489d5199104707039c971b100f6`  
		Last Modified: Mon, 31 Aug 2026 19:35:43 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e3aab5c0c55d59b9b8cca08ab207ec070b682ca8bfd10caa5d4f4b73d6a01be`  
		Last Modified: Mon, 31 Aug 2026 19:35:43 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7c83e1d6b28a3d11dc8ca8eaba27cdc1da9b0522733db547e59f45626fdec57`  
		Last Modified: Mon, 31 Aug 2026 19:35:43 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5dfa1f90b41b49db64a99713377b4317c065f0edae0c87b14421052edfc56a3`  
		Last Modified: Mon, 31 Aug 2026 19:35:44 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0bbe8846d7c5776db4dabdea15f1e683ac6d4e536a273ca8fd4966ece3ace88`  
		Last Modified: Mon, 31 Aug 2026 19:35:44 GMT  
		Size: 74.5 KB (74545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f412935a16191cc7254b983c4851985c401bb8b41b1cf1b69c62ccf568558bdc`  
		Last Modified: Mon, 31 Aug 2026 19:35:44 GMT  
		Size: 1.1 KB (1052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a663b1464ad978e59d2ca6277042ebfb237d7132b41eb078b3e2b467aee5e96`  
		Last Modified: Mon, 31 Aug 2026 19:35:46 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.2` - unknown; unknown

```console
$ docker pull kibana@sha256:f32228bdf79bcf827add075d4a4e5c3fc739c5d0a30b0b95807d365b62893d1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6137234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31447c322f1eabbb7b5811c10f660561cff664515a19507c0f3583df1c63fb89`

```dockerfile
```

-	Layers:
	-	`sha256:7bff8707a34f4c670a4791d5608de66f0c84f013925606436dae0e046eaf12e2`  
		Last Modified: Mon, 31 Aug 2026 19:35:41 GMT  
		Size: 6.1 MB (6094008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:969f5afdf550a0a09d71f3390f905f58d1861630b556262f110580300159e2ca`  
		Last Modified: Mon, 31 Aug 2026 19:35:41 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.2` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:22c5781346d2015dd01b6869c9cf66c184603f04d98a857d7b17a09ffbd27a03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **572.1 MB (572145393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69149ae5d290e5a7684cd1a803254d229241d44a06a953b9dfd649d7ad86f1d2`
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
# Mon, 31 Aug 2026 19:43:03 GMT
EXPOSE map[5601/tcp:{}]
# Mon, 31 Aug 2026 19:43:03 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:49:48 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Mon, 31 Aug 2026 19:49:48 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Mon, 31 Aug 2026 19:49:48 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Mon, 31 Aug 2026 19:49:49 GMT
RUN fc-cache -v # buildkit
# Mon, 31 Aug 2026 19:49:49 GMT
WORKDIR /usr/share/kibana
# Mon, 31 Aug 2026 19:49:49 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Mon, 31 Aug 2026 19:49:49 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 31 Aug 2026 19:49:49 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:49:49 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Mon, 31 Aug 2026 19:49:49 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:49:50 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Mon, 31 Aug 2026 19:49:50 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Mon, 31 Aug 2026 19:49:51 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Mon, 31 Aug 2026 19:49:51 GMT
LABEL org.label-schema.build-date=2026-08-18T11:21:49.813Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=37dc1e9d6dbf80bb1cf22da5ed258d3f642d2f9c org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.2 org.opencontainers.image.created=2026-08-18T11:21:49.813Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=37dc1e9d6dbf80bb1cf22da5ed258d3f642d2f9c org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.2
# Mon, 31 Aug 2026 19:49:51 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.2 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Mon, 31 Aug 2026 19:49:51 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 31 Aug 2026 19:49:51 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Mon, 31 Aug 2026 19:49:51 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Mon, 31 Aug 2026 19:49:51 GMT
USER 1000
```

-	Layers:
	-	`sha256:8289a871631249c9c1a3b2366de832716cd43c77864c245a1c1364a2abeb5704`  
		Last Modified: Mon, 31 Aug 2026 10:01:50 GMT  
		Size: 38.8 MB (38815996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd72f34292416104e3617067399ceb2087eeaca5383bb32bacfc2a11994f5fe3`  
		Last Modified: Mon, 31 Aug 2026 19:51:11 GMT  
		Size: 19.3 MB (19265038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8174bc56264db3302023a637294146fc5ea61195c1bfaec7c4e7cb552d54f80f`  
		Last Modified: Mon, 31 Aug 2026 19:51:19 GMT  
		Size: 497.5 MB (497507385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:121f47c3d71c8e5f27bf08e351a8a043b7bc7fb4ec577a9ed453f367b9e3293e`  
		Last Modified: Mon, 31 Aug 2026 19:51:10 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d99dab8208412a3b60541bc11aa74884ec1bf6194a3dddbe3fad4e8572f1cb`  
		Last Modified: Mon, 31 Aug 2026 19:51:11 GMT  
		Size: 16.5 MB (16460486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da7c671a3c6d3d826c57213d351e07d145c47358d00d4733919c5fa39a7716ed`  
		Last Modified: Mon, 31 Aug 2026 19:51:12 GMT  
		Size: 5.2 KB (5229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bc44287487e1b3733c9abfb5bc223883cd0341bf0ffad47e6141170100ef0d6`  
		Last Modified: Mon, 31 Aug 2026 19:51:13 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f9764c431d7aabb542ee442355d001a2e83cad45ad4b12fe7681afa5431eee`  
		Last Modified: Mon, 31 Aug 2026 19:51:13 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eceea139f95fbcd9a8c656cce87bd7642e566bd4c97cba5aad297ed8c179de01`  
		Last Modified: Mon, 31 Aug 2026 19:51:13 GMT  
		Size: 5.0 KB (5001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d0d63a9982362fa5a816c9408144505c262d41ef685be073cfec0b49ae4b7d`  
		Last Modified: Mon, 31 Aug 2026 19:51:14 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85ed0e36fc0ee77411c7a94076bf8f1ee1fe66d1916b79eab267b934ecee8b64`  
		Last Modified: Mon, 31 Aug 2026 19:51:14 GMT  
		Size: 73.5 KB (73454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6568582d6e1950e4ff3fe607457fd33667614611e7ea47b96d30d3f28cc713fe`  
		Last Modified: Mon, 31 Aug 2026 19:51:14 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c7f9ac81f5bbbe06cafe025d2a7636c73c48493a2df6cb7e19dd76179d0bf54`  
		Last Modified: Mon, 31 Aug 2026 19:51:15 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.2` - unknown; unknown

```console
$ docker pull kibana@sha256:b95d262403c23630ed55a0b2d094c5aaa70495c3064a4982786e75f06df6f958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6134381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae89496c0ffcaf842302c03627ae16915a8b466e95d4361fb8aedfbed13f0fe`

```dockerfile
```

-	Layers:
	-	`sha256:529843e3a621ef913ec34aaae1998b25e294063df19f195813f48987301f73aa`  
		Last Modified: Mon, 31 Aug 2026 19:51:11 GMT  
		Size: 6.1 MB (6090898 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57f65dd265f01580a201cb5640c80aadbd961ffaf7274665b4f633a07fa33cd0`  
		Last Modified: Mon, 31 Aug 2026 19:51:10 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
