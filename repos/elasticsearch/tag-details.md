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
$ docker pull elasticsearch@sha256:54171a899f5149da7a067f1f510b4c419e2d6ad67cc7946f27a74ff04d46c351
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.4.6` - linux; amd64

```console
$ docker pull elasticsearch@sha256:2c803937514164b18f873e8ef694cac2c8819a188c8dd23730a3e24a5d1d7fb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **869.0 MB (869009155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc1ed0042cce03699c07128b68beb1383d310cd1cb79aa6513a91f953e138a5c`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:53:47 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:53:48 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 15 Sep 2026 22:54:22 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 15 Sep 2026 22:54:22 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 15 Sep 2026 22:54:22 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 15 Sep 2026 22:54:33 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 15 Sep 2026 22:54:33 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 15 Sep 2026 22:54:33 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:54:33 GMT
ENV SHELL=/bin/bash
# Tue, 15 Sep 2026 22:54:33 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:54:33 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 15 Sep 2026 22:54:33 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 15 Sep 2026 22:54:33 GMT
LABEL org.label-schema.build-date=2026-08-26T22:12:16.859701616Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=10011cbc74640115d0ffac0cef7c925aec4754f5 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T22:12:16.859701616Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=10011cbc74640115d0ffac0cef7c925aec4754f5 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Tue, 15 Sep 2026 22:54:33 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 15 Sep 2026 22:54:33 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 15 Sep 2026 22:54:33 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:54:33 GMT
CMD ["eswrapper"]
# Tue, 15 Sep 2026 22:54:33 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a3b38447b85b38049d91a79cae57e1c4110f11676d3ad8dd0cac24ab308bae4`  
		Last Modified: Tue, 15 Sep 2026 22:55:30 GMT  
		Size: 4.1 MB (4108321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42a66b06e62b1ab3e2c9826b498c882a5c7db22bd2e4a649fa80bf1429abb7a`  
		Last Modified: Tue, 15 Sep 2026 22:55:29 GMT  
		Size: 1.5 KB (1532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d9e6994f1c612a9e4f5569390c8a4dda134a4a0aca6c395e2a327e6d4ec0bc`  
		Last Modified: Tue, 15 Sep 2026 22:55:29 GMT  
		Size: 9.5 KB (9532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090fc310e06b0c7cf637285faee9ee677df7de40d19237374d3f71952a330f1e`  
		Last Modified: Tue, 15 Sep 2026 22:55:50 GMT  
		Size: 824.0 MB (824016144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ec25c961f6bb088090f91fdf0266bd9a185ae45ef622e28721402d99897def`  
		Last Modified: Tue, 15 Sep 2026 22:55:31 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb47d326394c41d7de342e50f61c457837befd6f63d4ccd3674988ef2200626`  
		Last Modified: Tue, 15 Sep 2026 22:55:31 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d380e556b6fd115d1f21e6a48f400f5aa9433e5c3014c4d687051952029f846`  
		Last Modified: Tue, 15 Sep 2026 22:55:31 GMT  
		Size: 75.2 KB (75185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aaf1334add5e2b2313b984105c48b990917882ce67367ff25606a871220e45`  
		Last Modified: Tue, 15 Sep 2026 22:55:32 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.6` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:be2f4373a710fc2da0b59345e92f91e66e40e60d16b4d005e05cc12908648fd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01410356a9092b67b626238802d77dd440cfbd24af3ce4caf4a3994160222ce1`

```dockerfile
```

-	Layers:
	-	`sha256:0800e6e73bee50012333e6e705e2c67e84ccd379118bcbdbe96dccbb2bd9f2fc`  
		Last Modified: Tue, 15 Sep 2026 22:55:30 GMT  
		Size: 2.4 MB (2389013 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb1a120a72e458672b6b584d8efaf96ef75b18b0c72c7234a4e2c068cbd351dc`  
		Last Modified: Tue, 15 Sep 2026 22:55:30 GMT  
		Size: 33.8 KB (33776 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.4.6` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:5f416f199dab823e55163177125435c8f00438ee118df511977ecb5e7344b029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.5 MB (713490523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3945eed538e63780bd7152a3f1d8c85d5f06262ea16ae0856f312273cc60967d`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:32:10 GMT
ENV container oci
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:72fb2dc4c486c747a87584232d6df49829397aab078c7b53003fc02fe0742d2a in /      
# Tue, 15 Sep 2026 08:32:11 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:32:11 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:70bfa1e7dfaad5303fc10a9b7675f727b8b80ee73235d444355fbe0bc2bcf440 in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:70bfa1e7dfaad5303fc10a9b7675f727b8b80ee73235d444355fbe0bc2bcf440 in /root/buildinfo/      
# Tue, 15 Sep 2026 08:32:11 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:31:49Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:31:49Z" "architecture"="aarch64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:31:49Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:42:52 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:42:53 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 15 Sep 2026 22:44:12 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 15 Sep 2026 22:44:12 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 15 Sep 2026 22:44:12 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 15 Sep 2026 22:44:19 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 15 Sep 2026 22:44:19 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 15 Sep 2026 22:44:19 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:44:19 GMT
ENV SHELL=/bin/bash
# Tue, 15 Sep 2026 22:44:19 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:44:19 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 15 Sep 2026 22:44:19 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 15 Sep 2026 22:44:19 GMT
LABEL org.label-schema.build-date=2026-08-26T22:12:16.859701616Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=10011cbc74640115d0ffac0cef7c925aec4754f5 org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-26T22:12:16.859701616Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=10011cbc74640115d0ffac0cef7c925aec4754f5 org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6
# Tue, 15 Sep 2026 22:44:19 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.4.6 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 15 Sep 2026 22:44:20 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 15 Sep 2026 22:44:20 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:44:20 GMT
CMD ["eswrapper"]
# Tue, 15 Sep 2026 22:44:20 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:edf54d88a9d386573b3ea6054762d75827e6380055074899aed1e5a2c810b3b7`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 38.8 MB (38799472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b7dc1c92b661cc2a9a6a918d2ae78117c7b9ed6f925a12e078765237d983d5`  
		Last Modified: Tue, 15 Sep 2026 22:45:06 GMT  
		Size: 4.1 MB (4109910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ec964203f5629e0e21a134fb6c953b583c574843fb526a33c221ee9926464d6`  
		Last Modified: Tue, 15 Sep 2026 22:44:15 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9dd73f82c62d486eeb35f1249c235916b230272f1f9f21a69af44854218e83`  
		Last Modified: Tue, 15 Sep 2026 22:45:06 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58500abb9f77d5e7a83fa175e07131bbf4511140639808408a3509ba94b0d3c3`  
		Last Modified: Tue, 15 Sep 2026 22:45:18 GMT  
		Size: 670.5 MB (670492690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8fcb814211f402c7c84801fbf3de67ee633d5e400aad2eea8c4325b3866668`  
		Last Modified: Tue, 15 Sep 2026 22:45:06 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294d6cd7e6d2a0049c4c36b6cf13a4aa56cc8944780d475483917a2c3c5b66a3`  
		Last Modified: Tue, 15 Sep 2026 22:45:07 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03916b59240e1cc10b77480a9516518d05c0374f65270ce6419250cfc1bcb10d`  
		Last Modified: Tue, 15 Sep 2026 22:45:07 GMT  
		Size: 74.1 KB (74105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ac1035864218fc71932ce6ce227f38c780464ea83f7c8df911b1b1ae32ce4f0`  
		Last Modified: Tue, 15 Sep 2026 22:45:07 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.4.6` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:eaccbea6374a4f0c862f0e4152b3cbf1cfebdefee4191a4cfcbad538f3e4523a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376c869b6b10a290f0daddd556e43ae6da067de052575c26f6e980bba80b62d9`

```dockerfile
```

-	Layers:
	-	`sha256:7db17f566ad6c043c8f99d79d051af64fb53dd2236abf5aa254e1c319e85d17e`  
		Last Modified: Tue, 15 Sep 2026 22:45:06 GMT  
		Size: 2.4 MB (2387793 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f866689c569d39a61e175f7409eeecf597a4aeb93338356234745e98d8e0b9a7`  
		Last Modified: Tue, 15 Sep 2026 22:45:05 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json

## `elasticsearch:9.5.3`

```console
$ docker pull elasticsearch@sha256:35771a8fd9c332aeba8fbea3a335b52f1b2f39a94da46e6409381d30fd42574b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `elasticsearch:9.5.3` - linux; amd64

```console
$ docker pull elasticsearch@sha256:d04211ae3fa8551a0a7512737050c721018660d50554cb44c1cf2798abbc618d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **894.7 MB (894698794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a3bd46e4d2c2f892030e2ffbba1557a68fb7f338e806891f9a5434e6892739`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:53:58 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:53:58 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 15 Sep 2026 22:54:34 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 15 Sep 2026 22:54:34 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 15 Sep 2026 22:54:34 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 15 Sep 2026 22:54:45 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 15 Sep 2026 22:54:45 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 15 Sep 2026 22:54:45 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:54:45 GMT
ENV SHELL=/bin/bash
# Tue, 15 Sep 2026 22:54:45 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:54:45 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 15 Sep 2026 22:54:45 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 15 Sep 2026 22:54:45 GMT
LABEL org.label-schema.build-date=2026-09-01T16:11:59.322249404Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=367ec317ec5f668dd864d41be06052a567102fec org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T16:11:59.322249404Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=367ec317ec5f668dd864d41be06052a567102fec org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3
# Tue, 15 Sep 2026 22:54:45 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.3 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 15 Sep 2026 22:54:46 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 15 Sep 2026 22:54:46 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:54:46 GMT
CMD ["eswrapper"]
# Tue, 15 Sep 2026 22:54:46 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c525a09a97680afa79d3955f2079bbc67fe8f30a7a5799bc2e56c2b5406f4869`  
		Last Modified: Tue, 15 Sep 2026 22:55:46 GMT  
		Size: 4.1 MB (4108332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:481af89590ad064d1dd342b7b12edc18d85bbfceb38f2da2bc22776aa8141c05`  
		Last Modified: Tue, 15 Sep 2026 22:55:45 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d60794aba023ab1fbae67c81079924ec49552447da6a91571de8daddcce531a`  
		Last Modified: Tue, 15 Sep 2026 22:55:45 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07dedfbb0ce55e001f5a71d41c18379b2b06eae073c70bc84245f55032b6ddfc`  
		Last Modified: Tue, 15 Sep 2026 22:56:00 GMT  
		Size: 849.7 MB (849705779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7980d3fb09bdb9c8812035c258f7d4dcaed0e17af42f640fb35391ac3ada7496`  
		Last Modified: Tue, 15 Sep 2026 22:55:46 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b53f63e9fc9e14d91d5f63dde5ac2975d3a694808239ce72016122500d3fe1d`  
		Last Modified: Tue, 15 Sep 2026 22:55:47 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b52f19c275ef26a2d99b16ce358b0bc7c7e15eee1df13ae7d632767b2386a0e`  
		Last Modified: Tue, 15 Sep 2026 22:55:47 GMT  
		Size: 75.2 KB (75179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2370b3ad5b45d936445ce7a453d31595caa129acd555fa24d77d16c269aa147a`  
		Last Modified: Tue, 15 Sep 2026 22:55:48 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.3` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:85ea2dcf43cc759ae77b913fe956daab865f0505a3124b883b4062ee8eb48f59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2475869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fa8882f37e84757b091c1c3db11897dcb32677f661f65f8b6edfa6df729afc5`

```dockerfile
```

-	Layers:
	-	`sha256:fc9b57bc514c0703b5f8d8acf33f019a21b32651509d0a356a558cebb308e0fb`  
		Last Modified: Tue, 15 Sep 2026 22:55:45 GMT  
		Size: 2.4 MB (2442094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82d48cc30f385ca201c89d8f64a724785a0a465d53f5f83c98ea9c9a74352896`  
		Last Modified: Tue, 15 Sep 2026 22:55:45 GMT  
		Size: 33.8 KB (33775 bytes)  
		MIME: application/vnd.in-toto+json

### `elasticsearch:9.5.3` - linux; arm64 variant v8

```console
$ docker pull elasticsearch@sha256:ef33ee8a6f703d5f7ea614e4d4de70e49436ce9256be3930d1db8cd9a7a01691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **739.1 MB (739108872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04e4cfdf87c184a042d46d3e0ba4298bcdaec4d9a9767c59e9e6a48ff553c915`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:32:10 GMT
ENV container oci
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:72fb2dc4c486c747a87584232d6df49829397aab078c7b53003fc02fe0742d2a in /      
# Tue, 15 Sep 2026 08:32:11 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:32:11 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:70bfa1e7dfaad5303fc10a9b7675f727b8b80ee73235d444355fbe0bc2bcf440 in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:70bfa1e7dfaad5303fc10a9b7675f727b8b80ee73235d444355fbe0bc2bcf440 in /root/buildinfo/      
# Tue, 15 Sep 2026 08:32:11 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:31:49Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:31:49Z" "architecture"="aarch64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:31:49Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:42:53 GMT
RUN microdnf install --setopt=tsflags=nodocs -y     nc shadow-utils zip unzip findutils procps-ng &&     microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:42:53 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chown -R 0:0 /usr/share/elasticsearch # buildkit
# Tue, 15 Sep 2026 22:43:21 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 15 Sep 2026 22:43:21 GMT
COPY /bin/tini /bin/tini # buildkit
# Tue, 15 Sep 2026 22:43:21 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 15 Sep 2026 22:43:29 GMT
COPY --chown=0:0 /usr/share/elasticsearch . # buildkit
# Tue, 15 Sep 2026 22:43:29 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts jdk/lib/security/cacerts # buildkit
# Tue, 15 Sep 2026 22:43:29 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:43:29 GMT
ENV SHELL=/bin/bash
# Tue, 15 Sep 2026 22:43:29 GMT
COPY --chmod=0555 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:43:29 GMT
RUN chmod g=u /etc/passwd &&     find / -xdev -perm -4000 -exec chmod ug-s {} + &&     chmod 0775 /usr/share/elasticsearch &&     chown elasticsearch bin config config/jvm.options.d data logs plugins # buildkit
# Tue, 15 Sep 2026 22:43:29 GMT
EXPOSE map[9200/tcp:{} 9300/tcp:{}]
# Tue, 15 Sep 2026 22:43:29 GMT
LABEL org.label-schema.build-date=2026-09-01T16:11:59.322249404Z org.label-schema.license=Elastic-License-2.0 org.label-schema.name=Elasticsearch org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.usage=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.label-schema.vcs-ref=367ec317ec5f668dd864d41be06052a567102fec org.label-schema.vcs-url=https://github.com/elastic/elasticsearch org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T16:11:59.322249404Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/elasticsearch/reference/index.html org.opencontainers.image.licenses=Elastic-License-2.0 org.opencontainers.image.revision=367ec317ec5f668dd864d41be06052a567102fec org.opencontainers.image.source=https://github.com/elastic/elasticsearch org.opencontainers.image.title=Elasticsearch org.opencontainers.image.url=https://www.elastic.co/products/elasticsearch org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3
# Tue, 15 Sep 2026 22:43:29 GMT
LABEL name=Elasticsearch maintainer=infra@elastic.co vendor=Elastic version=9.5.3 release=1 summary=Elasticsearch description=You know, for search.
# Tue, 15 Sep 2026 22:43:29 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 15 Sep 2026 22:43:29 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:43:29 GMT
CMD ["eswrapper"]
# Tue, 15 Sep 2026 22:43:29 GMT
USER 1000:0
```

-	Layers:
	-	`sha256:edf54d88a9d386573b3ea6054762d75827e6380055074899aed1e5a2c810b3b7`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 38.8 MB (38799472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:168b7566e8ec80b33a2c70d94d7d8e0827b754c5f7e0e875f09b484cc6f61f18`  
		Last Modified: Tue, 15 Sep 2026 22:44:16 GMT  
		Size: 4.1 MB (4109871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ec964203f5629e0e21a134fb6c953b583c574843fb526a33c221ee9926464d6`  
		Last Modified: Tue, 15 Sep 2026 22:44:15 GMT  
		Size: 1.5 KB (1529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1643d62e83466e33119c229ecfa0fcf22715414f06b160b5929f5b2642b2a6`  
		Last Modified: Tue, 15 Sep 2026 22:44:15 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39dd9cf0bd2ccd788bffdc338a2150b6af956bb8ecd137d58aaa80c681b365c3`  
		Last Modified: Tue, 15 Sep 2026 22:44:27 GMT  
		Size: 696.1 MB (696111080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d52d08a936f8efe2564c8b18de215d98b4caba3ffcd705c915cffc000920321a`  
		Last Modified: Tue, 15 Sep 2026 22:44:16 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c0b980af222f9902a07151788a03b481473ab4d43b5d3483f8c48fd2edc44c6`  
		Last Modified: Tue, 15 Sep 2026 22:44:16 GMT  
		Size: 1.7 KB (1721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:581ad52755b3bf18727f0a9e784b1002e5ee82db52bc1861430f7e1f45319ed9`  
		Last Modified: Tue, 15 Sep 2026 22:44:17 GMT  
		Size: 74.1 KB (74102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bc1bd9c9401ba17a85817ab962ed161387a36ebe67188c63d1ee47fda448f0`  
		Last Modified: Tue, 15 Sep 2026 22:44:18 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `elasticsearch:9.5.3` - unknown; unknown

```console
$ docker pull elasticsearch@sha256:3eb5f8f0a9d398edf1593fb54dbf61da0d46140e0e032bafbf2291fa2a5e31f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2474832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df86a8ced3ff95d82fd675bbfe8ee270b13bb87a1c49b8bbad0e9668058aacd6`

```dockerfile
```

-	Layers:
	-	`sha256:cc70d25a0ee37537e5781a80b70e60fd4068ea519ec387a0c88bb52004a99299`  
		Last Modified: Tue, 15 Sep 2026 22:44:15 GMT  
		Size: 2.4 MB (2440874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a690965a94edc822acbc9adbb71992b6edac10ae6529685c9fbf39d4df500a45`  
		Last Modified: Tue, 15 Sep 2026 22:44:15 GMT  
		Size: 34.0 KB (33958 bytes)  
		MIME: application/vnd.in-toto+json
