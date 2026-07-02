<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:8.19.18`](#logstash81918)
-	[`logstash:9.3.7`](#logstash937)
-	[`logstash:9.4.3`](#logstash943)

## `logstash:8.19.18`

```console
$ docker pull logstash@sha256:e280b8d3184fc7fc6fe2ecdff0cfa6206ede3dd49f3fea062ce1fc07a04d8dd5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:8.19.18` - linux; amd64

```console
$ docker pull logstash@sha256:c4a55406b310f8cd9bec4f996fe14ef3da56d0aa65a07c1f4bfb154e2ee8c8da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **536.4 MB (536363261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e9dc362279376f2fcf9f91cb082730e647204a440ad79212ff0670c68ec2773`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:30:14 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Thu, 02 Jul 2026 02:30:15 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Thu, 02 Jul 2026 02:30:39 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.18-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.18 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Thu, 02 Jul 2026 02:30:39 GMT
WORKDIR /usr/share/logstash
# Thu, 02 Jul 2026 02:30:39 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 02 Jul 2026 02:30:39 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:30:39 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Thu, 02 Jul 2026 02:30:39 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Thu, 02 Jul 2026 02:30:39 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Thu, 02 Jul 2026 02:30:39 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Thu, 02 Jul 2026 02:30:39 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:30:40 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Thu, 02 Jul 2026 02:30:40 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Thu, 02 Jul 2026 02:30:40 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Thu, 02 Jul 2026 02:30:40 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 02:30:40 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Thu, 02 Jul 2026 02:30:40 GMT
USER 1000
# Thu, 02 Jul 2026 02:30:40 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Thu, 02 Jul 2026 02:30:40 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.18 org.opencontainers.image.version=8.19.18 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-06-24T20:36:37+00:00 org.opencontainers.image.created=2026-06-24T20:36:37+00:00
# Thu, 02 Jul 2026 02:30:40 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa9c8e0372bdd0b4b7abd577a5a46b7e0c4680e732aedaff007aed958d80649f`  
		Last Modified: Thu, 02 Jul 2026 02:31:15 GMT  
		Size: 48.3 MB (48314313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af437dc3abb865fb30fa0c30ca190cb91be2c92341b060d97005411b78b26e0d`  
		Last Modified: Thu, 02 Jul 2026 02:31:13 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57dcce1d243631229abb7c71c42a5868a686df862f36f2f0b15cf7c21db39f64`  
		Last Modified: Thu, 02 Jul 2026 02:31:23 GMT  
		Size: 458.0 MB (458045601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee205b29d76ac20340d1bca0b8e61a4a800930e9b748df446c1566c2cec0293b`  
		Last Modified: Thu, 02 Jul 2026 02:31:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be408c1088036224a85a424d978f335a8b4be9b905ef8aea2864783ee13b6d5`  
		Last Modified: Thu, 02 Jul 2026 02:31:14 GMT  
		Size: 1.6 KB (1579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2a3029aa46cd39991a8414bcd926e0bf427b444ddccb7a6ca6ae138978b3243`  
		Last Modified: Thu, 02 Jul 2026 02:31:14 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb156f255bf550af75de440f3f9cc118e33366aea54094a14e9b61602f0be076`  
		Last Modified: Thu, 02 Jul 2026 02:31:16 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7010d56f939f4cc9f6918a2c3b44f247b5c990512f8de8e84efe8e19f3adadaf`  
		Last Modified: Thu, 02 Jul 2026 02:31:15 GMT  
		Size: 6.3 KB (6297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12f9bfdf136f062b1f642e1cf643f07a165a8dbb861c369e6b21c7b29f533d74`  
		Last Modified: Thu, 02 Jul 2026 02:31:17 GMT  
		Size: 255.2 KB (255190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f7491c538c1458e1e5e9d2d6641551c40c1caaddcbd8d3c6b3c804808a0897`  
		Last Modified: Thu, 02 Jul 2026 02:31:17 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afc4ee13e48af6b6cee5acec3eff0f98b137676fad2eda9f031891c9e96c572f`  
		Last Modified: Thu, 02 Jul 2026 02:31:17 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.18` - unknown; unknown

```console
$ docker pull logstash@sha256:0f3da71bf10f738ebef7f3d220d876361b64672c0e0198ca99d6f9e7ecb30da7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c77249e465454ddae9342fd2c972f4b6e76bdda0911df23deccfd69711730582`

```dockerfile
```

-	Layers:
	-	`sha256:409d8c0a0479e18016fd334b0b1660fee6e294f0782595203f70c1353b16b02e`  
		Last Modified: Thu, 02 Jul 2026 02:31:13 GMT  
		Size: 3.7 MB (3678264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7527f51470f37c084836e5f9d4b2604bdb392469ccb57e4819e3d140ec25c989`  
		Last Modified: Thu, 02 Jul 2026 02:31:13 GMT  
		Size: 35.8 KB (35845 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:8.19.18` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:8fe78f51b588d8c03c74792f9c4ee36a0af73430954548223fd68cd08a802d1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **535.1 MB (535075430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b99dfa70fde5ccb81b86c439b0a5cbe165bd30bcdec6bda7ed4430beef5f9f3`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:24 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Thu, 02 Jul 2026 02:29:24 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Thu, 02 Jul 2026 02:30:06 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.18-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.18 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Thu, 02 Jul 2026 02:30:06 GMT
WORKDIR /usr/share/logstash
# Thu, 02 Jul 2026 02:30:06 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 02 Jul 2026 02:30:06 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:30:06 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Thu, 02 Jul 2026 02:30:06 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Thu, 02 Jul 2026 02:30:06 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Thu, 02 Jul 2026 02:30:06 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Thu, 02 Jul 2026 02:30:06 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:30:06 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Thu, 02 Jul 2026 02:30:06 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Thu, 02 Jul 2026 02:30:06 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Thu, 02 Jul 2026 02:30:06 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 02:30:06 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Thu, 02 Jul 2026 02:30:06 GMT
USER 1000
# Thu, 02 Jul 2026 02:30:06 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Thu, 02 Jul 2026 02:30:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.18 org.opencontainers.image.version=8.19.18 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-06-24T20:36:37+00:00 org.opencontainers.image.created=2026-06-24T20:36:37+00:00
# Thu, 02 Jul 2026 02:30:06 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ff246ce6de959b4ad94ab0162adf8a13a0350944441751d6979c7ccf0908ac`  
		Last Modified: Thu, 02 Jul 2026 02:30:48 GMT  
		Size: 49.6 MB (49574842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab08c41ef92bfa5f43e0c1beb0afd2010afc637ce06c1bca45a2acc701383b3`  
		Last Modified: Thu, 02 Jul 2026 02:30:46 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa53e0061443b97b7661a9aff3c00f4258ae23d55856ce1815080402814a9c61`  
		Last Modified: Thu, 02 Jul 2026 02:30:56 GMT  
		Size: 456.3 MB (456348664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c92015ac0233ba891de2c09a6083e93f872d8a2414e9b3b389c1e40cd9908417`  
		Last Modified: Thu, 02 Jul 2026 02:30:46 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ef4debb87ef2128e74b72994c7fcd32da3d7e45896b4ae0825f6f4531dddc10`  
		Last Modified: Thu, 02 Jul 2026 02:30:47 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bcbfb0893cfd40240480d3d4650b1438b38f694bab85e48da3be3c6270ce56c`  
		Last Modified: Thu, 02 Jul 2026 02:30:47 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:529248db2add404f883944a50498736ddb28315c12729dcb13b9cf2739f8e5dc`  
		Last Modified: Thu, 02 Jul 2026 02:30:49 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ef73dac077bd5974b3f14085b06a2700f2083224d052280980d7b1577a392e0`  
		Last Modified: Thu, 02 Jul 2026 02:30:49 GMT  
		Size: 6.3 KB (6298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:290d6257af8925467df52266d9e4b6d127b374630e72490e45fab0e82ffa8c5b`  
		Last Modified: Thu, 02 Jul 2026 02:30:50 GMT  
		Size: 255.2 KB (255187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca1f204da60e8369ebed136d27d841619db3591aad0d63dbb3c1de4d5c5d776`  
		Last Modified: Thu, 02 Jul 2026 02:30:50 GMT  
		Size: 356.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5a922feb4e5d81fb707900884caa3978b6cb46978d5ae67b6985e6cf3189e1`  
		Last Modified: Thu, 02 Jul 2026 02:30:50 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.18` - unknown; unknown

```console
$ docker pull logstash@sha256:12a03b6a99ab0bac123f9a06bdc4dc24c98b1d4f916044270516ad572e75803c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7f4d44b11825e28ceb97181cd34f2ee306dd5f74f216730892b81304c5792ed`

```dockerfile
```

-	Layers:
	-	`sha256:5099dfa1750d85551fa5091ded987209f287b6df618d5f1cc5f01c2a3e3ec026`  
		Last Modified: Thu, 02 Jul 2026 02:30:46 GMT  
		Size: 3.7 MB (3678689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b00fd7d5d7df3de460128ea59e18a0e4b343a3176130b4b4b9f4839e62f1711f`  
		Last Modified: Thu, 02 Jul 2026 02:30:46 GMT  
		Size: 36.0 KB (35973 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.3.7`

```console
$ docker pull logstash@sha256:57ac1a16bb8aaae1c34372c974347c5ddcd5a98fb1e7841927a26c575c2087b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.3.7` - linux; amd64

```console
$ docker pull logstash@sha256:7490e6f448a49aee8bf09603194b7a3dd66aea1a54e588295386d7253a94bf75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **518.2 MB (518201289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f059a6e0eff21b669d148ffafdc989eb7873b78078003e8fdadf746eafd45e6`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 30 Jun 2026 05:29:32 GMT
ENV container oci
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:efac128f83583a6247aea2e1de3f354267a91fa9afbb47889a2bebf40b22f4af in /      
# Tue, 30 Jun 2026 05:29:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 30 Jun 2026 05:29:33 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:041b210b17febe96db30cba4f2b22eb7e05f976482f5a304098344e035b1cad8 in /usr/share/buildinfo/      
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:041b210b17febe96db30cba4f2b22eb7e05f976482f5a304098344e035b1cad8 in /root/buildinfo/      
# Tue, 30 Jun 2026 05:29:33 GMT
LABEL "org.opencontainers.image.created"="2026-06-30T05:29:15Z" "org.opencontainers.image.revision"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "build-date"="2026-06-30T05:29:15Z" "architecture"="x86_64" "vcs-ref"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "vcs-type"="git" "release"="1782797275"org.opencontainers.image.created=2026-06-30T05:29:15Z,org.opencontainers.image.revision=9d52f7ccf5e43749249b95c398cdcb9020bc399d
# Wed, 01 Jul 2026 00:23:03 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 01 Jul 2026 00:23:03 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:23:03 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 01 Jul 2026 00:23:03 GMT
WORKDIR /usr/share
# Wed, 01 Jul 2026 00:23:05 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.3.7-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.3.7 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
WORKDIR /usr/share/logstash
# Wed, 01 Jul 2026 00:23:59 GMT
USER 1000
# Wed, 01 Jul 2026 00:23:59 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 01 Jul 2026 00:23:59 GMT
LABEL org.label-schema.build-date=2026-06-24T18:18:56+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.3.7 org.opencontainers.image.created=2026-06-24T18:18:56+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.7 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 01 Jul 2026 00:23:59 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:8af57f051b373375a1be8f892172089259ad624ed8452291226c539055e60228`  
		Last Modified: Tue, 30 Jun 2026 06:57:41 GMT  
		Size: 40.7 MB (40689427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b455ae980692892b3e0efe527d6e822d812bc4d479782847a5b693d67aece260`  
		Last Modified: Wed, 01 Jul 2026 00:24:37 GMT  
		Size: 4.8 MB (4774137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fbf80d5c5c7a2092996282f1468a030a91c53d8b2e992e17b28e8aaff55c872`  
		Last Modified: Wed, 01 Jul 2026 00:24:48 GMT  
		Size: 472.5 MB (472472981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc81b43fba389121c17be55fd8ac23906e46c186f96bd3263733dafe6ef31589`  
		Last Modified: Wed, 01 Jul 2026 00:24:37 GMT  
		Size: 6.3 KB (6295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b7bed0dd74cc13600f5bded195fca1001a109ccad8bdfda40c585d9ce1380d`  
		Last Modified: Wed, 01 Jul 2026 00:24:37 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9db0f16ffc7775440a1dcf13f11be14131b2a485d41756d6271f6725b74b4799`  
		Last Modified: Wed, 01 Jul 2026 00:24:38 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8235bec4b55a9ce150494b74885628d678a700cf2305e8122ff939ef8de82c6`  
		Last Modified: Wed, 01 Jul 2026 00:24:38 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc343e6ce2003e3f0006b8e83d640ffa276fd1bb18aa535866aa3288e4799dc`  
		Last Modified: Wed, 01 Jul 2026 00:24:38 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff41270b8a94f932c443e850353cf228b9f5903d4e94d05f8e1cf4620d19c93d`  
		Last Modified: Wed, 01 Jul 2026 00:24:39 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49328664d1c73df48f04165f650d757037374dc48a4287dc79420a3b12714085`  
		Last Modified: Wed, 01 Jul 2026 00:24:40 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.3.7` - unknown; unknown

```console
$ docker pull logstash@sha256:5e1934369f9b1dbc5313e8d0b12346fdde8cdd48712103fc1507e55cc57be5a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2139907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4207115bea31c3642e7cbd721a00c1470000a22504da4c642f5c921cca62c5aa`

```dockerfile
```

-	Layers:
	-	`sha256:c6473d0a5a477b5292d2d71732c4047a197fbba383c533f38a853d04efe5ee56`  
		Last Modified: Wed, 01 Jul 2026 00:24:37 GMT  
		Size: 2.1 MB (2109708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b72e7539e4a840e159f124312cf9f2df4b826a8374ec15c56bad085c91666731`  
		Last Modified: Wed, 01 Jul 2026 00:24:36 GMT  
		Size: 30.2 KB (30199 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.3.7` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:93333b897b5a715960282eb9a9f0e07bd150096a9e2a4374a0ad92f54adaf0b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **514.6 MB (514634619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f928af6ae1ac872279a0696a62c8be3a68cee920bccbf4d7fe74260a38cafdcc`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 30 Jun 2026 05:31:32 GMT
ENV container oci
# Tue, 30 Jun 2026 05:31:33 GMT
COPY dir:33d9a0597e0a229533d40301027624dd670560f4cec941a76f227790e1dd51ed in /      
# Tue, 30 Jun 2026 05:31:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 30 Jun 2026 05:31:33 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 05:31:33 GMT
COPY dir:a896e70442063b6b2aecdf0aac7a09d8b18a0772ea7b0aee60c2830a8ad0b28a in /usr/share/buildinfo/      
# Tue, 30 Jun 2026 05:31:33 GMT
COPY dir:a896e70442063b6b2aecdf0aac7a09d8b18a0772ea7b0aee60c2830a8ad0b28a in /root/buildinfo/      
# Tue, 30 Jun 2026 05:31:34 GMT
LABEL "org.opencontainers.image.created"="2026-06-30T05:31:10Z" "org.opencontainers.image.revision"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "build-date"="2026-06-30T05:31:10Z" "architecture"="aarch64" "vcs-ref"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "vcs-type"="git" "release"="1782797275"org.opencontainers.image.created=2026-06-30T05:31:10Z,org.opencontainers.image.revision=9d52f7ccf5e43749249b95c398cdcb9020bc399d
# Wed, 01 Jul 2026 00:14:30 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 01 Jul 2026 00:14:30 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:14:30 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 01 Jul 2026 00:14:30 GMT
WORKDIR /usr/share
# Wed, 01 Jul 2026 00:14:32 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:15:04 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.3.7-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.3.7 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 01 Jul 2026 00:15:04 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 01 Jul 2026 00:15:04 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 01 Jul 2026 00:15:04 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 01 Jul 2026 00:15:04 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 01 Jul 2026 00:15:04 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 01 Jul 2026 00:15:04 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 01 Jul 2026 00:15:04 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 01 Jul 2026 00:15:04 GMT
WORKDIR /usr/share/logstash
# Wed, 01 Jul 2026 00:15:04 GMT
USER 1000
# Wed, 01 Jul 2026 00:15:04 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 01 Jul 2026 00:15:04 GMT
LABEL org.label-schema.build-date=2026-06-24T18:18:56+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.3.7 org.opencontainers.image.created=2026-06-24T18:18:56+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.7 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 01 Jul 2026 00:15:04 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:96c16ad0505847764761c5c4d0a82cd8a619f3e93c57f6a4b081cb9d4d0dd3e7`  
		Last Modified: Tue, 30 Jun 2026 06:59:10 GMT  
		Size: 38.8 MB (38848656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b87023e8d623481f8fd36b3793b2e3a3838c730e65d9382621bfde252b35e2`  
		Last Modified: Wed, 01 Jul 2026 00:15:43 GMT  
		Size: 4.8 MB (4758724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2a28985141a392993a61d7a8dd5c286fa4d09630641097b50efdf926dc8b13b`  
		Last Modified: Wed, 01 Jul 2026 00:15:53 GMT  
		Size: 470.8 MB (470762490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:163bd7a5d393b76e46fd3f4a34f043e6347acc0665bdbda8b1af8c6519863051`  
		Last Modified: Wed, 01 Jul 2026 00:15:43 GMT  
		Size: 6.3 KB (6300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e697e8e2f6104c0362db5a98f617874fcf8ffae3568acd4043b33d7042198ade`  
		Last Modified: Wed, 01 Jul 2026 00:15:43 GMT  
		Size: 255.2 KB (255189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:768ef9cc9ac146d21b1fd500449107dca147b65b0c9a1e217212a6a3595a42b2`  
		Last Modified: Wed, 01 Jul 2026 00:15:44 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17df8ed4b75a5efac6106bef2715dbaeb7095eb53b13368c5224a7b859d039a6`  
		Last Modified: Wed, 01 Jul 2026 00:15:45 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b1fe5b6a635d4e39786f27cca9a9d28b1dec5c1996c72f7a601bbfa01949516`  
		Last Modified: Wed, 01 Jul 2026 00:15:45 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a638944cb7ae9e1b9ef2aea4884c657404d4386af80c19bed70758d517d46031`  
		Last Modified: Wed, 01 Jul 2026 00:15:46 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c562910cf599f3b616007046cb6d6338a4846fee584cf52acd36275fa7c1b4b4`  
		Last Modified: Wed, 01 Jul 2026 00:15:46 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.3.7` - unknown; unknown

```console
$ docker pull logstash@sha256:9d722ef25f6d64006f05a5570260cb092498f0b5fe5fe78ee5c7ae66067a9c79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2a69d6a09fac8105609db8f644fc18df12ea42c0240415297434e4dad86aca`

```dockerfile
```

-	Layers:
	-	`sha256:c6388bdc31fa69cdcc340cdb5b6bad310d4f37466ec8ff1910a9df65b771fd79`  
		Last Modified: Wed, 01 Jul 2026 00:15:43 GMT  
		Size: 2.1 MB (2108496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d65dbcdd25b5b34c3590103d7f5851297a0c99a510511dcbf0b16839b0d3683`  
		Last Modified: Wed, 01 Jul 2026 00:15:43 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.4.3`

```console
$ docker pull logstash@sha256:f657cab884b79f8ee01f5aae0ffb9f04feae9608954afa289d58b4f769cfdfe1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.3` - linux; amd64

```console
$ docker pull logstash@sha256:0042814ca5e7e27ff67918aee2a5700aecf7b85d37c6ec6986e7f1d4991f4b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **524.6 MB (524557075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeb4f04a081fcc5cc80a24ac8561357e86e7a9190dc8fbb3ca9ee5cd8a9b90bb`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 30 Jun 2026 05:29:32 GMT
ENV container oci
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:efac128f83583a6247aea2e1de3f354267a91fa9afbb47889a2bebf40b22f4af in /      
# Tue, 30 Jun 2026 05:29:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 30 Jun 2026 05:29:33 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:041b210b17febe96db30cba4f2b22eb7e05f976482f5a304098344e035b1cad8 in /usr/share/buildinfo/      
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:041b210b17febe96db30cba4f2b22eb7e05f976482f5a304098344e035b1cad8 in /root/buildinfo/      
# Tue, 30 Jun 2026 05:29:33 GMT
LABEL "org.opencontainers.image.created"="2026-06-30T05:29:15Z" "org.opencontainers.image.revision"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "build-date"="2026-06-30T05:29:15Z" "architecture"="x86_64" "vcs-ref"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "vcs-type"="git" "release"="1782797275"org.opencontainers.image.created=2026-06-30T05:29:15Z,org.opencontainers.image.revision=9d52f7ccf5e43749249b95c398cdcb9020bc399d
# Wed, 01 Jul 2026 00:23:03 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 01 Jul 2026 00:23:03 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:23:03 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 01 Jul 2026 00:23:03 GMT
WORKDIR /usr/share
# Wed, 01 Jul 2026 00:23:05 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.3-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.3 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
WORKDIR /usr/share/logstash
# Wed, 01 Jul 2026 00:23:59 GMT
USER 1000
# Wed, 01 Jul 2026 00:23:59 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 01 Jul 2026 00:23:59 GMT
LABEL org.label-schema.build-date=2026-06-16T22:44:15+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.3 org.opencontainers.image.created=2026-06-16T22:44:15+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.3 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 01 Jul 2026 00:23:59 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:8af57f051b373375a1be8f892172089259ad624ed8452291226c539055e60228`  
		Last Modified: Tue, 30 Jun 2026 06:57:41 GMT  
		Size: 40.7 MB (40689427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe08bb4a3c12882f3b656607a4bb71c306791f67add973771ddc6a8763dc1310`  
		Last Modified: Wed, 01 Jul 2026 00:24:34 GMT  
		Size: 4.8 MB (4774107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032dd162b6ce2a8390d4e8e5d1641b524a0e83f26179e2f838fa70e6662b5fcc`  
		Last Modified: Wed, 01 Jul 2026 00:24:44 GMT  
		Size: 478.8 MB (478828724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65edcc7d06b21d923caa9b303ce3b02099d6d0f8401dd20fa0937321fa212eb6`  
		Last Modified: Wed, 01 Jul 2026 00:24:34 GMT  
		Size: 6.4 KB (6367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c796229bd25ae061007c787c6db937ee82779fe4c6b0d4f238c5d38c8debf0e`  
		Last Modified: Wed, 01 Jul 2026 00:24:34 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b58fe7be1406a005bb3715946cd2428746ccebb6ca2636a91bd667c092283aa8`  
		Last Modified: Wed, 01 Jul 2026 00:24:35 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:047cd934d7355879e794526cf3bc84db830ecd1740785b3833abadbb5a20ff97`  
		Last Modified: Wed, 01 Jul 2026 00:24:36 GMT  
		Size: 1.6 KB (1579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed596c03fc6cb043bcd607cb6efc47da60a093728e24756b0f2ff98ff7061d15`  
		Last Modified: Wed, 01 Jul 2026 00:24:36 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b884d1263c111f8e5c8492614c9ec7e94d47408c49003040194ab8d2e6d73d`  
		Last Modified: Wed, 01 Jul 2026 00:24:37 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd2c455a3d53f00ef4a5e33294c45e38696d5cec19cdf88a3860b17eb19aa40`  
		Last Modified: Wed, 01 Jul 2026 00:24:37 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.3` - unknown; unknown

```console
$ docker pull logstash@sha256:4ef721fd60dcbc88d0f496e940fb3df2080b30262eae48e13aa512f60fa70e7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2146417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57a2189a8098f7054c1665b5a2ba7cce64fbc1f76d20d15ba8d4ad8c335dc2cb`

```dockerfile
```

-	Layers:
	-	`sha256:223d7751792dc7470e14d6c7ee68e73362bfb56d63026a793219c00c14ed28a3`  
		Last Modified: Wed, 01 Jul 2026 00:24:34 GMT  
		Size: 2.1 MB (2116217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2c8a92102e3cbc609439476b9922ad4f77845130b6f8088b0ace7861c251b0e`  
		Last Modified: Wed, 01 Jul 2026 00:24:34 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.3` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:706c063d523a756e9928268642a919a934a605673c72b2ae98fa4fabaaef525b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **521.0 MB (520984208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2764f8381c3f2bd3cece9e7df89096a8d5e47e30da695ad7f4f2a412b3ec4963`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 30 Jun 2026 05:31:32 GMT
ENV container oci
# Tue, 30 Jun 2026 05:31:33 GMT
COPY dir:33d9a0597e0a229533d40301027624dd670560f4cec941a76f227790e1dd51ed in /      
# Tue, 30 Jun 2026 05:31:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 30 Jun 2026 05:31:33 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 05:31:33 GMT
COPY dir:a896e70442063b6b2aecdf0aac7a09d8b18a0772ea7b0aee60c2830a8ad0b28a in /usr/share/buildinfo/      
# Tue, 30 Jun 2026 05:31:33 GMT
COPY dir:a896e70442063b6b2aecdf0aac7a09d8b18a0772ea7b0aee60c2830a8ad0b28a in /root/buildinfo/      
# Tue, 30 Jun 2026 05:31:34 GMT
LABEL "org.opencontainers.image.created"="2026-06-30T05:31:10Z" "org.opencontainers.image.revision"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "build-date"="2026-06-30T05:31:10Z" "architecture"="aarch64" "vcs-ref"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "vcs-type"="git" "release"="1782797275"org.opencontainers.image.created=2026-06-30T05:31:10Z,org.opencontainers.image.revision=9d52f7ccf5e43749249b95c398cdcb9020bc399d
# Wed, 01 Jul 2026 00:15:46 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 01 Jul 2026 00:15:46 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:15:46 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 01 Jul 2026 00:15:46 GMT
WORKDIR /usr/share
# Wed, 01 Jul 2026 00:15:48 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:16:44 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.3-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.3 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 01 Jul 2026 00:16:44 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 01 Jul 2026 00:16:44 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 01 Jul 2026 00:16:44 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 01 Jul 2026 00:16:44 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 01 Jul 2026 00:16:44 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 01 Jul 2026 00:16:44 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 01 Jul 2026 00:16:44 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 01 Jul 2026 00:16:44 GMT
WORKDIR /usr/share/logstash
# Wed, 01 Jul 2026 00:16:44 GMT
USER 1000
# Wed, 01 Jul 2026 00:16:44 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 01 Jul 2026 00:16:44 GMT
LABEL org.label-schema.build-date=2026-06-16T22:44:15+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.3 org.opencontainers.image.created=2026-06-16T22:44:15+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.3 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 01 Jul 2026 00:16:44 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:96c16ad0505847764761c5c4d0a82cd8a619f3e93c57f6a4b081cb9d4d0dd3e7`  
		Last Modified: Tue, 30 Jun 2026 06:59:10 GMT  
		Size: 38.8 MB (38848656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acf980fe7d52063db3a2998140be9dc8aa4ca0c804fc6b02f97b4e46226954b`  
		Last Modified: Wed, 01 Jul 2026 00:17:24 GMT  
		Size: 4.8 MB (4758748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d437449610f1dad204f4902639672ccd8821f55e479283064c15dbabf4e715b1`  
		Last Modified: Wed, 01 Jul 2026 00:17:36 GMT  
		Size: 477.1 MB (477112003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:685a6c0c8f764358257ad8250ae67d9cb5a72086139f68a21ebd8e397f13aa2a`  
		Last Modified: Wed, 01 Jul 2026 00:17:24 GMT  
		Size: 6.4 KB (6364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4769b3fd440549d2a3ca6edf3a8980d57d456885c68fb5ff82ac9b0ce33475e9`  
		Last Modified: Wed, 01 Jul 2026 00:17:24 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11e1ba677e22e6a8e5d872187f068d67e2311e55f6a35a360ffb2722fa29e789`  
		Last Modified: Wed, 01 Jul 2026 00:17:26 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70517f254b4fd86629dcb4317008e40703fca0f9d07468659896a8dcfb03416d`  
		Last Modified: Wed, 01 Jul 2026 00:17:25 GMT  
		Size: 1.6 KB (1574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379d2a85e62fd63cd5575b089e0adc2a37523b88aa125e643d75f6c832bb25a0`  
		Last Modified: Wed, 01 Jul 2026 00:17:26 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b125ab07d1cd030d8b294ed0e0e52b48fadf25474bb76aa1cd619f5cddea92`  
		Last Modified: Wed, 01 Jul 2026 00:17:27 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b640bf5a6bc8295ec99b5aa9cc26df997911c5a4539a46a108c26a4e1e7dce01`  
		Last Modified: Wed, 01 Jul 2026 00:17:27 GMT  
		Size: 710.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.3` - unknown; unknown

```console
$ docker pull logstash@sha256:1e50856fc471b8e868efa243b8ed849a88ac0a7e1ad86c62f9cb250205683af4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2145281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:462970fa95fff1a75c51a4d0f07639f40ac6a9b82290d5eabb37321e7d3619ea`

```dockerfile
```

-	Layers:
	-	`sha256:abd31346da2736ff8f1b8dd9f6ad1b6b0b90e441bd6f82ed7e3e23c8fbceea8f`  
		Last Modified: Wed, 01 Jul 2026 00:17:24 GMT  
		Size: 2.1 MB (2115005 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7aa419c74ed3007763b6b6547957845464c8fbd072ebc33e48488fba15cbca41`  
		Last Modified: Wed, 01 Jul 2026 00:17:24 GMT  
		Size: 30.3 KB (30276 bytes)  
		MIME: application/vnd.in-toto+json
