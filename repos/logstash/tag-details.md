<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:8.19.21`](#logstash81921)
-	[`logstash:9.4.6`](#logstash946)
-	[`logstash:9.5.3`](#logstash953)

## `logstash:8.19.21`

```console
$ docker pull logstash@sha256:b198213d78830f45462c6a2ce8423ea10f96f839d3ca473fc86066394c4b7d77
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:8.19.21` - linux; amd64

```console
$ docker pull logstash@sha256:12398508de8fce766bee0e0f66268171e4185995b9d29658dfea17b2cf4cea6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **528.3 MB (528274038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67aed2e05b3e96e7deea5a2a6f3bd124f7ff9875b8f2f57468ab78ab0a599b58`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:57 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Wed, 09 Sep 2026 02:32:57 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Wed, 09 Sep 2026 02:33:38 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.21-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.21 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 09 Sep 2026 02:33:38 GMT
WORKDIR /usr/share/logstash
# Wed, 09 Sep 2026 02:33:38 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 09 Sep 2026 02:33:38 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:33:38 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Wed, 09 Sep 2026 02:33:38 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Wed, 09 Sep 2026 02:33:38 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Wed, 09 Sep 2026 02:33:38 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Wed, 09 Sep 2026 02:33:38 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:33:38 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 09 Sep 2026 02:33:38 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 09 Sep 2026 02:33:38 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 09 Sep 2026 02:33:38 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 02:33:38 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Wed, 09 Sep 2026 02:33:38 GMT
USER 1000
# Wed, 09 Sep 2026 02:33:38 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 09 Sep 2026 02:33:38 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.21 org.opencontainers.image.version=8.19.21 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-08-24T15:53:50+00:00 org.opencontainers.image.created=2026-08-24T15:53:50+00:00
# Wed, 09 Sep 2026 02:33:38 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc10675f5c5b82bf23207a895a3f3858585b8c3be92be6982ae81034af5634c`  
		Last Modified: Wed, 09 Sep 2026 02:34:17 GMT  
		Size: 47.2 MB (47169201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee6efc90ddae399f265629ebe35a0d076df2508183d5a4884d085b5fb988a78`  
		Last Modified: Wed, 09 Sep 2026 02:34:15 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca4fd5bc244a59a602d26907eaccc893278063de2d2dc47f6d3022af62f8a538`  
		Last Modified: Wed, 09 Sep 2026 02:34:24 GMT  
		Size: 451.1 MB (451073846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8766f4268f853c8aa6572b44c3c744163ee3486b6cbe6c4b4c1babe195e3984c`  
		Last Modified: Wed, 09 Sep 2026 02:34:15 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a888acdfdf79bdc2ddba629cefa26b52620b8cb40b47fb5e522f839e36170b98`  
		Last Modified: Wed, 09 Sep 2026 02:34:16 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d84f0bd81a3ec190c4add81e51a4eb2d9a3c57be7e50a336977b2c72be187a0`  
		Last Modified: Wed, 09 Sep 2026 02:34:16 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25457890568beca77ba22abab7579dd4bac2dbe873d8b104b094b2f970d05033`  
		Last Modified: Wed, 09 Sep 2026 02:34:17 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b3994b6228c505e56dc3d4d77a065912f675378e5327db0492f43c33e87d16`  
		Last Modified: Wed, 09 Sep 2026 02:34:17 GMT  
		Size: 6.3 KB (6299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ee824602bff7fece2d03877cef0367e989f08e50084f639e003ce2b3236731b`  
		Last Modified: Wed, 09 Sep 2026 02:34:18 GMT  
		Size: 255.2 KB (255188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a953afac862b338d57fc71946a92014a76339b424d9e0e528f79d2d8bc3517c`  
		Last Modified: Wed, 09 Sep 2026 02:34:19 GMT  
		Size: 356.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:688fff63577bcd206e76c92643072d6290ed42a248c7b6a8eb9d6c11da139b64`  
		Last Modified: Wed, 09 Sep 2026 02:34:19 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.21` - unknown; unknown

```console
$ docker pull logstash@sha256:f3841db8f1c83daefc80022dda9fdd04367b4e8ed31b6b4a60f8bea21bde7eee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3646683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff65f81ca23419c28c22874c92a4dddb8bd50d027c02d202c937f45b669e916`

```dockerfile
```

-	Layers:
	-	`sha256:6ee57fe2558faaab75441d05f02a2614a52df1bde1e9cfe7e21b2909f092f815`  
		Last Modified: Wed, 09 Sep 2026 02:34:15 GMT  
		Size: 3.6 MB (3610839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbecc72e1d40f49ce02dfd13e1dcc2e41c76a6859015b0752ce876d9ae7217a9`  
		Last Modified: Wed, 09 Sep 2026 02:34:15 GMT  
		Size: 35.8 KB (35844 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:8.19.21` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:fb73bd26646a9d6376c99902f56878db8fdb5533629329be0e515b932e26e780
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **527.7 MB (527726777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3b66323e7930074bf3e2fa19a30faf8c3faea23c91c0310943f472d8f778c59`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:29:53 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Wed, 09 Sep 2026 02:29:53 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Wed, 09 Sep 2026 02:31:40 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.21-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.21 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 09 Sep 2026 02:31:40 GMT
WORKDIR /usr/share/logstash
# Wed, 09 Sep 2026 02:31:41 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 09 Sep 2026 02:31:41 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:31:41 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Wed, 09 Sep 2026 02:31:41 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Wed, 09 Sep 2026 02:31:41 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Wed, 09 Sep 2026 02:31:41 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Wed, 09 Sep 2026 02:31:41 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:31:41 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 09 Sep 2026 02:31:41 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 09 Sep 2026 02:31:41 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 09 Sep 2026 02:31:41 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 02:31:41 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Wed, 09 Sep 2026 02:31:41 GMT
USER 1000
# Wed, 09 Sep 2026 02:31:41 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 09 Sep 2026 02:31:41 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.21 org.opencontainers.image.version=8.19.21 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-08-24T15:53:50+00:00 org.opencontainers.image.created=2026-08-24T15:53:50+00:00
# Wed, 09 Sep 2026 02:31:41 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ef436969eb1e636e130b4b9954a37e5c8007ec935edb4ac18354d9797c8115`  
		Last Modified: Wed, 09 Sep 2026 02:32:21 GMT  
		Size: 49.2 MB (49161855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dfd045d1938ead9f7318609dcccfc68323ba508c67162539238a3fb36dea789`  
		Last Modified: Wed, 09 Sep 2026 02:32:19 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a29dd98451928164eeaf861218c9ecf227a8337e7f31482a846b65cd839285f`  
		Last Modified: Wed, 09 Sep 2026 02:32:28 GMT  
		Size: 449.4 MB (449357182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f232495815b0be455a909fe2c5f9b8fb19c1b9d3fb027d8279378ec24df4f4`  
		Last Modified: Wed, 09 Sep 2026 02:32:19 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9b61278ab3043ae439537e92df64f56b3bcba964d1b0c4fc4e7fffbbe8092b`  
		Last Modified: Wed, 09 Sep 2026 02:32:20 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c477a1435ec4fffe7a0d6fe4c1705a38f59e9e4a659504c32e4c19a06a4ead5`  
		Last Modified: Wed, 09 Sep 2026 02:32:20 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd666d16faeab0eff7ff55a7229943ffca93763d11e11a2ea9211b4d8881bd1d`  
		Last Modified: Wed, 09 Sep 2026 02:32:21 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c23ef0547de16991e16f2f941306eb519662fe2dc152da362801f41b28ec8f`  
		Last Modified: Wed, 09 Sep 2026 02:32:21 GMT  
		Size: 6.3 KB (6294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9755c2f0005aa17c3877217e0a3b119bfcc951d426736b3af672f106536701bc`  
		Last Modified: Wed, 09 Sep 2026 02:32:23 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34caf8e0ac3cfe6c1427a5ecbb4dc002d6b547be3f8717d47c0c3f03cb3eb5e6`  
		Last Modified: Wed, 09 Sep 2026 02:32:23 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f308aa3069a68f1a181b134c1e899ba392157e35bbf8754eb9f41aa46dc17ca0`  
		Last Modified: Wed, 09 Sep 2026 02:32:23 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.21` - unknown; unknown

```console
$ docker pull logstash@sha256:f105248282f4cf6d4640a09d7c517ee63bf26f6482275910ba6cea074d674472
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3647237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45fc85f4688eb00f76df2e36eadea1861baa4e9d8cdd1083800ab4b82febecda`

```dockerfile
```

-	Layers:
	-	`sha256:838a6ece85f7ac885f30f03d02657e3d6cd2847ec126113b8602f9f3ddf42e14`  
		Last Modified: Wed, 09 Sep 2026 02:32:19 GMT  
		Size: 3.6 MB (3611264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d69ed81430cb14599f6fba4a5c133cdaff7d0c2417a078b417eded2f4b3a2ec1`  
		Last Modified: Wed, 09 Sep 2026 02:32:19 GMT  
		Size: 36.0 KB (35973 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.4.6`

```console
$ docker pull logstash@sha256:e93b3580f0720a02e1b1a940c30b801c8ee26568f60397f22a44bb6a524a1089
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.6` - linux; amd64

```console
$ docker pull logstash@sha256:1c5d4891cfa13f397b9d095997acee88b6a95812e9027b89cf37001810973323
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **526.6 MB (526553294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc4583c36c39b562e0bf8b09cd98ca9adcd53c84aab9bb3475606eeab3bcf92`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 09 Sep 2026 07:32:04 GMT
ENV container oci
# Wed, 09 Sep 2026 07:32:05 GMT
COPY dir:7d4e1add6b136709dfd81a23f253956035f58d34c5d236b96fba89c53c087ca2 in /      
# Wed, 09 Sep 2026 07:32:05 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 07:32:05 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 07:32:05 GMT
COPY dir:aab9058c830b4fe09c53d67f66c40e388b8f6b803bd122483e9e5b39e792636e in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 07:32:05 GMT
COPY dir:aab9058c830b4fe09c53d67f66c40e388b8f6b803bd122483e9e5b39e792636e in /root/buildinfo/      
# Wed, 09 Sep 2026 07:32:06 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T07:31:28Z" "org.opencontainers.image.revision"="032ccfa67770989ab0253359280f8ba2cf77ce39" "build-date"="2026-09-09T07:31:28Z" "architecture"="x86_64" "vcs-ref"="032ccfa67770989ab0253359280f8ba2cf77ce39" "vcs-type"="git" "release"="1788939036"org.opencontainers.image.created=2026-09-09T07:31:28Z,org.opencontainers.image.revision=032ccfa67770989ab0253359280f8ba2cf77ce39
# Wed, 09 Sep 2026 22:39:08 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 09 Sep 2026 22:39:08 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:39:08 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 22:39:08 GMT
WORKDIR /usr/share
# Wed, 09 Sep 2026 22:39:11 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:39:37 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.6-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.6 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 09 Sep 2026 22:39:37 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 09 Sep 2026 22:39:37 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 09 Sep 2026 22:39:37 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 09 Sep 2026 22:39:37 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 09 Sep 2026 22:39:37 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 09 Sep 2026 22:39:37 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 09 Sep 2026 22:39:37 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 22:39:38 GMT
WORKDIR /usr/share/logstash
# Wed, 09 Sep 2026 22:39:38 GMT
USER 1000
# Wed, 09 Sep 2026 22:39:38 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 09 Sep 2026 22:39:38 GMT
LABEL org.label-schema.build-date=2026-08-24T15:51:53+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-24T15:51:53+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 09 Sep 2026 22:39:38 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:399616a84899868b5dcba80b172eb2b68d9d6ceba1655cad130718f24d1f2160`  
		Last Modified: Wed, 09 Sep 2026 08:28:28 GMT  
		Size: 40.7 MB (40711761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5a482234234a1e7e73c06cfb4150b191cce0eb761d7c6bce1d4e3ee5bf9041`  
		Last Modified: Wed, 09 Sep 2026 22:40:13 GMT  
		Size: 4.8 MB (4770054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d2a2959774e9aee2a4326c5704b9aa536b501b95d74ff83acddb5f408a6a57`  
		Last Modified: Wed, 09 Sep 2026 22:40:22 GMT  
		Size: 480.8 MB (480806688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d44657f998c04b8b4bc9e34fb83663183c6a6af0ac5112cda4a1257f165afd`  
		Last Modified: Wed, 09 Sep 2026 22:40:12 GMT  
		Size: 6.4 KB (6362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29aed1841ad12da38c0397c70d221d4083612911ad59d1b71a3c00a9a715275b`  
		Last Modified: Wed, 09 Sep 2026 22:40:12 GMT  
		Size: 255.2 KB (255180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:043e470867c503d1268b41f6be7069fa7fd913932e02520ef1df045996be0f41`  
		Last Modified: Wed, 09 Sep 2026 22:40:14 GMT  
		Size: 351.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e0aa79a1b5bde8c4a6ed39e53948efd43541c71090a1235af42b3695eab3e7c`  
		Last Modified: Wed, 09 Sep 2026 22:40:14 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4fd85aaf42c32e256242a56e7264f6db9754399e1dcc0fb195d4650e101741`  
		Last Modified: Wed, 09 Sep 2026 22:40:14 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd9d50520b5b14c50499929264c7a75e7d103f5f101ca7040f19e874681337e`  
		Last Modified: Wed, 09 Sep 2026 22:40:15 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6324c916eb48da78f752748afe219b8ffc64acda67e0e901733713d67d18560a`  
		Last Modified: Wed, 09 Sep 2026 22:40:15 GMT  
		Size: 710.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.6` - unknown; unknown

```console
$ docker pull logstash@sha256:66a31743c5b7899738dd9c9e95f1863de36689c4cbcce7dd93f9d617c956efb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2146943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:763744854424ca50c0379284965a78be51cd23daa597eaf144ad68ed5e7acd9f`

```dockerfile
```

-	Layers:
	-	`sha256:df95019f51cfc72292d3ea0d6b2ef1b21840630221b41d379bb2cf40dfc2d931`  
		Last Modified: Wed, 09 Sep 2026 22:40:13 GMT  
		Size: 2.1 MB (2116743 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a12e8bae5a6f743cc9df7d70d793a9d754ff728256995c925db949013d1af928`  
		Last Modified: Wed, 09 Sep 2026 22:40:12 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.6` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:189475c411025143fa788dc3b28f75f1adcb7c67c970def96583a68f146945a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **522.9 MB (522919413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4904e189249a95a079a68756c7d6dc93b2642faf7878cbe018a259f9fcf2e4e`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 09 Sep 2026 07:33:36 GMT
ENV container oci
# Wed, 09 Sep 2026 07:33:36 GMT
COPY dir:bdf3d4ab52392fbb0b0cd322fb5ac95c784eadfe4f93f014ac96c337e0054015 in /      
# Wed, 09 Sep 2026 07:33:36 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 07:33:36 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 07:33:37 GMT
COPY dir:e6162a6f62758b77ea88d8c390bcc03627248124d50f4dd0fd77aef7b6bdffd0 in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 07:33:37 GMT
COPY dir:e6162a6f62758b77ea88d8c390bcc03627248124d50f4dd0fd77aef7b6bdffd0 in /root/buildinfo/      
# Wed, 09 Sep 2026 07:33:37 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T07:33:14Z" "org.opencontainers.image.revision"="032ccfa67770989ab0253359280f8ba2cf77ce39" "build-date"="2026-09-09T07:33:14Z" "architecture"="aarch64" "vcs-ref"="032ccfa67770989ab0253359280f8ba2cf77ce39" "vcs-type"="git" "release"="1788939036"org.opencontainers.image.created=2026-09-09T07:33:14Z,org.opencontainers.image.revision=032ccfa67770989ab0253359280f8ba2cf77ce39
# Wed, 09 Sep 2026 22:37:52 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 09 Sep 2026 22:37:52 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:37:52 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 22:37:52 GMT
WORKDIR /usr/share
# Wed, 09 Sep 2026 22:37:55 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:38:23 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.6-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.6 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 09 Sep 2026 22:38:23 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 09 Sep 2026 22:38:23 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 09 Sep 2026 22:38:23 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 09 Sep 2026 22:38:23 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 09 Sep 2026 22:38:23 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 09 Sep 2026 22:38:24 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 09 Sep 2026 22:38:24 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 22:38:24 GMT
WORKDIR /usr/share/logstash
# Wed, 09 Sep 2026 22:38:24 GMT
USER 1000
# Wed, 09 Sep 2026 22:38:24 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 09 Sep 2026 22:38:24 GMT
LABEL org.label-schema.build-date=2026-08-24T15:51:53+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-24T15:51:53+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 09 Sep 2026 22:38:24 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:374f212d7a74263aefa7d3cf064825d27ce22b5a5491d106d1c42a1fe1638d0c`  
		Last Modified: Wed, 09 Sep 2026 08:28:59 GMT  
		Size: 38.8 MB (38810277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9436fa8761d6dade5ae695281f1260f20677fde10064177117f5f48418b5a02e`  
		Last Modified: Wed, 09 Sep 2026 22:39:03 GMT  
		Size: 4.8 MB (4759368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca5291c12b5a82d0e1f56fbb7921c18cce9be85c9e08f19121bcd25c41443649`  
		Last Modified: Wed, 09 Sep 2026 22:39:11 GMT  
		Size: 479.1 MB (479084971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8faa25f147154c2f53be8909cf1686a7a1c7a1d0d4d14641ea86cdb0248f6696`  
		Last Modified: Wed, 09 Sep 2026 22:39:03 GMT  
		Size: 6.4 KB (6365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:405968cae60a0177acff508fe699995eab4ea463f2c56b03804bb28c0486b961`  
		Last Modified: Wed, 09 Sep 2026 22:39:03 GMT  
		Size: 255.2 KB (255184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4902ef06a14263899c668cab7fee3d7ad0f97a4ddf061c83cff6906c3d89c511`  
		Last Modified: Wed, 09 Sep 2026 22:39:04 GMT  
		Size: 349.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3504a0b92a473d6df2d6f0dc56b29277c16b674a359fa3bf22f3a51d82e5b78`  
		Last Modified: Wed, 09 Sep 2026 22:39:04 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:608e0eab195c44e32b4cd13f91f40469fc9db071da699fe126c678a94680354e`  
		Last Modified: Wed, 09 Sep 2026 22:39:04 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3fa28dcc0cd2353e349ece9d7d11e56dfa6285dfd59677c5b875766229a7239`  
		Last Modified: Wed, 09 Sep 2026 22:39:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e42826733a831f0c341d3ba88613e732dea4a09ebe3bae8d0eb8a60ca667458c`  
		Last Modified: Wed, 09 Sep 2026 22:39:06 GMT  
		Size: 708.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.6` - unknown; unknown

```console
$ docker pull logstash@sha256:d028b76ef92dc2241e8ec582c314e9a75e1d6cfc9b89c46c58ae30e541accd3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2145808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8cc44f07ae383f8afb7ddcdf59214b17c2a4859be59ddab5065bd58081aa556`

```dockerfile
```

-	Layers:
	-	`sha256:5ffa3c80fa7275d3f64538fd04454456e979efe59f14c55d349b41ee4392454e`  
		Last Modified: Wed, 09 Sep 2026 22:39:03 GMT  
		Size: 2.1 MB (2115531 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7786b269459d63ced91f1524cb5685d3dfd7c953128cf6a66ccda9d96a65bad6`  
		Last Modified: Wed, 09 Sep 2026 22:39:03 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.5.3`

```console
$ docker pull logstash@sha256:5f94bcf6f3c2b2714a7ad58f4835b349a1cd3ffe8fee5231dfe730188173ad54
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.5.3` - linux; amd64

```console
$ docker pull logstash@sha256:49565004f6f1c0ffc8da14a7e963094e9c653901227fdbbd001cac5e9f35286e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **536.1 MB (536140160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6867c4689e323dc6162ce01aeb2ec87313bc71cc0c8cf1602df55918aef67c5`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 09 Sep 2026 07:32:04 GMT
ENV container oci
# Wed, 09 Sep 2026 07:32:05 GMT
COPY dir:7d4e1add6b136709dfd81a23f253956035f58d34c5d236b96fba89c53c087ca2 in /      
# Wed, 09 Sep 2026 07:32:05 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 07:32:05 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 07:32:05 GMT
COPY dir:aab9058c830b4fe09c53d67f66c40e388b8f6b803bd122483e9e5b39e792636e in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 07:32:05 GMT
COPY dir:aab9058c830b4fe09c53d67f66c40e388b8f6b803bd122483e9e5b39e792636e in /root/buildinfo/      
# Wed, 09 Sep 2026 07:32:06 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T07:31:28Z" "org.opencontainers.image.revision"="032ccfa67770989ab0253359280f8ba2cf77ce39" "build-date"="2026-09-09T07:31:28Z" "architecture"="x86_64" "vcs-ref"="032ccfa67770989ab0253359280f8ba2cf77ce39" "vcs-type"="git" "release"="1788939036"org.opencontainers.image.created=2026-09-09T07:31:28Z,org.opencontainers.image.revision=032ccfa67770989ab0253359280f8ba2cf77ce39
# Wed, 09 Sep 2026 22:39:11 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 09 Sep 2026 22:39:11 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:39:11 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 22:39:11 GMT
WORKDIR /usr/share
# Wed, 09 Sep 2026 22:39:14 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:39:35 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.3-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.3 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 09 Sep 2026 22:39:35 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 09 Sep 2026 22:39:35 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 09 Sep 2026 22:39:35 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 09 Sep 2026 22:39:35 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 09 Sep 2026 22:39:35 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 09 Sep 2026 22:39:35 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 09 Sep 2026 22:39:35 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 22:39:35 GMT
WORKDIR /usr/share/logstash
# Wed, 09 Sep 2026 22:39:35 GMT
USER 1000
# Wed, 09 Sep 2026 22:39:35 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 09 Sep 2026 22:39:35 GMT
LABEL org.label-schema.build-date=2026-09-01T07:25:38+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T07:25:38+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 09 Sep 2026 22:39:35 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:399616a84899868b5dcba80b172eb2b68d9d6ceba1655cad130718f24d1f2160`  
		Last Modified: Wed, 09 Sep 2026 08:28:28 GMT  
		Size: 40.7 MB (40711761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cccd9da5f779a4d83d22a079e4afbbf1fef0565652468bd2d88ea57ec650067e`  
		Last Modified: Wed, 09 Sep 2026 22:40:12 GMT  
		Size: 4.8 MB (4770039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83ebdb47fda86c607c3353daee863d77c5e66cb3c24b965b468268e0a81185b7`  
		Last Modified: Wed, 09 Sep 2026 22:40:27 GMT  
		Size: 490.4 MB (490393395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55a4e2adc218a37cbe1fb3b532199c4ff400590620dd479426b08cdf76fe7406`  
		Last Modified: Wed, 09 Sep 2026 22:40:12 GMT  
		Size: 6.5 KB (6535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b9b4b37478c7d3554537642ec9b7af8e293d1c49c05d780ce1c0f08b9add9a`  
		Last Modified: Wed, 09 Sep 2026 22:40:12 GMT  
		Size: 255.2 KB (255180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b8239722237e17403f71c7f1b88fd2ba82ed50fa29cd7afd354518d43209af`  
		Last Modified: Wed, 09 Sep 2026 22:40:13 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64141fbcdd004da472e290bddd114dfcfd4ab14b9c24793bdd41d5053d06ee58`  
		Last Modified: Wed, 09 Sep 2026 22:40:13 GMT  
		Size: 1.6 KB (1574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c4427f743c6e83a519fa5535349742a7260bad410a05f66c58e79f25ef55af`  
		Last Modified: Wed, 09 Sep 2026 22:40:13 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a860a14c687835fea8af3ef89ca7dfef7615a007c739f59c6abfebe767703ec7`  
		Last Modified: Wed, 09 Sep 2026 22:40:14 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0d9d3ea3d93aeb3fccb701510b091f706f2c3baaa13ba99ab696d346f661c09`  
		Last Modified: Wed, 09 Sep 2026 22:40:15 GMT  
		Size: 709.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.3` - unknown; unknown

```console
$ docker pull logstash@sha256:86e1ed930ae54de68d117457b5732c1fefcc750596a309e963d658ae3ee188f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cdb4bb02fa6a0aca763e449c213190fb285de349372db7652109d7ba6412133`

```dockerfile
```

-	Layers:
	-	`sha256:54d8dfcca49d61bfc87e56987a397358ae57770ed6167334979d3ad9ab672b38`  
		Last Modified: Wed, 09 Sep 2026 22:40:12 GMT  
		Size: 2.1 MB (2144047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b75b72be28d5a22d40914af24573a630428ee76779f1f5a9d6932cf37fdbbe66`  
		Last Modified: Wed, 09 Sep 2026 22:40:12 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.5.3` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:824a21c1ac2271980da3580fb588a53bb460d349dd1b213e5f275661e4491ed4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **532.5 MB (532492682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3aaf2fb50fe7a572c56eff7dac750f749866481aa0804b4cecb544fde60fbdd1`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 09 Sep 2026 07:33:36 GMT
ENV container oci
# Wed, 09 Sep 2026 07:33:36 GMT
COPY dir:bdf3d4ab52392fbb0b0cd322fb5ac95c784eadfe4f93f014ac96c337e0054015 in /      
# Wed, 09 Sep 2026 07:33:36 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 07:33:36 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 07:33:37 GMT
COPY dir:e6162a6f62758b77ea88d8c390bcc03627248124d50f4dd0fd77aef7b6bdffd0 in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 07:33:37 GMT
COPY dir:e6162a6f62758b77ea88d8c390bcc03627248124d50f4dd0fd77aef7b6bdffd0 in /root/buildinfo/      
# Wed, 09 Sep 2026 07:33:37 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T07:33:14Z" "org.opencontainers.image.revision"="032ccfa67770989ab0253359280f8ba2cf77ce39" "build-date"="2026-09-09T07:33:14Z" "architecture"="aarch64" "vcs-ref"="032ccfa67770989ab0253359280f8ba2cf77ce39" "vcs-type"="git" "release"="1788939036"org.opencontainers.image.created=2026-09-09T07:33:14Z,org.opencontainers.image.revision=032ccfa67770989ab0253359280f8ba2cf77ce39
# Wed, 09 Sep 2026 22:37:51 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 09 Sep 2026 22:37:51 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:37:51 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 09 Sep 2026 22:37:51 GMT
WORKDIR /usr/share
# Wed, 09 Sep 2026 22:37:54 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:41:18 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.3-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.3 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 09 Sep 2026 22:41:18 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 09 Sep 2026 22:41:18 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 09 Sep 2026 22:41:18 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 09 Sep 2026 22:41:18 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 09 Sep 2026 22:41:18 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 09 Sep 2026 22:41:18 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 09 Sep 2026 22:41:18 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 09 Sep 2026 22:41:18 GMT
WORKDIR /usr/share/logstash
# Wed, 09 Sep 2026 22:41:18 GMT
USER 1000
# Wed, 09 Sep 2026 22:41:18 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 09 Sep 2026 22:41:18 GMT
LABEL org.label-schema.build-date=2026-09-01T07:25:38+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T07:25:38+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 09 Sep 2026 22:41:18 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:374f212d7a74263aefa7d3cf064825d27ce22b5a5491d106d1c42a1fe1638d0c`  
		Last Modified: Wed, 09 Sep 2026 08:28:59 GMT  
		Size: 38.8 MB (38810277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb14fd5fd64f48153b7a1bdfdfd94c69997721ce790bc0e3db7831f9bbd2b6b1`  
		Last Modified: Wed, 09 Sep 2026 22:41:58 GMT  
		Size: 4.8 MB (4759387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f33f18767e9dd83384b11809583fd021b3490a828894e1eb9bbc5a048a4eefc`  
		Last Modified: Wed, 09 Sep 2026 22:42:06 GMT  
		Size: 488.7 MB (488658024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88d9679d3c4a4951a59062f9038ab505aa3b4be97834a709a37aa13adb3d30a5`  
		Last Modified: Wed, 09 Sep 2026 22:41:58 GMT  
		Size: 6.5 KB (6543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ae1814d3b9765891519f083114cd534ff1cbd71ef0ea115099953d82c0f4937`  
		Last Modified: Wed, 09 Sep 2026 22:41:58 GMT  
		Size: 255.2 KB (255186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ae4f7d10dd5d97b797f5d4a98668acf1e6f5f00b04e24f32ed07a3d279a98d`  
		Last Modified: Wed, 09 Sep 2026 22:41:59 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da42394cc8b82474e81829e79d47d08248e38d61496235a88c08f83192bc64f1`  
		Last Modified: Wed, 09 Sep 2026 22:41:59 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9af294228fdced1dbb4e9b3b816a4b1623b2c0835757ef5229faff68a57827`  
		Last Modified: Wed, 09 Sep 2026 22:41:59 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4706dda04184735e40aa13150a8624d1cc3a019d92d536f148bb85643db92fc9`  
		Last Modified: Wed, 09 Sep 2026 22:42:00 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1113d81ba1bc100041f27310bd408a2e312682a2701b3ba2c534136906c81a2a`  
		Last Modified: Wed, 09 Sep 2026 22:42:00 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.3` - unknown; unknown

```console
$ docker pull logstash@sha256:abfb348a31b51c8d94222a6b0883a22f154adbb2a1520fdd7010d3c88b39f8e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2173111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89104dfddcdf17d686031648e8f898d325128c352e5a7ededb7f25de2b9805b1`

```dockerfile
```

-	Layers:
	-	`sha256:1de130ca41a82351651f2cc2837926aa83bdb6769d9c23f566bc5f824ed97ef8`  
		Last Modified: Wed, 09 Sep 2026 22:41:58 GMT  
		Size: 2.1 MB (2142835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f805c42c5995d8b63be552293c023d8446e0c125aa5d91cb3f9f3cd043874ca6`  
		Last Modified: Wed, 09 Sep 2026 22:41:58 GMT  
		Size: 30.3 KB (30276 bytes)  
		MIME: application/vnd.in-toto+json
