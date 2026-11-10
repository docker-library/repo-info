<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:8.19.25`](#logstash81925)
-	[`logstash:9.4.8`](#logstash948)
-	[`logstash:9.5.5`](#logstash955)

## `logstash:8.19.25`

**does not exist** (yet?)

## `logstash:9.4.8`

```console
$ docker pull logstash@sha256:a54f703155833e26e9e9b9c574b720ed3b150ec94f2369c76da7e0ea1c94a2bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.8` - linux; amd64

```console
$ docker pull logstash@sha256:24edf34184583e7a2fbcc3081052820fa04fe54e1cb06e4afc9746a96b06f690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **526.6 MB (526617278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af3bdf1dbcae464c3d42b4c065dec42cd147670d62cf472dc35791c12d437196`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:51:54 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 05 Nov 2026 22:51:54 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 22:51:54 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 05 Nov 2026 22:51:54 GMT
WORKDIR /usr/share
# Thu, 05 Nov 2026 22:51:56 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Thu, 05 Nov 2026 22:52:23 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Thu, 05 Nov 2026 22:52:23 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Thu, 05 Nov 2026 22:52:23 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Thu, 05 Nov 2026 22:52:23 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Thu, 05 Nov 2026 22:52:23 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Thu, 05 Nov 2026 22:52:23 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Thu, 05 Nov 2026 22:52:23 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Thu, 05 Nov 2026 22:52:23 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 22:52:23 GMT
WORKDIR /usr/share/logstash
# Thu, 05 Nov 2026 22:52:23 GMT
USER 1000
# Thu, 05 Nov 2026 22:52:23 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Thu, 05 Nov 2026 22:52:23 GMT
LABEL org.label-schema.build-date=2026-09-29T21:14:12+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-29T21:14:12+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Thu, 05 Nov 2026 22:52:23 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cecfe5ceafc351f24204d75a580eba1faba997081eeadaf2189c26387f56997e`  
		Last Modified: Thu, 05 Nov 2026 22:53:00 GMT  
		Size: 4.8 MB (4758502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6d1a45fe0f750ddb2e0e8654eda0d6676aac2ca242f6dbf82e5c61a72b1fc2f`  
		Last Modified: Thu, 05 Nov 2026 22:53:08 GMT  
		Size: 480.9 MB (480937217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45f4baf694ead810dbc60d6d47d37ed5c6631afc35954a70fea4bd8202f4dbfb`  
		Last Modified: Thu, 05 Nov 2026 22:52:59 GMT  
		Size: 6.4 KB (6360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e98187aca3d8a77734558df1058d67a27e70f4e97fb5c12671befe2edebe454b`  
		Last Modified: Thu, 05 Nov 2026 22:53:00 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3b7d395ad84bd028f8f09494d3e036f9a31467fb80368106a588565a3160f2`  
		Last Modified: Thu, 05 Nov 2026 22:53:01 GMT  
		Size: 351.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431ffa7217a2fe41714a1eeff19c32d651659ef97920281d1c57fa187b7ca709`  
		Last Modified: Thu, 05 Nov 2026 22:53:01 GMT  
		Size: 1.6 KB (1571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b275b0c47ab82471d62a4021960ac6a65f2eb1ec57386acd087dfec1fceebaff`  
		Last Modified: Thu, 05 Nov 2026 22:53:01 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:186e440ed847ed5175253198f7f52555be455359128d4c3236e9988ac99b9849`  
		Last Modified: Thu, 05 Nov 2026 22:53:02 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7e3852ee6190585a5601727fe2cc31dbb3c34f4047ebd4245f31583f9b43cf5`  
		Last Modified: Thu, 05 Nov 2026 22:53:02 GMT  
		Size: 708.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.8` - unknown; unknown

```console
$ docker pull logstash@sha256:dea72741a43ca2b8aabd0783f4903b231abeb02e34afec2670ce93ae2ebcdf78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2125882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:708d2292ecb0cec28c1c93ff5484897283dcb3e8daf3f2622a11b5f33c1b5822`

```dockerfile
```

-	Layers:
	-	`sha256:30a2ec95919d7616e22e177e2abe09f493c3a94466d1c41e91253cda00206e79`  
		Last Modified: Thu, 05 Nov 2026 22:53:00 GMT  
		Size: 2.1 MB (2095682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25483f071ea7b27d0c3fe2611fe51ee6191fe4d5bdb262d308110dfdcd35ec2c`  
		Last Modified: Thu, 05 Nov 2026 22:52:59 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.8` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:bf878b50feaae7853778e1ab1b5a66fba3c6852c10021937e356fd0899ce88d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.0 MB (522992675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e2e68713f9f6df9dc9d4440ad94502521ae9a647f9ef29d85c3f2ddb94ae47f`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:04:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:04:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:04:02 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:04:02 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:04:02 GMT
ENV container oci
# Thu, 05 Nov 2026 07:04:03 GMT
COPY dir:2bdd2747ab945d7a9d2ac3c44d42257c603213cbc7baa656ccc81a23ba6bf702 in /      
# Thu, 05 Nov 2026 07:04:03 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:04:03 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:04:04 GMT
COPY dir:0bf6d55dc3f3a1cecfd7536d39dffd0748b22d85e0ea4bba976d70298d6022a0 in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:04:04 GMT
COPY dir:0bf6d55dc3f3a1cecfd7536d39dffd0748b22d85e0ea4bba976d70298d6022a0 in /root/buildinfo/      
# Thu, 05 Nov 2026 07:04:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:03:31Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:03:31Z" "architecture"="aarch64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:03:31Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 23:30:04 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 05 Nov 2026 23:30:04 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 23:30:04 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 05 Nov 2026 23:30:04 GMT
WORKDIR /usr/share
# Thu, 05 Nov 2026 23:30:07 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Thu, 05 Nov 2026 23:30:32 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Thu, 05 Nov 2026 23:30:32 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Thu, 05 Nov 2026 23:30:32 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Thu, 05 Nov 2026 23:30:32 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Thu, 05 Nov 2026 23:30:32 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Thu, 05 Nov 2026 23:30:32 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Thu, 05 Nov 2026 23:30:32 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Thu, 05 Nov 2026 23:30:32 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 23:30:32 GMT
WORKDIR /usr/share/logstash
# Thu, 05 Nov 2026 23:30:32 GMT
USER 1000
# Thu, 05 Nov 2026 23:30:32 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Thu, 05 Nov 2026 23:30:32 GMT
LABEL org.label-schema.build-date=2026-09-29T21:14:12+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-29T21:14:12+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Thu, 05 Nov 2026 23:30:32 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:9f9a14895de9c30c7ee6336a5ea720dc2fe575b0809b678170d0b1484cbdcc6c`  
		Last Modified: Thu, 05 Nov 2026 08:00:30 GMT  
		Size: 38.8 MB (38764456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea0913d9850d094bd352e8ba1aa0ef858c8facf0b1b9f167d5302ade7ac3677`  
		Last Modified: Thu, 05 Nov 2026 23:31:11 GMT  
		Size: 4.8 MB (4750024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d114fc9785a48e85137b1531f610a017a12b5e3818038bd059a824603280d2`  
		Last Modified: Thu, 05 Nov 2026 23:31:20 GMT  
		Size: 479.2 MB (479213381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:565f1f4a7a9a18b9b7b30b6ac38c99cf057d37aa8dbb8941192bf392d43b81f2`  
		Last Modified: Thu, 05 Nov 2026 23:31:11 GMT  
		Size: 6.4 KB (6369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe6080c8e2f124ac94a504f4bc0e496f200cab32f71e431288f2e733a37d2dcf`  
		Last Modified: Thu, 05 Nov 2026 23:31:11 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca7bd3105e3e0bfd93012b5ce6c2da3ee4a47b31aa820e5b26da3e5924db6d8`  
		Last Modified: Thu, 05 Nov 2026 23:31:12 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b26d3a3430f00651d79aacb22b471d2db174642efa21c1f2203c565a168a84c6`  
		Last Modified: Thu, 05 Nov 2026 23:31:12 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eecfb2802258bc2a76b29941c2b30f0d02173ef96f05fab981b5387fccf047aa`  
		Last Modified: Thu, 05 Nov 2026 23:31:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf312fbfd9c5496e47fed8f8e46f6f5a56f8a2baf3107a3c2984a25f830300e`  
		Last Modified: Thu, 05 Nov 2026 23:31:14 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e31e9711d0c04287cc00fe2e7f832a6c3c9d8da8d5541f066de2641b69062c9`  
		Last Modified: Thu, 05 Nov 2026 23:31:14 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.8` - unknown; unknown

```console
$ docker pull logstash@sha256:76aba96f9d4e568daee59b91f21b0f72af26a24d2a0004169547c0fb757c2507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2124747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96e194deb858b09b30409f989808ea33ea875cca29b57be10f5490ceb1a2a469`

```dockerfile
```

-	Layers:
	-	`sha256:4f748c91263ecc1ff6d1228858817dd0cf2ad070f5d89efba91e394d5c8b06c7`  
		Last Modified: Thu, 05 Nov 2026 23:31:11 GMT  
		Size: 2.1 MB (2094470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e9ad0a8a25cf30eefac1e7f9ec76f3984180f325a8a7931f60c2a7a8fd10f41`  
		Last Modified: Thu, 05 Nov 2026 23:31:11 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.5.5`

```console
$ docker pull logstash@sha256:7c492dde0e3d68106a3ab23b717ef2bfd6fd138f61d7c43b9f95e17650341dae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.5.5` - linux; amd64

```console
$ docker pull logstash@sha256:1408e59d6b3b755f1ccea4aadc18a86fb13332249a1dd6d9ac0f6d63d35a0740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **535.2 MB (535200805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4526ddd2ea51ee76f544fe90f1029077a30a9011343bf9a9e767744e6a3da8d1`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:51:56 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 05 Nov 2026 22:51:56 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 22:51:56 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 05 Nov 2026 22:51:56 GMT
WORKDIR /usr/share
# Thu, 05 Nov 2026 22:51:58 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Thu, 05 Nov 2026 22:52:48 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Thu, 05 Nov 2026 22:52:48 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Thu, 05 Nov 2026 22:52:48 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Thu, 05 Nov 2026 22:52:48 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Thu, 05 Nov 2026 22:52:48 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Thu, 05 Nov 2026 22:52:48 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Thu, 05 Nov 2026 22:52:48 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Thu, 05 Nov 2026 22:52:48 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 22:52:48 GMT
WORKDIR /usr/share/logstash
# Thu, 05 Nov 2026 22:52:48 GMT
USER 1000
# Thu, 05 Nov 2026 22:52:48 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Thu, 05 Nov 2026 22:52:48 GMT
LABEL org.label-schema.build-date=2026-09-29T21:16:22+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-29T21:16:22+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Thu, 05 Nov 2026 22:52:48 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:635ed032770e335187d8a4fc55d4268aa468c6f866c2fb4e0dfc56901eec11aa`  
		Last Modified: Thu, 05 Nov 2026 22:53:27 GMT  
		Size: 4.8 MB (4758528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:874036ba7ba913ab527196732cc25ca7afb3a6df8da852c09e1e41726c82894d`  
		Last Modified: Thu, 05 Nov 2026 22:53:35 GMT  
		Size: 489.5 MB (489520546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94bc72710492a7573b89c0a3d2a8c5193b836def74c0dfd54e4abc5f41b63931`  
		Last Modified: Thu, 05 Nov 2026 22:53:26 GMT  
		Size: 6.5 KB (6536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa79b17ee46a6155a111e07fb8ba0fe53c10bafd249f74e74d3a3051ee397584`  
		Last Modified: Thu, 05 Nov 2026 22:53:27 GMT  
		Size: 255.2 KB (255181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba5eb8130206fcb436629e510c86c5fc792ad06b35ff3966b584de3cdde35ac`  
		Last Modified: Thu, 05 Nov 2026 22:53:28 GMT  
		Size: 349.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73dfe8fa11bf7d54305302e55bf756a72533674237cb51ac30deac062e2277bc`  
		Last Modified: Thu, 05 Nov 2026 22:53:28 GMT  
		Size: 1.6 KB (1570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bfb56a4d40083de988950dfa05e035140594a30fc3192773c796a36251714e6`  
		Last Modified: Thu, 05 Nov 2026 22:53:28 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243a685d40a08dce3f846e398ba607a40bbbe3c94b55506f78d951d1ea959e98`  
		Last Modified: Thu, 05 Nov 2026 22:53:29 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de2d4ff2f4ad368845024b6ef4f5299e0abcc8f1dc3bac476dd80e4991ed786`  
		Last Modified: Thu, 05 Nov 2026 22:53:29 GMT  
		Size: 707.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.5` - unknown; unknown

```console
$ docker pull logstash@sha256:d9831811f4261cd5b455bf81eccdb70c41a7d2240e7ed702ea30f3e459c6abb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2153108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b299400b269e3203e7943fe8e0e21783ccad82be306f91c17d912adafff4e675`

```dockerfile
```

-	Layers:
	-	`sha256:1c389f545b1d0f2973019d6d6cc6a515d3fa01c4d402251b1e87aeebaa9d0139`  
		Last Modified: Thu, 05 Nov 2026 22:53:27 GMT  
		Size: 2.1 MB (2122908 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa2b22881ebc5936fa0393dfaba386cfa7150a2f66bc391cb6651f73be4d2c9a`  
		Last Modified: Thu, 05 Nov 2026 22:53:26 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.5.5` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:3a345dffcd58e8cee3475963bcba58b1d431a7e10f8e0f991901797740a76591
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.6 MB (531585082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9ed7fd0591823c69a24befaab8dc3b6f84b2288a0d9b9fbdc41a750235f9cff`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:04:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:04:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:04:02 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:04:02 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:04:02 GMT
ENV container oci
# Thu, 05 Nov 2026 07:04:03 GMT
COPY dir:2bdd2747ab945d7a9d2ac3c44d42257c603213cbc7baa656ccc81a23ba6bf702 in /      
# Thu, 05 Nov 2026 07:04:03 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:04:03 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:04:04 GMT
COPY dir:0bf6d55dc3f3a1cecfd7536d39dffd0748b22d85e0ea4bba976d70298d6022a0 in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:04:04 GMT
COPY dir:0bf6d55dc3f3a1cecfd7536d39dffd0748b22d85e0ea4bba976d70298d6022a0 in /root/buildinfo/      
# Thu, 05 Nov 2026 07:04:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:03:31Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:03:31Z" "architecture"="aarch64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:03:31Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 23:30:09 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 05 Nov 2026 23:30:09 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 23:30:09 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 05 Nov 2026 23:30:09 GMT
WORKDIR /usr/share
# Thu, 05 Nov 2026 23:30:11 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Thu, 05 Nov 2026 23:31:03 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Thu, 05 Nov 2026 23:31:03 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Thu, 05 Nov 2026 23:31:03 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Thu, 05 Nov 2026 23:31:03 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Thu, 05 Nov 2026 23:31:03 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Thu, 05 Nov 2026 23:31:03 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Thu, 05 Nov 2026 23:31:03 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Thu, 05 Nov 2026 23:31:03 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 23:31:03 GMT
WORKDIR /usr/share/logstash
# Thu, 05 Nov 2026 23:31:03 GMT
USER 1000
# Thu, 05 Nov 2026 23:31:03 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Thu, 05 Nov 2026 23:31:03 GMT
LABEL org.label-schema.build-date=2026-09-29T21:16:22+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-29T21:16:22+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Thu, 05 Nov 2026 23:31:03 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:9f9a14895de9c30c7ee6336a5ea720dc2fe575b0809b678170d0b1484cbdcc6c`  
		Last Modified: Thu, 05 Nov 2026 08:00:30 GMT  
		Size: 38.8 MB (38764456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db485bffa033701b5a22ae0ae54e3086deae1485876ce1c1442f73f3791b41d`  
		Last Modified: Thu, 05 Nov 2026 23:31:44 GMT  
		Size: 4.8 MB (4750003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179adf4a6a62b2b081db10a0b8a0b9fbed5c6301d7de720212899ff42a892b16`  
		Last Modified: Thu, 05 Nov 2026 23:31:52 GMT  
		Size: 487.8 MB (487805643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f79ea93135d985ba5ea97a804761e368f5b6b834810c6036b02aff36488c2ef3`  
		Last Modified: Thu, 05 Nov 2026 23:31:43 GMT  
		Size: 6.5 KB (6538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b31c20d24693f08695cda7662d5f22b809d894edcbbcef661eb94fcb118dc9`  
		Last Modified: Thu, 05 Nov 2026 23:31:43 GMT  
		Size: 255.2 KB (255183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:168359530a837b2dee1a489bfe52d2be02d8188c15f896fc2ade3df8fb3b1702`  
		Last Modified: Thu, 05 Nov 2026 23:31:45 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23f776fb1340bcfa1d41f16e7c458f22f48b30b647c8bacc944b1337f0928060`  
		Last Modified: Thu, 05 Nov 2026 23:31:45 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6369a16640f3e5934daa23e1c7bc5517b79f7416bb3f4c6a317b24d4448455bd`  
		Last Modified: Thu, 05 Nov 2026 23:31:45 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ea5357cd566c8ccea2bba4138eac0bce9da7bb417d019758c1e2b8970a6ca90`  
		Last Modified: Thu, 05 Nov 2026 23:31:46 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b5e26c71495a66457fd93d7ced5f8451df2a872428d88f8fec4e861f663d8c0`  
		Last Modified: Thu, 05 Nov 2026 23:31:46 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.5` - unknown; unknown

```console
$ docker pull logstash@sha256:290ea6f52f198ab6eac07d3407f7e685854fb6db71464f7ad1c94f1a7e7e8499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2151973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32a0acc10ac2cb145def6e20eacd0523aa3e94404c55012c2b2c0ef9f146cfb`

```dockerfile
```

-	Layers:
	-	`sha256:f79e429235ae198a1152f51dcc2cac0fcc0438a0121be973922bbe8722cfeffb`  
		Last Modified: Thu, 05 Nov 2026 23:31:43 GMT  
		Size: 2.1 MB (2121696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f02c7697f8befdf220d8a1d3f2c5ce8c46acdd20580774ae9e29a321b718fe3a`  
		Last Modified: Thu, 05 Nov 2026 23:31:43 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json
