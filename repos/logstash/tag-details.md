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
$ docker pull logstash@sha256:833b5a2293dbfffe3abfbc71e79c3875ee6fa485dc69419823614cc657f6f59e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.5` - linux; amd64

```console
$ docker pull logstash@sha256:705d519563888bb94b7d9013bf8048f62b3da61b5a188d855e0aa3dd1ed5cd85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **526.5 MB (526518288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd87cafbd2854e10da61da4d9cc32e830a302650d769cb115a81428ae8a8d227`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:25:41 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 31 Aug 2026 19:25:41 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:25:41 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 31 Aug 2026 19:25:41 GMT
WORKDIR /usr/share
# Mon, 31 Aug 2026 19:25:44 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:26:45 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Mon, 31 Aug 2026 19:26:45 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Mon, 31 Aug 2026 19:26:45 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Mon, 31 Aug 2026 19:26:45 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Mon, 31 Aug 2026 19:26:45 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Mon, 31 Aug 2026 19:26:45 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Mon, 31 Aug 2026 19:26:45 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Mon, 31 Aug 2026 19:26:45 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:26:45 GMT
WORKDIR /usr/share/logstash
# Mon, 31 Aug 2026 19:26:45 GMT
USER 1000
# Mon, 31 Aug 2026 19:26:45 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Mon, 31 Aug 2026 19:26:45 GMT
LABEL org.label-schema.build-date=2026-08-04T17:59:18+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.5 org.opencontainers.image.created=2026-08-04T17:59:18+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Mon, 31 Aug 2026 19:26:45 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc41793832d5e03ff2f94f09a55d36f43c47164a9a4ea09fc589bdac0002795b`  
		Last Modified: Mon, 31 Aug 2026 19:27:21 GMT  
		Size: 4.8 MB (4774923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c395d41cad087d74dd08c6c7063d86ecd50784036d2457ecb7640ff36d410d`  
		Last Modified: Mon, 31 Aug 2026 19:27:31 GMT  
		Size: 480.8 MB (480768974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:280c90a83bc65621321e55b8c974de4cedf1fffe9934ff8349a4211e3cf319ae`  
		Last Modified: Mon, 31 Aug 2026 19:27:21 GMT  
		Size: 6.4 KB (6367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61096ce6c2264673f236f03d865e17bd758bf9083883a39fa48bc8defd6f97f2`  
		Last Modified: Mon, 31 Aug 2026 19:27:21 GMT  
		Size: 255.2 KB (255186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d625a20eaeee1d7275d7675496bfbfea4c59a392738dc408dfd51bbb735be85`  
		Last Modified: Mon, 31 Aug 2026 19:27:22 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ba1456c39d3495b722ff1ce920c2c3fc214028f2826130906e5e9e0e063c3d`  
		Last Modified: Mon, 31 Aug 2026 19:27:23 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3d20df7f9118285e4c8cb5795b38115697d5a19b14c3df03f8517fa85d6dfdb`  
		Last Modified: Mon, 31 Aug 2026 19:27:23 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b02df55916c0192505206b99447c6a4dfd61554bd86fb832e277b69724175f5`  
		Last Modified: Mon, 31 Aug 2026 19:27:24 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d17902a0a69aeb9d5e8d43c548e5895a203833ef7424b34adb776338a55c38f6`  
		Last Modified: Mon, 31 Aug 2026 19:27:24 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.5` - unknown; unknown

```console
$ docker pull logstash@sha256:59d2c1133994030f371aeb0000b461666ca89b7d21d5d91213066db5be7b915f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2145793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c38c3f6220290c2bb1203d100d69af24a2494fa943ddc2036ed38c154055c9b2`

```dockerfile
```

-	Layers:
	-	`sha256:6e9dbbc4ea332f89c6ea9a13de476fce02a41e04fafb7a47befd905ae8dfd76a`  
		Last Modified: Mon, 31 Aug 2026 19:27:21 GMT  
		Size: 2.1 MB (2115593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1cb0a4f61d29cd6c1463ef84e21ef3dd07c042cff049e50336bdd2e832d8551e`  
		Last Modified: Mon, 31 Aug 2026 19:27:21 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.5` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:c5f565d7f95bf60561b3202b22f21fb3c6d46476f89b0279ff8b3a0509107015
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **522.9 MB (522877316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44f94f8f472a06ac9694c80a8cca2ffd99041fea5d4bd69463d1717270a8ea93`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:55:27 GMT
ENV container oci
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:f2269a49305dc61b5c62efda70ce8327957d5aafa0915c5b324ac4402d0afd7e in /      
# Mon, 31 Aug 2026 08:55:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:55:28 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:314f6db1cd15d342fa9962b7dae89ed14fe0c81c812223914e17998e1aac0abe in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:314f6db1cd15d342fa9962b7dae89ed14fe0c81c812223914e17998e1aac0abe in /root/buildinfo/      
# Mon, 31 Aug 2026 08:55:28 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:55:06Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:55:06Z" "architecture"="aarch64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:55:06Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:42:58 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 31 Aug 2026 19:42:58 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:42:58 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 31 Aug 2026 19:42:58 GMT
WORKDIR /usr/share
# Mon, 31 Aug 2026 19:43:01 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:43:56 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Mon, 31 Aug 2026 19:43:56 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Mon, 31 Aug 2026 19:43:56 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Mon, 31 Aug 2026 19:43:56 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Mon, 31 Aug 2026 19:43:56 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Mon, 31 Aug 2026 19:43:56 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Mon, 31 Aug 2026 19:43:56 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Mon, 31 Aug 2026 19:43:56 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:43:56 GMT
WORKDIR /usr/share/logstash
# Mon, 31 Aug 2026 19:43:56 GMT
USER 1000
# Mon, 31 Aug 2026 19:43:56 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Mon, 31 Aug 2026 19:43:56 GMT
LABEL org.label-schema.build-date=2026-08-04T17:59:18+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.5 org.opencontainers.image.created=2026-08-04T17:59:18+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Mon, 31 Aug 2026 19:43:56 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:8289a871631249c9c1a3b2366de832716cd43c77864c245a1c1364a2abeb5704`  
		Last Modified: Mon, 31 Aug 2026 10:01:50 GMT  
		Size: 38.8 MB (38815996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d398957c301abfc8789b9e87410ffe85badd4735c30455aef4d01d52e2c537`  
		Last Modified: Mon, 31 Aug 2026 19:44:35 GMT  
		Size: 4.8 MB (4759933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ac479bbc71f0e53d92b073b1968178e16cb7e81757f3d135978cad5bdb14a22`  
		Last Modified: Mon, 31 Aug 2026 19:44:44 GMT  
		Size: 479.0 MB (479036584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a789f828f92d88f78aacceeb698448a15458d5afe408e1e27f008dc376df730`  
		Last Modified: Mon, 31 Aug 2026 19:44:35 GMT  
		Size: 6.4 KB (6364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10ba1822b904d80325b89a32288dd4e1734cf4bd84b538d12013af429d61591b`  
		Last Modified: Mon, 31 Aug 2026 19:44:35 GMT  
		Size: 255.2 KB (255186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73a359279e0cd85887e5d76053ba09efc605e6d42d1133f0c8ead55b8ca5ae5`  
		Last Modified: Mon, 31 Aug 2026 19:44:36 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:819800983c034f23076e180300009d9f560f6bfa6df8d69d9125fe0fafc3ee9d`  
		Last Modified: Mon, 31 Aug 2026 19:44:36 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:221a6fc22eb1d78205625279f2e49225609992daa76db72014543c7c89382a50`  
		Last Modified: Mon, 31 Aug 2026 19:44:37 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc8060eda82ce41b3bb9b6a4e85d887c1c65b7e24a85c3ac0f64c44fd0698c6`  
		Last Modified: Mon, 31 Aug 2026 19:44:38 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73608fcf02977c7a0570a5207f8d627c6191e6614ee4c578de72d12fd7988435`  
		Last Modified: Mon, 31 Aug 2026 19:44:38 GMT  
		Size: 710.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.5` - unknown; unknown

```console
$ docker pull logstash@sha256:1444a49f5f12d1976328a6a04e6680d57bf9ad4cd3db31537f89b85c227fb704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2144662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:349bf317ff3cb7f3303716ce21bbe950aba11aa04a43b683601d65664b8a6ddf`

```dockerfile
```

-	Layers:
	-	`sha256:caa2a52098195591ebf58252bad51c2fbea2d3f3bb9a62e9997330b6360604b7`  
		Last Modified: Mon, 31 Aug 2026 19:44:35 GMT  
		Size: 2.1 MB (2114385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27e4bbe790cf33bf98cdf09c8bae77db4aadf8ff4b93a6ddc55e2c8c7936ce65`  
		Last Modified: Mon, 31 Aug 2026 19:44:35 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.5.2`

```console
$ docker pull logstash@sha256:846ff0640c359a5268bffbac3b673af6c4b7174d735330ddac0e61da4fc5d9c7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.5.2` - linux; amd64

```console
$ docker pull logstash@sha256:31095fc0262ff58d06b2daf7d6dd22b0aa8efff05398f6a40eb12393d3dc4990
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **535.5 MB (535513768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30fd57b41d22421f58541db87f6513ac8f2d885ee261176fad16c1154185dfbc`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:25:42 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 31 Aug 2026 19:25:42 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:25:42 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 31 Aug 2026 19:25:42 GMT
WORKDIR /usr/share
# Mon, 31 Aug 2026 19:25:45 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:26:41 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.2-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.2 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Mon, 31 Aug 2026 19:26:41 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Mon, 31 Aug 2026 19:26:41 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Mon, 31 Aug 2026 19:26:41 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Mon, 31 Aug 2026 19:26:42 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Mon, 31 Aug 2026 19:26:42 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Mon, 31 Aug 2026 19:26:42 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Mon, 31 Aug 2026 19:26:42 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:26:42 GMT
WORKDIR /usr/share/logstash
# Mon, 31 Aug 2026 19:26:42 GMT
USER 1000
# Mon, 31 Aug 2026 19:26:42 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Mon, 31 Aug 2026 19:26:42 GMT
LABEL org.label-schema.build-date=2026-08-17T18:29:41+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.2 org.opencontainers.image.created=2026-08-17T18:29:41+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.2 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Mon, 31 Aug 2026 19:26:42 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0d87fb31e480ac84f3340a1007b26b351f5eb408d52be0607e2294784002547`  
		Last Modified: Mon, 31 Aug 2026 19:27:19 GMT  
		Size: 4.8 MB (4774906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a57c5fff79a35154fa3658300d63ef2ffc66bc40d982a7f0d0faf6b62b4afe3e`  
		Last Modified: Mon, 31 Aug 2026 19:27:28 GMT  
		Size: 489.8 MB (489764296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55b07fccebc89b1061c7d7a997626443f35bb9638aa01fa929836e90aa96aaa2`  
		Last Modified: Mon, 31 Aug 2026 19:27:18 GMT  
		Size: 6.5 KB (6541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9116e8c0653b17ae1e5cdd11de66aa9e1fe38f6a49028e04628c61637a0c0b22`  
		Last Modified: Mon, 31 Aug 2026 19:27:18 GMT  
		Size: 255.2 KB (255184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108d5bd15010d3c20d3a8db379d5c818a87f92274bc5355b22771ab24fdbb053`  
		Last Modified: Mon, 31 Aug 2026 19:27:20 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ef7ece6a4bd77c307b73aad057c267efb2f42c831d6078698aa7da03ef915a`  
		Last Modified: Mon, 31 Aug 2026 19:27:20 GMT  
		Size: 1.6 KB (1579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b37e4dd35ca214793e0892bbed2b721ba31b4a65f2cf14a3a577b5a7f8aeee70`  
		Last Modified: Mon, 31 Aug 2026 19:27:20 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5422dc73d6ae7d845457f07e016642ed5c72cb8f087fb3485b5b8e154ebf653c`  
		Last Modified: Mon, 31 Aug 2026 19:27:21 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90dd9c10896805e8f9553edb7593cfe20d503c05c0e5269593c873f473bddcab`  
		Last Modified: Mon, 31 Aug 2026 19:27:21 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.2` - unknown; unknown

```console
$ docker pull logstash@sha256:52073c27a46724e06a0fd0270e0d72d71eea548c158b5f75d85f14ab2a043ea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2172025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:793833aedcf7529e0d34c6562f9a1a7200375d4304ecb2a872466928e47cf886`

```dockerfile
```

-	Layers:
	-	`sha256:42d3a46834fcbb75191c5038feb414b71446a49ea0d764fcaf61c8385b747071`  
		Last Modified: Mon, 31 Aug 2026 19:27:19 GMT  
		Size: 2.1 MB (2141826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d428f0aea2d6007fe4af9bc46e2b59d0432409de8ae69552ca7c186e571529fe`  
		Last Modified: Mon, 31 Aug 2026 19:27:18 GMT  
		Size: 30.2 KB (30199 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.5.2` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:9909f0aa86c23724a5252e8a9843ba0d6c4e24809ed42d4fd8feaf2d59e9db1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.9 MB (531880599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:728239a60ea197111f75026f5d84ad87b8581b5e39e934adb356357217e64796`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:55:27 GMT
ENV container oci
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:f2269a49305dc61b5c62efda70ce8327957d5aafa0915c5b324ac4402d0afd7e in /      
# Mon, 31 Aug 2026 08:55:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:55:28 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:314f6db1cd15d342fa9962b7dae89ed14fe0c81c812223914e17998e1aac0abe in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:314f6db1cd15d342fa9962b7dae89ed14fe0c81c812223914e17998e1aac0abe in /root/buildinfo/      
# Mon, 31 Aug 2026 08:55:28 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:55:06Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:55:06Z" "architecture"="aarch64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:55:06Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:55:00 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 31 Aug 2026 19:55:00 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:55:00 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 31 Aug 2026 19:55:00 GMT
WORKDIR /usr/share
# Mon, 31 Aug 2026 19:55:03 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:56:00 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.2-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.2 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Mon, 31 Aug 2026 19:56:01 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Mon, 31 Aug 2026 19:56:01 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Mon, 31 Aug 2026 19:56:01 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Mon, 31 Aug 2026 19:56:01 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Mon, 31 Aug 2026 19:56:01 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Mon, 31 Aug 2026 19:56:01 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Mon, 31 Aug 2026 19:56:01 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:56:01 GMT
WORKDIR /usr/share/logstash
# Mon, 31 Aug 2026 19:56:01 GMT
USER 1000
# Mon, 31 Aug 2026 19:56:01 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Mon, 31 Aug 2026 19:56:01 GMT
LABEL org.label-schema.build-date=2026-08-17T18:29:41+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.2 org.opencontainers.image.created=2026-08-17T18:29:41+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.2 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Mon, 31 Aug 2026 19:56:01 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:8289a871631249c9c1a3b2366de832716cd43c77864c245a1c1364a2abeb5704`  
		Last Modified: Mon, 31 Aug 2026 10:01:50 GMT  
		Size: 38.8 MB (38815996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dad897438d3a2b09f5973cc1d025cfa81b2e528495c6c6fd11df944518efd24`  
		Last Modified: Mon, 31 Aug 2026 19:56:41 GMT  
		Size: 4.8 MB (4759910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2c5f5c8ac73c42fd5d5a65057875982d0eb8ece82cb662b526e05a648dc0ca5`  
		Last Modified: Mon, 31 Aug 2026 19:56:50 GMT  
		Size: 488.0 MB (488039707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee7566cd4f64cac0cdfa0c89f284d6c58548ca7f6c65f4c9282734b7ce353c81`  
		Last Modified: Mon, 31 Aug 2026 19:56:41 GMT  
		Size: 6.5 KB (6542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c45030313fc242b2886804a32752d1aa5e4e392970c4c0f7fd0b42c82187ffa`  
		Last Modified: Mon, 31 Aug 2026 19:56:41 GMT  
		Size: 255.2 KB (255186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0bba36c9c554d5a716fa3e916e98f61e12d90f8ee3ac8d43959564b65eb922`  
		Last Modified: Mon, 31 Aug 2026 19:56:42 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182009d4bc2a4981a72b7953599f0ddad053c8106c8b05ed073d0a22f6418b10`  
		Last Modified: Mon, 31 Aug 2026 19:56:43 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f95e48254f4ba5eb76b802f6a741e576759e35683d6797c3cb8363f019bfadf`  
		Last Modified: Mon, 31 Aug 2026 19:56:43 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9dc1bc2f3238f1d4856188eb5e2e9b6394149171ee0a4da9b0d5e300fe55c21`  
		Last Modified: Mon, 31 Aug 2026 19:56:44 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1289ccf9cf813b6d0cdcd8e04f46248e2e2b251eddf5dc0e45db8e098e82a449`  
		Last Modified: Mon, 31 Aug 2026 19:56:44 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.2` - unknown; unknown

```console
$ docker pull logstash@sha256:3407a24dc577070728c90dc8776b850c8bd41dfcc8b93adb6fb492673854559c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2170895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9fe8b5f27dd3aded606f9dc16b047777352064b1393fd70b5917be4af25850`

```dockerfile
```

-	Layers:
	-	`sha256:448b3b8f3cbccca2e33f2c8723f3704a477a651cde1a3962d5ea77f62d643b57`  
		Last Modified: Mon, 31 Aug 2026 19:56:41 GMT  
		Size: 2.1 MB (2140618 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1beddf596d0fdd83baea726b82a5d853b0e17e15b91faa0ccafc7722aa8a038e`  
		Last Modified: Mon, 31 Aug 2026 19:56:41 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json
