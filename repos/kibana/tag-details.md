<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:8.19.20`](#kibana81920)
-	[`kibana:9.4.5`](#kibana945)
-	[`kibana:9.5.1`](#kibana951)

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

## `kibana:9.5.1`

```console
$ docker pull kibana@sha256:cb3798d62105d4b18bee3f4b0aec7ae024ce1f84db631a5b90ce007ff23d3d21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.1` - linux; amd64

```console
$ docker pull kibana@sha256:71d22621e6b721e427c6100c9dfbdfda5456c35b756418c1e7db21b97ecb6adc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **526.4 MB (526402408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dacb0f851254756684b56af300d2da74927d99efa8ebc176c9264fdd263ea2ce`
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
# Mon, 17 Aug 2026 22:38:38 GMT
EXPOSE map[5601/tcp:{}]
# Mon, 17 Aug 2026 22:38:38 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:46:10 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Mon, 17 Aug 2026 22:46:11 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Mon, 17 Aug 2026 22:46:11 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Mon, 17 Aug 2026 22:46:11 GMT
RUN fc-cache -v # buildkit
# Mon, 17 Aug 2026 22:46:11 GMT
WORKDIR /usr/share/kibana
# Mon, 17 Aug 2026 22:46:11 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Mon, 17 Aug 2026 22:46:11 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 17 Aug 2026 22:46:11 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:46:11 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Mon, 17 Aug 2026 22:46:11 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Mon, 17 Aug 2026 22:46:12 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Mon, 17 Aug 2026 22:46:13 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Mon, 17 Aug 2026 22:46:13 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Mon, 17 Aug 2026 22:46:13 GMT
LABEL org.label-schema.build-date=2026-08-06T08:43:26.474Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=c9539950cdb7c83db5f1a7d4eda28880aded9a95 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.1 org.opencontainers.image.created=2026-08-06T08:43:26.474Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=c9539950cdb7c83db5f1a7d4eda28880aded9a95 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.1
# Mon, 17 Aug 2026 22:46:13 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.1 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Mon, 17 Aug 2026 22:46:13 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 17 Aug 2026 22:46:13 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Mon, 17 Aug 2026 22:46:13 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Mon, 17 Aug 2026 22:46:13 GMT
USER 1000
```

-	Layers:
	-	`sha256:c282501e7b1aa336a39e8eb09b91d97b94921c378c6a6fbfe7b56d2db572c305`  
		Last Modified: Mon, 17 Aug 2026 18:11:34 GMT  
		Size: 40.7 MB (40711990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56aefbd291975dd6ba340ad8626dd280f3397843a073b13acbd6cc0d65bbe977`  
		Last Modified: Mon, 17 Aug 2026 22:47:17 GMT  
		Size: 19.3 MB (19329938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ddf0cc56da0ba448d8d294eac4b4a000f01895450d42ba3afe008479e6a33d7`  
		Last Modified: Mon, 17 Aug 2026 22:47:25 GMT  
		Size: 449.8 MB (449801971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b21789fcb194ce03a66b35be19d0434e2fa0b09d543836d094c95e35537924f2`  
		Last Modified: Mon, 17 Aug 2026 22:47:16 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d44830abdb97eb0fc9cd1f6e9b84050509ea5c2af1c8913bd273c9437081ea4`  
		Last Modified: Mon, 17 Aug 2026 22:47:18 GMT  
		Size: 16.5 MB (16460493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd12d49626e08d8b922893a71183d71116974a6353b3260e838d793184ffec5a`  
		Last Modified: Mon, 17 Aug 2026 22:47:17 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e1dbf0b18448cc640f4a4e862f02fa76683a8e648444a6ca86d5a8084eb03bd`  
		Last Modified: Mon, 17 Aug 2026 22:47:19 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6364fc8dcf76eb94fbbb5191770e56bd6cae214c152222fa129977314d0b273f`  
		Last Modified: Mon, 17 Aug 2026 22:47:19 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68640bb09d771d0379bf088f510b4b067c907e5139ae941e1b5e16e2e01891b4`  
		Last Modified: Mon, 17 Aug 2026 22:47:19 GMT  
		Size: 5.0 KB (5004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76a06e0cc2d0cbdb387f677304cfe42c924ab7f92a1f6e7c745b700fd081640`  
		Last Modified: Mon, 17 Aug 2026 22:47:20 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3f5fd7ff0f9f5728a74cc540d5eff6da6129546d7e330a88a5544dd5523bac6`  
		Last Modified: Mon, 17 Aug 2026 22:47:20 GMT  
		Size: 74.5 KB (74546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f29422ebe961350685ee5aba01f1c537a712768694ba09819b7dad48cc5c920b`  
		Last Modified: Mon, 17 Aug 2026 22:47:20 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe9de1418d72cd45701cf8764cb232b691e314b388b76a60a26fffadd95506f8`  
		Last Modified: Mon, 17 Aug 2026 22:47:21 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.1` - unknown; unknown

```console
$ docker pull kibana@sha256:49558977a98e3dcc74da4e8eaa683c97a15d19b25dbb09b61f08195a5b051a13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6177158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc782f20c98d1300c53fce5647145e6415188941ce27ea6edabbb7b0b269c2c`

```dockerfile
```

-	Layers:
	-	`sha256:18b65c491122012351dcde95a9fcb919397d5010af6a334251730bfb48414aeb`  
		Last Modified: Mon, 17 Aug 2026 22:47:17 GMT  
		Size: 6.1 MB (6133932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15220d7a237b1bf933e6715458a23143ef50a55d9002d2758a1df94a07a23227`  
		Last Modified: Mon, 17 Aug 2026 22:47:16 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.1` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:6131c0566a2be2e2b11350eb37f067c0c4a11499adedcd09d0330c906dbafb42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.9 MB (537919012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399e3fa9a70aa2d5ad93287517c80a4c833a8c2431237c5b6b5414dc9ce56af0`
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
# Mon, 17 Aug 2026 22:37:58 GMT
EXPOSE map[5601/tcp:{}]
# Mon, 17 Aug 2026 22:37:58 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:44:40 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Mon, 17 Aug 2026 22:44:41 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Mon, 17 Aug 2026 22:44:41 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Mon, 17 Aug 2026 22:44:41 GMT
RUN fc-cache -v # buildkit
# Mon, 17 Aug 2026 22:44:41 GMT
WORKDIR /usr/share/kibana
# Mon, 17 Aug 2026 22:44:41 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Mon, 17 Aug 2026 22:44:41 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 17 Aug 2026 22:44:41 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:44:41 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Mon, 17 Aug 2026 22:44:41 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Mon, 17 Aug 2026 22:44:42 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Mon, 17 Aug 2026 22:44:43 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Mon, 17 Aug 2026 22:44:43 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Mon, 17 Aug 2026 22:44:43 GMT
LABEL org.label-schema.build-date=2026-08-06T08:43:26.474Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=c9539950cdb7c83db5f1a7d4eda28880aded9a95 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.1 org.opencontainers.image.created=2026-08-06T08:43:26.474Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=c9539950cdb7c83db5f1a7d4eda28880aded9a95 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.1
# Mon, 17 Aug 2026 22:44:43 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.1 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Mon, 17 Aug 2026 22:44:43 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Mon, 17 Aug 2026 22:44:43 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Mon, 17 Aug 2026 22:44:43 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Mon, 17 Aug 2026 22:44:43 GMT
USER 1000
```

-	Layers:
	-	`sha256:210b7d6959bf1413d4a100e480de134d4278c3fb9c1808fc5395449f4bd1229f`  
		Last Modified: Mon, 17 Aug 2026 18:17:33 GMT  
		Size: 38.8 MB (38815799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c03db83d91762a7141a15675d24f3a5df7a910077a5b9c30649198c901cc86d`  
		Last Modified: Mon, 17 Aug 2026 22:45:59 GMT  
		Size: 19.3 MB (19282859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d945621860c05d72b1d1c1fb61f4499ce9067665e82d91ed40ad532c9f67b73`  
		Last Modified: Mon, 17 Aug 2026 22:46:07 GMT  
		Size: 463.3 MB (463263382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1a498b779857bb3b34832021f815407b5de62597a59732dd85991d9ad638d97`  
		Last Modified: Mon, 17 Aug 2026 22:45:58 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5ea97e75e35549383519d7f090182e5e157cf2ef1224723df19dd29c5c7d94`  
		Last Modified: Mon, 17 Aug 2026 22:45:59 GMT  
		Size: 16.5 MB (16460479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0670f484d6fbbe2baa0c8d14ea2eec3aa12e06dfbf753c0c54d53b6876feea3`  
		Last Modified: Mon, 17 Aug 2026 22:45:59 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f28e8d0e8963b2d0e2fa5ee24c58526856af80804198ecdda73593703e2a1a0`  
		Last Modified: Mon, 17 Aug 2026 22:46:00 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6560e0a218fb0a23f6ee6b8e2db2e81bfe91a860a4d4df46762300fe2be0424d`  
		Last Modified: Mon, 17 Aug 2026 22:46:00 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9284dc72ebc8dc6f444a1cbb35516fc5ed8797344668e1ac8b32a8b3b34d5841`  
		Last Modified: Mon, 17 Aug 2026 22:46:00 GMT  
		Size: 5.0 KB (5003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb7c956ea54615be051db5f74fb0d109ff256c954e91a53907b1ba4c2dc53b11`  
		Last Modified: Mon, 17 Aug 2026 22:46:01 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e4b541846ed60ad54a10fc421f878663cfba25ecacb8a6aff3e543bec04ee3d`  
		Last Modified: Mon, 17 Aug 2026 22:46:02 GMT  
		Size: 73.5 KB (73452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0f404022c8340ebe1961f63b89aea50befa2a122ddeef93a6925b8f95beb03a`  
		Last Modified: Mon, 17 Aug 2026 22:46:02 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4880ccb5d483040340a5b6b737f72de17a86fdf4d04e0d6a14477d9fe421ad37`  
		Last Modified: Mon, 17 Aug 2026 22:46:03 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.1` - unknown; unknown

```console
$ docker pull kibana@sha256:2a3ab8887a222a1c1e6526a09eb258a7eb88907ff57009583fa06f775439c47c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6174305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45cbfd747cdf4294aa56a676614bb959c99636f48947deb09f7c417885eca7f2`

```dockerfile
```

-	Layers:
	-	`sha256:4cd66526356d4a962746b67d3d6d9dc397b48a2d735340f3c7d0ffa319a86adc`  
		Last Modified: Mon, 17 Aug 2026 22:45:58 GMT  
		Size: 6.1 MB (6130822 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42c81deb379bcea0011c3076938fdab61d31102860e866047d14e9d31f76cb47`  
		Last Modified: Mon, 17 Aug 2026 22:45:58 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
