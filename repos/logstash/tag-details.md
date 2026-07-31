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
$ docker pull logstash@sha256:30b3a70036a6dd99e1be7dc0ce0dd0fed118b7de7739baf441fb264063e8ddcb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.3.8` - linux; amd64

```console
$ docker pull logstash@sha256:54f54e5cc064104e742d626e81a26565d33c27b9bd5b9df1f5a1b102880a49c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **518.8 MB (518840447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:573e59298de1a90016af07911e59262354792718d17d9cebad61d7920614ca14`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 29 Jul 2026 15:33:59 GMT
ENV container oci
# Wed, 29 Jul 2026 15:33:59 GMT
COPY dir:2712bf6adcbfed5a600b822e93b2431cf1da8013a362d751954f4417ddc9cb0f in /      
# Wed, 29 Jul 2026 15:33:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 15:33:59 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 15:33:59 GMT
COPY dir:6628822f227400c36a43db1d6feb34b2bb83cd8e625284f06b5597d2d1cfa0a2 in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 15:33:59 GMT
COPY dir:6628822f227400c36a43db1d6feb34b2bb83cd8e625284f06b5597d2d1cfa0a2 in /root/buildinfo/      
# Wed, 29 Jul 2026 15:34:00 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T15:33:16Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-29T15:33:16Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785339117"org.opencontainers.image.created=2026-07-29T15:33:16Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Fri, 31 Jul 2026 00:14:19 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 31 Jul 2026 00:14:19 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:14:19 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Fri, 31 Jul 2026 00:14:19 GMT
WORKDIR /usr/share
# Fri, 31 Jul 2026 00:14:21 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:15:05 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.3.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.3.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Fri, 31 Jul 2026 00:15:05 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Fri, 31 Jul 2026 00:15:05 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Fri, 31 Jul 2026 00:15:05 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Fri, 31 Jul 2026 00:15:05 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Fri, 31 Jul 2026 00:15:05 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Fri, 31 Jul 2026 00:15:05 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Fri, 31 Jul 2026 00:15:05 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:15:05 GMT
WORKDIR /usr/share/logstash
# Fri, 31 Jul 2026 00:15:05 GMT
USER 1000
# Fri, 31 Jul 2026 00:15:05 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Fri, 31 Jul 2026 00:15:05 GMT
LABEL org.label-schema.build-date=2026-07-14T20:10:33+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-14T20:10:33+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Fri, 31 Jul 2026 00:15:05 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:fa84e92aded1f99bf9799f6272da6aa325a0ec5833ce54b6067c83c51d373be1`  
		Last Modified: Wed, 29 Jul 2026 16:07:04 GMT  
		Size: 40.7 MB (40700889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb0a5e8ad853463f4167d10e49a932a03054611c2729f52a40d5941d4386afe8`  
		Last Modified: Fri, 31 Jul 2026 00:15:38 GMT  
		Size: 4.8 MB (4771131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ecf13b512b6f80380b7303e8e2ecccf6e5c90a16b6c84dc51dd73a20ff1cce`  
		Last Modified: Fri, 31 Jul 2026 00:15:46 GMT  
		Size: 473.1 MB (473103696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7862455f2c27471d07389ca9f7ef75649dee34f9d77f274e117b71a41884d117`  
		Last Modified: Fri, 31 Jul 2026 00:15:38 GMT  
		Size: 6.3 KB (6293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e3ba8eb3f1148d45978fda3e5804edc8b0f993db6e75b4e756595d889ee184f`  
		Last Modified: Fri, 31 Jul 2026 00:15:37 GMT  
		Size: 255.2 KB (255181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2a38a26a6275f9d507ee80e492cfe977f2c46c5c4c82dfccc47bb90fd5a4b3c`  
		Last Modified: Fri, 31 Jul 2026 00:15:39 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67687d36e695b27dcfab47a4edcc442fc1feca6020cc7ed5c5f052a76848ab03`  
		Last Modified: Fri, 31 Jul 2026 00:15:39 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca29eb55bcd0ebec0a6d805fce5955814c3995afdc25e119f51eafb17760ada2`  
		Last Modified: Fri, 31 Jul 2026 00:15:39 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e76d05dd648349804665edc7810e9345e5408ecaa1d64616c571e85118b46b32`  
		Last Modified: Fri, 31 Jul 2026 00:15:40 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de0adc9c94285e9a0563aeecc86142cb5fa56fc107b154fad3fde0d41f33fd5`  
		Last Modified: Fri, 31 Jul 2026 00:15:40 GMT  
		Size: 710.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.3.8` - unknown; unknown

```console
$ docker pull logstash@sha256:36264092c0fc52ec91881489cd42f1b05834204070a84c8a2101dca44332da27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88484b4178f069b8d1d7013ea4fdb212e685ca6bf545be6d4ac19c5bf73cedf1`

```dockerfile
```

-	Layers:
	-	`sha256:4d86f6cbfe34877be4780c5ba4fcd2f8496db009f9022524305caa6abdddd14e`  
		Last Modified: Fri, 31 Jul 2026 00:15:38 GMT  
		Size: 2.1 MB (2106685 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a192164bbb3a354b0eb474eaeb4700e1cbc056220c99ceb46995a67c21068a4a`  
		Last Modified: Fri, 31 Jul 2026 00:15:37 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.3.8` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:eeb17171f600b63fd75d3dc03a22721babe445bf27a33b56a460c3b0dbcb8f93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **515.3 MB (515267841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b19f94bcfd4703069fed5e124bed6341e0ad5eb1df4be84987497dd62181cf`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 29 Jul 2026 15:36:13 GMT
ENV container oci
# Wed, 29 Jul 2026 15:36:14 GMT
COPY dir:e79037c55caea67c80589bc5c498ecc00baf2b82e3344e06bc5ee039b57b79cb in /      
# Wed, 29 Jul 2026 15:36:14 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 15:36:14 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 15:36:14 GMT
COPY dir:517f2664f3696939cbf5526fe39167b1f9602ed288bfd2d17c092a9a6937e54e in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 15:36:14 GMT
COPY dir:517f2664f3696939cbf5526fe39167b1f9602ed288bfd2d17c092a9a6937e54e in /root/buildinfo/      
# Wed, 29 Jul 2026 15:36:14 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T15:35:52Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-29T15:35:52Z" "architecture"="aarch64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785339117"org.opencontainers.image.created=2026-07-29T15:35:52Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Fri, 31 Jul 2026 00:17:15 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 31 Jul 2026 00:17:15 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:17:15 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Fri, 31 Jul 2026 00:17:15 GMT
WORKDIR /usr/share
# Fri, 31 Jul 2026 00:17:17 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:18:06 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.3.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.3.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Fri, 31 Jul 2026 00:18:06 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Fri, 31 Jul 2026 00:18:06 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Fri, 31 Jul 2026 00:18:06 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Fri, 31 Jul 2026 00:18:06 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Fri, 31 Jul 2026 00:18:06 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Fri, 31 Jul 2026 00:18:06 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Fri, 31 Jul 2026 00:18:07 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:18:07 GMT
WORKDIR /usr/share/logstash
# Fri, 31 Jul 2026 00:18:07 GMT
USER 1000
# Fri, 31 Jul 2026 00:18:07 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Fri, 31 Jul 2026 00:18:07 GMT
LABEL org.label-schema.build-date=2026-07-14T20:10:33+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-14T20:10:33+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Fri, 31 Jul 2026 00:18:07 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:f72706ee3c4ed7f3012002662319b160e1be4b1d724cbcbdb1344189ada6e8c6`  
		Last Modified: Wed, 29 Jul 2026 16:05:36 GMT  
		Size: 38.8 MB (38838336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6593fee83be1285b9829d4912237a1d3008f42236f0d9c77f9c035832dc60dd0`  
		Last Modified: Fri, 31 Jul 2026 00:18:44 GMT  
		Size: 4.8 MB (4760781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa2aa0e59d52430f857404d03f98df492dcf9101344f2119324d028454a584bf`  
		Last Modified: Fri, 31 Jul 2026 00:18:52 GMT  
		Size: 471.4 MB (471403997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d26dbba6f9174696d11c06c75ade3297275cede2b2aa9af8a42feea006450b`  
		Last Modified: Fri, 31 Jul 2026 00:18:44 GMT  
		Size: 6.3 KB (6295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d6904bbecf3de22863dd94fda13558173ce6cb265ae0e7ac9905bf5818bdb3c`  
		Last Modified: Fri, 31 Jul 2026 00:18:44 GMT  
		Size: 255.2 KB (255180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a3a31006389a0787cd657160aff53450e753f64e63ae695e0c764c5ec31b69f`  
		Last Modified: Fri, 31 Jul 2026 00:18:45 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fdadd4d055aaa8b97ea90ccc9394cb39bb5a361ee0405dce18696ac019f1857`  
		Last Modified: Fri, 31 Jul 2026 00:18:45 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cec12c88fd9e621854822c5cc8f8ce523fe8da6dbc5519ec1218520895990b2`  
		Last Modified: Fri, 31 Jul 2026 00:18:45 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:515c3ba0ec48cfbbebf619cf2a34a120623be2f675775e1180709196db54acdb`  
		Last Modified: Fri, 31 Jul 2026 00:18:46 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e88003d3a5859e70eadb9ed68ceeceb003a56e3baa2f738cd17d453b89099d8f`  
		Last Modified: Fri, 31 Jul 2026 00:18:47 GMT  
		Size: 709.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.3.8` - unknown; unknown

```console
$ docker pull logstash@sha256:2ca4d3bc5300c251ec0a152361dfb027aaaee8d33dab321616dc197004170062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2135750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46036a3fc64f88a1e233ba08c0b3752f4078fa2f6caf69c0b698818459d33a03`

```dockerfile
```

-	Layers:
	-	`sha256:ed38f13d18f40c684207aa5a393c1b3b205b10cd12ee294343a4ade50b288b0a`  
		Last Modified: Fri, 31 Jul 2026 00:18:44 GMT  
		Size: 2.1 MB (2105473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bef8c7a5d0e62d15b57fd8d9f593ab76d39023f1224d0e85369165cb19499f2b`  
		Last Modified: Fri, 31 Jul 2026 00:18:44 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.4.4`

```console
$ docker pull logstash@sha256:7bf793131b910ce62b4683ae6dc304c15b6981688c38b50e953ce931bfa2c6cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.4` - linux; amd64

```console
$ docker pull logstash@sha256:b9269907b030388a9de530bd3ed725732e92867cf105229144c3c14b44b2f1d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **525.2 MB (525241063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdbf8f153a7baae2e433b5fbd106f3fe79b3f024309feec56fc32bef0be4e285`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 15:33:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 29 Jul 2026 15:33:59 GMT
ENV container oci
# Wed, 29 Jul 2026 15:33:59 GMT
COPY dir:2712bf6adcbfed5a600b822e93b2431cf1da8013a362d751954f4417ddc9cb0f in /      
# Wed, 29 Jul 2026 15:33:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 15:33:59 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 15:33:59 GMT
COPY dir:6628822f227400c36a43db1d6feb34b2bb83cd8e625284f06b5597d2d1cfa0a2 in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 15:33:59 GMT
COPY dir:6628822f227400c36a43db1d6feb34b2bb83cd8e625284f06b5597d2d1cfa0a2 in /root/buildinfo/      
# Wed, 29 Jul 2026 15:34:00 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T15:33:16Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-29T15:33:16Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785339117"org.opencontainers.image.created=2026-07-29T15:33:16Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Fri, 31 Jul 2026 00:14:23 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 31 Jul 2026 00:14:23 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:14:23 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Fri, 31 Jul 2026 00:14:23 GMT
WORKDIR /usr/share
# Fri, 31 Jul 2026 00:14:25 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:14:45 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.4-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.4 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Fri, 31 Jul 2026 00:14:45 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Fri, 31 Jul 2026 00:14:46 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Fri, 31 Jul 2026 00:14:46 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Fri, 31 Jul 2026 00:14:46 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Fri, 31 Jul 2026 00:14:46 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Fri, 31 Jul 2026 00:14:46 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Fri, 31 Jul 2026 00:14:46 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:14:46 GMT
WORKDIR /usr/share/logstash
# Fri, 31 Jul 2026 00:14:46 GMT
USER 1000
# Fri, 31 Jul 2026 00:14:46 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Fri, 31 Jul 2026 00:14:46 GMT
LABEL org.label-schema.build-date=2026-07-14T20:10:10+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-14T20:10:10+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Fri, 31 Jul 2026 00:14:46 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:fa84e92aded1f99bf9799f6272da6aa325a0ec5833ce54b6067c83c51d373be1`  
		Last Modified: Wed, 29 Jul 2026 16:07:04 GMT  
		Size: 40.7 MB (40700889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aed4fcd3dba96f3e88b8a26e48a57eaf7ea1d66decbdd6783ac584f670aaad7a`  
		Last Modified: Fri, 31 Jul 2026 00:15:24 GMT  
		Size: 4.8 MB (4771131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0916d42df0928db33c193f7e293076e634a7826ce915fcf6df53f85ab11d2a97`  
		Last Modified: Fri, 31 Jul 2026 00:15:32 GMT  
		Size: 479.5 MB (479504231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa6f166c72f842180dab2a8588a381170b67fdafa48461bb35e9fd37a006e981`  
		Last Modified: Fri, 31 Jul 2026 00:15:24 GMT  
		Size: 6.4 KB (6363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a38c55db5816ada5b16425e8ebf3ee48aea3509cea6657d5c4a9ace6006973e3`  
		Last Modified: Fri, 31 Jul 2026 00:15:23 GMT  
		Size: 255.2 KB (255186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e81fd8fe8f378932a7c4fcb3970eb3d61c8412d661d57cdb1da7562f4abad0e`  
		Last Modified: Fri, 31 Jul 2026 00:15:25 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5964def20838ed4d9d341eaf2304a2db5abdaf1999463d43cb2b5a0e4031234`  
		Last Modified: Fri, 31 Jul 2026 00:15:25 GMT  
		Size: 1.6 KB (1579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d4c4022816de9549e98379750519fda26b7b17896d190807694776a6211b749`  
		Last Modified: Fri, 31 Jul 2026 00:15:26 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37792b0579e0caf990859da50e908b74d49eb511c227b870745cd292c8944dc`  
		Last Modified: Fri, 31 Jul 2026 00:15:26 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:436cb450a793b16535adfb525e01e5597a835e744d92fa3c30329b487f1694e7`  
		Last Modified: Fri, 31 Jul 2026 00:15:27 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.4` - unknown; unknown

```console
$ docker pull logstash@sha256:b1dabc6fbfc759e4ca64a257d860b5a7aafc5bc106ea9fdc44c9ce14d43f499f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2143429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4073d0b8f58085373eb773067b416f45a7e2d98bcf1c46b2226a90a9f538406`

```dockerfile
```

-	Layers:
	-	`sha256:54583e23e480556445142a71fec699c879dc4ab0fd1193d8e9656dcd474da7ef`  
		Last Modified: Fri, 31 Jul 2026 00:15:23 GMT  
		Size: 2.1 MB (2113229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fee30fdd871ac080b136d09d0c9f3fef8fa70d29f74aab2530361d74db6e79d`  
		Last Modified: Fri, 31 Jul 2026 00:15:24 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.4` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:7c0e76fe59ce6a8aafcd7ba0911c1a405141509704ee6c31d688d373a486b618
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **521.7 MB (521662885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f475dd0aec3dacaee56570b2aa63232de03cb66f1e06763eb0286a2dee00acf7`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 15:36:13 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 29 Jul 2026 15:36:13 GMT
ENV container oci
# Wed, 29 Jul 2026 15:36:14 GMT
COPY dir:e79037c55caea67c80589bc5c498ecc00baf2b82e3344e06bc5ee039b57b79cb in /      
# Wed, 29 Jul 2026 15:36:14 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 15:36:14 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 15:36:14 GMT
COPY dir:517f2664f3696939cbf5526fe39167b1f9602ed288bfd2d17c092a9a6937e54e in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 15:36:14 GMT
COPY dir:517f2664f3696939cbf5526fe39167b1f9602ed288bfd2d17c092a9a6937e54e in /root/buildinfo/      
# Wed, 29 Jul 2026 15:36:14 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T15:35:52Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-29T15:35:52Z" "architecture"="aarch64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785339117"org.opencontainers.image.created=2026-07-29T15:35:52Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Fri, 31 Jul 2026 00:17:18 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 31 Jul 2026 00:17:18 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:17:18 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Fri, 31 Jul 2026 00:17:18 GMT
WORKDIR /usr/share
# Fri, 31 Jul 2026 00:17:20 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:18:13 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.4-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.4 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Fri, 31 Jul 2026 00:18:13 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Fri, 31 Jul 2026 00:18:13 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Fri, 31 Jul 2026 00:18:13 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Fri, 31 Jul 2026 00:18:13 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Fri, 31 Jul 2026 00:18:13 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Fri, 31 Jul 2026 00:18:13 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Fri, 31 Jul 2026 00:18:13 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:18:13 GMT
WORKDIR /usr/share/logstash
# Fri, 31 Jul 2026 00:18:13 GMT
USER 1000
# Fri, 31 Jul 2026 00:18:13 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Fri, 31 Jul 2026 00:18:13 GMT
LABEL org.label-schema.build-date=2026-07-14T20:10:10+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-14T20:10:10+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Fri, 31 Jul 2026 00:18:13 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:f72706ee3c4ed7f3012002662319b160e1be4b1d724cbcbdb1344189ada6e8c6`  
		Last Modified: Wed, 29 Jul 2026 16:05:36 GMT  
		Size: 38.8 MB (38838336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:155f84c16c827064b8444e3d62ffa62d2024103ca53fa61a8d2277375d27c952`  
		Last Modified: Fri, 31 Jul 2026 00:18:53 GMT  
		Size: 4.8 MB (4760784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36bbf87b44917aba2f3bd08668341df2554120658911ec05d0d0221ca8fdef76`  
		Last Modified: Fri, 31 Jul 2026 00:19:01 GMT  
		Size: 477.8 MB (477798956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17c0a673d321c7e4867911196cbec8a271a483727395184830a24374e0f50d46`  
		Last Modified: Fri, 31 Jul 2026 00:18:52 GMT  
		Size: 6.4 KB (6366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99ea7012289aba98e0ad3faf8faf85a1f0979e7d8432115de6df679977a30455`  
		Last Modified: Fri, 31 Jul 2026 00:18:52 GMT  
		Size: 255.2 KB (255184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d71ce5b7320a09dac89a815447e1e12ea1017cc900d0ca58769cfb4658a907a`  
		Last Modified: Fri, 31 Jul 2026 00:18:54 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b3a6e858a2a59dd5fb1fc1fa6fa73f10872503d6f3b647f3759679e2e67104c`  
		Last Modified: Fri, 31 Jul 2026 00:18:54 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88326b5c3f5d800370ea0a3e80462017343775ccf720de0a2776d0df97b05a3f`  
		Last Modified: Fri, 31 Jul 2026 00:18:54 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a01377d17f404c676c736dde7d09fdf27feffb594591c393b3513251b1889a0d`  
		Last Modified: Fri, 31 Jul 2026 00:18:55 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7f7215ac77277c61d1d420f10154849304ee6b3334f8c7c788d4c6668c3a555`  
		Last Modified: Fri, 31 Jul 2026 00:18:55 GMT  
		Size: 710.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.4` - unknown; unknown

```console
$ docker pull logstash@sha256:682a7348106ee84910578f873c6110e6390180840c40ea64bb0b292001388ee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2142294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6ae36de52052a282ed66ad7b818f4933b099a6b9244c3dda6e7c2fb1b51f9d`

```dockerfile
```

-	Layers:
	-	`sha256:a494111806ee0e60359af296a5e7e3f43991648324374475836042c3ddea6e09`  
		Last Modified: Fri, 31 Jul 2026 00:18:52 GMT  
		Size: 2.1 MB (2112017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5000bf8c1759fab6d81e420a8741d91c2b9978eae241036844ff09e7bf6d4a5f`  
		Last Modified: Fri, 31 Jul 2026 00:18:52 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json
