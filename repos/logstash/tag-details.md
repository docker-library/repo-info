<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:8.19.19`](#logstash81919)
-	[`logstash:9.3.8`](#logstash938)
-	[`logstash:9.4.4`](#logstash944)

## `logstash:8.19.19`

```console
$ docker pull logstash@sha256:ca0a14572c6659898e4a564746f96bf4c42f43f8863c8d28eaecb1a240e741d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:8.19.19` - linux; amd64

```console
$ docker pull logstash@sha256:5859e94d00de9dd380400af1c745db77e15c503ff07e83bda30e6acfecb70d4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **528.5 MB (528524228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13450f3a5d2a0dae4281fdf9d04c4704912ad458871d7163336798e397780a81`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:27 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Tue, 04 Aug 2026 01:41:28 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Tue, 04 Aug 2026 01:42:08 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.19-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.19 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 04 Aug 2026 01:42:08 GMT
WORKDIR /usr/share/logstash
# Tue, 04 Aug 2026 01:42:08 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 04 Aug 2026 01:42:08 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:42:08 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Tue, 04 Aug 2026 01:42:08 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Tue, 04 Aug 2026 01:42:08 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Tue, 04 Aug 2026 01:42:08 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Tue, 04 Aug 2026 01:42:08 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:42:08 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 04 Aug 2026 01:42:08 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 04 Aug 2026 01:42:08 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 04 Aug 2026 01:42:08 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:42:08 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Tue, 04 Aug 2026 01:42:08 GMT
USER 1000
# Tue, 04 Aug 2026 01:42:08 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 04 Aug 2026 01:42:08 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.19 org.opencontainers.image.version=8.19.19 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-07-14T20:12:14+00:00 org.opencontainers.image.created=2026-07-14T20:12:14+00:00
# Tue, 04 Aug 2026 01:42:08 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7147b8f3a61829c21fda98bc56508446e53a5562fb662d516beec9eb0c9f2e8`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 48.8 MB (48797865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2170f4717d825f04f063c59026fffd1bca96227777b1b9cd8e616a32e99fc967`  
		Last Modified: Tue, 04 Aug 2026 01:42:43 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e5380b1e672db2ca9671dd4bf984fd946213f6dc92cadd2a85d413cc1fd89b`  
		Last Modified: Tue, 04 Aug 2026 01:42:52 GMT  
		Size: 449.7 MB (449707525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2777d0e6139710b9587887d77eac3dc644e72c76aa0a94f357d4b1214d15ad76`  
		Last Modified: Tue, 04 Aug 2026 01:42:43 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14bcdf443a528d61a3bc30b2a36e21bc7ba5663a12858a604eb05b56e78e647f`  
		Last Modified: Tue, 04 Aug 2026 01:42:44 GMT  
		Size: 1.6 KB (1579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c5a06ef0cab85b4996f09046e6cce5d0f1f50db593740364fb4ed0c9496526`  
		Last Modified: Tue, 04 Aug 2026 01:42:44 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0394b0637ead219c52d96a9b8ef2ad9aa1174f5b2a7e8e3d8463b7d1e62851e9`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7330430d7f176002f9ad0c7a5168a8db40e41371e841d058574758838163a41`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 6.3 KB (6295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e46f2ee6a0733fb9952d56435a5072e2a400c4b7051ee93a5b448992fd91be`  
		Last Modified: Tue, 04 Aug 2026 01:42:47 GMT  
		Size: 255.2 KB (255181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25233125617276548c03a988a708bc174713f412086d371b5d754e01a9677795`  
		Last Modified: Tue, 04 Aug 2026 01:42:47 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900d506d12228aa127541c750257c84a2d4bebf80e55cdb198a2b575143d17bf`  
		Last Modified: Tue, 04 Aug 2026 01:42:47 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.19` - unknown; unknown

```console
$ docker pull logstash@sha256:b39da1d54daa20d767348b2098cb45db8b30724be85a5a78d2b753094f4dfadb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3642480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a81e6fae6679295b41e993c13c72f8e36cc24148658a65674573d7476455322`

```dockerfile
```

-	Layers:
	-	`sha256:71548476243fe876cd5e943f503989763e6238de088f946214218e3f1fd23b1e`  
		Last Modified: Tue, 04 Aug 2026 01:42:43 GMT  
		Size: 3.6 MB (3606636 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6c9add12621675057e7869c56e5604dfdea606294660d09edda34dc35dd7064`  
		Last Modified: Tue, 04 Aug 2026 01:42:43 GMT  
		Size: 35.8 KB (35844 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:8.19.19` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:f18b7d8e8e9b9f81b93580bc04c317add65a3b72f004122f210d032e828d842e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **525.2 MB (525150043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7431a2b286df99bb7f8bf89a90c711d4e577f8a44e86aa4ec44058cebe27652a`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:46 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Tue, 04 Aug 2026 01:41:46 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Tue, 04 Aug 2026 01:42:01 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.19-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.19 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 04 Aug 2026 01:42:01 GMT
WORKDIR /usr/share/logstash
# Tue, 04 Aug 2026 01:42:01 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 04 Aug 2026 01:42:01 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:42:01 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Tue, 04 Aug 2026 01:42:01 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Tue, 04 Aug 2026 01:42:01 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Tue, 04 Aug 2026 01:42:01 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Tue, 04 Aug 2026 01:42:01 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:42:01 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 04 Aug 2026 01:42:01 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 04 Aug 2026 01:42:01 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 04 Aug 2026 01:42:01 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 04 Aug 2026 01:42:01 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Tue, 04 Aug 2026 01:42:01 GMT
USER 1000
# Tue, 04 Aug 2026 01:42:01 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 04 Aug 2026 01:42:01 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.19 org.opencontainers.image.version=8.19.19 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-07-14T20:12:14+00:00 org.opencontainers.image.created=2026-07-14T20:12:14+00:00
# Tue, 04 Aug 2026 01:42:01 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63e8b93c3a19bf592eb545dc09eeb4d03c867e8ffbb713e2d57ae946aaadc42e`  
		Last Modified: Tue, 04 Aug 2026 01:42:43 GMT  
		Size: 48.0 MB (47985498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a75952113c4f189063bbc6c4986f0dd9bd52f4b3fd5c24547bbae5f30faceb`  
		Last Modified: Tue, 04 Aug 2026 01:42:41 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f81948e69c94cef91ca513d75d897d0ecc6a39e050ef694bb0f8687cdf33fc`  
		Last Modified: Tue, 04 Aug 2026 01:42:49 GMT  
		Size: 448.0 MB (448010004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b85c746e09b039b9b1be9c9c469c4f244898cc0965d42390aea48cd0ea7140f4`  
		Last Modified: Tue, 04 Aug 2026 01:42:41 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c476e63b205d7d3550207e6150efc7fb43f7968466e3e43cb584166a068674`  
		Last Modified: Tue, 04 Aug 2026 01:42:42 GMT  
		Size: 1.6 KB (1579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ce77ef6e9debef4cb835aeed4b56c3d57fa4d908e80349cb774d12251e13f2`  
		Last Modified: Tue, 04 Aug 2026 01:42:42 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc373bfc43c9f59a40c8ac6e1f46c51e8c2c39a62a0b4db7d3a2c5a57afa5e6f`  
		Last Modified: Tue, 04 Aug 2026 01:42:43 GMT  
		Size: 1.8 KB (1762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6f1ff4fddeb161b143f4fcc157d9c6efa54801d2ca9f17161be584b3e1f0168`  
		Last Modified: Tue, 04 Aug 2026 01:42:43 GMT  
		Size: 6.3 KB (6292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efb9ab6b4e106463c6397028faaa3536868d866c80405d1e5e2aa78c1834fdd7`  
		Last Modified: Tue, 04 Aug 2026 01:42:44 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0eafae10edd49872fa112afd46aec8d8e0447f8b288b84f04a9634dabab2a57`  
		Last Modified: Tue, 04 Aug 2026 01:42:44 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81eb74aa1e35ce38a72b3981766605e8d1e7b10657df638e8f8cf205bb230a11`  
		Last Modified: Tue, 04 Aug 2026 01:42:45 GMT  
		Size: 712.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.19` - unknown; unknown

```console
$ docker pull logstash@sha256:0cb699f9f7aa77a2650cc961bccd6373938f66a51e08cd1b89cb6e4c6339c32b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3643033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7152ca27ad1b745311ffa6ad9fc0e4762797cf3728a985432ffca6f266e6675b`

```dockerfile
```

-	Layers:
	-	`sha256:01d123ff20602762aa8c50b0777bb09b1d9cb0c8873d4bb2fad9defb473c259b`  
		Last Modified: Tue, 04 Aug 2026 01:42:41 GMT  
		Size: 3.6 MB (3607061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc07e64a3fe57895ae47c591fd719a467ac71b757f830f20d021547df2ef3f28`  
		Last Modified: Tue, 04 Aug 2026 01:42:40 GMT  
		Size: 36.0 KB (35972 bytes)  
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
