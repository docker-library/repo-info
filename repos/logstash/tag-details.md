<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:8.19.25`](#logstash81925)
-	[`logstash:9.4.8`](#logstash948)
-	[`logstash:9.5.5`](#logstash955)

## `logstash:8.19.25`

```console
$ docker pull logstash@sha256:5a1733c2fd08abfec072fca1fce774da0ec02ae2a15923b0f86b4f5ee137a271
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:8.19.25` - linux; amd64

```console
$ docker pull logstash@sha256:930c651e29472e4ee53f59cbcdb81d5468c3403a780e18b909bd72e393b5edf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **536.6 MB (536592353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87811f0b54f127d6cf7662b1ae99a8de530801af0be34e113f50acf781f80947`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:24:06 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Fri, 20 Nov 2026 03:24:06 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Fri, 20 Nov 2026 03:24:43 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.25-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.25 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Fri, 20 Nov 2026 03:24:43 GMT
WORKDIR /usr/share/logstash
# Fri, 20 Nov 2026 03:24:43 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 20 Nov 2026 03:24:43 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:24:43 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Fri, 20 Nov 2026 03:24:43 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Fri, 20 Nov 2026 03:24:43 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Fri, 20 Nov 2026 03:24:43 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Fri, 20 Nov 2026 03:24:43 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:24:43 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Fri, 20 Nov 2026 03:24:44 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Fri, 20 Nov 2026 03:24:44 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Fri, 20 Nov 2026 03:24:44 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 03:24:44 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Fri, 20 Nov 2026 03:24:44 GMT
USER 1000
# Fri, 20 Nov 2026 03:24:44 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Fri, 20 Nov 2026 03:24:44 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.25 org.opencontainers.image.version=8.19.25 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-11-02T14:57:15+00:00 org.opencontainers.image.created=2026-11-02T14:57:15+00:00
# Fri, 20 Nov 2026 03:24:44 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4b3a6a33fef97c46c98a986627541f39d424aefb4150f98ee235a74ca97111`  
		Last Modified: Fri, 20 Nov 2026 03:25:23 GMT  
		Size: 55.6 MB (55559076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9c1fab206d85278e0fead8389e59e527e89a8eeb79f2ee99b681c1ae2f98c1`  
		Last Modified: Fri, 20 Nov 2026 03:25:20 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f74e99db00d09743a9d88f83a65cb7eb7d32e2e0a11c51a2c6a3f94b61602f`  
		Last Modified: Fri, 20 Nov 2026 03:25:29 GMT  
		Size: 451.0 MB (450972248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fe8d6466a3c482a742ad9599d0387ba7cbf919cc95508e5b91a55d4590a552a`  
		Last Modified: Fri, 20 Nov 2026 03:25:20 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b442979e22a565bff0787826f565222849e184fc677ec10e4f822f381d8e6b2b`  
		Last Modified: Fri, 20 Nov 2026 03:25:21 GMT  
		Size: 1.6 KB (1579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ac1394e6ae86469c1b80c3b71e233d5f211f494589601c49f7fdf4d819f46b`  
		Last Modified: Fri, 20 Nov 2026 03:25:22 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b7a8801ec3de8777452bcd1bd43d412b5906e545d9988b3e605adad2bdd1057`  
		Last Modified: Fri, 20 Nov 2026 03:25:23 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5ec7c91797d5403db7eaaab60e69bee5a74bfab7d8a33e609d64a865b5bb6aa`  
		Last Modified: Fri, 20 Nov 2026 03:25:23 GMT  
		Size: 6.3 KB (6295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec50e97c39d8be06f79e5fdd86b8878947c7e87efe1b458e01d8671853903c40`  
		Last Modified: Fri, 20 Nov 2026 03:25:24 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0e9f4a8879178aee5fbdd51a725bf00c8d4cb6d403a6631081585d1e62a901f`  
		Last Modified: Fri, 20 Nov 2026 03:25:24 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7438cd98d2d9ac2a4fcb3d905ead1ccc527b1607d03db6f93bb08ad74a09b89`  
		Last Modified: Fri, 20 Nov 2026 03:25:24 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.25` - unknown; unknown

```console
$ docker pull logstash@sha256:29fac115993063fccb2afab2ccd8eb1380f8a4aeb49010ef3f801b74a398d63d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bcc61a9c041697efa089686e8f27ad6394346457cdb817ef2ee41907a333eb2`

```dockerfile
```

-	Layers:
	-	`sha256:0eaf2c348c2c6eb58e79ef807cd319ef3f7e5683233dd8b3f7e169445d12988b`  
		Last Modified: Fri, 20 Nov 2026 03:25:20 GMT  
		Size: 3.6 MB (3603259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40c621963ea97889dbab7a54edf9ffc5cd09ed2595e093c06f79522477b3efa2`  
		Last Modified: Fri, 20 Nov 2026 03:25:20 GMT  
		Size: 35.8 KB (35849 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:8.19.25` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:cd6596d6c8b89730681fface98da9c043134b7bc96ccb1b3686af94ff8ccbe0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **536.3 MB (536267013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:166c98a83ae75578bdffd583e0242f863e1aefa382a5217fab7df53bc447a2f5`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:24:43 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Fri, 20 Nov 2026 03:24:43 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Fri, 20 Nov 2026 03:25:00 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.25-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.25 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Fri, 20 Nov 2026 03:25:00 GMT
WORKDIR /usr/share/logstash
# Fri, 20 Nov 2026 03:25:00 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 20 Nov 2026 03:25:00 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:25:00 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Fri, 20 Nov 2026 03:25:00 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Fri, 20 Nov 2026 03:25:00 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Fri, 20 Nov 2026 03:25:00 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Fri, 20 Nov 2026 03:25:00 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:25:00 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Fri, 20 Nov 2026 03:25:00 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Fri, 20 Nov 2026 03:25:00 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Fri, 20 Nov 2026 03:25:00 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 03:25:00 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Fri, 20 Nov 2026 03:25:00 GMT
USER 1000
# Fri, 20 Nov 2026 03:25:00 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Fri, 20 Nov 2026 03:25:00 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.25 org.opencontainers.image.version=8.19.25 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-11-02T14:57:15+00:00 org.opencontainers.image.created=2026-11-02T14:57:15+00:00
# Fri, 20 Nov 2026 03:25:00 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f508cd1841cbed5066ad2a7172ef3f22df54637044542adaff7f9b5402ed060d`  
		Last Modified: Fri, 20 Nov 2026 03:25:41 GMT  
		Size: 57.8 MB (57779491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00371bd8f5cb7f913cbe85e1a200900bea48d6ee76d0386252139f039b771c62`  
		Last Modified: Fri, 20 Nov 2026 03:25:39 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b80d662560035fc403266bcde555623192f3df6f258c90f00cb740c5f0a296f`  
		Last Modified: Fri, 20 Nov 2026 03:25:47 GMT  
		Size: 449.3 MB (449254471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ae41505aa64a981edc8c28a935b2ce2667d6250249978ed6b92f2956df00ae`  
		Last Modified: Fri, 20 Nov 2026 03:25:39 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d284782ceea3192c6b89950123beecd9b3d97f3e2de5f6598202986f713f0818`  
		Last Modified: Fri, 20 Nov 2026 03:25:40 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0e948299a3b793d72f15cd967d2be902c32cf8201d21554b9eb574c6bdd7f79`  
		Last Modified: Fri, 20 Nov 2026 03:25:40 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e18f8b58830441bb112b06168d82f02cae1e9b87e9392496cb749bec75599e62`  
		Last Modified: Fri, 20 Nov 2026 03:25:41 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7330a85876f4ab7cdd6b6f747969fbd40bccb936b71d26b755380a54e8ccc427`  
		Last Modified: Fri, 20 Nov 2026 03:25:41 GMT  
		Size: 6.3 KB (6297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8ca2011bbe91576d3cabc3071463764caa2f96c81298327a7dd1cdf036d1a7`  
		Last Modified: Fri, 20 Nov 2026 03:25:42 GMT  
		Size: 255.2 KB (255183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e459fae6e6824422931f48b7f6aefadaec498b32193e9d114ee2fab2e2dcd0`  
		Last Modified: Fri, 20 Nov 2026 03:25:43 GMT  
		Size: 356.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dedcc583f5753b3fb88c5c5f79e2613ebedff6c8f051c005018b3acc882a4f5`  
		Last Modified: Fri, 20 Nov 2026 03:25:43 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.25` - unknown; unknown

```console
$ docker pull logstash@sha256:4b2c9a78989b3fa049dde8c8de1f81e8100172650888bf4a1922a994cad46d13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2feaf425f0a7b7dc813f8043ad5bdacc98ad0ec45e0811d6ff23c6543a9903be`

```dockerfile
```

-	Layers:
	-	`sha256:3180fa9e9ad32400fe35649f3dae7b087296d352f59d814f65b8a1da8ca1afc0`  
		Last Modified: Fri, 20 Nov 2026 03:25:39 GMT  
		Size: 3.6 MB (3603684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e8e4c9c5ecc701435852dd8975fa60b613f0f2a1e93466862bf6cc9757749f3`  
		Last Modified: Fri, 20 Nov 2026 03:25:39 GMT  
		Size: 36.0 KB (35976 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.4.8`

```console
$ docker pull logstash@sha256:70f78da4010dccd747b0859970b1aef1a029d518864b94c4f76ff431af6ffd58
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.8` - linux; amd64

```console
$ docker pull logstash@sha256:a8de72ad88996f99ba053fa73a1b590818b5a79c6da59d32d9d6e921bdfcb6d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **526.6 MB (526636296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:319607cccb75c386e47d8710088f125aa0078bea57bbec2962b9bab752bba5f8`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 18 Nov 2026 11:34:58 GMT
ENV container oci
# Wed, 18 Nov 2026 11:34:59 GMT
COPY dir:6fb577b33d6b897109754e222f04b40d28eca71e767c06a8f97e8ed992af3521 in /      
# Wed, 18 Nov 2026 11:34:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:34:59 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:34:59 GMT
COPY dir:f2e48d20366904f6b13a4d8ede95af5672f192970fe36c37d676c06b33c4fdd7 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:35:00 GMT
COPY dir:f2e48d20366904f6b13a4d8ede95af5672f192970fe36c37d676c06b33c4fdd7 in /root/buildinfo/      
# Wed, 18 Nov 2026 11:35:00 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:34:36Z" "org.opencontainers.image.revision"="506148f67275a1ae38119bef9b8ca209a6ff507a" "build-date"="2026-11-18T11:34:36Z" "architecture"="x86_64" "vcs-ref"="506148f67275a1ae38119bef9b8ca209a6ff507a" "vcs-type"="git" "release"="1795001629"org.opencontainers.image.created=2026-11-18T11:34:36Z,org.opencontainers.image.revision=506148f67275a1ae38119bef9b8ca209a6ff507a
# Wed, 18 Nov 2026 21:42:09 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 18 Nov 2026 21:42:09 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:42:09 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 18 Nov 2026 21:42:09 GMT
WORKDIR /usr/share
# Wed, 18 Nov 2026 21:42:12 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 18 Nov 2026 21:43:03 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 18 Nov 2026 21:43:03 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 18 Nov 2026 21:43:03 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 18 Nov 2026 21:43:03 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 18 Nov 2026 21:43:03 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 18 Nov 2026 21:43:03 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 18 Nov 2026 21:43:03 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 18 Nov 2026 21:43:03 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:43:03 GMT
WORKDIR /usr/share/logstash
# Wed, 18 Nov 2026 21:43:03 GMT
USER 1000
# Wed, 18 Nov 2026 21:43:03 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 18 Nov 2026 21:43:03 GMT
LABEL org.label-schema.build-date=2026-09-29T21:14:12+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-29T21:14:12+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 18 Nov 2026 21:43:03 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:c23374398181a4f60ce7fe1e5ee30bab79eff22d5d3aa94ed598ddee47dc229f`  
		Last Modified: Wed, 18 Nov 2026 16:30:18 GMT  
		Size: 40.7 MB (40676085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9401f8fb48b44c702b46414fe66abc86c9a09ef7ccbb7a1f778353e57989354b`  
		Last Modified: Wed, 18 Nov 2026 21:43:39 GMT  
		Size: 4.8 MB (4758312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f8b90b151696c92db52bad22ef84efa7ffb7f052e4ff2cb0cddd81aa4e32ff6`  
		Last Modified: Wed, 18 Nov 2026 21:43:48 GMT  
		Size: 480.9 MB (480937084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:291e7a235115153f0eeaace98356229a37c6f30985eb992501ffa5fcc6e1ed0e`  
		Last Modified: Wed, 18 Nov 2026 21:43:39 GMT  
		Size: 6.4 KB (6367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:247043789b72b43eec7b6fc93b011f898c3275b5cb6b6a135615c2512b6a5abf`  
		Last Modified: Wed, 18 Nov 2026 21:43:39 GMT  
		Size: 255.2 KB (255186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff48065a43afcc302a24a0fed903104c8fb50afe7feb1db45dcad7a8ec42587c`  
		Last Modified: Wed, 18 Nov 2026 21:43:40 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ef8a1f54fc3209aa44b7d41fb1c266f56a18ab762fcd9cd9e7b83b409ae998`  
		Last Modified: Wed, 18 Nov 2026 21:43:40 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b367c46489599ec6f501ec4bc8948e8219f70d52209265769c96d62dce3cc624`  
		Last Modified: Wed, 18 Nov 2026 21:43:40 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40de7580f18371dd4eb6fa24dc3ae8176f112b8c6e97a2c194f72bf111e805a`  
		Last Modified: Wed, 18 Nov 2026 21:43:41 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9c1dc8591db0dbeca6c3103490df7e01e4edd33ea84b514121f20f391d13726`  
		Last Modified: Wed, 18 Nov 2026 21:43:41 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.8` - unknown; unknown

```console
$ docker pull logstash@sha256:f560a3b9826d09a7637f57de836497bb17f12f434fc14b876d20c760762c3e83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2125842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:242bf5847d3f0b3400ece4ef5f63edce1850321b10563a865906343741e5f0fe`

```dockerfile
```

-	Layers:
	-	`sha256:bd305155e30cb722609a9603edbb168df322eb51ac4c8c4e5cce918e8a7a73b4`  
		Last Modified: Wed, 18 Nov 2026 21:43:39 GMT  
		Size: 2.1 MB (2095642 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19b436e2346e02d77d4e10188f30bd81cd16cb9ea2e06eccb85b71938f573f75`  
		Last Modified: Wed, 18 Nov 2026 21:43:38 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.8` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:6d91e339402888738595466ff2a04b754f93e02ff0b0083976035358b84fd59b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.0 MB (522971541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9072ca21f7897713f572af01c27449cc8092decf9d08950642944e583a9c4dd6`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 18 Nov 2026 11:36:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:36:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 18 Nov 2026 11:36:57 GMT
ENV container oci
# Wed, 18 Nov 2026 11:36:58 GMT
COPY dir:eee7fabfac1d2f3fb8ad9983912ceacfb7a2d25b2212bd95c123c4d0d51b81b6 in /      
# Wed, 18 Nov 2026 11:36:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:36:59 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:36:59 GMT
COPY dir:7cfd200b3d4ce0bf8a330208f8ea235e169c726ae2f96fcd7ec87ed6561a62d5 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:36:59 GMT
COPY dir:7cfd200b3d4ce0bf8a330208f8ea235e169c726ae2f96fcd7ec87ed6561a62d5 in /root/buildinfo/      
# Wed, 18 Nov 2026 11:37:00 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:36:26Z" "org.opencontainers.image.revision"="506148f67275a1ae38119bef9b8ca209a6ff507a" "build-date"="2026-11-18T11:36:26Z" "architecture"="aarch64" "vcs-ref"="506148f67275a1ae38119bef9b8ca209a6ff507a" "vcs-type"="git" "release"="1795001629"org.opencontainers.image.created=2026-11-18T11:36:26Z,org.opencontainers.image.revision=506148f67275a1ae38119bef9b8ca209a6ff507a
# Wed, 18 Nov 2026 21:42:19 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 18 Nov 2026 21:42:19 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:42:19 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 18 Nov 2026 21:42:19 GMT
WORKDIR /usr/share
# Wed, 18 Nov 2026 21:42:22 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 18 Nov 2026 21:43:17 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 18 Nov 2026 21:43:17 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 18 Nov 2026 21:43:17 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 18 Nov 2026 21:43:17 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 18 Nov 2026 21:43:17 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 18 Nov 2026 21:43:17 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 18 Nov 2026 21:43:17 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 18 Nov 2026 21:43:17 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:43:17 GMT
WORKDIR /usr/share/logstash
# Wed, 18 Nov 2026 21:43:17 GMT
USER 1000
# Wed, 18 Nov 2026 21:43:17 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 18 Nov 2026 21:43:17 GMT
LABEL org.label-schema.build-date=2026-09-29T21:14:12+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-29T21:14:12+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 18 Nov 2026 21:43:17 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:43a13a3b1a9d32ca4e00b11b77daa68db7900831eb27e2a0bfa523b9764e2ff5`  
		Last Modified: Wed, 18 Nov 2026 17:00:22 GMT  
		Size: 38.7 MB (38744735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01001c7fd322c475f67d7a4e13a5bcf8bea6158e1eeba08a7dc61b396bbc5e8c`  
		Last Modified: Wed, 18 Nov 2026 21:43:58 GMT  
		Size: 4.7 MB (4748697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7942534d3e325e68a873a3e431f827c9e4ce8daf16188e78c760fc19385db9d8`  
		Last Modified: Wed, 18 Nov 2026 21:44:06 GMT  
		Size: 479.2 MB (479213303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58003da0d89b10e166c4ac57c0cc8f784b7aa471f888c0f5ccc6fa9819effd7d`  
		Last Modified: Wed, 18 Nov 2026 21:43:57 GMT  
		Size: 6.4 KB (6365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a54b16ef1c4de3e168b0ff945f5dac074739a7be377904995085d2be58817aea`  
		Last Modified: Wed, 18 Nov 2026 21:43:57 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc0f88e90f20d7e10d0365b3ecc9cb565e54ce46c5b7614c601b51383053780`  
		Last Modified: Wed, 18 Nov 2026 21:43:59 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae48b704f8de42c0e0abf18c83f53b3c0a634cf5a4bc066ef6c761d100c40981`  
		Last Modified: Wed, 18 Nov 2026 21:43:59 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac6a8e3f84596b25fce48cd31562a9a78643c9d585c3a476e6fd1f1520888db`  
		Last Modified: Wed, 18 Nov 2026 21:43:59 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77106df6105c842486b4daee9c484229267d24fe3cc7b8535442df2870567e7e`  
		Last Modified: Wed, 18 Nov 2026 21:44:00 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d577f17a461aea3744dd2c8fa749f2e30972f71d46341ca34f81a983412e09f`  
		Last Modified: Wed, 18 Nov 2026 21:44:00 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.8` - unknown; unknown

```console
$ docker pull logstash@sha256:107a0f2a2602903b17b2ebfcbeafa54387b291966683bd6d268550ff015d9360
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2124707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58db288e3998d226e0f80b4e7376fb2263e262cf422acc7bb2dd9ddfedc9c0ab`

```dockerfile
```

-	Layers:
	-	`sha256:7348b13afce206869d7daf235c9b0b4afdfff3c9605d019da6a730a7fac672bf`  
		Last Modified: Wed, 18 Nov 2026 21:43:57 GMT  
		Size: 2.1 MB (2094430 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b067cfbb30bb25106062d2f23721ea8c8554b844d44c2d191903be18d8e820f7`  
		Last Modified: Wed, 18 Nov 2026 21:43:57 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.5.5`

```console
$ docker pull logstash@sha256:53287cea5036a861c63f26c6d1fba48270a466c6d5639671472f12b93eadb880
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.5.5` - linux; amd64

```console
$ docker pull logstash@sha256:4209d863d260bc836eb664af9f9c8db7650567a31d7d3b4ed27da8ed1e96575a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **535.2 MB (535219665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:993cff17153d3a571c2f08eb96ca9a3747b0c23c5e88fad21d8baf44b6b5096c`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 18 Nov 2026 11:34:58 GMT
ENV container oci
# Wed, 18 Nov 2026 11:34:59 GMT
COPY dir:6fb577b33d6b897109754e222f04b40d28eca71e767c06a8f97e8ed992af3521 in /      
# Wed, 18 Nov 2026 11:34:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:34:59 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:34:59 GMT
COPY dir:f2e48d20366904f6b13a4d8ede95af5672f192970fe36c37d676c06b33c4fdd7 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:35:00 GMT
COPY dir:f2e48d20366904f6b13a4d8ede95af5672f192970fe36c37d676c06b33c4fdd7 in /root/buildinfo/      
# Wed, 18 Nov 2026 11:35:00 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:34:36Z" "org.opencontainers.image.revision"="506148f67275a1ae38119bef9b8ca209a6ff507a" "build-date"="2026-11-18T11:34:36Z" "architecture"="x86_64" "vcs-ref"="506148f67275a1ae38119bef9b8ca209a6ff507a" "vcs-type"="git" "release"="1795001629"org.opencontainers.image.created=2026-11-18T11:34:36Z,org.opencontainers.image.revision=506148f67275a1ae38119bef9b8ca209a6ff507a
# Wed, 18 Nov 2026 22:02:31 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 18 Nov 2026 22:02:31 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 22:02:31 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 18 Nov 2026 22:02:31 GMT
WORKDIR /usr/share
# Wed, 18 Nov 2026 22:02:33 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 18 Nov 2026 22:03:26 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 18 Nov 2026 22:03:26 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 18 Nov 2026 22:03:26 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 18 Nov 2026 22:03:26 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 18 Nov 2026 22:03:26 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 18 Nov 2026 22:03:26 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 18 Nov 2026 22:03:26 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 18 Nov 2026 22:03:26 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 22:03:27 GMT
WORKDIR /usr/share/logstash
# Wed, 18 Nov 2026 22:03:27 GMT
USER 1000
# Wed, 18 Nov 2026 22:03:27 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 18 Nov 2026 22:03:27 GMT
LABEL org.label-schema.build-date=2026-09-29T21:16:22+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-29T21:16:22+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 18 Nov 2026 22:03:27 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:c23374398181a4f60ce7fe1e5ee30bab79eff22d5d3aa94ed598ddee47dc229f`  
		Last Modified: Wed, 18 Nov 2026 16:30:18 GMT  
		Size: 40.7 MB (40676085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:590ca1afe4fcef487362de5a5db6e6c3b263e3b8774ae8596c58341b42c92a23`  
		Last Modified: Wed, 18 Nov 2026 22:04:01 GMT  
		Size: 4.8 MB (4758248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:986405cdcb3ed829ca13eb71efcf3cc8f2a2eae36f5c1d425d27a5fc8dcbe8a8`  
		Last Modified: Wed, 18 Nov 2026 22:04:09 GMT  
		Size: 489.5 MB (489520360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19812f4d7d6f31206faeaf0779fdcf267db4c05ae7c6b030f8da47a9eec3493e`  
		Last Modified: Wed, 18 Nov 2026 22:04:01 GMT  
		Size: 6.5 KB (6538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8b570fafdb663b47823710ca8abc1a70058121c58ea37cfafe0b3aef0474f2`  
		Last Modified: Wed, 18 Nov 2026 22:04:01 GMT  
		Size: 255.2 KB (255180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593d09988e52f56fa461a9d6bc8191bdff6143a3bdfbc040c81f5f117ed09b8d`  
		Last Modified: Wed, 18 Nov 2026 22:04:02 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba3407e750a0195f0b1c37c3b0e62d485fb0c3edeacc8bd84eb7a059b4aa95ec`  
		Last Modified: Wed, 18 Nov 2026 22:04:02 GMT  
		Size: 1.6 KB (1574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e3bef1e16e8864ed32022aeee1c9de9c61c6e56e1ed48ad552458ba4dce17af`  
		Last Modified: Wed, 18 Nov 2026 22:04:02 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc7eb6a0ec4d8cb65349c149e3b291e4eee8208eb1bcf9744ebb382b8886f2d7`  
		Last Modified: Wed, 18 Nov 2026 22:04:03 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a04a03f8dedd4e68d50b7fe0b795046758ada52df0ff7890740d3aa11bed8baf`  
		Last Modified: Wed, 18 Nov 2026 22:04:04 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.5` - unknown; unknown

```console
$ docker pull logstash@sha256:56edb5a3c5e27c23ee97f7a5aa16ae411c890d8cae3840d91f0ac29724ce32c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2153068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcab36f0dd7a385163b8b62ff0a36e7e61f7b71275c8384ed15b98dc80d07c44`

```dockerfile
```

-	Layers:
	-	`sha256:626d73ce1bb411851cb86aae5f1366c86484fc0a8949f5f211cac85031ba6660`  
		Last Modified: Wed, 18 Nov 2026 22:04:01 GMT  
		Size: 2.1 MB (2122868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d11b5758a0e344d2b5e15bcde946aec71cd0b99acac860ee1b15f6e5e6e3d93`  
		Last Modified: Wed, 18 Nov 2026 22:04:01 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.5.5` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:382a730f2acea7f5b715e0c0a65183814c3fb7c56fbdb34b55eabc871a0cb449
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.6 MB (531564215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b004c2478a1d7359cd8fe6ed1d97e917543e83e60b32ca5295387ef39a674ae3`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 18 Nov 2026 11:36:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:36:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 18 Nov 2026 11:36:57 GMT
ENV container oci
# Wed, 18 Nov 2026 11:36:58 GMT
COPY dir:eee7fabfac1d2f3fb8ad9983912ceacfb7a2d25b2212bd95c123c4d0d51b81b6 in /      
# Wed, 18 Nov 2026 11:36:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:36:59 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:36:59 GMT
COPY dir:7cfd200b3d4ce0bf8a330208f8ea235e169c726ae2f96fcd7ec87ed6561a62d5 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:36:59 GMT
COPY dir:7cfd200b3d4ce0bf8a330208f8ea235e169c726ae2f96fcd7ec87ed6561a62d5 in /root/buildinfo/      
# Wed, 18 Nov 2026 11:37:00 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:36:26Z" "org.opencontainers.image.revision"="506148f67275a1ae38119bef9b8ca209a6ff507a" "build-date"="2026-11-18T11:36:26Z" "architecture"="aarch64" "vcs-ref"="506148f67275a1ae38119bef9b8ca209a6ff507a" "vcs-type"="git" "release"="1795001629"org.opencontainers.image.created=2026-11-18T11:36:26Z,org.opencontainers.image.revision=506148f67275a1ae38119bef9b8ca209a6ff507a
# Wed, 18 Nov 2026 21:42:13 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 18 Nov 2026 21:42:13 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:42:13 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 18 Nov 2026 21:42:13 GMT
WORKDIR /usr/share
# Wed, 18 Nov 2026 21:42:16 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 18 Nov 2026 21:43:07 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 18 Nov 2026 21:43:07 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 18 Nov 2026 21:43:07 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 18 Nov 2026 21:43:07 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 18 Nov 2026 21:43:07 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 18 Nov 2026 21:43:07 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 18 Nov 2026 21:43:07 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 18 Nov 2026 21:43:07 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:43:07 GMT
WORKDIR /usr/share/logstash
# Wed, 18 Nov 2026 21:43:07 GMT
USER 1000
# Wed, 18 Nov 2026 21:43:07 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 18 Nov 2026 21:43:07 GMT
LABEL org.label-schema.build-date=2026-09-29T21:16:22+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-29T21:16:22+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 18 Nov 2026 21:43:07 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:43a13a3b1a9d32ca4e00b11b77daa68db7900831eb27e2a0bfa523b9764e2ff5`  
		Last Modified: Wed, 18 Nov 2026 17:00:22 GMT  
		Size: 38.7 MB (38744735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4248078ebb25245eb22d0c80c62e772653b0d457faac628711d105e34e975343`  
		Last Modified: Wed, 18 Nov 2026 21:43:48 GMT  
		Size: 4.7 MB (4748614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4802a08d6d9fe3197db1f24395d0de91808a6bb59e09d6d4f8b3df52fece0121`  
		Last Modified: Wed, 18 Nov 2026 21:43:56 GMT  
		Size: 487.8 MB (487805881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1065632403e7ccd9fa1498ddcf3d6b33d5e529945a6bd48d6ba82b13d8b3187a`  
		Last Modified: Wed, 18 Nov 2026 21:43:48 GMT  
		Size: 6.5 KB (6541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eaa276551a6ab8096a795d49f971b52f98c15b428153c89bba09268928d54bd`  
		Last Modified: Wed, 18 Nov 2026 21:43:48 GMT  
		Size: 255.2 KB (255184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bd5d233b94cd7d304e915067ef8a2861af734e536d54ad71d1e42e0caecde7c`  
		Last Modified: Wed, 18 Nov 2026 21:43:49 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5a34d30a8d3f419093e11ef367357419ce977e3ef6c0750005124f75419c17`  
		Last Modified: Wed, 18 Nov 2026 21:43:49 GMT  
		Size: 1.6 KB (1579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2247dc4425349da5cbf11a0d7ed444b7def960977748fd37a5e9908c1706af`  
		Last Modified: Wed, 18 Nov 2026 21:43:49 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:259de0098953abe9541314ec5770221acb121a3b68e3a5e859f14287e1457539`  
		Last Modified: Wed, 18 Nov 2026 21:43:50 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f45f60ce4e6699d9dbcb1cb60d3e5ff1aecec95e6c98602a8bca0b9d849733d`  
		Last Modified: Wed, 18 Nov 2026 21:43:50 GMT  
		Size: 709.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.5` - unknown; unknown

```console
$ docker pull logstash@sha256:68c34fad94d00057832861bc3415e932572ee96e87465485cf2aa2aecb20c601
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2151933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10d070325dfef816f276e3c38e9de89fd0c7de4a4db7c25c92ad580f859cf8a0`

```dockerfile
```

-	Layers:
	-	`sha256:6d66a6515934c93b6d993264942aaab0193e5a6c5423a5463c10d45b72816b2d`  
		Last Modified: Wed, 18 Nov 2026 21:43:48 GMT  
		Size: 2.1 MB (2121656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d0a70cbe17d9e2ff793fdcb50e0f6fc78cc30849c10c179fb9559aad7f2c614`  
		Last Modified: Wed, 18 Nov 2026 21:43:48 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json
