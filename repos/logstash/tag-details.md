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
$ docker pull logstash@sha256:c9ac36482a0fed9afadf015fc3c55b08f2567b7a26ab2b7954d8fde0995c118e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.8` - linux; amd64

```console
$ docker pull logstash@sha256:39d96e464ac44cf1d93f9f2d3d3b4b8f6b047891bcffbfdf44a0312bde41aea3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **526.7 MB (526674242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ca031c7380eb26b2c5505a778d4e86888863b37dac3ed92b68a30d1448627e5`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 06 Oct 2026 09:41:08 GMT
ENV container oci
# Tue, 06 Oct 2026 09:41:08 GMT
COPY dir:f50158eee9e07cbf4aceebaec88e4c8773d7166ca83ee42f91072d081a60608e in /      
# Tue, 06 Oct 2026 09:41:08 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 09:41:08 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 09:41:08 GMT
COPY dir:5310e3bbec09dd41addbb6f81f36a5a94f773036935363707f1d4e803fd1f750 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 09:41:08 GMT
COPY dir:5310e3bbec09dd41addbb6f81f36a5a94f773036935363707f1d4e803fd1f750 in /root/buildinfo/      
# Tue, 06 Oct 2026 09:41:09 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T09:40:51Z" "org.opencontainers.image.revision"="84687598811e20f52a46b476c889a722893da6fd" "build-date"="2026-10-06T09:40:51Z" "architecture"="x86_64" "vcs-ref"="84687598811e20f52a46b476c889a722893da6fd" "vcs-type"="git" "release"="1791279563"org.opencontainers.image.created=2026-10-06T09:40:51Z,org.opencontainers.image.revision=84687598811e20f52a46b476c889a722893da6fd
# Tue, 06 Oct 2026 23:02:54 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 06 Oct 2026 23:02:54 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 23:02:54 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 06 Oct 2026 23:02:54 GMT
WORKDIR /usr/share
# Tue, 06 Oct 2026 23:02:57 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 06 Oct 2026 23:03:24 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 06 Oct 2026 23:03:24 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 06 Oct 2026 23:03:24 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 06 Oct 2026 23:03:24 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 06 Oct 2026 23:03:24 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 06 Oct 2026 23:03:24 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 06 Oct 2026 23:03:24 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 06 Oct 2026 23:03:24 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 23:03:25 GMT
WORKDIR /usr/share/logstash
# Tue, 06 Oct 2026 23:03:25 GMT
USER 1000
# Tue, 06 Oct 2026 23:03:25 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 06 Oct 2026 23:03:25 GMT
LABEL org.label-schema.build-date=2026-09-29T21:14:12+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-29T21:14:12+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 06 Oct 2026 23:03:25 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:5f6aa419d45f217f7bbb8965a7f5de28a0c0124032a4ff1b28141d8f44c4fea7`  
		Last Modified: Tue, 06 Oct 2026 10:25:27 GMT  
		Size: 40.7 MB (40701553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89869b836644e371143486fb77f9c6b8665d61ea8fa1a5f97c6e4f0f1df93197`  
		Last Modified: Tue, 06 Oct 2026 23:04:00 GMT  
		Size: 4.8 MB (4770541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:159422456f50fd89304747fcd6d81328c11165879670053fba1d6ba9ba9258b7`  
		Last Modified: Tue, 06 Oct 2026 23:04:08 GMT  
		Size: 480.9 MB (480937362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a73419388e368dc6dcdd6f02394c92350a5d40419688ced4dfbb7c22792718`  
		Last Modified: Tue, 06 Oct 2026 23:03:59 GMT  
		Size: 6.4 KB (6363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c842a288ec5a10e2c777999319994388450f6e224dd7f4e4418e20dfc14c126`  
		Last Modified: Tue, 06 Oct 2026 23:04:00 GMT  
		Size: 255.2 KB (255179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab1dab25e7be2e2ecb6bdaca8872f4f05df31a3fa93474172012afc9749715cc`  
		Last Modified: Tue, 06 Oct 2026 23:04:01 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a015def912a8e99ceb19acc577c73be240659c259ecef1184e32c880c686e77`  
		Last Modified: Tue, 06 Oct 2026 23:04:01 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1647703399307ec98be20c409457824a87b3bc1c36ed4bc74a9848eed125730`  
		Last Modified: Tue, 06 Oct 2026 23:04:01 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79362754420951d6192b8142f98820b340fd157f151513166cf833204b2d321f`  
		Last Modified: Tue, 06 Oct 2026 23:04:02 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18d06b2904c6e697b6754715cae0684b9ee6e611244961d27835543c278586c`  
		Last Modified: Tue, 06 Oct 2026 23:04:02 GMT  
		Size: 706.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.8` - unknown; unknown

```console
$ docker pull logstash@sha256:1a93ab1a85a83b5c540e7e3456b1b9e11f8826a7e9c3f5ea32eae8eedc069de9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2144409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9359c71f0e755385fa3d48fe1c68b775b983b06245a35d0fb938af6038541731`

```dockerfile
```

-	Layers:
	-	`sha256:12bb16d2fe4999d3fe72a2c54108e95933d09fae962f47d428476fd2065ef9de`  
		Last Modified: Tue, 06 Oct 2026 23:04:00 GMT  
		Size: 2.1 MB (2114209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:842b15c4af9eb2be50a3bfd42e893e92cccb30360efbea8966793911e1dcf552`  
		Last Modified: Tue, 06 Oct 2026 23:03:59 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.8` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:e3a087bc2ef8c96330c5a42f79a9c41dc1fbbfcc4bd9945b605dfefb81dde8df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.0 MB (523040131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9728b3854eede6e6bd40f6bd82c94ef275c6c9a992ebd535406779d6fba3080`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 06 Oct 2026 09:42:21 GMT
ENV container oci
# Tue, 06 Oct 2026 09:42:22 GMT
COPY dir:1d4511abff0d0cabc191309fe39f03480b6374c9bc8873ac0c048d111c3a696b in /      
# Tue, 06 Oct 2026 09:42:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 09:42:22 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 09:42:22 GMT
COPY dir:ed9162b19cefc1e3d222d4f003eb91be76332500a704865cd7734be6ad4d448e in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 09:42:22 GMT
COPY dir:ed9162b19cefc1e3d222d4f003eb91be76332500a704865cd7734be6ad4d448e in /root/buildinfo/      
# Tue, 06 Oct 2026 09:42:22 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T09:42:00Z" "org.opencontainers.image.revision"="84687598811e20f52a46b476c889a722893da6fd" "build-date"="2026-10-06T09:42:00Z" "architecture"="aarch64" "vcs-ref"="84687598811e20f52a46b476c889a722893da6fd" "vcs-type"="git" "release"="1791279563"org.opencontainers.image.created=2026-10-06T09:42:00Z,org.opencontainers.image.revision=84687598811e20f52a46b476c889a722893da6fd
# Tue, 06 Oct 2026 23:02:25 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 06 Oct 2026 23:02:25 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 23:02:25 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 06 Oct 2026 23:02:25 GMT
WORKDIR /usr/share
# Tue, 06 Oct 2026 23:02:28 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 06 Oct 2026 23:02:57 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 06 Oct 2026 23:02:57 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 06 Oct 2026 23:02:57 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 06 Oct 2026 23:02:57 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 06 Oct 2026 23:02:57 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 06 Oct 2026 23:02:57 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 06 Oct 2026 23:02:57 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 06 Oct 2026 23:02:57 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 23:02:57 GMT
WORKDIR /usr/share/logstash
# Tue, 06 Oct 2026 23:02:57 GMT
USER 1000
# Tue, 06 Oct 2026 23:02:57 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 06 Oct 2026 23:02:57 GMT
LABEL org.label-schema.build-date=2026-09-29T21:14:12+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-29T21:14:12+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 06 Oct 2026 23:02:57 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:6e3ee034ac700d9806da676936d58b1720e1c6ca90636cbbae190d0a885a71b2`  
		Last Modified: Tue, 06 Oct 2026 10:50:47 GMT  
		Size: 38.8 MB (38805435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a054abe9f53c626f8075b3c03a4cf9443d481a90e0ee119f550e759dfb31b1b`  
		Last Modified: Tue, 06 Oct 2026 23:03:37 GMT  
		Size: 4.8 MB (4756672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f62f02133898e13d2bed06d335015482c5c30e4708ce72c08849058b9d8c266`  
		Last Modified: Tue, 06 Oct 2026 23:03:45 GMT  
		Size: 479.2 MB (479213219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e95489c60fbe3fa3618870cf6df095b07727c8c78e33c273ddc6591d1ead9a66`  
		Last Modified: Tue, 06 Oct 2026 23:03:37 GMT  
		Size: 6.4 KB (6365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2b4f761ac67ac80164e537b5382fb7bb13a62b6421bc82e128b9b03845ff76e`  
		Last Modified: Tue, 06 Oct 2026 23:03:37 GMT  
		Size: 255.2 KB (255181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:388ac3c1ae740317b0c7f2c8d9dbe0cd16e0a0432530915a393f73b3c1616967`  
		Last Modified: Tue, 06 Oct 2026 23:03:38 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f67a1674c82399de6ec446c8b111aaa0dcd4d9c4d9380ea97a60597af672e42b`  
		Last Modified: Tue, 06 Oct 2026 23:03:38 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c293d9ab3a8062762dd5f3ab9f45b8f9e0396437f82d6ec5c393e581ef6570`  
		Last Modified: Tue, 06 Oct 2026 23:03:38 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceb339eca45b6c6eaf06361229d80943c07604e49c8d0c953f5f27b7f442fbf6`  
		Last Modified: Tue, 06 Oct 2026 23:03:39 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5710c512296f7ee9f3a44de29da6b478df1aebd7fa57a6d9624b0bd0df93eb8`  
		Last Modified: Tue, 06 Oct 2026 23:03:39 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.8` - unknown; unknown

```console
$ docker pull logstash@sha256:33f1fef1837336119174a71b8327ad209b56464d88c4ec93b85ade27ec024c27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2143273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a8afea67f30d4bd58bc63698a2300ff29c3678eb59ae78cc611b9bcf4591ef5`

```dockerfile
```

-	Layers:
	-	`sha256:efe3ff93f7861e8d43e23b3d714f82e5b7d34d1df9df38270cd86c5cfa22e711`  
		Last Modified: Tue, 06 Oct 2026 23:03:37 GMT  
		Size: 2.1 MB (2112997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38ee00870e7dafbadd7351260d53c8d35db216363f5755fcada28c0f3c6692d7`  
		Last Modified: Tue, 06 Oct 2026 23:03:36 GMT  
		Size: 30.3 KB (30276 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.5.5`

```console
$ docker pull logstash@sha256:6f55afe6be7976a9e2fff167c55c051e71ed4f4c915e9ed8ea386cf0ec0540f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.5.5` - linux; amd64

```console
$ docker pull logstash@sha256:041b12797d282cd4d751312d4b57337487444e7b9839493737b83130e17fe940
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **535.3 MB (535257816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a21c52432b97094ad56835937f1aa997621469a85a82b5257ec47e2495ce246`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 06 Oct 2026 09:41:08 GMT
ENV container oci
# Tue, 06 Oct 2026 09:41:08 GMT
COPY dir:f50158eee9e07cbf4aceebaec88e4c8773d7166ca83ee42f91072d081a60608e in /      
# Tue, 06 Oct 2026 09:41:08 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 09:41:08 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 09:41:08 GMT
COPY dir:5310e3bbec09dd41addbb6f81f36a5a94f773036935363707f1d4e803fd1f750 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 09:41:08 GMT
COPY dir:5310e3bbec09dd41addbb6f81f36a5a94f773036935363707f1d4e803fd1f750 in /root/buildinfo/      
# Tue, 06 Oct 2026 09:41:09 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T09:40:51Z" "org.opencontainers.image.revision"="84687598811e20f52a46b476c889a722893da6fd" "build-date"="2026-10-06T09:40:51Z" "architecture"="x86_64" "vcs-ref"="84687598811e20f52a46b476c889a722893da6fd" "vcs-type"="git" "release"="1791279563"org.opencontainers.image.created=2026-10-06T09:40:51Z,org.opencontainers.image.revision=84687598811e20f52a46b476c889a722893da6fd
# Tue, 06 Oct 2026 23:04:09 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 06 Oct 2026 23:04:09 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 23:04:09 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 06 Oct 2026 23:04:09 GMT
WORKDIR /usr/share
# Tue, 06 Oct 2026 23:04:12 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 06 Oct 2026 23:05:09 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 06 Oct 2026 23:05:09 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 06 Oct 2026 23:05:09 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 06 Oct 2026 23:05:09 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 06 Oct 2026 23:05:09 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 06 Oct 2026 23:05:09 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 06 Oct 2026 23:05:09 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 06 Oct 2026 23:05:09 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 23:05:09 GMT
WORKDIR /usr/share/logstash
# Tue, 06 Oct 2026 23:05:09 GMT
USER 1000
# Tue, 06 Oct 2026 23:05:09 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 06 Oct 2026 23:05:09 GMT
LABEL org.label-schema.build-date=2026-09-29T21:16:22+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-29T21:16:22+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 06 Oct 2026 23:05:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:5f6aa419d45f217f7bbb8965a7f5de28a0c0124032a4ff1b28141d8f44c4fea7`  
		Last Modified: Tue, 06 Oct 2026 10:25:27 GMT  
		Size: 40.7 MB (40701553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ebb6eadbf65f451e7b6ea1927f37aab2d882777780bda3f49425239747eab46`  
		Last Modified: Tue, 06 Oct 2026 23:05:48 GMT  
		Size: 4.8 MB (4770578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24489b28f9fac083e8b6e68743e5291c9f1c981b335cebfdac147857be4444d7`  
		Last Modified: Tue, 06 Oct 2026 23:05:56 GMT  
		Size: 489.5 MB (489520721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cc255179875d31458a36273f10479b6e2239a61796610a1a9c22660ca07b959`  
		Last Modified: Tue, 06 Oct 2026 23:05:47 GMT  
		Size: 6.5 KB (6535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee1b250dcd411fab883f430db79f2818cdb018b38f0810ffd6c966055efb6e99`  
		Last Modified: Tue, 06 Oct 2026 23:05:47 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efe2067f3ad85ffb91790dd1a593edc4db74c912f5b363f2c82b8fef8e6d4d6c`  
		Last Modified: Tue, 06 Oct 2026 23:05:49 GMT  
		Size: 351.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dee4717df51510ff71904965fbcf32cc84ccd16d3c5fe2107ef393e20e79912`  
		Last Modified: Tue, 06 Oct 2026 23:05:49 GMT  
		Size: 1.6 KB (1573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c90922fb0887bec88775a58134b98b3f7d66ec59d940e72f6c59f2468fae7e4`  
		Last Modified: Tue, 06 Oct 2026 23:05:49 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81a5ef0c0f04f929c11a0af2aaeaf34315647a9dd55e8fc26f6a1e2abeeda7f1`  
		Last Modified: Tue, 06 Oct 2026 23:05:50 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:349bbd1f6a77f01c0ac1532cc875f3c5ddfe821d8bbc55f9793973d4b6c71561`  
		Last Modified: Tue, 06 Oct 2026 23:05:50 GMT  
		Size: 707.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.5` - unknown; unknown

```console
$ docker pull logstash@sha256:e34c2fa55bef98a83d177f4689526a14cec13b10a8efc77ac457ee1a54636c16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3902bd3d6ed8d9dbbff58305583c236a4931ab46769107370b56d19cf537f8fd`

```dockerfile
```

-	Layers:
	-	`sha256:522f7209a559440444d4d1f02deba72de04525ba4fa4a68d07b6e2cf3357ab78`  
		Last Modified: Tue, 06 Oct 2026 23:05:47 GMT  
		Size: 2.1 MB (2141435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:565008f17cd636929681d576cc515b46cfdd9331160c0f1b0c79a46122928250`  
		Last Modified: Tue, 06 Oct 2026 23:05:47 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.5.5` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:34cfc6c472e1ebb27e120bea3ec29d12d91fa6313edadbcb1b9f91f13a6acd28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.6 MB (531632869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11731de9d8553f77d105d0b225c6713dfc525c87df09d086919e34e9b7c3d73e`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 06 Oct 2026 09:42:21 GMT
ENV container oci
# Tue, 06 Oct 2026 09:42:22 GMT
COPY dir:1d4511abff0d0cabc191309fe39f03480b6374c9bc8873ac0c048d111c3a696b in /      
# Tue, 06 Oct 2026 09:42:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 09:42:22 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 09:42:22 GMT
COPY dir:ed9162b19cefc1e3d222d4f003eb91be76332500a704865cd7734be6ad4d448e in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 09:42:22 GMT
COPY dir:ed9162b19cefc1e3d222d4f003eb91be76332500a704865cd7734be6ad4d448e in /root/buildinfo/      
# Tue, 06 Oct 2026 09:42:22 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T09:42:00Z" "org.opencontainers.image.revision"="84687598811e20f52a46b476c889a722893da6fd" "build-date"="2026-10-06T09:42:00Z" "architecture"="aarch64" "vcs-ref"="84687598811e20f52a46b476c889a722893da6fd" "vcs-type"="git" "release"="1791279563"org.opencontainers.image.created=2026-10-06T09:42:00Z,org.opencontainers.image.revision=84687598811e20f52a46b476c889a722893da6fd
# Tue, 06 Oct 2026 23:02:35 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 06 Oct 2026 23:02:35 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 23:02:35 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 06 Oct 2026 23:02:35 GMT
WORKDIR /usr/share
# Tue, 06 Oct 2026 23:02:38 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 06 Oct 2026 23:03:05 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 06 Oct 2026 23:03:05 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 06 Oct 2026 23:03:06 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 06 Oct 2026 23:03:06 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 06 Oct 2026 23:03:06 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 06 Oct 2026 23:03:06 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 06 Oct 2026 23:03:06 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 06 Oct 2026 23:03:06 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 23:03:06 GMT
WORKDIR /usr/share/logstash
# Tue, 06 Oct 2026 23:03:06 GMT
USER 1000
# Tue, 06 Oct 2026 23:03:06 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 06 Oct 2026 23:03:06 GMT
LABEL org.label-schema.build-date=2026-09-29T21:16:22+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-29T21:16:22+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 06 Oct 2026 23:03:06 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:6e3ee034ac700d9806da676936d58b1720e1c6ca90636cbbae190d0a885a71b2`  
		Last Modified: Tue, 06 Oct 2026 10:50:47 GMT  
		Size: 38.8 MB (38805435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f744ad3255bc6d28c85cc4b0a59a47631095cbf4e76c762ac3a48a51d071bcd6`  
		Last Modified: Tue, 06 Oct 2026 23:03:45 GMT  
		Size: 4.8 MB (4756711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e449ae5627dc760806b19c5036c2c86a3a034f5193cb58453dcffcf67de71c37`  
		Last Modified: Tue, 06 Oct 2026 23:03:55 GMT  
		Size: 487.8 MB (487805742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:288b9c54c8a23e35e7aedbc790ca41d74b443bdb20c691000726cdd7db46f95a`  
		Last Modified: Tue, 06 Oct 2026 23:03:45 GMT  
		Size: 6.5 KB (6539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46f3fe8cc982a71d95fe05454f66a73d11e21c01be0c6590f68b4e90077376e1`  
		Last Modified: Tue, 06 Oct 2026 23:03:45 GMT  
		Size: 255.2 KB (255184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2dd53e4b5159b130e88b36db7e486cb8cb76097f6402a3158f9dd9c51733ed3`  
		Last Modified: Tue, 06 Oct 2026 23:03:46 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c0ab26ede41ad9d70097f447fd66190392e0bfc773dc623b9057d94ff25f03a`  
		Last Modified: Tue, 06 Oct 2026 23:03:46 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efc5eeaaaa4ef911e8c8c6b292f12d0dc7b24e19b7ffc70d7f17c04d32498e9e`  
		Last Modified: Tue, 06 Oct 2026 23:03:47 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3a39bc86ab8fd8dc2bba46edaf21d64a901d37d69dc559e3d06aa6c317b5e4d`  
		Last Modified: Tue, 06 Oct 2026 23:03:48 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bcf58228ee112dc352eebd65c9788752e953ce774af8a675c40826571bd0c74`  
		Last Modified: Tue, 06 Oct 2026 23:03:48 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.5` - unknown; unknown

```console
$ docker pull logstash@sha256:e8587f75158c83c29e3895a22cbbd46428c94c2024fe5d4e1432ddfed258ae42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2170500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3767235a3a3e309ed2c99e64705ed33171943743dcf33c8dbb73ea9d57e425ba`

```dockerfile
```

-	Layers:
	-	`sha256:748c1d0f2086df1a0129e8003415296704f3e5ca552671c20352152ee0473125`  
		Last Modified: Tue, 06 Oct 2026 23:03:45 GMT  
		Size: 2.1 MB (2140223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fa4ab9131bd39ea267e6d33514ffa09a005797217e8301962396687ab9ab88d`  
		Last Modified: Tue, 06 Oct 2026 23:03:45 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json
