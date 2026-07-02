<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kong`

-	[`kong:3`](#kong3)
-	[`kong:3.4`](#kong34)
-	[`kong:3.4-ubuntu`](#kong34-ubuntu)
-	[`kong:3.4.2`](#kong342)
-	[`kong:3.4.2-ubuntu`](#kong342-ubuntu)
-	[`kong:3.8`](#kong38)
-	[`kong:3.8-ubuntu`](#kong38-ubuntu)
-	[`kong:3.8.0`](#kong380)
-	[`kong:3.8.0-ubuntu`](#kong380-ubuntu)
-	[`kong:3.9`](#kong39)
-	[`kong:3.9-ubuntu`](#kong39-ubuntu)
-	[`kong:3.9.3`](#kong393)
-	[`kong:3.9.3-ubuntu`](#kong393-ubuntu)
-	[`kong:latest`](#konglatest)
-	[`kong:ubuntu`](#kongubuntu)

## `kong:3`

```console
$ docker pull kong@sha256:62721edc9669e2a96fe9d188ab8950b9105e69abb033129624a72d3e10da6777
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3` - linux; amd64

```console
$ docker pull kong@sha256:9cb202032ceec57f7f170e9bcc4e60f9231ea815492451ea60008e684c3d01b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122838211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3d259b7e85d8dd1893ed34500e7887355018b8eb00fd3b2286b5f16fd0f02f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:52 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:29:52 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:29:52 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:29:52 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:29:52 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:29:52 GMT
ENV KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Thu, 02 Jul 2026 02:30:16 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:30:16 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:30:16 GMT
USER kong
# Thu, 02 Jul 2026 02:30:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:30:16 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:30:16 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:30:16 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:30:16 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dde147da0d95adc75ebd87dc8537272d720b33fe2475ffdb52668dd7f0dbae9`  
		Last Modified: Thu, 02 Jul 2026 02:30:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a35fd25d80aa32f56a98b1040b31ee3c99e16e4ebe8df344cfbc2f5288cc61`  
		Last Modified: Thu, 02 Jul 2026 02:30:37 GMT  
		Size: 93.1 MB (93101324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b9f3c8656bd65be604130ea0e60265989b52e06fa130eeaf603e99b98a5c38`  
		Last Modified: Thu, 02 Jul 2026 02:30:34 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3` - unknown; unknown

```console
$ docker pull kong@sha256:eaca2ba68078356641897ead87db9f140d0be5f544885ea6d4e392bce6fffd79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ef83efdd0caf5db8f619539bb5145128d4479429083b34db4af0dbbe7bdb19`

```dockerfile
```

-	Layers:
	-	`sha256:6061662bf04fa59f3f4feb1181dd1428d50ff45be0848f674e18a39a80e5ccd5`  
		Last Modified: Thu, 02 Jul 2026 02:30:34 GMT  
		Size: 5.4 MB (5448573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e54da230467dabe64c3dba081a64bd864cea0ca2ca5a60d19c8bf3c8fe11be48`  
		Last Modified: Thu, 02 Jul 2026 02:30:34 GMT  
		Size: 16.2 KB (16217 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:f3ec49b408645b9d7ade0a0d1803c887ee89baf26c1f483e9755f6996b61b82b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121259157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f86ecb80f30237dab9d44b0be0da6e28a9947c58ed564d40962fd0cdb990911b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:28:33 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:28:33 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:28:33 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:28:33 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:28:33 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:28:33 GMT
ARG KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:28:33 GMT
ENV KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:28:33 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Thu, 02 Jul 2026 02:28:33 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Thu, 02 Jul 2026 02:28:56 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:28:57 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:28:57 GMT
USER kong
# Thu, 02 Jul 2026 02:28:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:28:57 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:28:57 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:28:57 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:28:57 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cbb524c60de163002b8f1869ad822c3ce5405a5c9f2200d91e67511d3037073`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f780349bd339c698fa3a9214d9081bf9004dc16c124d60e97d7c32410397e488`  
		Last Modified: Thu, 02 Jul 2026 02:29:19 GMT  
		Size: 92.4 MB (92373690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c753b4e3e23a848649ebd51f44645a6d4078f6ed7a1927766db42d190d36525`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3` - unknown; unknown

```console
$ docker pull kong@sha256:82ec8c2cc40f3077aa4b7fcaae24a8f9e7825c752a1bd92044976d57af341ad2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb240bc063f2f5f7f2ef34e6b5d7d28a108db6fd0089517378798d42bb7724ae`

```dockerfile
```

-	Layers:
	-	`sha256:a0e87c162d35e70087c3e4dd2f24ca133ded6327244ca767290097ccd2b81966`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 5.5 MB (5455740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:427f6cabadccfbb0c5f88b01b9e37557668063d01c3ff42d2d462d3db630431d`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4`

```console
$ docker pull kong@sha256:f4f001c0b638342beecdf45e25ebce1edf80417c03b7f88f9484015b7d6da9fc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4` - linux; amd64

```console
$ docker pull kong@sha256:ba1be4492d978f71fdd5034e77279dcb1c8caf622b8cbc94d50893452deda8bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92441095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a93c5733c3c86799db2f74c3753bfff002e0753b5880d79159dd6c10370696cc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:57 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:29:57 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:29:57 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:29:57 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:29:57 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:29:57 GMT
ARG KONG_VERSION=3.4.2
# Thu, 02 Jul 2026 02:29:57 GMT
ENV KONG_VERSION=3.4.2
# Thu, 02 Jul 2026 02:29:57 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Thu, 02 Jul 2026 02:29:57 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Thu, 02 Jul 2026 02:30:15 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:30:15 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:30:15 GMT
USER kong
# Thu, 02 Jul 2026 02:30:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:30:15 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:30:15 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:30:15 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:30:15 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9392860cc64c23a3c668ba1e9dc8eac267298b7ece7091e000686a3036188199`  
		Last Modified: Thu, 02 Jul 2026 02:30:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f6dfbe27eb2386453aa6501c67b914f0ce40694bbd2c54007a8a98077dec52a`  
		Last Modified: Thu, 02 Jul 2026 02:30:31 GMT  
		Size: 62.7 MB (62700933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:700158946f7b2c025e1709956ab13646f522a4c83ec75979adc09779f14c4a8c`  
		Last Modified: Thu, 02 Jul 2026 02:30:29 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4` - unknown; unknown

```console
$ docker pull kong@sha256:d36f6ab61d34751f85849a7672ef40857b0d325c27ebbd1cfc1e8575a9cdef25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6061993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ccb4521c81098a2bf3adc864636769e252e76c1caf9cee4c8be16363e46210`

```dockerfile
```

-	Layers:
	-	`sha256:a71496801b9189c75f8234b1141efe58440a4fb2e7de66c24d4a7965fd04b5b1`  
		Last Modified: Thu, 02 Jul 2026 02:30:30 GMT  
		Size: 6.0 MB (6046647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d540fcff032e02d25665514b65d69d2529999a4070982c267f66722f2907d18`  
		Last Modified: Thu, 02 Jul 2026 02:30:29 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:d720770a0804f56fc4b31a80bc5cde8ff2b93e109994623dc5be3a4f6f2035d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88782967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f78d026ea635c72bf803c5ea46261bc20668a2f84112a4c33578335ae8d62697`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:00 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:29:00 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:29:00 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:29:00 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:29:00 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:29:00 GMT
ARG KONG_VERSION=3.4.2
# Thu, 02 Jul 2026 02:29:00 GMT
ENV KONG_VERSION=3.4.2
# Thu, 02 Jul 2026 02:29:00 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Thu, 02 Jul 2026 02:29:00 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Thu, 02 Jul 2026 02:29:19 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:29:19 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:29:19 GMT
USER kong
# Thu, 02 Jul 2026 02:29:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:29:19 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:29:19 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:29:19 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:29:19 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:796fa61b8a871bbee180a6cf3e9d26de4e6b3c778f304c90ebf733d52dd162bd`  
		Last Modified: Thu, 02 Jul 2026 02:29:34 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a87b61895b09036f040685730481b398bd7d7fa5efcc507fec50ae34a6832fc`  
		Last Modified: Thu, 02 Jul 2026 02:29:36 GMT  
		Size: 61.2 MB (61168500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42ef59fa3acfd904fb8f81b780fdea89b63f4ab3e1866c42beeede435b73dc20`  
		Last Modified: Thu, 02 Jul 2026 02:29:34 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4` - unknown; unknown

```console
$ docker pull kong@sha256:826bd4c5fa1c5554c6a8a3760c63724b3a50a1321577bf86e461c71b57ef2aeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6040175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7fa51686a4c07a23e93fbd39cb131546c957e69146290eb7ce27f0954b60ea7`

```dockerfile
```

-	Layers:
	-	`sha256:029cca2290792857a56c2906c45127f04f041f263bd4ae5b8ec91b967e01d000`  
		Last Modified: Thu, 02 Jul 2026 02:29:34 GMT  
		Size: 6.0 MB (6024726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e0b7af9b33c5356c4223a086bd139a4a80ab93a85867527037c88a3c3cd028f`  
		Last Modified: Thu, 02 Jul 2026 02:29:34 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4-ubuntu`

```console
$ docker pull kong@sha256:f4f001c0b638342beecdf45e25ebce1edf80417c03b7f88f9484015b7d6da9fc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:ba1be4492d978f71fdd5034e77279dcb1c8caf622b8cbc94d50893452deda8bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92441095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a93c5733c3c86799db2f74c3753bfff002e0753b5880d79159dd6c10370696cc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:57 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:29:57 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:29:57 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:29:57 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:29:57 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:29:57 GMT
ARG KONG_VERSION=3.4.2
# Thu, 02 Jul 2026 02:29:57 GMT
ENV KONG_VERSION=3.4.2
# Thu, 02 Jul 2026 02:29:57 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Thu, 02 Jul 2026 02:29:57 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Thu, 02 Jul 2026 02:30:15 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:30:15 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:30:15 GMT
USER kong
# Thu, 02 Jul 2026 02:30:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:30:15 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:30:15 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:30:15 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:30:15 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9392860cc64c23a3c668ba1e9dc8eac267298b7ece7091e000686a3036188199`  
		Last Modified: Thu, 02 Jul 2026 02:30:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f6dfbe27eb2386453aa6501c67b914f0ce40694bbd2c54007a8a98077dec52a`  
		Last Modified: Thu, 02 Jul 2026 02:30:31 GMT  
		Size: 62.7 MB (62700933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:700158946f7b2c025e1709956ab13646f522a4c83ec75979adc09779f14c4a8c`  
		Last Modified: Thu, 02 Jul 2026 02:30:29 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:d36f6ab61d34751f85849a7672ef40857b0d325c27ebbd1cfc1e8575a9cdef25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6061993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ccb4521c81098a2bf3adc864636769e252e76c1caf9cee4c8be16363e46210`

```dockerfile
```

-	Layers:
	-	`sha256:a71496801b9189c75f8234b1141efe58440a4fb2e7de66c24d4a7965fd04b5b1`  
		Last Modified: Thu, 02 Jul 2026 02:30:30 GMT  
		Size: 6.0 MB (6046647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d540fcff032e02d25665514b65d69d2529999a4070982c267f66722f2907d18`  
		Last Modified: Thu, 02 Jul 2026 02:30:29 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:d720770a0804f56fc4b31a80bc5cde8ff2b93e109994623dc5be3a4f6f2035d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88782967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f78d026ea635c72bf803c5ea46261bc20668a2f84112a4c33578335ae8d62697`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:00 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:29:00 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:29:00 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:29:00 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:29:00 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:29:00 GMT
ARG KONG_VERSION=3.4.2
# Thu, 02 Jul 2026 02:29:00 GMT
ENV KONG_VERSION=3.4.2
# Thu, 02 Jul 2026 02:29:00 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Thu, 02 Jul 2026 02:29:00 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Thu, 02 Jul 2026 02:29:19 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:29:19 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:29:19 GMT
USER kong
# Thu, 02 Jul 2026 02:29:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:29:19 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:29:19 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:29:19 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:29:19 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:796fa61b8a871bbee180a6cf3e9d26de4e6b3c778f304c90ebf733d52dd162bd`  
		Last Modified: Thu, 02 Jul 2026 02:29:34 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a87b61895b09036f040685730481b398bd7d7fa5efcc507fec50ae34a6832fc`  
		Last Modified: Thu, 02 Jul 2026 02:29:36 GMT  
		Size: 61.2 MB (61168500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42ef59fa3acfd904fb8f81b780fdea89b63f4ab3e1866c42beeede435b73dc20`  
		Last Modified: Thu, 02 Jul 2026 02:29:34 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:826bd4c5fa1c5554c6a8a3760c63724b3a50a1321577bf86e461c71b57ef2aeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6040175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7fa51686a4c07a23e93fbd39cb131546c957e69146290eb7ce27f0954b60ea7`

```dockerfile
```

-	Layers:
	-	`sha256:029cca2290792857a56c2906c45127f04f041f263bd4ae5b8ec91b967e01d000`  
		Last Modified: Thu, 02 Jul 2026 02:29:34 GMT  
		Size: 6.0 MB (6024726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e0b7af9b33c5356c4223a086bd139a4a80ab93a85867527037c88a3c3cd028f`  
		Last Modified: Thu, 02 Jul 2026 02:29:34 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4.2`

```console
$ docker pull kong@sha256:f4f001c0b638342beecdf45e25ebce1edf80417c03b7f88f9484015b7d6da9fc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4.2` - linux; amd64

```console
$ docker pull kong@sha256:ba1be4492d978f71fdd5034e77279dcb1c8caf622b8cbc94d50893452deda8bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92441095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a93c5733c3c86799db2f74c3753bfff002e0753b5880d79159dd6c10370696cc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:57 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:29:57 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:29:57 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:29:57 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:29:57 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:29:57 GMT
ARG KONG_VERSION=3.4.2
# Thu, 02 Jul 2026 02:29:57 GMT
ENV KONG_VERSION=3.4.2
# Thu, 02 Jul 2026 02:29:57 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Thu, 02 Jul 2026 02:29:57 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Thu, 02 Jul 2026 02:30:15 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:30:15 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:30:15 GMT
USER kong
# Thu, 02 Jul 2026 02:30:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:30:15 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:30:15 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:30:15 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:30:15 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9392860cc64c23a3c668ba1e9dc8eac267298b7ece7091e000686a3036188199`  
		Last Modified: Thu, 02 Jul 2026 02:30:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f6dfbe27eb2386453aa6501c67b914f0ce40694bbd2c54007a8a98077dec52a`  
		Last Modified: Thu, 02 Jul 2026 02:30:31 GMT  
		Size: 62.7 MB (62700933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:700158946f7b2c025e1709956ab13646f522a4c83ec75979adc09779f14c4a8c`  
		Last Modified: Thu, 02 Jul 2026 02:30:29 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2` - unknown; unknown

```console
$ docker pull kong@sha256:d36f6ab61d34751f85849a7672ef40857b0d325c27ebbd1cfc1e8575a9cdef25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6061993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ccb4521c81098a2bf3adc864636769e252e76c1caf9cee4c8be16363e46210`

```dockerfile
```

-	Layers:
	-	`sha256:a71496801b9189c75f8234b1141efe58440a4fb2e7de66c24d4a7965fd04b5b1`  
		Last Modified: Thu, 02 Jul 2026 02:30:30 GMT  
		Size: 6.0 MB (6046647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d540fcff032e02d25665514b65d69d2529999a4070982c267f66722f2907d18`  
		Last Modified: Thu, 02 Jul 2026 02:30:29 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4.2` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:d720770a0804f56fc4b31a80bc5cde8ff2b93e109994623dc5be3a4f6f2035d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88782967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f78d026ea635c72bf803c5ea46261bc20668a2f84112a4c33578335ae8d62697`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:00 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:29:00 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:29:00 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:29:00 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:29:00 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:29:00 GMT
ARG KONG_VERSION=3.4.2
# Thu, 02 Jul 2026 02:29:00 GMT
ENV KONG_VERSION=3.4.2
# Thu, 02 Jul 2026 02:29:00 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Thu, 02 Jul 2026 02:29:00 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Thu, 02 Jul 2026 02:29:19 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:29:19 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:29:19 GMT
USER kong
# Thu, 02 Jul 2026 02:29:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:29:19 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:29:19 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:29:19 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:29:19 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:796fa61b8a871bbee180a6cf3e9d26de4e6b3c778f304c90ebf733d52dd162bd`  
		Last Modified: Thu, 02 Jul 2026 02:29:34 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a87b61895b09036f040685730481b398bd7d7fa5efcc507fec50ae34a6832fc`  
		Last Modified: Thu, 02 Jul 2026 02:29:36 GMT  
		Size: 61.2 MB (61168500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42ef59fa3acfd904fb8f81b780fdea89b63f4ab3e1866c42beeede435b73dc20`  
		Last Modified: Thu, 02 Jul 2026 02:29:34 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2` - unknown; unknown

```console
$ docker pull kong@sha256:826bd4c5fa1c5554c6a8a3760c63724b3a50a1321577bf86e461c71b57ef2aeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6040175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7fa51686a4c07a23e93fbd39cb131546c957e69146290eb7ce27f0954b60ea7`

```dockerfile
```

-	Layers:
	-	`sha256:029cca2290792857a56c2906c45127f04f041f263bd4ae5b8ec91b967e01d000`  
		Last Modified: Thu, 02 Jul 2026 02:29:34 GMT  
		Size: 6.0 MB (6024726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e0b7af9b33c5356c4223a086bd139a4a80ab93a85867527037c88a3c3cd028f`  
		Last Modified: Thu, 02 Jul 2026 02:29:34 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4.2-ubuntu`

```console
$ docker pull kong@sha256:f4f001c0b638342beecdf45e25ebce1edf80417c03b7f88f9484015b7d6da9fc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4.2-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:ba1be4492d978f71fdd5034e77279dcb1c8caf622b8cbc94d50893452deda8bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92441095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a93c5733c3c86799db2f74c3753bfff002e0753b5880d79159dd6c10370696cc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:57 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:29:57 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:29:57 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:29:57 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:29:57 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:29:57 GMT
ARG KONG_VERSION=3.4.2
# Thu, 02 Jul 2026 02:29:57 GMT
ENV KONG_VERSION=3.4.2
# Thu, 02 Jul 2026 02:29:57 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Thu, 02 Jul 2026 02:29:57 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Thu, 02 Jul 2026 02:30:15 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:30:15 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:30:15 GMT
USER kong
# Thu, 02 Jul 2026 02:30:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:30:15 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:30:15 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:30:15 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:30:15 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9392860cc64c23a3c668ba1e9dc8eac267298b7ece7091e000686a3036188199`  
		Last Modified: Thu, 02 Jul 2026 02:30:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f6dfbe27eb2386453aa6501c67b914f0ce40694bbd2c54007a8a98077dec52a`  
		Last Modified: Thu, 02 Jul 2026 02:30:31 GMT  
		Size: 62.7 MB (62700933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:700158946f7b2c025e1709956ab13646f522a4c83ec75979adc09779f14c4a8c`  
		Last Modified: Thu, 02 Jul 2026 02:30:29 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:d36f6ab61d34751f85849a7672ef40857b0d325c27ebbd1cfc1e8575a9cdef25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6061993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ccb4521c81098a2bf3adc864636769e252e76c1caf9cee4c8be16363e46210`

```dockerfile
```

-	Layers:
	-	`sha256:a71496801b9189c75f8234b1141efe58440a4fb2e7de66c24d4a7965fd04b5b1`  
		Last Modified: Thu, 02 Jul 2026 02:30:30 GMT  
		Size: 6.0 MB (6046647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d540fcff032e02d25665514b65d69d2529999a4070982c267f66722f2907d18`  
		Last Modified: Thu, 02 Jul 2026 02:30:29 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4.2-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:d720770a0804f56fc4b31a80bc5cde8ff2b93e109994623dc5be3a4f6f2035d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88782967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f78d026ea635c72bf803c5ea46261bc20668a2f84112a4c33578335ae8d62697`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:00 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:29:00 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:29:00 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:29:00 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:29:00 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:29:00 GMT
ARG KONG_VERSION=3.4.2
# Thu, 02 Jul 2026 02:29:00 GMT
ENV KONG_VERSION=3.4.2
# Thu, 02 Jul 2026 02:29:00 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Thu, 02 Jul 2026 02:29:00 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Thu, 02 Jul 2026 02:29:19 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:29:19 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:29:19 GMT
USER kong
# Thu, 02 Jul 2026 02:29:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:29:19 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:29:19 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:29:19 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:29:19 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:796fa61b8a871bbee180a6cf3e9d26de4e6b3c778f304c90ebf733d52dd162bd`  
		Last Modified: Thu, 02 Jul 2026 02:29:34 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a87b61895b09036f040685730481b398bd7d7fa5efcc507fec50ae34a6832fc`  
		Last Modified: Thu, 02 Jul 2026 02:29:36 GMT  
		Size: 61.2 MB (61168500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42ef59fa3acfd904fb8f81b780fdea89b63f4ab3e1866c42beeede435b73dc20`  
		Last Modified: Thu, 02 Jul 2026 02:29:34 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:826bd4c5fa1c5554c6a8a3760c63724b3a50a1321577bf86e461c71b57ef2aeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6040175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7fa51686a4c07a23e93fbd39cb131546c957e69146290eb7ce27f0954b60ea7`

```dockerfile
```

-	Layers:
	-	`sha256:029cca2290792857a56c2906c45127f04f041f263bd4ae5b8ec91b967e01d000`  
		Last Modified: Thu, 02 Jul 2026 02:29:34 GMT  
		Size: 6.0 MB (6024726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e0b7af9b33c5356c4223a086bd139a4a80ab93a85867527037c88a3c3cd028f`  
		Last Modified: Thu, 02 Jul 2026 02:29:34 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8`

```console
$ docker pull kong@sha256:dd6cd1d94a7aae8c5a4d245ccbee6b81230d41a4312d76d076c4e9c6db65611c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8` - linux; amd64

```console
$ docker pull kong@sha256:0dbd72dc596763758e9f8ada732648ef087f256da07b304efca269d50545de00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117698943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e19ff5d1543f42b0562fea8a1446155c2903cdab8572b9f96230054ff7a7da9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:52 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:29:52 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:29:52 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:29:52 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:29:52 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_VERSION=3.8.0
# Thu, 02 Jul 2026 02:29:52 GMT
ENV KONG_VERSION=3.8.0
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Thu, 02 Jul 2026 02:30:13 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:30:13 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:30:13 GMT
USER kong
# Thu, 02 Jul 2026 02:30:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:30:13 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:30:13 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:30:13 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:30:13 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dde147da0d95adc75ebd87dc8537272d720b33fe2475ffdb52668dd7f0dbae9`  
		Last Modified: Thu, 02 Jul 2026 02:30:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facf8c32eeeb18046a4b9b51301698c023fcd3cf7f25b42eb29ae32aeada7ee6`  
		Last Modified: Thu, 02 Jul 2026 02:30:33 GMT  
		Size: 88.0 MB (87958781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6401ab060b60846ffc737b795a2e37ca31acda28640bc1024776d4c3a630cec`  
		Last Modified: Thu, 02 Jul 2026 02:30:30 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8` - unknown; unknown

```console
$ docker pull kong@sha256:4c4993db0015db3854ff2c02250c918ffec242270f51a3fd3cafda5d99634678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a7fbdd8c0baef86e5be3957f68d50f33e2dd2440bf6519362abb8abb6ea86f`

```dockerfile
```

-	Layers:
	-	`sha256:f4f5eaa0d193e1f3084b1b3a2e28a67143d333a409efd879e158c132bedc5706`  
		Last Modified: Thu, 02 Jul 2026 02:30:31 GMT  
		Size: 5.3 MB (5346444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8f73fa93a4cb9eb6c0f077d06b60b8a4b6bd2f9cd58ad7c33544e251c67816f`  
		Last Modified: Thu, 02 Jul 2026 02:30:30 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:57ab458d014eff58313490647b43145aeefe82b8e8f64cc79819c7c6e2f834f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114893679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90249fd1aee1f20c76fb97a0e928cb7a03bf86c630228488025ee13478308dce`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:00 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:29:00 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:29:00 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:29:00 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:29:00 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:29:00 GMT
ARG KONG_VERSION=3.8.0
# Thu, 02 Jul 2026 02:29:00 GMT
ENV KONG_VERSION=3.8.0
# Thu, 02 Jul 2026 02:29:00 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Thu, 02 Jul 2026 02:29:00 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Thu, 02 Jul 2026 02:29:23 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:29:23 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:29:23 GMT
USER kong
# Thu, 02 Jul 2026 02:29:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:29:23 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:29:23 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:29:23 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:29:23 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a22922b8d8f297ad60bc94f3021af638e57549b62808b05362baa9b036c46aa0`  
		Last Modified: Thu, 02 Jul 2026 02:29:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04bbc0af2cf614c5ae8a2ce281ae5702a54868414f811bb462d9e3b84c61affb`  
		Last Modified: Thu, 02 Jul 2026 02:29:43 GMT  
		Size: 87.3 MB (87279210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1966ce9a74bcc5b3ac60fc63ee1ca7f41527dd66372067f3ff5db38ba4e4d539`  
		Last Modified: Thu, 02 Jul 2026 02:29:41 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8` - unknown; unknown

```console
$ docker pull kong@sha256:2b5279cbc553132fd7a4ddf765d83f049c26e29181c9803e8b187db72f3a84a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd05e42fbb45f2c2e7e3d6b366f526f09778cd4ca6c4df7771a22467aabce223`

```dockerfile
```

-	Layers:
	-	`sha256:c036af2e54eae81a48282be1c8b53ee3a08b88bed1f4c6c6a988ecdcb43a42ba`  
		Last Modified: Thu, 02 Jul 2026 02:29:41 GMT  
		Size: 5.4 MB (5352770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bac470b48e271a4c70ec790b5eeb3b88f098a3ea79934d2be9cc8c0a7f1438b2`  
		Last Modified: Thu, 02 Jul 2026 02:29:41 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8-ubuntu`

```console
$ docker pull kong@sha256:dd6cd1d94a7aae8c5a4d245ccbee6b81230d41a4312d76d076c4e9c6db65611c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:0dbd72dc596763758e9f8ada732648ef087f256da07b304efca269d50545de00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117698943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e19ff5d1543f42b0562fea8a1446155c2903cdab8572b9f96230054ff7a7da9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:52 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:29:52 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:29:52 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:29:52 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:29:52 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_VERSION=3.8.0
# Thu, 02 Jul 2026 02:29:52 GMT
ENV KONG_VERSION=3.8.0
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Thu, 02 Jul 2026 02:30:13 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:30:13 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:30:13 GMT
USER kong
# Thu, 02 Jul 2026 02:30:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:30:13 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:30:13 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:30:13 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:30:13 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dde147da0d95adc75ebd87dc8537272d720b33fe2475ffdb52668dd7f0dbae9`  
		Last Modified: Thu, 02 Jul 2026 02:30:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facf8c32eeeb18046a4b9b51301698c023fcd3cf7f25b42eb29ae32aeada7ee6`  
		Last Modified: Thu, 02 Jul 2026 02:30:33 GMT  
		Size: 88.0 MB (87958781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6401ab060b60846ffc737b795a2e37ca31acda28640bc1024776d4c3a630cec`  
		Last Modified: Thu, 02 Jul 2026 02:30:30 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:4c4993db0015db3854ff2c02250c918ffec242270f51a3fd3cafda5d99634678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a7fbdd8c0baef86e5be3957f68d50f33e2dd2440bf6519362abb8abb6ea86f`

```dockerfile
```

-	Layers:
	-	`sha256:f4f5eaa0d193e1f3084b1b3a2e28a67143d333a409efd879e158c132bedc5706`  
		Last Modified: Thu, 02 Jul 2026 02:30:31 GMT  
		Size: 5.3 MB (5346444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8f73fa93a4cb9eb6c0f077d06b60b8a4b6bd2f9cd58ad7c33544e251c67816f`  
		Last Modified: Thu, 02 Jul 2026 02:30:30 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:57ab458d014eff58313490647b43145aeefe82b8e8f64cc79819c7c6e2f834f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114893679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90249fd1aee1f20c76fb97a0e928cb7a03bf86c630228488025ee13478308dce`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:00 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:29:00 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:29:00 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:29:00 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:29:00 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:29:00 GMT
ARG KONG_VERSION=3.8.0
# Thu, 02 Jul 2026 02:29:00 GMT
ENV KONG_VERSION=3.8.0
# Thu, 02 Jul 2026 02:29:00 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Thu, 02 Jul 2026 02:29:00 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Thu, 02 Jul 2026 02:29:23 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:29:23 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:29:23 GMT
USER kong
# Thu, 02 Jul 2026 02:29:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:29:23 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:29:23 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:29:23 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:29:23 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a22922b8d8f297ad60bc94f3021af638e57549b62808b05362baa9b036c46aa0`  
		Last Modified: Thu, 02 Jul 2026 02:29:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04bbc0af2cf614c5ae8a2ce281ae5702a54868414f811bb462d9e3b84c61affb`  
		Last Modified: Thu, 02 Jul 2026 02:29:43 GMT  
		Size: 87.3 MB (87279210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1966ce9a74bcc5b3ac60fc63ee1ca7f41527dd66372067f3ff5db38ba4e4d539`  
		Last Modified: Thu, 02 Jul 2026 02:29:41 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:2b5279cbc553132fd7a4ddf765d83f049c26e29181c9803e8b187db72f3a84a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd05e42fbb45f2c2e7e3d6b366f526f09778cd4ca6c4df7771a22467aabce223`

```dockerfile
```

-	Layers:
	-	`sha256:c036af2e54eae81a48282be1c8b53ee3a08b88bed1f4c6c6a988ecdcb43a42ba`  
		Last Modified: Thu, 02 Jul 2026 02:29:41 GMT  
		Size: 5.4 MB (5352770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bac470b48e271a4c70ec790b5eeb3b88f098a3ea79934d2be9cc8c0a7f1438b2`  
		Last Modified: Thu, 02 Jul 2026 02:29:41 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8.0`

```console
$ docker pull kong@sha256:dd6cd1d94a7aae8c5a4d245ccbee6b81230d41a4312d76d076c4e9c6db65611c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8.0` - linux; amd64

```console
$ docker pull kong@sha256:0dbd72dc596763758e9f8ada732648ef087f256da07b304efca269d50545de00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117698943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e19ff5d1543f42b0562fea8a1446155c2903cdab8572b9f96230054ff7a7da9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:52 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:29:52 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:29:52 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:29:52 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:29:52 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_VERSION=3.8.0
# Thu, 02 Jul 2026 02:29:52 GMT
ENV KONG_VERSION=3.8.0
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Thu, 02 Jul 2026 02:30:13 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:30:13 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:30:13 GMT
USER kong
# Thu, 02 Jul 2026 02:30:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:30:13 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:30:13 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:30:13 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:30:13 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dde147da0d95adc75ebd87dc8537272d720b33fe2475ffdb52668dd7f0dbae9`  
		Last Modified: Thu, 02 Jul 2026 02:30:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facf8c32eeeb18046a4b9b51301698c023fcd3cf7f25b42eb29ae32aeada7ee6`  
		Last Modified: Thu, 02 Jul 2026 02:30:33 GMT  
		Size: 88.0 MB (87958781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6401ab060b60846ffc737b795a2e37ca31acda28640bc1024776d4c3a630cec`  
		Last Modified: Thu, 02 Jul 2026 02:30:30 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0` - unknown; unknown

```console
$ docker pull kong@sha256:4c4993db0015db3854ff2c02250c918ffec242270f51a3fd3cafda5d99634678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a7fbdd8c0baef86e5be3957f68d50f33e2dd2440bf6519362abb8abb6ea86f`

```dockerfile
```

-	Layers:
	-	`sha256:f4f5eaa0d193e1f3084b1b3a2e28a67143d333a409efd879e158c132bedc5706`  
		Last Modified: Thu, 02 Jul 2026 02:30:31 GMT  
		Size: 5.3 MB (5346444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8f73fa93a4cb9eb6c0f077d06b60b8a4b6bd2f9cd58ad7c33544e251c67816f`  
		Last Modified: Thu, 02 Jul 2026 02:30:30 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8.0` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:57ab458d014eff58313490647b43145aeefe82b8e8f64cc79819c7c6e2f834f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114893679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90249fd1aee1f20c76fb97a0e928cb7a03bf86c630228488025ee13478308dce`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:00 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:29:00 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:29:00 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:29:00 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:29:00 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:29:00 GMT
ARG KONG_VERSION=3.8.0
# Thu, 02 Jul 2026 02:29:00 GMT
ENV KONG_VERSION=3.8.0
# Thu, 02 Jul 2026 02:29:00 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Thu, 02 Jul 2026 02:29:00 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Thu, 02 Jul 2026 02:29:23 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:29:23 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:29:23 GMT
USER kong
# Thu, 02 Jul 2026 02:29:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:29:23 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:29:23 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:29:23 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:29:23 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a22922b8d8f297ad60bc94f3021af638e57549b62808b05362baa9b036c46aa0`  
		Last Modified: Thu, 02 Jul 2026 02:29:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04bbc0af2cf614c5ae8a2ce281ae5702a54868414f811bb462d9e3b84c61affb`  
		Last Modified: Thu, 02 Jul 2026 02:29:43 GMT  
		Size: 87.3 MB (87279210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1966ce9a74bcc5b3ac60fc63ee1ca7f41527dd66372067f3ff5db38ba4e4d539`  
		Last Modified: Thu, 02 Jul 2026 02:29:41 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0` - unknown; unknown

```console
$ docker pull kong@sha256:2b5279cbc553132fd7a4ddf765d83f049c26e29181c9803e8b187db72f3a84a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd05e42fbb45f2c2e7e3d6b366f526f09778cd4ca6c4df7771a22467aabce223`

```dockerfile
```

-	Layers:
	-	`sha256:c036af2e54eae81a48282be1c8b53ee3a08b88bed1f4c6c6a988ecdcb43a42ba`  
		Last Modified: Thu, 02 Jul 2026 02:29:41 GMT  
		Size: 5.4 MB (5352770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bac470b48e271a4c70ec790b5eeb3b88f098a3ea79934d2be9cc8c0a7f1438b2`  
		Last Modified: Thu, 02 Jul 2026 02:29:41 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8.0-ubuntu`

```console
$ docker pull kong@sha256:dd6cd1d94a7aae8c5a4d245ccbee6b81230d41a4312d76d076c4e9c6db65611c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8.0-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:0dbd72dc596763758e9f8ada732648ef087f256da07b304efca269d50545de00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117698943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e19ff5d1543f42b0562fea8a1446155c2903cdab8572b9f96230054ff7a7da9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:52 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:29:52 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:29:52 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:29:52 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:29:52 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_VERSION=3.8.0
# Thu, 02 Jul 2026 02:29:52 GMT
ENV KONG_VERSION=3.8.0
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Thu, 02 Jul 2026 02:30:13 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:30:13 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:30:13 GMT
USER kong
# Thu, 02 Jul 2026 02:30:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:30:13 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:30:13 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:30:13 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:30:13 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dde147da0d95adc75ebd87dc8537272d720b33fe2475ffdb52668dd7f0dbae9`  
		Last Modified: Thu, 02 Jul 2026 02:30:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facf8c32eeeb18046a4b9b51301698c023fcd3cf7f25b42eb29ae32aeada7ee6`  
		Last Modified: Thu, 02 Jul 2026 02:30:33 GMT  
		Size: 88.0 MB (87958781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6401ab060b60846ffc737b795a2e37ca31acda28640bc1024776d4c3a630cec`  
		Last Modified: Thu, 02 Jul 2026 02:30:30 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:4c4993db0015db3854ff2c02250c918ffec242270f51a3fd3cafda5d99634678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a7fbdd8c0baef86e5be3957f68d50f33e2dd2440bf6519362abb8abb6ea86f`

```dockerfile
```

-	Layers:
	-	`sha256:f4f5eaa0d193e1f3084b1b3a2e28a67143d333a409efd879e158c132bedc5706`  
		Last Modified: Thu, 02 Jul 2026 02:30:31 GMT  
		Size: 5.3 MB (5346444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8f73fa93a4cb9eb6c0f077d06b60b8a4b6bd2f9cd58ad7c33544e251c67816f`  
		Last Modified: Thu, 02 Jul 2026 02:30:30 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8.0-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:57ab458d014eff58313490647b43145aeefe82b8e8f64cc79819c7c6e2f834f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114893679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90249fd1aee1f20c76fb97a0e928cb7a03bf86c630228488025ee13478308dce`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:00 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:29:00 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:29:00 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:29:00 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:29:00 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:29:00 GMT
ARG KONG_VERSION=3.8.0
# Thu, 02 Jul 2026 02:29:00 GMT
ENV KONG_VERSION=3.8.0
# Thu, 02 Jul 2026 02:29:00 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Thu, 02 Jul 2026 02:29:00 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Thu, 02 Jul 2026 02:29:23 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:29:23 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:29:23 GMT
USER kong
# Thu, 02 Jul 2026 02:29:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:29:23 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:29:23 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:29:23 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:29:23 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a22922b8d8f297ad60bc94f3021af638e57549b62808b05362baa9b036c46aa0`  
		Last Modified: Thu, 02 Jul 2026 02:29:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04bbc0af2cf614c5ae8a2ce281ae5702a54868414f811bb462d9e3b84c61affb`  
		Last Modified: Thu, 02 Jul 2026 02:29:43 GMT  
		Size: 87.3 MB (87279210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1966ce9a74bcc5b3ac60fc63ee1ca7f41527dd66372067f3ff5db38ba4e4d539`  
		Last Modified: Thu, 02 Jul 2026 02:29:41 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:2b5279cbc553132fd7a4ddf765d83f049c26e29181c9803e8b187db72f3a84a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd05e42fbb45f2c2e7e3d6b366f526f09778cd4ca6c4df7771a22467aabce223`

```dockerfile
```

-	Layers:
	-	`sha256:c036af2e54eae81a48282be1c8b53ee3a08b88bed1f4c6c6a988ecdcb43a42ba`  
		Last Modified: Thu, 02 Jul 2026 02:29:41 GMT  
		Size: 5.4 MB (5352770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bac470b48e271a4c70ec790b5eeb3b88f098a3ea79934d2be9cc8c0a7f1438b2`  
		Last Modified: Thu, 02 Jul 2026 02:29:41 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9`

```console
$ docker pull kong@sha256:62721edc9669e2a96fe9d188ab8950b9105e69abb033129624a72d3e10da6777
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9` - linux; amd64

```console
$ docker pull kong@sha256:9cb202032ceec57f7f170e9bcc4e60f9231ea815492451ea60008e684c3d01b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122838211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3d259b7e85d8dd1893ed34500e7887355018b8eb00fd3b2286b5f16fd0f02f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:52 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:29:52 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:29:52 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:29:52 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:29:52 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:29:52 GMT
ENV KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Thu, 02 Jul 2026 02:30:16 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:30:16 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:30:16 GMT
USER kong
# Thu, 02 Jul 2026 02:30:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:30:16 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:30:16 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:30:16 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:30:16 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dde147da0d95adc75ebd87dc8537272d720b33fe2475ffdb52668dd7f0dbae9`  
		Last Modified: Thu, 02 Jul 2026 02:30:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a35fd25d80aa32f56a98b1040b31ee3c99e16e4ebe8df344cfbc2f5288cc61`  
		Last Modified: Thu, 02 Jul 2026 02:30:37 GMT  
		Size: 93.1 MB (93101324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b9f3c8656bd65be604130ea0e60265989b52e06fa130eeaf603e99b98a5c38`  
		Last Modified: Thu, 02 Jul 2026 02:30:34 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9` - unknown; unknown

```console
$ docker pull kong@sha256:eaca2ba68078356641897ead87db9f140d0be5f544885ea6d4e392bce6fffd79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ef83efdd0caf5db8f619539bb5145128d4479429083b34db4af0dbbe7bdb19`

```dockerfile
```

-	Layers:
	-	`sha256:6061662bf04fa59f3f4feb1181dd1428d50ff45be0848f674e18a39a80e5ccd5`  
		Last Modified: Thu, 02 Jul 2026 02:30:34 GMT  
		Size: 5.4 MB (5448573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e54da230467dabe64c3dba081a64bd864cea0ca2ca5a60d19c8bf3c8fe11be48`  
		Last Modified: Thu, 02 Jul 2026 02:30:34 GMT  
		Size: 16.2 KB (16217 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:f3ec49b408645b9d7ade0a0d1803c887ee89baf26c1f483e9755f6996b61b82b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121259157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f86ecb80f30237dab9d44b0be0da6e28a9947c58ed564d40962fd0cdb990911b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:28:33 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:28:33 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:28:33 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:28:33 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:28:33 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:28:33 GMT
ARG KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:28:33 GMT
ENV KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:28:33 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Thu, 02 Jul 2026 02:28:33 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Thu, 02 Jul 2026 02:28:56 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:28:57 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:28:57 GMT
USER kong
# Thu, 02 Jul 2026 02:28:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:28:57 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:28:57 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:28:57 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:28:57 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cbb524c60de163002b8f1869ad822c3ce5405a5c9f2200d91e67511d3037073`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f780349bd339c698fa3a9214d9081bf9004dc16c124d60e97d7c32410397e488`  
		Last Modified: Thu, 02 Jul 2026 02:29:19 GMT  
		Size: 92.4 MB (92373690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c753b4e3e23a848649ebd51f44645a6d4078f6ed7a1927766db42d190d36525`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9` - unknown; unknown

```console
$ docker pull kong@sha256:82ec8c2cc40f3077aa4b7fcaae24a8f9e7825c752a1bd92044976d57af341ad2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb240bc063f2f5f7f2ef34e6b5d7d28a108db6fd0089517378798d42bb7724ae`

```dockerfile
```

-	Layers:
	-	`sha256:a0e87c162d35e70087c3e4dd2f24ca133ded6327244ca767290097ccd2b81966`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 5.5 MB (5455740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:427f6cabadccfbb0c5f88b01b9e37557668063d01c3ff42d2d462d3db630431d`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9-ubuntu`

```console
$ docker pull kong@sha256:62721edc9669e2a96fe9d188ab8950b9105e69abb033129624a72d3e10da6777
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:9cb202032ceec57f7f170e9bcc4e60f9231ea815492451ea60008e684c3d01b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122838211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3d259b7e85d8dd1893ed34500e7887355018b8eb00fd3b2286b5f16fd0f02f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:52 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:29:52 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:29:52 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:29:52 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:29:52 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:29:52 GMT
ENV KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Thu, 02 Jul 2026 02:30:16 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:30:16 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:30:16 GMT
USER kong
# Thu, 02 Jul 2026 02:30:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:30:16 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:30:16 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:30:16 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:30:16 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dde147da0d95adc75ebd87dc8537272d720b33fe2475ffdb52668dd7f0dbae9`  
		Last Modified: Thu, 02 Jul 2026 02:30:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a35fd25d80aa32f56a98b1040b31ee3c99e16e4ebe8df344cfbc2f5288cc61`  
		Last Modified: Thu, 02 Jul 2026 02:30:37 GMT  
		Size: 93.1 MB (93101324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b9f3c8656bd65be604130ea0e60265989b52e06fa130eeaf603e99b98a5c38`  
		Last Modified: Thu, 02 Jul 2026 02:30:34 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:eaca2ba68078356641897ead87db9f140d0be5f544885ea6d4e392bce6fffd79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ef83efdd0caf5db8f619539bb5145128d4479429083b34db4af0dbbe7bdb19`

```dockerfile
```

-	Layers:
	-	`sha256:6061662bf04fa59f3f4feb1181dd1428d50ff45be0848f674e18a39a80e5ccd5`  
		Last Modified: Thu, 02 Jul 2026 02:30:34 GMT  
		Size: 5.4 MB (5448573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e54da230467dabe64c3dba081a64bd864cea0ca2ca5a60d19c8bf3c8fe11be48`  
		Last Modified: Thu, 02 Jul 2026 02:30:34 GMT  
		Size: 16.2 KB (16217 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:f3ec49b408645b9d7ade0a0d1803c887ee89baf26c1f483e9755f6996b61b82b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121259157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f86ecb80f30237dab9d44b0be0da6e28a9947c58ed564d40962fd0cdb990911b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:28:33 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:28:33 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:28:33 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:28:33 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:28:33 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:28:33 GMT
ARG KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:28:33 GMT
ENV KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:28:33 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Thu, 02 Jul 2026 02:28:33 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Thu, 02 Jul 2026 02:28:56 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:28:57 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:28:57 GMT
USER kong
# Thu, 02 Jul 2026 02:28:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:28:57 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:28:57 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:28:57 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:28:57 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cbb524c60de163002b8f1869ad822c3ce5405a5c9f2200d91e67511d3037073`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f780349bd339c698fa3a9214d9081bf9004dc16c124d60e97d7c32410397e488`  
		Last Modified: Thu, 02 Jul 2026 02:29:19 GMT  
		Size: 92.4 MB (92373690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c753b4e3e23a848649ebd51f44645a6d4078f6ed7a1927766db42d190d36525`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:82ec8c2cc40f3077aa4b7fcaae24a8f9e7825c752a1bd92044976d57af341ad2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb240bc063f2f5f7f2ef34e6b5d7d28a108db6fd0089517378798d42bb7724ae`

```dockerfile
```

-	Layers:
	-	`sha256:a0e87c162d35e70087c3e4dd2f24ca133ded6327244ca767290097ccd2b81966`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 5.5 MB (5455740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:427f6cabadccfbb0c5f88b01b9e37557668063d01c3ff42d2d462d3db630431d`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9.3`

```console
$ docker pull kong@sha256:62721edc9669e2a96fe9d188ab8950b9105e69abb033129624a72d3e10da6777
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9.3` - linux; amd64

```console
$ docker pull kong@sha256:9cb202032ceec57f7f170e9bcc4e60f9231ea815492451ea60008e684c3d01b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122838211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3d259b7e85d8dd1893ed34500e7887355018b8eb00fd3b2286b5f16fd0f02f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:52 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:29:52 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:29:52 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:29:52 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:29:52 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:29:52 GMT
ENV KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Thu, 02 Jul 2026 02:30:16 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:30:16 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:30:16 GMT
USER kong
# Thu, 02 Jul 2026 02:30:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:30:16 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:30:16 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:30:16 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:30:16 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dde147da0d95adc75ebd87dc8537272d720b33fe2475ffdb52668dd7f0dbae9`  
		Last Modified: Thu, 02 Jul 2026 02:30:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a35fd25d80aa32f56a98b1040b31ee3c99e16e4ebe8df344cfbc2f5288cc61`  
		Last Modified: Thu, 02 Jul 2026 02:30:37 GMT  
		Size: 93.1 MB (93101324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b9f3c8656bd65be604130ea0e60265989b52e06fa130eeaf603e99b98a5c38`  
		Last Modified: Thu, 02 Jul 2026 02:30:34 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.3` - unknown; unknown

```console
$ docker pull kong@sha256:eaca2ba68078356641897ead87db9f140d0be5f544885ea6d4e392bce6fffd79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ef83efdd0caf5db8f619539bb5145128d4479429083b34db4af0dbbe7bdb19`

```dockerfile
```

-	Layers:
	-	`sha256:6061662bf04fa59f3f4feb1181dd1428d50ff45be0848f674e18a39a80e5ccd5`  
		Last Modified: Thu, 02 Jul 2026 02:30:34 GMT  
		Size: 5.4 MB (5448573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e54da230467dabe64c3dba081a64bd864cea0ca2ca5a60d19c8bf3c8fe11be48`  
		Last Modified: Thu, 02 Jul 2026 02:30:34 GMT  
		Size: 16.2 KB (16217 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9.3` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:f3ec49b408645b9d7ade0a0d1803c887ee89baf26c1f483e9755f6996b61b82b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121259157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f86ecb80f30237dab9d44b0be0da6e28a9947c58ed564d40962fd0cdb990911b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:28:33 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:28:33 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:28:33 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:28:33 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:28:33 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:28:33 GMT
ARG KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:28:33 GMT
ENV KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:28:33 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Thu, 02 Jul 2026 02:28:33 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Thu, 02 Jul 2026 02:28:56 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:28:57 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:28:57 GMT
USER kong
# Thu, 02 Jul 2026 02:28:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:28:57 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:28:57 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:28:57 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:28:57 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cbb524c60de163002b8f1869ad822c3ce5405a5c9f2200d91e67511d3037073`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f780349bd339c698fa3a9214d9081bf9004dc16c124d60e97d7c32410397e488`  
		Last Modified: Thu, 02 Jul 2026 02:29:19 GMT  
		Size: 92.4 MB (92373690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c753b4e3e23a848649ebd51f44645a6d4078f6ed7a1927766db42d190d36525`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.3` - unknown; unknown

```console
$ docker pull kong@sha256:82ec8c2cc40f3077aa4b7fcaae24a8f9e7825c752a1bd92044976d57af341ad2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb240bc063f2f5f7f2ef34e6b5d7d28a108db6fd0089517378798d42bb7724ae`

```dockerfile
```

-	Layers:
	-	`sha256:a0e87c162d35e70087c3e4dd2f24ca133ded6327244ca767290097ccd2b81966`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 5.5 MB (5455740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:427f6cabadccfbb0c5f88b01b9e37557668063d01c3ff42d2d462d3db630431d`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9.3-ubuntu`

```console
$ docker pull kong@sha256:62721edc9669e2a96fe9d188ab8950b9105e69abb033129624a72d3e10da6777
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9.3-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:9cb202032ceec57f7f170e9bcc4e60f9231ea815492451ea60008e684c3d01b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122838211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3d259b7e85d8dd1893ed34500e7887355018b8eb00fd3b2286b5f16fd0f02f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:52 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:29:52 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:29:52 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:29:52 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:29:52 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:29:52 GMT
ENV KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Thu, 02 Jul 2026 02:30:16 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:30:16 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:30:16 GMT
USER kong
# Thu, 02 Jul 2026 02:30:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:30:16 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:30:16 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:30:16 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:30:16 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dde147da0d95adc75ebd87dc8537272d720b33fe2475ffdb52668dd7f0dbae9`  
		Last Modified: Thu, 02 Jul 2026 02:30:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a35fd25d80aa32f56a98b1040b31ee3c99e16e4ebe8df344cfbc2f5288cc61`  
		Last Modified: Thu, 02 Jul 2026 02:30:37 GMT  
		Size: 93.1 MB (93101324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b9f3c8656bd65be604130ea0e60265989b52e06fa130eeaf603e99b98a5c38`  
		Last Modified: Thu, 02 Jul 2026 02:30:34 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.3-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:eaca2ba68078356641897ead87db9f140d0be5f544885ea6d4e392bce6fffd79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ef83efdd0caf5db8f619539bb5145128d4479429083b34db4af0dbbe7bdb19`

```dockerfile
```

-	Layers:
	-	`sha256:6061662bf04fa59f3f4feb1181dd1428d50ff45be0848f674e18a39a80e5ccd5`  
		Last Modified: Thu, 02 Jul 2026 02:30:34 GMT  
		Size: 5.4 MB (5448573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e54da230467dabe64c3dba081a64bd864cea0ca2ca5a60d19c8bf3c8fe11be48`  
		Last Modified: Thu, 02 Jul 2026 02:30:34 GMT  
		Size: 16.2 KB (16217 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9.3-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:f3ec49b408645b9d7ade0a0d1803c887ee89baf26c1f483e9755f6996b61b82b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121259157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f86ecb80f30237dab9d44b0be0da6e28a9947c58ed564d40962fd0cdb990911b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:28:33 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:28:33 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:28:33 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:28:33 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:28:33 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:28:33 GMT
ARG KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:28:33 GMT
ENV KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:28:33 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Thu, 02 Jul 2026 02:28:33 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Thu, 02 Jul 2026 02:28:56 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:28:57 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:28:57 GMT
USER kong
# Thu, 02 Jul 2026 02:28:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:28:57 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:28:57 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:28:57 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:28:57 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cbb524c60de163002b8f1869ad822c3ce5405a5c9f2200d91e67511d3037073`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f780349bd339c698fa3a9214d9081bf9004dc16c124d60e97d7c32410397e488`  
		Last Modified: Thu, 02 Jul 2026 02:29:19 GMT  
		Size: 92.4 MB (92373690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c753b4e3e23a848649ebd51f44645a6d4078f6ed7a1927766db42d190d36525`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.3-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:82ec8c2cc40f3077aa4b7fcaae24a8f9e7825c752a1bd92044976d57af341ad2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb240bc063f2f5f7f2ef34e6b5d7d28a108db6fd0089517378798d42bb7724ae`

```dockerfile
```

-	Layers:
	-	`sha256:a0e87c162d35e70087c3e4dd2f24ca133ded6327244ca767290097ccd2b81966`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 5.5 MB (5455740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:427f6cabadccfbb0c5f88b01b9e37557668063d01c3ff42d2d462d3db630431d`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:latest`

```console
$ docker pull kong@sha256:62721edc9669e2a96fe9d188ab8950b9105e69abb033129624a72d3e10da6777
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:9cb202032ceec57f7f170e9bcc4e60f9231ea815492451ea60008e684c3d01b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122838211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3d259b7e85d8dd1893ed34500e7887355018b8eb00fd3b2286b5f16fd0f02f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:52 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:29:52 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:29:52 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:29:52 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:29:52 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:29:52 GMT
ENV KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Thu, 02 Jul 2026 02:30:16 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:30:16 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:30:16 GMT
USER kong
# Thu, 02 Jul 2026 02:30:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:30:16 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:30:16 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:30:16 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:30:16 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dde147da0d95adc75ebd87dc8537272d720b33fe2475ffdb52668dd7f0dbae9`  
		Last Modified: Thu, 02 Jul 2026 02:30:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a35fd25d80aa32f56a98b1040b31ee3c99e16e4ebe8df344cfbc2f5288cc61`  
		Last Modified: Thu, 02 Jul 2026 02:30:37 GMT  
		Size: 93.1 MB (93101324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b9f3c8656bd65be604130ea0e60265989b52e06fa130eeaf603e99b98a5c38`  
		Last Modified: Thu, 02 Jul 2026 02:30:34 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:latest` - unknown; unknown

```console
$ docker pull kong@sha256:eaca2ba68078356641897ead87db9f140d0be5f544885ea6d4e392bce6fffd79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ef83efdd0caf5db8f619539bb5145128d4479429083b34db4af0dbbe7bdb19`

```dockerfile
```

-	Layers:
	-	`sha256:6061662bf04fa59f3f4feb1181dd1428d50ff45be0848f674e18a39a80e5ccd5`  
		Last Modified: Thu, 02 Jul 2026 02:30:34 GMT  
		Size: 5.4 MB (5448573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e54da230467dabe64c3dba081a64bd864cea0ca2ca5a60d19c8bf3c8fe11be48`  
		Last Modified: Thu, 02 Jul 2026 02:30:34 GMT  
		Size: 16.2 KB (16217 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:latest` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:f3ec49b408645b9d7ade0a0d1803c887ee89baf26c1f483e9755f6996b61b82b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121259157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f86ecb80f30237dab9d44b0be0da6e28a9947c58ed564d40962fd0cdb990911b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:28:33 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:28:33 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:28:33 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:28:33 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:28:33 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:28:33 GMT
ARG KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:28:33 GMT
ENV KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:28:33 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Thu, 02 Jul 2026 02:28:33 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Thu, 02 Jul 2026 02:28:56 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:28:57 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:28:57 GMT
USER kong
# Thu, 02 Jul 2026 02:28:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:28:57 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:28:57 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:28:57 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:28:57 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cbb524c60de163002b8f1869ad822c3ce5405a5c9f2200d91e67511d3037073`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f780349bd339c698fa3a9214d9081bf9004dc16c124d60e97d7c32410397e488`  
		Last Modified: Thu, 02 Jul 2026 02:29:19 GMT  
		Size: 92.4 MB (92373690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c753b4e3e23a848649ebd51f44645a6d4078f6ed7a1927766db42d190d36525`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:latest` - unknown; unknown

```console
$ docker pull kong@sha256:82ec8c2cc40f3077aa4b7fcaae24a8f9e7825c752a1bd92044976d57af341ad2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb240bc063f2f5f7f2ef34e6b5d7d28a108db6fd0089517378798d42bb7724ae`

```dockerfile
```

-	Layers:
	-	`sha256:a0e87c162d35e70087c3e4dd2f24ca133ded6327244ca767290097ccd2b81966`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 5.5 MB (5455740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:427f6cabadccfbb0c5f88b01b9e37557668063d01c3ff42d2d462d3db630431d`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:ubuntu`

```console
$ docker pull kong@sha256:62721edc9669e2a96fe9d188ab8950b9105e69abb033129624a72d3e10da6777
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:9cb202032ceec57f7f170e9bcc4e60f9231ea815492451ea60008e684c3d01b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122838211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3d259b7e85d8dd1893ed34500e7887355018b8eb00fd3b2286b5f16fd0f02f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:29:52 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:29:52 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:29:52 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:29:52 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:29:52 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:29:52 GMT
ENV KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Thu, 02 Jul 2026 02:29:52 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Thu, 02 Jul 2026 02:30:16 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:30:16 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:30:16 GMT
USER kong
# Thu, 02 Jul 2026 02:30:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:30:16 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:30:16 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:30:16 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:30:16 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dde147da0d95adc75ebd87dc8537272d720b33fe2475ffdb52668dd7f0dbae9`  
		Last Modified: Thu, 02 Jul 2026 02:30:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a35fd25d80aa32f56a98b1040b31ee3c99e16e4ebe8df344cfbc2f5288cc61`  
		Last Modified: Thu, 02 Jul 2026 02:30:37 GMT  
		Size: 93.1 MB (93101324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b9f3c8656bd65be604130ea0e60265989b52e06fa130eeaf603e99b98a5c38`  
		Last Modified: Thu, 02 Jul 2026 02:30:34 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:eaca2ba68078356641897ead87db9f140d0be5f544885ea6d4e392bce6fffd79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ef83efdd0caf5db8f619539bb5145128d4479429083b34db4af0dbbe7bdb19`

```dockerfile
```

-	Layers:
	-	`sha256:6061662bf04fa59f3f4feb1181dd1428d50ff45be0848f674e18a39a80e5ccd5`  
		Last Modified: Thu, 02 Jul 2026 02:30:34 GMT  
		Size: 5.4 MB (5448573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e54da230467dabe64c3dba081a64bd864cea0ca2ca5a60d19c8bf3c8fe11be48`  
		Last Modified: Thu, 02 Jul 2026 02:30:34 GMT  
		Size: 16.2 KB (16217 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:f3ec49b408645b9d7ade0a0d1803c887ee89baf26c1f483e9755f6996b61b82b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121259157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f86ecb80f30237dab9d44b0be0da6e28a9947c58ed564d40962fd0cdb990911b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:28:33 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Thu, 02 Jul 2026 02:28:33 GMT
ARG ASSET=ce
# Thu, 02 Jul 2026 02:28:33 GMT
ENV ASSET=ce
# Thu, 02 Jul 2026 02:28:33 GMT
ARG EE_PORTS
# Thu, 02 Jul 2026 02:28:33 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Thu, 02 Jul 2026 02:28:33 GMT
ARG KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:28:33 GMT
ENV KONG_VERSION=3.9.3
# Thu, 02 Jul 2026 02:28:33 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Thu, 02 Jul 2026 02:28:33 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Thu, 02 Jul 2026 02:28:56 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Thu, 02 Jul 2026 02:28:57 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:28:57 GMT
USER kong
# Thu, 02 Jul 2026 02:28:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 02:28:57 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Thu, 02 Jul 2026 02:28:57 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 02:28:57 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Thu, 02 Jul 2026 02:28:57 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cbb524c60de163002b8f1869ad822c3ce5405a5c9f2200d91e67511d3037073`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f780349bd339c698fa3a9214d9081bf9004dc16c124d60e97d7c32410397e488`  
		Last Modified: Thu, 02 Jul 2026 02:29:19 GMT  
		Size: 92.4 MB (92373690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c753b4e3e23a848649ebd51f44645a6d4078f6ed7a1927766db42d190d36525`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:82ec8c2cc40f3077aa4b7fcaae24a8f9e7825c752a1bd92044976d57af341ad2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb240bc063f2f5f7f2ef34e6b5d7d28a108db6fd0089517378798d42bb7724ae`

```dockerfile
```

-	Layers:
	-	`sha256:a0e87c162d35e70087c3e4dd2f24ca133ded6327244ca767290097ccd2b81966`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 5.5 MB (5455740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:427f6cabadccfbb0c5f88b01b9e37557668063d01c3ff42d2d462d3db630431d`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json
