<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:8.19.18`](#logstash81918)
-	[`logstash:9.3.7`](#logstash937)
-	[`logstash:9.4.3`](#logstash943)

## `logstash:8.19.18`

```console
$ docker pull logstash@sha256:d38b3758fd6a3ded520e641ad2339fccf5061e08e681e654765608dae23fbffa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:8.19.18` - linux; amd64

```console
$ docker pull logstash@sha256:c157f36f7accbe27e241052b428010f95eec60ed54c4f2194ee5bce8c65d0c1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **540.9 MB (540898087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751af4e6aef6728bcc03392c91743bc80cd882372760593abbc6a74e4b2991c5`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 20 May 2026 01:37:19 GMT
ARG RELEASE
# Wed, 20 May 2026 01:37:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Wed, 20 May 2026 01:37:19 GMT
LABEL org.opencontainers.image.version=24.04
# Wed, 20 May 2026 01:37:21 GMT
ADD file:46ac5b8ee4c64ad9ebe840abd5619f571a617ac19483764d47d0eeba7907934f in / 
# Wed, 20 May 2026 01:37:22 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 23:26:35 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Tue, 30 Jun 2026 23:26:35 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Tue, 30 Jun 2026 23:27:16 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.18-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.18 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 30 Jun 2026 23:27:16 GMT
WORKDIR /usr/share/logstash
# Tue, 30 Jun 2026 23:27:16 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 30 Jun 2026 23:27:16 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Jun 2026 23:27:16 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Tue, 30 Jun 2026 23:27:16 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Tue, 30 Jun 2026 23:27:16 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Tue, 30 Jun 2026 23:27:16 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Tue, 30 Jun 2026 23:27:16 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Tue, 30 Jun 2026 23:27:16 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 30 Jun 2026 23:27:16 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 30 Jun 2026 23:27:16 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 30 Jun 2026 23:27:16 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 30 Jun 2026 23:27:16 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Tue, 30 Jun 2026 23:27:16 GMT
USER 1000
# Tue, 30 Jun 2026 23:27:16 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 30 Jun 2026 23:27:16 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.18 org.opencontainers.image.version=8.19.18 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-06-24T20:36:37+00:00 org.opencontainers.image.created=2026-06-24T20:36:37+00:00
# Tue, 30 Jun 2026 23:27:16 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:cb259a83ac3dd9fea0b394df41df2b298adf0df938fef5999475af18a751c257`  
		Last Modified: Wed, 20 May 2026 02:15:22 GMT  
		Size: 29.7 MB (29732805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f633fd10fb757524022e1233bbd3b03acc62e3baada9a963fc72f42a62fefe2f`  
		Last Modified: Tue, 30 Jun 2026 23:27:57 GMT  
		Size: 52.9 MB (52852117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9fc69995895f6777e43162332f32622a3e8a58382426ec3d975069963d19797`  
		Last Modified: Tue, 30 Jun 2026 23:27:54 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112857d800b143c7d4ca37fec1494eae693b60a451b19c26dc1a53991f69300d`  
		Last Modified: Tue, 30 Jun 2026 23:28:08 GMT  
		Size: 458.0 MB (458045426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a036a48c56d55986fec5bb930eb6b2b52097313c4739f9cafecc93a74994fec`  
		Last Modified: Tue, 30 Jun 2026 23:27:54 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21994aa11891fb22ac3f649d2d5de16cd60791f9a0c1161df841f72747186164`  
		Last Modified: Tue, 30 Jun 2026 23:27:56 GMT  
		Size: 1.6 KB (1581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23d661e4ef87d203041e2a53fe712ce04a0935b68b7f89bb5384c75593c400c`  
		Last Modified: Tue, 30 Jun 2026 23:27:56 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9814ac2c54a4d030478c233cb0affc93fb271e3023017842f7f1fa77d7d41e7`  
		Last Modified: Tue, 30 Jun 2026 23:27:57 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5454117059650536b10b9ce115d976362f0f50c81c64d21cf7a9945b95a6c23`  
		Last Modified: Tue, 30 Jun 2026 23:27:58 GMT  
		Size: 6.3 KB (6296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a031df7f157982a190f31cb804bb322982d06fbac42b223dcf4b18b0929e5ff`  
		Last Modified: Tue, 30 Jun 2026 23:27:59 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3243066a69c4eb2acc5d6aea43d9554916844ae957698decbf9ebd2644c3ed44`  
		Last Modified: Tue, 30 Jun 2026 23:27:59 GMT  
		Size: 356.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9afbc67dc90794c707269e3435fe865bffd7a981ba9f4f1b72c978279905772e`  
		Last Modified: Tue, 30 Jun 2026 23:27:59 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.18` - unknown; unknown

```console
$ docker pull logstash@sha256:bb701a23f4e94821021fc1ff8f49666025ec07bc80689444e948d57de2085430
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da1b68eca5dcedc3680129ef091ec0a0bee44ffcdb273a8e4390c80605f1a26d`

```dockerfile
```

-	Layers:
	-	`sha256:f7f94cb343baf83549f8c1b6c54e4311628f4e4d5e5992fd3df405c5e67920b2`  
		Last Modified: Tue, 30 Jun 2026 23:27:55 GMT  
		Size: 3.7 MB (3678260 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc42b3f8024caf434ea89a640c10dcce9f6b484b549f010f8da88af9792a7914`  
		Last Modified: Tue, 30 Jun 2026 23:27:54 GMT  
		Size: 35.8 KB (35845 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:8.19.18` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:a9d3c1cca8c84aaed6b4bd2bfb727c4bfc32a132646b2a42f1705e4ca605f0ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **539.2 MB (539194133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae101def25f733a98e75229836dd5377bf9de64a4fee80cbe462209a02c5883`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 20 May 2026 01:37:31 GMT
ARG RELEASE
# Wed, 20 May 2026 01:37:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Wed, 20 May 2026 01:37:31 GMT
LABEL org.opencontainers.image.version=24.04
# Wed, 20 May 2026 01:37:34 GMT
ADD file:08e1f650999ca51d9b63c782d658d9485c64263966d69dc423a3b64a16449f00 in / 
# Wed, 20 May 2026 01:37:34 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 23:26:15 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Tue, 30 Jun 2026 23:26:15 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Tue, 30 Jun 2026 23:26:35 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.18-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.18 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 30 Jun 2026 23:26:35 GMT
WORKDIR /usr/share/logstash
# Tue, 30 Jun 2026 23:26:35 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 30 Jun 2026 23:26:35 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Jun 2026 23:26:35 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Tue, 30 Jun 2026 23:26:35 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Tue, 30 Jun 2026 23:26:35 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Tue, 30 Jun 2026 23:26:35 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Tue, 30 Jun 2026 23:26:35 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Tue, 30 Jun 2026 23:26:35 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 30 Jun 2026 23:26:35 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 30 Jun 2026 23:26:35 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 30 Jun 2026 23:26:35 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 30 Jun 2026 23:26:36 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Tue, 30 Jun 2026 23:26:36 GMT
USER 1000
# Tue, 30 Jun 2026 23:26:36 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 30 Jun 2026 23:26:36 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.18 org.opencontainers.image.version=8.19.18 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-06-24T20:36:37+00:00 org.opencontainers.image.created=2026-06-24T20:36:37+00:00
# Tue, 30 Jun 2026 23:26:36 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:fff3795b437199a0b714aadba6fb2c251d7da853c3e257d3fed1d2c8d0f05158`  
		Last Modified: Wed, 20 May 2026 02:15:29 GMT  
		Size: 28.9 MB (28876406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:157c785aeaf419dbb7913fb1b49c412377fb5767ff686c90e1460163571b607a`  
		Last Modified: Tue, 30 Jun 2026 23:27:17 GMT  
		Size: 53.7 MB (53701363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:285e4b9c797dbaf2ee856b715a3a6bb1ffc3920290962060f5ed752156bccf38`  
		Last Modified: Tue, 30 Jun 2026 23:27:15 GMT  
		Size: 1.2 KB (1223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77fea4ea0d9aaafe6b7dc60e07b784da6bb4679fd97580020b660c348f6043d2`  
		Last Modified: Tue, 30 Jun 2026 23:27:25 GMT  
		Size: 456.3 MB (456348622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9750c65570475079967680ead39a892b8b97793c3a03ed98ed0e3cd37726164`  
		Last Modified: Tue, 30 Jun 2026 23:27:15 GMT  
		Size: 280.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f84f513d80452208b99f9894381e145bc04a37628ffc2e7c5c0126ac2b4e99`  
		Last Modified: Tue, 30 Jun 2026 23:27:16 GMT  
		Size: 1.6 KB (1583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3061b68fd46fe2f04c5e78b8afb29dafc45208b21b9a4bc437120c60d97323e4`  
		Last Modified: Tue, 30 Jun 2026 23:27:16 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:451bcea8a2b00ab3868eba7126be93c425139eed60f871a0d936303d1bbd2aed`  
		Last Modified: Tue, 30 Jun 2026 23:27:17 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d3237288954aa60f5393a44d13619a51aabadc783c8518418d6b721acd764d`  
		Last Modified: Tue, 30 Jun 2026 23:27:17 GMT  
		Size: 6.3 KB (6296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75eb6649877d0e109389321689200d4125b21a6eded4c7c6f2c2acb7224ccdaf`  
		Last Modified: Tue, 30 Jun 2026 23:27:19 GMT  
		Size: 255.2 KB (255183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a43b0084fc256b15282768040de61adf8a7f3c72f45b5e84e5a78e0142282729`  
		Last Modified: Tue, 30 Jun 2026 23:27:19 GMT  
		Size: 356.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:977726725e9ce4abeedd9324af5367170ea2b917082d82aa0ac2e2f1d8e63a73`  
		Last Modified: Tue, 30 Jun 2026 23:27:19 GMT  
		Size: 714.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.18` - unknown; unknown

```console
$ docker pull logstash@sha256:f5245261a23bd0fed4d3f213ff4958d7f2655c0f30b00030a980bc7178a9d170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5e505fdcbe8370c7be70f3f3dbc60112ea7850b5cb458c533f1f352ecc7acbd`

```dockerfile
```

-	Layers:
	-	`sha256:85dcb3bd6b6a45237a898ae715555b9db3d5e9c641a90c3c5af4b96907f4eafc`  
		Last Modified: Tue, 30 Jun 2026 23:27:15 GMT  
		Size: 3.7 MB (3678685 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31862801d180672e8f7f2d1be09250db8a9772e22f3d957ac80c31a7f4c4ea9b`  
		Last Modified: Tue, 30 Jun 2026 23:27:15 GMT  
		Size: 36.0 KB (35973 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.3.7`

```console
$ docker pull logstash@sha256:57ac1a16bb8aaae1c34372c974347c5ddcd5a98fb1e7841927a26c575c2087b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.3.7` - linux; amd64

```console
$ docker pull logstash@sha256:7490e6f448a49aee8bf09603194b7a3dd66aea1a54e588295386d7253a94bf75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **518.2 MB (518201289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f059a6e0eff21b669d148ffafdc989eb7873b78078003e8fdadf746eafd45e6`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 30 Jun 2026 05:29:32 GMT
ENV container oci
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:efac128f83583a6247aea2e1de3f354267a91fa9afbb47889a2bebf40b22f4af in /      
# Tue, 30 Jun 2026 05:29:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 30 Jun 2026 05:29:33 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:041b210b17febe96db30cba4f2b22eb7e05f976482f5a304098344e035b1cad8 in /usr/share/buildinfo/      
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:041b210b17febe96db30cba4f2b22eb7e05f976482f5a304098344e035b1cad8 in /root/buildinfo/      
# Tue, 30 Jun 2026 05:29:33 GMT
LABEL "org.opencontainers.image.created"="2026-06-30T05:29:15Z" "org.opencontainers.image.revision"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "build-date"="2026-06-30T05:29:15Z" "architecture"="x86_64" "vcs-ref"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "vcs-type"="git" "release"="1782797275"org.opencontainers.image.created=2026-06-30T05:29:15Z,org.opencontainers.image.revision=9d52f7ccf5e43749249b95c398cdcb9020bc399d
# Wed, 01 Jul 2026 00:23:03 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 01 Jul 2026 00:23:03 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:23:03 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 01 Jul 2026 00:23:03 GMT
WORKDIR /usr/share
# Wed, 01 Jul 2026 00:23:05 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.3.7-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.3.7 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
WORKDIR /usr/share/logstash
# Wed, 01 Jul 2026 00:23:59 GMT
USER 1000
# Wed, 01 Jul 2026 00:23:59 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 01 Jul 2026 00:23:59 GMT
LABEL org.label-schema.build-date=2026-06-24T18:18:56+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.3.7 org.opencontainers.image.created=2026-06-24T18:18:56+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.7 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 01 Jul 2026 00:23:59 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:8af57f051b373375a1be8f892172089259ad624ed8452291226c539055e60228`  
		Last Modified: Tue, 30 Jun 2026 06:57:41 GMT  
		Size: 40.7 MB (40689427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b455ae980692892b3e0efe527d6e822d812bc4d479782847a5b693d67aece260`  
		Last Modified: Wed, 01 Jul 2026 00:24:37 GMT  
		Size: 4.8 MB (4774137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fbf80d5c5c7a2092996282f1468a030a91c53d8b2e992e17b28e8aaff55c872`  
		Last Modified: Wed, 01 Jul 2026 00:24:48 GMT  
		Size: 472.5 MB (472472981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc81b43fba389121c17be55fd8ac23906e46c186f96bd3263733dafe6ef31589`  
		Last Modified: Wed, 01 Jul 2026 00:24:37 GMT  
		Size: 6.3 KB (6295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b7bed0dd74cc13600f5bded195fca1001a109ccad8bdfda40c585d9ce1380d`  
		Last Modified: Wed, 01 Jul 2026 00:24:37 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9db0f16ffc7775440a1dcf13f11be14131b2a485d41756d6271f6725b74b4799`  
		Last Modified: Wed, 01 Jul 2026 00:24:38 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8235bec4b55a9ce150494b74885628d678a700cf2305e8122ff939ef8de82c6`  
		Last Modified: Wed, 01 Jul 2026 00:24:38 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc343e6ce2003e3f0006b8e83d640ffa276fd1bb18aa535866aa3288e4799dc`  
		Last Modified: Wed, 01 Jul 2026 00:24:38 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff41270b8a94f932c443e850353cf228b9f5903d4e94d05f8e1cf4620d19c93d`  
		Last Modified: Wed, 01 Jul 2026 00:24:39 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49328664d1c73df48f04165f650d757037374dc48a4287dc79420a3b12714085`  
		Last Modified: Wed, 01 Jul 2026 00:24:40 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.3.7` - unknown; unknown

```console
$ docker pull logstash@sha256:5e1934369f9b1dbc5313e8d0b12346fdde8cdd48712103fc1507e55cc57be5a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2139907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4207115bea31c3642e7cbd721a00c1470000a22504da4c642f5c921cca62c5aa`

```dockerfile
```

-	Layers:
	-	`sha256:c6473d0a5a477b5292d2d71732c4047a197fbba383c533f38a853d04efe5ee56`  
		Last Modified: Wed, 01 Jul 2026 00:24:37 GMT  
		Size: 2.1 MB (2109708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b72e7539e4a840e159f124312cf9f2df4b826a8374ec15c56bad085c91666731`  
		Last Modified: Wed, 01 Jul 2026 00:24:36 GMT  
		Size: 30.2 KB (30199 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.3.7` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:93333b897b5a715960282eb9a9f0e07bd150096a9e2a4374a0ad92f54adaf0b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **514.6 MB (514634619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f928af6ae1ac872279a0696a62c8be3a68cee920bccbf4d7fe74260a38cafdcc`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 30 Jun 2026 05:31:32 GMT
ENV container oci
# Tue, 30 Jun 2026 05:31:33 GMT
COPY dir:33d9a0597e0a229533d40301027624dd670560f4cec941a76f227790e1dd51ed in /      
# Tue, 30 Jun 2026 05:31:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 30 Jun 2026 05:31:33 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 05:31:33 GMT
COPY dir:a896e70442063b6b2aecdf0aac7a09d8b18a0772ea7b0aee60c2830a8ad0b28a in /usr/share/buildinfo/      
# Tue, 30 Jun 2026 05:31:33 GMT
COPY dir:a896e70442063b6b2aecdf0aac7a09d8b18a0772ea7b0aee60c2830a8ad0b28a in /root/buildinfo/      
# Tue, 30 Jun 2026 05:31:34 GMT
LABEL "org.opencontainers.image.created"="2026-06-30T05:31:10Z" "org.opencontainers.image.revision"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "build-date"="2026-06-30T05:31:10Z" "architecture"="aarch64" "vcs-ref"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "vcs-type"="git" "release"="1782797275"org.opencontainers.image.created=2026-06-30T05:31:10Z,org.opencontainers.image.revision=9d52f7ccf5e43749249b95c398cdcb9020bc399d
# Wed, 01 Jul 2026 00:14:30 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 01 Jul 2026 00:14:30 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:14:30 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 01 Jul 2026 00:14:30 GMT
WORKDIR /usr/share
# Wed, 01 Jul 2026 00:14:32 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:15:04 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.3.7-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.3.7 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 01 Jul 2026 00:15:04 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 01 Jul 2026 00:15:04 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 01 Jul 2026 00:15:04 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 01 Jul 2026 00:15:04 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 01 Jul 2026 00:15:04 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 01 Jul 2026 00:15:04 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 01 Jul 2026 00:15:04 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 01 Jul 2026 00:15:04 GMT
WORKDIR /usr/share/logstash
# Wed, 01 Jul 2026 00:15:04 GMT
USER 1000
# Wed, 01 Jul 2026 00:15:04 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 01 Jul 2026 00:15:04 GMT
LABEL org.label-schema.build-date=2026-06-24T18:18:56+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.3.7 org.opencontainers.image.created=2026-06-24T18:18:56+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.7 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 01 Jul 2026 00:15:04 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:96c16ad0505847764761c5c4d0a82cd8a619f3e93c57f6a4b081cb9d4d0dd3e7`  
		Last Modified: Tue, 30 Jun 2026 06:59:10 GMT  
		Size: 38.8 MB (38848656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b87023e8d623481f8fd36b3793b2e3a3838c730e65d9382621bfde252b35e2`  
		Last Modified: Wed, 01 Jul 2026 00:15:43 GMT  
		Size: 4.8 MB (4758724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2a28985141a392993a61d7a8dd5c286fa4d09630641097b50efdf926dc8b13b`  
		Last Modified: Wed, 01 Jul 2026 00:15:53 GMT  
		Size: 470.8 MB (470762490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:163bd7a5d393b76e46fd3f4a34f043e6347acc0665bdbda8b1af8c6519863051`  
		Last Modified: Wed, 01 Jul 2026 00:15:43 GMT  
		Size: 6.3 KB (6300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e697e8e2f6104c0362db5a98f617874fcf8ffae3568acd4043b33d7042198ade`  
		Last Modified: Wed, 01 Jul 2026 00:15:43 GMT  
		Size: 255.2 KB (255189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:768ef9cc9ac146d21b1fd500449107dca147b65b0c9a1e217212a6a3595a42b2`  
		Last Modified: Wed, 01 Jul 2026 00:15:44 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17df8ed4b75a5efac6106bef2715dbaeb7095eb53b13368c5224a7b859d039a6`  
		Last Modified: Wed, 01 Jul 2026 00:15:45 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b1fe5b6a635d4e39786f27cca9a9d28b1dec5c1996c72f7a601bbfa01949516`  
		Last Modified: Wed, 01 Jul 2026 00:15:45 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a638944cb7ae9e1b9ef2aea4884c657404d4386af80c19bed70758d517d46031`  
		Last Modified: Wed, 01 Jul 2026 00:15:46 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c562910cf599f3b616007046cb6d6338a4846fee584cf52acd36275fa7c1b4b4`  
		Last Modified: Wed, 01 Jul 2026 00:15:46 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.3.7` - unknown; unknown

```console
$ docker pull logstash@sha256:9d722ef25f6d64006f05a5570260cb092498f0b5fe5fe78ee5c7ae66067a9c79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2a69d6a09fac8105609db8f644fc18df12ea42c0240415297434e4dad86aca`

```dockerfile
```

-	Layers:
	-	`sha256:c6388bdc31fa69cdcc340cdb5b6bad310d4f37466ec8ff1910a9df65b771fd79`  
		Last Modified: Wed, 01 Jul 2026 00:15:43 GMT  
		Size: 2.1 MB (2108496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d65dbcdd25b5b34c3590103d7f5851297a0c99a510511dcbf0b16839b0d3683`  
		Last Modified: Wed, 01 Jul 2026 00:15:43 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.4.3`

```console
$ docker pull logstash@sha256:f657cab884b79f8ee01f5aae0ffb9f04feae9608954afa289d58b4f769cfdfe1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.3` - linux; amd64

```console
$ docker pull logstash@sha256:0042814ca5e7e27ff67918aee2a5700aecf7b85d37c6ec6986e7f1d4991f4b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **524.6 MB (524557075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeb4f04a081fcc5cc80a24ac8561357e86e7a9190dc8fbb3ca9ee5cd8a9b90bb`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 30 Jun 2026 05:29:32 GMT
ENV container oci
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:efac128f83583a6247aea2e1de3f354267a91fa9afbb47889a2bebf40b22f4af in /      
# Tue, 30 Jun 2026 05:29:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 30 Jun 2026 05:29:33 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:041b210b17febe96db30cba4f2b22eb7e05f976482f5a304098344e035b1cad8 in /usr/share/buildinfo/      
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:041b210b17febe96db30cba4f2b22eb7e05f976482f5a304098344e035b1cad8 in /root/buildinfo/      
# Tue, 30 Jun 2026 05:29:33 GMT
LABEL "org.opencontainers.image.created"="2026-06-30T05:29:15Z" "org.opencontainers.image.revision"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "build-date"="2026-06-30T05:29:15Z" "architecture"="x86_64" "vcs-ref"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "vcs-type"="git" "release"="1782797275"org.opencontainers.image.created=2026-06-30T05:29:15Z,org.opencontainers.image.revision=9d52f7ccf5e43749249b95c398cdcb9020bc399d
# Wed, 01 Jul 2026 00:23:03 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 01 Jul 2026 00:23:03 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:23:03 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 01 Jul 2026 00:23:03 GMT
WORKDIR /usr/share
# Wed, 01 Jul 2026 00:23:05 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.3-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.3 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 01 Jul 2026 00:23:59 GMT
WORKDIR /usr/share/logstash
# Wed, 01 Jul 2026 00:23:59 GMT
USER 1000
# Wed, 01 Jul 2026 00:23:59 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 01 Jul 2026 00:23:59 GMT
LABEL org.label-schema.build-date=2026-06-16T22:44:15+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.3 org.opencontainers.image.created=2026-06-16T22:44:15+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.3 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 01 Jul 2026 00:23:59 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:8af57f051b373375a1be8f892172089259ad624ed8452291226c539055e60228`  
		Last Modified: Tue, 30 Jun 2026 06:57:41 GMT  
		Size: 40.7 MB (40689427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe08bb4a3c12882f3b656607a4bb71c306791f67add973771ddc6a8763dc1310`  
		Last Modified: Wed, 01 Jul 2026 00:24:34 GMT  
		Size: 4.8 MB (4774107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032dd162b6ce2a8390d4e8e5d1641b524a0e83f26179e2f838fa70e6662b5fcc`  
		Last Modified: Wed, 01 Jul 2026 00:24:44 GMT  
		Size: 478.8 MB (478828724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65edcc7d06b21d923caa9b303ce3b02099d6d0f8401dd20fa0937321fa212eb6`  
		Last Modified: Wed, 01 Jul 2026 00:24:34 GMT  
		Size: 6.4 KB (6367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c796229bd25ae061007c787c6db937ee82779fe4c6b0d4f238c5d38c8debf0e`  
		Last Modified: Wed, 01 Jul 2026 00:24:34 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b58fe7be1406a005bb3715946cd2428746ccebb6ca2636a91bd667c092283aa8`  
		Last Modified: Wed, 01 Jul 2026 00:24:35 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:047cd934d7355879e794526cf3bc84db830ecd1740785b3833abadbb5a20ff97`  
		Last Modified: Wed, 01 Jul 2026 00:24:36 GMT  
		Size: 1.6 KB (1579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed596c03fc6cb043bcd607cb6efc47da60a093728e24756b0f2ff98ff7061d15`  
		Last Modified: Wed, 01 Jul 2026 00:24:36 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b884d1263c111f8e5c8492614c9ec7e94d47408c49003040194ab8d2e6d73d`  
		Last Modified: Wed, 01 Jul 2026 00:24:37 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd2c455a3d53f00ef4a5e33294c45e38696d5cec19cdf88a3860b17eb19aa40`  
		Last Modified: Wed, 01 Jul 2026 00:24:37 GMT  
		Size: 713.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.3` - unknown; unknown

```console
$ docker pull logstash@sha256:4ef721fd60dcbc88d0f496e940fb3df2080b30262eae48e13aa512f60fa70e7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2146417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57a2189a8098f7054c1665b5a2ba7cce64fbc1f76d20d15ba8d4ad8c335dc2cb`

```dockerfile
```

-	Layers:
	-	`sha256:223d7751792dc7470e14d6c7ee68e73362bfb56d63026a793219c00c14ed28a3`  
		Last Modified: Wed, 01 Jul 2026 00:24:34 GMT  
		Size: 2.1 MB (2116217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2c8a92102e3cbc609439476b9922ad4f77845130b6f8088b0ace7861c251b0e`  
		Last Modified: Wed, 01 Jul 2026 00:24:34 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.3` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:706c063d523a756e9928268642a919a934a605673c72b2ae98fa4fabaaef525b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **521.0 MB (520984208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2764f8381c3f2bd3cece9e7df89096a8d5e47e30da695ad7f4f2a412b3ec4963`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 30 Jun 2026 05:31:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 30 Jun 2026 05:31:32 GMT
ENV container oci
# Tue, 30 Jun 2026 05:31:33 GMT
COPY dir:33d9a0597e0a229533d40301027624dd670560f4cec941a76f227790e1dd51ed in /      
# Tue, 30 Jun 2026 05:31:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 30 Jun 2026 05:31:33 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 05:31:33 GMT
COPY dir:a896e70442063b6b2aecdf0aac7a09d8b18a0772ea7b0aee60c2830a8ad0b28a in /usr/share/buildinfo/      
# Tue, 30 Jun 2026 05:31:33 GMT
COPY dir:a896e70442063b6b2aecdf0aac7a09d8b18a0772ea7b0aee60c2830a8ad0b28a in /root/buildinfo/      
# Tue, 30 Jun 2026 05:31:34 GMT
LABEL "org.opencontainers.image.created"="2026-06-30T05:31:10Z" "org.opencontainers.image.revision"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "build-date"="2026-06-30T05:31:10Z" "architecture"="aarch64" "vcs-ref"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "vcs-type"="git" "release"="1782797275"org.opencontainers.image.created=2026-06-30T05:31:10Z,org.opencontainers.image.revision=9d52f7ccf5e43749249b95c398cdcb9020bc399d
# Wed, 01 Jul 2026 00:15:46 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 01 Jul 2026 00:15:46 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Jul 2026 00:15:46 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 01 Jul 2026 00:15:46 GMT
WORKDIR /usr/share
# Wed, 01 Jul 2026 00:15:48 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 01 Jul 2026 00:16:44 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.3-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.3 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 01 Jul 2026 00:16:44 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 01 Jul 2026 00:16:44 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 01 Jul 2026 00:16:44 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 01 Jul 2026 00:16:44 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 01 Jul 2026 00:16:44 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 01 Jul 2026 00:16:44 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 01 Jul 2026 00:16:44 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 01 Jul 2026 00:16:44 GMT
WORKDIR /usr/share/logstash
# Wed, 01 Jul 2026 00:16:44 GMT
USER 1000
# Wed, 01 Jul 2026 00:16:44 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 01 Jul 2026 00:16:44 GMT
LABEL org.label-schema.build-date=2026-06-16T22:44:15+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.3 org.opencontainers.image.created=2026-06-16T22:44:15+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.3 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 01 Jul 2026 00:16:44 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:96c16ad0505847764761c5c4d0a82cd8a619f3e93c57f6a4b081cb9d4d0dd3e7`  
		Last Modified: Tue, 30 Jun 2026 06:59:10 GMT  
		Size: 38.8 MB (38848656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acf980fe7d52063db3a2998140be9dc8aa4ca0c804fc6b02f97b4e46226954b`  
		Last Modified: Wed, 01 Jul 2026 00:17:24 GMT  
		Size: 4.8 MB (4758748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d437449610f1dad204f4902639672ccd8821f55e479283064c15dbabf4e715b1`  
		Last Modified: Wed, 01 Jul 2026 00:17:36 GMT  
		Size: 477.1 MB (477112003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:685a6c0c8f764358257ad8250ae67d9cb5a72086139f68a21ebd8e397f13aa2a`  
		Last Modified: Wed, 01 Jul 2026 00:17:24 GMT  
		Size: 6.4 KB (6364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4769b3fd440549d2a3ca6edf3a8980d57d456885c68fb5ff82ac9b0ce33475e9`  
		Last Modified: Wed, 01 Jul 2026 00:17:24 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11e1ba677e22e6a8e5d872187f068d67e2311e55f6a35a360ffb2722fa29e789`  
		Last Modified: Wed, 01 Jul 2026 00:17:26 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70517f254b4fd86629dcb4317008e40703fca0f9d07468659896a8dcfb03416d`  
		Last Modified: Wed, 01 Jul 2026 00:17:25 GMT  
		Size: 1.6 KB (1574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379d2a85e62fd63cd5575b089e0adc2a37523b88aa125e643d75f6c832bb25a0`  
		Last Modified: Wed, 01 Jul 2026 00:17:26 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b125ab07d1cd030d8b294ed0e0e52b48fadf25474bb76aa1cd619f5cddea92`  
		Last Modified: Wed, 01 Jul 2026 00:17:27 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b640bf5a6bc8295ec99b5aa9cc26df997911c5a4539a46a108c26a4e1e7dce01`  
		Last Modified: Wed, 01 Jul 2026 00:17:27 GMT  
		Size: 710.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.3` - unknown; unknown

```console
$ docker pull logstash@sha256:1e50856fc471b8e868efa243b8ed849a88ac0a7e1ad86c62f9cb250205683af4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2145281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:462970fa95fff1a75c51a4d0f07639f40ac6a9b82290d5eabb37321e7d3619ea`

```dockerfile
```

-	Layers:
	-	`sha256:abd31346da2736ff8f1b8dd9f6ad1b6b0b90e441bd6f82ed7e3e23c8fbceea8f`  
		Last Modified: Wed, 01 Jul 2026 00:17:24 GMT  
		Size: 2.1 MB (2115005 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7aa419c74ed3007763b6b6547957845464c8fbd072ebc33e48488fba15cbca41`  
		Last Modified: Wed, 01 Jul 2026 00:17:24 GMT  
		Size: 30.3 KB (30276 bytes)  
		MIME: application/vnd.in-toto+json
