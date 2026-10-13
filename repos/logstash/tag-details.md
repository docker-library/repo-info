<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:8.19.23`](#logstash81923)
-	[`logstash:9.4.8`](#logstash948)
-	[`logstash:9.5.5`](#logstash955)

## `logstash:8.19.23`

```console
$ docker pull logstash@sha256:2387f3fd0eb79728de3e3142cc7bb244efe183f804a55bd5ea936e20bc0c3b5b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:8.19.23` - linux; amd64

```console
$ docker pull logstash@sha256:57fa5c2145739f0de009fa3736ede50ca6bc270f751bf151e034a0dc7abb9e5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **530.8 MB (530799764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877166eedd99bfe27cc762cd74abcea43661fdec7c6e084e3a50d33585a016ac`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 21:43:06 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Tue, 06 Oct 2026 21:43:07 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Tue, 06 Oct 2026 21:43:51 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.23-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.23 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 06 Oct 2026 21:43:51 GMT
WORKDIR /usr/share/logstash
# Tue, 06 Oct 2026 21:43:51 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 06 Oct 2026 21:43:51 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:43:51 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Tue, 06 Oct 2026 21:43:51 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Tue, 06 Oct 2026 21:43:51 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Tue, 06 Oct 2026 21:43:51 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Tue, 06 Oct 2026 21:43:51 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:43:51 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 06 Oct 2026 21:43:51 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 06 Oct 2026 21:43:51 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 06 Oct 2026 21:43:51 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 21:43:51 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Tue, 06 Oct 2026 21:43:51 GMT
USER 1000
# Tue, 06 Oct 2026 21:43:51 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 06 Oct 2026 21:43:51 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.23 org.opencontainers.image.version=8.19.23 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-09-29T21:17:40+00:00 org.opencontainers.image.created=2026-09-29T21:17:40+00:00
# Tue, 06 Oct 2026 21:43:51 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb341b45ac6ebab1ad6f028295c4c2da38dc514856bc0fdcfff0b8eadb11535`  
		Last Modified: Tue, 06 Oct 2026 21:44:31 GMT  
		Size: 50.3 MB (50329646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c7fbc5ab855cb40b473877b2fffe4ac39e3e55f5920ebc25844a8a292f1be4e`  
		Last Modified: Tue, 06 Oct 2026 21:44:29 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71ae70bd4a2a6b5d2f3234b57bfcf901ccfab52d1348d2f72f733e65322814c1`  
		Last Modified: Tue, 06 Oct 2026 21:44:39 GMT  
		Size: 450.4 MB (450437963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc23b6280c1889c5f892af1e7ab26245a3fff58b18adcd631cf13a4ad4eb77a`  
		Last Modified: Tue, 06 Oct 2026 21:44:29 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd6ae9d52e59780eed356232817cceb2d333efb42fab2a33fa268eaa2aecc12`  
		Last Modified: Tue, 06 Oct 2026 21:44:30 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3712fd6536638f8c1747b989f6eb5acb3347e369b490a4fed1b5248b365c0ee9`  
		Last Modified: Tue, 06 Oct 2026 21:44:30 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1976f1859c8704c2bb760967508d843aacc7160743b2e638cb9fb445d858bb8b`  
		Last Modified: Tue, 06 Oct 2026 21:44:32 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cbb2ee0ee85d31050ac108f39447b6e43e458728ac5bf89edec50f57b8c38f4`  
		Last Modified: Tue, 06 Oct 2026 21:44:32 GMT  
		Size: 6.3 KB (6295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c30920cf4b819a9d5b19520a2fc4d57f3f03ecbaf3ca7a0333f6cfa3f520f1`  
		Last Modified: Tue, 06 Oct 2026 21:44:33 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a573ebb2911f516dc5a63fe2aae97718585ec29e956d45e11f3829b7fadf05ec`  
		Last Modified: Tue, 06 Oct 2026 21:44:33 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0559c5b7ba0d29f71571b7a45c0b8a6a6021488871c5ad5064d9f87b4177bfa1`  
		Last Modified: Tue, 06 Oct 2026 21:44:33 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.23` - unknown; unknown

```console
$ docker pull logstash@sha256:4ddd909eb0a1946acaf80b49b2f3a1d5b9655392eed2db42e5d9b504dd1f1c59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3645448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:526bd7521f78cbf49efe891c25346154e8dfaa21cd657ca46b7ea81a29038458`

```dockerfile
```

-	Layers:
	-	`sha256:ef53644256399e6b47eddc411f57df582372e4acb7e3a7644d3f48a1084c17d1`  
		Last Modified: Tue, 06 Oct 2026 21:44:29 GMT  
		Size: 3.6 MB (3609599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06ea90473870db4f1f59a6fe634887da129081125fc2b1b0a4c478cdb755a169`  
		Last Modified: Tue, 06 Oct 2026 21:44:29 GMT  
		Size: 35.8 KB (35849 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:8.19.23` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:d3c5c2ca4c29677702c52db503258655a523e8ecae3424070574d203f20d9858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **530.2 MB (530240038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b353849ec53996265b4cc1163f78fb3974d8f86205360fc00975bdf2bf242947`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 21:42:52 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Tue, 06 Oct 2026 21:42:52 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Tue, 06 Oct 2026 21:43:29 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.23-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.23 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 06 Oct 2026 21:43:29 GMT
WORKDIR /usr/share/logstash
# Tue, 06 Oct 2026 21:43:29 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 06 Oct 2026 21:43:29 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:43:29 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Tue, 06 Oct 2026 21:43:29 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Tue, 06 Oct 2026 21:43:29 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Tue, 06 Oct 2026 21:43:29 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Tue, 06 Oct 2026 21:43:29 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:43:29 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 06 Oct 2026 21:43:29 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 06 Oct 2026 21:43:29 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 06 Oct 2026 21:43:29 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 21:43:29 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Tue, 06 Oct 2026 21:43:29 GMT
USER 1000
# Tue, 06 Oct 2026 21:43:29 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 06 Oct 2026 21:43:29 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.23 org.opencontainers.image.version=8.19.23 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-09-29T21:17:40+00:00 org.opencontainers.image.created=2026-09-29T21:17:40+00:00
# Tue, 06 Oct 2026 21:43:29 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7721e61b9dd47525154405a60b6a722ee713abecee487a1b0f63178338434a`  
		Last Modified: Tue, 06 Oct 2026 21:44:10 GMT  
		Size: 52.3 MB (52297936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc191f0c67e8b151ef9f8882503ac31f679088d3bc0147c678208c9881879bb0`  
		Last Modified: Tue, 06 Oct 2026 21:44:08 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52da8062b542d4cf45190ba68c564d07492080d6ddb79539f26679f5a6c3cfac`  
		Last Modified: Tue, 06 Oct 2026 21:44:16 GMT  
		Size: 448.7 MB (448734280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:989169a6e563d4980650697ae24e470b2b124709e5833b84408653eeeaf28069`  
		Last Modified: Tue, 06 Oct 2026 21:44:08 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262feb2d789298493e871f98452710058a2a6087639d40affe4849759e74578b`  
		Last Modified: Tue, 06 Oct 2026 21:44:09 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d993d74be3437f0a156243b485808819a17c573c39b2b869d89b082d4b0913b0`  
		Last Modified: Tue, 06 Oct 2026 21:44:09 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b2351c05aa33ece3e7065c071e5d614d409f7689680828661548acb7b8a08b`  
		Last Modified: Tue, 06 Oct 2026 21:44:10 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674e825b21b374c94a1721269de3bf520c5b70cea53b828934b63260559a51d0`  
		Last Modified: Tue, 06 Oct 2026 21:44:10 GMT  
		Size: 6.3 KB (6298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb6d09c5a3673012081d81110c1464a8dc558f52cf76ce8c8d1bc6d1532647b`  
		Last Modified: Tue, 06 Oct 2026 21:44:11 GMT  
		Size: 255.2 KB (255184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:523ff3341e2f895ed5fcdedf71a586472e3282d5e736cb55ba6705a677447b52`  
		Last Modified: Tue, 06 Oct 2026 21:44:12 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3378785da119be32711ae1fd3a7ac083a20bbbc6efcd77a104044471d66107db`  
		Last Modified: Tue, 06 Oct 2026 21:44:12 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.23` - unknown; unknown

```console
$ docker pull logstash@sha256:7a3507f22a930d4f0706f4fc41fa1c8b8693cb8aba2f6a7af75f3c947c62d461
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3646000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:299a4f3b1fa98d487e7b4bb59f08cf062b352a02c512bd95863a1ee7f6bde46a`

```dockerfile
```

-	Layers:
	-	`sha256:79bfe26ff7c028dfb3ed9d92581878abf50288ca48982167f72ef9c73c313b7c`  
		Last Modified: Tue, 06 Oct 2026 21:44:08 GMT  
		Size: 3.6 MB (3610024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4262995ded20ed7dd58c36e4eb3a28b4f05385f07e78e13720f8a9ca6bf435a`  
		Last Modified: Tue, 06 Oct 2026 21:44:08 GMT  
		Size: 36.0 KB (35976 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.4.8`

```console
$ docker pull logstash@sha256:05c30e0b6e7ca37102c5c1afd978fa43bcd17899d45d8da638ae400d78fc7bed
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.8` - linux; amd64

```console
$ docker pull logstash@sha256:e0bc095f0c5cda5dc3bd2237be656e0535d9b74651a65a9de8ab1a2bb36e06c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **526.7 MB (526702192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7043ea351494de9fa067a601b2a6a8e8af285bca86ccb2f95a412777241e22`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 12 Oct 2026 12:37:49 GMT
ENV container oci
# Mon, 12 Oct 2026 12:37:50 GMT
COPY dir:e45266e494b9752d347f82bff660e367c92279dd3110ea5b3aba7f7174fdf656 in /      
# Mon, 12 Oct 2026 12:37:50 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 12:37:50 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 12:37:51 GMT
COPY dir:a1b3412d0ee6658591c067c250fc387d859e4d182c15f2dde66e7f77f7cb6d4a in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 12:37:51 GMT
COPY dir:a1b3412d0ee6658591c067c250fc387d859e4d182c15f2dde66e7f77f7cb6d4a in /root/buildinfo/      
# Mon, 12 Oct 2026 12:37:51 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T12:36:05Z" "org.opencontainers.image.revision"="605f9da3afeb17ea0827cac3edf823279a26c42f" "build-date"="2026-10-12T12:36:05Z" "architecture"="x86_64" "vcs-ref"="605f9da3afeb17ea0827cac3edf823279a26c42f" "vcs-type"="git" "release"="1791808450"org.opencontainers.image.created=2026-10-12T12:36:05Z,org.opencontainers.image.revision=605f9da3afeb17ea0827cac3edf823279a26c42f
# Tue, 13 Oct 2026 00:35:52 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 13 Oct 2026 00:35:52 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:35:52 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 13 Oct 2026 00:35:52 GMT
WORKDIR /usr/share
# Tue, 13 Oct 2026 00:35:54 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:36:43 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 13 Oct 2026 00:36:43 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 13 Oct 2026 00:36:43 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 13 Oct 2026 00:36:43 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 13 Oct 2026 00:36:43 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 13 Oct 2026 00:36:43 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 13 Oct 2026 00:36:43 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 13 Oct 2026 00:36:43 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 00:36:43 GMT
WORKDIR /usr/share/logstash
# Tue, 13 Oct 2026 00:36:43 GMT
USER 1000
# Tue, 13 Oct 2026 00:36:43 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 13 Oct 2026 00:36:43 GMT
LABEL org.label-schema.build-date=2026-09-29T21:14:12+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-29T21:14:12+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 13 Oct 2026 00:36:43 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:c8fb2f748d0518200c41845a3bbb526397078028e42feaddaf7208534fc575b4`  
		Last Modified: Mon, 12 Oct 2026 14:31:54 GMT  
		Size: 40.7 MB (40731722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afce1b2402c450e3a7c0012273a72095a10a3981ee5a440e7f5d235ded5aa60c`  
		Last Modified: Tue, 13 Oct 2026 00:37:21 GMT  
		Size: 4.8 MB (4768588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c336e6613582c3a3b8601e8245b168e8d4b3f36d766207cb3e980b83dea74ee2`  
		Last Modified: Tue, 13 Oct 2026 00:37:30 GMT  
		Size: 480.9 MB (480937082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed658629fcf2a52d35881c8ee6cfb4964993dd0b8d9deeb745b343a736d4715e`  
		Last Modified: Tue, 13 Oct 2026 00:37:21 GMT  
		Size: 6.4 KB (6364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35012154243b02155af7cd51c9b491d58db287551e03191cdc133412a10d4c36`  
		Last Modified: Tue, 13 Oct 2026 00:37:21 GMT  
		Size: 255.2 KB (255180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5881907139b7f236bafe84c21d0317b0761955f8902c102df7029d4cfbeb9f0a`  
		Last Modified: Tue, 13 Oct 2026 00:37:22 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc3cbfd4741f1f8b1c8006b96ff1fa013b9aa5268887837f3c0e91c640407eee`  
		Last Modified: Tue, 13 Oct 2026 00:37:22 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f53229a2a3f20ea8834d83b5f8796492fd0f721866909d16b00c0cbd7020c7f9`  
		Last Modified: Tue, 13 Oct 2026 00:37:23 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc22beddfaf5e103c94f5500917d5b48634cf8833bedf676a1f3412479f2dec1`  
		Last Modified: Tue, 13 Oct 2026 00:37:24 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e78bf05fa8c7c12c1b47e8c669373a3e16b86fb981d5e3a946f5e0e8b24716`  
		Last Modified: Tue, 13 Oct 2026 00:37:24 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.8` - unknown; unknown

```console
$ docker pull logstash@sha256:fc448d72f21d91faddb2c4318628094963953ebf97f8512fd2c413b026e5e5fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2144409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e1de1f49fa977b0a8ebcc2c5ca92c6a0f85563834fcb0729b59b6a2e01f3f2`

```dockerfile
```

-	Layers:
	-	`sha256:a2b96e739c4fe6887effe8a0c27f9f1b6adbae8159775203c0e16c187a4d2cdb`  
		Last Modified: Tue, 13 Oct 2026 00:37:21 GMT  
		Size: 2.1 MB (2114209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44a8a7b754da835853e110c28be9f773000eacda72b45b68d369bc0219506b85`  
		Last Modified: Tue, 13 Oct 2026 00:37:21 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.8` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:43cd9d8beb9a7637e8ea1886e1f5301c61270824f74476890f9e95108421a8db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.0 MB (523036288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d52025b8aa138cc4ac1c5cb8dc90b7abafb718b14a6ad69dbe45476391484445`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 12 Oct 2026 12:37:19 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:19 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 12 Oct 2026 12:37:20 GMT
ENV container oci
# Mon, 12 Oct 2026 12:37:21 GMT
COPY dir:123af182f2411d6301e92c5816a09ad572a38ac45c6a006a2a67fe12bba24337 in /      
# Mon, 12 Oct 2026 12:37:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 12:37:22 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 12:37:22 GMT
COPY dir:af25db34574ac74a77dcb2c3247cf0e47211ca3e53116d59e2c507bd5db60e5e in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 12:37:22 GMT
COPY dir:af25db34574ac74a77dcb2c3247cf0e47211ca3e53116d59e2c507bd5db60e5e in /root/buildinfo/      
# Mon, 12 Oct 2026 12:37:23 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T12:36:49Z" "org.opencontainers.image.revision"="605f9da3afeb17ea0827cac3edf823279a26c42f" "build-date"="2026-10-12T12:36:49Z" "architecture"="aarch64" "vcs-ref"="605f9da3afeb17ea0827cac3edf823279a26c42f" "vcs-type"="git" "release"="1791808450"org.opencontainers.image.created=2026-10-12T12:36:49Z,org.opencontainers.image.revision=605f9da3afeb17ea0827cac3edf823279a26c42f
# Tue, 13 Oct 2026 00:34:04 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 13 Oct 2026 00:34:04 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:34:04 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 13 Oct 2026 00:34:04 GMT
WORKDIR /usr/share
# Tue, 13 Oct 2026 00:34:06 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:35:06 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 13 Oct 2026 00:35:07 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 13 Oct 2026 00:35:07 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 13 Oct 2026 00:35:07 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 13 Oct 2026 00:35:07 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 13 Oct 2026 00:35:07 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 13 Oct 2026 00:35:07 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 13 Oct 2026 00:35:07 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 00:35:07 GMT
WORKDIR /usr/share/logstash
# Tue, 13 Oct 2026 00:35:07 GMT
USER 1000
# Tue, 13 Oct 2026 00:35:07 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 13 Oct 2026 00:35:07 GMT
LABEL org.label-schema.build-date=2026-09-29T21:14:12+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-29T21:14:12+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 13 Oct 2026 00:35:07 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:e9b14607c5b59da407fa1d8ceb91765c821f6a3e5637af082c822b0741fd9481`  
		Last Modified: Mon, 12 Oct 2026 14:30:43 GMT  
		Size: 38.8 MB (38798784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6661669fc4a35439932d7f0766ff5f200b9ee32161fc1d6e276f270c67287d6b`  
		Last Modified: Tue, 13 Oct 2026 00:35:47 GMT  
		Size: 4.8 MB (4759623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e987300c7aea78db520efbb95c429d38a4fcfc17b4de8e9a82d7954205b701`  
		Last Modified: Tue, 13 Oct 2026 00:35:55 GMT  
		Size: 479.2 MB (479213067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f8e8450577e4c27b835c22ac76916bc2b0e3fad5d8c2974509f8576b62c673`  
		Last Modified: Tue, 13 Oct 2026 00:35:47 GMT  
		Size: 6.4 KB (6368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:867bf642187e80ae548ccc47c68feec56b0d4e5a3adac301856dac07ba9cabfc`  
		Last Modified: Tue, 13 Oct 2026 00:35:47 GMT  
		Size: 255.2 KB (255186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72dcbf1e57614923bc629946fd2db8ec6f709c27c42701db24c9cf07e0291ad2`  
		Last Modified: Tue, 13 Oct 2026 00:35:48 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2783753c842f8d186352db12b524ea88c3a1d6b974dfa3289bb4adb6c8dac3e8`  
		Last Modified: Tue, 13 Oct 2026 00:35:48 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63986b965b56fc20c23b68dc56f87d2373af5d94ceeba5145788a4e276016255`  
		Last Modified: Tue, 13 Oct 2026 00:35:48 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47053af9b4c9162143fb6acf7dc75577046f81e7841a6e80710c4576e6f0304`  
		Last Modified: Tue, 13 Oct 2026 00:35:49 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fcd51d510ebf0e86d9d4658e757724fbdb87a7cd2d80ebaacde54c8d1204db6`  
		Last Modified: Tue, 13 Oct 2026 00:35:49 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.8` - unknown; unknown

```console
$ docker pull logstash@sha256:687509ffc459a1f010f5894e68b9f08b1c66d085f568a0144b845bd05edea43e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2143273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf4214b9a3d5eac4bc47c8f72a832c2f064dc91796dd76b9f258a3c1b0b0206`

```dockerfile
```

-	Layers:
	-	`sha256:69d262856516be74a1a66f3c46e4cc0ea04e9b3b3303561ff337464a7cb911e6`  
		Last Modified: Tue, 13 Oct 2026 00:35:47 GMT  
		Size: 2.1 MB (2112997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ce42f998bcb97bccdd28ba3fe1f1a097cd75d2b4c239aa89b96bc7cdd6e05cc`  
		Last Modified: Tue, 13 Oct 2026 00:35:46 GMT  
		Size: 30.3 KB (30276 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.5.5`

```console
$ docker pull logstash@sha256:2672aa5118e5744edc32b74a0466a283e41ceafc42db44580192b48650550b72
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.5.5` - linux; amd64

```console
$ docker pull logstash@sha256:6e06496f34977689a75568c3b5c03cbcf9462504d64a2cdc9ac8d680ba8abf86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **535.3 MB (535286028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de149a2769808cca2e4957c0536e39de7cee62a2063c205c532741f9dc02848e`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 12 Oct 2026 12:37:49 GMT
ENV container oci
# Mon, 12 Oct 2026 12:37:50 GMT
COPY dir:e45266e494b9752d347f82bff660e367c92279dd3110ea5b3aba7f7174fdf656 in /      
# Mon, 12 Oct 2026 12:37:50 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 12:37:50 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 12:37:51 GMT
COPY dir:a1b3412d0ee6658591c067c250fc387d859e4d182c15f2dde66e7f77f7cb6d4a in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 12:37:51 GMT
COPY dir:a1b3412d0ee6658591c067c250fc387d859e4d182c15f2dde66e7f77f7cb6d4a in /root/buildinfo/      
# Mon, 12 Oct 2026 12:37:51 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T12:36:05Z" "org.opencontainers.image.revision"="605f9da3afeb17ea0827cac3edf823279a26c42f" "build-date"="2026-10-12T12:36:05Z" "architecture"="x86_64" "vcs-ref"="605f9da3afeb17ea0827cac3edf823279a26c42f" "vcs-type"="git" "release"="1791808450"org.opencontainers.image.created=2026-10-12T12:36:05Z,org.opencontainers.image.revision=605f9da3afeb17ea0827cac3edf823279a26c42f
# Tue, 13 Oct 2026 00:35:53 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 13 Oct 2026 00:35:53 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:35:53 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 13 Oct 2026 00:35:53 GMT
WORKDIR /usr/share
# Tue, 13 Oct 2026 00:35:55 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:36:44 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 13 Oct 2026 00:36:45 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 13 Oct 2026 00:36:45 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 13 Oct 2026 00:36:45 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 13 Oct 2026 00:36:45 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 13 Oct 2026 00:36:45 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 13 Oct 2026 00:36:45 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 13 Oct 2026 00:36:45 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 00:36:45 GMT
WORKDIR /usr/share/logstash
# Tue, 13 Oct 2026 00:36:45 GMT
USER 1000
# Tue, 13 Oct 2026 00:36:45 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 13 Oct 2026 00:36:45 GMT
LABEL org.label-schema.build-date=2026-09-29T21:16:22+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-29T21:16:22+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 13 Oct 2026 00:36:45 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:c8fb2f748d0518200c41845a3bbb526397078028e42feaddaf7208534fc575b4`  
		Last Modified: Mon, 12 Oct 2026 14:31:54 GMT  
		Size: 40.7 MB (40731722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:558048e5421193d5ab8746f7efa8bbcc2af51a3f14de4c29686c2558d129de18`  
		Last Modified: Tue, 13 Oct 2026 00:37:21 GMT  
		Size: 4.8 MB (4768632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be40bd2ed8e839d2a12392c9011387ae7c3091a64ec82a1a307d2be8c1fc008d`  
		Last Modified: Tue, 13 Oct 2026 00:37:30 GMT  
		Size: 489.5 MB (489520685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05131c34df18820daa80d6e38b2bd070a151f18db0c2ab13a3b0aa3995241888`  
		Last Modified: Tue, 13 Oct 2026 00:37:21 GMT  
		Size: 6.5 KB (6541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f05dc94aec866c3866f6adc09dd41492452d02f94c19811df85ceea3fbdf108`  
		Last Modified: Tue, 13 Oct 2026 00:37:21 GMT  
		Size: 255.2 KB (255186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:167a156db480ec3c2c149bd97603e58440496285904950f75f540c2869ff99a2`  
		Last Modified: Tue, 13 Oct 2026 00:37:22 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68fb839004603f6f382a51b7a6f15eed0fe500d39a97a88ca1c60006eae08694`  
		Last Modified: Tue, 13 Oct 2026 00:37:22 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c9f8a61521ab2407d07c7661fb4a4d5b64401955b93be500d0f86db6314fdc1`  
		Last Modified: Tue, 13 Oct 2026 00:37:22 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7afcc5b1d74aae7406584d5cf91cc53b531ae9748c0bdd40c5622f06fb3a9ea4`  
		Last Modified: Tue, 13 Oct 2026 00:37:23 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf88c8aed27b8d05e0a7f75b95e6c3763f60965d13f4e1e6e4b40f969529d737`  
		Last Modified: Tue, 13 Oct 2026 00:37:24 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.5` - unknown; unknown

```console
$ docker pull logstash@sha256:7952d0ef773ab6ad7d7e5796f47b350cadea371c22d73b2379975fbecafb8563
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb2cb7cbff55e0c7e20186aa14af88683457dece6f5c0bcd22726cb729219940`

```dockerfile
```

-	Layers:
	-	`sha256:414a84c424ca62530630216114903fd5950224d6c0ec33eedaa41d82dc04e345`  
		Last Modified: Tue, 13 Oct 2026 00:37:21 GMT  
		Size: 2.1 MB (2141435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b2296a79706e3cf3fa768713f47445854d821cb589f223f1527565403becc24`  
		Last Modified: Tue, 13 Oct 2026 00:37:21 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.5.5` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:64a5fb6a0ced097e0c3128569c5bc4a7c8e3cfead76146e6c797f265f2f46253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.6 MB (531629354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59143a124d597fc7bb76eccfb0a5bbf5aadf2ab2015e31be0ac2cf51ee4347e2`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 12 Oct 2026 12:37:19 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:19 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 12 Oct 2026 12:37:20 GMT
ENV container oci
# Mon, 12 Oct 2026 12:37:21 GMT
COPY dir:123af182f2411d6301e92c5816a09ad572a38ac45c6a006a2a67fe12bba24337 in /      
# Mon, 12 Oct 2026 12:37:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 12:37:22 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 12:37:22 GMT
COPY dir:af25db34574ac74a77dcb2c3247cf0e47211ca3e53116d59e2c507bd5db60e5e in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 12:37:22 GMT
COPY dir:af25db34574ac74a77dcb2c3247cf0e47211ca3e53116d59e2c507bd5db60e5e in /root/buildinfo/      
# Mon, 12 Oct 2026 12:37:23 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T12:36:49Z" "org.opencontainers.image.revision"="605f9da3afeb17ea0827cac3edf823279a26c42f" "build-date"="2026-10-12T12:36:49Z" "architecture"="aarch64" "vcs-ref"="605f9da3afeb17ea0827cac3edf823279a26c42f" "vcs-type"="git" "release"="1791808450"org.opencontainers.image.created=2026-10-12T12:36:49Z,org.opencontainers.image.revision=605f9da3afeb17ea0827cac3edf823279a26c42f
# Tue, 13 Oct 2026 00:34:04 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 13 Oct 2026 00:34:04 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:34:04 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 13 Oct 2026 00:34:04 GMT
WORKDIR /usr/share
# Tue, 13 Oct 2026 00:34:06 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:35:08 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 13 Oct 2026 00:35:08 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 13 Oct 2026 00:35:09 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 13 Oct 2026 00:35:09 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 13 Oct 2026 00:35:09 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 13 Oct 2026 00:35:09 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 13 Oct 2026 00:35:09 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 13 Oct 2026 00:35:09 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 00:35:09 GMT
WORKDIR /usr/share/logstash
# Tue, 13 Oct 2026 00:35:09 GMT
USER 1000
# Tue, 13 Oct 2026 00:35:09 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 13 Oct 2026 00:35:09 GMT
LABEL org.label-schema.build-date=2026-09-29T21:16:22+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-29T21:16:22+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 13 Oct 2026 00:35:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:e9b14607c5b59da407fa1d8ceb91765c821f6a3e5637af082c822b0741fd9481`  
		Last Modified: Mon, 12 Oct 2026 14:30:43 GMT  
		Size: 38.8 MB (38798784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b54aa107fb263be964e18c73319d3ed8d31e1fbfb4f28601a12af08ea2188442`  
		Last Modified: Tue, 13 Oct 2026 00:35:48 GMT  
		Size: 4.8 MB (4759732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e641a6795f2fedb249e0172b162ff200fc8b77d5cd6861f80044dea608934caa`  
		Last Modified: Tue, 13 Oct 2026 00:35:59 GMT  
		Size: 487.8 MB (487805858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1a319fc567eff8a9d3ed62353cd2b532e293e1fabc5799e83faee6b8db52783`  
		Last Modified: Tue, 13 Oct 2026 00:35:48 GMT  
		Size: 6.5 KB (6535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d18658f714df99178e015264370737f3845094ddfe22ff3db68d9982bf8e20e`  
		Last Modified: Tue, 13 Oct 2026 00:35:48 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2561ab1ff329e952c4b25cbad63501ccee58cf20114ed23c020b1eacab22cf31`  
		Last Modified: Tue, 13 Oct 2026 00:35:50 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2638d3b81bea57dd79f6ab6622f72edfe58c0a03478816bf435f6c3a036680d`  
		Last Modified: Tue, 13 Oct 2026 00:35:50 GMT  
		Size: 1.6 KB (1579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35d4468d3a941f9141267a5f34080f9a587f59f6f57e310a9bb5296fb4c287a3`  
		Last Modified: Tue, 13 Oct 2026 00:35:50 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:368882b9651db6d8ff748d23ba31b55e48f68586631f26be95b576a30428da49`  
		Last Modified: Tue, 13 Oct 2026 00:35:51 GMT  
		Size: 273.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2885925d509252c18ca0581e52b69bc2cd9d5296087f91c0d8a973d18e4af8cb`  
		Last Modified: Tue, 13 Oct 2026 00:35:51 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.5` - unknown; unknown

```console
$ docker pull logstash@sha256:985d0de6608ae5463a28bf880ae43c7f8fe14d70572b56ad99cd980dc8b55bf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2170500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad86594d8018615f19051a4dc27dd1168f9ce6bde6301012f5cb1889fae20307`

```dockerfile
```

-	Layers:
	-	`sha256:4f18270bbcb846a402142c0267a66fc0e37a7a4179eada675f080fafd00aee64`  
		Last Modified: Tue, 13 Oct 2026 00:35:48 GMT  
		Size: 2.1 MB (2140223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f586243e457a2039f33d1b9f0791df3ee93d532394fedb87314328adff43269e`  
		Last Modified: Tue, 13 Oct 2026 00:35:48 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json
