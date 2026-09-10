<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:8.19.21`](#elasticsearch81921)
-	[`elasticsearch:9.4.6`](#elasticsearch946)
-	[`elasticsearch:9.5.3`](#elasticsearch953)

## `elasticsearch:8.19.21`

```console
$ docker pull elasticsearch@sha256:3ac38b7803ef521e1dbbe33446c5b2e51236657157797645f13b3a25f40be367
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:8.19.21` - linux; amd64

```console
$ docker pull elasticsearch@sha256:2c7d67c6bcab3698cd80d1911721747fe04e9f5e05376e7d5bebe0c7401ecba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **723.0 MB (722963969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814b1f69446f0a195cc086742f4397ec7a18c8b00cc9085c336e33f099b0692f`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

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
# Wed, 09 Sep 2026 02:22:00 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Wed, 09 Sep 2026 02:22:00 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 09 Sep 2026 02:22:00 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 09 Sep 2026 02:22:00 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 09 Sep 2026 02:23:26 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Wed, 09 Sep 2026 02:23:26 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 09 Sep 2026 02:23:26 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:23:26 GMT
ENV SHELL=/bin/bash
# Wed, 09 Sep 2026 02:23:26 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:23:27 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 09 Sep 2026 02:23:27 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 09 Sep 2026 02:23:27 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 09 Sep 2026 02:23:27 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 09 Sep 2026 02:23:27 GMT
LABEL org.label-schema.build-date=2026-08-26T22:10:47.574903747Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=4fe44c255c3d0da06779b921e132cdc555ed9aff org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.21 org.opencontainers.image.created=2026-08-26T22:10:47.574903747Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=4fe44c255c3d0da06779b921e132cdc555ed9aff org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.21
# Wed, 09 Sep 2026 02:23:27 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:23:27 GMT
CMD ["eswrapper"]
# Wed, 09 Sep 2026 02:23:27 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8676268e1cc26676449004beead31229ae78eb65eb5f90dc7137ea145d323fd5`  
		Last Modified: Wed, 09 Sep 2026 02:24:19 GMT  
		Size: 4.5 MB (4478880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af45189406a26408fc58a61275c4967b8dab1021191644215bfb74df198bdaed`  
		Last Modified: Wed, 09 Sep 2026 02:24:19 GMT  
		Size: 3.5 KB (3524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e908599ede429827a1fee6feee34776550895c805534295e89073b98c6adb0f2`  
		Last Modified: Wed, 09 Sep 2026 02:24:36 GMT  
		Size: 688.4 MB (688445340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c48182508114eca8c2c9906359d0d1ee94e737ed322c4ce7e7e562bdd2d1290`  
		Last Modified: Wed, 09 Sep 2026 02:24:19 GMT  
		Size: 9.5 KB (9533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39a59a17ab5a9ba62ca2e523bf7449824df8b12ef33d9a365d8191ca31d56ec`  
		Last Modified: Wed, 09 Sep 2026 02:24:20 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dc05b67bd847d80cde7bf03c8b72e1dcb85efacc20ad1246ceb38ae23c3336b`  
		Last Modified: Wed, 09 Sep 2026 02:24:20 GMT  
		Size: 164.2 KB (164186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a910d72cfdb59542615dc0fafe4e60c32645737c6502064584615df3b0c78ac`  
		Last Modified: Wed, 09 Sep 2026 02:24:20 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d72ab2b7a3ffe8a2a4f7ce43d9b61eabf70a352b8ac46721a7bfc3ffa25374d`  
		Last Modified: Wed, 09 Sep 2026 02:24:21 GMT  
		Size: 97.1 KB (97099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.21` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:f010b06d0c66f307fb7bd39e582239089328756e63c9efb8d24ba8302f4d043c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3227460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebb5193e84e9d8c128304e6dd24e561a6a37b6984ad863cede4cf60161a85adc`

```dockerfile
```

-	Layers:
	-	`sha256:40a9d3d5e28586d61b5405cb670d1c59f0abeecbc66763f3230fe56c3abea1a6`  
		Last Modified: Wed, 09 Sep 2026 02:24:19 GMT  
		Size: 3.2 MB (3190645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e577e9cc6bfb6ac31dbfd82ec6d57b9ad3a78f5d538c79ed714b8a1785a85158`  
		Last Modified: Wed, 09 Sep 2026 02:24:18 GMT  
		Size: 36.8 KB (36815 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:8.19.21` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:d6b3ac6694936e38abdaa7d6654132ab84a15b125b858b97f2366e27596fdda5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **570.9 MB (570937276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01cc886c3245abf65058dba7111a8a788150c4bf4c4907977192b2c5b183ec06`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

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
# Wed, 09 Sep 2026 02:18:43 GMT
RUN ln -sf bash /bin/sh && for iter in 1 2 3 4 5 6 7 8 9 10; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y --no-install-recommends         ca-certificates curl netcat-openbsd p11-kit unzip zip  &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* &&       exit_code=0 && break ||         exit_code=$? && echo "apt-get error: retry $iter in 10s" && sleep 10;     done;     exit $exit_code # buildkit
# Wed, 09 Sep 2026 02:18:43 GMT
RUN userdel -r ubuntu &&     groupadd -g 1000 elasticsearch &&     useradd --uid 1000 --gid 1000 --home-dir /usr/share/elasticsearch --create-home --shell /bin/bash elasticsearch &&     usermod -aG root elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 09 Sep 2026 02:18:43 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 09 Sep 2026 02:18:43 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 09 Sep 2026 02:19:48 GMT
COPY --chown=0:0 /usr/share/elasticsearch /usr/share/elasticsearch # buildkit
# Wed, 09 Sep 2026 02:19:48 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Wed, 09 Sep 2026 02:19:48 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:19:48 GMT
ENV SHELL=/bin/bash
# Wed, 09 Sep 2026 02:19:48 GMT
COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:19:48 GMT
RUN chmod g=u /etc/passwd &&     chmod 0555 /usr/local/bin/docker-entrypoint.sh &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 09 Sep 2026 02:19:48 GMT
COPY bin/docker-openjdk /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 09 Sep 2026 02:19:48 GMT
RUN /etc/ca-certificates/update.d/docker-openjdk # buildkit
# Wed, 09 Sep 2026 02:19:48 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 09 Sep 2026 02:19:48 GMT
LABEL org.label-schema.build-date=2026-08-26T22:10:47.574903747Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=4fe44c255c3d0da06779b921e132cdc555ed9aff org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=8.19.21 org.opencontainers.image.created=2026-08-26T22:10:47.574903747Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=4fe44c255c3d0da06779b921e132cdc555ed9aff org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.21
# Wed, 09 Sep 2026 02:19:48 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:19:48 GMT
CMD ["eswrapper"]
# Wed, 09 Sep 2026 02:19:48 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f93c2feb4a488f11990915d151256a5fec64eaeee36bb53e1de1e41064da88a`  
		Last Modified: Wed, 09 Sep 2026 02:20:27 GMT  
		Size: 4.5 MB (4484080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3cfc92141a1a8df0bfcbc071fb835d898b0d955f8009abd3dd0b541a52a7ec4`  
		Last Modified: Wed, 09 Sep 2026 02:20:27 GMT  
		Size: 3.5 KB (3519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4a71ccec2731c355787fa94927f0ee2cce650697fb8ad7bf3cf1a133fea863`  
		Last Modified: Wed, 09 Sep 2026 02:20:37 GMT  
		Size: 537.2 MB (537240618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c6cabe792462cc8248ee700b1e579b4e72c86761f44cf697ced7b72577b424f`  
		Last Modified: Wed, 09 Sep 2026 02:20:27 GMT  
		Size: 9.1 KB (9106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0ae9ae52acf2746a79d9836581358b9f2eac3823438d4a33e169334bbf5df82`  
		Last Modified: Wed, 09 Sep 2026 02:20:29 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:327daa22dced562633f003335b68537d12dccc68099a928e64f184a1fea8ab65`  
		Last Modified: Wed, 09 Sep 2026 02:20:29 GMT  
		Size: 160.7 KB (160685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fabaff3c134bc1946ad5454d7c0860b1504aa1642f01fba4ecd2a5880a1b456c`  
		Last Modified: Wed, 09 Sep 2026 02:20:29 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8c67d13493471354590b505c273291fddd18135451705e6c636f4ac3bbbc33`  
		Last Modified: Wed, 09 Sep 2026 02:20:31 GMT  
		Size: 97.1 KB (97098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:8.19.21` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:ff22d80bef50ba099c8b99d3fe084569b4f592514fbe2f7eaac2515750e01e68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3228076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3037fb0af6abfe3b049b13ec29fbf50de7414084208ef9e71eb5679caa241d05`

```dockerfile
```

-	Layers:
	-	`sha256:4777bd1a2db6f44254274841abb56290515317857d78d8a9ec0044661aa2c706`  
		Last Modified: Wed, 09 Sep 2026 02:20:27 GMT  
		Size: 3.2 MB (3191058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0bac7f14d93674df67c66cddc9fa4a082bb24c9efbb6027ccc9a8328703e70f3`  
		Last Modified: Wed, 09 Sep 2026 02:20:26 GMT  
		Size: 37.0 KB (37018 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.4.6`

```console
$ docker pull elasticsearch@sha256:c9e737c0eda32751fb8b9251a9c34fa1a4672e2564114c518c6a85d22a68910c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.6` - linux; amd64

```console
$ docker pull elasticsearch@sha256:691d2a057a4f0e3f099205a7b930366e9355d265673bba54ec8411997417625d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **868.9 MB (868927716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ae6d149f52d2a00c51542e185acb22a238364714dbbc94b67180e1e91b423a`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

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
# Wed, 09 Sep 2026 22:38:48 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:38:48 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 09 Sep 2026 22:42:21 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 09 Sep 2026 22:42:21 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 09 Sep 2026 22:42:21 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 09 Sep 2026 22:42:32 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 09 Sep 2026 22:42:32 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 09 Sep 2026 22:42:32 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:42:32 GMT
ENV SHELL=/bin/bash
# Wed, 09 Sep 2026 22:42:32 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:42:32 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 09 Sep 2026 22:42:32 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 09 Sep 2026 22:42:32 GMT
LABEL org.label-schema.build-date=2026-08-26T22:12:16.859701616Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=10011cbc74640115d0ffac0cef7c925aec4754f5 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T22:12:16.859701616Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=10011cbc74640115d0ffac0cef7c925aec4754f5 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Wed, 09 Sep 2026 22:42:32 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 09 Sep 2026 22:42:33 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 09 Sep 2026 22:42:33 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 22:42:33 GMT
CMD ["eswrapper"]
# Wed, 09 Sep 2026 22:42:33 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:399616a84899868b5dcba80b172eb2b68d9d6ceba1655cad130718f24d1f2160`  
		Last Modified: Wed, 09 Sep 2026 08:28:28 GMT  
		Size: 40.7 MB (40711761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09b3da14835e04c6ce90b9e2d45ccfc767d8f858b3404c788750220634b4580b`  
		Last Modified: Wed, 09 Sep 2026 22:43:31 GMT  
		Size: 4.1 MB (4109740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6fdb2b556f3bd6bfe4b89b77d0bb6704d56b6b5c0e8b6a481fe3b213fdef79e`  
		Last Modified: Wed, 09 Sep 2026 22:43:31 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05a1c79637343241cff340f9f71a5dd2ded0f7b1b2ed8527b4007f35a9a670a4`  
		Last Modified: Wed, 09 Sep 2026 22:43:31 GMT  
		Size: 9.5 KB (9534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:676d4262f348d43bafa31361122a157194f8f472b9bb0564c7c21a557838453a`  
		Last Modified: Wed, 09 Sep 2026 22:43:47 GMT  
		Size: 824.0 MB (824016244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81cebd707208d0322ea32699173863fb5e8279c443261816b8b86b944ca867e8`  
		Last Modified: Wed, 09 Sep 2026 22:43:32 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f9bff0ffb9d98cd1d462457a25298c06f1727a900b7d2b14715d4a2c2c69fe6`  
		Last Modified: Wed, 09 Sep 2026 22:43:32 GMT  
		Size: 1.7 KB (1721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07b88fc2384eb9364bb90bfba486ff4a401122c21e395f1e6d71983303515d4a`  
		Last Modified: Wed, 09 Sep 2026 22:43:32 GMT  
		Size: 75.2 KB (75187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0256cd202d1ab4909a7f11f2901de7bd396e888203d719c424f519b3f01ddba6`  
		Last Modified: Wed, 09 Sep 2026 22:43:33 GMT  
		Size: 1.7 KB (1697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.6` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:195f2d4c88809cb4b1e3d35510e3f973e7984324d0150813fd921e7b9ac87bc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:972b40e61b06c2659750206e1c66f18a7917e3affa28dcb029f9ab443cca2cd9`

```dockerfile
```

-	Layers:
	-	`sha256:4aa360f52efbd2b590a88406c5f124590e9cb502984c2d5e2ec45b0c1862e23b`  
		Last Modified: Wed, 09 Sep 2026 22:43:31 GMT  
		Size: 2.4 MB (2389005 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88f08cc5db63d428ece89995930be8cdebb4802f87cc012af7b48a7f1a209d48`  
		Last Modified: Wed, 09 Sep 2026 22:43:31 GMT  
		Size: 33.8 KB (33776 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.6` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:a630e6331ffd5edfa6c1a193b3d47f488d38cd9dda902f7a02c38ab0ceb14f13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.5 MB (713499320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f13b8e878b05f4912a76b89e17a911cade29be9588a0454d34056a83ca257a80`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

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
# Wed, 09 Sep 2026 22:37:37 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:37:37 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 09 Sep 2026 22:38:49 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 09 Sep 2026 22:38:49 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 09 Sep 2026 22:38:49 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 09 Sep 2026 22:38:56 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 09 Sep 2026 22:38:56 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 09 Sep 2026 22:38:56 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:38:56 GMT
ENV SHELL=/bin/bash
# Wed, 09 Sep 2026 22:38:56 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:38:56 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 09 Sep 2026 22:38:56 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 09 Sep 2026 22:38:56 GMT
LABEL org.label-schema.build-date=2026-08-26T22:12:16.859701616Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=10011cbc74640115d0ffac0cef7c925aec4754f5 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T22:12:16.859701616Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=10011cbc74640115d0ffac0cef7c925aec4754f5 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Wed, 09 Sep 2026 22:38:56 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 09 Sep 2026 22:38:56 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 09 Sep 2026 22:38:56 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 22:38:56 GMT
CMD ["eswrapper"]
# Wed, 09 Sep 2026 22:38:56 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:374f212d7a74263aefa7d3cf064825d27ce22b5a5491d106d1c42a1fe1638d0c`  
		Last Modified: Wed, 09 Sep 2026 08:28:59 GMT  
		Size: 38.8 MB (38810277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b69abe5d6d9e098d6741c269a2938acaa55dd82aa5ee5e0a40fb26dbf5bc223b`  
		Last Modified: Wed, 09 Sep 2026 22:39:43 GMT  
		Size: 4.1 MB (4108012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a976b262d9d20c3183cd6757672629a6812081300f0d934a85dee55421cc50`  
		Last Modified: Wed, 09 Sep 2026 22:39:43 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c00cc8b36abe34a9e2abaa8713fdf22755e061c8b4b3c4402592d233bc0aa0f`  
		Last Modified: Wed, 09 Sep 2026 22:39:43 GMT  
		Size: 9.1 KB (9097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76df0b46b84431ac8e33856c24061027163577c384e6da16a8238724261b0076`  
		Last Modified: Wed, 09 Sep 2026 22:39:59 GMT  
		Size: 670.5 MB (670492588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683ac3ce7619143659db378bf55b90ba646ac939b69dd98ca528ed47a73263e7`  
		Last Modified: Wed, 09 Sep 2026 22:39:44 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bfa1da67744bc474c8f27eb9f5d729d57ba494af36808da325de834b8e455a7`  
		Last Modified: Wed, 09 Sep 2026 22:39:44 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060f2a9d1f1abd8340b3dd4937a277b37828eea8a03b1d6e6ab47cc800fedf04`  
		Last Modified: Wed, 09 Sep 2026 22:39:45 GMT  
		Size: 74.1 KB (74105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4695816f6cd380e8433a283872a0b8d579ff474c6efe8473c0f32631f6d76a`  
		Last Modified: Wed, 09 Sep 2026 22:39:46 GMT  
		Size: 1.7 KB (1692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.6` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:692a592c4e8547fc1361501e17b6d98a1c5fd3c2c04ae3877c0ec21481dc5adc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ff18883792693a6bee79c16defc5a0f00b822aa803f79f0081fcec7eff869d7`

```dockerfile
```

-	Layers:
	-	`sha256:f18136250b371bbb2de073f34cd2d37d3b42d0a83f02edab41eae8227f7cae7c`  
		Last Modified: Wed, 09 Sep 2026 22:39:43 GMT  
		Size: 2.4 MB (2387785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:634d54ebee8dc6a2f5be5283d817ee9e0fdaff6e2ddcf536d19e917de29e9721`  
		Last Modified: Wed, 09 Sep 2026 22:39:43 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.5.3`

```console
$ docker pull elasticsearch@sha256:8d09295845fe07eb5fdaba0d75b700891063ec84e943d417815cea10d6d3bb15
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.5.3` - linux; amd64

```console
$ docker pull elasticsearch@sha256:8fb6914dfb5fcdb8598dc7dada2afcb7a0ecee19e2d55dc392c1c472e3ebf4c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **894.6 MB (894617222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91dae0aa7a9ecabe1a26f833031d3df649620425a81f254a7b3461bb4be826b8`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

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
# Wed, 09 Sep 2026 22:38:57 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:38:57 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 09 Sep 2026 22:41:07 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 09 Sep 2026 22:41:07 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 09 Sep 2026 22:41:08 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 09 Sep 2026 22:41:19 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 09 Sep 2026 22:41:19 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 09 Sep 2026 22:41:19 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:41:19 GMT
ENV SHELL=/bin/bash
# Wed, 09 Sep 2026 22:41:19 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:41:19 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 09 Sep 2026 22:41:19 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 09 Sep 2026 22:41:19 GMT
LABEL org.label-schema.build-date=2026-09-01T16:11:59.322249404Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=367ec317ec5f668dd864d41be06052a567102fec org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T16:11:59.322249404Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=367ec317ec5f668dd864d41be06052a567102fec org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3
# Wed, 09 Sep 2026 22:41:19 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.3 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 09 Sep 2026 22:41:19 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 09 Sep 2026 22:41:19 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 22:41:19 GMT
CMD ["eswrapper"]
# Wed, 09 Sep 2026 22:41:19 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:399616a84899868b5dcba80b172eb2b68d9d6ceba1655cad130718f24d1f2160`  
		Last Modified: Wed, 09 Sep 2026 08:28:28 GMT  
		Size: 40.7 MB (40711761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c033b183a89491337ec28472af6a414f484651b14fdbf06279bbad92590cfe57`  
		Last Modified: Wed, 09 Sep 2026 22:42:18 GMT  
		Size: 4.1 MB (4109723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26739278c4cc6a165a63ca597e4997a394b4d6daaee6f0c86750cc095c4db5e`  
		Last Modified: Wed, 09 Sep 2026 22:42:17 GMT  
		Size: 1.5 KB (1528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7782b45d90c82a896ce050b0710136fe13ba8f60831e6ffc3d9040d7c013459`  
		Last Modified: Wed, 09 Sep 2026 22:42:17 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5fcecfa18ce7565829e600b48ae5fd0c287e21a711144bb1b0bd7b5bf0e26de`  
		Last Modified: Wed, 09 Sep 2026 22:42:33 GMT  
		Size: 849.7 MB (849705782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:350c36af0b1a7377a83c761a10c50e76044ab286f92a71977596eb8d5199addf`  
		Last Modified: Wed, 09 Sep 2026 22:42:19 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:867ae3cc04b47bf0d5944f5cfb0cf073de73313b6f5da821e1e5c9467f89a76d`  
		Last Modified: Wed, 09 Sep 2026 22:42:19 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2df4271f2d43470b001b2eea117a97c1738572b9916a95d74a4c7308ef512840`  
		Last Modified: Wed, 09 Sep 2026 22:42:19 GMT  
		Size: 75.2 KB (75181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0c871d194a6fb30a68029393df4f052cdd845bb7d013ab4c3539dd62b29c586`  
		Last Modified: Wed, 09 Sep 2026 22:42:20 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.3` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:d3036ca31630ada9b1a768f6418ce091f90c5fe5ab953d48b72d9be41f18241b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2475862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fcb7420620ba2b3f1137ba460d21cfe64a521ba49f2975ffb53a2c2c4c845ed`

```dockerfile
```

-	Layers:
	-	`sha256:95d83b36c65b1c3d7ecc73e7cfa831021c6d67691c93fcad6068eea421101be7`  
		Last Modified: Wed, 09 Sep 2026 22:42:18 GMT  
		Size: 2.4 MB (2442086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c006f281985f61302f7f0f783349721d63e72bbbb42185ce743cac84ccdc1359`  
		Last Modified: Wed, 09 Sep 2026 22:42:17 GMT  
		Size: 33.8 KB (33776 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.5.3` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:4b451090219c4f76cd88e7be1c341af321f849f2c6c5f9d80e6f6022fc43e1fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **739.1 MB (739117891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdde2d2195802a6879c0b5c565ef1a6d684cecbcc9933628f84722eea3bdfd46`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

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
# Wed, 09 Sep 2026 22:37:46 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:37:46 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Wed, 09 Sep 2026 22:39:03 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 09 Sep 2026 22:39:03 GMT
COPY /bin/tini /bin/tini # buildkit
# Wed, 09 Sep 2026 22:39:03 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 09 Sep 2026 22:39:11 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Wed, 09 Sep 2026 22:39:11 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Wed, 09 Sep 2026 22:39:11 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:39:11 GMT
ENV SHELL=/bin/bash
# Wed, 09 Sep 2026 22:39:11 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:39:11 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Wed, 09 Sep 2026 22:39:11 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Wed, 09 Sep 2026 22:39:11 GMT
LABEL org.label-schema.build-date=2026-09-01T16:11:59.322249404Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=367ec317ec5f668dd864d41be06052a567102fec org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T16:11:59.322249404Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=367ec317ec5f668dd864d41be06052a567102fec org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3
# Wed, 09 Sep 2026 22:39:11 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.3 release=1 summary=Elasticsearch description=You know, for search.
# Wed, 09 Sep 2026 22:39:11 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Wed, 09 Sep 2026 22:39:11 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 22:39:11 GMT
CMD ["eswrapper"]
# Wed, 09 Sep 2026 22:39:11 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:374f212d7a74263aefa7d3cf064825d27ce22b5a5491d106d1c42a1fe1638d0c`  
		Last Modified: Wed, 09 Sep 2026 08:28:59 GMT  
		Size: 38.8 MB (38810277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f419491b7ca200def447983ae6d078e49b3159659f3ffe92a339ae4a4596dca`  
		Last Modified: Wed, 09 Sep 2026 22:39:59 GMT  
		Size: 4.1 MB (4108015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f76ce87ddeed9627e767c227618a183774b39e238bbd31ec61beaa12fa24223`  
		Last Modified: Wed, 09 Sep 2026 22:39:59 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c772c7f267eaaf68d01acce0c52bdc713e6b3b6b6b444eda8a6126e25390fdf`  
		Last Modified: Wed, 09 Sep 2026 22:39:59 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c9d18a615fc2bff923b078086c154682b868242bf857ad8933c80d01729fdf1`  
		Last Modified: Wed, 09 Sep 2026 22:40:12 GMT  
		Size: 696.1 MB (696111146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0fc43a15e1d535a2e25ad22494bcbdd7ef5ec5a18f9015def8b5c21435381c6`  
		Last Modified: Wed, 09 Sep 2026 22:40:00 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0838a2612a3b4788b18b69227e43772aa38c3bed46dd9aa4cc9625fc5b35558`  
		Last Modified: Wed, 09 Sep 2026 22:40:00 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40dd70a630d85bfca42cbfea79b2d5b8a3376c5517c47443ff7d232afee8c88`  
		Last Modified: Wed, 09 Sep 2026 22:40:01 GMT  
		Size: 74.1 KB (74105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de2bc1cb74322e739335eb0754cedcb639f21d8eeae4f92934547ce6a892cf61`  
		Last Modified: Wed, 09 Sep 2026 22:40:01 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.3` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:f0da76b0ce94ca56e3f12ab11c20bcfabe573ec700a88aa15b18bc203f2bc97b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2474824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7a7ba2dcb836860179eb87bcee2011a9da02e0f5f1e74a077db0875143fbff5`

```dockerfile
```

-	Layers:
	-	`sha256:ba877c5a0c89c84e6fd506a2f79d1f0f6a4c85f074fa6c54163964069551e4c3`  
		Last Modified: Wed, 09 Sep 2026 22:39:59 GMT  
		Size: 2.4 MB (2440866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16fe668e3bdb7498f58190f9556ae8414139a7e789316e6bffb3194b890efae0`  
		Last Modified: Wed, 09 Sep 2026 22:39:59 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json
