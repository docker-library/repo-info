<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:8.19.25`](#logstash81925)
-	[`logstash:9.4.8`](#logstash948)
-	[`logstash:9.5.5`](#logstash955)

## `logstash:8.19.25`

```console
$ docker pull logstash@sha256:221bcb5f2439c4fdb62392ef6aafb84c6200d61ed7c5aa34959344ffae35c915
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:8.19.25` - linux; amd64

```console
$ docker pull logstash@sha256:437bb89f774738cd0ea082c16f876cc3933c0ce8f8a892ea9643b33d9ef19ae8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **532.0 MB (532011339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d899e9d4135d5614ada89784d0ae6fbbab6ec8d2f0e4ca225f6ffa3ddfb521c`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:29:31 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Wed, 11 Nov 2026 23:29:31 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Wed, 11 Nov 2026 23:29:45 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.25-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.25 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 11 Nov 2026 23:29:45 GMT
WORKDIR /usr/share/logstash
# Wed, 11 Nov 2026 23:29:45 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 11 Nov 2026 23:29:45 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:29:45 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Wed, 11 Nov 2026 23:29:45 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Wed, 11 Nov 2026 23:29:45 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Wed, 11 Nov 2026 23:29:45 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Wed, 11 Nov 2026 23:29:45 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:29:45 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 11 Nov 2026 23:29:45 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 11 Nov 2026 23:29:45 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 11 Nov 2026 23:29:45 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:29:45 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Wed, 11 Nov 2026 23:29:45 GMT
USER 1000
# Wed, 11 Nov 2026 23:29:45 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 11 Nov 2026 23:29:45 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.25 org.opencontainers.image.version=8.19.25 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-11-02T14:57:15+00:00 org.opencontainers.image.created=2026-11-02T14:57:15+00:00
# Wed, 11 Nov 2026 23:29:45 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4664882e92b687bf2a2cfbaae2aa298005097d129d3ce75311e3174fbd21306`  
		Last Modified: Wed, 11 Nov 2026 23:30:24 GMT  
		Size: 51.0 MB (50977906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e67c8ef08002640d765f71a3b4c660188c8402694edda95a292c8e4256cad529`  
		Last Modified: Wed, 11 Nov 2026 23:30:22 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cc45335e023b5d4ac39bcaac4bdc814c2a736a278a975d616a591d7413a4806`  
		Last Modified: Wed, 11 Nov 2026 23:30:31 GMT  
		Size: 451.0 MB (450972490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc911a52e236e346d36e4e2fa058e02cf60ec6f57cd07c38af93da357db57555`  
		Last Modified: Wed, 11 Nov 2026 23:30:22 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:527531e435c9aa3dd6c96a2466a66558957805bdbfbb69f4a5e01c95d7a2eaa3`  
		Last Modified: Wed, 11 Nov 2026 23:30:23 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a803c1573de5e55b3d5ffae01020ed51f0823c9ec3c5be9d88c719584d7f2b5`  
		Last Modified: Wed, 11 Nov 2026 23:30:23 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618a892b7f26d326da4eea22a0cf035d5802e3ce5a221e5bac75d84185c50198`  
		Last Modified: Wed, 11 Nov 2026 23:30:24 GMT  
		Size: 1.8 KB (1762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654141a7e40a951dc94cde1b287c8e5d8aede4c172eccf5b86d7874dcc3e94ef`  
		Last Modified: Wed, 11 Nov 2026 23:30:24 GMT  
		Size: 6.3 KB (6295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ef1479f9b79044165e89e8d27f831b012a9b4227275a0d5b2d2d75e6a8818cc`  
		Last Modified: Wed, 11 Nov 2026 23:30:26 GMT  
		Size: 255.2 KB (255180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e7e52bd1bf7e94f264430d860528286546c75ccc5330b614713cd74f36e2d8f`  
		Last Modified: Wed, 11 Nov 2026 23:30:26 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f358e1773e29afa0adb19faea4e8fbd5f384a2a01827a8a73e27bea9a612cd`  
		Last Modified: Wed, 11 Nov 2026 23:30:26 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.25` - unknown; unknown

```console
$ docker pull logstash@sha256:ea18d1abf146eedb7bd608520a44860cfe76fccb91bbf8a3aff5c0dd522a9a95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f11a9ec7c56930eafef504010dc91c04fe2b47a7dc137b9d80ccaf731fe4250a`

```dockerfile
```

-	Layers:
	-	`sha256:32f5dc21c68fd25389cf5d3558ae5b58ff486fa3ab42ab5c8e13458ebd0c9c0b`  
		Last Modified: Wed, 11 Nov 2026 23:30:22 GMT  
		Size: 3.6 MB (3603251 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17cb3c9240c162499ea540fe5eb2bb71e83d8b0cabd76e6c22fac0fc2365e47d`  
		Last Modified: Wed, 11 Nov 2026 23:30:21 GMT  
		Size: 35.8 KB (35849 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:8.19.25` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:1cf98c151edc7556f91242bc11242fe5388e1b4aab678b27cee608119942f6cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **529.4 MB (529354243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69ef89f652cd96252b9b1c028dc889151db54c900ec96e6e3e7e927cc8f005dc`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:32:48 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Wed, 11 Nov 2026 23:32:48 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Wed, 11 Nov 2026 23:33:27 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.25-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.25 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 11 Nov 2026 23:33:28 GMT
WORKDIR /usr/share/logstash
# Wed, 11 Nov 2026 23:33:28 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 11 Nov 2026 23:33:28 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:33:28 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Wed, 11 Nov 2026 23:33:28 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Wed, 11 Nov 2026 23:33:28 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Wed, 11 Nov 2026 23:33:28 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Wed, 11 Nov 2026 23:33:28 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:33:28 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 11 Nov 2026 23:33:28 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 11 Nov 2026 23:33:28 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 11 Nov 2026 23:33:28 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:33:28 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Wed, 11 Nov 2026 23:33:28 GMT
USER 1000
# Wed, 11 Nov 2026 23:33:28 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 11 Nov 2026 23:33:28 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.25 org.opencontainers.image.version=8.19.25 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-11-02T14:57:15+00:00 org.opencontainers.image.created=2026-11-02T14:57:15+00:00
# Wed, 11 Nov 2026 23:33:28 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d518b2bcbefc0e40cce05dc9383c083c1ee7c4ba511172655703557fbc284c2a`  
		Last Modified: Wed, 11 Nov 2026 23:34:10 GMT  
		Size: 50.9 MB (50866950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed70e890299808c3de92806c08ee0513b25a6e9f3b3c930e63877c2b11947d17`  
		Last Modified: Wed, 11 Nov 2026 23:34:08 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8bd1b1f3b4572a07c619224897e1f59225a89ddeb636a33a46b51a7a521d101`  
		Last Modified: Wed, 11 Nov 2026 23:34:17 GMT  
		Size: 449.3 MB (449254311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f306678f4410c83518af717be52930009bb181592cf4138e99d6d00cf96ee040`  
		Last Modified: Wed, 11 Nov 2026 23:34:08 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a18da61829b1df35dec2e2f3f6940a7b6e78abbbb78fb47977461bfd1e364ecc`  
		Last Modified: Wed, 11 Nov 2026 23:34:09 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36af01c58db00a70c41aa8d363e25c2cb1779a8e97dd4b8f123f2064d3e4e6b1`  
		Last Modified: Wed, 11 Nov 2026 23:34:09 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1373ef786919e97f3191c1db6c20997f959b38bdaec4c43205bd5de3468f03da`  
		Last Modified: Wed, 11 Nov 2026 23:34:10 GMT  
		Size: 1.8 KB (1762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6c289aa868d31b4000b10d389d6092b8bb784fd6bc068dd70c1144bcde3a195`  
		Last Modified: Wed, 11 Nov 2026 23:34:10 GMT  
		Size: 6.3 KB (6294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fa0b0875bf2c4e7d256ba011ab8aed53bb5716ff6b0fe74b9fb543ba45fc35`  
		Last Modified: Wed, 11 Nov 2026 23:34:11 GMT  
		Size: 255.2 KB (255183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afd733f3a7551da0d49b00ec08c01ff9546fc74be1f54d55f9b2573e1e1494c1`  
		Last Modified: Wed, 11 Nov 2026 23:34:12 GMT  
		Size: 356.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6055181ff323d64d888f1685b0e0c82433e50589c9968981480fccb8b3e2c48a`  
		Last Modified: Wed, 11 Nov 2026 23:34:12 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.25` - unknown; unknown

```console
$ docker pull logstash@sha256:987f8ded59cb8d8a2faaabf8da3db217d9c7e2ef00132a9e9618b5ae2c11e41f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:678b379b216bc969e8212c977db82beead9d377e568127aa8d7976852fd78009`

```dockerfile
```

-	Layers:
	-	`sha256:4188a77724a2cb8d3ccd4da668b28ff10b0de03421e9135acebd2d46f0d21c8d`  
		Last Modified: Wed, 11 Nov 2026 23:34:08 GMT  
		Size: 3.6 MB (3603676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:548e9a0339b8546cf7dca9ce93d15851156853e112fbacfbd3e3c2cfd141e92c`  
		Last Modified: Wed, 11 Nov 2026 23:34:08 GMT  
		Size: 36.0 KB (35976 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.4.8`

```console
$ docker pull logstash@sha256:47214da800758f01b636d66aaeb964f7eccad842a5e7716407fb6ad45bb40282
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.8` - linux; amd64

```console
$ docker pull logstash@sha256:970afcfeb9c2e9189606ce5cef3ed732a872f41d04af7be6bbaa493bce20edf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **529.6 MB (529591689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7bdb9c286deae33f751314ffa11ffd89f09e274359c5188924caf52c5a0f3e4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL compose-id="RHEL-9.9.0-updates-20261104.1"
# Wed, 04 Nov 2026 22:05:31 GMT
ENV container oci
# Wed, 04 Nov 2026 22:05:32 GMT
COPY dir:1065617e8ffc1bf546938007c42ca6d2543da069b404ba7a3172b874660980aa in /      
# Wed, 04 Nov 2026 22:05:32 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 22:05:32 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:05:32 GMT
COPY dir:1ab382ed5e5527a5acf26f9606924257387798102c175f648912db04e0637441 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 22:05:32 GMT
COPY dir:1ab382ed5e5527a5acf26f9606924257387798102c175f648912db04e0637441 in /root/buildinfo/      
# Wed, 04 Nov 2026 22:05:33 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T22:05:11Z" "org.opencontainers.image.revision"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "build-date"="2026-11-04T22:05:11Z" "architecture"="x86_64" "vcs-ref"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "vcs-type"="git" "release"="1793829856"org.opencontainers.image.created=2026-11-04T22:05:11Z,org.opencontainers.image.revision=3592a7d8ff6441cbbd6d757af862d711d3e1dc3a
# Wed, 11 Nov 2026 22:49:36 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 11 Nov 2026 22:49:36 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:49:36 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 22:49:36 GMT
WORKDIR /usr/share
# Wed, 11 Nov 2026 22:49:38 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:50:30 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 11 Nov 2026 22:50:30 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 11 Nov 2026 22:50:30 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 11 Nov 2026 22:50:30 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 11 Nov 2026 22:50:30 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 11 Nov 2026 22:50:30 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 11 Nov 2026 22:50:31 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 11 Nov 2026 22:50:31 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 22:50:31 GMT
WORKDIR /usr/share/logstash
# Wed, 11 Nov 2026 22:50:31 GMT
USER 1000
# Wed, 11 Nov 2026 22:50:31 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 11 Nov 2026 22:50:31 GMT
LABEL org.label-schema.build-date=2026-09-29T21:14:12+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-29T21:14:12+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 11 Nov 2026 22:50:31 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:d17fc3a27a551e8e18348f89a75752fab8f83ab83c8dd4d22bcf3418f9e6a06a`  
		Last Modified: Wed, 11 Nov 2026 05:24:43 GMT  
		Size: 40.7 MB (40684080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fb0c91a2886355e33a20a7a21152d3dc70555f18350c1a89daf3f88bd6538ba`  
		Last Modified: Wed, 11 Nov 2026 22:51:08 GMT  
		Size: 7.7 MB (7705960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d92b94f0a547d6bdfc20e7c59d2847d18032813ccc7943227f8beb4c24f24cf`  
		Last Modified: Wed, 11 Nov 2026 22:51:17 GMT  
		Size: 480.9 MB (480936833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2262c45a23645bbd07af4d71d317c18a081df3768eddeb53ea412475407b6d4`  
		Last Modified: Wed, 11 Nov 2026 22:51:08 GMT  
		Size: 6.4 KB (6367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e001e7e386c8a7d4295068d9225cdae4bf5240dfadb1ef13dbbbf6918b453e9`  
		Last Modified: Wed, 11 Nov 2026 22:51:08 GMT  
		Size: 255.2 KB (255186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f5b4d2c4ae2a2216bf6b6834d6f30db09508bd07a34e045432e3a3052fab300`  
		Last Modified: Wed, 11 Nov 2026 22:51:09 GMT  
		Size: 356.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:017f48f7def6a2c850ea3886ba4224da16aff6971701c4e1e6a1fbde026856f8`  
		Last Modified: Wed, 11 Nov 2026 22:51:09 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba0fe344309392afdb7f0d97075f4dad844af9baa08285fa83b567cb6738c47`  
		Last Modified: Wed, 11 Nov 2026 22:51:10 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b84274123c13b6c0b5c2cb102f52889280faaf93759eb4c3c8c9a7f2a0364e5`  
		Last Modified: Wed, 11 Nov 2026 22:51:10 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aaf095405a0e9b5fafc12ea8d5178ce0e57c4cb4f4146fde5a152385762dfb8`  
		Last Modified: Wed, 11 Nov 2026 22:51:11 GMT  
		Size: 710.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.8` - unknown; unknown

```console
$ docker pull logstash@sha256:ea9c8c1935644a000920ea4b5c38469c85207db3320128045865c14ca6ca6715
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2125765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62a3eee942a2f55a39c44be10248464c768e624ab2262b0d1fb99a25c906651d`

```dockerfile
```

-	Layers:
	-	`sha256:09f83c072e774db349657ab20c4523eb97664dcc9204e197577e477826961c72`  
		Last Modified: Wed, 11 Nov 2026 22:51:08 GMT  
		Size: 2.1 MB (2095566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca98637f4efc707b9574a8be918172711fc2d026abe9591f8dce931edc4a9a02`  
		Last Modified: Wed, 11 Nov 2026 22:51:08 GMT  
		Size: 30.2 KB (30199 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.8` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:7d3425fb020933447a252d3545e9cfb923a5f0fc38038b20d3c168a07b73d77a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **525.8 MB (525756895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:575fc690d79e1921b27f294a1ad0b04865c2e8f2c4d1288a99d2388eb19820e5`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL compose-id="RHEL-9.9.0-updates-20261104.1"
# Wed, 04 Nov 2026 22:08:32 GMT
ENV container oci
# Wed, 04 Nov 2026 22:08:34 GMT
COPY dir:514821c1507761c7c104b4178930c927c06b94af3fc77862fad4455413d5880e in /      
# Wed, 04 Nov 2026 22:08:34 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 22:08:34 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:08:34 GMT
COPY dir:20e16dd534db21c03fd41a8260fa88cb0c28dcaa178172c5bc5b5c7a2dea8c79 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 22:08:35 GMT
COPY dir:20e16dd534db21c03fd41a8260fa88cb0c28dcaa178172c5bc5b5c7a2dea8c79 in /root/buildinfo/      
# Wed, 04 Nov 2026 22:08:35 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T22:08:02Z" "org.opencontainers.image.revision"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "build-date"="2026-11-04T22:08:02Z" "architecture"="aarch64" "vcs-ref"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "vcs-type"="git" "release"="1793829856"org.opencontainers.image.created=2026-11-04T22:08:02Z,org.opencontainers.image.revision=3592a7d8ff6441cbbd6d757af862d711d3e1dc3a
# Wed, 11 Nov 2026 22:09:08 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 11 Nov 2026 22:09:08 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:09:08 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 22:09:08 GMT
WORKDIR /usr/share
# Wed, 11 Nov 2026 22:09:10 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:10:02 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 11 Nov 2026 22:10:02 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 11 Nov 2026 22:10:02 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 11 Nov 2026 22:10:02 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 11 Nov 2026 22:10:02 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 11 Nov 2026 22:10:02 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 11 Nov 2026 22:10:02 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 11 Nov 2026 22:10:02 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 22:10:02 GMT
WORKDIR /usr/share/logstash
# Wed, 11 Nov 2026 22:10:02 GMT
USER 1000
# Wed, 11 Nov 2026 22:10:02 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 11 Nov 2026 22:10:02 GMT
LABEL org.label-schema.build-date=2026-09-29T21:14:12+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-29T21:14:12+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 11 Nov 2026 22:10:02 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:d5ceb6f197425acf5c32ac1cedc02e2f97c8b1b35cb2e31fb4bec7c6399a2811`  
		Last Modified: Wed, 11 Nov 2026 05:24:42 GMT  
		Size: 38.8 MB (38769518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59befd46b794e9389e76ee01f6f8d2759b25436f7744139cc527e34d1e5446d2`  
		Last Modified: Wed, 11 Nov 2026 22:10:42 GMT  
		Size: 7.5 MB (7509703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c294c7f8a3adda2ab617c4d19152553413c48e0aa43731ac0efcc74603811d1b`  
		Last Modified: Wed, 11 Nov 2026 22:11:08 GMT  
		Size: 479.2 MB (479212866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec91d11c3b47bbf19adc4022b3431fccb3f1269edb2dbdabc8118265a005b9ac`  
		Last Modified: Wed, 11 Nov 2026 22:10:42 GMT  
		Size: 6.4 KB (6367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c282958a37cba7cf049b9596522a1d3fc4d3ab34f55f83dbfa4c99f16da19f4f`  
		Last Modified: Wed, 11 Nov 2026 22:10:42 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc7d5292da7097164c7f25064b59ab5b9d561591c4e122ef1c53c55b540cc1b1`  
		Last Modified: Wed, 11 Nov 2026 22:10:43 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c90f98080d6b2347d28e42be3ba69004960feb3e64a454f7614518679f9cba8`  
		Last Modified: Wed, 11 Nov 2026 22:10:43 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67358236402a8de7e8825403928b6fe1f79ccca8e3921e829928876149e49003`  
		Last Modified: Wed, 11 Nov 2026 22:10:43 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd73f504dc0aacc159bfb2ef7c8669eccc8a200e4c20679739c412c4ae3bba14`  
		Last Modified: Wed, 11 Nov 2026 22:10:44 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a52172b40055dcdf022a88beb901a0150e4aa693a9e1248dc70ea3527e4f131c`  
		Last Modified: Wed, 11 Nov 2026 22:10:44 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.8` - unknown; unknown

```console
$ docker pull logstash@sha256:6800c52c4d48303a0d81f9804952c0eb97e76a5d53e04ae395acba94063b16d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2124630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d8e02560b46d07285b02944c1b5666d2bee58f75a4b2917c95261296eca5dc2`

```dockerfile
```

-	Layers:
	-	`sha256:9296e9d8f6c37205b4c5b1e4aa652f6108636e02d8bd29e3aad74c130cdcf9ab`  
		Last Modified: Wed, 11 Nov 2026 22:10:42 GMT  
		Size: 2.1 MB (2094354 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4466c330176fb7ee38b41ce59fa09f558bb2c7597940556b9c11f5fd33d3b8fd`  
		Last Modified: Wed, 11 Nov 2026 22:10:41 GMT  
		Size: 30.3 KB (30276 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.5.5`

```console
$ docker pull logstash@sha256:9d8b0ffa1376a22086930063f3b8f04eb14f0460300e4e8023b974c00e2fd89f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.5.5` - linux; amd64

```console
$ docker pull logstash@sha256:5b2b8315c07493f8c2e603de55615c9d021f3c51f0013e68fd8e241b9354b3e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **538.2 MB (538175429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596ef601d70ece1917947c8eb7e03116e784fa9b588f316f4d80d2461c6df592`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL compose-id="RHEL-9.9.0-updates-20261104.1"
# Wed, 04 Nov 2026 22:05:31 GMT
ENV container oci
# Wed, 04 Nov 2026 22:05:32 GMT
COPY dir:1065617e8ffc1bf546938007c42ca6d2543da069b404ba7a3172b874660980aa in /      
# Wed, 04 Nov 2026 22:05:32 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 22:05:32 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:05:32 GMT
COPY dir:1ab382ed5e5527a5acf26f9606924257387798102c175f648912db04e0637441 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 22:05:32 GMT
COPY dir:1ab382ed5e5527a5acf26f9606924257387798102c175f648912db04e0637441 in /root/buildinfo/      
# Wed, 04 Nov 2026 22:05:33 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T22:05:11Z" "org.opencontainers.image.revision"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "build-date"="2026-11-04T22:05:11Z" "architecture"="x86_64" "vcs-ref"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "vcs-type"="git" "release"="1793829856"org.opencontainers.image.created=2026-11-04T22:05:11Z,org.opencontainers.image.revision=3592a7d8ff6441cbbd6d757af862d711d3e1dc3a
# Wed, 11 Nov 2026 22:49:59 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 11 Nov 2026 22:49:59 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:49:59 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 22:49:59 GMT
WORKDIR /usr/share
# Wed, 11 Nov 2026 22:50:01 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:50:59 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 11 Nov 2026 22:50:59 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 11 Nov 2026 22:50:59 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 11 Nov 2026 22:50:59 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 11 Nov 2026 22:50:59 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 11 Nov 2026 22:50:59 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 11 Nov 2026 22:50:59 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 11 Nov 2026 22:50:59 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 22:50:59 GMT
WORKDIR /usr/share/logstash
# Wed, 11 Nov 2026 22:50:59 GMT
USER 1000
# Wed, 11 Nov 2026 22:50:59 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 11 Nov 2026 22:50:59 GMT
LABEL org.label-schema.build-date=2026-09-29T21:16:22+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-29T21:16:22+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 11 Nov 2026 22:50:59 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:d17fc3a27a551e8e18348f89a75752fab8f83ab83c8dd4d22bcf3418f9e6a06a`  
		Last Modified: Wed, 11 Nov 2026 05:24:43 GMT  
		Size: 40.7 MB (40684080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba027070e964eb7d4022d7b2720b258e4244d5536ede5cd27bac7f1054e88067`  
		Last Modified: Wed, 11 Nov 2026 22:51:39 GMT  
		Size: 7.7 MB (7706022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d43eed85d8932aeda75fc378a114f80ee2bd7074f44c6dfdecca50d759140b0`  
		Last Modified: Wed, 11 Nov 2026 22:51:48 GMT  
		Size: 489.5 MB (489520342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f782e7d9fce7d5bd3a8623209f9f392678342294f6a5702358d0268583e8729f`  
		Last Modified: Wed, 11 Nov 2026 22:51:38 GMT  
		Size: 6.5 KB (6540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc0d9e0a0a3d8c475365366c54d1dcfb727e0507fdbd48d535f2d0cf71c02b53`  
		Last Modified: Wed, 11 Nov 2026 22:51:39 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db4f4fda2bad8767028a6e0280d2a0be12dfd28e9c62511373a291abb522298`  
		Last Modified: Wed, 11 Nov 2026 22:51:40 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a177f5905f1252b9bfb99e59fa9eb626ac9204f9cb9831602cfee590279ba8`  
		Last Modified: Wed, 11 Nov 2026 22:51:40 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb41830b91256e84b2834f3f40302026589967df6332ba27c32db52d98231d2`  
		Last Modified: Wed, 11 Nov 2026 22:51:40 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c23ef2d65a1b16b68ef594af1fcc118bcf0d918ac1a7a19a18a3c2fde10a4167`  
		Last Modified: Wed, 11 Nov 2026 22:51:41 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adb11a08fc83f0acf5e5ff5fafa91cee332aa84e1ebd41e7ef42d789492f8962`  
		Last Modified: Wed, 11 Nov 2026 22:51:41 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.5` - unknown; unknown

```console
$ docker pull logstash@sha256:59498dd9da1bfa1746a6cb11aabd89a82186ff1813694716b087501f3a565793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2152992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44eb0acbbe16075e5b5df3e17a7ec9f0083b9ef76c6c03ab0745e664c2c8c511`

```dockerfile
```

-	Layers:
	-	`sha256:6f87f10d993665ea3cc621d40d2612a392abe59951cb1d6cb493ec0fb19fa347`  
		Last Modified: Wed, 11 Nov 2026 22:51:39 GMT  
		Size: 2.1 MB (2122792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8cfdd7dddfe42962534e2fb829bd7d44b247d55382539412c3a66d297434e0c`  
		Last Modified: Wed, 11 Nov 2026 22:51:39 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.5.5` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:e5fb73cb9a185d060352a44d80237b11c504904491af526dfb8394927157add0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **534.3 MB (534349959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86509ec27fe4b088a8794e2853479bade084155e7dbdd9748a8f20906deec464`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL compose-id="RHEL-9.9.0-updates-20261104.1"
# Wed, 04 Nov 2026 22:08:32 GMT
ENV container oci
# Wed, 04 Nov 2026 22:08:34 GMT
COPY dir:514821c1507761c7c104b4178930c927c06b94af3fc77862fad4455413d5880e in /      
# Wed, 04 Nov 2026 22:08:34 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 22:08:34 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:08:34 GMT
COPY dir:20e16dd534db21c03fd41a8260fa88cb0c28dcaa178172c5bc5b5c7a2dea8c79 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 22:08:35 GMT
COPY dir:20e16dd534db21c03fd41a8260fa88cb0c28dcaa178172c5bc5b5c7a2dea8c79 in /root/buildinfo/      
# Wed, 04 Nov 2026 22:08:35 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T22:08:02Z" "org.opencontainers.image.revision"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "build-date"="2026-11-04T22:08:02Z" "architecture"="aarch64" "vcs-ref"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "vcs-type"="git" "release"="1793829856"org.opencontainers.image.created=2026-11-04T22:08:02Z,org.opencontainers.image.revision=3592a7d8ff6441cbbd6d757af862d711d3e1dc3a
# Wed, 11 Nov 2026 22:09:11 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 11 Nov 2026 22:09:11 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:09:11 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 11 Nov 2026 22:09:11 GMT
WORKDIR /usr/share
# Wed, 11 Nov 2026 22:09:13 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:10:02 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 11 Nov 2026 22:10:03 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 11 Nov 2026 22:10:03 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 11 Nov 2026 22:10:03 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 11 Nov 2026 22:10:03 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 11 Nov 2026 22:10:03 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 11 Nov 2026 22:10:03 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 11 Nov 2026 22:10:03 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 22:10:03 GMT
WORKDIR /usr/share/logstash
# Wed, 11 Nov 2026 22:10:03 GMT
USER 1000
# Wed, 11 Nov 2026 22:10:03 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 11 Nov 2026 22:10:03 GMT
LABEL org.label-schema.build-date=2026-09-29T21:16:22+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-29T21:16:22+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 11 Nov 2026 22:10:03 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:d5ceb6f197425acf5c32ac1cedc02e2f97c8b1b35cb2e31fb4bec7c6399a2811`  
		Last Modified: Wed, 11 Nov 2026 05:24:42 GMT  
		Size: 38.8 MB (38769518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a40b8fe24233ad77bef70a274a53099073d81f0f9ea118a35003ccb43062fcee`  
		Last Modified: Wed, 11 Nov 2026 22:10:43 GMT  
		Size: 7.5 MB (7509744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71565fc6d9e037a4ab621f041aef80a53a4c5746dd4faf7b47be5ce052b30c14`  
		Last Modified: Wed, 11 Nov 2026 22:10:51 GMT  
		Size: 487.8 MB (487805719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:408b5942c5a0cfdcde717baf5d81606b2973ed1d423d8267a0ef463caf88b592`  
		Last Modified: Wed, 11 Nov 2026 22:10:43 GMT  
		Size: 6.5 KB (6539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9704ecb2cc4810084d90909f67695c63937da0720f73aeb6605d1cec64cf17`  
		Last Modified: Wed, 11 Nov 2026 22:10:43 GMT  
		Size: 255.2 KB (255186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18897abb53dfece8a14065b408149b130b141601fa0c428c7cc1ff5be3f9224d`  
		Last Modified: Wed, 11 Nov 2026 22:10:44 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:829450f377e843b99c403833116fe8e047631e34260277a82b111cad5adf0d19`  
		Last Modified: Wed, 11 Nov 2026 22:10:44 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34ee2d6f45148b24edd4a9efe6bc2c389cc4e76eab925fc62ccf033aa8e7dbe3`  
		Last Modified: Wed, 11 Nov 2026 22:10:44 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65c83541d5dd63cb86389a17de5ca8dac9907eb6dae02e37cafc76ff28a1da37`  
		Last Modified: Wed, 11 Nov 2026 22:10:45 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f1392912b4cb4ed1b9a4b62bc3dca6037ba831c7f638296d2e7819566cd62e`  
		Last Modified: Wed, 11 Nov 2026 22:10:45 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.5` - unknown; unknown

```console
$ docker pull logstash@sha256:4e8e4b9b65c39f6fc32cc98f6a421b0e327f40e58c2f004868ad5da1d407be93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2151857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:024f16b47dfb17ac0ec1a78cde2fc30bbc87d1c7cefe8eebd7a3779da49d6ef3`

```dockerfile
```

-	Layers:
	-	`sha256:964ed0f2b041f7ee0d8c22c2af990c437dcbdfaf28a9f4b9ff97ff8aab7e0e32`  
		Last Modified: Wed, 11 Nov 2026 22:10:43 GMT  
		Size: 2.1 MB (2121580 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:503a87b0b131d69f17fc5a8ccd0b16bf3c125909032f795f1b85e568fc829461`  
		Last Modified: Wed, 11 Nov 2026 22:10:43 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json
