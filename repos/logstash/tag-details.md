<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:8.19.22`](#logstash81922)
-	[`logstash:9.4.6`](#logstash946)
-	[`logstash:9.5.3`](#logstash953)

## `logstash:8.19.22`

**does not exist** (yet?)

## `logstash:9.4.6`

```console
$ docker pull logstash@sha256:f20ab3a2be30d581fef68ccd37b440594fae0297282b656077272f1658a1a8ab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.6` - linux; amd64

```console
$ docker pull logstash@sha256:27b3eb1a9b5845cf7d7cfd454ccd5f33881d8bfc7c113d9412205b85a0d05b27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **526.6 MB (526575074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7ee7a63aa9c1165d0de886dde5cdda0268076f92eeb24d927ff81c6b12f115`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 10:53:59 GMT
ENV container oci
# Tue, 22 Sep 2026 10:53:59 GMT
COPY dir:14bfe291e51cfd3471e9b85d5e9d491fe06b3ecf4d74ad9ed060eeed665412ea in /      
# Tue, 22 Sep 2026 10:54:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 10:54:00 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 10:54:00 GMT
COPY dir:275fafe01e910923b4cfa2c2282c3eb2ea9158af5a6dc42bc6197cbdbe3c4f3f in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 10:54:00 GMT
COPY dir:275fafe01e910923b4cfa2c2282c3eb2ea9158af5a6dc42bc6197cbdbe3c4f3f in /root/buildinfo/      
# Tue, 22 Sep 2026 10:54:00 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T10:53:29Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T10:53:29Z" "architecture"="x86_64" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T10:53:29Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:49:14 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 22 Sep 2026 18:49:14 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:49:14 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 22 Sep 2026 18:49:14 GMT
WORKDIR /usr/share
# Tue, 22 Sep 2026 18:49:17 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:50:12 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.6-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.6 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 22 Sep 2026 18:50:13 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 22 Sep 2026 18:50:13 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 22 Sep 2026 18:50:13 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 22 Sep 2026 18:50:13 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 22 Sep 2026 18:50:13 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 22 Sep 2026 18:50:13 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 22 Sep 2026 18:50:13 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 22 Sep 2026 18:50:13 GMT
WORKDIR /usr/share/logstash
# Tue, 22 Sep 2026 18:50:13 GMT
USER 1000
# Tue, 22 Sep 2026 18:50:13 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 22 Sep 2026 18:50:13 GMT
LABEL org.label-schema.build-date=2026-08-24T15:51:53+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-24T15:51:53+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 22 Sep 2026 18:50:13 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:f54a0fb19efce07c95685474b80ea80c4eb2ed40ae83a65e0624d0d8543a9b7f`  
		Last Modified: Tue, 22 Sep 2026 11:51:29 GMT  
		Size: 40.7 MB (40734776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:471693e2465cdf1711dcefad8a76a4c4ea8bad7a135456ef95abc19e647dc1c0`  
		Last Modified: Tue, 22 Sep 2026 18:50:48 GMT  
		Size: 4.8 MB (4769236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e17c22157e85245cce35992bfbb01a0fd9e0cf3d335c452b639e62f0f837dca5`  
		Last Modified: Tue, 22 Sep 2026 18:50:57 GMT  
		Size: 480.8 MB (480806248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7aa71541e8fb7ebda39222190598e6e78b66c5815333e111da4adf828cae55`  
		Last Modified: Tue, 22 Sep 2026 18:50:48 GMT  
		Size: 6.4 KB (6365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7285a46f766072802bd893bbbe06935c2dd1c6cb09e82d2f4dd5328f39413e9b`  
		Last Modified: Tue, 22 Sep 2026 18:50:48 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fd50a8f7e42b657e7ecad425fd893ab390955bf8f07fc9dcbb2c24c24298f6`  
		Last Modified: Tue, 22 Sep 2026 18:50:49 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3029af5d7931050c0275fa55d4ba181302335f5ad58cd1dd928a608f3734add3`  
		Last Modified: Tue, 22 Sep 2026 18:50:49 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aeceea5f1d4dbe736d5e112dfd7e2114cc237bb8091b87a0c2a1c662012e3fb`  
		Last Modified: Tue, 22 Sep 2026 18:50:49 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32129565ca0e54132b2e69ea616617b51baab594d398779035dbb14c62c5391`  
		Last Modified: Tue, 22 Sep 2026 18:50:50 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f5ad3eabec3c60f22a5bba9f180c93805dd40064d2adc80b86ecc5f4597ea67`  
		Last Modified: Tue, 22 Sep 2026 18:50:50 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.6` - unknown; unknown

```console
$ docker pull logstash@sha256:fefb6827a57f32e7cbbb006235a34a92b34494ad34b064150b55e024ea180b6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2146951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2853015fa364f85d16f8bb529f3cd2f833e3526c9ab32e30c698807de2d11184`

```dockerfile
```

-	Layers:
	-	`sha256:57b9ad2f2ac9be372be7ba60f2e5e3c9cee51e742c9dc023e35a5eac3565b2eb`  
		Last Modified: Tue, 22 Sep 2026 18:50:48 GMT  
		Size: 2.1 MB (2116751 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7b2188dc7b044139ade28f6a185d5e3d7c78680ecac087f3500af89cbbe28c5`  
		Last Modified: Tue, 22 Sep 2026 18:50:48 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.6` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:715a912662c328abc4ecb586946d5bc5fa65ccae2bbfd6e91b86cc00d5529776
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **522.9 MB (522909560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f0a787717fbcd533fbcdef4073fab7fc9e8ecbc247e88cddecf5dbbfb4e744`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 10:55:37 GMT
ENV container oci
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:f1b1d9f069c6fd519132b1abb0a3eadbb548b4c2598519d645212ad8182e3e90 in /      
# Tue, 22 Sep 2026 10:55:38 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 10:55:38 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:c81da2b95a2a50c27755e5eab58aad0ebdab4cbd008448bc8fccefc055d96de2 in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:c81da2b95a2a50c27755e5eab58aad0ebdab4cbd008448bc8fccefc055d96de2 in /root/buildinfo/      
# Tue, 22 Sep 2026 10:55:39 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T10:55:15Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T10:55:15Z" "architecture"="aarch64" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T10:55:15Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:49:27 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 22 Sep 2026 18:49:27 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:49:27 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 22 Sep 2026 18:49:27 GMT
WORKDIR /usr/share
# Tue, 22 Sep 2026 18:49:31 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:50:26 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.6-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.6 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 22 Sep 2026 18:50:27 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 22 Sep 2026 18:50:27 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 22 Sep 2026 18:50:27 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 22 Sep 2026 18:50:27 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 22 Sep 2026 18:50:27 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 22 Sep 2026 18:50:27 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 22 Sep 2026 18:50:27 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 22 Sep 2026 18:50:27 GMT
WORKDIR /usr/share/logstash
# Tue, 22 Sep 2026 18:50:27 GMT
USER 1000
# Tue, 22 Sep 2026 18:50:27 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 22 Sep 2026 18:50:27 GMT
LABEL org.label-schema.build-date=2026-08-24T15:51:53+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-24T15:51:53+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 22 Sep 2026 18:50:27 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:dea0c826e8cdc58b1ff5a08680eb69ae64129bfee1b07b773c9c5e1d9ffb1e86`  
		Last Modified: Tue, 22 Sep 2026 11:49:08 GMT  
		Size: 38.8 MB (38803467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ec7f395bbcca2260733c7ae61c3783c77b53ac731afaeb1ae7fe0e89e5bdb42`  
		Last Modified: Tue, 22 Sep 2026 18:51:07 GMT  
		Size: 4.8 MB (4756364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bdf567c53a7cd5d1c7b23637dca4e68fd1dbeee67d89838c91ececafef7145d`  
		Last Modified: Tue, 22 Sep 2026 18:51:16 GMT  
		Size: 479.1 MB (479084916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c41cce3dc4729194aba5074fb91e2af8cb4ac095561d5c6b0bed3e8d5683f74e`  
		Last Modified: Tue, 22 Sep 2026 18:51:07 GMT  
		Size: 6.4 KB (6366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3843c2dc62fdb5b2e96340807921db0ee8a1fbe0236c09981ab5bc9f6e2f6d`  
		Last Modified: Tue, 22 Sep 2026 18:51:07 GMT  
		Size: 255.2 KB (255184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:231229c39b674b7796bf6a16539eca753f7ac9d6cddde1e3027d18edd2e0f8c9`  
		Last Modified: Tue, 22 Sep 2026 18:51:08 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c80560aca21c126325789ab8f8ea9055746902f7150621d2efdad65fb7470d7b`  
		Last Modified: Tue, 22 Sep 2026 18:51:08 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ffb37b9fbb9138e5bfe837c65b478abb94207fa7d010fb0f5861867d4379887`  
		Last Modified: Tue, 22 Sep 2026 18:51:08 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f09537d048472541ce25910a8ca5c93868d5a0b27315020867b5ff780b08cfc`  
		Last Modified: Tue, 22 Sep 2026 18:51:09 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e45bac7f2ce0c2a83699019100bd529c7a8b82a5387fa0991d39b9e77e0637`  
		Last Modified: Tue, 22 Sep 2026 18:51:09 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.6` - unknown; unknown

```console
$ docker pull logstash@sha256:57d7a00760f748be054b087d2987df2d732c7416d8eb8a3e16f031c7c8bc1527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2145816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f94a88c8863884227e786e189aec335efbaab8ab33052a5c78d06b87b6ddf9b`

```dockerfile
```

-	Layers:
	-	`sha256:9104c8a597a930ab93b48b0676e3f90c9d6462b6128556517d285b20ee81efa9`  
		Last Modified: Tue, 22 Sep 2026 18:51:07 GMT  
		Size: 2.1 MB (2115539 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87f8738793032204a2ed6e726fcaf4570e2dfb1d0fd96fe8384fe5742c4a19aa`  
		Last Modified: Tue, 22 Sep 2026 18:51:07 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.5.3`

```console
$ docker pull logstash@sha256:82bbb493bb07423b6f24adeb0edfb9cafa55e2be1a6ae1e5afee2e796f852343
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.5.3` - linux; amd64

```console
$ docker pull logstash@sha256:b12bfb39b7991209722bdb70bf3f2265ab08a6ad6112cc223991f50a32038431
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **536.2 MB (536163955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:849ead402c548b0e52f5f885ee1677a36c375305afafa42dd8cdac3b8400691c`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 10:53:59 GMT
ENV container oci
# Tue, 22 Sep 2026 10:53:59 GMT
COPY dir:14bfe291e51cfd3471e9b85d5e9d491fe06b3ecf4d74ad9ed060eeed665412ea in /      
# Tue, 22 Sep 2026 10:54:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 10:54:00 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 10:54:00 GMT
COPY dir:275fafe01e910923b4cfa2c2282c3eb2ea9158af5a6dc42bc6197cbdbe3c4f3f in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 10:54:00 GMT
COPY dir:275fafe01e910923b4cfa2c2282c3eb2ea9158af5a6dc42bc6197cbdbe3c4f3f in /root/buildinfo/      
# Tue, 22 Sep 2026 10:54:00 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T10:53:29Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T10:53:29Z" "architecture"="x86_64" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T10:53:29Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:49:20 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 22 Sep 2026 18:49:20 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:49:20 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 22 Sep 2026 18:49:20 GMT
WORKDIR /usr/share
# Tue, 22 Sep 2026 18:49:23 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:50:19 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.3-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.3 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 22 Sep 2026 18:50:19 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 22 Sep 2026 18:50:19 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 22 Sep 2026 18:50:19 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 22 Sep 2026 18:50:19 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 22 Sep 2026 18:50:19 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 22 Sep 2026 18:50:19 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 22 Sep 2026 18:50:19 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 22 Sep 2026 18:50:19 GMT
WORKDIR /usr/share/logstash
# Tue, 22 Sep 2026 18:50:19 GMT
USER 1000
# Tue, 22 Sep 2026 18:50:19 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 22 Sep 2026 18:50:19 GMT
LABEL org.label-schema.build-date=2026-09-01T07:25:38+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T07:25:38+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 22 Sep 2026 18:50:19 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:f54a0fb19efce07c95685474b80ea80c4eb2ed40ae83a65e0624d0d8543a9b7f`  
		Last Modified: Tue, 22 Sep 2026 11:51:29 GMT  
		Size: 40.7 MB (40734776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0337ff9b8dfc9ae12bb6a73ab5e401ed2bf0d6cecd2440bd2f61c37d7aaadf`  
		Last Modified: Tue, 22 Sep 2026 18:50:54 GMT  
		Size: 4.8 MB (4769229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:befe3db34fef1707f3428e5cfd47d3425742236878d41dd86c2eb83749bbab60`  
		Last Modified: Tue, 22 Sep 2026 18:51:02 GMT  
		Size: 490.4 MB (490394964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89fe186eb74f7d16a5ca0f639d2dda381631403f6bbf55bf290be97de73753a8`  
		Last Modified: Tue, 22 Sep 2026 18:50:54 GMT  
		Size: 6.5 KB (6541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:868c5784c75ff98b731bb0f2d69c8534ffdc47728aad117eab94b068e00382c4`  
		Last Modified: Tue, 22 Sep 2026 18:50:54 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22acac5793773d7493d8e8b401e191e5b94cba5479025f38455b32133614ec89`  
		Last Modified: Tue, 22 Sep 2026 18:50:55 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811d6fcec8e3afdf7d80b37ed84cb2f5fcf922a13e6a570178ced8895ad8af2a`  
		Last Modified: Tue, 22 Sep 2026 18:50:55 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93576c0d2e7d70ee509cbcce627c407617527a4ee36fa2c49863fdef941953af`  
		Last Modified: Tue, 22 Sep 2026 18:50:55 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b2381ecbfed3e7f725996d7b327767fc19555438125dab2ccc5e8f339f6b6e7`  
		Last Modified: Tue, 22 Sep 2026 18:50:56 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed92212e500d06cb0ce9d722901e3ea097ccd7c06b01bb9a25599e3aeaa28faf`  
		Last Modified: Tue, 22 Sep 2026 18:50:56 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.3` - unknown; unknown

```console
$ docker pull logstash@sha256:9aee0ab8335ecc46dcd0ad17798290a8eaa5542088a81914114536df3ab3ff0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e47c96d1b9ec373c3b6ebb8a277ecd3a1c7d5d655a2d4658c5691dbbb53514b`

```dockerfile
```

-	Layers:
	-	`sha256:e61d8d8ce002980820ed496e3524a133c4e15bca86a43d22a2547f6a3f2f3b08`  
		Last Modified: Tue, 22 Sep 2026 18:50:54 GMT  
		Size: 2.1 MB (2144055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a297228754072a445c298bc6b60d041d7dd549977804c15ba963774e46ba76f3`  
		Last Modified: Tue, 22 Sep 2026 18:50:53 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.5.3` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:15c33d089fb17d27128183c829c607b41d64994654fc40828c10b8298fd0c77f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **532.5 MB (532483225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ac954ad8aa2eef0466f132cf2854f38137f7807e0840c5deb0959aff14bcafa`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 10:55:37 GMT
ENV container oci
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:f1b1d9f069c6fd519132b1abb0a3eadbb548b4c2598519d645212ad8182e3e90 in /      
# Tue, 22 Sep 2026 10:55:38 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 10:55:38 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:c81da2b95a2a50c27755e5eab58aad0ebdab4cbd008448bc8fccefc055d96de2 in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:c81da2b95a2a50c27755e5eab58aad0ebdab4cbd008448bc8fccefc055d96de2 in /root/buildinfo/      
# Tue, 22 Sep 2026 10:55:39 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T10:55:15Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T10:55:15Z" "architecture"="aarch64" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T10:55:15Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:49:27 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 22 Sep 2026 18:49:27 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:49:27 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 22 Sep 2026 18:49:27 GMT
WORKDIR /usr/share
# Tue, 22 Sep 2026 18:49:30 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:49:59 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.3-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.3 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 22 Sep 2026 18:50:00 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 22 Sep 2026 18:50:00 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 22 Sep 2026 18:50:00 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 22 Sep 2026 18:50:00 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 22 Sep 2026 18:50:00 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 22 Sep 2026 18:50:00 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 22 Sep 2026 18:50:00 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 22 Sep 2026 18:50:00 GMT
WORKDIR /usr/share/logstash
# Tue, 22 Sep 2026 18:50:00 GMT
USER 1000
# Tue, 22 Sep 2026 18:50:00 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 22 Sep 2026 18:50:00 GMT
LABEL org.label-schema.build-date=2026-09-01T07:25:38+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T07:25:38+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 22 Sep 2026 18:50:00 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:dea0c826e8cdc58b1ff5a08680eb69ae64129bfee1b07b773c9c5e1d9ffb1e86`  
		Last Modified: Tue, 22 Sep 2026 11:49:08 GMT  
		Size: 38.8 MB (38803467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3feaadf216e9b2bdf966a577d81dda7980bcb4fc2796bbfa708ed778f32dbef1`  
		Last Modified: Tue, 22 Sep 2026 18:50:40 GMT  
		Size: 4.8 MB (4756383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b86b0ee4809f4a51ffa283840c845906d6d6a8c7d30a0fc21e1160e6d598d2a`  
		Last Modified: Tue, 22 Sep 2026 18:50:49 GMT  
		Size: 488.7 MB (488658391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:121a9c8861b6aa46ac5a6d15bba5a48ef1e0f3c308c2f35e5bf94897c1ef39d7`  
		Last Modified: Tue, 22 Sep 2026 18:50:40 GMT  
		Size: 6.5 KB (6539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577933108d28d101795fe9cfe7418feaa938d17015f5b9f9316b11f313981c43`  
		Last Modified: Tue, 22 Sep 2026 18:50:40 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99943d6d7a630566ef0174ff5881734fda0834c297ef3200f7cc89d3047e7f8a`  
		Last Modified: Tue, 22 Sep 2026 18:50:41 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18bdb58342f4cf5652cd12204dac9a92eb9e34210b501ac8f1a36ee9d474a6ee`  
		Last Modified: Tue, 22 Sep 2026 18:50:41 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3685b7a1a05c62af6f4663bfb506d30ed4289123e8dd430f809bd4a8a4332fb`  
		Last Modified: Tue, 22 Sep 2026 18:50:41 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566e8193363674e7ebe2385b3e223df7e19ed497978bdab1f31bb27cf116ed25`  
		Last Modified: Tue, 22 Sep 2026 18:50:42 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b1fe7baf85e856051184537c5ca0938d06efa4c7c931616759e864d76ada555`  
		Last Modified: Tue, 22 Sep 2026 18:50:43 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.3` - unknown; unknown

```console
$ docker pull logstash@sha256:863278f21957a1abc86a3e9f92834ec04ea3735f333afa1b6666c61fa5bd8ea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2173119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63cbab87af350b7cfeec0d65d5f54f6bf9809a54e2e2e4c9c05f7aaccf741534`

```dockerfile
```

-	Layers:
	-	`sha256:499581f89d72c9e496af82be727a3df78bf64012e80e3348034b7fb37d3d04c2`  
		Last Modified: Tue, 22 Sep 2026 18:50:40 GMT  
		Size: 2.1 MB (2142843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29fc5752afbc361eaa01225e40bc61cd65aba6fb830951e549b16ccc2a49c52d`  
		Last Modified: Tue, 22 Sep 2026 18:50:40 GMT  
		Size: 30.3 KB (30276 bytes)  
		MIME: application/vnd.in-toto+json
