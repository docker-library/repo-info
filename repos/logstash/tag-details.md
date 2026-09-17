<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:8.19.21`](#logstash81921)
-	[`logstash:9.4.6`](#logstash946)
-	[`logstash:9.5.3`](#logstash953)

## `logstash:8.19.21`

```console
$ docker pull logstash@sha256:260491800cb798dcc51d64a5595a077e25986d753ba290c0a9f3a8bfe74fbac0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:8.19.21` - linux; amd64

```console
$ docker pull logstash@sha256:ee512deaf171e332430c01d3046b3cf7a80939b4c385799508e58e53e97c3d09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **528.3 MB (528301313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c954707a5144c507616d968b40776ee58a1f280af91f2c1324055865d71d29e`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:25:55 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Wed, 16 Sep 2026 03:25:56 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Wed, 16 Sep 2026 03:26:10 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.21-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.21 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 16 Sep 2026 03:26:10 GMT
WORKDIR /usr/share/logstash
# Wed, 16 Sep 2026 03:26:10 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 16 Sep 2026 03:26:10 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:26:10 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Wed, 16 Sep 2026 03:26:10 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Wed, 16 Sep 2026 03:26:10 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Wed, 16 Sep 2026 03:26:10 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Wed, 16 Sep 2026 03:26:10 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:26:10 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 16 Sep 2026 03:26:10 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 16 Sep 2026 03:26:10 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 16 Sep 2026 03:26:10 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:26:10 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Wed, 16 Sep 2026 03:26:10 GMT
USER 1000
# Wed, 16 Sep 2026 03:26:10 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 16 Sep 2026 03:26:10 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.21 org.opencontainers.image.version=8.19.21 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-08-24T15:53:50+00:00 org.opencontainers.image.created=2026-08-24T15:53:50+00:00
# Wed, 16 Sep 2026 03:26:10 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b9f073f366020478d989d62d3d1ce1aef1dda91e4d71c59a6dcc6a439a1ac7`  
		Last Modified: Wed, 16 Sep 2026 03:26:48 GMT  
		Size: 47.2 MB (47195892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3f87298273e8bf2a4160ea0ad4ae84531268dda619acb5fe8aece59db8aa1de`  
		Last Modified: Wed, 16 Sep 2026 03:26:46 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a4da8af35b9b8c0cb67201b8085debaf20f4c386066935514b4b5aa96ec057`  
		Last Modified: Wed, 16 Sep 2026 03:26:55 GMT  
		Size: 451.1 MB (451073580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a7fa5d21dda2f2b50dff104d6d1f2f1330996381f4c777aae7a3c9762cdc01c`  
		Last Modified: Wed, 16 Sep 2026 03:26:46 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de9082c0c761b0cc64ee0acd4116de9b5dc60a3844a08ec01c811cb429fa5fb0`  
		Last Modified: Wed, 16 Sep 2026 03:26:47 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eccfc7cd3ba8143d74a5182fbd40514a695a4897928c69c8c50531184f5d5b8a`  
		Last Modified: Wed, 16 Sep 2026 03:26:47 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abcf9bb0a8b16186f7507ae726eeec190f42453f0c9757d79b661fca7a789b02`  
		Last Modified: Wed, 16 Sep 2026 03:26:49 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1106db9c6b366f25c7836e5a36e24d6539b9b9732836f5e6c28ad308929c8164`  
		Last Modified: Wed, 16 Sep 2026 03:26:49 GMT  
		Size: 6.3 KB (6296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a93a5862aebd8585ccba8cf186fabcdac17c8927b01b63f5b88cbd8dff6a41`  
		Last Modified: Wed, 16 Sep 2026 03:26:50 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e884779ca7aa1fd893fac5e438e0a722bf77a453c32d47a316c306abee8098`  
		Last Modified: Wed, 16 Sep 2026 03:26:50 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d94a795acc3385d4a54b16a909a2f7dbffda737c3e35f7bdbd7a558425ffae`  
		Last Modified: Wed, 16 Sep 2026 03:26:50 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.21` - unknown; unknown

```console
$ docker pull logstash@sha256:be9a6e3df468ab0d4f0d51aa6503f818a191404f902354eac054181a0c8ca0a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3646696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e11f10d149d2b68e6a0911d3ac778d3e704aa07df41ef8b5466f10073971259e`

```dockerfile
```

-	Layers:
	-	`sha256:4459a6f9e6b2c0c6c42dbfe7a5b9e9d3961cce42197b732a053e5f00ba34c3c6`  
		Last Modified: Wed, 16 Sep 2026 03:26:47 GMT  
		Size: 3.6 MB (3610851 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2d591fb51f84d817482c67e1f4a19fc0b3e8dc843ec8928563f20e5fb733e71`  
		Last Modified: Wed, 16 Sep 2026 03:26:46 GMT  
		Size: 35.8 KB (35845 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:8.19.21` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:764d0c1a9421fe7c98fe7ce7749758ba80170997f4aaa20035446d9337a7eb5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **527.8 MB (527778549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b7ee38fae858a4eea14c366cd901f901ac0102b08c95d1752e6316c46f82768`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:25:27 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Wed, 16 Sep 2026 03:25:27 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Wed, 16 Sep 2026 03:26:11 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.21-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.21 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 16 Sep 2026 03:26:12 GMT
WORKDIR /usr/share/logstash
# Wed, 16 Sep 2026 03:26:12 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 16 Sep 2026 03:26:12 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:26:12 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Wed, 16 Sep 2026 03:26:12 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Wed, 16 Sep 2026 03:26:12 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Wed, 16 Sep 2026 03:26:12 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Wed, 16 Sep 2026 03:26:12 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:26:12 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 16 Sep 2026 03:26:12 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 16 Sep 2026 03:26:12 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 16 Sep 2026 03:26:12 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:26:12 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Wed, 16 Sep 2026 03:26:12 GMT
USER 1000
# Wed, 16 Sep 2026 03:26:12 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 16 Sep 2026 03:26:12 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.21 org.opencontainers.image.version=8.19.21 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-08-24T15:53:50+00:00 org.opencontainers.image.created=2026-08-24T15:53:50+00:00
# Wed, 16 Sep 2026 03:26:12 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95f776bc50375d08b4886fa7446040ad313e7614e6b394b72e7bdb9851a1cf90`  
		Last Modified: Wed, 16 Sep 2026 03:26:53 GMT  
		Size: 49.2 MB (49211826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0fcacb0ae3e646dd4e1fd561c137782d5a3521da350c9ce568af620a68d2d0b`  
		Last Modified: Wed, 16 Sep 2026 03:26:51 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a07ad69c04addb5ce8b70a3615f9ac3806cabc332f6312070d17a3978220134d`  
		Last Modified: Wed, 16 Sep 2026 03:27:00 GMT  
		Size: 449.4 MB (449357413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb2b660c2aefcef84c1fd7ba4613b6648a0416827dadf554ee1b96ae7f5ff65d`  
		Last Modified: Wed, 16 Sep 2026 03:26:51 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a958e8c244cbdaf238511ad52a7c21d793ce8bc384edb2a1ef4bfc19e3a04811`  
		Last Modified: Wed, 16 Sep 2026 03:26:52 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02da37aa7d8d991d21c8b26fe05c65769866a088d37a69b9ac659c8896dfdc8c`  
		Last Modified: Wed, 16 Sep 2026 03:26:52 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:085b4923b078bec8e810c24366d77e62de027b79f61c0e7f794ccc3f4b3831b7`  
		Last Modified: Wed, 16 Sep 2026 03:26:53 GMT  
		Size: 1.8 KB (1762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0be621b4b7afbe2673799d0c2505aa4dd8884d389dcb7f44fd77ea38e0c3776`  
		Last Modified: Wed, 16 Sep 2026 03:26:53 GMT  
		Size: 6.3 KB (6295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:463e59494a1ccb4f52c81a7a616352c66e08ddd1e9129a18efc6e30cca16557a`  
		Last Modified: Wed, 16 Sep 2026 03:26:54 GMT  
		Size: 255.2 KB (255184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b1d2559f8a10874bbd081563ada3710bbbdb09cc79478a128f648e591698b7e`  
		Last Modified: Wed, 16 Sep 2026 03:26:54 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebbe9a8084caf65058d4e6af599f6c70d3efffb589f158263eede30197afef8c`  
		Last Modified: Wed, 16 Sep 2026 03:26:55 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.21` - unknown; unknown

```console
$ docker pull logstash@sha256:54357c83755b3d55ce6c07d22949d7abbe3e4c6bacbc289e7858678095b9c145
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3647249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e48a308c6cd07ffcfd30404d5c5dff044b69cce2755deb79c7a92750300381f`

```dockerfile
```

-	Layers:
	-	`sha256:47c814b3de3ac987eb6a80cd8bb0a5e4b79f34ad738f829c1aadc177ef5d9402`  
		Last Modified: Wed, 16 Sep 2026 03:26:51 GMT  
		Size: 3.6 MB (3611276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ad1f22269cd45cb61728611ccf5c84bfe9fd0e4237a7aab8cfdf7d2971276ab`  
		Last Modified: Wed, 16 Sep 2026 03:26:51 GMT  
		Size: 36.0 KB (35973 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.4.6`

```console
$ docker pull logstash@sha256:976e75c215e02c82acac703bf242a417ffa05a6c8c656564111ede1042a22f61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.6` - linux; amd64

```console
$ docker pull logstash@sha256:5a0c80280adf11d4d941b605ec663229dde1970c1ab8f7c093f3629a297277cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **526.5 MB (526545265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dfb64849b8bdb2c5d8518e331db983e2a534bace9c5774153efb0f0eb3cf5aa`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.openshift.expose-services=""
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 16 Sep 2026 08:14:47 GMT
ENV container oci
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:b8d2e4702aa4e2e0f81f97ab3a96785119f9cab5f11a12e6f35f97263fc80089 in /      
# Wed, 16 Sep 2026 08:14:48 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 16 Sep 2026 08:14:48 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:0d75961e3db2326a48bbcf23c2e4ea4e05da817cf04277234a6d96480c0cf5b7 in /usr/share/buildinfo/      
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:0d75961e3db2326a48bbcf23c2e4ea4e05da817cf04277234a6d96480c0cf5b7 in /root/buildinfo/      
# Wed, 16 Sep 2026 08:14:48 GMT
LABEL "org.opencontainers.image.created"="2026-09-16T08:14:20Z" "org.opencontainers.image.revision"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "build-date"="2026-09-16T08:14:20Z" "architecture"="x86_64" "vcs-ref"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "vcs-type"="git" "release"="1789546276"org.opencontainers.image.created=2026-09-16T08:14:20Z,org.opencontainers.image.revision=28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee
# Thu, 17 Sep 2026 18:55:59 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 17 Sep 2026 18:55:59 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 18:55:59 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 17 Sep 2026 18:55:59 GMT
WORKDIR /usr/share
# Thu, 17 Sep 2026 18:56:01 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Thu, 17 Sep 2026 18:56:32 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.6-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.6 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Thu, 17 Sep 2026 18:56:32 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Thu, 17 Sep 2026 18:56:32 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Thu, 17 Sep 2026 18:56:32 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Thu, 17 Sep 2026 18:56:32 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Thu, 17 Sep 2026 18:56:32 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Thu, 17 Sep 2026 18:56:32 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Thu, 17 Sep 2026 18:56:32 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 18:56:32 GMT
WORKDIR /usr/share/logstash
# Thu, 17 Sep 2026 18:56:32 GMT
USER 1000
# Thu, 17 Sep 2026 18:56:32 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Thu, 17 Sep 2026 18:56:32 GMT
LABEL org.label-schema.build-date=2026-08-24T15:51:53+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-24T15:51:53+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Thu, 17 Sep 2026 18:56:32 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:b66f4afff961364e2b31840faeac9f4cf40a138156bc5adbd4190044ff5160c0`  
		Last Modified: Wed, 16 Sep 2026 09:31:28 GMT  
		Size: 40.7 MB (40703783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91cba429724a476f3e7a0583ce7050c7d2bafb4576497bb38ffd06baad64adb7`  
		Last Modified: Thu, 17 Sep 2026 18:57:09 GMT  
		Size: 4.8 MB (4770072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76cf08d0e43b3bc8ce8618b529c57586f4b2eb894fff70251ab2353c18c68d0`  
		Last Modified: Thu, 17 Sep 2026 18:57:17 GMT  
		Size: 480.8 MB (480806594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c6b7efd1d6c9a8f5787c100e6f3485e3efeab1060b910076e34c6e6137d2529`  
		Last Modified: Thu, 17 Sep 2026 18:57:09 GMT  
		Size: 6.4 KB (6364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c4d5c33ee4bc05821211049f818d12fcf8bc6d88e0d78b78cb0cf55c7df732e`  
		Last Modified: Thu, 17 Sep 2026 18:57:09 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f82ae3aa24786b960324d5721e07bb964f44d5d5610f68fa3eb90cb532c6ec50`  
		Last Modified: Thu, 17 Sep 2026 18:57:10 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bda3734979473398f2cbd940a3fd8379e03114e72225a529c3d4b724977ff406`  
		Last Modified: Thu, 17 Sep 2026 18:57:10 GMT  
		Size: 1.6 KB (1579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37e169f136425a6da9cc42162e5be655a7f4b7fd7ebcef034ba441d14739008`  
		Last Modified: Thu, 17 Sep 2026 18:57:10 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c564c9ba45c781e76761e4fe9850492763e61ec693eb11213d3270c9aa494a4`  
		Last Modified: Thu, 17 Sep 2026 18:57:11 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f2b2d92e5473903518db3888cef2ea6bbbd86674b928eb2d026991da30eaa2`  
		Last Modified: Thu, 17 Sep 2026 18:57:11 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.6` - unknown; unknown

```console
$ docker pull logstash@sha256:d54f25edd24a418e4bfa293b48bcc051a87bce0d53f67fea7984f3472e4f2582
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2146950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:784a0de4a6693c6ae02f29d570fe24ed5c5d5eab3fa02e549f471bde01aae9ee`

```dockerfile
```

-	Layers:
	-	`sha256:30fe7b6dd7da0d2680ded5039e19103561a08c55432272dd2d54612ecf04f292`  
		Last Modified: Thu, 17 Sep 2026 18:57:08 GMT  
		Size: 2.1 MB (2116751 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69be0939ba0ebc369a641a3d27db5b8d953662b921838b5f9693a629f2d6c0cb`  
		Last Modified: Thu, 17 Sep 2026 18:57:08 GMT  
		Size: 30.2 KB (30199 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.6` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:e6c9c27cbccac10db6c6a2f45614060f1d55201b5d97e2824a703aab547cbf83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **522.9 MB (522889357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc556764e6c81389036581ccd9abf11d1fd7e075567067d6bebcd362f4741901`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.openshift.expose-services=""
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 16 Sep 2026 08:17:25 GMT
ENV container oci
# Wed, 16 Sep 2026 08:17:25 GMT
COPY dir:247e1a1b65ffe42d0e02569b201e0a80c3d58c5012cc85d5fca29e1996ccab32 in /      
# Wed, 16 Sep 2026 08:17:25 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 16 Sep 2026 08:17:26 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 08:17:26 GMT
COPY dir:6618fcc9c9f252e47fc39914f7cb7d1d47e47d2db896a1383df6d9add39d7c22 in /usr/share/buildinfo/      
# Wed, 16 Sep 2026 08:17:26 GMT
COPY dir:6618fcc9c9f252e47fc39914f7cb7d1d47e47d2db896a1383df6d9add39d7c22 in /root/buildinfo/      
# Wed, 16 Sep 2026 08:17:26 GMT
LABEL "org.opencontainers.image.created"="2026-09-16T08:17:03Z" "org.opencontainers.image.revision"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "build-date"="2026-09-16T08:17:03Z" "architecture"="aarch64" "vcs-ref"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "vcs-type"="git" "release"="1789546276"org.opencontainers.image.created=2026-09-16T08:17:03Z,org.opencontainers.image.revision=28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee
# Thu, 17 Sep 2026 18:55:09 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 17 Sep 2026 18:55:09 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 18:55:09 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 17 Sep 2026 18:55:09 GMT
WORKDIR /usr/share
# Thu, 17 Sep 2026 18:55:13 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Thu, 17 Sep 2026 18:55:43 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.6-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.6 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Thu, 17 Sep 2026 18:55:43 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Thu, 17 Sep 2026 18:55:43 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Thu, 17 Sep 2026 18:55:43 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Thu, 17 Sep 2026 18:55:43 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Thu, 17 Sep 2026 18:55:43 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Thu, 17 Sep 2026 18:55:43 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Thu, 17 Sep 2026 18:55:43 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 18:55:43 GMT
WORKDIR /usr/share/logstash
# Thu, 17 Sep 2026 18:55:43 GMT
USER 1000
# Thu, 17 Sep 2026 18:55:43 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Thu, 17 Sep 2026 18:55:43 GMT
LABEL org.label-schema.build-date=2026-08-24T15:51:53+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-24T15:51:53+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Thu, 17 Sep 2026 18:55:43 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:36e72d37accbc857387599416b2fbab8fba8dd4b3f3b465ab05e57367cbe05fd`  
		Last Modified: Wed, 16 Sep 2026 09:33:21 GMT  
		Size: 38.8 MB (38782783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d596f8d734ece02aafcb9da954bdbaf4ba6c04dc8bcc98027c2d417f5d4874`  
		Last Modified: Thu, 17 Sep 2026 18:56:22 GMT  
		Size: 4.8 MB (4756838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c016d3639674dbb163d3683bc91f0b465c37018e0451a2f781cbb7e72f1493b`  
		Last Modified: Thu, 17 Sep 2026 18:56:32 GMT  
		Size: 479.1 MB (479084923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af377b9891cd7e96e102bfd608193ddc3f9be264af0254dd7074a82ff1110f74`  
		Last Modified: Thu, 17 Sep 2026 18:56:22 GMT  
		Size: 6.4 KB (6367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a32139e93c6136c585396e71bb6299661f7dd8d3e7ea9a8f109473cf4daf51`  
		Last Modified: Thu, 17 Sep 2026 18:56:22 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80b33fa57bfc0c1da056b6215e0c3fa81c4c7bc8c74dea899162117a487f6b3d`  
		Last Modified: Thu, 17 Sep 2026 18:56:23 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f31dd1247fce17c6f0664429bd62936ae43620737a57b7b9bb860f254f54be`  
		Last Modified: Thu, 17 Sep 2026 18:56:23 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6afa87a7ffac3da8911738363b8deebd23afe78749a4e8b79a06e8db20f665`  
		Last Modified: Thu, 17 Sep 2026 18:56:24 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9aff112db7a04da991ab684f459b1d8be632bab644e4859c6ce4274e3bf7f89`  
		Last Modified: Thu, 17 Sep 2026 18:56:25 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5857b49853f6c6a15d504d84a85314bd516a1ed5679e28b43be9f57e0bc1f382`  
		Last Modified: Thu, 17 Sep 2026 18:56:25 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.6` - unknown; unknown

```console
$ docker pull logstash@sha256:fa0ba3ddc73390071198a1f8bb30fe547e7c45a1cc160f7f9950f53087306231
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2145816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ce0c5ecdabaa8d76e38efc37572e2a43b71d6f73bdf4b2d0a61f0892f2fd2cb`

```dockerfile
```

-	Layers:
	-	`sha256:bcc459b0d43e44cf9c40cfff1843e49780671d3d65b2486c36c28549c671cba4`  
		Last Modified: Thu, 17 Sep 2026 18:56:22 GMT  
		Size: 2.1 MB (2115539 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7af06825a74f6c05c13acb6ce5b98b9686473737eab1d853beb2936f8fe9c26`  
		Last Modified: Thu, 17 Sep 2026 18:56:22 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.5.3`

```console
$ docker pull logstash@sha256:1cbdc6069245cdf12657e5d15591d46e8ba4081739e890befb277a1b796d276c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.5.3` - linux; amd64

```console
$ docker pull logstash@sha256:c03bc1a5b09af6ca8f500424c99a42a210a7e144163109eaa2887fefec8765f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **536.1 MB (536133472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f244d6c3613a28efdfa9841719006269ae51251d419ecf79f36f7c04db59d0`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.openshift.expose-services=""
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 16 Sep 2026 08:14:47 GMT
ENV container oci
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:b8d2e4702aa4e2e0f81f97ab3a96785119f9cab5f11a12e6f35f97263fc80089 in /      
# Wed, 16 Sep 2026 08:14:48 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 16 Sep 2026 08:14:48 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:0d75961e3db2326a48bbcf23c2e4ea4e05da817cf04277234a6d96480c0cf5b7 in /usr/share/buildinfo/      
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:0d75961e3db2326a48bbcf23c2e4ea4e05da817cf04277234a6d96480c0cf5b7 in /root/buildinfo/      
# Wed, 16 Sep 2026 08:14:48 GMT
LABEL "org.opencontainers.image.created"="2026-09-16T08:14:20Z" "org.opencontainers.image.revision"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "build-date"="2026-09-16T08:14:20Z" "architecture"="x86_64" "vcs-ref"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "vcs-type"="git" "release"="1789546276"org.opencontainers.image.created=2026-09-16T08:14:20Z,org.opencontainers.image.revision=28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee
# Thu, 17 Sep 2026 18:56:06 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 17 Sep 2026 18:56:06 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 18:56:06 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 17 Sep 2026 18:56:06 GMT
WORKDIR /usr/share
# Thu, 17 Sep 2026 18:56:08 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Thu, 17 Sep 2026 18:57:15 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.3-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.3 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Thu, 17 Sep 2026 18:57:15 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Thu, 17 Sep 2026 18:57:15 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Thu, 17 Sep 2026 18:57:15 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Thu, 17 Sep 2026 18:57:16 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Thu, 17 Sep 2026 18:57:16 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Thu, 17 Sep 2026 18:57:16 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Thu, 17 Sep 2026 18:57:16 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 18:57:16 GMT
WORKDIR /usr/share/logstash
# Thu, 17 Sep 2026 18:57:16 GMT
USER 1000
# Thu, 17 Sep 2026 18:57:16 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Thu, 17 Sep 2026 18:57:16 GMT
LABEL org.label-schema.build-date=2026-09-01T07:25:38+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T07:25:38+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Thu, 17 Sep 2026 18:57:16 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:b66f4afff961364e2b31840faeac9f4cf40a138156bc5adbd4190044ff5160c0`  
		Last Modified: Wed, 16 Sep 2026 09:31:28 GMT  
		Size: 40.7 MB (40703783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14799ec0ee7be95f75f25e17147aeec7f6d5454d2c58916d275f2fa615ec40a2`  
		Last Modified: Thu, 17 Sep 2026 18:57:50 GMT  
		Size: 4.8 MB (4770056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:134de1a1d0d27a2692db916661df7254ee91a356e3750e509e14f3bc57057cc2`  
		Last Modified: Thu, 17 Sep 2026 18:58:00 GMT  
		Size: 490.4 MB (490394644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beae06cbe57dbe7b7a2935ef35cc6df76ef62d24fd770c7a05990ad3d12612b3`  
		Last Modified: Thu, 17 Sep 2026 18:57:51 GMT  
		Size: 6.5 KB (6538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2566d1edce9021942d1e06f27e27554d3299ca1463983ffaadafc539aa4a5a15`  
		Last Modified: Thu, 17 Sep 2026 18:57:50 GMT  
		Size: 255.2 KB (255187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e09d253138de7a1a5db0cfe4db3c140e637c8f6d934e4501f9eda4bb906f03b`  
		Last Modified: Thu, 17 Sep 2026 18:57:51 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b704f5f9b80c85e2925dc7f08df7398d83816979e280d705ce5d2ad3b2af60`  
		Last Modified: Thu, 17 Sep 2026 18:57:51 GMT  
		Size: 1.6 KB (1579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2492c2bd7a6a190c3e26aa76a709b2149c78e99f33d9e7072bc54e67b86d751e`  
		Last Modified: Thu, 17 Sep 2026 18:57:52 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c036d84090ef6f366fbe8e3c510054b50ea9146cb0572e2f3251f014566219`  
		Last Modified: Thu, 17 Sep 2026 18:57:52 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9a8cf83c6016a39031de6c79f8d4a25bc1c76b0e3fe63a3ed8cf45d2bf79302`  
		Last Modified: Thu, 17 Sep 2026 18:57:53 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.3` - unknown; unknown

```console
$ docker pull logstash@sha256:c9b590688196c4b5f5bbafa2d5fbb0a5dcaa8980d12bd99b2a3f09aba3c8016d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:797619cb7e1bda619420ce17891fd7197e1b4ac8af28b3288368949e98d96cb9`

```dockerfile
```

-	Layers:
	-	`sha256:8f561c658bcecb414aac4aae70878a62f4b1ed530d54fe37607479e8f496565e`  
		Last Modified: Thu, 17 Sep 2026 18:57:50 GMT  
		Size: 2.1 MB (2144055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78cace683608cf7dc632ec19208c0af2d66c3ce9146b4b6f5917b198bfc43048`  
		Last Modified: Thu, 17 Sep 2026 18:57:49 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.5.3` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:1e87e93aabebd129bf15a81128e82b78e8a300ce8db3b02a45dd84a7a5c6070f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **532.5 MB (532462739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7582ee3f05ad00d496fe846ac1de544d140d7acee268a0b5ea844296111526d`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 16 Sep 2026 08:17:24 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.openshift.expose-services=""
# Wed, 16 Sep 2026 08:17:25 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 16 Sep 2026 08:17:25 GMT
ENV container oci
# Wed, 16 Sep 2026 08:17:25 GMT
COPY dir:247e1a1b65ffe42d0e02569b201e0a80c3d58c5012cc85d5fca29e1996ccab32 in /      
# Wed, 16 Sep 2026 08:17:25 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 16 Sep 2026 08:17:26 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 08:17:26 GMT
COPY dir:6618fcc9c9f252e47fc39914f7cb7d1d47e47d2db896a1383df6d9add39d7c22 in /usr/share/buildinfo/      
# Wed, 16 Sep 2026 08:17:26 GMT
COPY dir:6618fcc9c9f252e47fc39914f7cb7d1d47e47d2db896a1383df6d9add39d7c22 in /root/buildinfo/      
# Wed, 16 Sep 2026 08:17:26 GMT
LABEL "org.opencontainers.image.created"="2026-09-16T08:17:03Z" "org.opencontainers.image.revision"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "build-date"="2026-09-16T08:17:03Z" "architecture"="aarch64" "vcs-ref"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "vcs-type"="git" "release"="1789546276"org.opencontainers.image.created=2026-09-16T08:17:03Z,org.opencontainers.image.revision=28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee
# Thu, 17 Sep 2026 18:55:14 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 17 Sep 2026 18:55:14 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 18:55:14 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 17 Sep 2026 18:55:14 GMT
WORKDIR /usr/share
# Thu, 17 Sep 2026 18:55:16 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Thu, 17 Sep 2026 18:56:22 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.3-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.3 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Thu, 17 Sep 2026 18:56:22 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Thu, 17 Sep 2026 18:56:22 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Thu, 17 Sep 2026 18:56:22 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Thu, 17 Sep 2026 18:56:23 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Thu, 17 Sep 2026 18:56:23 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Thu, 17 Sep 2026 18:56:23 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Thu, 17 Sep 2026 18:56:23 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 18:56:23 GMT
WORKDIR /usr/share/logstash
# Thu, 17 Sep 2026 18:56:23 GMT
USER 1000
# Thu, 17 Sep 2026 18:56:23 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Thu, 17 Sep 2026 18:56:23 GMT
LABEL org.label-schema.build-date=2026-09-01T07:25:38+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T07:25:38+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Thu, 17 Sep 2026 18:56:23 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:36e72d37accbc857387599416b2fbab8fba8dd4b3f3b465ab05e57367cbe05fd`  
		Last Modified: Wed, 16 Sep 2026 09:33:21 GMT  
		Size: 38.8 MB (38782783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:501cc89d1e4211c892593e08ca39b0c5cde011dc1c3ba1869096e7d1b08f8f05`  
		Last Modified: Thu, 17 Sep 2026 18:57:03 GMT  
		Size: 4.8 MB (4756834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c63079ea5d2b4b6734e1920b89285551e5172a51142a2a383dbd4c0dec788f2`  
		Last Modified: Thu, 17 Sep 2026 18:57:11 GMT  
		Size: 488.7 MB (488658125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a37634796c12dbab2da2f1303dbe11e95472391184af87917dbd7a7f62814e6`  
		Last Modified: Thu, 17 Sep 2026 18:57:03 GMT  
		Size: 6.5 KB (6540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e7bc90811b5281eebc17a65a7fad81fbd852e3db4d3bd389dc32ddeddf46556`  
		Last Modified: Thu, 17 Sep 2026 18:57:03 GMT  
		Size: 255.2 KB (255186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b72ad21fdb287adb50c03cd2ac37888cd2b19e0c4e82f8ada9b63a89e21da77e`  
		Last Modified: Thu, 17 Sep 2026 18:57:04 GMT  
		Size: 358.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271ee218895094525ed1fef0822e26c0bded024ee7d42601747f492c04943257`  
		Last Modified: Thu, 17 Sep 2026 18:57:04 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d9b78ce16c9201a62b0911a48b726312c5c504f1c13552ac5c16d296161cb3`  
		Last Modified: Thu, 17 Sep 2026 18:57:04 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac95da13d599b778ee3672d88739d51d50623efc732f07d4f9456f13e22a7be8`  
		Last Modified: Thu, 17 Sep 2026 18:57:05 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f2a08376bbd1e074547a5772c9b5692de4ece1c7051ac1930739975e819cb5`  
		Last Modified: Thu, 17 Sep 2026 18:57:05 GMT  
		Size: 716.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.3` - unknown; unknown

```console
$ docker pull logstash@sha256:985a3f74e4c1f4292008f7f39f0f9ef9ba2a4c2310aceb46d67ad88db5585e4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2173120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e004dac5e52275ef097cd95e61312fb4fa14825d22042e688afce91eeec02da9`

```dockerfile
```

-	Layers:
	-	`sha256:25002d17fafcb598294c677827950e767b66493eb6c4ec97dc8eb9ebb181e5d5`  
		Last Modified: Thu, 17 Sep 2026 18:57:03 GMT  
		Size: 2.1 MB (2142843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ed03ee698014d871114e986841695a8daec6e2ea69d84211af7721d479e8d1b`  
		Last Modified: Thu, 17 Sep 2026 18:57:02 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json
