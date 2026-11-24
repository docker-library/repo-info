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
$ docker pull logstash@sha256:4ed134410fac513bc92b1c18ce56a25501b5b2bad5bc36dc3feff0d2952e22b1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.8` - linux; amd64

```console
$ docker pull logstash@sha256:61b9ceeac42e960d5148fa4a2505a404d5402793f84a037bfb827190a88f756a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **526.6 MB (526606773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dc076fcdde66d86cfaa4d37d617842e4b5a05e54228c6450766c927efeeeca6`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:11:03 GMT
ENV container oci
# Fri, 20 Nov 2026 18:11:03 GMT
COPY dir:5ceae98eafdeee79793af167e1b53d2c048d524a5506bb0c01569c4bbeaef4f8 in /      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:11:04 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /root/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:10:41Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:10:41Z" "architecture"="x86_64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:10:41Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:09:09 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 23 Nov 2026 22:09:09 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:09:09 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 23 Nov 2026 22:09:09 GMT
WORKDIR /usr/share
# Mon, 23 Nov 2026 22:09:12 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:09:36 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Mon, 23 Nov 2026 22:09:36 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Mon, 23 Nov 2026 22:09:36 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Mon, 23 Nov 2026 22:09:36 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Mon, 23 Nov 2026 22:09:36 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Mon, 23 Nov 2026 22:09:36 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Mon, 23 Nov 2026 22:09:36 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Mon, 23 Nov 2026 22:09:36 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 22:09:36 GMT
WORKDIR /usr/share/logstash
# Mon, 23 Nov 2026 22:09:36 GMT
USER 1000
# Mon, 23 Nov 2026 22:09:36 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Mon, 23 Nov 2026 22:09:36 GMT
LABEL org.label-schema.build-date=2026-09-29T21:14:12+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-29T21:14:12+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Mon, 23 Nov 2026 22:09:36 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:42dd82cfea990337e85629f4800f64d42e5fca052db254cd3386d99051476958`  
		Last Modified: Fri, 20 Nov 2026 19:55:30 GMT  
		Size: 40.6 MB (40646846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c0064fa61cb92456c7d5d11768416dbc6037f5cfd2c4ae0dcd27054bd1472e`  
		Last Modified: Mon, 23 Nov 2026 22:10:10 GMT  
		Size: 4.8 MB (4757943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b621dcc8991f68d03ad4e11107bb01219c977398e188cb858f5dad4bc6bbd86`  
		Last Modified: Mon, 23 Nov 2026 22:10:19 GMT  
		Size: 480.9 MB (480937182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fad2c2ff52b7ad7c38d41e56e0a699d5d878b3ff16b34f59cacf43943c68139`  
		Last Modified: Mon, 23 Nov 2026 22:10:09 GMT  
		Size: 6.4 KB (6365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e914b4898a06a1687b2b7ff05c30db39bbc8fdfde3e76281903cf2bfbe7fe37d`  
		Last Modified: Mon, 23 Nov 2026 22:10:09 GMT  
		Size: 255.2 KB (255183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3270a85cddaffeff8e328b78d172b8ac7bc6f0c507bb5d2f85495b182387904`  
		Last Modified: Mon, 23 Nov 2026 22:10:10 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee48e624e091beffa6f52ce2fda9099ef7ad3671841445a6f2c2326ccf0e0a28`  
		Last Modified: Mon, 23 Nov 2026 22:10:11 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0f6ab9a4b61c07baa5e4034e7df62de26248289a57b3396282ae2610193485`  
		Last Modified: Mon, 23 Nov 2026 22:10:11 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78740a56005dd223a2d08089ec210155e452b1612d8b70ac3f5a1d8199550677`  
		Last Modified: Mon, 23 Nov 2026 22:10:12 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:436d633d498bc80364649cb851339cce5ddb5958e721970f35dcbca9d39364ed`  
		Last Modified: Mon, 23 Nov 2026 22:10:12 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.8` - unknown; unknown

```console
$ docker pull logstash@sha256:d5f6889d13d93ab2b4be943dd5dfee8ba42976b4b267d895381c2113a115697b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2125872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5423100d2953b491d27900424303d1c105f5bb637454e30e64f5f4729370a0f5`

```dockerfile
```

-	Layers:
	-	`sha256:cde3e105e07d1d946054e2ba7b38ad4da14ffc5ae65d35befac3856e273dab83`  
		Last Modified: Mon, 23 Nov 2026 22:10:09 GMT  
		Size: 2.1 MB (2095674 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:515770ee391442f121cdc314381413636d524afa658aa9fe1d8572645a25a272`  
		Last Modified: Mon, 23 Nov 2026 22:10:09 GMT  
		Size: 30.2 KB (30198 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.8` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:66b91c35aa23a0cd70eecf279f9b2c53396056bf96f4a08324f0f8eca6fb2c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **522.9 MB (522931901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c51870f3c646fb250febf32a68f2558e4f812f63c7d9e42c90d72be2b6df990d`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:12:47 GMT
ENV container oci
# Fri, 20 Nov 2026 18:12:49 GMT
COPY dir:2777349c454497d0bc88142806b0acc7931a2a02082de3b6e563fd8f4b29edfa in /      
# Fri, 20 Nov 2026 18:12:49 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:12:49 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:12:49 GMT
COPY dir:d1ad60195b09061439df8466db67c1762e03297f9d39d2253d60653440d2091b in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:12:50 GMT
COPY dir:d1ad60195b09061439df8466db67c1762e03297f9d39d2253d60653440d2091b in /root/buildinfo/      
# Fri, 20 Nov 2026 18:12:50 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:12:15Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:12:15Z" "architecture"="aarch64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:12:15Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:07:47 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 23 Nov 2026 22:07:47 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:07:47 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 23 Nov 2026 22:07:47 GMT
WORKDIR /usr/share
# Mon, 23 Nov 2026 22:07:50 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:08:16 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Mon, 23 Nov 2026 22:08:16 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Mon, 23 Nov 2026 22:08:16 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Mon, 23 Nov 2026 22:08:16 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Mon, 23 Nov 2026 22:08:16 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Mon, 23 Nov 2026 22:08:16 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Mon, 23 Nov 2026 22:08:16 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Mon, 23 Nov 2026 22:08:16 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 22:08:16 GMT
WORKDIR /usr/share/logstash
# Mon, 23 Nov 2026 22:08:16 GMT
USER 1000
# Mon, 23 Nov 2026 22:08:16 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Mon, 23 Nov 2026 22:08:16 GMT
LABEL org.label-schema.build-date=2026-09-29T21:14:12+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-29T21:14:12+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Mon, 23 Nov 2026 22:08:16 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:aba77be659b3ca4c2aca19e9a0e50914427b3b809b11dc864d16e2377d40e17a`  
		Last Modified: Fri, 20 Nov 2026 19:55:56 GMT  
		Size: 38.7 MB (38704070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638a6672c8041ef1f2554498b34b5384a6905e8c56ebcaa4c51395f1d13918f6`  
		Last Modified: Mon, 23 Nov 2026 22:08:56 GMT  
		Size: 4.8 MB (4750113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c6afb1fef86baefceacacb3a4c26388af2e6f392850e79eb6641a77f499d34`  
		Last Modified: Mon, 23 Nov 2026 22:09:05 GMT  
		Size: 479.2 MB (479212918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5293acd546599abe880433c8c7b377e1faa0e79e5f7a47c8021d9ee525172fd`  
		Last Modified: Mon, 23 Nov 2026 22:08:55 GMT  
		Size: 6.4 KB (6365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b265b6586d65843f37ff887958762800e047b117b65726cc6a3d4f8a443222de`  
		Last Modified: Mon, 23 Nov 2026 22:08:55 GMT  
		Size: 255.2 KB (255183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a1e06ba489a9c665600e27292fae325c73a29971ba51a573fddfae43702f37`  
		Last Modified: Mon, 23 Nov 2026 22:08:57 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de4fa860c614c59ce3009121073028910ffd52cb9934492bc0c019a58fb26de`  
		Last Modified: Mon, 23 Nov 2026 22:08:57 GMT  
		Size: 1.6 KB (1573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f60f92ebf97e7f24e5eeb9ae467b787f57444f1fb6bfd16a6e7b17e97d4acc`  
		Last Modified: Mon, 23 Nov 2026 22:08:57 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2e21b1fd6333a9ab46cefc3bea15ed9212a79c95c3730b190cbcd97c2be2e3`  
		Last Modified: Mon, 23 Nov 2026 22:08:58 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b4b2138e93a5f6a61465e909e661732e925338cf07c90498d500d123645319`  
		Last Modified: Mon, 23 Nov 2026 22:08:58 GMT  
		Size: 710.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.8` - unknown; unknown

```console
$ docker pull logstash@sha256:c1f1cb8e36302f8a9f26663e3f2de6ede276aa1d3a8389a2714523ae3578811d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2124739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb38995c4e911c977835bd34ba1d251361189d1ad24ea3498f1db7b35562fa3f`

```dockerfile
```

-	Layers:
	-	`sha256:e39eb24c6494719cd65b6d30cf3231682a7fd2ab73a4723791e35da279b0447b`  
		Last Modified: Mon, 23 Nov 2026 22:08:55 GMT  
		Size: 2.1 MB (2094462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cedfd417227a487b3fe62680b733378a95a0558163c23e9e12e01a9299d4d3d`  
		Last Modified: Mon, 23 Nov 2026 22:08:55 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.5.5`

```console
$ docker pull logstash@sha256:82d29468f89ecb56d225cab2541dffc081ecffabc3ebd2cec91a74c9e3c61720
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.5.5` - linux; amd64

```console
$ docker pull logstash@sha256:d7351772daba393a77c9f73a34e4363caff76dfafcf1c570d08266c5f755a2d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **535.2 MB (535190887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a187a27101a155f8926fe644a6f107e2dc7c856ca3ba8187c8f9d6574af5fba9`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:11:03 GMT
ENV container oci
# Fri, 20 Nov 2026 18:11:03 GMT
COPY dir:5ceae98eafdeee79793af167e1b53d2c048d524a5506bb0c01569c4bbeaef4f8 in /      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:11:04 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /root/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:10:41Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:10:41Z" "architecture"="x86_64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:10:41Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:09:10 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 23 Nov 2026 22:09:10 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:09:10 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 23 Nov 2026 22:09:10 GMT
WORKDIR /usr/share
# Mon, 23 Nov 2026 22:09:14 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:10:05 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Mon, 23 Nov 2026 22:10:05 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Mon, 23 Nov 2026 22:10:05 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Mon, 23 Nov 2026 22:10:05 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Mon, 23 Nov 2026 22:10:05 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Mon, 23 Nov 2026 22:10:05 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Mon, 23 Nov 2026 22:10:05 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Mon, 23 Nov 2026 22:10:05 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 22:10:05 GMT
WORKDIR /usr/share/logstash
# Mon, 23 Nov 2026 22:10:05 GMT
USER 1000
# Mon, 23 Nov 2026 22:10:05 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Mon, 23 Nov 2026 22:10:05 GMT
LABEL org.label-schema.build-date=2026-09-29T21:16:22+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-29T21:16:22+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Mon, 23 Nov 2026 22:10:05 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:42dd82cfea990337e85629f4800f64d42e5fca052db254cd3386d99051476958`  
		Last Modified: Fri, 20 Nov 2026 19:55:30 GMT  
		Size: 40.6 MB (40646846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070954e617e9d82fe19e5e1bf5187e58931eba28cdfef8a852cf0bc01a1b622d`  
		Last Modified: Mon, 23 Nov 2026 22:10:43 GMT  
		Size: 4.8 MB (4757888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e00564a249d6e98099382f72afbe50a42ffc5c8bad004170463c6347d8a8626`  
		Last Modified: Mon, 23 Nov 2026 22:10:54 GMT  
		Size: 489.5 MB (489521182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f4b76a413ca174e9bc6d877cbb76a8a7961bfafa657663c8abd3f0ca4208383`  
		Last Modified: Mon, 23 Nov 2026 22:10:43 GMT  
		Size: 6.5 KB (6538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14134e7975a3bdbcff3adc13be8517c5241b36b58b934c68e839850d9e85b823`  
		Last Modified: Mon, 23 Nov 2026 22:10:43 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d55e57fa9f1f874f9bef21293a0860884cee02b58313e1cdfff72c4830e31da`  
		Last Modified: Mon, 23 Nov 2026 22:10:44 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ff013d72cd8cda2d8af83cd8b75b8d47c7a412e9dba8382737d89abe982ebf`  
		Last Modified: Mon, 23 Nov 2026 22:10:44 GMT  
		Size: 1.6 KB (1573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:904b5898295ae525b869fbff19b6d08ee1de0336cb69247e988bb68f26765653`  
		Last Modified: Mon, 23 Nov 2026 22:10:45 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdd23cf9fb272d8ec4b642c1c6a7dca9de18bea1e77f789b2fb2221b4c769865`  
		Last Modified: Mon, 23 Nov 2026 22:10:46 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a743965457d6f79992e25519023b42c8ec7d7bd765c0f3897cbc3f4d9b287811`  
		Last Modified: Mon, 23 Nov 2026 22:10:46 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.5` - unknown; unknown

```console
$ docker pull logstash@sha256:883c7c11d24e4f2bbc19c3914948ee40af8c7ab8a9dc8d4ad7ab4c8f3440fe6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2153100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b0b928e0d6cfd82c9ffaa6464e75205071ed47fc1a47090de40cc23a4215fdc`

```dockerfile
```

-	Layers:
	-	`sha256:8373c6d57a8f0a6ac83c741ea5d3ae2a1eb3fd6b2365d2474d7997e9ea0d0800`  
		Last Modified: Mon, 23 Nov 2026 22:10:43 GMT  
		Size: 2.1 MB (2122900 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c1ba9f5e50ab1658764925573fd3d8dfb3e3c7965a615eebcf5358e1ae545a6`  
		Last Modified: Mon, 23 Nov 2026 22:10:43 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.5.5` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:6ed3d3cbbb5c432bc82ebcffdd1887eb5cfdc06cb1333b0fb7fe12abd8cb08de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.5 MB (531524994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb7957e2133e135449c7440deb36f7fa3d85270710e0447d05be4d82d8eb55a6`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:12:47 GMT
ENV container oci
# Fri, 20 Nov 2026 18:12:49 GMT
COPY dir:2777349c454497d0bc88142806b0acc7931a2a02082de3b6e563fd8f4b29edfa in /      
# Fri, 20 Nov 2026 18:12:49 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:12:49 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:12:49 GMT
COPY dir:d1ad60195b09061439df8466db67c1762e03297f9d39d2253d60653440d2091b in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:12:50 GMT
COPY dir:d1ad60195b09061439df8466db67c1762e03297f9d39d2253d60653440d2091b in /root/buildinfo/      
# Fri, 20 Nov 2026 18:12:50 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:12:15Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:12:15Z" "architecture"="aarch64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:12:15Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:07:48 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 23 Nov 2026 22:07:48 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:07:48 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 23 Nov 2026 22:07:48 GMT
WORKDIR /usr/share
# Mon, 23 Nov 2026 22:07:51 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:08:45 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Mon, 23 Nov 2026 22:08:46 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Mon, 23 Nov 2026 22:08:46 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Mon, 23 Nov 2026 22:08:46 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Mon, 23 Nov 2026 22:08:46 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Mon, 23 Nov 2026 22:08:46 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Mon, 23 Nov 2026 22:08:46 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Mon, 23 Nov 2026 22:08:46 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 22:08:46 GMT
WORKDIR /usr/share/logstash
# Mon, 23 Nov 2026 22:08:46 GMT
USER 1000
# Mon, 23 Nov 2026 22:08:46 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Mon, 23 Nov 2026 22:08:46 GMT
LABEL org.label-schema.build-date=2026-09-29T21:16:22+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-29T21:16:22+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Mon, 23 Nov 2026 22:08:46 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:aba77be659b3ca4c2aca19e9a0e50914427b3b809b11dc864d16e2377d40e17a`  
		Last Modified: Fri, 20 Nov 2026 19:55:56 GMT  
		Size: 38.7 MB (38704070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304bf638d719d380788586c078584aaade9eaf408d6324345ff060e9ef04820e`  
		Last Modified: Mon, 23 Nov 2026 22:09:26 GMT  
		Size: 4.8 MB (4750175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb7b6486f78a79703ddf096b3ed15964b1f3422adfcff726b1aa2ed14d14b4d`  
		Last Modified: Mon, 23 Nov 2026 22:09:34 GMT  
		Size: 487.8 MB (487805761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d867ce6bb485dbefd1ad12703b5e68bceb11415c9f014286392d8500f4e4638`  
		Last Modified: Mon, 23 Nov 2026 22:09:26 GMT  
		Size: 6.5 KB (6542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3533c6d0884bd79deb8b6516d2d207c7e76adf8d0fcb0ef5d212411e673a8cac`  
		Last Modified: Mon, 23 Nov 2026 22:09:26 GMT  
		Size: 255.2 KB (255186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2853546ebc441bd3d25eee70d8d532d33bb8d14e7b43183a81ea5da24654994a`  
		Last Modified: Mon, 23 Nov 2026 22:09:27 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f202c48ae2e15324ca5ff6fea8e38965d414d1d425cd10caefff0a0dfaf9ae45`  
		Last Modified: Mon, 23 Nov 2026 22:09:27 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:966da5716acd7e132b4077d8a7927347d0bd6f6e971a9119d279d8133c7d8726`  
		Last Modified: Mon, 23 Nov 2026 22:09:27 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f601dd5a3d42489baecb6621818e46be4e95c7a50daf69dee04a6c3d3125a4`  
		Last Modified: Mon, 23 Nov 2026 22:09:28 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0bfdd4a0a10945f4c94de98d3a179d2a09c18e449a9034660b51654c8c73050`  
		Last Modified: Mon, 23 Nov 2026 22:09:28 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.5` - unknown; unknown

```console
$ docker pull logstash@sha256:24fd4fbab494ba84618f36d2daa4010484115502f5a9b0d4f781290f1007f23d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2151965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f06ae65f70b9e4acb759baa086dcddab9a5eec3844d1794b3d12d70f117e190b`

```dockerfile
```

-	Layers:
	-	`sha256:3fb8b04059285db6b4c9a26a72c111d1578500b73b95087c1037e505f627d5fd`  
		Last Modified: Mon, 23 Nov 2026 22:09:26 GMT  
		Size: 2.1 MB (2121688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0aa73b62f235429e01a510384486ef13f97c37bdc5ab3e332b902e9354c80d42`  
		Last Modified: Mon, 23 Nov 2026 22:09:26 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json
