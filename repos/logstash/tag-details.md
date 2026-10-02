<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:8.19.22`](#logstash81922)
-	[`logstash:9.4.6`](#logstash946)
-	[`logstash:9.5.3`](#logstash953)

## `logstash:8.19.22`

```console
$ docker pull logstash@sha256:29f80dc0033d0fd3970fc0fd5432550429c2ed28109a49e4e7cd9b67a9998c8f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:8.19.22` - linux; amd64

```console
$ docker pull logstash@sha256:b0b98e22e6c4717f81680317d3e44fce87eae2c6a820e43a2fcf3cf6987e883f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.3 MB (531325635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:018bd2888820dd42a81181ef06cad007eb7a3a5504d72ee2549c519ebdd51303`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:30:39 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Fri, 02 Oct 2026 01:30:39 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Fri, 02 Oct 2026 01:31:24 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.22-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.22 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Fri, 02 Oct 2026 01:31:24 GMT
WORKDIR /usr/share/logstash
# Fri, 02 Oct 2026 01:31:24 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 02 Oct 2026 01:31:24 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:31:24 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Fri, 02 Oct 2026 01:31:24 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Fri, 02 Oct 2026 01:31:24 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Fri, 02 Oct 2026 01:31:24 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Fri, 02 Oct 2026 01:31:24 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:31:24 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Fri, 02 Oct 2026 01:31:24 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Fri, 02 Oct 2026 01:31:24 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Fri, 02 Oct 2026 01:31:24 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:31:24 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Fri, 02 Oct 2026 01:31:24 GMT
USER 1000
# Fri, 02 Oct 2026 01:31:24 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Fri, 02 Oct 2026 01:31:24 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.22 org.opencontainers.image.version=8.19.22 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-09-18T17:29:07+00:00 org.opencontainers.image.created=2026-09-18T17:29:07+00:00
# Fri, 02 Oct 2026 01:31:24 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:360ea5edecec3d7c6a5de453d2afb2b1302e627e289f0cf3b81ee5843ff23c73`  
		Last Modified: Fri, 02 Oct 2026 01:32:01 GMT  
		Size: 50.3 MB (50290713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac2857da79bac0e966f25993f57b5db6d4fed0728272f356c907e80c7352a238`  
		Last Modified: Fri, 02 Oct 2026 01:31:59 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d1bcebaefd6b14aaabb5fadb6c5f13460dde7b8cc39835e91aa24effdc8f913`  
		Last Modified: Fri, 02 Oct 2026 01:32:09 GMT  
		Size: 451.0 MB (451002769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bf24711dbc27b3aa32e6d76316967aae3affa920523b5c86f383d2569ef4f42`  
		Last Modified: Fri, 02 Oct 2026 01:32:00 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7858026004f5a396c9f78fd07779b15f1bcc8997a23e8bca5ef1c96aca46f521`  
		Last Modified: Fri, 02 Oct 2026 01:32:00 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba693472f7854729ac400009bcfb183f98c7bfd3fa875b33a8596560224bd3c8`  
		Last Modified: Fri, 02 Oct 2026 01:32:01 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba71a67159f04b61c79e871490c7341f60721d37f688ead096552dc8fb0ef34`  
		Last Modified: Fri, 02 Oct 2026 01:32:02 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e07cf5021c2c34ee4e54aec1f22ae7789c5a2fa5b8c403df0ac8d93b2917477`  
		Last Modified: Fri, 02 Oct 2026 01:32:02 GMT  
		Size: 6.3 KB (6296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ceaeab19b0ecebac8d2a9b881d19b8f2612731c427c468575cc1124a0113094`  
		Last Modified: Fri, 02 Oct 2026 01:32:03 GMT  
		Size: 255.2 KB (255184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ff271fafc9a90984110c443c6d4d503508b79d3594ce9ef9648009e376a7f3e`  
		Last Modified: Fri, 02 Oct 2026 01:32:03 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0308d32f3c0127ec1b2077cc44f73a9670eefd75cdc9632dd5ad093217e6fcb8`  
		Last Modified: Fri, 02 Oct 2026 01:32:03 GMT  
		Size: 709.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.22` - unknown; unknown

```console
$ docker pull logstash@sha256:f525bea4806a8a2492c297a6ff43dcdacf1dbd8fc43cadebe3ea7292deb8c6e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3647149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d27ff112fe33f4912812bf001e03fce9d6274b7489895a750b5bdec6e9882bd8`

```dockerfile
```

-	Layers:
	-	`sha256:164c0daea7b23e41cf8fe7e0fc8734828712c67bf022cf44ec1241108c22583b`  
		Last Modified: Fri, 02 Oct 2026 01:32:00 GMT  
		Size: 3.6 MB (3611301 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3675ed78a038dc1e7a8a0a57466580a4737c358b3b78b329b8bcc1ddeea801ef`  
		Last Modified: Fri, 02 Oct 2026 01:31:59 GMT  
		Size: 35.8 KB (35848 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:8.19.22` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:d330fbab200e26106866a595cd4ecfb4d7bb04b3b4e4e2a6a69e5459bb1d81c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **530.8 MB (530756033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:014f9e9d4adca895ded61694e3aacfbd89d76b3f87d9aa178e3978e4e4e75003`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:30:27 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Fri, 02 Oct 2026 01:30:27 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Fri, 02 Oct 2026 01:30:40 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.22-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.22 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Fri, 02 Oct 2026 01:30:40 GMT
WORKDIR /usr/share/logstash
# Fri, 02 Oct 2026 01:30:40 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 02 Oct 2026 01:30:40 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:30:40 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Fri, 02 Oct 2026 01:30:40 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Fri, 02 Oct 2026 01:30:40 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Fri, 02 Oct 2026 01:30:40 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Fri, 02 Oct 2026 01:30:40 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:30:40 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Fri, 02 Oct 2026 01:30:40 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Fri, 02 Oct 2026 01:30:40 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Fri, 02 Oct 2026 01:30:40 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:30:40 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Fri, 02 Oct 2026 01:30:40 GMT
USER 1000
# Fri, 02 Oct 2026 01:30:40 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Fri, 02 Oct 2026 01:30:40 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.22 org.opencontainers.image.version=8.19.22 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-09-18T17:29:07+00:00 org.opencontainers.image.created=2026-09-18T17:29:07+00:00
# Fri, 02 Oct 2026 01:30:40 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7b17824d22a26c414b6d4de756403d50dd90d4aff81ebc83514dc2776cd0da`  
		Last Modified: Fri, 02 Oct 2026 01:31:22 GMT  
		Size: 52.2 MB (52248621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d079b11e27a65de0fbce75fe4a9ea52fcc3466049f587a197f9000cae42933d`  
		Last Modified: Fri, 02 Oct 2026 01:31:19 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a06f27f62be7c5fc24fa9e6451867a4f17b4dd0b1b58de8522f1f2ad82285526`  
		Last Modified: Fri, 02 Oct 2026 01:31:28 GMT  
		Size: 449.3 MB (449299599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beb3cfe1033553ca95382e6f92ee8fc6b1052bc4b254c35f3fe89a1c955f0ba8`  
		Last Modified: Fri, 02 Oct 2026 01:31:19 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d5fa9b15f556699a9906ca9c3b229a92eaf3e6ea9e9b78618d0624fc79d01e`  
		Last Modified: Fri, 02 Oct 2026 01:31:20 GMT  
		Size: 1.6 KB (1579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c9a425d34f804e6d145df521a10eece0cc766064fb920bd2e39d0c81ff05eb4`  
		Last Modified: Fri, 02 Oct 2026 01:31:21 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7df848c4afeea27b3c9234b3db733592b06d3990838632a6448e757b7a5eaa75`  
		Last Modified: Fri, 02 Oct 2026 01:31:22 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f10be41745ccf2c54de8e54c1f137137c5fec69baa53cf0fd9ba0b9935cc80e`  
		Last Modified: Fri, 02 Oct 2026 01:31:22 GMT  
		Size: 6.3 KB (6295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebe4c72a788748c4d9d1ff3854d6e870ce14dc2996cca06246ed429babece1b3`  
		Last Modified: Fri, 02 Oct 2026 01:31:23 GMT  
		Size: 255.2 KB (255183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb505e18bbe79cf6a7ace423ffba1aa2efe766bdbb43b0a48aa5f3a8dc281a03`  
		Last Modified: Fri, 02 Oct 2026 01:31:23 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95a878851474df9d4e91a2cd29021a3e6fcc8ba6a538fe58952c2bf9e3f611ed`  
		Last Modified: Fri, 02 Oct 2026 01:31:23 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.22` - unknown; unknown

```console
$ docker pull logstash@sha256:88d0ea74b70f7ca67752e39a7b53128fa4ee423a4c567dd55e4d94f9969901bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3647703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9fa35e80e01889ea4d4aa1fc3de950fdd168a786743d879e76af78650846e7a`

```dockerfile
```

-	Layers:
	-	`sha256:c48a7dd2993808cc52f3ec1ddd6f75e4957fe7c26e765f58dc5b6d2982cc42d5`  
		Last Modified: Fri, 02 Oct 2026 01:31:20 GMT  
		Size: 3.6 MB (3611726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b6d8f38bba26dd8b99d7b54f42fec83e5c56d95c1f716b8e9f4f17323e8e9da`  
		Last Modified: Fri, 02 Oct 2026 01:31:19 GMT  
		Size: 36.0 KB (35977 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.4.6`

```console
$ docker pull logstash@sha256:fda3b1c084e12e3d625f0cbc891d0b05c579b81a1fc6c90e190046af5a23acc9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.6` - linux; amd64

```console
$ docker pull logstash@sha256:810baebb95738e6213f758abd09e32e8d64bf004f7fccb47d000a16867c79bb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **526.5 MB (526542229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093bf258c4613993a1daca1405640400235e0d850376bd2b0aa22a298b983581`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 30 Sep 2026 07:43:40 GMT
ENV container oci
# Wed, 30 Sep 2026 07:43:40 GMT
COPY dir:01535d66c659bac5dc638e334bb8c0882e8bbe4dcc144deb448bf0673973267f in /      
# Wed, 30 Sep 2026 07:43:41 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:43:41 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:43:41 GMT
COPY dir:ab52b8f578b642c9cfffb8cfa8cb04095b99e8289c57b6d99f5db899ce19dbbd in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:43:41 GMT
COPY dir:ab52b8f578b642c9cfffb8cfa8cb04095b99e8289c57b6d99f5db899ce19dbbd in /root/buildinfo/      
# Wed, 30 Sep 2026 07:43:41 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:43:22Z" "org.opencontainers.image.revision"="f354e3d450169972cb1f8df64acae506d96d4c49" "build-date"="2026-09-30T07:43:22Z" "architecture"="x86_64" "vcs-ref"="f354e3d450169972cb1f8df64acae506d96d4c49" "vcs-type"="git" "release"="1790754119"org.opencontainers.image.created=2026-09-30T07:43:22Z,org.opencontainers.image.revision=f354e3d450169972cb1f8df64acae506d96d4c49
# Wed, 30 Sep 2026 21:04:16 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 30 Sep 2026 21:04:16 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:04:16 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 30 Sep 2026 21:04:16 GMT
WORKDIR /usr/share
# Wed, 30 Sep 2026 21:04:18 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:05:14 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.6-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.6 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 30 Sep 2026 21:05:14 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 30 Sep 2026 21:05:14 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 30 Sep 2026 21:05:14 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 30 Sep 2026 21:05:14 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 30 Sep 2026 21:05:14 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 30 Sep 2026 21:05:14 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 30 Sep 2026 21:05:14 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 21:05:14 GMT
WORKDIR /usr/share/logstash
# Wed, 30 Sep 2026 21:05:14 GMT
USER 1000
# Wed, 30 Sep 2026 21:05:14 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 30 Sep 2026 21:05:14 GMT
LABEL org.label-schema.build-date=2026-08-24T15:51:53+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-24T15:51:53+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 30 Sep 2026 21:05:14 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:dc56ef34398ed4f6c8151f31ee5784575bedb47794f5ba379ebc2a25834fac35`  
		Last Modified: Wed, 30 Sep 2026 08:42:23 GMT  
		Size: 40.7 MB (40700861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b2998f0d5358172d67c8fc9d77ec0e6321aed361a3a8f516b7e36e411d285a5`  
		Last Modified: Wed, 30 Sep 2026 21:05:50 GMT  
		Size: 4.8 MB (4770460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b385073b283024f148f5d138d7cd19a0858c2aa76702010ad6a459a0f6ec45d0`  
		Last Modified: Wed, 30 Sep 2026 21:05:58 GMT  
		Size: 480.8 MB (480806097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c25dc2d98e2f32785440b588fd202b230b996709eb02251d6893507deee192`  
		Last Modified: Wed, 30 Sep 2026 21:05:50 GMT  
		Size: 6.4 KB (6367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:828c770c4a84f3639f0824045570205cb8047de73c4c2f17be485c8f6eff9004`  
		Last Modified: Wed, 30 Sep 2026 21:05:49 GMT  
		Size: 255.2 KB (255184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f290c72b0852865e26a0041df3fbc5aace13c767ec9092b246225dca0e2ec390`  
		Last Modified: Wed, 30 Sep 2026 21:05:51 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90351c52fc53b574e4a5ee1121f7cb733f8cd286c8d401be60c0151f0d975ebf`  
		Last Modified: Wed, 30 Sep 2026 21:05:51 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d97b3b4155315d16db69fa5919c526274c12986f4d6afbcf13c443aecafbce`  
		Last Modified: Wed, 30 Sep 2026 21:05:51 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81ed5714792a777468a0cd78dd6c2158e8c4bee04108ce6f696c6169b2fe6016`  
		Last Modified: Wed, 30 Sep 2026 21:05:52 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f018723b50fe784b16771099625961a81cf3026a157c4acc6cb4d7a16318e3f6`  
		Last Modified: Wed, 30 Sep 2026 21:05:52 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.6` - unknown; unknown

```console
$ docker pull logstash@sha256:d20352846b9019687f22338405b08f0fe506a50bdc681a8c11491b022dc88f70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2146959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86d883f3d3959123731026c32207b1f9cc3d04ec37d6e3202b014ba2a41d0144`

```dockerfile
```

-	Layers:
	-	`sha256:d56e77b6b8a4245ad238730566be02fa692a43c1f182e06b1062e9fc48b12d86`  
		Last Modified: Wed, 30 Sep 2026 21:05:50 GMT  
		Size: 2.1 MB (2116759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61f58f0e0cdbb32d7128b3236bcfde562fc891d6f0a4d62cac6086d5e2a3eb8a`  
		Last Modified: Wed, 30 Sep 2026 21:05:50 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.6` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:4505080d39fe36a0c982f5ebfb83d3dbb2b3f12bd7a57e66575c4af4230a80f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **522.9 MB (522907554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca177659fb09ede46f0be492fbd96e9ca30f10e052f58a86457bc901c453fd49`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:45:10 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 30 Sep 2026 07:45:10 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:45:10 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 30 Sep 2026 07:45:10 GMT
ENV container oci
# Wed, 30 Sep 2026 07:45:10 GMT
COPY dir:06d90a0b7db8992c03ff9664b8cd3e00c58fd39e054579d5795d410389dd5e96 in /      
# Wed, 30 Sep 2026 07:45:10 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:45:10 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:45:10 GMT
COPY dir:c0678317d7ed63442d60483211d5a1c6d09172186a4f2982932461d0f7e083bf in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:45:11 GMT
COPY dir:c0678317d7ed63442d60483211d5a1c6d09172186a4f2982932461d0f7e083bf in /root/buildinfo/      
# Wed, 30 Sep 2026 07:45:11 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:44:47Z" "org.opencontainers.image.revision"="f354e3d450169972cb1f8df64acae506d96d4c49" "build-date"="2026-09-30T07:44:47Z" "architecture"="aarch64" "vcs-ref"="f354e3d450169972cb1f8df64acae506d96d4c49" "vcs-type"="git" "release"="1790754119"org.opencontainers.image.created=2026-09-30T07:44:47Z,org.opencontainers.image.revision=f354e3d450169972cb1f8df64acae506d96d4c49
# Wed, 30 Sep 2026 21:03:30 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 30 Sep 2026 21:03:30 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:03:30 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 30 Sep 2026 21:03:30 GMT
WORKDIR /usr/share
# Wed, 30 Sep 2026 21:03:33 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:04:03 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.6-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.6 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 30 Sep 2026 21:04:03 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 30 Sep 2026 21:04:03 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 30 Sep 2026 21:04:03 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 30 Sep 2026 21:04:03 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 30 Sep 2026 21:04:03 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 30 Sep 2026 21:04:03 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 30 Sep 2026 21:04:03 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 21:04:03 GMT
WORKDIR /usr/share/logstash
# Wed, 30 Sep 2026 21:04:03 GMT
USER 1000
# Wed, 30 Sep 2026 21:04:03 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 30 Sep 2026 21:04:03 GMT
LABEL org.label-schema.build-date=2026-08-24T15:51:53+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.6 org.opencontainers.image.created=2026-08-24T15:51:53+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.6 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 30 Sep 2026 21:04:03 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:b8f4af811c7c98a1b33bf1a9f90c3e1b1f2296b681895a0031b0560a5db8a0a4`  
		Last Modified: Wed, 30 Sep 2026 08:42:32 GMT  
		Size: 38.8 MB (38801364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8878a74bc9bda84095de329dc4de4984b98d64248d9e988483a7e43b7f579673`  
		Last Modified: Wed, 30 Sep 2026 21:04:43 GMT  
		Size: 4.8 MB (4756451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:872ba5860c1bd65a96e576044eed32f69b2f98e153f5996e666a24efc1ea17df`  
		Last Modified: Wed, 30 Sep 2026 21:04:50 GMT  
		Size: 479.1 MB (479084938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a36b19d7f33ea2240cc982146b442ba89b1c3f8ac8ce934d121d2afba0a1d6`  
		Last Modified: Wed, 30 Sep 2026 21:04:42 GMT  
		Size: 6.4 KB (6365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af0be9f8d88b2c98ca8a2363fd4e8ac736718894d3b51b605660af786ceedfc5`  
		Last Modified: Wed, 30 Sep 2026 21:04:42 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7f4ab9def662793bb098806801dc3c6922bf7a035a9c3c31a4359f6a1e1496`  
		Last Modified: Wed, 30 Sep 2026 21:04:44 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d17267d767893ff8a60d0809c3fbbd5149d5466d02b7f553077fc8a0805241a`  
		Last Modified: Wed, 30 Sep 2026 21:04:44 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2fb2212894035dca072cc739c8aa16e0fe20abf43ff13f8dd01fb5756cc48b5`  
		Last Modified: Wed, 30 Sep 2026 21:04:44 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8fb65143aa9e05a528c80f3adca25b72a569739987174db52f3609b925dd70b`  
		Last Modified: Wed, 30 Sep 2026 21:04:45 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b1c867c669c014fd5981813a5688409feba92f4118f3bfe7dcb9d9851bc2201`  
		Last Modified: Wed, 30 Sep 2026 21:04:45 GMT  
		Size: 707.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.6` - unknown; unknown

```console
$ docker pull logstash@sha256:c4db6e67b5539afb3827764e8b1b19458f8c859127580e465293594307c501b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2145823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1760e9371f1774bc31f5da2b90e6b530e70fca71965c98ff24ee5cafd9cd8280`

```dockerfile
```

-	Layers:
	-	`sha256:115196283fcab494456ed23b9da7efff3f00ee671c5f51929a095838c78e4d82`  
		Last Modified: Wed, 30 Sep 2026 21:04:42 GMT  
		Size: 2.1 MB (2115547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71933e56b2ed0ab7ab267c37708682accfb26cf78531161b98fc1702957c41e5`  
		Last Modified: Wed, 30 Sep 2026 21:04:43 GMT  
		Size: 30.3 KB (30276 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.5.3`

```console
$ docker pull logstash@sha256:c73202485cb0f58f882656c4a9e1fc7d5b88eb3428edc507ddf5f12712dbdd90
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.5.3` - linux; amd64

```console
$ docker pull logstash@sha256:e90187f2bffb4bc66863162caeececdfcb036d20bd1aa681959fc52b50fb61d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **536.1 MB (536131045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14cfae0b3ac196d84f3a42982cb350c85adab67826f1c446ec098b27976a6033`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 30 Sep 2026 07:43:40 GMT
ENV container oci
# Wed, 30 Sep 2026 07:43:40 GMT
COPY dir:01535d66c659bac5dc638e334bb8c0882e8bbe4dcc144deb448bf0673973267f in /      
# Wed, 30 Sep 2026 07:43:41 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:43:41 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:43:41 GMT
COPY dir:ab52b8f578b642c9cfffb8cfa8cb04095b99e8289c57b6d99f5db899ce19dbbd in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:43:41 GMT
COPY dir:ab52b8f578b642c9cfffb8cfa8cb04095b99e8289c57b6d99f5db899ce19dbbd in /root/buildinfo/      
# Wed, 30 Sep 2026 07:43:41 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:43:22Z" "org.opencontainers.image.revision"="f354e3d450169972cb1f8df64acae506d96d4c49" "build-date"="2026-09-30T07:43:22Z" "architecture"="x86_64" "vcs-ref"="f354e3d450169972cb1f8df64acae506d96d4c49" "vcs-type"="git" "release"="1790754119"org.opencontainers.image.created=2026-09-30T07:43:22Z,org.opencontainers.image.revision=f354e3d450169972cb1f8df64acae506d96d4c49
# Wed, 30 Sep 2026 21:04:26 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 30 Sep 2026 21:04:26 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:04:26 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 30 Sep 2026 21:04:26 GMT
WORKDIR /usr/share
# Wed, 30 Sep 2026 21:04:28 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:05:26 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.3-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.3 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 30 Sep 2026 21:05:26 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 30 Sep 2026 21:05:26 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 30 Sep 2026 21:05:26 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 30 Sep 2026 21:05:26 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 30 Sep 2026 21:05:26 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 30 Sep 2026 21:05:26 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 30 Sep 2026 21:05:27 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 21:05:27 GMT
WORKDIR /usr/share/logstash
# Wed, 30 Sep 2026 21:05:27 GMT
USER 1000
# Wed, 30 Sep 2026 21:05:27 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 30 Sep 2026 21:05:27 GMT
LABEL org.label-schema.build-date=2026-09-01T07:25:38+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T07:25:38+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 30 Sep 2026 21:05:27 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:dc56ef34398ed4f6c8151f31ee5784575bedb47794f5ba379ebc2a25834fac35`  
		Last Modified: Wed, 30 Sep 2026 08:42:23 GMT  
		Size: 40.7 MB (40700861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a37e7238983531661d949b79cd85ed61bd1a0bcb1d7608084d2a88ae6b26a4`  
		Last Modified: Wed, 30 Sep 2026 21:06:01 GMT  
		Size: 4.8 MB (4770467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad6ffb49a0c338bfcc20e501f9a2a79ba48a759cd8a40576256b22d9e6be7c1`  
		Last Modified: Wed, 30 Sep 2026 21:06:11 GMT  
		Size: 490.4 MB (490394737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bde1d0976ae561a25450241179c4494f3680e39f45700d9b28a9172497e30e0`  
		Last Modified: Wed, 30 Sep 2026 21:06:01 GMT  
		Size: 6.5 KB (6539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57323f680614369e6cf350ad944c1ea94d4ff4ba11429b23b1b734b4c0c7791e`  
		Last Modified: Wed, 30 Sep 2026 21:06:01 GMT  
		Size: 255.2 KB (255184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ce3c7a812f02b67291b6a6507464f30e219dda1fff1ea49fd4658c840181381`  
		Last Modified: Wed, 30 Sep 2026 21:06:02 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a8c76bd3fdc4392f51e21899c40ab07dcc922eb5d3d76ba9258fd12ea9ec8b`  
		Last Modified: Wed, 30 Sep 2026 21:06:02 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de9fbe0cc6c26ec334c433727f50224373c2cdfddb7b2e211ce91d317580c73`  
		Last Modified: Wed, 30 Sep 2026 21:06:03 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ebdb56a68ace23e9cf26062710048410d98f82f91b7c53cfeeec75d65f52b0`  
		Last Modified: Wed, 30 Sep 2026 21:06:04 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff550d33c58f99900518e71804b9c60ed330fcc1881ac472b6dc7ba4787865b`  
		Last Modified: Wed, 30 Sep 2026 21:06:04 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.3` - unknown; unknown

```console
$ docker pull logstash@sha256:b529cb95b2ec6e7fbe211f572014f34ee092d3371bce51ae675025b6334cd6fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d832a3e25889a9058a2bd6a28037b28e4f15b9ca42af591cadf65ccb4677f36`

```dockerfile
```

-	Layers:
	-	`sha256:97a31a8efcde4639224aca2a7758408860ea66b23cd51eaebda88b3851573006`  
		Last Modified: Wed, 30 Sep 2026 21:06:01 GMT  
		Size: 2.1 MB (2144063 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4762ad9c953d0192368110f6ed0174f884dfbffefd48e35a83e1036d37551820`  
		Last Modified: Wed, 30 Sep 2026 21:06:01 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.5.3` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:c1dccdaf68283cf27684735e7c33fdd419ec647b09f56fd52380e0eab5095d0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **532.5 MB (532481651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2ee17ff9bfdae2737c6e3dbfda6a6830868ed82ffddfe26ecfdcb074595704`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:45:09 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:45:10 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 30 Sep 2026 07:45:10 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:45:10 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 30 Sep 2026 07:45:10 GMT
ENV container oci
# Wed, 30 Sep 2026 07:45:10 GMT
COPY dir:06d90a0b7db8992c03ff9664b8cd3e00c58fd39e054579d5795d410389dd5e96 in /      
# Wed, 30 Sep 2026 07:45:10 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:45:10 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:45:10 GMT
COPY dir:c0678317d7ed63442d60483211d5a1c6d09172186a4f2982932461d0f7e083bf in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:45:11 GMT
COPY dir:c0678317d7ed63442d60483211d5a1c6d09172186a4f2982932461d0f7e083bf in /root/buildinfo/      
# Wed, 30 Sep 2026 07:45:11 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:44:47Z" "org.opencontainers.image.revision"="f354e3d450169972cb1f8df64acae506d96d4c49" "build-date"="2026-09-30T07:44:47Z" "architecture"="aarch64" "vcs-ref"="f354e3d450169972cb1f8df64acae506d96d4c49" "vcs-type"="git" "release"="1790754119"org.opencontainers.image.created=2026-09-30T07:44:47Z,org.opencontainers.image.revision=f354e3d450169972cb1f8df64acae506d96d4c49
# Wed, 30 Sep 2026 21:03:35 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 30 Sep 2026 21:03:35 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:03:35 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Wed, 30 Sep 2026 21:03:35 GMT
WORKDIR /usr/share
# Wed, 30 Sep 2026 21:03:37 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:04:37 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.3-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.3 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 30 Sep 2026 21:04:37 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 30 Sep 2026 21:04:37 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 30 Sep 2026 21:04:37 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 30 Sep 2026 21:04:37 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Wed, 30 Sep 2026 21:04:37 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Wed, 30 Sep 2026 21:04:38 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Wed, 30 Sep 2026 21:04:38 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 21:04:38 GMT
WORKDIR /usr/share/logstash
# Wed, 30 Sep 2026 21:04:38 GMT
USER 1000
# Wed, 30 Sep 2026 21:04:38 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 30 Sep 2026 21:04:38 GMT
LABEL org.label-schema.build-date=2026-09-01T07:25:38+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.3 org.opencontainers.image.created=2026-09-01T07:25:38+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.3 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Wed, 30 Sep 2026 21:04:38 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:b8f4af811c7c98a1b33bf1a9f90c3e1b1f2296b681895a0031b0560a5db8a0a4`  
		Last Modified: Wed, 30 Sep 2026 08:42:32 GMT  
		Size: 38.8 MB (38801364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f1240beb8f2ca364bae33690e234dfe3a8da5a963b3767c9d7fc4f65674c7b`  
		Last Modified: Wed, 30 Sep 2026 21:05:18 GMT  
		Size: 4.8 MB (4756393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e46737db924981aa6c1fb472f1eee8856c7a657b37e25ed93b1c30592554505a`  
		Last Modified: Wed, 30 Sep 2026 21:05:27 GMT  
		Size: 488.7 MB (488658918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cfd2a5e2c0e2b4e9910c97f78e92b182a15731b42435c2e9e2ab461992cb5a6`  
		Last Modified: Wed, 30 Sep 2026 21:05:18 GMT  
		Size: 6.5 KB (6539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a62f930cebd442c16ac989d378f2e1c06859490b0b702f9f577e26c2c09d83a`  
		Last Modified: Wed, 30 Sep 2026 21:05:18 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d58b63a9cacc3905ab97e86d2247b7b7d702d992026e7fb50481278df37a77ab`  
		Last Modified: Wed, 30 Sep 2026 21:05:19 GMT  
		Size: 351.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c9bafbed7053a43e5fc7c8deadf4bf6916f40f337efcb3847a14a8626114461`  
		Last Modified: Wed, 30 Sep 2026 21:05:19 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a5fad8efcbb8711e8ddd9db98b19b3cd4a5a632c6cd6d174e3587cec7d4a74d`  
		Last Modified: Wed, 30 Sep 2026 21:05:19 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82bf46baa29ccda246fa151e4fcbd084fa6bc450437be57fc9add6d156743631`  
		Last Modified: Wed, 30 Sep 2026 21:05:20 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8c58f67540e09f2b3bbd763ec77462178e26ff34a105d21ce3a4991025a160`  
		Last Modified: Wed, 30 Sep 2026 21:05:20 GMT  
		Size: 709.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.3` - unknown; unknown

```console
$ docker pull logstash@sha256:2881a6c536c64c3ac5e4440b5db2ee8419dccd9991b101d00676a6087ff91322
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2173128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df45bbf69a0ce172fb20ef2a5e4ef92ae5a0f0f5e8f2341ce23ee9bcebfa4d79`

```dockerfile
```

-	Layers:
	-	`sha256:d798362d5268e6ca98621a91424b87e6dfe0721c51833c3e68ab05eee385c047`  
		Last Modified: Wed, 30 Sep 2026 21:05:18 GMT  
		Size: 2.1 MB (2142851 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6217fa07d993ee66931f254d48246af695bd8561d9ff6bc46adb39ef0dedb428`  
		Last Modified: Wed, 30 Sep 2026 21:05:18 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json
