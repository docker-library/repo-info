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
$ docker pull logstash@sha256:e4dbfdccaf8eea13c8768c6de2ecdab1bed7a853541ad8d01625e226b22661d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.3.8` - linux; amd64

```console
$ docker pull logstash@sha256:fc9233f31f5e644224f124ffac1c38e5088f458d481d82ddd6f27b6275097231
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **518.8 MB (518849101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f44b26b0f1e74d18885229ba836bc361c787f67e8b6026c4d04becf6f30ba62d`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 10 Aug 2026 16:56:02 GMT
ENV container oci
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:df00d2ddcafd5d3230e4389e976d7b8e34c276ca8e8d50edc2315b0141add52b in /      
# Mon, 10 Aug 2026 16:56:03 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 16:56:03 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:1a5179848530af6cfaa2736badbd86d3fafb52f86a723fc761a88e2b21a91f65 in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:1a5179848530af6cfaa2736badbd86d3fafb52f86a723fc761a88e2b21a91f65 in /root/buildinfo/      
# Mon, 10 Aug 2026 16:56:03 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T16:55:47Z" "org.opencontainers.image.revision"="905bde9da31110a4bb776761a921a6b4e6b12a93" "build-date"="2026-08-10T16:55:47Z" "architecture"="x86_64" "vcs-ref"="905bde9da31110a4bb776761a921a6b4e6b12a93" "vcs-type"="git" "release"="1786380870"org.opencontainers.image.created=2026-08-10T16:55:47Z,org.opencontainers.image.revision=905bde9da31110a4bb776761a921a6b4e6b12a93
# Tue, 11 Aug 2026 17:51:38 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 11 Aug 2026 17:51:38 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 17:51:38 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 11 Aug 2026 17:51:38 GMT
WORKDIR /usr/share
# Tue, 11 Aug 2026 17:51:40 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 11 Aug 2026 17:52:30 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.3.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.3.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 11 Aug 2026 17:52:30 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 11 Aug 2026 17:52:30 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 11 Aug 2026 17:52:30 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 11 Aug 2026 17:52:30 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 11 Aug 2026 17:52:31 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 11 Aug 2026 17:52:31 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 11 Aug 2026 17:52:31 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 17:52:31 GMT
WORKDIR /usr/share/logstash
# Tue, 11 Aug 2026 17:52:31 GMT
USER 1000
# Tue, 11 Aug 2026 17:52:31 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 11 Aug 2026 17:52:31 GMT
LABEL org.label-schema.build-date=2026-07-14T20:10:33+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-14T20:10:33+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 11 Aug 2026 17:52:31 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:2b8131e88da7bc7239bd3e4fd72821791bec3c3a93924daef20a3a2e88e4a3d3`  
		Last Modified: Mon, 10 Aug 2026 18:10:48 GMT  
		Size: 40.7 MB (40708738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ecc063f9a39a516904dcd35418d433b80f893b5d1ddf9db643d721fb2216370`  
		Last Modified: Tue, 11 Aug 2026 17:53:07 GMT  
		Size: 4.8 MB (4771569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24d9b29bbf9f9f25d372c6de5b9367027bbfee225f0ca280c3f847573ec91c2`  
		Last Modified: Tue, 11 Aug 2026 17:53:15 GMT  
		Size: 473.1 MB (473104050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb7f682d76b4f91265fe8cc01a83bfe71a77402ba32f8d7105a360d13db2006`  
		Last Modified: Tue, 11 Aug 2026 17:53:06 GMT  
		Size: 6.3 KB (6297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5481df1615c9301285a78e8a3434593bfc539619b8694055ce737006bd87c82`  
		Last Modified: Tue, 11 Aug 2026 17:53:06 GMT  
		Size: 255.2 KB (255186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40b28c475e5d274b4861ae78fa2e1a04574b715f823f1073df2ba01156b98246`  
		Last Modified: Tue, 11 Aug 2026 17:53:08 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb0c57114d388424c211941e7e6376aec75351e6a4436e39215510c40842855`  
		Last Modified: Tue, 11 Aug 2026 17:53:08 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19f9a6086d866277124e68fc503bc1a0ed915268a9fe12fc92eaea96b62968bf`  
		Last Modified: Tue, 11 Aug 2026 17:53:08 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdeeabb3a881fd717f54498cb488f545030b5a0f3ecf097e061a8adbbbb139db`  
		Last Modified: Tue, 11 Aug 2026 17:53:09 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0b37c2258117068458abe200905b9787b6422eeec3d277e642486f129683a8`  
		Last Modified: Tue, 11 Aug 2026 17:53:09 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.3.8` - unknown; unknown

```console
$ docker pull logstash@sha256:862ef86e14b4ae6c025a6fd44448ea3c7fad5595a91dbf12ba0f69c56ab037fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2136903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1ed1a0a7d21139b9f372ed9b62997e52cc0d8f55e37ca92e6433a6dccf51632`

```dockerfile
```

-	Layers:
	-	`sha256:18b6e86926631a87272348e6dbcdacdd8f9a9e5d12164f0baf8615cce8f40ae9`  
		Last Modified: Tue, 11 Aug 2026 17:53:06 GMT  
		Size: 2.1 MB (2106704 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec15ce3d86383841c631030cdb91f54bc4f4b45b71fea0b1bd5fafc2ca35ed16`  
		Last Modified: Tue, 11 Aug 2026 17:53:06 GMT  
		Size: 30.2 KB (30199 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.3.8` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:e5e9ef0657a92d30645d0022dd360e9f224d2ccc9716e19ea1925e80b3a88938
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **515.2 MB (515218683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82b321d6da3da17a8b772e5484bdaf25cf0a3747d1099776ccc58caebb0a53be`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 10 Aug 2026 16:58:36 GMT
ENV container oci
# Mon, 10 Aug 2026 16:58:37 GMT
COPY dir:a29571d1d7f0219756ea4cbeea7cbd2d7c70f920d886563530efb6b5f51db754 in /      
# Mon, 10 Aug 2026 16:58:37 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 16:58:37 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 16:58:37 GMT
COPY dir:affb4b0d326dc89d183bd019c6447bd9c3122f330427c74027adfef3eaf39c3c in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 16:58:37 GMT
COPY dir:affb4b0d326dc89d183bd019c6447bd9c3122f330427c74027adfef3eaf39c3c in /root/buildinfo/      
# Mon, 10 Aug 2026 16:58:37 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T16:58:14Z" "org.opencontainers.image.revision"="905bde9da31110a4bb776761a921a6b4e6b12a93" "build-date"="2026-08-10T16:58:14Z" "architecture"="aarch64" "vcs-ref"="905bde9da31110a4bb776761a921a6b4e6b12a93" "vcs-type"="git" "release"="1786380870"org.opencontainers.image.created=2026-08-10T16:58:14Z,org.opencontainers.image.revision=905bde9da31110a4bb776761a921a6b4e6b12a93
# Tue, 11 Aug 2026 19:09:16 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 11 Aug 2026 19:09:16 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 19:09:16 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 11 Aug 2026 19:09:16 GMT
WORKDIR /usr/share
# Tue, 11 Aug 2026 19:09:19 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 11 Aug 2026 19:09:50 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.3.8-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.3.8 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 11 Aug 2026 19:09:50 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 11 Aug 2026 19:09:50 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 11 Aug 2026 19:09:51 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 11 Aug 2026 19:09:51 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 11 Aug 2026 19:09:51 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 11 Aug 2026 19:09:51 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 11 Aug 2026 19:09:51 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 19:09:51 GMT
WORKDIR /usr/share/logstash
# Tue, 11 Aug 2026 19:09:51 GMT
USER 1000
# Tue, 11 Aug 2026 19:09:51 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 11 Aug 2026 19:09:51 GMT
LABEL org.label-schema.build-date=2026-07-14T20:10:33+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.3.8 org.opencontainers.image.created=2026-07-14T20:10:33+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.3.8 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 11 Aug 2026 19:09:51 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:e3f9ee4410f580b6aa25583df525121fb62e969983ca4535073d9018d260fec1`  
		Last Modified: Mon, 10 Aug 2026 18:10:53 GMT  
		Size: 38.8 MB (38791667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9241b71bef894e3eaedd1613654f1ae40c538a6f685f571297a9b99003ae2ddb`  
		Last Modified: Tue, 11 Aug 2026 19:10:28 GMT  
		Size: 4.8 MB (4758254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d4e6d9aec6c8df5f588e6b0d639229dd0a9454e0ef93aeb9b99fc6420a168aa`  
		Last Modified: Tue, 11 Aug 2026 19:10:40 GMT  
		Size: 471.4 MB (471404028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f583a2444d06b9647f6fc49a7d25ccdf7ddb21862b1984a1a0c9ca5ee738c2`  
		Last Modified: Tue, 11 Aug 2026 19:10:28 GMT  
		Size: 6.3 KB (6293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60eadc8d411bd5a94c5fd4edb32a7473463d80070f5d153f207d975afe0e16c7`  
		Last Modified: Tue, 11 Aug 2026 19:10:28 GMT  
		Size: 255.2 KB (255180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9c5b0323604e86eff0be76f15c10aaf41795638da6dbfce38f2e6563875b0ed`  
		Last Modified: Tue, 11 Aug 2026 19:10:29 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:909dfd3e8a25f0bd46e31ff90121ed009b126ef28509cb583cf104cbdfc47226`  
		Last Modified: Tue, 11 Aug 2026 19:10:29 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d247e28617b8ca875ef0068e5a472ac291798c8df40d51757fdc7bde0b0892fa`  
		Last Modified: Tue, 11 Aug 2026 19:10:30 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9a215feac5bef5cc64397798b1bf94c402bdf0b46f4374871514c58e1f331be`  
		Last Modified: Tue, 11 Aug 2026 19:10:31 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0b4f4a5afc03ec3d4e96dd28e30f326aa6656c25d4659fddf9a95be80c65283`  
		Last Modified: Tue, 11 Aug 2026 19:10:31 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.3.8` - unknown; unknown

```console
$ docker pull logstash@sha256:c3de724bbfda1e908ffd3e27ad6737bdcdd3d26eb9076c315fb754ca0ade4c49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2135769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9582232f4cca0cd9eccb5e0228c306e73349d0955e846cb4bb829261f409afcf`

```dockerfile
```

-	Layers:
	-	`sha256:f5a5a197e9480941068b2e9b5f57fde910caa075d653f4578e2f6c623b759441`  
		Last Modified: Tue, 11 Aug 2026 19:10:28 GMT  
		Size: 2.1 MB (2105492 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f6882f4b42e4a8d279ebea8654fe8b9afd34da7ee3143a4ccf190e2cc13162f`  
		Last Modified: Tue, 11 Aug 2026 19:10:28 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.4.4`

```console
$ docker pull logstash@sha256:bdb7d35cb35e6e9c68384da0004c93230ce13d1d7a54e486ad638c0ce3c0cf85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.4` - linux; amd64

```console
$ docker pull logstash@sha256:9d9e0cd8441d966405b664af469ffa9512d8482b3bb845fcfae1278acedb8c0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **525.2 MB (525249495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29d9479f35e52c8d91c90b8d35872affa967f7866ad6eb8b778d878479da4cf3`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 10 Aug 2026 16:56:02 GMT
ENV container oci
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:df00d2ddcafd5d3230e4389e976d7b8e34c276ca8e8d50edc2315b0141add52b in /      
# Mon, 10 Aug 2026 16:56:03 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 16:56:03 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:1a5179848530af6cfaa2736badbd86d3fafb52f86a723fc761a88e2b21a91f65 in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:1a5179848530af6cfaa2736badbd86d3fafb52f86a723fc761a88e2b21a91f65 in /root/buildinfo/      
# Mon, 10 Aug 2026 16:56:03 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T16:55:47Z" "org.opencontainers.image.revision"="905bde9da31110a4bb776761a921a6b4e6b12a93" "build-date"="2026-08-10T16:55:47Z" "architecture"="x86_64" "vcs-ref"="905bde9da31110a4bb776761a921a6b4e6b12a93" "vcs-type"="git" "release"="1786380870"org.opencontainers.image.created=2026-08-10T16:55:47Z,org.opencontainers.image.revision=905bde9da31110a4bb776761a921a6b4e6b12a93
# Tue, 11 Aug 2026 17:51:40 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 11 Aug 2026 17:51:40 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 17:51:40 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 11 Aug 2026 17:51:40 GMT
WORKDIR /usr/share
# Tue, 11 Aug 2026 17:51:42 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 11 Aug 2026 17:52:03 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.4-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.4 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 11 Aug 2026 17:52:03 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 11 Aug 2026 17:52:03 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 11 Aug 2026 17:52:03 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 11 Aug 2026 17:52:03 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 11 Aug 2026 17:52:03 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 11 Aug 2026 17:52:03 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 11 Aug 2026 17:52:03 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 17:52:03 GMT
WORKDIR /usr/share/logstash
# Tue, 11 Aug 2026 17:52:03 GMT
USER 1000
# Tue, 11 Aug 2026 17:52:03 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 11 Aug 2026 17:52:03 GMT
LABEL org.label-schema.build-date=2026-07-14T20:10:10+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-14T20:10:10+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 11 Aug 2026 17:52:03 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:2b8131e88da7bc7239bd3e4fd72821791bec3c3a93924daef20a3a2e88e4a3d3`  
		Last Modified: Mon, 10 Aug 2026 18:10:48 GMT  
		Size: 40.7 MB (40708738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65731afcd47bde3566a6ca01b7fd18c65c12849ca4419916994184a4b2c666fd`  
		Last Modified: Tue, 11 Aug 2026 17:52:41 GMT  
		Size: 4.8 MB (4771570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de77c3c4d104b9436d7260c5304bcb09d6d26bba0b02196ce72c75e9ba18d38`  
		Last Modified: Tue, 11 Aug 2026 17:52:51 GMT  
		Size: 479.5 MB (479504384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3303dade81747760e332c08e7378cb15f502019e60661a068528ea3593776efe`  
		Last Modified: Tue, 11 Aug 2026 17:52:41 GMT  
		Size: 6.4 KB (6366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:239176038b4bea1180413cc53cf9648ff9cd7443c4313cb0bf7b52b94bdd6361`  
		Last Modified: Tue, 11 Aug 2026 17:52:41 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f042f83e6df3dd57e36736511a1aebdb6a20957e35b9cf074b20efdf01073de`  
		Last Modified: Tue, 11 Aug 2026 17:52:42 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593b1d056fc563aac7aded15013720cd746d3fa3b3ddd2f3e2fff604c03d650d`  
		Last Modified: Tue, 11 Aug 2026 17:52:43 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f958a2a3fbda6c3fc5ee1f60d614243823f2acd89bde11a88c3bed46541b09d0`  
		Last Modified: Tue, 11 Aug 2026 17:52:43 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc7d95cc465f4453eb3be3acfd77108440022c06b3cb81babdb6a242dab58f59`  
		Last Modified: Tue, 11 Aug 2026 17:52:44 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:123b38963b7407e69b1529180092a478c8570fd4c1dcf7b993a179bd47985381`  
		Last Modified: Tue, 11 Aug 2026 17:52:44 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.4` - unknown; unknown

```console
$ docker pull logstash@sha256:a2c2b6540524cfc22c0c9366cf838791a8fcaf68faf040ac03ab8a4a2196837f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2143448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baf3cce2db90bdc8d702267a62680cfabfc063c0b07232a2da9f044ea19c7c7d`

```dockerfile
```

-	Layers:
	-	`sha256:31b0d987d8fe2d66a48599ef6455cd2e0e777b6fa86c2c1ac32a70370421740f`  
		Last Modified: Tue, 11 Aug 2026 17:52:42 GMT  
		Size: 2.1 MB (2113248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f7133fb5f27b312d6be1733313124628c8fc1fbcb9d698ff87681d361ce7095`  
		Last Modified: Tue, 11 Aug 2026 17:52:41 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.4` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:18c4d50d6ed93bb0d711c3aa771f430efd89883d355527d23dad234c4aed0005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **521.6 MB (521613931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcf1d18abe997d6d674585099f13156fdcce23864a41c48dfdb4e7a232a567ac`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 10 Aug 2026 16:58:36 GMT
ENV container oci
# Mon, 10 Aug 2026 16:58:37 GMT
COPY dir:a29571d1d7f0219756ea4cbeea7cbd2d7c70f920d886563530efb6b5f51db754 in /      
# Mon, 10 Aug 2026 16:58:37 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 16:58:37 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 16:58:37 GMT
COPY dir:affb4b0d326dc89d183bd019c6447bd9c3122f330427c74027adfef3eaf39c3c in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 16:58:37 GMT
COPY dir:affb4b0d326dc89d183bd019c6447bd9c3122f330427c74027adfef3eaf39c3c in /root/buildinfo/      
# Mon, 10 Aug 2026 16:58:37 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T16:58:14Z" "org.opencontainers.image.revision"="905bde9da31110a4bb776761a921a6b4e6b12a93" "build-date"="2026-08-10T16:58:14Z" "architecture"="aarch64" "vcs-ref"="905bde9da31110a4bb776761a921a6b4e6b12a93" "vcs-type"="git" "release"="1786380870"org.opencontainers.image.created=2026-08-10T16:58:14Z,org.opencontainers.image.revision=905bde9da31110a4bb776761a921a6b4e6b12a93
# Tue, 11 Aug 2026 19:08:39 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 11 Aug 2026 19:08:39 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 19:08:39 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Tue, 11 Aug 2026 19:08:39 GMT
WORKDIR /usr/share
# Tue, 11 Aug 2026 19:08:41 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Tue, 11 Aug 2026 19:09:15 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.4-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.4 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Tue, 11 Aug 2026 19:09:15 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Tue, 11 Aug 2026 19:09:15 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Tue, 11 Aug 2026 19:09:15 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Tue, 11 Aug 2026 19:09:15 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Tue, 11 Aug 2026 19:09:15 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Tue, 11 Aug 2026 19:09:15 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Tue, 11 Aug 2026 19:09:15 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Tue, 11 Aug 2026 19:09:15 GMT
WORKDIR /usr/share/logstash
# Tue, 11 Aug 2026 19:09:15 GMT
USER 1000
# Tue, 11 Aug 2026 19:09:15 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Tue, 11 Aug 2026 19:09:15 GMT
LABEL org.label-schema.build-date=2026-07-14T20:10:10+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.4 org.opencontainers.image.created=2026-07-14T20:10:10+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.4 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Tue, 11 Aug 2026 19:09:15 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:e3f9ee4410f580b6aa25583df525121fb62e969983ca4535073d9018d260fec1`  
		Last Modified: Mon, 10 Aug 2026 18:10:53 GMT  
		Size: 38.8 MB (38791667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d4fd125a1cee86c1bdd1e6fbc1e680f69877bc5f4557fd0e8437c8da8ebde0`  
		Last Modified: Tue, 11 Aug 2026 19:09:57 GMT  
		Size: 4.8 MB (4758243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17080f68d179007e8d999d7ad180d352f221686c4bb4cdbd082af203e938f968`  
		Last Modified: Tue, 11 Aug 2026 19:10:06 GMT  
		Size: 477.8 MB (477799222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1565687f0506a241ad75803fedff7209e1c9a2431131c0a48fd61aa48c3f107d`  
		Last Modified: Tue, 11 Aug 2026 19:09:56 GMT  
		Size: 6.4 KB (6364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afb2013f74360991212f06702cedc9a13bc1588d354dce7686dc5970c2237fc`  
		Last Modified: Tue, 11 Aug 2026 19:09:56 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f09304bae9bf51a3e504d778ff208618cd3e986003b9f53cf4152c709256bc`  
		Last Modified: Tue, 11 Aug 2026 19:09:58 GMT  
		Size: 351.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f47b3624e0081b832ef81e58a95d5c982392b0b5dbe9d167c0b51be34112dac4`  
		Last Modified: Tue, 11 Aug 2026 19:09:58 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d80018c0e9e775bb7d2b893186af639ba2247a9e3706aada28229872a339547`  
		Last Modified: Tue, 11 Aug 2026 19:09:58 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:964ed50c671679a7dfecd02c8519dfa94bd41fba1650749708171b236aecfc72`  
		Last Modified: Tue, 11 Aug 2026 19:09:59 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed08b0961de084c25aec618a665ab49ecd26a558bb72995ca5e61d471bd4490`  
		Last Modified: Tue, 11 Aug 2026 19:09:59 GMT  
		Size: 709.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.4` - unknown; unknown

```console
$ docker pull logstash@sha256:6cb069595cac6a90baf6012379eef403b2acd68e2a36ec1a723db0fa218fb315
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2142312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:699addf580f58cd3f8a77e055ed0e1b27c48777ba20e54a2bf7030db0f897fdb`

```dockerfile
```

-	Layers:
	-	`sha256:311f509ac65a7b5e32a270a8bd6e54bc4400d203cb6a1ebbb0d8aa7e786f1e1e`  
		Last Modified: Tue, 11 Aug 2026 19:09:56 GMT  
		Size: 2.1 MB (2112036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:653791211a7671d599cbd23be417effa994b8f50acf48801537c069fc3e404af`  
		Last Modified: Tue, 11 Aug 2026 19:09:56 GMT  
		Size: 30.3 KB (30276 bytes)  
		MIME: application/vnd.in-toto+json
