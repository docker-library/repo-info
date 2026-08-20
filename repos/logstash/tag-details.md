<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:8.19.20`](#logstash81920)
-	[`logstash:9.4.5`](#logstash945)
-	[`logstash:9.5.2`](#logstash952)

## `logstash:8.19.20`

```console
$ docker pull logstash@sha256:031850f888e721db9b3c59f13c31a7f532c464bad035f54fac299fd3f7797650
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:8.19.20` - linux; amd64

```console
$ docker pull logstash@sha256:4adc860a6eb6a83b7d2f1f8087e19e7f0c115cc6fec46b7d9af4e3777aa0538f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **527.8 MB (527844548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c23323631baef7d284309d533733a9551ac6e12badb7389968bb31fcb47ff28`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:24:03 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Tue, 18 Aug 2026 19:24:03 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.20-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.20 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
WORKDIR /usr/share/logstash
# Tue, 18 Aug 2026 19:24:17 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 18 Aug 2026 19:24:17 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:24:17 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:24:17 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
USER 1000
# Tue, 18 Aug 2026 19:24:17 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 18 Aug 2026 19:24:17 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.20 org.opencontainers.image.version=8.19.20 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-08-04T18:03:38+00:00 org.opencontainers.image.created=2026-08-04T18:03:38+00:00
# Tue, 18 Aug 2026 19:24:17 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03bddf555347c50d79a5c986a1752100005d069855c069fc3dcbf94e1dbab664`  
		Last Modified: Tue, 18 Aug 2026 19:24:57 GMT  
		Size: 46.8 MB (46789077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:158bd6b6d95070e10deef7ab9e9b0604d65db5680057873e035c742a17509899`  
		Last Modified: Tue, 18 Aug 2026 19:24:55 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c6f37ed3b110bb362f017b8749b437f43dbd67dbb5a16ed48e1755a82f3046`  
		Last Modified: Tue, 18 Aug 2026 19:25:04 GMT  
		Size: 451.0 MB (451034936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d3337f069c06b2ab61040ec4175988d56694859f1bcf804287e7c9295cbfbc8`  
		Last Modified: Tue, 18 Aug 2026 19:24:55 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:698936180c9767824e6b53c82d0ae994a8f7cfe611fbfc9cf84bc88404468900`  
		Last Modified: Tue, 18 Aug 2026 19:24:56 GMT  
		Size: 1.6 KB (1581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf25f931e9c110b105c33a2f8fd5a62e82d9d8ad1ca88315ef1280ef365dc5e`  
		Last Modified: Tue, 18 Aug 2026 19:24:56 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6413bf7e3c8ec5980df6aee32bed5fac9c8fdb8693db8a3d43b0376f32763e9`  
		Last Modified: Tue, 18 Aug 2026 19:24:58 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3671d95a097d432fd05ea410cdfd57b86a5636635a1fa1f18c2e6c0e5862a0b`  
		Last Modified: Tue, 18 Aug 2026 19:24:58 GMT  
		Size: 6.3 KB (6293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359b9abcecef5e03bd85359d04cc4086b648067404c1562cb8d52fc906613e3c`  
		Last Modified: Tue, 18 Aug 2026 19:24:59 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a072073153db516ffa26fe616c7e3e553810819339ce3cb1e289d71c72fa6bc6`  
		Last Modified: Tue, 18 Aug 2026 19:24:59 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac17fe3a20bd39bc0f8179064159e41302930b0e6857123f5cd978aa6c1585e`  
		Last Modified: Tue, 18 Aug 2026 19:24:59 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.20` - unknown; unknown

```console
$ docker pull logstash@sha256:9245f4916014db49f90d4456045b082cf1a54f8b4669525c8130997d4d6cc35e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3645530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bdac4b38b88a0610d25faa9f4c42eb9211c212186df595411ae4a88a97fda3a`

```dockerfile
```

-	Layers:
	-	`sha256:c0df3898b29812a064fdc7ddb71da9d0edd94d461ff80252a2a633dc4a602a1e`  
		Last Modified: Tue, 18 Aug 2026 19:24:55 GMT  
		Size: 3.6 MB (3609686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc099e068118a7b9d5f337d2cdd29dc75fa245722b376c4e555b3490aefd0de7`  
		Last Modified: Tue, 18 Aug 2026 19:24:55 GMT  
		Size: 35.8 KB (35844 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:8.19.20` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:910ac06aa8ec3d5e89e8385ebb751aa6b469a2132e1548dab613c78ee7e2cbe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **527.1 MB (527050481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2937228a66ad8316d3926ea976697efde67c42616b955fdae3235a1cc1ad8d98`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:24:03 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Tue, 18 Aug 2026 19:24:03 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.20-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.20 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
WORKDIR /usr/share/logstash
# Tue, 18 Aug 2026 19:24:17 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 18 Aug 2026 19:24:17 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:24:17 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:24:17 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 18 Aug 2026 19:24:17 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 19:24:18 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Tue, 18 Aug 2026 19:24:18 GMT
USER 1000
# Tue, 18 Aug 2026 19:24:18 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 18 Aug 2026 19:24:18 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.20 org.opencontainers.image.version=8.19.20 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-08-04T18:03:38+00:00 org.opencontainers.image.created=2026-08-04T18:03:38+00:00
# Tue, 18 Aug 2026 19:24:18 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:429ba0834bed85d2663a9db85287322db353efdc617606a65d16f6b46af4bb52`  
		Last Modified: Tue, 18 Aug 2026 19:24:58 GMT  
		Size: 48.6 MB (48576575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:158bd6b6d95070e10deef7ab9e9b0604d65db5680057873e035c742a17509899`  
		Last Modified: Tue, 18 Aug 2026 19:24:55 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9179210fb92c4ea3d3fafdddd6e27609a2f7e72fdaf3464fd173dcf88f1e11af`  
		Last Modified: Tue, 18 Aug 2026 19:25:06 GMT  
		Size: 449.3 MB (449318939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c89d3207a51d97ff008de57a363de78fefade20b8cfca0aa16e7f63aabc8ad`  
		Last Modified: Tue, 18 Aug 2026 19:24:56 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ec79c1420c31afebb5b6c9a18075051920cf219dc9f6f358e0006b47781ad2`  
		Last Modified: Tue, 18 Aug 2026 19:24:57 GMT  
		Size: 1.6 KB (1579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f48e9d3941828d51b711242a78f299a65e64615fd953a689f1ebe6860a601b14`  
		Last Modified: Tue, 18 Aug 2026 19:24:57 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af526902415d16a5aae703feb96749c4617d7f12792eaa172304feb7817012fc`  
		Last Modified: Tue, 18 Aug 2026 19:24:59 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c8073782072024360eab128f13980507c80b5040e22519729adfa114de7cc4`  
		Last Modified: Tue, 18 Aug 2026 19:24:59 GMT  
		Size: 6.3 KB (6295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9effd16ff6ef977f764f0bc9bdc56d777b97fe7bbc71e8d191fe3aeb2cf3219`  
		Last Modified: Tue, 18 Aug 2026 19:25:00 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb884d249d04164c1093e14a22c0fbe46f2ba232c1f61561e5996485365ac743`  
		Last Modified: Tue, 18 Aug 2026 19:25:00 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500c991761b2e0bae8562b4594cbd1d7a8e5100450c2cd8605e3c024b4a4e1b3`  
		Last Modified: Tue, 18 Aug 2026 19:25:00 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.20` - unknown; unknown

```console
$ docker pull logstash@sha256:670c99047a87eba87c7828f153c1c3002250b7b27236c609984c45da307d4dec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3646084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3212ec30b298c8049b30339e933a2158f6c0e389b90897cdecbeb2e3fd86244`

```dockerfile
```

-	Layers:
	-	`sha256:3b3f92832338eba6846b858cdcb63a6ee0555adc95c3343b71c09367aca342f3`  
		Last Modified: Tue, 18 Aug 2026 19:24:56 GMT  
		Size: 3.6 MB (3610111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43923565badcb7949ec5ab204e1570423cd09682dc7ceeba08aae7a181b067e5`  
		Last Modified: Tue, 18 Aug 2026 19:24:56 GMT  
		Size: 36.0 KB (35973 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.4.5`

```console
$ docker pull logstash@sha256:d3159329e72b62c7e3127eb66c616a635944320557f14b6eda31f59da5c5e494
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.5` - linux; amd64

```console
$ docker pull logstash@sha256:cf9fc545764f290ba793459fffd3de3c7650ad97f640cff7ef521daff53e5c53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **526.5 MB (526516676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47b696756328500576931e5bf4d79c8408a5be25ab7d5a26ee04472eb64b148f`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 17 Aug 2026 17:27:15 GMT
ENV container oci
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:975e595a9e6cbbfee7f07eb5443a58fb81eff06cafb12ae4f0e1422e8692c141 in /      
# Mon, 17 Aug 2026 17:27:16 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 17:27:16 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:65a3d9e22af3e56e090455b33d2c3174efac94e4f8a1283201a9e46186020641 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:65a3d9e22af3e56e090455b33d2c3174efac94e4f8a1283201a9e46186020641 in /root/buildinfo/      
# Mon, 17 Aug 2026 17:27:16 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T17:26:46Z" "org.opencontainers.image.revision"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "build-date"="2026-08-17T17:26:46Z" "architecture"="x86_64" "vcs-ref"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "vcs-type"="git" "release"="1786987521"org.opencontainers.image.created=2026-08-17T17:26:46Z,org.opencontainers.image.revision=6bb838e7904a1c68094d157a898fff623ad3fcb9
# Mon, 17 Aug 2026 22:38:35 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 17 Aug 2026 22:38:35 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:38:35 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 17 Aug 2026 22:38:35 GMT
WORKDIR /usr/share
# Mon, 17 Aug 2026 22:38:38 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:39:36 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Mon, 17 Aug 2026 22:39:36 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Mon, 17 Aug 2026 22:39:36 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Mon, 17 Aug 2026 22:39:36 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Mon, 17 Aug 2026 22:39:36 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Mon, 17 Aug 2026 22:39:36 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Mon, 17 Aug 2026 22:39:36 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Mon, 17 Aug 2026 22:39:36 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Mon, 17 Aug 2026 22:39:37 GMT
WORKDIR /usr/share/logstash
# Mon, 17 Aug 2026 22:39:37 GMT
USER 1000
# Mon, 17 Aug 2026 22:39:37 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Mon, 17 Aug 2026 22:39:37 GMT
LABEL org.label-schema.build-date=2026-08-04T17:59:18+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.5 org.opencontainers.image.created=2026-08-04T17:59:18+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Mon, 17 Aug 2026 22:39:37 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:c282501e7b1aa336a39e8eb09b91d97b94921c378c6a6fbfe7b56d2db572c305`  
		Last Modified: Mon, 17 Aug 2026 18:11:34 GMT  
		Size: 40.7 MB (40711990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d6e799baba3a83045f467308c31f3bf266f3a9b424320c7c558ef8a61d639ca`  
		Last Modified: Mon, 17 Aug 2026 22:40:11 GMT  
		Size: 4.8 MB (4771087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25924bd986ad93f3fe73faeb00e9214fe48651643641477b4ba0ef0ae3451e8f`  
		Last Modified: Mon, 17 Aug 2026 22:40:20 GMT  
		Size: 480.8 MB (480768793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c783f82e96940868639390c3186095c85eb1d1de0fb1e8ec3ed6ce214c4b86d`  
		Last Modified: Mon, 17 Aug 2026 22:40:11 GMT  
		Size: 6.4 KB (6365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbf5c3e82f5e48a4be27b13446294313cc2dce821e99e3e57cf32f814c5ef82`  
		Last Modified: Mon, 17 Aug 2026 22:40:11 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5977233a0a91d17a5cedb454940ee3d1910be36b161c11ada639908ca3a37e8`  
		Last Modified: Mon, 17 Aug 2026 22:40:12 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc105ce4c0fd9109541b16deb2701d8f8bc80d8eaa3787e6761cd3de4ed8c0fd`  
		Last Modified: Mon, 17 Aug 2026 22:40:12 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d59deac1dc709dc1ee36bfe60aef2ed5bb73330f4ae093b93f69af4703e0713`  
		Last Modified: Mon, 17 Aug 2026 22:40:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e06b92ed36b912b04b6a6c790dd843def893769d98405423ca1457db3fa9f2e`  
		Last Modified: Mon, 17 Aug 2026 22:40:13 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4a209398bce026c23d794e9bcc36e1a1017e66e223e31bc6e4a2a837196335`  
		Last Modified: Mon, 17 Aug 2026 22:40:13 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.5` - unknown; unknown

```console
$ docker pull logstash@sha256:84513ccb5b902116c161ee977eacca198c17ca6b42987666358f97779924c923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2145781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d14f1e6ad1136ebc981a6a17a7a6fee6f2c5145e7bfe7c20854e12e7ae7deb`

```dockerfile
```

-	Layers:
	-	`sha256:3b4a1e5095dfd0a63c15643c45ede88b00dfba3fa0facf7ad2d19c866f97d7cc`  
		Last Modified: Mon, 17 Aug 2026 22:40:11 GMT  
		Size: 2.1 MB (2115581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:041684a873c087c2253820f972db627d20cf6f383676dd6a560c4c285d481424`  
		Last Modified: Mon, 17 Aug 2026 22:40:11 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.5` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:7d1c2ee67078af7bbe9d266832b2c25b032a7a9c3756b1777d27400a3f7344de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **522.9 MB (522874996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ded4adf847ff4bc34bd49a21f8dfc5f8d73d00ae49dc6cfaf8a463ddbcd8acb8`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 17 Aug 2026 17:29:38 GMT
ENV container oci
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:bc0c34c3de4568914cc6d0ce9e475804776b9932a837352e0a0b8eaeec65f0ab in /      
# Mon, 17 Aug 2026 17:29:39 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 17:29:39 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:75017821d3d7ffd12376ef094bfe2a63592d7cc455658a85911fc189573e02d7 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:75017821d3d7ffd12376ef094bfe2a63592d7cc455658a85911fc189573e02d7 in /root/buildinfo/      
# Mon, 17 Aug 2026 17:29:40 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T17:29:16Z" "org.opencontainers.image.revision"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "build-date"="2026-08-17T17:29:16Z" "architecture"="aarch64" "vcs-ref"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "vcs-type"="git" "release"="1786987521"org.opencontainers.image.created=2026-08-17T17:29:16Z,org.opencontainers.image.revision=6bb838e7904a1c68094d157a898fff623ad3fcb9
# Mon, 17 Aug 2026 22:37:52 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 17 Aug 2026 22:37:52 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:37:52 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 17 Aug 2026 22:37:52 GMT
WORKDIR /usr/share
# Mon, 17 Aug 2026 22:37:55 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:38:43 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Mon, 17 Aug 2026 22:38:44 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Mon, 17 Aug 2026 22:38:44 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Mon, 17 Aug 2026 22:38:44 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Mon, 17 Aug 2026 22:38:44 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Mon, 17 Aug 2026 22:38:44 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Mon, 17 Aug 2026 22:38:44 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Mon, 17 Aug 2026 22:38:44 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Mon, 17 Aug 2026 22:38:44 GMT
WORKDIR /usr/share/logstash
# Mon, 17 Aug 2026 22:38:44 GMT
USER 1000
# Mon, 17 Aug 2026 22:38:44 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Mon, 17 Aug 2026 22:38:44 GMT
LABEL org.label-schema.build-date=2026-08-04T17:59:18+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.5 org.opencontainers.image.created=2026-08-04T17:59:18+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Mon, 17 Aug 2026 22:38:44 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:210b7d6959bf1413d4a100e480de134d4278c3fb9c1808fc5395449f4bd1229f`  
		Last Modified: Mon, 17 Aug 2026 18:17:33 GMT  
		Size: 38.8 MB (38815799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a21f7ca97430ea1f71379e61d05ccf53040760198c143e5f6731806d5fa6463`  
		Last Modified: Mon, 17 Aug 2026 22:39:23 GMT  
		Size: 4.8 MB (4757670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795d5d9632ba80902a2309f34fd7f068bdc6739308b8802a075152cd853e498e`  
		Last Modified: Mon, 17 Aug 2026 22:39:33 GMT  
		Size: 479.0 MB (479036731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d298a14b2428da0703d915c3d264d19f59f6d387344e56eaa124ead9c456e9b4`  
		Last Modified: Mon, 17 Aug 2026 22:39:23 GMT  
		Size: 6.4 KB (6363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05bb64c9cdb417b8df04e8351e28b4baf7dbcf4396f1b3969a1f707157dd2272`  
		Last Modified: Mon, 17 Aug 2026 22:39:23 GMT  
		Size: 255.2 KB (255184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf7cb15cd0a8739fe78866c590c32466e7241dbd2bbf3ce0db060628484be97`  
		Last Modified: Mon, 17 Aug 2026 22:39:24 GMT  
		Size: 350.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:139f86b4f5ea6101a09463ff20eec9d9bccd7c369e14cfec702bd3138f06af11`  
		Last Modified: Mon, 17 Aug 2026 22:39:24 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af405fd355c5f958933feef0f5da357bfeb78b8cf526568294f36af1251a61c8`  
		Last Modified: Mon, 17 Aug 2026 22:39:24 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dcf51cf8beef899069ce3c03bfd89c5e02964de0113b288fee465ffaecf0347`  
		Last Modified: Mon, 17 Aug 2026 22:39:25 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9a716c221daf22489ce2a0cfb2e3fdf85ffc8ff815b0355ea41a61bc9cf94ae`  
		Last Modified: Mon, 17 Aug 2026 22:39:25 GMT  
		Size: 710.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.5` - unknown; unknown

```console
$ docker pull logstash@sha256:63a81a6e617614a3f6f1dc11047659f276533da83f24493238971870a93f36d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2144646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:647b2e49bbf68dad2f0eacf25f3bde1bab98d03eb71275377569f834b6144f82`

```dockerfile
```

-	Layers:
	-	`sha256:89a3ac0e96a521bc54d2d61bb668e90e6d9ab37a2333df1b87f0dc0841d0e3f6`  
		Last Modified: Mon, 17 Aug 2026 22:39:23 GMT  
		Size: 2.1 MB (2114369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b60254d750e300ba417170bc894b29c335d52bcc45cdd5b566d82dbfada7701c`  
		Last Modified: Mon, 17 Aug 2026 22:39:23 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.5.2`

```console
$ docker pull logstash@sha256:57e83ad12213a21b0327a0098f4812787112cff1d5e7c81f149bb3c285cb3b96
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.5.2` - linux; amd64

```console
$ docker pull logstash@sha256:b249ffa88fefb987b136ad52bd31c9b0c716256e2ac6c8bde999d98dd5ccfb78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **535.5 MB (535512471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abe78c76b15384c75469add1ac77793e9753b96cd51f5408bcaa1b40f49db711`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 17 Aug 2026 17:27:15 GMT
ENV container oci
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:975e595a9e6cbbfee7f07eb5443a58fb81eff06cafb12ae4f0e1422e8692c141 in /      
# Mon, 17 Aug 2026 17:27:16 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 17:27:16 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:65a3d9e22af3e56e090455b33d2c3174efac94e4f8a1283201a9e46186020641 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:65a3d9e22af3e56e090455b33d2c3174efac94e4f8a1283201a9e46186020641 in /root/buildinfo/      
# Mon, 17 Aug 2026 17:27:16 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T17:26:46Z" "org.opencontainers.image.revision"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "build-date"="2026-08-17T17:26:46Z" "architecture"="x86_64" "vcs-ref"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "vcs-type"="git" "release"="1786987521"org.opencontainers.image.created=2026-08-17T17:26:46Z,org.opencontainers.image.revision=6bb838e7904a1c68094d157a898fff623ad3fcb9
# Thu, 20 Aug 2026 17:22:01 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 20 Aug 2026 17:22:01 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 17:22:01 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 20 Aug 2026 17:22:01 GMT
WORKDIR /usr/share
# Thu, 20 Aug 2026 17:22:04 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Thu, 20 Aug 2026 17:22:26 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.2-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.2 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Thu, 20 Aug 2026 17:22:26 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Thu, 20 Aug 2026 17:22:26 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Thu, 20 Aug 2026 17:22:26 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Thu, 20 Aug 2026 17:22:26 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Thu, 20 Aug 2026 17:22:26 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Thu, 20 Aug 2026 17:22:26 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Thu, 20 Aug 2026 17:22:26 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Thu, 20 Aug 2026 17:22:26 GMT
WORKDIR /usr/share/logstash
# Thu, 20 Aug 2026 17:22:26 GMT
USER 1000
# Thu, 20 Aug 2026 17:22:26 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Thu, 20 Aug 2026 17:22:26 GMT
LABEL org.label-schema.build-date=2026-08-17T18:29:41+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.2 org.opencontainers.image.created=2026-08-17T18:29:41+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.2 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Thu, 20 Aug 2026 17:22:26 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:c282501e7b1aa336a39e8eb09b91d97b94921c378c6a6fbfe7b56d2db572c305`  
		Last Modified: Mon, 17 Aug 2026 18:11:34 GMT  
		Size: 40.7 MB (40711990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcbe781d234f3fef05c22fa3303e0147fc12e71c869a067ca0790b8863f66f01`  
		Last Modified: Thu, 20 Aug 2026 17:23:04 GMT  
		Size: 4.8 MB (4771090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c857d0baf513f26c50c5ba09efe702f1b6beca6f28a6eb3d70c792cd3f00d162`  
		Last Modified: Thu, 20 Aug 2026 17:23:13 GMT  
		Size: 489.8 MB (489764401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:767a0f16904788ac2282a0bdd416c236df49c0fc7cfe32adecb71ba78ebe028c`  
		Last Modified: Thu, 20 Aug 2026 17:23:04 GMT  
		Size: 6.5 KB (6542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d6e2ad7dee42e422a68d94b43bb839863003dda9a54c7ff69f66ca93dfff9af`  
		Last Modified: Thu, 20 Aug 2026 17:23:04 GMT  
		Size: 255.2 KB (255186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc8f7ddef2869522917e0bef0677743c27c569d2b39f4e6047cee29e1e07cd0`  
		Last Modified: Thu, 20 Aug 2026 17:23:05 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234c0a6ea789c7d1745e15efd03f4c9faca9609ac851510f8a437fe1924af1bf`  
		Last Modified: Thu, 20 Aug 2026 17:23:05 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:035a2445b4e340e7fd1a5f5eb240d67fcb489f107a211d6ff860c034cff52961`  
		Last Modified: Thu, 20 Aug 2026 17:23:05 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5721b767e91802bd582765bab28139092063a4b5f07b70eaa1c0b23879835d58`  
		Last Modified: Thu, 20 Aug 2026 17:23:07 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9eff5d00e1540b404ef59343feb2bf1e94fb37c422457138d331b7474274228`  
		Last Modified: Thu, 20 Aug 2026 17:23:07 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.2` - unknown; unknown

```console
$ docker pull logstash@sha256:c97931f81f3fccd3b6f6ef4bca9f0c8a92c90ccccf39582b63c90c0fdf313fd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2172014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2a3b5227dce75b1707b81023b6b427c9ad9d8ceee4361fb5fcff9ce7a58fe57`

```dockerfile
```

-	Layers:
	-	`sha256:69fe29c0db4d8125c143f661d45b9ab0e015e70045ac2864346cb4aef022b1c4`  
		Last Modified: Thu, 20 Aug 2026 17:23:04 GMT  
		Size: 2.1 MB (2141814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5cf95b86f4a7ab1d2cb4ab4e87126d86be77ed96f488d57e33066812b4e5f77`  
		Last Modified: Thu, 20 Aug 2026 17:23:04 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.5.2` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:128086445752349f658416d6968f184a2030656738b8869d99b376e0556c008a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.9 MB (531878681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a0cf426a96535aa7717ee55a05d8826eef85943ea68e638a44c0240231cccbf`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 17 Aug 2026 17:29:38 GMT
ENV container oci
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:bc0c34c3de4568914cc6d0ce9e475804776b9932a837352e0a0b8eaeec65f0ab in /      
# Mon, 17 Aug 2026 17:29:39 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 17:29:39 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:75017821d3d7ffd12376ef094bfe2a63592d7cc455658a85911fc189573e02d7 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:75017821d3d7ffd12376ef094bfe2a63592d7cc455658a85911fc189573e02d7 in /root/buildinfo/      
# Mon, 17 Aug 2026 17:29:40 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T17:29:16Z" "org.opencontainers.image.revision"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "build-date"="2026-08-17T17:29:16Z" "architecture"="aarch64" "vcs-ref"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "vcs-type"="git" "release"="1786987521"org.opencontainers.image.created=2026-08-17T17:29:16Z,org.opencontainers.image.revision=6bb838e7904a1c68094d157a898fff623ad3fcb9
# Thu, 20 Aug 2026 17:22:04 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 20 Aug 2026 17:22:04 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 17:22:04 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 20 Aug 2026 17:22:04 GMT
WORKDIR /usr/share
# Thu, 20 Aug 2026 17:22:07 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Thu, 20 Aug 2026 17:22:37 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.2-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.2 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Thu, 20 Aug 2026 17:22:37 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Thu, 20 Aug 2026 17:22:37 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Thu, 20 Aug 2026 17:22:37 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Thu, 20 Aug 2026 17:22:37 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Thu, 20 Aug 2026 17:22:37 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Thu, 20 Aug 2026 17:22:38 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Thu, 20 Aug 2026 17:22:38 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Thu, 20 Aug 2026 17:22:38 GMT
WORKDIR /usr/share/logstash
# Thu, 20 Aug 2026 17:22:38 GMT
USER 1000
# Thu, 20 Aug 2026 17:22:38 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Thu, 20 Aug 2026 17:22:38 GMT
LABEL org.label-schema.build-date=2026-08-17T18:29:41+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.2 org.opencontainers.image.created=2026-08-17T18:29:41+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.2 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Thu, 20 Aug 2026 17:22:38 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:210b7d6959bf1413d4a100e480de134d4278c3fb9c1808fc5395449f4bd1229f`  
		Last Modified: Mon, 17 Aug 2026 18:17:33 GMT  
		Size: 38.8 MB (38815799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c547249dd879cc692f5b393a1cb71733afe46d1896ef3a747cf377834dfd2de`  
		Last Modified: Thu, 20 Aug 2026 17:23:18 GMT  
		Size: 4.8 MB (4757659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e1b6af9b14c14e4835aadf1076c446fdd4cc7efbf3f4f74cac7b097a156d54`  
		Last Modified: Thu, 20 Aug 2026 17:23:28 GMT  
		Size: 488.0 MB (488040239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e1442a1a20ddb07af2cf1ecda4baf154339c74545a6d9946ab2a1140fdfd70`  
		Last Modified: Thu, 20 Aug 2026 17:23:18 GMT  
		Size: 6.5 KB (6538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b8a05716a3db98f43f6b32b05b989567ffadc3fd8fe2efacb65c2e410e768b`  
		Last Modified: Thu, 20 Aug 2026 17:23:18 GMT  
		Size: 255.2 KB (255184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5d9577c75b70dbd2c730918e479ebd5dc24aa22542f5f95fb8287c21265cd0`  
		Last Modified: Thu, 20 Aug 2026 17:23:19 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08542b2e6274ccfba97367b56e61805696e29b1ea9f1f801a8b44688020f4e7d`  
		Last Modified: Thu, 20 Aug 2026 17:23:19 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25541ce5eff3e9294c3c79351f804e74abd3c654123ebbd5b6be5bccfc86ad59`  
		Last Modified: Thu, 20 Aug 2026 17:23:19 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee8f2a956b8f9f4834e12899aeb3f9145326c2335b0d6ed23603f813d06719a5`  
		Last Modified: Thu, 20 Aug 2026 17:23:20 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0e8cbf88db90c2ca90091a7cdc10c91af484d8167f8e772c942661af5fc5474`  
		Last Modified: Thu, 20 Aug 2026 17:23:20 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.2` - unknown; unknown

```console
$ docker pull logstash@sha256:0789339169ec295b83e0d1ff162c7d2d31f2e205ea661d43471e111357112aa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2170879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:230ccc8e9331a3a58bf187715bc262ec46c449c88e21f37814469a62b450358b`

```dockerfile
```

-	Layers:
	-	`sha256:48d1c2f416e01be84afca6cd34b543bd0e9fc1051c75e469dc3c16ab7df15903`  
		Last Modified: Thu, 20 Aug 2026 17:23:18 GMT  
		Size: 2.1 MB (2140602 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a929c5ed8d2285721439be36e2eaa809383e440f2bca9ef6c976ab437b55883f`  
		Last Modified: Thu, 20 Aug 2026 17:23:18 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json
