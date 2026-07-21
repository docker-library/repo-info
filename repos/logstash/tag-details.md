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
$ docker pull logstash@sha256:730fddff53d1db801b46c89b66e0ef6e10e9d53e396b342926c2402f9024a80d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.3.8` - linux; amd64

```console
$ docker pull logstash@sha256:006abd2290532b764d3e607d772477e9b13a9d5953ac4c8529f228d2a704e974
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **518.8 MB (518836456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a0a95c389afa371b48f7d75a71b7f345c246853c2c8c87b2d114d8a94962580`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 21 Jul 2026 01:09:57 GMT
ENV container oci
# Tue, 21 Jul 2026 01:09:58 GMT
COPY dir:8b42b9fcf597f41b80a8fe199f2bf302332cfc86735eda7e5948c6f2d9073e65 in /      
# Tue, 21 Jul 2026 01:09:58 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 01:09:58 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 01:09:58 GMT
COPY dir:b745d7b8674edb55898cbd7ca84df6b3ac35b32be96c9a6e6425437dd5390ced in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 01:09:58 GMT
COPY dir:b745d7b8674edb55898cbd7ca84df6b3ac35b32be96c9a6e6425437dd5390ced in /root/buildinfo/      
# Tue, 21 Jul 2026 01:09:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T01:09:09Z" "org.opencontainers.image.revision"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "build-date"="2026-07-21T01:09:09Z" "architecture"="x86_64" "vcs-ref"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "vcs-type"="git" "release"="1784596070"org.opencontainers.image.created=2026-07-21T01:09:09Z,org.opencontainers.image.revision=4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec
# Tue, 21 Jul 2026 17:08:17 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 21 Jul 2026 17:08:17 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 17:08:17 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 21 Jul 2026 17:08:17 GMT
WORKDIR /usr/share
# Tue, 21 Jul 2026 17:08:18 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 21 Jul 2026 17:08:45 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.3.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.3.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 21 Jul 2026 17:08:45 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 21 Jul 2026 17:08:45 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 21 Jul 2026 17:08:45 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 21 Jul 2026 17:08:45 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 21 Jul 2026 17:08:45 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 21 Jul 2026 17:08:45 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 21 Jul 2026 17:08:45 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 21 Jul 2026 17:08:45 GMT
WORKDIR /usr/share/logstash
# Tue, 21 Jul 2026 17:08:45 GMT
USER 1000
# Tue, 21 Jul 2026 17:08:45 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 21 Jul 2026 17:08:45 GMT
LABEL org.label-schema.build-date=2026-07-14T20:10:33+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-14T20:10:33+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 21 Jul 2026 17:08:45 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:a03e2de3abb5028372473288295f20855a0a709800a709cde6a88cfbb137abc3`  
		Last Modified: Tue, 21 Jul 2026 04:10:18 GMT  
		Size: 40.7 MB (40697275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5b4bf6f39d848c2fd53612188e54ea393f86e7b7c1b7f92a3633ef52b767e5`  
		Last Modified: Tue, 21 Jul 2026 17:09:20 GMT  
		Size: 4.8 MB (4770622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4275536f37565189a006a5b4d6ecdf3ad00cf318915586e47e7827421a3e7a3f`  
		Last Modified: Tue, 21 Jul 2026 17:09:29 GMT  
		Size: 473.1 MB (473103822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eae476402d2550ebedce4ed94927f1fd623d7b8ec2b6e461882b86916758e9b`  
		Last Modified: Tue, 21 Jul 2026 17:09:20 GMT  
		Size: 6.3 KB (6295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:255c2c230fcf60b5b32d0f74afd5d45c94d2dceb0d018a2a92e6b102dcda7a0f`  
		Last Modified: Tue, 21 Jul 2026 17:09:20 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7008e142fd53f2b94b40b508b592bbd577416d602da38193b4cb50346cf03458`  
		Last Modified: Tue, 21 Jul 2026 17:09:21 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a94fb80ae8a3204af883405c739ec8925acf62bad6885c864f8789ace92a9698`  
		Last Modified: Tue, 21 Jul 2026 17:09:21 GMT  
		Size: 1.6 KB (1579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036a1eaf07175101150d0d48cf29087ffbf00fa077b52ca018f596188c72911d`  
		Last Modified: Tue, 21 Jul 2026 17:09:21 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e88bf6cef9db846b6eb20cca7647ae2596ea380aa1ef9d8b11be72ab17f0164`  
		Last Modified: Tue, 21 Jul 2026 17:09:23 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21fc9b818aa65fa651710b17c08eba326c5611a572a62c7f7eded6b3dd0fba3`  
		Last Modified: Tue, 21 Jul 2026 17:09:23 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.3.8` - unknown; unknown

```console
$ docker pull logstash@sha256:b5e5c2195120d9650de4a56c2eacb8635a73aa255232251339bcc5b38227b081
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b1204e9e63d6e7e1f622d93fdd567c673a350ec6894f1e411c76c9b5808d6a`

```dockerfile
```

-	Layers:
	-	`sha256:9cb27d3dd4603b6a859dd4818b72ab3e4a869130c1adda9fd668d30fc5472a5a`  
		Last Modified: Tue, 21 Jul 2026 17:09:20 GMT  
		Size: 2.1 MB (2106677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99c05234327119014faa2aa6d577592f052ae48a55994d72cfcf8faabdfdf934`  
		Last Modified: Tue, 21 Jul 2026 17:09:20 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.3.8` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:a244e5c032bc4f87adb9e0fde4c33e2344c6ac3757d504076d35156c06cf6052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **515.2 MB (515235175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8e49edfb0ab4713bb42fbbaa7aa47454d86756c8d5188d2cf03eb3df4221804`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 21 Jul 2026 01:10:52 GMT
ENV container oci
# Tue, 21 Jul 2026 01:10:53 GMT
COPY dir:91cba88ba8f66a4d62e50f78add4d1fd07a5799e60037509c9ca5a48fefaa091 in /      
# Tue, 21 Jul 2026 01:10:53 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 01:10:53 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 01:10:53 GMT
COPY dir:190349813a667505f76174069131421a998a39a32ab7f30fbe8be3d4df745463 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 01:10:53 GMT
COPY dir:190349813a667505f76174069131421a998a39a32ab7f30fbe8be3d4df745463 in /root/buildinfo/      
# Tue, 21 Jul 2026 01:10:54 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T01:10:31Z" "org.opencontainers.image.revision"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "build-date"="2026-07-21T01:10:31Z" "architecture"="aarch64" "vcs-ref"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "vcs-type"="git" "release"="1784596070"org.opencontainers.image.created=2026-07-21T01:10:31Z,org.opencontainers.image.revision=4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec
# Tue, 21 Jul 2026 17:01:50 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 21 Jul 2026 17:01:50 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 17:01:50 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 21 Jul 2026 17:01:50 GMT
WORKDIR /usr/share
# Tue, 21 Jul 2026 17:01:52 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 21 Jul 2026 17:02:23 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.3.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.3.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 21 Jul 2026 17:02:23 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 21 Jul 2026 17:02:23 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 21 Jul 2026 17:02:23 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 21 Jul 2026 17:02:23 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 21 Jul 2026 17:02:23 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 21 Jul 2026 17:02:23 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 21 Jul 2026 17:02:23 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 21 Jul 2026 17:02:23 GMT
WORKDIR /usr/share/logstash
# Tue, 21 Jul 2026 17:02:23 GMT
USER 1000
# Tue, 21 Jul 2026 17:02:23 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 21 Jul 2026 17:02:23 GMT
LABEL org.label-schema.build-date=2026-07-14T20:10:33+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-14T20:10:33+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 21 Jul 2026 17:02:23 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:87b99ca60407b5b3044b907de710ecb00dd7222e3a38acbc4a3fc51d11d7c04e`  
		Last Modified: Tue, 21 Jul 2026 05:00:39 GMT  
		Size: 38.8 MB (38807059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e262f45bfe35e52626c85304bbc852317cbaaae4d0af509213560c9677c226e3`  
		Last Modified: Tue, 21 Jul 2026 17:03:01 GMT  
		Size: 4.8 MB (4759720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b8c7fc1b4126db47b57ad2adcc21d612cf41569628778a5dc095d6b535c6044`  
		Last Modified: Tue, 21 Jul 2026 17:03:09 GMT  
		Size: 471.4 MB (471403652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fcfe8e1b9768b7665e1650a1aabfb15e2ca74c8f6b29b163e5a1664f3a6ac4`  
		Last Modified: Tue, 21 Jul 2026 17:03:01 GMT  
		Size: 6.3 KB (6295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda1ac4d2470186adfc9e4a0b1b34d4518fa2d8cf3704a9dbbde9f9b06dc20ea`  
		Last Modified: Tue, 21 Jul 2026 17:03:01 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbfb56a8d0cbabf065451e6e190f1ec85f924ed76c4d1b632569a7743de2b947`  
		Last Modified: Tue, 21 Jul 2026 17:03:03 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61a09daf452c4c9c02377cc526283ff41b5798862eccfa7b2a6a917bfcee4b1`  
		Last Modified: Tue, 21 Jul 2026 17:03:03 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:938d44f43788927fdbc1296e94d42c1a9304b884e6f9068f0b444f34a13e7c42`  
		Last Modified: Tue, 21 Jul 2026 17:03:03 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40881cc5ee220006af86a42b1bff5222d05e04df460aaa1dee6f15730fe7102a`  
		Last Modified: Tue, 21 Jul 2026 17:03:04 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3846b6aaaba2e3a91b7c5effe038c301de64d6bbbddfed8b1016807991cd3436`  
		Last Modified: Tue, 21 Jul 2026 17:03:04 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.3.8` - unknown; unknown

```console
$ docker pull logstash@sha256:056c040f2c191c89ee98b236dc606ed151f3d89b985ebd2e3ec043c1e5767d24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2135741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:544fb6d5d5a467ba9e92e7ae0d6b4a5adbf291c7947b38874031e2202a10130e`

```dockerfile
```

-	Layers:
	-	`sha256:a634eb5b3f3d5bf1f07dea918a9fb4ad09d576dd304ccc0464a176a128f9b731`  
		Last Modified: Tue, 21 Jul 2026 17:03:01 GMT  
		Size: 2.1 MB (2105465 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28010c0ae75900e7d990060193a6090f2a1820d5b8f99bce69fe70d9a22d528a`  
		Last Modified: Tue, 21 Jul 2026 17:03:01 GMT  
		Size: 30.3 KB (30276 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.4.4`

```console
$ docker pull logstash@sha256:e57a90a6ba97f443bb91f2724d62269999752170c212b58ec5ab029afc11f074
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.4` - linux; amd64

```console
$ docker pull logstash@sha256:2080bc006d539f24cdffd79905715b57c52bc2a0c8aa2d9b1d91421f36e33eee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **525.2 MB (525237749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65d3e300934b783cad113f6f7db6152ffa9c2e8969e1a010cb324e001d879539`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 01:09:57 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 21 Jul 2026 01:09:57 GMT
ENV container oci
# Tue, 21 Jul 2026 01:09:58 GMT
COPY dir:8b42b9fcf597f41b80a8fe199f2bf302332cfc86735eda7e5948c6f2d9073e65 in /      
# Tue, 21 Jul 2026 01:09:58 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 01:09:58 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 01:09:58 GMT
COPY dir:b745d7b8674edb55898cbd7ca84df6b3ac35b32be96c9a6e6425437dd5390ced in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 01:09:58 GMT
COPY dir:b745d7b8674edb55898cbd7ca84df6b3ac35b32be96c9a6e6425437dd5390ced in /root/buildinfo/      
# Tue, 21 Jul 2026 01:09:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T01:09:09Z" "org.opencontainers.image.revision"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "build-date"="2026-07-21T01:09:09Z" "architecture"="x86_64" "vcs-ref"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "vcs-type"="git" "release"="1784596070"org.opencontainers.image.created=2026-07-21T01:09:09Z,org.opencontainers.image.revision=4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec
# Tue, 21 Jul 2026 17:08:16 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 21 Jul 2026 17:08:16 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 17:08:16 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 21 Jul 2026 17:08:16 GMT
WORKDIR /usr/share
# Tue, 21 Jul 2026 17:08:18 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 21 Jul 2026 17:08:38 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.4-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.4 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 21 Jul 2026 17:08:38 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 21 Jul 2026 17:08:38 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 21 Jul 2026 17:08:39 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 21 Jul 2026 17:08:39 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 21 Jul 2026 17:08:39 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 21 Jul 2026 17:08:39 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 21 Jul 2026 17:08:39 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 21 Jul 2026 17:08:39 GMT
WORKDIR /usr/share/logstash
# Tue, 21 Jul 2026 17:08:39 GMT
USER 1000
# Tue, 21 Jul 2026 17:08:39 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 21 Jul 2026 17:08:39 GMT
LABEL org.label-schema.build-date=2026-07-14T20:10:10+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-14T20:10:10+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 21 Jul 2026 17:08:39 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:a03e2de3abb5028372473288295f20855a0a709800a709cde6a88cfbb137abc3`  
		Last Modified: Tue, 21 Jul 2026 04:10:18 GMT  
		Size: 40.7 MB (40697275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:817b24bc680ce68cadd27d6c18cf289cdfe482b7fc68a770eadf6844208a1832`  
		Last Modified: Tue, 21 Jul 2026 17:09:17 GMT  
		Size: 4.8 MB (4770490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c253a2dd136582ff25e7cd9a479c651ba01c3ba1e5076122b1361cac548637c7`  
		Last Modified: Tue, 21 Jul 2026 17:09:27 GMT  
		Size: 479.5 MB (479505175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae0e708e4fd36874cd0f2c4dd0650f79b08678237900db1965091cf8c744ba07`  
		Last Modified: Tue, 21 Jul 2026 17:09:17 GMT  
		Size: 6.4 KB (6364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3571715ac1a8e9de1f71eb398defb96f0b33e3098c13e334f2a1c04bda6a3811`  
		Last Modified: Tue, 21 Jul 2026 17:09:17 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dbea39f5b96f9b8815146b9edc40bb563e13efe1fd435bddb158224c410d7e`  
		Last Modified: Tue, 21 Jul 2026 17:09:18 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b857006c152c93873db820fcabc943eeef10c899384034f2d6394779279dff0`  
		Last Modified: Tue, 21 Jul 2026 17:09:19 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032d6adecfec9ffe2ed689ab0cc1d7dcd47d33df46f00da252639fd162fab1bb`  
		Last Modified: Tue, 21 Jul 2026 17:09:19 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cb2188b279be391dc2304f8e1b152b4786c468d40019eb3070428946cf390ac`  
		Last Modified: Tue, 21 Jul 2026 17:09:20 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad1540995c223c4e10aa912276a3785c8a4a8af1081702a33bbd42e81a694c7`  
		Last Modified: Tue, 21 Jul 2026 17:09:20 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.4` - unknown; unknown

```console
$ docker pull logstash@sha256:a17f9e993048d81ab31ffaf85d7c31541245dd956a8b677244fb758808e7ff6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2143420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a8d0d4540c564510677efafef512515cd887706281a2f26c3650819c5c8fca`

```dockerfile
```

-	Layers:
	-	`sha256:0b4c3e00a71e7d795cb29ad61970cb7596b6937fa3d1bf2d7876a44b9fd95d93`  
		Last Modified: Tue, 21 Jul 2026 17:09:17 GMT  
		Size: 2.1 MB (2113221 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e24464c91a9369c4902a3f34cc83d0a56e8171a0620079da427f651007268336`  
		Last Modified: Tue, 21 Jul 2026 17:09:17 GMT  
		Size: 30.2 KB (30199 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.4` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:2ec84ac027343c814c35d5841f18824417830cac1a3129502345af8f20c38de7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **521.6 MB (521629924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cc8d3204fa0523574c49af50ac1bed9a19da0b2af222292768add1a7c9de15f`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 01:10:52 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 21 Jul 2026 01:10:52 GMT
ENV container oci
# Tue, 21 Jul 2026 01:10:53 GMT
COPY dir:91cba88ba8f66a4d62e50f78add4d1fd07a5799e60037509c9ca5a48fefaa091 in /      
# Tue, 21 Jul 2026 01:10:53 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 01:10:53 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 01:10:53 GMT
COPY dir:190349813a667505f76174069131421a998a39a32ab7f30fbe8be3d4df745463 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 01:10:53 GMT
COPY dir:190349813a667505f76174069131421a998a39a32ab7f30fbe8be3d4df745463 in /root/buildinfo/      
# Tue, 21 Jul 2026 01:10:54 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T01:10:31Z" "org.opencontainers.image.revision"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "build-date"="2026-07-21T01:10:31Z" "architecture"="aarch64" "vcs-ref"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "vcs-type"="git" "release"="1784596070"org.opencontainers.image.created=2026-07-21T01:10:31Z,org.opencontainers.image.revision=4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec
# Tue, 21 Jul 2026 17:01:58 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 21 Jul 2026 17:01:58 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 17:01:58 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 21 Jul 2026 17:01:58 GMT
WORKDIR /usr/share
# Tue, 21 Jul 2026 17:02:00 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 21 Jul 2026 17:02:31 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.4-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.4 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 21 Jul 2026 17:02:31 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 21 Jul 2026 17:02:31 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 21 Jul 2026 17:02:31 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 21 Jul 2026 17:02:31 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 21 Jul 2026 17:02:31 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 21 Jul 2026 17:02:31 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 21 Jul 2026 17:02:31 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 21 Jul 2026 17:02:31 GMT
WORKDIR /usr/share/logstash
# Tue, 21 Jul 2026 17:02:31 GMT
USER 1000
# Tue, 21 Jul 2026 17:02:31 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 21 Jul 2026 17:02:31 GMT
LABEL org.label-schema.build-date=2026-07-14T20:10:10+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-14T20:10:10+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 21 Jul 2026 17:02:31 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:87b99ca60407b5b3044b907de710ecb00dd7222e3a38acbc4a3fc51d11d7c04e`  
		Last Modified: Tue, 21 Jul 2026 05:00:39 GMT  
		Size: 38.8 MB (38807059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db9b497fbf8d4e4644325c8936a13583da36599a71c79375db6a7d5687f4e640`  
		Last Modified: Tue, 21 Jul 2026 17:03:11 GMT  
		Size: 4.8 MB (4759741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b37f449e1f89cee98c9e320700523eda3ae5275c8cc1cffda12bb0a159f98437`  
		Last Modified: Tue, 21 Jul 2026 17:03:23 GMT  
		Size: 477.8 MB (477798327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846c12f70ae9394dc1300cd6766160aa58bd301f63b84b4b306d217a7fdbd204`  
		Last Modified: Tue, 21 Jul 2026 17:03:10 GMT  
		Size: 6.4 KB (6364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d181c0d71b359a8d4ebbd04e7e49c3f638bd80b6f6dc87fffc1daf65f25d3426`  
		Last Modified: Tue, 21 Jul 2026 17:03:10 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b66c1a8d31b7dd50a7d0f4aeb5ae2efd8126367c52e97ad7d73e2e684dfbbcd`  
		Last Modified: Tue, 21 Jul 2026 17:03:12 GMT  
		Size: 351.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3645f40f20e64a6eba039f72d5a6fecafb7288157a05b6e66113fd92f4f35d1a`  
		Last Modified: Tue, 21 Jul 2026 17:03:12 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d3ffd06b9980775f59485bda8ffb76fcadf18ad9e17d8248cbc5e99b3e5e02`  
		Last Modified: Tue, 21 Jul 2026 17:03:12 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c7c093a57db59c4ff57dff94338cb9246b34864cafda334625a966aead1a9d`  
		Last Modified: Tue, 21 Jul 2026 17:03:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30aee50deb35150feb5aa199010ff1c847cdd7efa01dfc5a12d1aa10df90964f`  
		Last Modified: Tue, 21 Jul 2026 17:03:14 GMT  
		Size: 709.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.4` - unknown; unknown

```console
$ docker pull logstash@sha256:727a0cacdfbc14126fe8f7bb8a5a27c5d8884f7d52ce1a3966446e3a23987bcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2142284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb24685783938a16d98327e0f4db1bc93ca907dda43ce912710a6c6bf176912`

```dockerfile
```

-	Layers:
	-	`sha256:f7dd780169d8948c7c90a2f920564a2dbad83026085efa69b8ba74add2b9d715`  
		Last Modified: Tue, 21 Jul 2026 17:03:11 GMT  
		Size: 2.1 MB (2112009 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f26ac77340c1bb0cedae32b9e38d91a6c89fd179a0d84e48fcaca0e7b978eb91`  
		Last Modified: Tue, 21 Jul 2026 17:03:10 GMT  
		Size: 30.3 KB (30275 bytes)  
		MIME: application/vnd.in-toto+json
