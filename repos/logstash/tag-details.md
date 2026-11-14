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
$ docker pull logstash@sha256:6b14890caf623ee651a1674f5f022ed2fa2cbf557afbc160d12cd6b3a586c36e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.8` - linux; amd64

```console
$ docker pull logstash@sha256:1e4d7facba389206b4028d73040dd6565e0dd22197d5ccd820368ce929599f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **526.6 MB (526628839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50753b1150302c0fe597e5ac8451de2f01a4386bd3e872291d98d3eff7ed86bf`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 12 Nov 2026 07:10:03 GMT
ENV container oci
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:4925913982ee23b93a5459c6c94a48de8c0673c106763b3fd70dc3eefa0ce90f in /      
# Thu, 12 Nov 2026 07:10:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 07:10:04 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:fd0ea76c9f943a84d285f5b85a5dba9debc1ef1ff54714702d4773c2412fac40 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:fd0ea76c9f943a84d285f5b85a5dba9debc1ef1ff54714702d4773c2412fac40 in /root/buildinfo/      
# Thu, 12 Nov 2026 07:10:05 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T07:09:34Z" "org.opencontainers.image.revision"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "build-date"="2026-11-12T07:09:34Z" "architecture"="x86_64" "vcs-ref"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "vcs-type"="git" "release"="1794467051"org.opencontainers.image.created=2026-11-12T07:09:34Z,org.opencontainers.image.revision=c500a3e71632eb6956c45968727fbf5e847c5c1d
# Fri, 13 Nov 2026 21:47:09 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 13 Nov 2026 21:47:09 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:47:09 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Fri, 13 Nov 2026 21:47:09 GMT
WORKDIR /usr/share
# Fri, 13 Nov 2026 21:47:11 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:47:37 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Fri, 13 Nov 2026 21:47:37 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Fri, 13 Nov 2026 21:47:37 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Fri, 13 Nov 2026 21:47:37 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Fri, 13 Nov 2026 21:47:37 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Fri, 13 Nov 2026 21:47:37 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Fri, 13 Nov 2026 21:47:37 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Fri, 13 Nov 2026 21:47:37 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 21:47:37 GMT
WORKDIR /usr/share/logstash
# Fri, 13 Nov 2026 21:47:37 GMT
USER 1000
# Fri, 13 Nov 2026 21:47:37 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Fri, 13 Nov 2026 21:47:37 GMT
LABEL org.label-schema.build-date=2026-09-29T21:14:12+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-29T21:14:12+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Fri, 13 Nov 2026 21:47:37 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:a910e564830ecfbbdd4d0f366b4c40043cd255993dfb8d713b53c0b186a7eaa4`  
		Last Modified: Thu, 12 Nov 2026 09:38:47 GMT  
		Size: 40.7 MB (40669413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f78828ccfde1058e810852da04a956ab18db900d1612fc0e2b087f1c5e44bf75`  
		Last Modified: Fri, 13 Nov 2026 21:48:15 GMT  
		Size: 4.8 MB (4759053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c35a2b2e886327826f846d85d483bb7f866396905edc81efafa7ae324874fcc7`  
		Last Modified: Fri, 13 Nov 2026 21:48:24 GMT  
		Size: 480.9 MB (480935576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f102cd4ed6b3c1d96da26cd63e22180c36f0ac66e8ff19461b1dd0202f94b30`  
		Last Modified: Fri, 13 Nov 2026 21:48:15 GMT  
		Size: 6.4 KB (6364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42032dc3526260e669133ff21ce8beb914736ed95dcc53474afd58ff93c4c030`  
		Last Modified: Fri, 13 Nov 2026 21:48:15 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1a53cf8b75999ac3eaef31149924a84efd5828767cc1d35298ce0043dadb64`  
		Last Modified: Fri, 13 Nov 2026 21:48:16 GMT  
		Size: 351.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44caf4b4da9ebefcc8d990d9fe6c41dc2b915a31c039199761ac73313a6de40`  
		Last Modified: Fri, 13 Nov 2026 21:48:16 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02e6341edabf7151a77d180e4445a811f794bd1f1b77dba9f3a3593517d78b8`  
		Last Modified: Fri, 13 Nov 2026 21:48:17 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aca5916441fe4344179f3b42727f5eb9f2611524900e25353cad53712131d9d`  
		Last Modified: Fri, 13 Nov 2026 21:48:18 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10fa8c9b4f0a8d518b835db2184152b5272080340eb75c5ccdf7b27f87e54592`  
		Last Modified: Fri, 13 Nov 2026 21:48:18 GMT  
		Size: 709.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.8` - unknown; unknown

```console
$ docker pull logstash@sha256:86a6cc4ad52300afaac3891c1fdb64e6545da03790688b9df50ff44db0325fff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2125834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1bd7a9e0f5100182a81a0fc2c78bbc40406923e833dd5fb8380e38f2bbdf10f`

```dockerfile
```

-	Layers:
	-	`sha256:d1e145b301e5e02e7159d8470c6721894be065a49c82118606a52f02f8154ffa`  
		Last Modified: Fri, 13 Nov 2026 21:48:15 GMT  
		Size: 2.1 MB (2095634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a15a61f9249e343b5cec01a07689e6128350815d7e42a9ea4c435e6da151c4bb`  
		Last Modified: Fri, 13 Nov 2026 21:48:15 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.8` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:95f9e83489374fbf9da5d4d66a8c211c8d86d4015a78d1dce785e0d0ea2290e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **522.9 MB (522903191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:688e935e2c5a993f3074871e5aef38f85b9542c44285175675be37fbfbb1a0a3`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 12 Nov 2026 07:12:46 GMT
ENV container oci
# Thu, 12 Nov 2026 07:12:47 GMT
COPY dir:4d87526a7738e67f2849dec8cc7456d51f10cd8903f2b487983c9a8e8cf85454 in /      
# Thu, 12 Nov 2026 07:12:47 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 07:12:48 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 07:12:48 GMT
COPY dir:b8fefbe8743dd0d8522b33cd4fd83dde7d1f8d19d41b8dc58938df13462cf373 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 07:12:48 GMT
COPY dir:b8fefbe8743dd0d8522b33cd4fd83dde7d1f8d19d41b8dc58938df13462cf373 in /root/buildinfo/      
# Thu, 12 Nov 2026 07:12:49 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T07:12:16Z" "org.opencontainers.image.revision"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "build-date"="2026-11-12T07:12:16Z" "architecture"="aarch64" "vcs-ref"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "vcs-type"="git" "release"="1794467051"org.opencontainers.image.created=2026-11-12T07:12:16Z,org.opencontainers.image.revision=c500a3e71632eb6956c45968727fbf5e847c5c1d
# Fri, 13 Nov 2026 21:46:42 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 13 Nov 2026 21:46:42 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:46:42 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Fri, 13 Nov 2026 21:46:42 GMT
WORKDIR /usr/share
# Fri, 13 Nov 2026 21:46:44 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:47:10 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Fri, 13 Nov 2026 21:47:10 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Fri, 13 Nov 2026 21:47:10 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Fri, 13 Nov 2026 21:47:10 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Fri, 13 Nov 2026 21:47:10 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Fri, 13 Nov 2026 21:47:10 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Fri, 13 Nov 2026 21:47:10 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Fri, 13 Nov 2026 21:47:10 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 21:47:10 GMT
WORKDIR /usr/share/logstash
# Fri, 13 Nov 2026 21:47:10 GMT
USER 1000
# Fri, 13 Nov 2026 21:47:10 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Fri, 13 Nov 2026 21:47:10 GMT
LABEL org.label-schema.build-date=2026-09-29T21:14:12+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-29T21:14:12+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Fri, 13 Nov 2026 21:47:10 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:d3fe075a76b1285aa041b2e11e27b50e9193a929b1d8a84c06e18764d60bddbc`  
		Last Modified: Thu, 12 Nov 2026 09:56:13 GMT  
		Size: 38.7 MB (38679109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e9304c3a37ef374beb624f1d41cb1f0eb81b840f891115d60387f3b5381725`  
		Last Modified: Fri, 13 Nov 2026 21:47:50 GMT  
		Size: 4.7 MB (4747639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:673614a1b32ba78f81fc1e941e5d9cce01e122aa13ca83b311dd466992edb16d`  
		Last Modified: Fri, 13 Nov 2026 21:47:58 GMT  
		Size: 479.2 MB (479211634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae9fbf3c3e926f6b5e6caec6199a67d22b1aeb7851431da18c49a2e4809cb146`  
		Last Modified: Fri, 13 Nov 2026 21:47:50 GMT  
		Size: 6.4 KB (6365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52d4b16e14fab50b610e0a268dbd22394eff6fb7cacdab44de1f37f03c7e06e2`  
		Last Modified: Fri, 13 Nov 2026 21:47:50 GMT  
		Size: 255.2 KB (255184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e476b17beb004da416639ada218aa5c7e7153bd26539c869ecda63b4f61cda9a`  
		Last Modified: Fri, 13 Nov 2026 21:47:51 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6592e4d2c08c5f02e04f810b0b76f139abe51ade079f153cfea38ff86d30aad0`  
		Last Modified: Fri, 13 Nov 2026 21:47:51 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be946997c89a94019aaf466af48d87b82dee11d2c0d6bd85019c4b62aa5194fc`  
		Last Modified: Fri, 13 Nov 2026 21:47:51 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30205b5662674998d8c651f325029f0134765147e44ab5bc115f3f08900ec339`  
		Last Modified: Fri, 13 Nov 2026 21:47:52 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17fb600d6464b9cabe511a6333931ffb22596f68fff0adca69c973b43aee975`  
		Last Modified: Fri, 13 Nov 2026 21:47:52 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.8` - unknown; unknown

```console
$ docker pull logstash@sha256:89814f50112e9196179c0a618a4d9a8d6611c5aeff498338f795ceef76e43044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2124699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d7012f241f4b49f71b44793547aed61e5bc249775183234fd268310146f0ed9`

```dockerfile
```

-	Layers:
	-	`sha256:7a1ee923620889d76492db6aa7614d18833c7e4c41e346e7142b8dcbb15aad5d`  
		Last Modified: Fri, 13 Nov 2026 21:47:50 GMT  
		Size: 2.1 MB (2094422 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a2a72f9958038400ec01e922a01ac54db763db6b0892bbf30b74d4a29e0dc13`  
		Last Modified: Fri, 13 Nov 2026 21:47:50 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.5.5`

```console
$ docker pull logstash@sha256:553b09a32c788ace7c204a68feb7d0a406b7d700a059a318c00c2ca72e626c30
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.5.5` - linux; amd64

```console
$ docker pull logstash@sha256:b2b002b2e2f6a930b3f3a7a910931b1ffca865dee9a6690c0aaa81d4ee47a33c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **535.2 MB (535212356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c111be35451266f8a06a58c4449f84f9338fbdec19361879c8ff21e5c5433195`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 12 Nov 2026 07:10:03 GMT
ENV container oci
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:4925913982ee23b93a5459c6c94a48de8c0673c106763b3fd70dc3eefa0ce90f in /      
# Thu, 12 Nov 2026 07:10:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 07:10:04 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:fd0ea76c9f943a84d285f5b85a5dba9debc1ef1ff54714702d4773c2412fac40 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:fd0ea76c9f943a84d285f5b85a5dba9debc1ef1ff54714702d4773c2412fac40 in /root/buildinfo/      
# Thu, 12 Nov 2026 07:10:05 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T07:09:34Z" "org.opencontainers.image.revision"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "build-date"="2026-11-12T07:09:34Z" "architecture"="x86_64" "vcs-ref"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "vcs-type"="git" "release"="1794467051"org.opencontainers.image.created=2026-11-12T07:09:34Z,org.opencontainers.image.revision=c500a3e71632eb6956c45968727fbf5e847c5c1d
# Fri, 13 Nov 2026 21:47:19 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 13 Nov 2026 21:47:19 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:47:19 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Fri, 13 Nov 2026 21:47:19 GMT
WORKDIR /usr/share
# Fri, 13 Nov 2026 21:47:22 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:47:48 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Fri, 13 Nov 2026 21:47:48 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Fri, 13 Nov 2026 21:47:48 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Fri, 13 Nov 2026 21:47:48 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Fri, 13 Nov 2026 21:47:48 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Fri, 13 Nov 2026 21:47:48 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Fri, 13 Nov 2026 21:47:48 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Fri, 13 Nov 2026 21:47:48 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 21:47:49 GMT
WORKDIR /usr/share/logstash
# Fri, 13 Nov 2026 21:47:49 GMT
USER 1000
# Fri, 13 Nov 2026 21:47:49 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Fri, 13 Nov 2026 21:47:49 GMT
LABEL org.label-schema.build-date=2026-09-29T21:16:22+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-29T21:16:22+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Fri, 13 Nov 2026 21:47:49 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:a910e564830ecfbbdd4d0f366b4c40043cd255993dfb8d713b53c0b186a7eaa4`  
		Last Modified: Thu, 12 Nov 2026 09:38:47 GMT  
		Size: 40.7 MB (40669413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b7c449af512846ff55f4dd9a81a16910393ed9fc79ee62cd9e93d1623ce4c96`  
		Last Modified: Fri, 13 Nov 2026 21:48:27 GMT  
		Size: 4.8 MB (4758981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8575a6bb8baeda1a769cc54f5dab1212b6288efecbb8872efdc7da4b9e6a2ae`  
		Last Modified: Fri, 13 Nov 2026 21:48:36 GMT  
		Size: 489.5 MB (489518978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5e8574e0ccf5cda80428fd8691756182419efe3173316b4349328660b7c66fb`  
		Last Modified: Fri, 13 Nov 2026 21:48:27 GMT  
		Size: 6.5 KB (6540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d153e715af17f8a84ef47c68c5d0e2b5e7868a556713e47b6261d207bed236b4`  
		Last Modified: Fri, 13 Nov 2026 21:48:27 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:885f3d574e05f2c92e1600a4aaef197edf03069b5c1946253900d3eda9b3c9c2`  
		Last Modified: Fri, 13 Nov 2026 21:48:28 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f0294e3a3e90b8cbf6843dd373d43721c21bb1f418eb94e866a8b72d8c3bce9`  
		Last Modified: Fri, 13 Nov 2026 21:48:28 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0594c91846a01877425a5ce449e11c0cd4b2b53780e0f9cd6c0a9a5d155b1365`  
		Last Modified: Fri, 13 Nov 2026 21:48:28 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afabd76ba9504ac9ff5516d75e8f925fb9a12be14be48a28e4078b53fab9526`  
		Last Modified: Fri, 13 Nov 2026 21:48:29 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7674fc65b71d50e0b0ec7d15aa252d8a4a19066dc15b1decabb7c3bc94d45dc5`  
		Last Modified: Fri, 13 Nov 2026 21:48:29 GMT  
		Size: 710.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.5` - unknown; unknown

```console
$ docker pull logstash@sha256:3d07bfe76563cdd62e47fab527ef4c17f3ffff1097d810fe4863ce60eebe640d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2153060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1067f5026cb85c7ded13683ee74e5d502042590ba39a2aac3c7e2cfd9f266675`

```dockerfile
```

-	Layers:
	-	`sha256:571dcac73af1851b6336cca254db6b7b35051d3a30d4ceb1306324f29eb201d4`  
		Last Modified: Fri, 13 Nov 2026 21:48:27 GMT  
		Size: 2.1 MB (2122860 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d56c9a72519ccb269bbfe1e1e19088c654da40567227fe5a39c9aed8770ad5b`  
		Last Modified: Fri, 13 Nov 2026 21:48:27 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.5.5` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:02fbb85807c3a2d560f19ec51b913dff84d626ecb93cd9705211a43ba5e3ea50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.5 MB (531497936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bb385c997473ded02efb12f9f7ac68a0462fa0ab3dfcfb3ae51a26930a6e27a`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 12 Nov 2026 07:12:46 GMT
ENV container oci
# Thu, 12 Nov 2026 07:12:47 GMT
COPY dir:4d87526a7738e67f2849dec8cc7456d51f10cd8903f2b487983c9a8e8cf85454 in /      
# Thu, 12 Nov 2026 07:12:47 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 07:12:48 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 07:12:48 GMT
COPY dir:b8fefbe8743dd0d8522b33cd4fd83dde7d1f8d19d41b8dc58938df13462cf373 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 07:12:48 GMT
COPY dir:b8fefbe8743dd0d8522b33cd4fd83dde7d1f8d19d41b8dc58938df13462cf373 in /root/buildinfo/      
# Thu, 12 Nov 2026 07:12:49 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T07:12:16Z" "org.opencontainers.image.revision"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "build-date"="2026-11-12T07:12:16Z" "architecture"="aarch64" "vcs-ref"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "vcs-type"="git" "release"="1794467051"org.opencontainers.image.created=2026-11-12T07:12:16Z,org.opencontainers.image.revision=c500a3e71632eb6956c45968727fbf5e847c5c1d
# Fri, 13 Nov 2026 21:46:43 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 13 Nov 2026 21:46:43 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:46:43 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Fri, 13 Nov 2026 21:46:43 GMT
WORKDIR /usr/share
# Fri, 13 Nov 2026 21:46:44 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:47:34 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Fri, 13 Nov 2026 21:47:34 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Fri, 13 Nov 2026 21:47:34 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Fri, 13 Nov 2026 21:47:34 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Fri, 13 Nov 2026 21:47:35 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Fri, 13 Nov 2026 21:47:35 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Fri, 13 Nov 2026 21:47:35 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Fri, 13 Nov 2026 21:47:35 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Fri, 13 Nov 2026 21:47:35 GMT
WORKDIR /usr/share/logstash
# Fri, 13 Nov 2026 21:47:35 GMT
USER 1000
# Fri, 13 Nov 2026 21:47:35 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Fri, 13 Nov 2026 21:47:35 GMT
LABEL org.label-schema.build-date=2026-09-29T21:16:22+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-29T21:16:22+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Fri, 13 Nov 2026 21:47:35 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:d3fe075a76b1285aa041b2e11e27b50e9193a929b1d8a84c06e18764d60bddbc`  
		Last Modified: Thu, 12 Nov 2026 09:56:13 GMT  
		Size: 38.7 MB (38679109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c85039fc88328e8479b8e8d77ecacb3d9ffbe4253f341efb0dd526813d3f20`  
		Last Modified: Fri, 13 Nov 2026 21:48:14 GMT  
		Size: 4.7 MB (4747624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e1085455e6d3fe7012ab0e0866bcd83269eabb433b087319585cd19e3152dbc`  
		Last Modified: Fri, 13 Nov 2026 21:48:22 GMT  
		Size: 487.8 MB (487806222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aa38d355107b15541bc852729fa36637ee0512f526469a1aca27b01ee672f03`  
		Last Modified: Fri, 13 Nov 2026 21:48:14 GMT  
		Size: 6.5 KB (6539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dbfe6ffd341014c53dc7304afb40ca826eeaa4768657320e5085c0db542ad31`  
		Last Modified: Fri, 13 Nov 2026 21:48:14 GMT  
		Size: 255.2 KB (255183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9f570737b577f97f4843eeb887ef18f47309dd24cc46769a2ebb19389705d4`  
		Last Modified: Fri, 13 Nov 2026 21:48:15 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ccfb0968efa2b41dabf6dc3c0c36f6ecb14058e3c08e5a40ae7fcbdbc519631`  
		Last Modified: Fri, 13 Nov 2026 21:48:15 GMT  
		Size: 1.6 KB (1579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55035b91ffecfeeb7027aca86f7163015cc918b78efb48a78680c96b03c797aa`  
		Last Modified: Fri, 13 Nov 2026 21:48:16 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1d1abcf5c2cb8557c968ab69432b0b0b224c67842ce825a20ba7cd9e36430ed`  
		Last Modified: Fri, 13 Nov 2026 21:48:17 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322cc9cac8b2054ca9b5a4695c402d7652e1375ca6b4bdb49ab088bd7d60829c`  
		Last Modified: Fri, 13 Nov 2026 21:48:17 GMT  
		Size: 709.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.5` - unknown; unknown

```console
$ docker pull logstash@sha256:49a84b4ff6919907bcf63448337b7a551dd9138e701a16ca193926f868e1ff24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2151925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9fe47260c123b1542b244d611e849144c2c7b6b68deb9c85d8d419f094cc3b4`

```dockerfile
```

-	Layers:
	-	`sha256:a97bdd655047f3faa855c940faa74e5afee0f687742d1d24756938fa46f282f9`  
		Last Modified: Fri, 13 Nov 2026 21:48:14 GMT  
		Size: 2.1 MB (2121648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b8696e9d23e0694e08a03f1126198624d2081f97470f7642b9653943e5b69a0`  
		Last Modified: Fri, 13 Nov 2026 21:48:14 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json
