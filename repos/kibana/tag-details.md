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
$ docker pull kibana@sha256:1c9cc093ce1522802215b3df43e4d547e11c03be4f83e9545e528a5973a1e8ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.5` - linux; amd64

```console
$ docker pull kibana@sha256:21b169cd361f43b96dd93a3d8f0f59f382e2a220e2410fb5834cd97b2b6b8e9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **534.8 MB (534788941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88957aa564be87e49c858d1b3cd9ad332d69751cbbebb7d31a061511e9689e41`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 25 Aug 2026 08:42:09 GMT
ENV container oci
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:8b54154024a9f6604a1f7d88b375ea31b450980a74152912280af8df957f00cd in /      
# Tue, 25 Aug 2026 08:42:09 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 08:42:09 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:070ea34291ea740e6cd31833ff6dcb8f3000a7173f6294c8f875540d0e160dbf in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:070ea34291ea740e6cd31833ff6dcb8f3000a7173f6294c8f875540d0e160dbf in /root/buildinfo/      
# Tue, 25 Aug 2026 08:42:10 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T08:41:53Z" "org.opencontainers.image.revision"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "build-date"="2026-08-25T08:41:53Z" "architecture"="x86_64" "vcs-ref"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "vcs-type"="git" "release"="1787647261"org.opencontainers.image.created=2026-08-25T08:41:53Z,org.opencontainers.image.revision=85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f
# Tue, 25 Aug 2026 17:46:26 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 25 Aug 2026 17:46:26 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 25 Aug 2026 17:55:34 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 25 Aug 2026 17:55:35 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 25 Aug 2026 17:55:35 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 25 Aug 2026 17:55:35 GMT
RUN fc-cache -v # buildkit
# Tue, 25 Aug 2026 17:55:35 GMT
WORKDIR /usr/share/kibana
# Tue, 25 Aug 2026 17:55:35 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 25 Aug 2026 17:55:35 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 25 Aug 2026 17:55:35 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:55:35 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 25 Aug 2026 17:55:35 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 17:55:36 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 25 Aug 2026 17:55:37 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 25 Aug 2026 17:55:37 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 25 Aug 2026 17:55:37 GMT
LABEL org.label-schema.build-date=2026-08-05T14:27:25.294Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=bc80ff828630b51dd591207f43a54ea5ebf53270 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.5 org.opencontainers.image.created=2026-08-05T14:27:25.294Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=bc80ff828630b51dd591207f43a54ea5ebf53270 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.5
# Tue, 25 Aug 2026 17:55:37 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 25 Aug 2026 17:55:37 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 25 Aug 2026 17:55:37 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 25 Aug 2026 17:55:37 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 25 Aug 2026 17:55:37 GMT
USER 1000
```

-	Layers:
	-	`sha256:4853116e101d40f67d98c14106326af68960f39e03627259f46bfe4c535cca9b`  
		Last Modified: Tue, 25 Aug 2026 09:35:48 GMT  
		Size: 40.7 MB (40711993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83c3ef70b54c3e29809a923c80239e0461b7f874f9b6d32ebab1de4a07633a50`  
		Last Modified: Tue, 25 Aug 2026 17:56:43 GMT  
		Size: 19.3 MB (19318755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b416c8562cde1b08db043ee65cbdeca4770886764ca52aac3e7508b4d7fb661a`  
		Last Modified: Tue, 25 Aug 2026 17:56:51 GMT  
		Size: 458.2 MB (458199761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11dd197a842d7d11a8682e31c9052a5cab53b26454493940fee0281e2b88db3d`  
		Last Modified: Tue, 25 Aug 2026 17:56:42 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4693bdff689b5ed8dae25a9f3814137454b6e20c63dabc05ca214f6a31cd7e3`  
		Last Modified: Tue, 25 Aug 2026 17:56:43 GMT  
		Size: 16.5 MB (16460487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28acf70a8d22c0142bbd7e5c3c2fb8ac601b286ab79803160a529aa29d49e284`  
		Last Modified: Tue, 25 Aug 2026 17:56:43 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01e057192ad083167784ae217b8c02d439d11dad4a6ca92aa152c6ee120cddd7`  
		Last Modified: Tue, 25 Aug 2026 17:56:44 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6739f3a1e6b9fbd5b062af4df9a40b68180a87661fec55c54aa6943f8c473dc3`  
		Last Modified: Tue, 25 Aug 2026 17:56:44 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5df891e6f0f76a85d3fff75cbb4db83bea350fe1104508cbe37d4f456d33c7d`  
		Last Modified: Tue, 25 Aug 2026 17:56:45 GMT  
		Size: 4.9 KB (4929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd3e0f96c2c462217c91e52a09dc029f2664910a201c3791248d4a86873417f4`  
		Last Modified: Tue, 25 Aug 2026 17:56:46 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5aa57a110246814bbce8c57a49f6c509aab8ee285e8b1819e3a66df4f6d402e`  
		Last Modified: Tue, 25 Aug 2026 17:56:46 GMT  
		Size: 74.5 KB (74546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:056024553f94ee1127e8982d0d0efb2cb1bf0fb4ac39d7140ee4e8be29c66468`  
		Last Modified: Tue, 25 Aug 2026 17:56:46 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0ec227c9acf2bdcdfdc663773b0d77dbf3cb93b426163aa63493c4cbf304581`  
		Last Modified: Tue, 25 Aug 2026 17:56:47 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.5` - unknown; unknown

```console
$ docker pull kibana@sha256:84601253ac3a90025c79f0b63055fae84523da5d0a7d6c4375a6d627665b1b63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6006808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f489e89d0e7944e68144524b87aee22b7a6ecc3f463676dc41ab02c4940d3da6`

```dockerfile
```

-	Layers:
	-	`sha256:47c7847f36a4cfa2022220f9d91491568c03af0f2160eb68283e317c4c59e073`  
		Last Modified: Tue, 25 Aug 2026 17:56:42 GMT  
		Size: 6.0 MB (5963582 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7117c777d25d6d06839cb3c7ef23988882ad38906863a551fbf2316e7a1ba21`  
		Last Modified: Tue, 25 Aug 2026 17:56:42 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.5` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:62d6c9bed59ce315f5195054135181fea02652353f0c2638f0e9dd5cad9ed746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **546.3 MB (546315324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:432503726e890ca25f924690cd88951b9befc5076ac0d71e13eacc5d1ca61277`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 25 Aug 2026 08:43:54 GMT
ENV container oci
# Tue, 25 Aug 2026 08:43:55 GMT
COPY dir:fc82963b4cd1761f20a1a620749f6598604531a4997e7419bffffcb2369d8feb in /      
# Tue, 25 Aug 2026 08:43:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 08:43:55 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 08:43:55 GMT
COPY dir:3079f305cc24544d349abf38a4bec53199670ed6b04fb0218ac1be8ab8e4f589 in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 08:43:55 GMT
COPY dir:3079f305cc24544d349abf38a4bec53199670ed6b04fb0218ac1be8ab8e4f589 in /root/buildinfo/      
# Tue, 25 Aug 2026 08:43:55 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T08:43:32Z" "org.opencontainers.image.revision"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "build-date"="2026-08-25T08:43:32Z" "architecture"="aarch64" "vcs-ref"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "vcs-type"="git" "release"="1787647261"org.opencontainers.image.created=2026-08-25T08:43:32Z,org.opencontainers.image.revision=85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f
# Tue, 25 Aug 2026 17:45:32 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 25 Aug 2026 17:45:32 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 25 Aug 2026 17:53:09 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 25 Aug 2026 17:53:09 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 25 Aug 2026 17:53:10 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 25 Aug 2026 17:53:10 GMT
RUN fc-cache -v # buildkit
# Tue, 25 Aug 2026 17:53:10 GMT
WORKDIR /usr/share/kibana
# Tue, 25 Aug 2026 17:53:10 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 25 Aug 2026 17:53:10 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 25 Aug 2026 17:53:10 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:53:10 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 25 Aug 2026 17:53:10 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 17:53:11 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 25 Aug 2026 17:53:12 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 25 Aug 2026 17:53:12 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 25 Aug 2026 17:53:12 GMT
LABEL org.label-schema.build-date=2026-08-05T14:27:25.294Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=bc80ff828630b51dd591207f43a54ea5ebf53270 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.5 org.opencontainers.image.created=2026-08-05T14:27:25.294Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=bc80ff828630b51dd591207f43a54ea5ebf53270 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.5
# Tue, 25 Aug 2026 17:53:12 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 25 Aug 2026 17:53:12 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 25 Aug 2026 17:53:12 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 25 Aug 2026 17:53:12 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 25 Aug 2026 17:53:12 GMT
USER 1000
```

-	Layers:
	-	`sha256:cfeec01a2bba583c2dcde9b457cc89d4b56583567390972f5501ce5ad4fa4ae8`  
		Last Modified: Tue, 25 Aug 2026 09:35:36 GMT  
		Size: 38.8 MB (38815608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31207c7c6fdf53f9df982cb36f0391ce33e299170026fb71f334b60508fd3271`  
		Last Modified: Tue, 25 Aug 2026 17:54:32 GMT  
		Size: 19.3 MB (19263047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cab28754b7066cd6a663bab52c9651c304625d0bf72ffb389d42b2c7c64cfc1`  
		Last Modified: Tue, 25 Aug 2026 17:54:40 GMT  
		Size: 471.7 MB (471679760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c8463e45dd970f650b6bf367059bfffb1bf7fbfc5c8cc006298aa3d24829f98`  
		Last Modified: Tue, 25 Aug 2026 17:54:30 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8bfdb818fa931438198d8190aff7a3505c114e3a8da5ec762df7b560218907`  
		Last Modified: Tue, 25 Aug 2026 17:54:32 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cafa4ebb017d0b0c94f1c4d6277f05bc1ce7fc98a5320fa95f13a37a032742c`  
		Last Modified: Tue, 25 Aug 2026 17:54:32 GMT  
		Size: 5.2 KB (5226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c682e320d536f742e32c6016c00bade5579703a3b2086e9c9b8c29e76e69ab3`  
		Last Modified: Tue, 25 Aug 2026 17:54:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d745e5ab0bf3479bad070bd196c3e24b6662af36af9757b4409e90b5e7f57f80`  
		Last Modified: Tue, 25 Aug 2026 17:54:33 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4097c98de772a21a9cc2c0c2131ce26f1c7326c04eecca091020b1d4ff0dcd`  
		Last Modified: Tue, 25 Aug 2026 17:54:34 GMT  
		Size: 4.9 KB (4928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10ab5a1669374d05d223d87868e71fa8b28c493c123bebcce457af561c853109`  
		Last Modified: Tue, 25 Aug 2026 17:54:34 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82dae7bf1759b8074cb8e1b4e1072cb07ab6497a75263dc24b06ef88cff16b06`  
		Last Modified: Tue, 25 Aug 2026 17:54:35 GMT  
		Size: 73.5 KB (73455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9d13929b73e14cf2b16c152500377f053f75a3daef6ac195a648767d3f8c8e`  
		Last Modified: Tue, 25 Aug 2026 17:54:35 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2db24e40d541daed39e2ef43189f6c60dea55b0eaa1ff80885f60964d08cf00`  
		Last Modified: Tue, 25 Aug 2026 17:54:36 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.5` - unknown; unknown

```console
$ docker pull kibana@sha256:fab7f4444350ef72c7f02ba64f9ea608092c146e8899f8fc43763a0bc9d0ca89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6003955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b6d5794739b08d01803ad81a7722b7f167e37087ffbaf0087567623b71cb34`

```dockerfile
```

-	Layers:
	-	`sha256:4f9ef5e581b0345485fa1e20b0d6e4e734d9b3b11f35b7b4a9993e8d822e36bc`  
		Last Modified: Tue, 25 Aug 2026 17:54:31 GMT  
		Size: 6.0 MB (5960472 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd4f07a7ea154b3f683859956f78ed683026df2b172b164ccacc570dfb09233e`  
		Last Modified: Tue, 25 Aug 2026 17:54:30 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.5.2`

```console
$ docker pull kibana@sha256:7f93283a344c5734714b878e9a3b2eab5c2a094941ab2c9e2aa01e4681828006
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.2` - linux; amd64

```console
$ docker pull kibana@sha256:d84e88cdc9144b1fb1e4bc9d51b5fe390d2d9cded90b008404f5043ec8000648
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **560.6 MB (560630187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:742d6bbc4fd7148a679d0a1a99fd50d55459fa41c87bd0582d62865617c8fe4d`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 25 Aug 2026 08:42:09 GMT
ENV container oci
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:8b54154024a9f6604a1f7d88b375ea31b450980a74152912280af8df957f00cd in /      
# Tue, 25 Aug 2026 08:42:09 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 08:42:09 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:070ea34291ea740e6cd31833ff6dcb8f3000a7173f6294c8f875540d0e160dbf in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:070ea34291ea740e6cd31833ff6dcb8f3000a7173f6294c8f875540d0e160dbf in /root/buildinfo/      
# Tue, 25 Aug 2026 08:42:10 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T08:41:53Z" "org.opencontainers.image.revision"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "build-date"="2026-08-25T08:41:53Z" "architecture"="x86_64" "vcs-ref"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "vcs-type"="git" "release"="1787647261"org.opencontainers.image.created=2026-08-25T08:41:53Z,org.opencontainers.image.revision=85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f
# Tue, 25 Aug 2026 17:46:35 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 25 Aug 2026 17:46:35 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 25 Aug 2026 17:54:21 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 25 Aug 2026 17:54:21 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 25 Aug 2026 17:54:22 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 25 Aug 2026 17:54:22 GMT
RUN fc-cache -v # buildkit
# Tue, 25 Aug 2026 17:54:22 GMT
WORKDIR /usr/share/kibana
# Tue, 25 Aug 2026 17:54:22 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 25 Aug 2026 17:54:22 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 25 Aug 2026 17:54:22 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:54:22 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 25 Aug 2026 17:54:22 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 17:54:22 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 25 Aug 2026 17:54:23 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 25 Aug 2026 17:54:23 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 25 Aug 2026 17:54:23 GMT
LABEL org.label-schema.build-date=2026-08-18T11:21:49.813Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=37dc1e9d6dbf80bb1cf22da5ed258d3f642d2f9c org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.2 org.opencontainers.image.created=2026-08-18T11:21:49.813Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=37dc1e9d6dbf80bb1cf22da5ed258d3f642d2f9c org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.2
# Tue, 25 Aug 2026 17:54:23 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.2 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 25 Aug 2026 17:54:23 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 25 Aug 2026 17:54:23 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 25 Aug 2026 17:54:23 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 25 Aug 2026 17:54:23 GMT
USER 1000
```

-	Layers:
	-	`sha256:4853116e101d40f67d98c14106326af68960f39e03627259f46bfe4c535cca9b`  
		Last Modified: Tue, 25 Aug 2026 09:35:48 GMT  
		Size: 40.7 MB (40711993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0746787c9fc29edda04435e90109d3b090e01515825fd1ed331595365370735e`  
		Last Modified: Tue, 25 Aug 2026 17:55:29 GMT  
		Size: 19.3 MB (19318832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c7dd2161ec5bba2f76912be0fe9efb1024d4454cf7208c29b6cd6299a1c7ea7`  
		Last Modified: Tue, 25 Aug 2026 17:55:38 GMT  
		Size: 484.0 MB (484040866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c149f97f84e532d7a00945747ae1b877b0f4cca18d0352ff7d6e478a0ae68f0`  
		Last Modified: Tue, 25 Aug 2026 17:55:28 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cae419192eb7c87f235ac6c23c938161e956cffade23422298edb5d9aa5d3a0`  
		Last Modified: Tue, 25 Aug 2026 17:55:29 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee906a5d03bc42e1bc6d0584150963356e242d37441920564f13c09f819049a5`  
		Last Modified: Tue, 25 Aug 2026 17:55:29 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:158b3d50fc9a4626309dc2cc7cb999d29a2b6d4eaf7155d6f6304c0c4f129d85`  
		Last Modified: Tue, 25 Aug 2026 17:55:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cef4e5f0e7894d3f83f3bf6fd4f8911d958c9816bbf2787009b7b3fe8ec79620`  
		Last Modified: Tue, 25 Aug 2026 17:55:30 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b933b2031651e30e71a7b74092f301a1bc7da1d5215ce39fba836abc0885ed66`  
		Last Modified: Tue, 25 Aug 2026 17:55:31 GMT  
		Size: 5.0 KB (5000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec5168c410f7700a1d528dfea2284974a6b2e41c76fb0c9507292df4f85b0904`  
		Last Modified: Tue, 25 Aug 2026 17:55:32 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab92d2a262d3d17246b17d89e989423f2c8461e647982bab4efbe1d6e06aa53`  
		Last Modified: Tue, 25 Aug 2026 17:55:32 GMT  
		Size: 74.5 KB (74548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b865bd7bbb769dc4048d08bc4c16d5daebf65d3f9d27e126e3d8bb58969c6ff6`  
		Last Modified: Tue, 25 Aug 2026 17:55:32 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0edee94c865eb97fcd1221465f7cecbcfc0aa684bae3bd23b16cc879cd6d9a2b`  
		Last Modified: Tue, 25 Aug 2026 17:55:33 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.2` - unknown; unknown

```console
$ docker pull kibana@sha256:bdfad10f44642ebc171a1adcdb965ee2833abacfd3cadd5edd38f421a875c3bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6137224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93e7f8fff99a0508c75da416a8d0e9174593472460efdbba325e86a2dd3aac5d`

```dockerfile
```

-	Layers:
	-	`sha256:fcc72602f960375576f5c036a28f96fd8adcac2715eb4b2e71c22b077a14c19f`  
		Last Modified: Tue, 25 Aug 2026 17:55:29 GMT  
		Size: 6.1 MB (6094000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4405c097778b8cb69b9276f6b57923447585c6911c072c2454e6dfea90eea838`  
		Last Modified: Tue, 25 Aug 2026 17:55:28 GMT  
		Size: 43.2 KB (43224 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.2` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:f0678069568a4cc276467f8a40a29c3e1aab87b456a2bdd8694faf038bda9b55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **572.1 MB (572139409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8804097c0a5c00d543f25174655f943c45298a045d4328a9951bbb8660fffda6`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 25 Aug 2026 08:43:54 GMT
ENV container oci
# Tue, 25 Aug 2026 08:43:55 GMT
COPY dir:fc82963b4cd1761f20a1a620749f6598604531a4997e7419bffffcb2369d8feb in /      
# Tue, 25 Aug 2026 08:43:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 08:43:55 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 08:43:55 GMT
COPY dir:3079f305cc24544d349abf38a4bec53199670ed6b04fb0218ac1be8ab8e4f589 in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 08:43:55 GMT
COPY dir:3079f305cc24544d349abf38a4bec53199670ed6b04fb0218ac1be8ab8e4f589 in /root/buildinfo/      
# Tue, 25 Aug 2026 08:43:55 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T08:43:32Z" "org.opencontainers.image.revision"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "build-date"="2026-08-25T08:43:32Z" "architecture"="aarch64" "vcs-ref"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "vcs-type"="git" "release"="1787647261"org.opencontainers.image.created=2026-08-25T08:43:32Z,org.opencontainers.image.revision=85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f
# Tue, 25 Aug 2026 17:45:37 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 25 Aug 2026 17:45:37 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 25 Aug 2026 17:52:42 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 25 Aug 2026 17:52:43 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 25 Aug 2026 17:52:43 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 25 Aug 2026 17:52:43 GMT
RUN fc-cache -v # buildkit
# Tue, 25 Aug 2026 17:52:43 GMT
WORKDIR /usr/share/kibana
# Tue, 25 Aug 2026 17:52:43 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 25 Aug 2026 17:52:43 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 25 Aug 2026 17:52:43 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:52:43 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 25 Aug 2026 17:52:43 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 17:52:44 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 25 Aug 2026 17:52:45 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 25 Aug 2026 17:52:45 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 25 Aug 2026 17:52:45 GMT
LABEL org.label-schema.build-date=2026-08-18T11:21:49.813Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=37dc1e9d6dbf80bb1cf22da5ed258d3f642d2f9c org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.2 org.opencontainers.image.created=2026-08-18T11:21:49.813Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=37dc1e9d6dbf80bb1cf22da5ed258d3f642d2f9c org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.2
# Tue, 25 Aug 2026 17:52:45 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.2 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 25 Aug 2026 17:52:45 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 25 Aug 2026 17:52:45 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 25 Aug 2026 17:52:45 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 25 Aug 2026 17:52:45 GMT
USER 1000
```

-	Layers:
	-	`sha256:cfeec01a2bba583c2dcde9b457cc89d4b56583567390972f5501ce5ad4fa4ae8`  
		Last Modified: Tue, 25 Aug 2026 09:35:36 GMT  
		Size: 38.8 MB (38815608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add1f1eb90db62d2ab219854bea26f6c914a01186e0a69820321bc97fa7beeda`  
		Last Modified: Tue, 25 Aug 2026 17:54:06 GMT  
		Size: 19.3 MB (19263078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab7646b9388879bdc40281d8e3ebbc70f0e61d0aa2106f8959c586ff688d4a5`  
		Last Modified: Tue, 25 Aug 2026 17:54:14 GMT  
		Size: 497.5 MB (497503745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33623eb500483fba3b6bfa666c98c93aa0c10666d15168141355fb8382743e08`  
		Last Modified: Tue, 25 Aug 2026 17:54:04 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec11115893f8fad6687477176a254f1faa0001e87b5f8c05607cc47315b6e7ee`  
		Last Modified: Tue, 25 Aug 2026 17:54:06 GMT  
		Size: 16.5 MB (16460493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba483fb355850e43b241d34252867345317d92eeef6d7730640add144acc9c97`  
		Last Modified: Tue, 25 Aug 2026 17:54:06 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2063e5a91b714d35ed3cd903fbfc432c4ff8d2de516447f375db65592b1561`  
		Last Modified: Tue, 25 Aug 2026 17:54:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:483a9102f6fc1d3a3b419451dc97dd763bf2e61b7a654fcb7f9255d4c558f7c7`  
		Last Modified: Tue, 25 Aug 2026 17:54:07 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d055506796ade64d481ef3291e23416b2f76fbc02d0c63b1a61d2d3d3cf2e73`  
		Last Modified: Tue, 25 Aug 2026 17:54:07 GMT  
		Size: 5.0 KB (5001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:415c810e6d2f3f5a972b1fe8edcb3d81dec3165b73e5f90f5a0bc91013a9b8c2`  
		Last Modified: Tue, 25 Aug 2026 17:54:08 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8563a6e1a61a1761604ce4a0da3ba94658772b5acac447daa79226aac77554d6`  
		Last Modified: Tue, 25 Aug 2026 17:54:09 GMT  
		Size: 73.5 KB (73453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb389e48970344d670f2b1f7d1fb1415d5559bda9d6d197c64ac4aea26d24610`  
		Last Modified: Tue, 25 Aug 2026 17:54:09 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e883239f3ec8dc485039318c1d3804d5c0bcc53859e3f07d40e1423ec66f8d`  
		Last Modified: Tue, 25 Aug 2026 17:54:10 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.2` - unknown; unknown

```console
$ docker pull kibana@sha256:ad1955eb73a4c5309b8bbe07445fd365f302fd96cc20ecc0b13c4cccd4ba9598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6134373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9a178de4538d2a65ee187c9b8a9a93e73bd67811ef725666db7cc30407cce63`

```dockerfile
```

-	Layers:
	-	`sha256:6c43e5321439098c851ae39379b225cd1d32f147747b0c2fe865a5eeba494274`  
		Last Modified: Tue, 25 Aug 2026 17:54:05 GMT  
		Size: 6.1 MB (6090890 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92e804dd37fbc92f82a431cc50f9c6bcf19b2eca3e23d903bad60117ce5a4f46`  
		Last Modified: Tue, 25 Aug 2026 17:54:04 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
