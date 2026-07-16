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
$ docker pull logstash@sha256:9042d73640c61daedc8f67a6d21772536c89839e2f18cebc4ad8bf42f08b874b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.3.7` - linux; amd64

```console
$ docker pull logstash@sha256:8fcaed3e5b33cdd030d61ac915f194ac76b522058666a4a9e52b036f1e43846c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **518.2 MB (518196199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829f7a97211e47f9a80ded289facf03ee5647b3bbda3906877b3abd958cdb075`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:23:58 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:00 GMT
COPY dir:dda677ba051a98116648e1a287f61c3a14228d29afcce98aa2f96b7d97c25f06 in /      
# Wed, 15 Jul 2026 05:24:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:01 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:02 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:22:58Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:22:58Z" "architecture"="x86_64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:22:58Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:23:30 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 16 Jul 2026 00:23:30 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:23:30 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:23:30 GMT
WORKDIR /usr/share
# Thu, 16 Jul 2026 00:23:32 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:24:00 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.3.7-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.3.7 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Thu, 16 Jul 2026 00:24:00 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Thu, 16 Jul 2026 00:24:00 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Thu, 16 Jul 2026 00:24:00 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Thu, 16 Jul 2026 00:24:00 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Thu, 16 Jul 2026 00:24:00 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Thu, 16 Jul 2026 00:24:00 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Thu, 16 Jul 2026 00:24:00 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 00:24:00 GMT
WORKDIR /usr/share/logstash
# Thu, 16 Jul 2026 00:24:00 GMT
USER 1000
# Thu, 16 Jul 2026 00:24:00 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Thu, 16 Jul 2026 00:24:00 GMT
LABEL org.label-schema.build-date=2026-06-24T18:18:56+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.3.7 org.opencontainers.image.created=2026-06-24T18:18:56+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.7 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Thu, 16 Jul 2026 00:24:00 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:691b51a88b43f68e30b03b72dc91f128d79d0f57e72a0657740846396ffcc38d`  
		Last Modified: Thu, 16 Jul 2026 00:24:33 GMT  
		Size: 4.8 MB (4770509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3ca15f124087eebb6ddf05e9059a64b2879d1ee51ed1c21bde9605f88a428dd`  
		Last Modified: Thu, 16 Jul 2026 00:24:41 GMT  
		Size: 472.5 MB (472472814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae3759c2974c0d817e48a2e5da331e6053645cc4809f74b8606ad98fe9bb979`  
		Last Modified: Thu, 16 Jul 2026 00:24:33 GMT  
		Size: 6.3 KB (6295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd86651a9c83b2fc62c8189b042e1f25199b82cbba432e829e28462b5a5cd44f`  
		Last Modified: Thu, 16 Jul 2026 00:24:33 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9622fa41743fe766f84535d86f171ca0bb150db09385c7856aabd96f3de2e7ea`  
		Last Modified: Thu, 16 Jul 2026 00:24:34 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b288527e9645e4b928939d0cf68dd60e568638a01cf9060631ce1f0be20de3ab`  
		Last Modified: Thu, 16 Jul 2026 00:24:34 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b2bee27910659e9a7f543e6fb511ec439eb238d5ce4ba4658b21dd0368ac18`  
		Last Modified: Thu, 16 Jul 2026 00:24:34 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4694d912e4c05a7b29a34852839c5146601549cc3954f6587f2f7d432d68c1`  
		Last Modified: Thu, 16 Jul 2026 00:24:36 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16ba0f3da3a079acc016134f9c5004e25d7da27aa4c66850657f4494531a09fa`  
		Last Modified: Thu, 16 Jul 2026 00:24:36 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.3.7` - unknown; unknown

```console
$ docker pull logstash@sha256:40f349d52c7bcc07a254aa6d7dea27cee138d8b5341d9e0b88f4918430e4f263
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2139908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9440351473905d8b7967946e86ca8c85bd4d5f3616b49858e68fedb4571017`

```dockerfile
```

-	Layers:
	-	`sha256:c1d4f2e2a7e9338df8c44b256dd52345c5ffe3cd32546f1219365d8839938fef`  
		Last Modified: Thu, 16 Jul 2026 00:24:33 GMT  
		Size: 2.1 MB (2109708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72f861d98801702479cbed7c83013a94fa836a47cceaf3c1658e5b501b903c9a`  
		Last Modified: Thu, 16 Jul 2026 00:24:33 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.3.7` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:9050beda93e34a611ab1ed2d75c40e286ed6c745c22db4817b867ad4d8f3cbb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **514.6 MB (514616940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88bc886ce696e1e80aefd7cb9f7fdec677611d553eb5c86c4618b819e3d92741`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:24:50 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:51 GMT
COPY dir:f7c8e662c3292e2603100c327cf13d8efc9fc2dd911fb477df032cb5542cc0e4 in /      
# Wed, 15 Jul 2026 05:24:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:51 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:51 GMT
COPY dir:ff90d0a81deeceda02ad7ce190c6d799c4c499889c0cc7090bd1e332979d4f07 in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:51 GMT
COPY dir:ff90d0a81deeceda02ad7ce190c6d799c4c499889c0cc7090bd1e332979d4f07 in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:52 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:24:27Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:24:27Z" "architecture"="aarch64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:24:27Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:25:52 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 16 Jul 2026 00:25:52 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:25:52 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:25:52 GMT
WORKDIR /usr/share
# Thu, 16 Jul 2026 00:25:54 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:26:21 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.3.7-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.3.7 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Thu, 16 Jul 2026 00:26:21 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Thu, 16 Jul 2026 00:26:21 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Thu, 16 Jul 2026 00:26:21 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Thu, 16 Jul 2026 00:26:21 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Thu, 16 Jul 2026 00:26:21 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Thu, 16 Jul 2026 00:26:21 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Thu, 16 Jul 2026 00:26:21 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 00:26:21 GMT
WORKDIR /usr/share/logstash
# Thu, 16 Jul 2026 00:26:21 GMT
USER 1000
# Thu, 16 Jul 2026 00:26:21 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Thu, 16 Jul 2026 00:26:21 GMT
LABEL org.label-schema.build-date=2026-06-24T18:18:56+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.3.7 org.opencontainers.image.created=2026-06-24T18:18:56+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.7 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Thu, 16 Jul 2026 00:26:21 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:7ce9fd1dd40cd1b3485743f9ba234221d41bec07d83f53e3336c641264fc8211`  
		Last Modified: Wed, 15 Jul 2026 06:14:31 GMT  
		Size: 38.8 MB (38829586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e5b134116bd1973a92a054f2b80b6c0a617f181419735d73de32aa59ad229a5`  
		Last Modified: Thu, 16 Jul 2026 00:26:58 GMT  
		Size: 4.8 MB (4759850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:222dab35a9746400375ef159bd833412f0ca862b9fdacd0d30e2b2104334af30`  
		Last Modified: Thu, 16 Jul 2026 00:27:07 GMT  
		Size: 470.8 MB (470762763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:864f7a2ff857fce65e4df57d7a58b2a1df4be0c657d2f8caa3fe012908c0eece`  
		Last Modified: Thu, 16 Jul 2026 00:26:58 GMT  
		Size: 6.3 KB (6297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3dafa8a9075837ac351ebfb9f8cdd2ec12981e9a9ef8aacc9c3ad854c159d58`  
		Last Modified: Thu, 16 Jul 2026 00:26:59 GMT  
		Size: 255.2 KB (255184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1577661a9f6afbeddf6e4d252e2d7165cbb780a27c94e9b42e67e2317938347`  
		Last Modified: Thu, 16 Jul 2026 00:27:00 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:073f884ba2a50b1d31f99fa1c00d5e3a630b7760e13bd090403f40bdcb1701af`  
		Last Modified: Thu, 16 Jul 2026 00:27:00 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fdaa292dec6294d7d31f4cda3003dc912bd507bbbc0925362a591d45c35de9d`  
		Last Modified: Thu, 16 Jul 2026 00:27:00 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e995d7274a323d81f36cb630da02e1a0ce78e07cfefe7c0af2da0e490de4a07b`  
		Last Modified: Thu, 16 Jul 2026 00:27:01 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfaba5a565f395ffc079428589435030bd8d8976810235a831edbd58285f90b9`  
		Last Modified: Thu, 16 Jul 2026 00:27:01 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.3.7` - unknown; unknown

```console
$ docker pull logstash@sha256:a4c4c85544db1e2774b99c7b610c165ac7c282dcae18b679eab1f30f6e4f6ef0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec73e244398ec30e576958179e00ce2c9a0c7d1d552525e754e78f72444c8895`

```dockerfile
```

-	Layers:
	-	`sha256:62d3830e3c88fcaa7cff91f3c8671f731a7add815dad261abf88f484306b8f62`  
		Last Modified: Thu, 16 Jul 2026 00:26:59 GMT  
		Size: 2.1 MB (2108496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e69dafce3ab4269ca6b7bfe5cf5e7d7d43f2046a4eb75fa93c3a451e03f40d1c`  
		Last Modified: Thu, 16 Jul 2026 00:26:58 GMT  
		Size: 30.3 KB (30276 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.4.3`

```console
$ docker pull logstash@sha256:52744e5617894d71fd40eb09d2235b8dcb0f744aff7a4f7c34926d77c1ad3d00
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.3` - linux; amd64

```console
$ docker pull logstash@sha256:8111ba0475a38b76d54e7a0fbab3661bcd11a33187681034ccaa055b441d6bb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **524.6 MB (524552315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0301f721cf8af4a80d3d252ed660d39ed6867d0c6953f018a91cb8f72e910da2`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:23:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:23:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:23:58 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:00 GMT
COPY dir:dda677ba051a98116648e1a287f61c3a14228d29afcce98aa2f96b7d97c25f06 in /      
# Wed, 15 Jul 2026 05:24:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:01 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:02 GMT
COPY dir:8a8fa4509eb80e9d68df53eb658ccf201f2a73ba098c783b19ef36fb62e361ca in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:22:58Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:22:58Z" "architecture"="x86_64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:22:58Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:23:52 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 16 Jul 2026 00:23:52 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:23:52 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:23:52 GMT
WORKDIR /usr/share
# Thu, 16 Jul 2026 00:23:54 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:24:15 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.3-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.3 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Thu, 16 Jul 2026 00:24:15 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Thu, 16 Jul 2026 00:24:15 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Thu, 16 Jul 2026 00:24:15 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Thu, 16 Jul 2026 00:24:15 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Thu, 16 Jul 2026 00:24:15 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Thu, 16 Jul 2026 00:24:15 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Thu, 16 Jul 2026 00:24:15 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 00:24:15 GMT
WORKDIR /usr/share/logstash
# Thu, 16 Jul 2026 00:24:15 GMT
USER 1000
# Thu, 16 Jul 2026 00:24:15 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Thu, 16 Jul 2026 00:24:15 GMT
LABEL org.label-schema.build-date=2026-06-16T22:44:15+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.3 org.opencontainers.image.created=2026-06-16T22:44:15+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.3 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Thu, 16 Jul 2026 00:24:15 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:85ac00ffc01922a1ff735f4b98c4a037416b446db655a6efd0ec1c227698c427`  
		Last Modified: Wed, 15 Jul 2026 06:14:24 GMT  
		Size: 40.7 MB (40688137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4557bfc8d4bcec173003a2b3700fe5c5c594cd582dd2d998d4b86a77b1ff160`  
		Last Modified: Thu, 16 Jul 2026 00:24:52 GMT  
		Size: 4.8 MB (4770488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a17747388b99abaadcf07287e1758cf2f5021a65fb0d913eebf0b9b6a3f443`  
		Last Modified: Thu, 16 Jul 2026 00:25:01 GMT  
		Size: 478.8 MB (478828877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a007cef8e8564191df911796df2a831a74af706e35b96d04b723c4d90d877012`  
		Last Modified: Thu, 16 Jul 2026 00:24:52 GMT  
		Size: 6.4 KB (6365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f99337fa0ab5eda8890e73707da9f9e94202430e85109f435dd7eb53368000`  
		Last Modified: Thu, 16 Jul 2026 00:24:52 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89a26a5953958fe2cf45ea5a6c0790111a6fd8ca3ccfac0523333b4a7749aef1`  
		Last Modified: Thu, 16 Jul 2026 00:24:53 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6374f3a9729d1ae26d75a5512353893125cffebc36aedafb8efb40175fcf2f2c`  
		Last Modified: Thu, 16 Jul 2026 00:24:53 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c60983174c3b1b0ac542ce6f723df5e5c6a0e6336009536a3db116447ed123`  
		Last Modified: Thu, 16 Jul 2026 00:24:54 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1614e859946288e87ce931596479c52df838cf201cb8fc2e7289a93dce53af`  
		Last Modified: Thu, 16 Jul 2026 00:24:55 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c85217749687af10251ab8f811d49fb0170f402cf902f61c02c4143f9fc940`  
		Last Modified: Thu, 16 Jul 2026 00:24:55 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.3` - unknown; unknown

```console
$ docker pull logstash@sha256:d1514b8858f35d9c90b2e562747a710c3431b77e171e483e9576b4fbb65c942c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2146417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a49d0375017d8157627969755588fec7952261bf651d578db422d36c6dbd74b`

```dockerfile
```

-	Layers:
	-	`sha256:e27753d7b5b3387e6013f57c7dd9df1a01d520d5febcd5dd822d4af68bb931f5`  
		Last Modified: Thu, 16 Jul 2026 00:24:52 GMT  
		Size: 2.1 MB (2116217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ac59dff785e685e1a11fb340beeb48010b039a6e112b1053fa2ebb58bf8d9c6`  
		Last Modified: Thu, 16 Jul 2026 00:24:52 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.3` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:1656ae4ccaf80ae48d7d57c00886feab714c5000e5f0b56ba3f31866fef5de8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **521.0 MB (520966590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8608a60b1db8dd914a5a3c7f527933f7af4d099ea1eca633539c46cefe797bc5`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:24:50 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 15 Jul 2026 05:24:50 GMT
ENV container oci
# Wed, 15 Jul 2026 05:24:51 GMT
COPY dir:f7c8e662c3292e2603100c327cf13d8efc9fc2dd911fb477df032cb5542cc0e4 in /      
# Wed, 15 Jul 2026 05:24:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:24:51 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:24:51 GMT
COPY dir:ff90d0a81deeceda02ad7ce190c6d799c4c499889c0cc7090bd1e332979d4f07 in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:24:51 GMT
COPY dir:ff90d0a81deeceda02ad7ce190c6d799c4c499889c0cc7090bd1e332979d4f07 in /root/buildinfo/      
# Wed, 15 Jul 2026 05:24:52 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:24:27Z" "org.opencontainers.image.revision"="16f88afee7519f22ef5135afbe7398092df3f543" "build-date"="2026-07-15T05:24:27Z" "architecture"="aarch64" "vcs-ref"="16f88afee7519f22ef5135afbe7398092df3f543" "vcs-type"="git" "release"="1784092902"org.opencontainers.image.created=2026-07-15T05:24:27Z,org.opencontainers.image.revision=16f88afee7519f22ef5135afbe7398092df3f543
# Thu, 16 Jul 2026 00:26:14 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 16 Jul 2026 00:26:14 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:26:14 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 16 Jul 2026 00:26:14 GMT
WORKDIR /usr/share
# Thu, 16 Jul 2026 00:26:16 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:27:10 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.3-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.3 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Thu, 16 Jul 2026 00:27:10 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Thu, 16 Jul 2026 00:27:10 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Thu, 16 Jul 2026 00:27:10 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Thu, 16 Jul 2026 00:27:10 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Thu, 16 Jul 2026 00:27:10 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Thu, 16 Jul 2026 00:27:10 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Thu, 16 Jul 2026 00:27:10 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 00:27:10 GMT
WORKDIR /usr/share/logstash
# Thu, 16 Jul 2026 00:27:10 GMT
USER 1000
# Thu, 16 Jul 2026 00:27:10 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Thu, 16 Jul 2026 00:27:10 GMT
LABEL org.label-schema.build-date=2026-06-16T22:44:15+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.3 org.opencontainers.image.created=2026-06-16T22:44:15+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.3 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Thu, 16 Jul 2026 00:27:10 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:7ce9fd1dd40cd1b3485743f9ba234221d41bec07d83f53e3336c641264fc8211`  
		Last Modified: Wed, 15 Jul 2026 06:14:31 GMT  
		Size: 38.8 MB (38829586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58b3649e9940b46c9b1247491c8d4b8715da484617e9a0c26d23fe6f9c24dcf1`  
		Last Modified: Thu, 16 Jul 2026 00:27:49 GMT  
		Size: 4.8 MB (4759809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33d28d76c2d9783832654930bdc1d192ae061e4e03963c291947ad0efbceb331`  
		Last Modified: Thu, 16 Jul 2026 00:27:57 GMT  
		Size: 477.1 MB (477112386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6184a6e925f63d4c7b85fc27d3eafe73669226549353431de76576e1164c61ca`  
		Last Modified: Thu, 16 Jul 2026 00:27:49 GMT  
		Size: 6.4 KB (6366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd262b70fcc51365147d865aaad2442842e8bf21b513ef56dfddde933688dea4`  
		Last Modified: Thu, 16 Jul 2026 00:27:50 GMT  
		Size: 255.2 KB (255183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0decec805f02f272f4d170e912afb1662618ce6d9695aa2070ed5a7f7413b0a8`  
		Last Modified: Thu, 16 Jul 2026 00:27:51 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb91e10cc64b1302d7719f0753f19b5a9f0453226c0bf995efee9fb7b177c881`  
		Last Modified: Thu, 16 Jul 2026 00:27:51 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7d6c9c8ab96bb8b2298d8d8dd8f5dd766718445de1610b648a3d5ff08fb388b`  
		Last Modified: Thu, 16 Jul 2026 00:27:51 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ce893edbd9631a228e9beaa59a12eedbb399c9d299eda81321fde9e815bf331`  
		Last Modified: Thu, 16 Jul 2026 00:27:52 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80bf4725898e90feccb4a66ce1d4fb796a2d92ffd32acef19aea094be83ed18f`  
		Last Modified: Thu, 16 Jul 2026 00:27:52 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.3` - unknown; unknown

```console
$ docker pull logstash@sha256:9555d8022706a61ec48595bee0927b39dc3641fa034c169377520ef3091e64ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2145282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d355a685e09bbbc6a39484b627d7c019c8f0dc99fd1709134cf1a50dcd4f8fad`

```dockerfile
```

-	Layers:
	-	`sha256:9ab32ee4ff6a45e0451446a824f8bcdb8f99b5131a87d56935620083336cf2d0`  
		Last Modified: Thu, 16 Jul 2026 00:27:49 GMT  
		Size: 2.1 MB (2115005 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89b8bf603d0acda2bacbaf3b92004baebdd50f6ff82d163f86d25e2f504b7982`  
		Last Modified: Thu, 16 Jul 2026 00:27:49 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json
