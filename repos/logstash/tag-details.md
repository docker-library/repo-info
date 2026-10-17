<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:8.19.23`](#logstash81923)
-	[`logstash:9.4.8`](#logstash948)
-	[`logstash:9.5.5`](#logstash955)

## `logstash:8.19.23`

```console
$ docker pull logstash@sha256:f092e5c4253003c0d634588f719ce0d7ef3a99a4bac880f21f23d5bb26dd237e
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
$ docker pull logstash@sha256:8b1e41f3361b21384feff43af2940a81aa405c8cdb27bd67bc711d3284f506e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **529.1 MB (529135662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7144b714fcec0234d8b3d35411f201ea33a7ecebc138d1ea1dd15bf5e595974`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:31:11 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Sat, 17 Oct 2026 00:31:11 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Sat, 17 Oct 2026 00:31:47 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.23-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.23 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Sat, 17 Oct 2026 00:31:47 GMT
WORKDIR /usr/share/logstash
# Sat, 17 Oct 2026 00:31:47 GMT
ENV ELASTIC_CONTAINER=true
# Sat, 17 Oct 2026 00:31:47 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:31:47 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Sat, 17 Oct 2026 00:31:47 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Sat, 17 Oct 2026 00:31:47 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Sat, 17 Oct 2026 00:31:47 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Sat, 17 Oct 2026 00:31:47 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:31:47 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Sat, 17 Oct 2026 00:31:47 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Sat, 17 Oct 2026 00:31:47 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Sat, 17 Oct 2026 00:31:47 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Sat, 17 Oct 2026 00:31:47 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Sat, 17 Oct 2026 00:31:47 GMT
USER 1000
# Sat, 17 Oct 2026 00:31:47 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Sat, 17 Oct 2026 00:31:47 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.23 org.opencontainers.image.version=8.19.23 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-09-29T21:17:40+00:00 org.opencontainers.image.created=2026-09-29T21:17:40+00:00
# Sat, 17 Oct 2026 00:31:47 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc9cb296b0d1536f13724e0683b4425aebc4116633b2f22652923b2c68f0d4c`  
		Last Modified: Sat, 17 Oct 2026 00:32:27 GMT  
		Size: 51.2 MB (51193728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f82e36d4fb0146f53a3fdbd9f02db9d64b76bedb2f356976d613d9e42e455f5`  
		Last Modified: Sat, 17 Oct 2026 00:32:25 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321e791c19b3dd4e914d6d0124a60bd50eead87b447d87b52abea54c22a298e6`  
		Last Modified: Sat, 17 Oct 2026 00:32:35 GMT  
		Size: 448.7 MB (448734438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:049a62eb5babc9a53e68c82ad0c00fc35d9b6a606de5e0ece2edcbe01b44dc6f`  
		Last Modified: Sat, 17 Oct 2026 00:32:25 GMT  
		Size: 281.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:387720d7516f8f4f0a58fe654be9014e97b77aaef662c192b30baba8a5c094c3`  
		Last Modified: Sat, 17 Oct 2026 00:32:27 GMT  
		Size: 1.6 KB (1579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d820818ecea3b06352459039fd29613ef93169e85efdf98f997f9745b2e2a75`  
		Last Modified: Sat, 17 Oct 2026 00:32:27 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b8e9f3ced140c28b57f2139d872a0856cd7c7afca79df741a0d6bd002708004`  
		Last Modified: Sat, 17 Oct 2026 00:32:28 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2cda90ec553ed0d8306905a918167567bb970d21e5d768bc6142fedca55d9b7`  
		Last Modified: Sat, 17 Oct 2026 00:32:28 GMT  
		Size: 6.3 KB (6293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df0b0ccd7e84699eaab280609c7c4819dbf5cac2faf5839c43a89bc6e1d855d0`  
		Last Modified: Sat, 17 Oct 2026 00:32:29 GMT  
		Size: 255.2 KB (255183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de38870a1d92d373299f7832441d072efebb4e4a8f94757aa270b9f7a29d7a91`  
		Last Modified: Sat, 17 Oct 2026 00:32:29 GMT  
		Size: 356.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c7c14045fe9d61abb6f3247667042fe94d6d2970b9be93f736419b90b7b5192`  
		Last Modified: Sat, 17 Oct 2026 00:32:30 GMT  
		Size: 714.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.23` - unknown; unknown

```console
$ docker pull logstash@sha256:9336aa77c422031ba469b60afcb4073d778afcb4f86e8f842a76a5c0fc789a00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3646001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30abd2fabad319c1be0d52e4bf79044ffe99c4ece9898e95cac1c9e2f9b226c9`

```dockerfile
```

-	Layers:
	-	`sha256:8f94a440fbe95ffe43bfd76304464f670ef7fa5b00bdffd0091fdab0ee319024`  
		Last Modified: Sat, 17 Oct 2026 00:32:26 GMT  
		Size: 3.6 MB (3610024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ebfb66e60c00dd038575217ea2e8aabe147ddb849d34679e2a50a74c1cd8305`  
		Last Modified: Sat, 17 Oct 2026 00:32:25 GMT  
		Size: 36.0 KB (35977 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.4.8`

```console
$ docker pull logstash@sha256:55c9aebc0f4f80da08aab92f1bce223b25c7ec52a5e4cd145809d1afc34d8d57
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.8` - linux; amd64

```console
$ docker pull logstash@sha256:719d258577acc1ed78697ff9e23a8ab24ce8d655ca938b1d198336828808b1ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **526.7 MB (526708802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514d1df268f54d25cf5ac4519d89218b8ce5ca0c104081f493c178bf051b4610`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 13 Oct 2026 13:35:54 GMT
ENV container oci
# Tue, 13 Oct 2026 13:35:54 GMT
COPY dir:2fcd1ca2b477955927b3f5efd987f047101cd586e309b90ff9e3d22cde3fa5f5 in /      
# Tue, 13 Oct 2026 13:35:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 13:35:55 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 13:35:55 GMT
COPY dir:1e352836f570c2fb121d4b2c30cdc17fed57486a0a1cdaa55d16d9971f6b0aa6 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 13:35:56 GMT
COPY dir:1e352836f570c2fb121d4b2c30cdc17fed57486a0a1cdaa55d16d9971f6b0aa6 in /root/buildinfo/      
# Tue, 13 Oct 2026 13:35:56 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T13:35:30Z" "org.opencontainers.image.revision"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "build-date"="2026-10-13T13:35:30Z" "architecture"="x86_64" "vcs-ref"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "vcs-type"="git" "release"="1791898448"org.opencontainers.image.created=2026-10-13T13:35:30Z,org.opencontainers.image.revision=31c16e4570d0b2dd27707ce88c88f65b1212cf78
# Tue, 13 Oct 2026 22:59:00 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 13 Oct 2026 22:59:00 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:59:00 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 13 Oct 2026 22:59:00 GMT
WORKDIR /usr/share
# Tue, 13 Oct 2026 22:59:02 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 13 Oct 2026 23:00:02 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 13 Oct 2026 23:00:02 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 13 Oct 2026 23:00:02 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 13 Oct 2026 23:00:02 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 13 Oct 2026 23:00:02 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 13 Oct 2026 23:00:03 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 13 Oct 2026 23:00:03 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 13 Oct 2026 23:00:03 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 23:00:03 GMT
WORKDIR /usr/share/logstash
# Tue, 13 Oct 2026 23:00:03 GMT
USER 1000
# Tue, 13 Oct 2026 23:00:03 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 13 Oct 2026 23:00:03 GMT
LABEL org.label-schema.build-date=2026-09-29T21:14:12+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-29T21:14:12+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 13 Oct 2026 23:00:03 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:3655575efb35316918c7e7d2cb81ae7db0e4613f7ffbbadb4980cc0549ac2834`  
		Last Modified: Tue, 13 Oct 2026 14:51:42 GMT  
		Size: 40.7 MB (40737290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f009e0eda78fd052e591932a35a4ed63cdc9eb3ce4dbf96eb536d0d107ee8f8`  
		Last Modified: Tue, 13 Oct 2026 23:00:45 GMT  
		Size: 4.8 MB (4769637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44119ca2ed9f3f9ce60ef3684a7a2a92845b245c3d7de3a76f0162c6051d4138`  
		Last Modified: Tue, 13 Oct 2026 23:00:54 GMT  
		Size: 480.9 MB (480937073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:489065a9520620774e559f2493ffeacb62e9ca50c11e39c254665a8eda032797`  
		Last Modified: Tue, 13 Oct 2026 23:00:44 GMT  
		Size: 6.4 KB (6363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b72376a25c74b181303ad8ca441d8286b8e3ec5a5d5481646aab65d634e769a`  
		Last Modified: Tue, 13 Oct 2026 23:00:45 GMT  
		Size: 255.2 KB (255181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f60c6f9153422e68328a765dd7baed8313e48d347a87b4e16b5416c4dda64096`  
		Last Modified: Tue, 13 Oct 2026 23:00:46 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c917affac306b23ae3adfdb99ae81bdaba3dee5b0ed8bc2bb6db6602d871284`  
		Last Modified: Tue, 13 Oct 2026 23:00:46 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:919d6fbdb0519221df18946a16f9718ddeb31f688d89595504cf834bd1c18901`  
		Last Modified: Tue, 13 Oct 2026 23:00:46 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deea10feebf129ea264933936ab9009152ef50807d0088e5aa264e70215a6970`  
		Last Modified: Tue, 13 Oct 2026 23:00:48 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aec0131ed65b340c4c20cec7879e1e5f42d7dd679faa940e1e32f4459719160e`  
		Last Modified: Tue, 13 Oct 2026 23:00:48 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.8` - unknown; unknown

```console
$ docker pull logstash@sha256:d9442fe7066bdf59406fcdfa15b856aad8a1d19bea9d3ad78b952a0de0d4f3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2144417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93c118f494575dd0a8bec8dc9aacae09644433d71daad928ba653fcb316f179f`

```dockerfile
```

-	Layers:
	-	`sha256:f95a128f58f428148c3832168d72b31ba5ade9d3c7a5e7cd9ec42d7d012f2c07`  
		Last Modified: Tue, 13 Oct 2026 23:00:45 GMT  
		Size: 2.1 MB (2114217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc001d386302c289eab1f3c6fccba48cc4c1ebf6889f7fab5203ae6e46bdd1a5`  
		Last Modified: Tue, 13 Oct 2026 23:00:45 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.8` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:c030f0adfc2dfbf31a8170bda7141006ece72653a9b68ea52e8cc85b08bcfee4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.0 MB (523038083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dddc9a28a7954536a21d684b2a2c290152d56e7120b9dc7bb2a02997f99d87c1`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 13 Oct 2026 13:38:25 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 13 Oct 2026 13:38:26 GMT
ENV container oci
# Tue, 13 Oct 2026 13:38:27 GMT
COPY dir:e0a9e23521da92370ef8c1c702abc899055259c540969022f975e6a9a5db74eb in /      
# Tue, 13 Oct 2026 13:38:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 13:38:28 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 13:38:28 GMT
COPY dir:cb0d3172eff5b926f8d3aeafcff4dec012c6f16fa22d7fd5ba6222362588b316 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 13:38:29 GMT
COPY dir:cb0d3172eff5b926f8d3aeafcff4dec012c6f16fa22d7fd5ba6222362588b316 in /root/buildinfo/      
# Tue, 13 Oct 2026 13:38:29 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T13:37:55Z" "org.opencontainers.image.revision"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "build-date"="2026-10-13T13:37:55Z" "architecture"="aarch64" "vcs-ref"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "vcs-type"="git" "release"="1791898448"org.opencontainers.image.created=2026-10-13T13:37:55Z,org.opencontainers.image.revision=31c16e4570d0b2dd27707ce88c88f65b1212cf78
# Tue, 13 Oct 2026 22:57:58 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 13 Oct 2026 22:57:58 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:57:58 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 13 Oct 2026 22:57:58 GMT
WORKDIR /usr/share
# Tue, 13 Oct 2026 22:58:00 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:59:00 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 13 Oct 2026 22:59:00 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 13 Oct 2026 22:59:00 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 13 Oct 2026 22:59:00 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 13 Oct 2026 22:59:00 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 13 Oct 2026 22:59:00 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 13 Oct 2026 22:59:00 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 13 Oct 2026 22:59:00 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 22:59:00 GMT
WORKDIR /usr/share/logstash
# Tue, 13 Oct 2026 22:59:00 GMT
USER 1000
# Tue, 13 Oct 2026 22:59:00 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 13 Oct 2026 22:59:00 GMT
LABEL org.label-schema.build-date=2026-09-29T21:14:12+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-29T21:14:12+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 13 Oct 2026 22:59:00 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:8aa74cd1ed0a010c9e42b8f13484468b32e94ff9405ce295cbde110e8119e733`  
		Last Modified: Tue, 13 Oct 2026 14:52:30 GMT  
		Size: 38.8 MB (38804143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da1f29ad42b12b86c2138fc602f6be5865141926226a02d31819f2c1cdaaab35`  
		Last Modified: Tue, 13 Oct 2026 22:59:40 GMT  
		Size: 4.8 MB (4755692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89bedbc1fff8d197c6b4a529dadd528f1d6f6b78638f85a40156f9150328fb93`  
		Last Modified: Tue, 13 Oct 2026 22:59:48 GMT  
		Size: 479.2 MB (479213435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8ecefa3469c726c5f4cc048b5ff724190775236837a3d79b123c486e826889`  
		Last Modified: Tue, 13 Oct 2026 22:59:39 GMT  
		Size: 6.4 KB (6367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:360337643b75d3d17597ea23abb60e08d7e1f1146defdf3763cf7d7639588bd8`  
		Last Modified: Tue, 13 Oct 2026 22:59:39 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac3bd143360fbabca1cef6665fb218e6d5227b706b45280499f38219cc38ad3f`  
		Last Modified: Tue, 13 Oct 2026 22:59:41 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9bbb8df8a60807f38de0dcf1d266474cde6f097f718612a6bffa64a8ce5e634`  
		Last Modified: Tue, 13 Oct 2026 22:59:41 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31bc4321103cf7bdaf8cccb63ebffa8352ae8f126e20e2d19a8e8d60434c8887`  
		Last Modified: Tue, 13 Oct 2026 22:59:41 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1245cdaa9377392269d2614d34dc00100c6b88e6be8d2011275dee8875b3145f`  
		Last Modified: Tue, 13 Oct 2026 22:59:42 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:488481a75cb820c6429abe6d413e31e2da6f4303bf8b7f8cc22d4f0463eed1d2`  
		Last Modified: Tue, 13 Oct 2026 22:59:42 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.8` - unknown; unknown

```console
$ docker pull logstash@sha256:0f362628b9e39392986de9a1ddf11dbdc770a399aced26fca3b24a99532d6c05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2143282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc2988e395d7ac02b6762e9c9f71eeced80c7c7274bf80057a5f4aaf4d0a4a33`

```dockerfile
```

-	Layers:
	-	`sha256:9e9e82f958ff49f0e136276d5835691c3c9cc2e7040fba96583db192cc8c03ea`  
		Last Modified: Tue, 13 Oct 2026 22:59:39 GMT  
		Size: 2.1 MB (2113005 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee4eda76ff1af63e8c1b8982d6a75e75347b877fd4c88610b7b06d06952a2b60`  
		Last Modified: Tue, 13 Oct 2026 22:59:39 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.5.5`

```console
$ docker pull logstash@sha256:fe8324bbe489dd63a34fd19df4e54dc795e73a51b2c6571f7580a566a6a0a535
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.5.5` - linux; amd64

```console
$ docker pull logstash@sha256:35e3aa17cc5c6aee9096505cfe147cbb42bd8868407cf3f294fdb2f8ba7072eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **535.3 MB (535291667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c258774be94350155204031a0ccabddf52ef70b0a0bfe81261229b71606d10ee`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 13 Oct 2026 13:35:54 GMT
ENV container oci
# Tue, 13 Oct 2026 13:35:54 GMT
COPY dir:2fcd1ca2b477955927b3f5efd987f047101cd586e309b90ff9e3d22cde3fa5f5 in /      
# Tue, 13 Oct 2026 13:35:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 13:35:55 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 13:35:55 GMT
COPY dir:1e352836f570c2fb121d4b2c30cdc17fed57486a0a1cdaa55d16d9971f6b0aa6 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 13:35:56 GMT
COPY dir:1e352836f570c2fb121d4b2c30cdc17fed57486a0a1cdaa55d16d9971f6b0aa6 in /root/buildinfo/      
# Tue, 13 Oct 2026 13:35:56 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T13:35:30Z" "org.opencontainers.image.revision"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "build-date"="2026-10-13T13:35:30Z" "architecture"="x86_64" "vcs-ref"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "vcs-type"="git" "release"="1791898448"org.opencontainers.image.created=2026-10-13T13:35:30Z,org.opencontainers.image.revision=31c16e4570d0b2dd27707ce88c88f65b1212cf78
# Tue, 13 Oct 2026 22:58:59 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 13 Oct 2026 22:58:59 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:58:59 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 13 Oct 2026 22:58:59 GMT
WORKDIR /usr/share
# Tue, 13 Oct 2026 22:59:01 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:59:23 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 13 Oct 2026 22:59:23 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 13 Oct 2026 22:59:23 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 13 Oct 2026 22:59:23 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 13 Oct 2026 22:59:24 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 13 Oct 2026 22:59:24 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 13 Oct 2026 22:59:24 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 13 Oct 2026 22:59:24 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 22:59:24 GMT
WORKDIR /usr/share/logstash
# Tue, 13 Oct 2026 22:59:24 GMT
USER 1000
# Tue, 13 Oct 2026 22:59:24 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 13 Oct 2026 22:59:24 GMT
LABEL org.label-schema.build-date=2026-09-29T21:16:22+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-29T21:16:22+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 13 Oct 2026 22:59:24 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:3655575efb35316918c7e7d2cb81ae7db0e4613f7ffbbadb4980cc0549ac2834`  
		Last Modified: Tue, 13 Oct 2026 14:51:42 GMT  
		Size: 40.7 MB (40737290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d988c07f0ea5c4f4f7c58c041a13fc4982639e37837e17cdbf590ecf2ae17a0e`  
		Last Modified: Tue, 13 Oct 2026 23:00:03 GMT  
		Size: 4.8 MB (4769608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301f6ad3bbcfbe4480a2d39a7f4a5e9d42584d6456ff445bf0ff53c5be15bf43`  
		Last Modified: Tue, 13 Oct 2026 23:00:13 GMT  
		Size: 489.5 MB (489519787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5747f43695b2d96d065df12126cf9cda204ff7b2e59ca0fabb813249fdb81e6c`  
		Last Modified: Tue, 13 Oct 2026 23:00:02 GMT  
		Size: 6.5 KB (6538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55abae89350e8b2007e1318d8b4ee0fc0d5797e7d775bedf4ed889f3f3c429ac`  
		Last Modified: Tue, 13 Oct 2026 23:00:03 GMT  
		Size: 255.2 KB (255181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c02d7f1741e86a45adb73b7501c49d7cd01ccc7604f8a27dff270208ec3ac7e1`  
		Last Modified: Tue, 13 Oct 2026 23:00:05 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93e3d301b41ea9e95af381eec93c939c2e7de424e90225852f3f11cd2fb1dc9b`  
		Last Modified: Tue, 13 Oct 2026 23:00:04 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2a66d9b70911f18d7ff6acf0759fc0be07e64f4c52d06f9367ddd2daf93a450`  
		Last Modified: Tue, 13 Oct 2026 23:00:05 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2de22652da7d079cdf5951be319145ad1d3fdc12036627f8058c3fc9fef090a0`  
		Last Modified: Tue, 13 Oct 2026 23:00:07 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1982c854a8aca99eb0d2fd7366b038279e6b83a174dcd9f71d2d0969c86cce5`  
		Last Modified: Tue, 13 Oct 2026 23:00:07 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.5` - unknown; unknown

```console
$ docker pull logstash@sha256:f2550cd3d4b23378c2ed396e37be60d123ab88b51734edc5aebb0ca95eec8333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12f861c8a77f576152758e6b9dfec22dc73f5a3810726f59298573579f40e967`

```dockerfile
```

-	Layers:
	-	`sha256:d46ba979f23693487b093f8e0f6429b20c1a948042f270adc4f66b7502ee1185`  
		Last Modified: Tue, 13 Oct 2026 23:00:03 GMT  
		Size: 2.1 MB (2141443 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:062043308b43861f2a58555552bb64a60b13d18e94b5b5e230d1114cda24b2df`  
		Last Modified: Tue, 13 Oct 2026 23:00:02 GMT  
		Size: 30.2 KB (30198 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.5.5` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:c78fa94f4e2f721f1d45ad322dc3591024e5f80450c9f93de937ddea4d975267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.6 MB (531630642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac5d9098c60b222358c30d739c0200e6676dc70fcb6029fa628b8b3ef1775dd4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 13 Oct 2026 13:38:25 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 13 Oct 2026 13:38:26 GMT
ENV container oci
# Tue, 13 Oct 2026 13:38:27 GMT
COPY dir:e0a9e23521da92370ef8c1c702abc899055259c540969022f975e6a9a5db74eb in /      
# Tue, 13 Oct 2026 13:38:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 13:38:28 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 13:38:28 GMT
COPY dir:cb0d3172eff5b926f8d3aeafcff4dec012c6f16fa22d7fd5ba6222362588b316 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 13:38:29 GMT
COPY dir:cb0d3172eff5b926f8d3aeafcff4dec012c6f16fa22d7fd5ba6222362588b316 in /root/buildinfo/      
# Tue, 13 Oct 2026 13:38:29 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T13:37:55Z" "org.opencontainers.image.revision"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "build-date"="2026-10-13T13:37:55Z" "architecture"="aarch64" "vcs-ref"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "vcs-type"="git" "release"="1791898448"org.opencontainers.image.created=2026-10-13T13:37:55Z,org.opencontainers.image.revision=31c16e4570d0b2dd27707ce88c88f65b1212cf78
# Tue, 13 Oct 2026 22:58:00 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 13 Oct 2026 22:58:00 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:58:00 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 13 Oct 2026 22:58:00 GMT
WORKDIR /usr/share
# Tue, 13 Oct 2026 22:58:02 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:59:00 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 13 Oct 2026 22:59:00 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 13 Oct 2026 22:59:00 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 13 Oct 2026 22:59:00 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 13 Oct 2026 22:59:00 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 13 Oct 2026 22:59:00 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 13 Oct 2026 22:59:00 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 13 Oct 2026 22:59:00 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 22:59:00 GMT
WORKDIR /usr/share/logstash
# Tue, 13 Oct 2026 22:59:00 GMT
USER 1000
# Tue, 13 Oct 2026 22:59:00 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 13 Oct 2026 22:59:00 GMT
LABEL org.label-schema.build-date=2026-09-29T21:16:22+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-29T21:16:22+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 13 Oct 2026 22:59:00 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:8aa74cd1ed0a010c9e42b8f13484468b32e94ff9405ce295cbde110e8119e733`  
		Last Modified: Tue, 13 Oct 2026 14:52:30 GMT  
		Size: 38.8 MB (38804143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07ec83cb176795644a131b3b3ce992c002f2127775f78d0a9a5aedbdffd64a23`  
		Last Modified: Tue, 13 Oct 2026 22:59:40 GMT  
		Size: 4.8 MB (4755729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bafe6b3f7a936746f0032f8f8a6294f60bedabd418e93a46da80305b5188e63`  
		Last Modified: Tue, 13 Oct 2026 22:59:50 GMT  
		Size: 487.8 MB (487805786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d757bef7b55b3211940a01939729406e6d9103d0dd90145b6ba027b8eb4f7827`  
		Last Modified: Tue, 13 Oct 2026 22:59:40 GMT  
		Size: 6.5 KB (6541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23ec493180ed7a3557774ee0248aa8890ee0d9feff1412f5d0018833c617be29`  
		Last Modified: Tue, 13 Oct 2026 22:59:40 GMT  
		Size: 255.2 KB (255183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d022f64ca574cf66282e434278f01421face7110f363b84dfd3ef5f6bbd265af`  
		Last Modified: Tue, 13 Oct 2026 22:59:41 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:553c4f4e7040958df9d7f485f77dcbed0e8c7396062796990b734f6fe9276e1f`  
		Last Modified: Tue, 13 Oct 2026 22:59:41 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70b62af1e567c0cf49120da328c6dca8908409461451f736b93c58e25d2552a3`  
		Last Modified: Tue, 13 Oct 2026 22:59:41 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db92e22cd4f3076933a1ff85483ac545bc6ee5cd7cdc3840d0afc13e79175f66`  
		Last Modified: Tue, 13 Oct 2026 22:59:42 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16cf015562572317537458d91f89a9a5bf4cc3099fe40b3eb2f24622d6f8c514`  
		Last Modified: Tue, 13 Oct 2026 22:59:42 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.5` - unknown; unknown

```console
$ docker pull logstash@sha256:bbfb894566e3e04b2383bca2a4b3dc3a7eb9b2a3e0343e9c47eeb54b926fdb9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2170508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d4f54123b3790777e84e30347fbd41f70efce76784d68c7a2fe0676e966263`

```dockerfile
```

-	Layers:
	-	`sha256:783d94ceb8dad76ce17e04eb7eaf51572895b5442527e272fbe5aee6cc0ef714`  
		Last Modified: Tue, 13 Oct 2026 22:59:40 GMT  
		Size: 2.1 MB (2140231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ad9355571e0cc7082fd10f5efd0380c68cd454cb7291b5483d3b50caf14d863`  
		Last Modified: Tue, 13 Oct 2026 22:59:39 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json
