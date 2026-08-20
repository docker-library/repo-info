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
$ docker pull kibana@sha256:e190e3b1362fc592897eaa75b7c5d049486043c8c37305de45281561c6615a03
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.5` - linux; amd64

```console
$ docker pull kibana@sha256:5cf1cdbb4f7b35f42b3f1c5261978a1c57b0eb9fb16f7818c2208be5d27257a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **534.8 MB (534800989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2d78c9073b8c3e85e97cdd472afb6410a91ac2f4e7a71c6410f56cc60df111`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 17 Aug 2026 17:27:15 GMT
ENV container oci
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:975e595a9e6cbbfee7f07eb5443a58fb81eff06cafb12ae4f0e1422e8692c141 in /      
# Mon, 17 Aug 2026 17:27:16 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 17:27:16 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:65a3d9e22af3e56e090455b33d2c3174efac94e4f8a1283201a9e46186020641 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:65a3d9e22af3e56e090455b33d2c3174efac94e4f8a1283201a9e46186020641 in /root/buildinfo/      
# Mon, 17 Aug 2026 17:27:16 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T17:26:46Z" "org.opencontainers.image.revision"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "build-date"="2026-08-17T17:26:46Z" "architecture"="x86_64" "vcs-ref"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "vcs-type"="git" "release"="1786987521"org.opencontainers.image.created=2026-08-17T17:26:46Z,org.opencontainers.image.revision=6bb838e7904a1c68094d157a898fff623ad3fcb9
# Mon, 17 Aug 2026 22:38:32 GMT
EXPOSE map[5601/tcp:{}]
# Mon, 17 Aug 2026 22:38:32 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:48:32 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Mon, 17 Aug 2026 22:48:33 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Mon, 17 Aug 2026 22:48:33 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Mon, 17 Aug 2026 22:48:33 GMT
RUN fc-cache -v # buildkit
# Mon, 17 Aug 2026 22:48:33 GMT
WORKDIR /usr/share/kibana
# Mon, 17 Aug 2026 22:48:33 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Mon, 17 Aug 2026 22:48:33 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 17 Aug 2026 22:48:33 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:48:33 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Mon, 17 Aug 2026 22:48:33 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Mon, 17 Aug 2026 22:48:34 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Mon, 17 Aug 2026 22:48:35 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Mon, 17 Aug 2026 22:48:35 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Mon, 17 Aug 2026 22:48:35 GMT
LABEL org.label-schema.build-date=2026-08-05T14:27:25.294Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=bc80ff828630b51dd591207f43a54ea5ebf53270 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.5 org.opencontainers.image.created=2026-08-05T14:27:25.294Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=bc80ff828630b51dd591207f43a54ea5ebf53270 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.5
# Mon, 17 Aug 2026 22:48:35 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Mon, 17 Aug 2026 22:48:35 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 17 Aug 2026 22:48:35 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Mon, 17 Aug 2026 22:48:35 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Mon, 17 Aug 2026 22:48:35 GMT
USER 1000
```

-	Layers:
	-	`sha256:c282501e7b1aa336a39e8eb09b91d97b94921c378c6a6fbfe7b56d2db572c305`  
		Last Modified: Mon, 17 Aug 2026 18:11:34 GMT  
		Size: 40.7 MB (40711990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:152e881f554be6391dd9af04442699e2cfbeadcfab8a6c63f5e1543c4a71250a`  
		Last Modified: Mon, 17 Aug 2026 22:49:41 GMT  
		Size: 19.3 MB (19329871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65e5d1252eb8f90c676e64a97fb3d22c249a14b84e467f6b406583d20e25971d`  
		Last Modified: Mon, 17 Aug 2026 22:49:48 GMT  
		Size: 458.2 MB (458200700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:878e4c368be3ac5959ce8751c1e090251a3186c611fd7526f07eb1be088c145f`  
		Last Modified: Mon, 17 Aug 2026 22:49:39 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a15b4d45b137b4641565c8989f1e748317f2fc9e42c0b8010d591a3725235fa`  
		Last Modified: Mon, 17 Aug 2026 22:49:41 GMT  
		Size: 16.5 MB (16460493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d7818e8d66e9eef2f3ed3769c22d7cfdb2fe467a403d13e9bb2c9410f3c0bf`  
		Last Modified: Mon, 17 Aug 2026 22:49:41 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20e276dba0135f5539be60671af668bd044b6cec68c5482052333e990883d49e`  
		Last Modified: Mon, 17 Aug 2026 22:49:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:812b5df4a3dcd01248f4ebcc44d3f032bd719343f70c5034c8b3e63c9d874e47`  
		Last Modified: Mon, 17 Aug 2026 22:49:42 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35c326aa5afced29ba9396dcea6b4f3138a48f8c7caed92a5226cfaf21d9cda`  
		Last Modified: Mon, 17 Aug 2026 22:49:42 GMT  
		Size: 4.9 KB (4924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1986ce267175dbe9b7ac2ebdf7ffd5260557280d7078e175b5818f20ec308f2`  
		Last Modified: Mon, 17 Aug 2026 22:49:43 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674c107c75dda93b744ca8f2ca57bb2b49a9b16cafc5ac1bba1c02d5eff0e4f8`  
		Last Modified: Mon, 17 Aug 2026 22:49:43 GMT  
		Size: 74.5 KB (74548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae4559046396be453cad82c68c3584d64d122796f4bc1b1f584bf28374eaf4a`  
		Last Modified: Mon, 17 Aug 2026 22:49:43 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:054d2ef7095514e2b67e1f76f796fbda6d5e51358b57aeccfc63922ff369d93d`  
		Last Modified: Mon, 17 Aug 2026 22:49:44 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.5` - unknown; unknown

```console
$ docker pull kibana@sha256:8d767c0fee41586858f2b9caa1a18cc8d408e8fef57ed9d3ce8652ebd27da211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6006808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc369e79eee25fe30bc4a37ab9271b8731c18d1aee8f9595e8af414e83596a7f`

```dockerfile
```

-	Layers:
	-	`sha256:85dc0b147b41f535c8b4b01b5c3fc662a7919a02c8ebb7fb0d1a798292bff033`  
		Last Modified: Mon, 17 Aug 2026 22:49:40 GMT  
		Size: 6.0 MB (5963582 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:395264a831a272a35ebb3577a28a3f07aa49d2177cdff50b2bc2d19b0b311d95`  
		Last Modified: Mon, 17 Aug 2026 22:49:40 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.5` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:339083efe422ed6a766772f827a6bd99bfc6e3ef85f9e30f2c2a877a25043e2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **546.3 MB (546330656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d8863c1cdfde8cbf3637db5e26684d1f1bcb462a0b0c231790b8e7a8b6aa80`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 17 Aug 2026 17:29:38 GMT
ENV container oci
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:bc0c34c3de4568914cc6d0ce9e475804776b9932a837352e0a0b8eaeec65f0ab in /      
# Mon, 17 Aug 2026 17:29:39 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 17:29:39 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:75017821d3d7ffd12376ef094bfe2a63592d7cc455658a85911fc189573e02d7 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:75017821d3d7ffd12376ef094bfe2a63592d7cc455658a85911fc189573e02d7 in /root/buildinfo/      
# Mon, 17 Aug 2026 17:29:40 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T17:29:16Z" "org.opencontainers.image.revision"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "build-date"="2026-08-17T17:29:16Z" "architecture"="aarch64" "vcs-ref"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "vcs-type"="git" "release"="1786987521"org.opencontainers.image.created=2026-08-17T17:29:16Z,org.opencontainers.image.revision=6bb838e7904a1c68094d157a898fff623ad3fcb9
# Mon, 17 Aug 2026 22:37:55 GMT
EXPOSE map[5601/tcp:{}]
# Mon, 17 Aug 2026 22:37:55 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:45:54 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Mon, 17 Aug 2026 22:45:55 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Mon, 17 Aug 2026 22:45:55 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Mon, 17 Aug 2026 22:45:56 GMT
RUN fc-cache -v # buildkit
# Mon, 17 Aug 2026 22:45:56 GMT
WORKDIR /usr/share/kibana
# Mon, 17 Aug 2026 22:45:56 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Mon, 17 Aug 2026 22:45:56 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 17 Aug 2026 22:45:56 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:45:56 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Mon, 17 Aug 2026 22:45:56 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Mon, 17 Aug 2026 22:45:57 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Mon, 17 Aug 2026 22:45:58 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Mon, 17 Aug 2026 22:45:58 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Mon, 17 Aug 2026 22:45:58 GMT
LABEL org.label-schema.build-date=2026-08-05T14:27:25.294Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=bc80ff828630b51dd591207f43a54ea5ebf53270 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.5 org.opencontainers.image.created=2026-08-05T14:27:25.294Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=bc80ff828630b51dd591207f43a54ea5ebf53270 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.5
# Mon, 17 Aug 2026 22:45:58 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Mon, 17 Aug 2026 22:45:58 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 17 Aug 2026 22:45:58 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Mon, 17 Aug 2026 22:45:58 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Mon, 17 Aug 2026 22:45:58 GMT
USER 1000
```

-	Layers:
	-	`sha256:210b7d6959bf1413d4a100e480de134d4278c3fb9c1808fc5395449f4bd1229f`  
		Last Modified: Mon, 17 Aug 2026 18:17:33 GMT  
		Size: 38.8 MB (38815799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee60f3e1069c63884c30394188febfde62a2c27ed4e8540361b19785d125e1e`  
		Last Modified: Mon, 17 Aug 2026 22:47:19 GMT  
		Size: 19.3 MB (19282761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3dcfbab2772a2d0d3010defd9402c8b6903184fb2511fe979dea5fd0fd69ffe`  
		Last Modified: Mon, 17 Aug 2026 22:47:27 GMT  
		Size: 471.7 MB (471675196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:902b2c9c6a58c3e25bb9cdb9c1ff7ef4df8df3da139953950e3f3067d806cf5b`  
		Last Modified: Mon, 17 Aug 2026 22:47:18 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe97db46a4fc3ddfdc87a2245bb64ce6574f82db8e14d335951e54f9bc59cb9`  
		Last Modified: Mon, 17 Aug 2026 22:47:19 GMT  
		Size: 16.5 MB (16460484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9e12b1664160a282430fc82bd4f6180306c7e2a41906cb9952a793048901ec`  
		Last Modified: Mon, 17 Aug 2026 22:47:19 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56e3e5efb526c3ffde06ba81215567aedbffe154cb840b53cf405c551ddc5f69`  
		Last Modified: Mon, 17 Aug 2026 22:47:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c77216489f3d4030a077272964e83ce43a5ccc1226d39f0a062500bd703895e`  
		Last Modified: Mon, 17 Aug 2026 22:47:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58c20ca0e7c06b65d95f8c88d8ff0943584566866b1c29aaf5dd0d65377b480`  
		Last Modified: Mon, 17 Aug 2026 22:47:21 GMT  
		Size: 4.9 KB (4928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9d57dcc0bc28bf58ef2b4420b29190c7a8ddb0a291cdb427bc12f5aeb223be6`  
		Last Modified: Mon, 17 Aug 2026 22:47:22 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995a35e3c57bd99aa83f48ae9ee334af49cb2402185a598df47f400e2c7b4f68`  
		Last Modified: Mon, 17 Aug 2026 22:47:22 GMT  
		Size: 73.5 KB (73454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac289e0c5da49513a68fdff6728249aeb48a7abea288de44319e26cc789599f`  
		Last Modified: Mon, 17 Aug 2026 22:47:22 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da837c9f8c475499207ed6685529601fcdacff3c7b8a473640428113a9ead9b1`  
		Last Modified: Mon, 17 Aug 2026 22:47:23 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.5` - unknown; unknown

```console
$ docker pull kibana@sha256:1512c2d438188874fc497d575b4535f960b107f7a748343b699980b64fe0d9eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6003955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d368bc4f913cc6bc12dc08b23763cb8598b5b37267b695d88c951c6b2821cd6f`

```dockerfile
```

-	Layers:
	-	`sha256:e99a4f5880142af39b36ed4743ec94d07f5f9eb3a4fefb0b2ff30703bd7da9ce`  
		Last Modified: Mon, 17 Aug 2026 22:47:18 GMT  
		Size: 6.0 MB (5960472 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3fc95f8aac8950b1a48d151e8fe7fa2ee66a58b265912ada6867b359fcbf1d5`  
		Last Modified: Mon, 17 Aug 2026 22:47:18 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.5.2`

```console
$ docker pull kibana@sha256:4cc8ad96cdf4baa5b79f80bffd2dd2219f920df30b33d6dac1af0d4893a5209c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.2` - linux; amd64

```console
$ docker pull kibana@sha256:a05259190506e67d47515bb54cfd8858515888baffc90e15f5f51b83a61f0ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **560.6 MB (560629576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7223db3be318b64327f138f10b05126610766f8b28a34db0415f309c6595310a`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 17 Aug 2026 17:27:15 GMT
ENV container oci
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:975e595a9e6cbbfee7f07eb5443a58fb81eff06cafb12ae4f0e1422e8692c141 in /      
# Mon, 17 Aug 2026 17:27:16 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 17:27:16 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:65a3d9e22af3e56e090455b33d2c3174efac94e4f8a1283201a9e46186020641 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:65a3d9e22af3e56e090455b33d2c3174efac94e4f8a1283201a9e46186020641 in /root/buildinfo/      
# Mon, 17 Aug 2026 17:27:16 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T17:26:46Z" "org.opencontainers.image.revision"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "build-date"="2026-08-17T17:26:46Z" "architecture"="x86_64" "vcs-ref"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "vcs-type"="git" "release"="1786987521"org.opencontainers.image.created=2026-08-17T17:26:46Z,org.opencontainers.image.revision=6bb838e7904a1c68094d157a898fff623ad3fcb9
# Thu, 20 Aug 2026 17:22:07 GMT
EXPOSE map[5601/tcp:{}]
# Thu, 20 Aug 2026 17:22:07 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Thu, 20 Aug 2026 17:31:02 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Thu, 20 Aug 2026 17:31:02 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Thu, 20 Aug 2026 17:31:02 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Thu, 20 Aug 2026 17:31:02 GMT
RUN fc-cache -v # buildkit
# Thu, 20 Aug 2026 17:31:02 GMT
WORKDIR /usr/share/kibana
# Thu, 20 Aug 2026 17:31:03 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Thu, 20 Aug 2026 17:31:03 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 20 Aug 2026 17:31:03 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 17:31:03 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Thu, 20 Aug 2026 17:31:03 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Thu, 20 Aug 2026 17:31:03 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Thu, 20 Aug 2026 17:31:04 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Thu, 20 Aug 2026 17:31:04 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Thu, 20 Aug 2026 17:31:04 GMT
LABEL org.label-schema.build-date=2026-08-18T11:21:49.813Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=37dc1e9d6dbf80bb1cf22da5ed258d3f642d2f9c org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.2 org.opencontainers.image.created=2026-08-18T11:21:49.813Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=37dc1e9d6dbf80bb1cf22da5ed258d3f642d2f9c org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.2
# Thu, 20 Aug 2026 17:31:04 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.2 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Thu, 20 Aug 2026 17:31:04 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 20 Aug 2026 17:31:04 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Thu, 20 Aug 2026 17:31:04 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Thu, 20 Aug 2026 17:31:04 GMT
USER 1000
```

-	Layers:
	-	`sha256:c282501e7b1aa336a39e8eb09b91d97b94921c378c6a6fbfe7b56d2db572c305`  
		Last Modified: Mon, 17 Aug 2026 18:11:34 GMT  
		Size: 40.7 MB (40711990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f599fe47c3537c438af7c493662af5875265a81972e29e02d6b12d0e3a66cf13`  
		Last Modified: Thu, 20 Aug 2026 17:32:21 GMT  
		Size: 19.3 MB (19319674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:754f9689d641e4c48c35208612b3bda8b772be21f68795835453f5289f836909`  
		Last Modified: Thu, 20 Aug 2026 17:32:29 GMT  
		Size: 484.0 MB (484039402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a94fcde400f1911c176749fa1a35ed7d754baae61bc77d44285eb8f48e398dd3`  
		Last Modified: Thu, 20 Aug 2026 17:32:20 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f1775747cec4007b20a0822e19310401465e7a2b10f765cbb265a8afc20cba`  
		Last Modified: Thu, 20 Aug 2026 17:32:21 GMT  
		Size: 16.5 MB (16460486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abc1f6b5700b58e508d271c46cdea817e2aa062ace7b3fae3cb76b0a0dfbaa50`  
		Last Modified: Thu, 20 Aug 2026 17:32:21 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a6de7d9c782d396a594c4385a7391a4c4f899121e182acafc90f236aa46a80`  
		Last Modified: Thu, 20 Aug 2026 17:32:22 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d8b831d8a6517af88b6e7fec63fa3ebfa759af76db419308feb4e094a2e980c`  
		Last Modified: Thu, 20 Aug 2026 17:32:22 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666c7391fe69525f772e49e52b04469eab2508dbd49862a7562005cc6509ce62`  
		Last Modified: Thu, 20 Aug 2026 17:32:22 GMT  
		Size: 5.0 KB (5005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa6303e62c95fe951c206b9222b1a7d47eaef0452dca99c0e2bf6cb196b82074`  
		Last Modified: Thu, 20 Aug 2026 17:32:23 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3112f4710323ee63284fc7d0229cdf71272ca3e5f86a80a2923543800e7668a8`  
		Last Modified: Thu, 20 Aug 2026 17:32:24 GMT  
		Size: 74.5 KB (74548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a572a49eeb0d8a3efe7bacefb3f25025e6ee370f88de17a51228f2c0b305ca7`  
		Last Modified: Thu, 20 Aug 2026 17:32:24 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18bbf159db81b050dbf15874eed842d557e0c2667971a6b5dc53599e21b2f514`  
		Last Modified: Thu, 20 Aug 2026 17:32:25 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.2` - unknown; unknown

```console
$ docker pull kibana@sha256:cf2afb912d41380861b84e92b4c94ee1fc146d09c9e5be50154db5d2997b5e49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6137226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a551220ba606f272219f8f302d96aba92c4080671da363be4ae490a1e4077bdd`

```dockerfile
```

-	Layers:
	-	`sha256:7a3ac66cf9ba124da734c6e0c474b8b4f509efee1f3de39d526f9c2d125ee46a`  
		Last Modified: Thu, 20 Aug 2026 17:32:20 GMT  
		Size: 6.1 MB (6094000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8387ce741349368c67377c4bae4e0705d0ba7d48afe88dc5a487875f295e0893`  
		Last Modified: Thu, 20 Aug 2026 17:32:20 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.2` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:2fb97594c478f41b7ca9f5e67c618872d54fba9b149f3cb601dcb9ac3fea26a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **572.2 MB (572156592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ad87ac8011293d932b4c101533b527317705b75dd7b7944daaccc1be0efb3d0`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 17 Aug 2026 17:29:38 GMT
ENV container oci
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:bc0c34c3de4568914cc6d0ce9e475804776b9932a837352e0a0b8eaeec65f0ab in /      
# Mon, 17 Aug 2026 17:29:39 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 17:29:39 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:75017821d3d7ffd12376ef094bfe2a63592d7cc455658a85911fc189573e02d7 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:75017821d3d7ffd12376ef094bfe2a63592d7cc455658a85911fc189573e02d7 in /root/buildinfo/      
# Mon, 17 Aug 2026 17:29:40 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T17:29:16Z" "org.opencontainers.image.revision"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "build-date"="2026-08-17T17:29:16Z" "architecture"="aarch64" "vcs-ref"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "vcs-type"="git" "release"="1786987521"org.opencontainers.image.created=2026-08-17T17:29:16Z,org.opencontainers.image.revision=6bb838e7904a1c68094d157a898fff623ad3fcb9
# Thu, 20 Aug 2026 17:21:10 GMT
EXPOSE map[5601/tcp:{}]
# Thu, 20 Aug 2026 17:21:10 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Thu, 20 Aug 2026 17:28:24 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Thu, 20 Aug 2026 17:28:24 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Thu, 20 Aug 2026 17:28:24 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Thu, 20 Aug 2026 17:28:25 GMT
RUN fc-cache -v # buildkit
# Thu, 20 Aug 2026 17:28:25 GMT
WORKDIR /usr/share/kibana
# Thu, 20 Aug 2026 17:28:25 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Thu, 20 Aug 2026 17:28:25 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 20 Aug 2026 17:28:25 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 17:28:25 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Thu, 20 Aug 2026 17:28:25 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Thu, 20 Aug 2026 17:28:26 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Thu, 20 Aug 2026 17:28:27 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Thu, 20 Aug 2026 17:28:27 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Thu, 20 Aug 2026 17:28:27 GMT
LABEL org.label-schema.build-date=2026-08-18T11:21:49.813Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=37dc1e9d6dbf80bb1cf22da5ed258d3f642d2f9c org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.2 org.opencontainers.image.created=2026-08-18T11:21:49.813Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=37dc1e9d6dbf80bb1cf22da5ed258d3f642d2f9c org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.2
# Thu, 20 Aug 2026 17:28:27 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.2 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Thu, 20 Aug 2026 17:28:27 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Thu, 20 Aug 2026 17:28:27 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Thu, 20 Aug 2026 17:28:27 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Thu, 20 Aug 2026 17:28:27 GMT
USER 1000
```

-	Layers:
	-	`sha256:210b7d6959bf1413d4a100e480de134d4278c3fb9c1808fc5395449f4bd1229f`  
		Last Modified: Mon, 17 Aug 2026 18:17:33 GMT  
		Size: 38.8 MB (38815799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b8d7c9831dcbf731a49982d092f34d4d6c721264085e51e01d998373dcab073`  
		Last Modified: Thu, 20 Aug 2026 17:29:50 GMT  
		Size: 19.3 MB (19263716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:754294f6582a2b59176ba3c0bf559edbf7e3e3378fc8352fa174fc214d1a8101`  
		Last Modified: Thu, 20 Aug 2026 17:29:58 GMT  
		Size: 497.5 MB (497520096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95e3b5a290e55ad3b348389abdc5af394dccdd6823f0fd3302ef0213641b8ffc`  
		Last Modified: Thu, 20 Aug 2026 17:29:49 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74f65ed57c8601250fbc953c0ea40fc2b368f0c0bc91fdc74019e9366db83059`  
		Last Modified: Thu, 20 Aug 2026 17:29:50 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:008fecbcda2114976a87b5483c7ebc62a661c7e3e0dc694db2bbc920a74d7949`  
		Last Modified: Thu, 20 Aug 2026 17:29:50 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313c30cac52e541728bc83fdb190336032d0e7373ac4d000a5c3a7dd179cb3b7`  
		Last Modified: Thu, 20 Aug 2026 17:29:51 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62bc0546ef20390f1573ed39dd778ab557395bc2dcfa81e0a428e99c835ffa79`  
		Last Modified: Thu, 20 Aug 2026 17:29:51 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cb79aef87a0e84e843e285367eca6516418dc1851b86eead86360666135b36`  
		Last Modified: Thu, 20 Aug 2026 17:29:51 GMT  
		Size: 5.0 KB (5003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7b7c4c67b4c85af5456803275ac8b84125dfa653f12690250752fb9b05bbf5`  
		Last Modified: Thu, 20 Aug 2026 17:29:52 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a91e1bd0fa958376af217241b39ac79d39345062b7bbdd15b34e4b5b189a7847`  
		Last Modified: Thu, 20 Aug 2026 17:29:53 GMT  
		Size: 73.5 KB (73456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df429425ae3600f1207a901f580811ab29e7bd85bf1929b9a4b73c754a60c510`  
		Last Modified: Thu, 20 Aug 2026 17:29:53 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f97bd45cce4e6b0eb94b2ea11e0ab05e1b666ef13bd9fb3287ab348831fba5fd`  
		Last Modified: Thu, 20 Aug 2026 17:29:54 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.2` - unknown; unknown

```console
$ docker pull kibana@sha256:915e707d3f2c24a6c23dc6671825bcf6db39e3543b9919644f1378be98928824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6134373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6faec5cf294e1483f42c6abbdd9d61e19127e660ff023fd919d06b831c77e341`

```dockerfile
```

-	Layers:
	-	`sha256:a0c80d40848a8b6dae31541e08416a5e7812eb7dc12667ad40ab6416b4efb024`  
		Last Modified: Thu, 20 Aug 2026 17:29:49 GMT  
		Size: 6.1 MB (6090890 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e86aa54977af645b16a2f245cfa51fdec87e3f083dead76b4ebdb755bfc034b3`  
		Last Modified: Thu, 20 Aug 2026 17:29:49 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
