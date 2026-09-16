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
$ docker pull logstash@sha256:e1c9a916d9054e28193f7028db60622b3fcec992df567af92281cb3fef0fecf8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.6` - linux; amd64

```console
$ docker pull logstash@sha256:e58a0f9f2a5f72ea9197dda5f92aca8a5885b298f062c0ea3813c4e1548bd063
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **526.6 MB (526639622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bd07adce2079d934d18ff5ac074b7def80aa6ed96e7ee3e7b8764a60b9d62b1`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:53:58 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 15 Sep 2026 22:53:58 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:53:58 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 15 Sep 2026 22:53:58 GMT
WORKDIR /usr/share
# Tue, 15 Sep 2026 22:54:00 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:54:58 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.6-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.6 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 15 Sep 2026 22:54:59 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 15 Sep 2026 22:54:59 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 15 Sep 2026 22:54:59 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 15 Sep 2026 22:54:59 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 15 Sep 2026 22:54:59 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 15 Sep 2026 22:54:59 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 15 Sep 2026 22:54:59 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:54:59 GMT
WORKDIR /usr/share/logstash
# Tue, 15 Sep 2026 22:54:59 GMT
USER 1000
# Tue, 15 Sep 2026 22:54:59 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 15 Sep 2026 22:54:59 GMT
LABEL org.label-schema.build-date=2026-08-24T15:51:53+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-24T15:51:53+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 15 Sep 2026 22:54:59 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ffa8e0443f41262aecc421ff901000a5a5fb93b14c7a4677e77a036b28da85`  
		Last Modified: Tue, 15 Sep 2026 22:55:36 GMT  
		Size: 4.8 MB (4773639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c5f55ccf05dfa88edfc804c545f42b5789e96d70d050ba1bc1428165eb80cb`  
		Last Modified: Tue, 15 Sep 2026 22:55:46 GMT  
		Size: 480.8 MB (480806434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd58c8bfdce0d025b4a5ddbaeb41b6d7a9ba2c61fd8586ed39b32aace8feb61`  
		Last Modified: Tue, 15 Sep 2026 22:55:35 GMT  
		Size: 6.4 KB (6369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18676f111abe4ea4ac093578a706e5f8b991260794e669627cd7ef8e987133ba`  
		Last Modified: Tue, 15 Sep 2026 22:55:36 GMT  
		Size: 255.2 KB (255191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543dcb5ba57540e9250b061232be0dbcd778cec72fc70b401b302908885d057f`  
		Last Modified: Tue, 15 Sep 2026 22:55:37 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ad3a26381fe92df42e0e67f883ebbd0dfec655b263bd38a28421ac128e54f4`  
		Last Modified: Tue, 15 Sep 2026 22:55:37 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ef07b82d54daa807065edf17f9b621a177e0b6b64755a7c31f55c10dff3c71`  
		Last Modified: Tue, 15 Sep 2026 22:55:37 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1097d7a2d4dadf48f493d1341dc666310cac7c1772568f5b8a774cceeeb5158`  
		Last Modified: Tue, 15 Sep 2026 22:55:38 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0810ec437cace87e998e8a7edf07ec02de5e10fb09d85be9dde3a3e59036f5bb`  
		Last Modified: Tue, 15 Sep 2026 22:55:38 GMT  
		Size: 709.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.6` - unknown; unknown

```console
$ docker pull logstash@sha256:73b75bcc16fcc97f2afebbbc554dde11dd79c96254a3ff4e2a95b9a34295873e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2146951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ce8054afef832602457ccb2661015167791147d3adb5092ac89596bd51c4cb2`

```dockerfile
```

-	Layers:
	-	`sha256:3c89016d0793a10a6468c7e821895031d1f4cc906376f540d1e36e448e919cf4`  
		Last Modified: Tue, 15 Sep 2026 22:55:36 GMT  
		Size: 2.1 MB (2116751 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64e9b33759dcf97bcd974e885b2f920d09fa3a5f55335832d117acc406f30955`  
		Last Modified: Tue, 15 Sep 2026 22:55:35 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.6` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:ed14934f07a2e5310b8def6b1e7257966e56523e57004e70f783b0534c200e97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **522.9 MB (522913862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0df7049be0d0249eb5b62e031e6799470c33b18486ee8b68a5d65d07988fbf5d`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:32:10 GMT
ENV container oci
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:72fb2dc4c486c747a87584232d6df49829397aab078c7b53003fc02fe0742d2a in /      
# Tue, 15 Sep 2026 08:32:11 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:32:11 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:70bfa1e7dfaad5303fc10a9b7675f727b8b80ee73235d444355fbe0bc2bcf440 in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:70bfa1e7dfaad5303fc10a9b7675f727b8b80ee73235d444355fbe0bc2bcf440 in /root/buildinfo/      
# Tue, 15 Sep 2026 08:32:11 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:31:49Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:31:49Z" "architecture"="aarch64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:31:49Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:43:06 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 15 Sep 2026 22:43:06 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:43:06 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 15 Sep 2026 22:43:06 GMT
WORKDIR /usr/share
# Tue, 15 Sep 2026 22:43:09 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:44:10 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.6-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.6 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 15 Sep 2026 22:44:10 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 15 Sep 2026 22:44:10 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 15 Sep 2026 22:44:10 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 15 Sep 2026 22:44:10 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 15 Sep 2026 22:44:10 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 15 Sep 2026 22:44:10 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 15 Sep 2026 22:44:10 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:44:10 GMT
WORKDIR /usr/share/logstash
# Tue, 15 Sep 2026 22:44:10 GMT
USER 1000
# Tue, 15 Sep 2026 22:44:10 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 15 Sep 2026 22:44:10 GMT
LABEL org.label-schema.build-date=2026-08-24T15:51:53+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-24T15:51:53+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 15 Sep 2026 22:44:10 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:edf54d88a9d386573b3ea6054762d75827e6380055074899aed1e5a2c810b3b7`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 38.8 MB (38799472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1220887467c91fd3efc7cff2cb1097ad3bb05d68c8a62e1405578a4b54ba9bc`  
		Last Modified: Tue, 15 Sep 2026 22:44:50 GMT  
		Size: 4.8 MB (4764671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3e876b1ce6f174077bb960abb16384f6ad0736dd7b36e3753fd094194b01223`  
		Last Modified: Tue, 15 Sep 2026 22:45:01 GMT  
		Size: 479.1 MB (479084904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4285b154285aa82ea549a5136eac5c2fc4444a43209053375940614eb0a9a51`  
		Last Modified: Tue, 15 Sep 2026 22:44:50 GMT  
		Size: 6.4 KB (6368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010267631f9724ca63fddff7c761c482efca845efc93366c0edacd2507d0ee7c`  
		Last Modified: Tue, 15 Sep 2026 22:44:50 GMT  
		Size: 255.2 KB (255186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:462aa5354a8af786265128147990bce65e9a62b2a7faf9eb817851e773c873c4`  
		Last Modified: Tue, 15 Sep 2026 22:44:51 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33ac9abc20bad429c6846916e47eb943b2113bce5f83d48ba13ed56ce63fbd6`  
		Last Modified: Tue, 15 Sep 2026 22:44:51 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf71d84843be925352ea13090962ba3517aafc5e003378552e63d1dd432477e`  
		Last Modified: Tue, 15 Sep 2026 22:44:52 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:745dceb283e374a048d806448e68f244d23f4c70acef83ac47562393e19bda53`  
		Last Modified: Tue, 15 Sep 2026 22:44:52 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4577710127587801aa68518d9e9a063af838e56a6445194722bea9fa52b52fe0`  
		Last Modified: Tue, 15 Sep 2026 22:44:53 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.6` - unknown; unknown

```console
$ docker pull logstash@sha256:b92e55268de4781580d1f9ba573f33c6472b096ab76f73ec0f395fe57d23d2cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2145816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:559495f1cf1a8b216147bb323e5d756eaea5369bbdfaab3215cfab359a433b1d`

```dockerfile
```

-	Layers:
	-	`sha256:f72e71430d0321cd3bf0916007e3797470c4785c4689d10f09c87b54024c2acc`  
		Last Modified: Tue, 15 Sep 2026 22:44:50 GMT  
		Size: 2.1 MB (2115539 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9cff78faa833ccb65063eeb1385edb276fef2c06aac39515d9846ffc7a2725e8`  
		Last Modified: Tue, 15 Sep 2026 22:44:50 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.5.3`

```console
$ docker pull logstash@sha256:a4de4caccb7afaded66a9d64bf91fad54faa69f8d3b575d217790ccb6e8661f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.5.3` - linux; amd64

```console
$ docker pull logstash@sha256:ffb592c8612cc2ebc1dcbddac10fff1c5e97df26939de2a69e3c9d551cbc8efb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **536.2 MB (536227921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:111b3c62985ec227abdbcdf60c8a86c029e1603542e111acb66854311b5cc9e2`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:54:01 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 15 Sep 2026 22:54:01 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:54:01 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 15 Sep 2026 22:54:01 GMT
WORKDIR /usr/share
# Tue, 15 Sep 2026 22:54:04 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:55:03 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.3-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.3 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 15 Sep 2026 22:55:03 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 15 Sep 2026 22:55:03 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 15 Sep 2026 22:55:03 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 15 Sep 2026 22:55:04 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 15 Sep 2026 22:55:04 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 15 Sep 2026 22:55:04 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 15 Sep 2026 22:55:04 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:55:04 GMT
WORKDIR /usr/share/logstash
# Tue, 15 Sep 2026 22:55:04 GMT
USER 1000
# Tue, 15 Sep 2026 22:55:04 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 15 Sep 2026 22:55:04 GMT
LABEL org.label-schema.build-date=2026-09-01T07:25:38+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T07:25:38+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 15 Sep 2026 22:55:04 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b311a9854c6f369d850dd59d8d3bef9046b88d1f6588bb6b8b6205585773bed7`  
		Last Modified: Tue, 15 Sep 2026 22:55:43 GMT  
		Size: 4.8 MB (4773656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384a457986be7e9f33d743c2a0fdfc5004af57e2d10bb4d4f0923a43754ed19b`  
		Last Modified: Tue, 15 Sep 2026 22:55:52 GMT  
		Size: 490.4 MB (490394553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:435c72954d2c20010e702962a597dc31b12c1d4995ecdec57a374f3137fd50e2`  
		Last Modified: Tue, 15 Sep 2026 22:55:43 GMT  
		Size: 6.5 KB (6542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96bde58de0258196b86c19abcbd3a8877c99cc5737dcd5cec2e1ec0c17691d2b`  
		Last Modified: Tue, 15 Sep 2026 22:55:43 GMT  
		Size: 255.2 KB (255183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5ff0fe0e5162528ad8051b2f7ac38479439afa8065d4d263f8d5e3648258e56`  
		Last Modified: Tue, 15 Sep 2026 22:55:44 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e49440afa0160b59a702b688fd6d0d101ea3e5c248f2f72c956e05d8ad84ada3`  
		Last Modified: Tue, 15 Sep 2026 22:55:44 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c2fff594e4eb0fdae793938b13fce1f890eca7de55da4635881589caffdfa6d`  
		Last Modified: Tue, 15 Sep 2026 22:55:44 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6e057d0a6bea05ca8f455d57b665352253ba4eacca41490e173634a47cb97dc`  
		Last Modified: Tue, 15 Sep 2026 22:55:45 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e68e29fe110c532b89e14cd45a1bcce1ffe855983732e20b079239670b2e9e10`  
		Last Modified: Tue, 15 Sep 2026 22:55:45 GMT  
		Size: 709.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.3` - unknown; unknown

```console
$ docker pull logstash@sha256:e5614d8559822acdfb27b37df12707226240789dd7690250cf6ba9689caed1e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a3d0f9d97a044f9276b2388a5ba2a87bb16dd04f4b41c3c356ec512f998925`

```dockerfile
```

-	Layers:
	-	`sha256:319991609bc24421eaa004a757ccba6d8134e0817753751fd1b715bd2be1dd58`  
		Last Modified: Tue, 15 Sep 2026 22:55:43 GMT  
		Size: 2.1 MB (2144055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7296ba999d3c89cf0bb0d225f1e1973ced2cf3d7f0c186c0a578d28cb3e0e165`  
		Last Modified: Tue, 15 Sep 2026 22:55:43 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.5.3` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:ce5d9f6796181ea90084692ae928e9aad7bb1261b4de926c277ba65a64f6adf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **532.5 MB (532487265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca393e1798f287ae6c8488f1e437770f57e27123a15a3648454fae55df29ffd`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:32:10 GMT
ENV container oci
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:72fb2dc4c486c747a87584232d6df49829397aab078c7b53003fc02fe0742d2a in /      
# Tue, 15 Sep 2026 08:32:11 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:32:11 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:70bfa1e7dfaad5303fc10a9b7675f727b8b80ee73235d444355fbe0bc2bcf440 in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:70bfa1e7dfaad5303fc10a9b7675f727b8b80ee73235d444355fbe0bc2bcf440 in /root/buildinfo/      
# Tue, 15 Sep 2026 08:32:11 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:31:49Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:31:49Z" "architecture"="aarch64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:31:49Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:43:09 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 15 Sep 2026 22:43:09 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:43:09 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 15 Sep 2026 22:43:09 GMT
WORKDIR /usr/share
# Tue, 15 Sep 2026 22:43:12 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:44:14 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.3-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.3 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 15 Sep 2026 22:44:14 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 15 Sep 2026 22:44:14 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 15 Sep 2026 22:44:14 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 15 Sep 2026 22:44:14 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 15 Sep 2026 22:44:14 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 15 Sep 2026 22:44:14 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 15 Sep 2026 22:44:14 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:44:14 GMT
WORKDIR /usr/share/logstash
# Tue, 15 Sep 2026 22:44:14 GMT
USER 1000
# Tue, 15 Sep 2026 22:44:14 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 15 Sep 2026 22:44:14 GMT
LABEL org.label-schema.build-date=2026-09-01T07:25:38+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T07:25:38+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 15 Sep 2026 22:44:14 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:edf54d88a9d386573b3ea6054762d75827e6380055074899aed1e5a2c810b3b7`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 38.8 MB (38799472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28bdb7108c460cb8406ae59d13cb434ea024124020af296c565ba20535cb71ab`  
		Last Modified: Tue, 15 Sep 2026 22:44:54 GMT  
		Size: 4.8 MB (4764642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f550148cb9b1e554ef78e0930d2e595f7558d33046fb87a89269f8ba772cee`  
		Last Modified: Tue, 15 Sep 2026 22:45:03 GMT  
		Size: 488.7 MB (488658173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14d21ea6ac470e10b0b001a6ca433304463a5ab9e041de78d4d807094e34187c`  
		Last Modified: Tue, 15 Sep 2026 22:44:54 GMT  
		Size: 6.5 KB (6537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d539a4201924ccd7130e23ebccaf7d8a4faaceb36a3482a4aa3e862777dd45`  
		Last Modified: Tue, 15 Sep 2026 22:44:54 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b03e5ee6a75e4350f8c40810c98ff39e6ee5e581abc396348950ae54b430c4cf`  
		Last Modified: Tue, 15 Sep 2026 22:44:55 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c0f92949fd72f19efb78c8bb8ab81597e1a951acbd15d064ea269397b1b1b93`  
		Last Modified: Tue, 15 Sep 2026 22:44:55 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3140dbbb6afb623e3660073e620eb93e1df3c26a444cca1b22b82a52ab4f3f17`  
		Last Modified: Tue, 15 Sep 2026 22:44:55 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3652685ddd6fcc279ef670eac0f775f68dacd4c0bddc8a33d0b25ae52596e34b`  
		Last Modified: Tue, 15 Sep 2026 22:44:56 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8797b122c64b948b8b655ef44165403ffe17be2199814023c23aeef0898fc5b7`  
		Last Modified: Tue, 15 Sep 2026 22:44:56 GMT  
		Size: 710.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.3` - unknown; unknown

```console
$ docker pull logstash@sha256:9e37074da36e06a10c8369be97394dc61f11b0cabef21689ce8a383295ae6eb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2173120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d1fad31214c2109608a75d9f4aac6d48e5dc77527c3bda4277bf6e3dad70977`

```dockerfile
```

-	Layers:
	-	`sha256:32944be38c918ad62eec4e1109cc040796907b03e7bc816248ba29eb373cdb97`  
		Last Modified: Tue, 15 Sep 2026 22:44:54 GMT  
		Size: 2.1 MB (2142843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cb639b58afefad11dc5c13e78aa8ea5bc62fb495bb809e86ed6c7c1c92f8fe8`  
		Last Modified: Tue, 15 Sep 2026 22:44:54 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json
