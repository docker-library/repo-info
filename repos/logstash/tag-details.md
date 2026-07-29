<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:8.19.19`](#logstash81919)
-	[`logstash:9.3.8`](#logstash938)
-	[`logstash:9.4.4`](#logstash944)

## `logstash:8.19.19`

```console
$ docker pull logstash@sha256:007ce1b4c00229a7e6bdd8752d1495bf10c7fc73615e837bf445c46ed287e476
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:8.19.19` - linux; amd64

```console
$ docker pull logstash@sha256:79d0735b822b0b319552d79502f9d39ba7f2420971c29cbbe4ee55f04e516ec6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **528.8 MB (528844471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4a4f87ff4acb22664284fa6aa811adb2633dd981e5a7de79a593525582fa203`
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
# Tue, 21 Jul 2026 16:53:04 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Tue, 21 Jul 2026 16:53:04 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Tue, 21 Jul 2026 16:53:23 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.19-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.19 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 21 Jul 2026 16:53:23 GMT
WORKDIR /usr/share/logstash
# Tue, 21 Jul 2026 16:53:23 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 21 Jul 2026 16:53:23 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 16:53:23 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Tue, 21 Jul 2026 16:53:23 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Tue, 21 Jul 2026 16:53:23 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Tue, 21 Jul 2026 16:53:23 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Tue, 21 Jul 2026 16:53:23 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Tue, 21 Jul 2026 16:53:23 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 21 Jul 2026 16:53:24 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 21 Jul 2026 16:53:24 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 21 Jul 2026 16:53:24 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 21 Jul 2026 16:53:24 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Tue, 21 Jul 2026 16:53:24 GMT
USER 1000
# Tue, 21 Jul 2026 16:53:24 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 21 Jul 2026 16:53:24 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.19 org.opencontainers.image.version=8.19.19 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-07-14T20:12:14+00:00 org.opencontainers.image.created=2026-07-14T20:12:14+00:00
# Tue, 21 Jul 2026 16:53:24 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8908e14e9c2301f120c2169efa6e9e751440986d59cc94c6ba8d7b2aac546e9e`  
		Last Modified: Tue, 21 Jul 2026 16:54:03 GMT  
		Size: 49.1 MB (49133413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11caae48d090c7e2c06ede085efb36d101b43345fd33e3fce70c8773e9b8adbf`  
		Last Modified: Tue, 21 Jul 2026 16:54:00 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1262c1d23f33648fa47fbf5442a2c7d90248e03ab1ba56c48b1c8e56a69c82e`  
		Last Modified: Tue, 21 Jul 2026 16:54:10 GMT  
		Size: 449.7 MB (449707699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ee6e44d19f46b8ceb9e3c5fbd7b090a87c75418cce5813d277e23b3cd70559`  
		Last Modified: Tue, 21 Jul 2026 16:54:01 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df2789c1bf0b4d137f57666b9c49a3977a48a20c0999c0ae0fef725372ca297d`  
		Last Modified: Tue, 21 Jul 2026 16:54:02 GMT  
		Size: 1.6 KB (1584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42512f05d5c0f5b48634c55f600ce7428f63f87dd0f2d39d3a14c3a7a94c1dcb`  
		Last Modified: Tue, 21 Jul 2026 16:54:02 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf1ff88f5fafba6bbdd58422fcc3764cd59a30c31f11c34f60cb5d19cad06d5`  
		Last Modified: Tue, 21 Jul 2026 16:54:03 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e4506efc7ddebd189a639ffe4ba9694d035188755fe7257644d591a4ab074b`  
		Last Modified: Tue, 21 Jul 2026 16:54:03 GMT  
		Size: 6.3 KB (6299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2eda210a13a8ac5b80c81d0308270cd6472565e8e2c54e309e03bba2b0874f3`  
		Last Modified: Tue, 21 Jul 2026 16:54:04 GMT  
		Size: 255.2 KB (255194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f06100d0d91a0ec111a66263362a942bd244a3e261636bf27ba2a8207fa5937`  
		Last Modified: Tue, 21 Jul 2026 16:54:04 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5061ab2fade3d5ebbf17b02edf086b0290e18a53cdc48bf0c0be63157b440e8`  
		Last Modified: Tue, 21 Jul 2026 16:54:05 GMT  
		Size: 714.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.19` - unknown; unknown

```console
$ docker pull logstash@sha256:3327f272822c05366dddac6dbc75d50aaef5b44c6662f8cabae4472de709fc7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb5d3626d8d703f3fcd4a1abc4bce8681ff81b193097d4c05b9ffc6ae5fbb41f`

```dockerfile
```

-	Layers:
	-	`sha256:343d35e50cbbcd6b24de346b00f76da9286cfec69b5d9571663831fe9ceaff87`  
		Last Modified: Tue, 21 Jul 2026 16:54:01 GMT  
		Size: 3.6 MB (3606636 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f59daa73b988746f321fe6cb6f4fb942d4f5a890e9b10a74591f762946e88c9a`  
		Last Modified: Tue, 21 Jul 2026 16:54:00 GMT  
		Size: 35.8 KB (35845 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:8.19.19` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:9a28491f6ed1dbf3c840a22f2ad5527e6f3c5a0dc6a97c14b4a237206cf9f63c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **527.7 MB (527698688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bbad8e9a7a455d42b44ed8b7c155581848b60122c1c82a8ce8990df74dab4a1`
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
# Tue, 21 Jul 2026 16:55:16 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Tue, 21 Jul 2026 16:55:17 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Tue, 21 Jul 2026 16:55:36 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.19-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.19 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 21 Jul 2026 16:55:36 GMT
WORKDIR /usr/share/logstash
# Tue, 21 Jul 2026 16:55:36 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 21 Jul 2026 16:55:36 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 16:55:36 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Tue, 21 Jul 2026 16:55:36 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Tue, 21 Jul 2026 16:55:36 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Tue, 21 Jul 2026 16:55:36 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Tue, 21 Jul 2026 16:55:36 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Tue, 21 Jul 2026 16:55:36 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 21 Jul 2026 16:55:36 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 21 Jul 2026 16:55:36 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 21 Jul 2026 16:55:36 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 21 Jul 2026 16:55:36 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Tue, 21 Jul 2026 16:55:36 GMT
USER 1000
# Tue, 21 Jul 2026 16:55:36 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 21 Jul 2026 16:55:36 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.19 org.opencontainers.image.version=8.19.19 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-07-14T20:12:14+00:00 org.opencontainers.image.created=2026-07-14T20:12:14+00:00
# Tue, 21 Jul 2026 16:55:36 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cedc29ce3cef4f608f550506f9e880cb288a5adf69f2f6d5d276c1fff4ad25b`  
		Last Modified: Tue, 21 Jul 2026 16:56:17 GMT  
		Size: 50.5 MB (50537910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505f05dca6a706623f09892c72b125bf02c68306fdc71b28b450c5ba3cec9c70`  
		Last Modified: Tue, 21 Jul 2026 16:56:14 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd450000900d1e2425aee00af3ba40dda20521bbabb069c38ccc2359a0d987e`  
		Last Modified: Tue, 21 Jul 2026 16:56:24 GMT  
		Size: 448.0 MB (448008858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1418114a68e940346c211832c89f3638f15a20ddb20a85b941cb155c9a8edf84`  
		Last Modified: Tue, 21 Jul 2026 16:56:14 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f9a87689a303a05ecf75e71cddb9c65f61434dc11abde0d383fdbbab68c7155`  
		Last Modified: Tue, 21 Jul 2026 16:56:16 GMT  
		Size: 1.6 KB (1581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9a7b965a7ca60ef1b6bbb4080502440b57498482592a90776826f7af3f3f7d5`  
		Last Modified: Tue, 21 Jul 2026 16:56:16 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c09254db8f1deeed799bab2032b49c8aa7721aafe52d15e0ad3a0917f184bb67`  
		Last Modified: Tue, 21 Jul 2026 16:56:17 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46124f2432a9dd09c6c9139494c10eef8441de8cf0aba30874f24a00bc49d14c`  
		Last Modified: Tue, 21 Jul 2026 16:56:17 GMT  
		Size: 6.3 KB (6299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:720ce5dca1c3d4fef1a569d0f93fee6b2fff2d15b5069dd2d3c9716a08544a9c`  
		Last Modified: Tue, 21 Jul 2026 16:56:18 GMT  
		Size: 255.2 KB (255186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac35d875350d51fdbb1566d470bbd84f608fc54e7ba47920292b8743e30663f7`  
		Last Modified: Tue, 21 Jul 2026 16:56:18 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d0349851e7857577e617bbaaa3a89282694a13ec7b41cde33985feb4b14b6bc`  
		Last Modified: Tue, 21 Jul 2026 16:56:18 GMT  
		Size: 710.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.19` - unknown; unknown

```console
$ docker pull logstash@sha256:00e26fec765462ebe50d15955ac7afbab0f24b270105dd09da641519e7e47d58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a0b956c9caffc8fca41d54707005519a4202b65fbd9091aa8882cd52b70f975`

```dockerfile
```

-	Layers:
	-	`sha256:fea61b705b5ce2d068a7acc49efba236d4a3b7d2e25394eebcb06b75eca14f46`  
		Last Modified: Tue, 21 Jul 2026 16:56:15 GMT  
		Size: 3.6 MB (3607061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c163fec38e46ad7d4d20598dca503701cf4d77c903255aacc860e12ed457d912`  
		Last Modified: Tue, 21 Jul 2026 16:56:14 GMT  
		Size: 36.0 KB (35973 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.3.8`

```console
$ docker pull logstash@sha256:4aad7d494004a89e168421686a38ca5154b48d0ba3bcd1b96fdb02ea8954be3e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.3.8` - linux; amd64

```console
$ docker pull logstash@sha256:5f93afe2ff67911504af228d1f92e4a130a980e73fffed4997c41bc2bb550358
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **518.8 MB (518840339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:132026a0180ea3c9775ca89eba4894bffde4aa74f6f342543dfed405f35020bd`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:52:58 GMT
ENV container oci
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:3c47f725c6bc27e82037ebd32982187d7c3fdb026b27c68e8afaccfbbd204f83 in /      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:52:59 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:52:32Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:52:32Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:52:32Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:28:21 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 29 Jul 2026 18:28:21 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:28:21 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 29 Jul 2026 18:28:21 GMT
WORKDIR /usr/share
# Wed, 29 Jul 2026 18:28:23 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:29:12 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.3.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.3.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 29 Jul 2026 18:29:12 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 29 Jul 2026 18:29:12 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 29 Jul 2026 18:29:12 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 29 Jul 2026 18:29:12 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 29 Jul 2026 18:29:12 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 29 Jul 2026 18:29:12 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 29 Jul 2026 18:29:13 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 18:29:13 GMT
WORKDIR /usr/share/logstash
# Wed, 29 Jul 2026 18:29:13 GMT
USER 1000
# Wed, 29 Jul 2026 18:29:13 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 29 Jul 2026 18:29:13 GMT
LABEL org.label-schema.build-date=2026-07-14T20:10:33+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-14T20:10:33+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 29 Jul 2026 18:29:13 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:4ea47df267f432c56243aff71faf74e328d0558e2bee83a9cd394e31d62a4129`  
		Last Modified: Tue, 28 Jul 2026 05:41:44 GMT  
		Size: 40.7 MB (40700572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a849a57ee03261746184679a259b8c8f6dac4ccf79b5e3993a1d33e912596b`  
		Last Modified: Wed, 29 Jul 2026 18:29:50 GMT  
		Size: 4.8 MB (4771074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff1424e5411e93178ae41fe340a3acfd4e69c3cbeaacaeb16ed2a6b680504c97`  
		Last Modified: Wed, 29 Jul 2026 18:29:59 GMT  
		Size: 473.1 MB (473103967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896b8248a2e8c00fd795a0ba0ed7cba22cf240d2e9d7874c8444eca10f751191`  
		Last Modified: Wed, 29 Jul 2026 18:29:50 GMT  
		Size: 6.3 KB (6294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1ba08107321f5a3fb284347abde067b3f6764a116853954f3c5114dc854316c`  
		Last Modified: Wed, 29 Jul 2026 18:29:50 GMT  
		Size: 255.2 KB (255180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:997752e21122a7b5edf5910567d912187e20240725c7ce32af34e303c4dff82f`  
		Last Modified: Wed, 29 Jul 2026 18:29:51 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb30975ed737a1931b0ae207dec4904eaa5cff9f53ea6cd8f07b165cdfa1798c`  
		Last Modified: Wed, 29 Jul 2026 18:29:51 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e5844a8e1348a4322e13333a96abe221305044879d228d689ff33cf17fed0d`  
		Last Modified: Wed, 29 Jul 2026 18:29:51 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d20142bbf02a4d11153f3a667737e6340f869ace8cd5b58defebdbaa41bbc573`  
		Last Modified: Wed, 29 Jul 2026 18:29:52 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ddd2ad9a26c456868418fc61d83f920d540610cf8235da4672e27abdf1e966`  
		Last Modified: Wed, 29 Jul 2026 18:29:52 GMT  
		Size: 710.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.3.8` - unknown; unknown

```console
$ docker pull logstash@sha256:bb37ad7eca99dee084bad7d6df9b660bcab1a7e2ab77c415590233cd6e1a56e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5da70b44c6c2240619136a2536ddccaf010c2374886411f05114c8855d20412d`

```dockerfile
```

-	Layers:
	-	`sha256:fb55af15f529bd6e7ead3f6ca8375c2274fa5463b92046edd508e037a3687e72`  
		Last Modified: Wed, 29 Jul 2026 18:29:50 GMT  
		Size: 2.1 MB (2106685 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48de3fa35cf0f4feeb5b93eb823dfad0cc7409059db04206c26d8a1b97c4eba3`  
		Last Modified: Wed, 29 Jul 2026 18:29:49 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.3.8` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:10d8da31ffdd3f856e3e50eaf639d44b01386bda7ca2260bbb1e8f950e85c9a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **515.3 MB (515267436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:483b066a734f1bd783b5c98e3d5bc9ff59fce71d75ce11fc9cef69cbd76d0176`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:54:32 GMT
ENV container oci
# Tue, 28 Jul 2026 04:54:33 GMT
COPY dir:769b2354bc8edc7a99743746593875a88e8e231193bec804f059f55be2297f6b in /      
# Tue, 28 Jul 2026 04:54:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:54:33 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:54:33 GMT
COPY dir:73e49171ade23d8843dd062725616e7374a5634990954b80e20cf6a75ad5de95 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:54:33 GMT
COPY dir:73e49171ade23d8843dd062725616e7374a5634990954b80e20cf6a75ad5de95 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:54:33 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:54:11Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:54:11Z" "architecture"="aarch64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:54:11Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:27:39 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 29 Jul 2026 18:27:39 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:27:39 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 29 Jul 2026 18:27:39 GMT
WORKDIR /usr/share
# Wed, 29 Jul 2026 18:27:41 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:28:09 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.3.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.3.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 29 Jul 2026 18:28:09 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 29 Jul 2026 18:28:09 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 29 Jul 2026 18:28:09 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 29 Jul 2026 18:28:09 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 29 Jul 2026 18:28:09 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 29 Jul 2026 18:28:09 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 29 Jul 2026 18:28:09 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 18:28:09 GMT
WORKDIR /usr/share/logstash
# Wed, 29 Jul 2026 18:28:09 GMT
USER 1000
# Wed, 29 Jul 2026 18:28:09 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 29 Jul 2026 18:28:09 GMT
LABEL org.label-schema.build-date=2026-07-14T20:10:33+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-14T20:10:33+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 29 Jul 2026 18:28:09 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:4431e8a4eff3b814ee9a578afed4f42f29096b2d18c83f5206d2321ac4cb1a54`  
		Last Modified: Tue, 28 Jul 2026 05:41:47 GMT  
		Size: 38.8 MB (38838081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5630c1bbfc868a701e4b97366d5c405afb9b01d639c3bafdb34cd9772d1ddc18`  
		Last Modified: Wed, 29 Jul 2026 18:28:47 GMT  
		Size: 4.8 MB (4760523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f6af8134e97c464e3b936b19bc4bf57804ff2f5f5c91bee81d3ee282c00b9bf`  
		Last Modified: Wed, 29 Jul 2026 18:28:59 GMT  
		Size: 471.4 MB (471404106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15407912462b35a7dbf035bf6271518187b49e1cbe33962ef08940c1e473fe15`  
		Last Modified: Wed, 29 Jul 2026 18:28:47 GMT  
		Size: 6.3 KB (6295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9113bfbb859f49ba36c613daa82a9c940a51aef1c0b95817629bf753898df2a`  
		Last Modified: Wed, 29 Jul 2026 18:28:47 GMT  
		Size: 255.2 KB (255183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a5851f6478cadb61085aeb73984287989120af119e304e59c862071a07b9720`  
		Last Modified: Wed, 29 Jul 2026 18:28:48 GMT  
		Size: 351.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76874d5dacc93181247027c4a89cbe7aff943a64f68027850dcb0928e20575ec`  
		Last Modified: Wed, 29 Jul 2026 18:28:48 GMT  
		Size: 1.6 KB (1573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:814d7186676014826934bb666a48b91a9db6c6531f62bd4faabe5e4b5ae5964a`  
		Last Modified: Wed, 29 Jul 2026 18:28:49 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5e7bef11fe9e1faa6c085ad715afdc586e8566dde32e1236b9980ecd1688fa2`  
		Last Modified: Wed, 29 Jul 2026 18:28:50 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6169da7931612309b720743650554bfade1cf0093c57acdd3628c3859fc26db7`  
		Last Modified: Wed, 29 Jul 2026 18:28:50 GMT  
		Size: 708.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.3.8` - unknown; unknown

```console
$ docker pull logstash@sha256:ca0f5e958d8694a410a749dc265d7e7cb38a400d34a3e4ccc6f7de440334f0c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2135750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9991e339a56a7e685bfaf4a2c5ea217c37f5d50d5839ee9ba0cd7fe6f248a495`

```dockerfile
```

-	Layers:
	-	`sha256:c8181cae8b2f22e3c0681c920b3eadb74ddd5bd73d18639bee01d345ce5bc7ac`  
		Last Modified: Wed, 29 Jul 2026 18:28:47 GMT  
		Size: 2.1 MB (2105473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0df50dcf7e742236bfb5279aabd268f284b17235213c8c1bae6760c3222db05`  
		Last Modified: Wed, 29 Jul 2026 18:28:47 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.4.4`

```console
$ docker pull logstash@sha256:da441f5bf505165a7f3f0dc1abd5646cdad448fb70724bcfecfc42405af8e1b0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.4` - linux; amd64

```console
$ docker pull logstash@sha256:c7e6c7ca49c44c848d06bad859bf30a8c51d741b84d2b514594c3034ebb607c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **525.2 MB (525240826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1771bd4f23e487d7332ad04bcad0b5d9a8f379805dbad60187de80b2c8595a18`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:52:58 GMT
ENV container oci
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:3c47f725c6bc27e82037ebd32982187d7c3fdb026b27c68e8afaccfbbd204f83 in /      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:52:59 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:52:32Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:52:32Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:52:32Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:28:24 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 29 Jul 2026 18:28:24 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:28:24 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 29 Jul 2026 18:28:24 GMT
WORKDIR /usr/share
# Wed, 29 Jul 2026 18:28:26 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:28:46 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.4-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.4 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 29 Jul 2026 18:28:47 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 29 Jul 2026 18:28:47 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 29 Jul 2026 18:28:47 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 29 Jul 2026 18:28:47 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 29 Jul 2026 18:28:47 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 29 Jul 2026 18:28:47 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 29 Jul 2026 18:28:47 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 18:28:47 GMT
WORKDIR /usr/share/logstash
# Wed, 29 Jul 2026 18:28:47 GMT
USER 1000
# Wed, 29 Jul 2026 18:28:47 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 29 Jul 2026 18:28:47 GMT
LABEL org.label-schema.build-date=2026-07-14T20:10:10+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-14T20:10:10+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 29 Jul 2026 18:28:47 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:4ea47df267f432c56243aff71faf74e328d0558e2bee83a9cd394e31d62a4129`  
		Last Modified: Tue, 28 Jul 2026 05:41:44 GMT  
		Size: 40.7 MB (40700572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616332ddc56d0f6a14c1a759fba58a3dcf3bbd563155582fb68fb7cd215cb7d2`  
		Last Modified: Wed, 29 Jul 2026 18:29:24 GMT  
		Size: 4.8 MB (4771065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44aa27d73d29448f2d38d849a1d899888d82c1ab33468ee5960600ccf0fe8d13`  
		Last Modified: Wed, 29 Jul 2026 18:29:34 GMT  
		Size: 479.5 MB (479504388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b89cf87b53ccb2d27536b195a7d94c8a086c3b100fed683926d69071ec0ccdf`  
		Last Modified: Wed, 29 Jul 2026 18:29:24 GMT  
		Size: 6.4 KB (6363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e340e80a39b1a2db701f3aa4874eb9c24bb2cc7af3d208aeda9f69a64b8a0d25`  
		Last Modified: Wed, 29 Jul 2026 18:29:24 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:320dd2627bf4231a1fceedc11e51a1142da68166d9aad6e03cc602ddfbadb3b5`  
		Last Modified: Wed, 29 Jul 2026 18:29:26 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41596d27a4dec7c430da20083e93e85f7ab36872b92d8f04711c84576bb5dfc2`  
		Last Modified: Wed, 29 Jul 2026 18:29:26 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5af4992f1819e362fc1c265986378f59bc8830f37450279be38688eead1115`  
		Last Modified: Wed, 29 Jul 2026 18:29:26 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7924877baa7e2598541bc6a59f21ffdace7acf7e933ced01107477d8b0d8c1e9`  
		Last Modified: Wed, 29 Jul 2026 18:29:27 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7fc0a9626c373e7dbbbae778ba735860ad32e34d513022c60a6dd5ba1ca15e`  
		Last Modified: Wed, 29 Jul 2026 18:29:27 GMT  
		Size: 710.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.4` - unknown; unknown

```console
$ docker pull logstash@sha256:5d5133248dc55a95ff9b96677ccfe1287e57f31f66353e80b218299dbc1d5c3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2143429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:326fa79df4875947816c5c77adbe8f0d6c25df2f4e1281319e75f4080fd578e9`

```dockerfile
```

-	Layers:
	-	`sha256:cbbfaf4f6a55fe76ffac0c9c728c4aa150ebfdaaef63d4a33d2b62261f88d233`  
		Last Modified: Wed, 29 Jul 2026 18:29:25 GMT  
		Size: 2.1 MB (2113229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58383a4f9c7c83a672bc8d730a0e064f2985f1700e60dd96bca3bfac9ac8a3fd`  
		Last Modified: Wed, 29 Jul 2026 18:29:24 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.4` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:f0b31bfeced06709e64b7f88d8e07e58d49870695ce93f2dcfaf13509dbbbb9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **521.7 MB (521662429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f94f52186753280318cfecd5f7d4121c85934cdf5bd5272daaed0a24329a190`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:54:32 GMT
ENV container oci
# Tue, 28 Jul 2026 04:54:33 GMT
COPY dir:769b2354bc8edc7a99743746593875a88e8e231193bec804f059f55be2297f6b in /      
# Tue, 28 Jul 2026 04:54:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:54:33 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:54:33 GMT
COPY dir:73e49171ade23d8843dd062725616e7374a5634990954b80e20cf6a75ad5de95 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:54:33 GMT
COPY dir:73e49171ade23d8843dd062725616e7374a5634990954b80e20cf6a75ad5de95 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:54:33 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:54:11Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:54:11Z" "architecture"="aarch64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:54:11Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:28:47 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 29 Jul 2026 18:28:47 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:28:47 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 29 Jul 2026 18:28:47 GMT
WORKDIR /usr/share
# Wed, 29 Jul 2026 18:28:49 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:29:20 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.4-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.4 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 29 Jul 2026 18:29:20 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 29 Jul 2026 18:29:20 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 29 Jul 2026 18:29:20 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 29 Jul 2026 18:29:20 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 29 Jul 2026 18:29:20 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 29 Jul 2026 18:29:20 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 29 Jul 2026 18:29:20 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 18:29:20 GMT
WORKDIR /usr/share/logstash
# Wed, 29 Jul 2026 18:29:20 GMT
USER 1000
# Wed, 29 Jul 2026 18:29:20 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 29 Jul 2026 18:29:20 GMT
LABEL org.label-schema.build-date=2026-07-14T20:10:10+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-14T20:10:10+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 29 Jul 2026 18:29:20 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:4431e8a4eff3b814ee9a578afed4f42f29096b2d18c83f5206d2321ac4cb1a54`  
		Last Modified: Tue, 28 Jul 2026 05:41:47 GMT  
		Size: 38.8 MB (38838081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:821647be38328739168fbc2764c9bff1e3452520b05294136b1a916424b8643b`  
		Last Modified: Wed, 29 Jul 2026 18:29:59 GMT  
		Size: 4.8 MB (4760485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af5523d22ac2a91288a99b337ec301391a8e9906ed48b366baf44c84ccad7ec`  
		Last Modified: Wed, 29 Jul 2026 18:30:08 GMT  
		Size: 477.8 MB (477799061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a7ceb804667fe241aeab07ddfa83eb077087b709dac242bc23ce38356e6274`  
		Last Modified: Wed, 29 Jul 2026 18:29:59 GMT  
		Size: 6.4 KB (6368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98e5b85443411b27c29b6139de8fe0d05cf153d4c974d0e9a4fa388e4f9ad534`  
		Last Modified: Wed, 29 Jul 2026 18:29:59 GMT  
		Size: 255.2 KB (255184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:441fcdaa569be3bfb92092572b4f58c3fc503f73bc9d2fe5be99eec7b708cd6c`  
		Last Modified: Wed, 29 Jul 2026 18:30:00 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee53a4dce6954617dd7d2afddf8a448c685f7721fba661f54e5745cbdab80e2`  
		Last Modified: Wed, 29 Jul 2026 18:30:00 GMT  
		Size: 1.6 KB (1574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86ed2f6a8d04496c1cde50f16be3a85c815fe694c61d5c03e7bac42f097631c4`  
		Last Modified: Wed, 29 Jul 2026 18:30:00 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f11087776ccad3932a62d56ca9e615902fb6f30733f7528885994e64d560fc`  
		Last Modified: Wed, 29 Jul 2026 18:30:02 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b24adcf615c4966cea9bdb520533bebac38c892a5ca4f1b7769015cb019b68`  
		Last Modified: Wed, 29 Jul 2026 18:30:02 GMT  
		Size: 709.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.4` - unknown; unknown

```console
$ docker pull logstash@sha256:5766182b44c9d991c408b198322936c663b4a692a4156b6109b87e4fecb79381
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2142294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4529783a49a89192fda0a6bc9a0649f06263241cceef3fb6dcae1d257aaeaed9`

```dockerfile
```

-	Layers:
	-	`sha256:27944d68455ad7d6d61d07fc18f62f45d5b91a56119b8d2eb2648a8433da7501`  
		Last Modified: Wed, 29 Jul 2026 18:29:59 GMT  
		Size: 2.1 MB (2112017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c79874e5b33e600efe889e93d97ff0f21573d7740ad04f193db584837547a181`  
		Last Modified: Wed, 29 Jul 2026 18:29:59 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json
