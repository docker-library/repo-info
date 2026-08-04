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
$ docker pull kong@sha256:4d6a4ead594e9bf468d07a54d30a57991904b220403af1a43c5a3679615d11de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3` - linux; amd64

```console
$ docker pull kong@sha256:bcb12565d41caa57d888fa1987fa738b4620af80d6c8ff2a65e8b3f8d527097a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122834955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90f0dded06e4f9435b40494a15064530b5d2a853516d72bbdd261b0286e6936`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 04 Aug 2026 01:41:01 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:01 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:01 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:25 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
USER kong
# Tue, 04 Aug 2026 01:41:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:25 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:25 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:25 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:25 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d4d725cfa50f25062951d74c63bc037448819e0642a2c298b96cfc0bc2782f`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf21ab26fcb5b63c06f602d40d1f985f5cb40b863d9ece0e9a77edc1c3c09d6`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 93.1 MB (93082557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3` - unknown; unknown

```console
$ docker pull kong@sha256:36139acb28e1bac35434c7d7df88206dd25725afa2bcf2b73cd1456019db4fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d8c6c43d40847b3488c3511b447c17d44068c0c03242af4a2350033a2ffcb1`

```dockerfile
```

-	Layers:
	-	`sha256:0ca2eaf2b548542649018887a688210c72e161291891a885ce31c0c2779c967b`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 5.4 MB (5448599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1441190517b475f01b0b113c28f07f1ddb44e606cd6a1241022ce885c99e6b80`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:a4e30e80d764831c6da3370739376fe11d26067eb1acbe320833bc88c64a055f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118887673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31aa54a8c63ab1bbe2b171fd133e36f8882957dc3ba5b7c1875d8500dcbde63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 04 Aug 2026 01:41:02 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:02 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:02 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:27 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
USER kong
# Tue, 04 Aug 2026 01:41:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:27 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:27 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:27 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:27 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c19507edaf13199af40d7ecc8a08ceb2ff7cd9ded5e5fbcbff00eeb919366f`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a285021121a4cec92145b4bd91572fc559b6de489a6a51cafeb2482b488b8d1`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 90.0 MB (89999566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3` - unknown; unknown

```console
$ docker pull kong@sha256:ab6a34b43795c5160783f791f483a53c84a6b45c31be0da7e648446ce0641b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2c1091eb3d69c531a80e3f74d94f56e7232fff1731581eaa40fa69f6d86d1a`

```dockerfile
```

-	Layers:
	-	`sha256:2fd9603dc9c32e73e1bb0aa9e4faa150d9c2ea10858fa7fb1faa857bf96caf4a`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 5.5 MB (5455766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f16695160a8d929a4c046431cb0043a6598355ffd32ee5b0c972d7a2e5e8340d`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4`

```console
$ docker pull kong@sha256:321a2122e24bf8c2694bfc7e1f03dea4a7de57404a93d531942f80c35e710100
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4` - linux; amd64

```console
$ docker pull kong@sha256:3801e9e56c8852dfd568f247c45763fbd453eb216b6dbbd8385bb6e8e7f6dca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92478656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070ef84ea15212115aafe326e4ed585c491ed29defe924aff2f4c1cfbba67958`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:06 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:06 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:06 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:06 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:06 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:06 GMT
ARG KONG_VERSION=3.4.2
# Tue, 04 Aug 2026 01:41:06 GMT
ENV KONG_VERSION=3.4.2
# Tue, 04 Aug 2026 01:41:06 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Tue, 04 Aug 2026 01:41:06 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Tue, 04 Aug 2026 01:41:33 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:33 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:33 GMT
USER kong
# Tue, 04 Aug 2026 01:41:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:33 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:33 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:33 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:33 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98d97fd24c4f5f845831eb99147fb5c26dfe2bc7cd3d6bd9e045bdea740df6f`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4f34f35652412829b13bc3be9220ef0f43726e31a0461b27f47da0ebccd6d61`  
		Last Modified: Tue, 04 Aug 2026 01:41:50 GMT  
		Size: 62.7 MB (62740856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca95a3e82d3cad9101054883bd265ec1c896d8f3a5787f00ca5a7c375ab4e13`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4` - unknown; unknown

```console
$ docker pull kong@sha256:0e1c87620187d371188ed699e7f1bbed26735623c1e8e2d5ee87e9c97251dcb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6061993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f53c310fb1c90768b55efb66b58988bc1666ed5ca8715aaf903765125029d1`

```dockerfile
```

-	Layers:
	-	`sha256:bebcd4df774c5712a1a0d4393d17335c0e7362d83262c815fc85d1e6d341c571`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 6.0 MB (6046647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f5b228cb7559337cb5ef77be26cee44dc94a4135e711a5a015caaa1b22c1e3f`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:d576f6b6cf09227132ab7261dcf174c3e187664dd292de1747192a27a5761ab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88839323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad5746df9e8638384cfa55600567d31ab57c04a07e30587df4670a2e0dacb47b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:11 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:11 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:11 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:11 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:11 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:11 GMT
ARG KONG_VERSION=3.4.2
# Tue, 04 Aug 2026 01:41:11 GMT
ENV KONG_VERSION=3.4.2
# Tue, 04 Aug 2026 01:41:11 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Tue, 04 Aug 2026 01:41:11 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Tue, 04 Aug 2026 01:41:35 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:35 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:35 GMT
USER kong
# Tue, 04 Aug 2026 01:41:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:35 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:35 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:35 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:35 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c7dd5954e047cda95804919ff4dad163fcc1c97638ad21f3c0449a036455394`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca5a265e510892c14deba08961d2045a67a18837277f9e366c9f7dc32a8c1f03`  
		Last Modified: Tue, 04 Aug 2026 01:41:51 GMT  
		Size: 61.2 MB (61218009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb90a58af979b6b6c6d693bdc3eb81e6ae0f4f691b3fd6a2eae5ec9d2eb04c1d`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4` - unknown; unknown

```console
$ docker pull kong@sha256:46cf6ac07668e39142af827b94509bc6ab411202479e48a8d1ad17acbf269738
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6040175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b19e17333942bb3131d2b9ace1f7d93575df79cd55c01822ef1e67f4b8c963e8`

```dockerfile
```

-	Layers:
	-	`sha256:f0e72664c18e3549d91bbffb1eaf5f642112cd1fce7313d571056088fae7347c`  
		Last Modified: Tue, 04 Aug 2026 01:41:50 GMT  
		Size: 6.0 MB (6024726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe79c288d53cbb340524115f1de357d606cd8017409bb346eb4fb939726b05ef`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4-ubuntu`

```console
$ docker pull kong@sha256:321a2122e24bf8c2694bfc7e1f03dea4a7de57404a93d531942f80c35e710100
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:3801e9e56c8852dfd568f247c45763fbd453eb216b6dbbd8385bb6e8e7f6dca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92478656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070ef84ea15212115aafe326e4ed585c491ed29defe924aff2f4c1cfbba67958`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:06 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:06 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:06 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:06 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:06 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:06 GMT
ARG KONG_VERSION=3.4.2
# Tue, 04 Aug 2026 01:41:06 GMT
ENV KONG_VERSION=3.4.2
# Tue, 04 Aug 2026 01:41:06 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Tue, 04 Aug 2026 01:41:06 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Tue, 04 Aug 2026 01:41:33 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:33 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:33 GMT
USER kong
# Tue, 04 Aug 2026 01:41:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:33 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:33 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:33 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:33 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98d97fd24c4f5f845831eb99147fb5c26dfe2bc7cd3d6bd9e045bdea740df6f`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4f34f35652412829b13bc3be9220ef0f43726e31a0461b27f47da0ebccd6d61`  
		Last Modified: Tue, 04 Aug 2026 01:41:50 GMT  
		Size: 62.7 MB (62740856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca95a3e82d3cad9101054883bd265ec1c896d8f3a5787f00ca5a7c375ab4e13`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:0e1c87620187d371188ed699e7f1bbed26735623c1e8e2d5ee87e9c97251dcb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6061993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f53c310fb1c90768b55efb66b58988bc1666ed5ca8715aaf903765125029d1`

```dockerfile
```

-	Layers:
	-	`sha256:bebcd4df774c5712a1a0d4393d17335c0e7362d83262c815fc85d1e6d341c571`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 6.0 MB (6046647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f5b228cb7559337cb5ef77be26cee44dc94a4135e711a5a015caaa1b22c1e3f`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:d576f6b6cf09227132ab7261dcf174c3e187664dd292de1747192a27a5761ab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88839323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad5746df9e8638384cfa55600567d31ab57c04a07e30587df4670a2e0dacb47b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:11 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:11 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:11 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:11 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:11 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:11 GMT
ARG KONG_VERSION=3.4.2
# Tue, 04 Aug 2026 01:41:11 GMT
ENV KONG_VERSION=3.4.2
# Tue, 04 Aug 2026 01:41:11 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Tue, 04 Aug 2026 01:41:11 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Tue, 04 Aug 2026 01:41:35 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:35 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:35 GMT
USER kong
# Tue, 04 Aug 2026 01:41:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:35 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:35 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:35 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:35 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c7dd5954e047cda95804919ff4dad163fcc1c97638ad21f3c0449a036455394`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca5a265e510892c14deba08961d2045a67a18837277f9e366c9f7dc32a8c1f03`  
		Last Modified: Tue, 04 Aug 2026 01:41:51 GMT  
		Size: 61.2 MB (61218009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb90a58af979b6b6c6d693bdc3eb81e6ae0f4f691b3fd6a2eae5ec9d2eb04c1d`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:46cf6ac07668e39142af827b94509bc6ab411202479e48a8d1ad17acbf269738
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6040175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b19e17333942bb3131d2b9ace1f7d93575df79cd55c01822ef1e67f4b8c963e8`

```dockerfile
```

-	Layers:
	-	`sha256:f0e72664c18e3549d91bbffb1eaf5f642112cd1fce7313d571056088fae7347c`  
		Last Modified: Tue, 04 Aug 2026 01:41:50 GMT  
		Size: 6.0 MB (6024726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe79c288d53cbb340524115f1de357d606cd8017409bb346eb4fb939726b05ef`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4.2`

```console
$ docker pull kong@sha256:321a2122e24bf8c2694bfc7e1f03dea4a7de57404a93d531942f80c35e710100
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4.2` - linux; amd64

```console
$ docker pull kong@sha256:3801e9e56c8852dfd568f247c45763fbd453eb216b6dbbd8385bb6e8e7f6dca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92478656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070ef84ea15212115aafe326e4ed585c491ed29defe924aff2f4c1cfbba67958`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:06 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:06 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:06 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:06 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:06 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:06 GMT
ARG KONG_VERSION=3.4.2
# Tue, 04 Aug 2026 01:41:06 GMT
ENV KONG_VERSION=3.4.2
# Tue, 04 Aug 2026 01:41:06 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Tue, 04 Aug 2026 01:41:06 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Tue, 04 Aug 2026 01:41:33 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:33 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:33 GMT
USER kong
# Tue, 04 Aug 2026 01:41:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:33 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:33 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:33 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:33 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98d97fd24c4f5f845831eb99147fb5c26dfe2bc7cd3d6bd9e045bdea740df6f`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4f34f35652412829b13bc3be9220ef0f43726e31a0461b27f47da0ebccd6d61`  
		Last Modified: Tue, 04 Aug 2026 01:41:50 GMT  
		Size: 62.7 MB (62740856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca95a3e82d3cad9101054883bd265ec1c896d8f3a5787f00ca5a7c375ab4e13`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2` - unknown; unknown

```console
$ docker pull kong@sha256:0e1c87620187d371188ed699e7f1bbed26735623c1e8e2d5ee87e9c97251dcb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6061993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f53c310fb1c90768b55efb66b58988bc1666ed5ca8715aaf903765125029d1`

```dockerfile
```

-	Layers:
	-	`sha256:bebcd4df774c5712a1a0d4393d17335c0e7362d83262c815fc85d1e6d341c571`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 6.0 MB (6046647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f5b228cb7559337cb5ef77be26cee44dc94a4135e711a5a015caaa1b22c1e3f`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4.2` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:d576f6b6cf09227132ab7261dcf174c3e187664dd292de1747192a27a5761ab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88839323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad5746df9e8638384cfa55600567d31ab57c04a07e30587df4670a2e0dacb47b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:11 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:11 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:11 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:11 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:11 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:11 GMT
ARG KONG_VERSION=3.4.2
# Tue, 04 Aug 2026 01:41:11 GMT
ENV KONG_VERSION=3.4.2
# Tue, 04 Aug 2026 01:41:11 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Tue, 04 Aug 2026 01:41:11 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Tue, 04 Aug 2026 01:41:35 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:35 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:35 GMT
USER kong
# Tue, 04 Aug 2026 01:41:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:35 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:35 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:35 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:35 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c7dd5954e047cda95804919ff4dad163fcc1c97638ad21f3c0449a036455394`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca5a265e510892c14deba08961d2045a67a18837277f9e366c9f7dc32a8c1f03`  
		Last Modified: Tue, 04 Aug 2026 01:41:51 GMT  
		Size: 61.2 MB (61218009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb90a58af979b6b6c6d693bdc3eb81e6ae0f4f691b3fd6a2eae5ec9d2eb04c1d`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2` - unknown; unknown

```console
$ docker pull kong@sha256:46cf6ac07668e39142af827b94509bc6ab411202479e48a8d1ad17acbf269738
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6040175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b19e17333942bb3131d2b9ace1f7d93575df79cd55c01822ef1e67f4b8c963e8`

```dockerfile
```

-	Layers:
	-	`sha256:f0e72664c18e3549d91bbffb1eaf5f642112cd1fce7313d571056088fae7347c`  
		Last Modified: Tue, 04 Aug 2026 01:41:50 GMT  
		Size: 6.0 MB (6024726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe79c288d53cbb340524115f1de357d606cd8017409bb346eb4fb939726b05ef`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4.2-ubuntu`

```console
$ docker pull kong@sha256:321a2122e24bf8c2694bfc7e1f03dea4a7de57404a93d531942f80c35e710100
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4.2-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:3801e9e56c8852dfd568f247c45763fbd453eb216b6dbbd8385bb6e8e7f6dca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92478656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070ef84ea15212115aafe326e4ed585c491ed29defe924aff2f4c1cfbba67958`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:06 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:06 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:06 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:06 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:06 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:06 GMT
ARG KONG_VERSION=3.4.2
# Tue, 04 Aug 2026 01:41:06 GMT
ENV KONG_VERSION=3.4.2
# Tue, 04 Aug 2026 01:41:06 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Tue, 04 Aug 2026 01:41:06 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Tue, 04 Aug 2026 01:41:33 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:33 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:33 GMT
USER kong
# Tue, 04 Aug 2026 01:41:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:33 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:33 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:33 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:33 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98d97fd24c4f5f845831eb99147fb5c26dfe2bc7cd3d6bd9e045bdea740df6f`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4f34f35652412829b13bc3be9220ef0f43726e31a0461b27f47da0ebccd6d61`  
		Last Modified: Tue, 04 Aug 2026 01:41:50 GMT  
		Size: 62.7 MB (62740856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca95a3e82d3cad9101054883bd265ec1c896d8f3a5787f00ca5a7c375ab4e13`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:0e1c87620187d371188ed699e7f1bbed26735623c1e8e2d5ee87e9c97251dcb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6061993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f53c310fb1c90768b55efb66b58988bc1666ed5ca8715aaf903765125029d1`

```dockerfile
```

-	Layers:
	-	`sha256:bebcd4df774c5712a1a0d4393d17335c0e7362d83262c815fc85d1e6d341c571`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 6.0 MB (6046647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f5b228cb7559337cb5ef77be26cee44dc94a4135e711a5a015caaa1b22c1e3f`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4.2-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:d576f6b6cf09227132ab7261dcf174c3e187664dd292de1747192a27a5761ab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88839323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad5746df9e8638384cfa55600567d31ab57c04a07e30587df4670a2e0dacb47b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:11 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:11 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:11 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:11 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:11 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:11 GMT
ARG KONG_VERSION=3.4.2
# Tue, 04 Aug 2026 01:41:11 GMT
ENV KONG_VERSION=3.4.2
# Tue, 04 Aug 2026 01:41:11 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Tue, 04 Aug 2026 01:41:11 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Tue, 04 Aug 2026 01:41:35 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:35 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:35 GMT
USER kong
# Tue, 04 Aug 2026 01:41:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:35 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:35 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:35 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:35 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c7dd5954e047cda95804919ff4dad163fcc1c97638ad21f3c0449a036455394`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca5a265e510892c14deba08961d2045a67a18837277f9e366c9f7dc32a8c1f03`  
		Last Modified: Tue, 04 Aug 2026 01:41:51 GMT  
		Size: 61.2 MB (61218009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb90a58af979b6b6c6d693bdc3eb81e6ae0f4f691b3fd6a2eae5ec9d2eb04c1d`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:46cf6ac07668e39142af827b94509bc6ab411202479e48a8d1ad17acbf269738
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6040175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b19e17333942bb3131d2b9ace1f7d93575df79cd55c01822ef1e67f4b8c963e8`

```dockerfile
```

-	Layers:
	-	`sha256:f0e72664c18e3549d91bbffb1eaf5f642112cd1fce7313d571056088fae7347c`  
		Last Modified: Tue, 04 Aug 2026 01:41:50 GMT  
		Size: 6.0 MB (6024726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe79c288d53cbb340524115f1de357d606cd8017409bb346eb4fb939726b05ef`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8`

```console
$ docker pull kong@sha256:250cc9745fde8ce04be060bc8e4338dfc280f54986cb38ef24d03876cb6b6e2f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8` - linux; amd64

```console
$ docker pull kong@sha256:3ab919cc552e1ee8a446bbbe11275931e49f8ae5e2aab21ba1884f5eae57690a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117696507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8c0257cede4d5cb263cacfcdc8c599da75d9796f205b88240cc241d59aa58fa`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:07 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:07 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:07 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:07 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:07 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:07 GMT
ARG KONG_VERSION=3.8.0
# Tue, 04 Aug 2026 01:41:07 GMT
ENV KONG_VERSION=3.8.0
# Tue, 04 Aug 2026 01:41:07 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Tue, 04 Aug 2026 01:41:07 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Tue, 04 Aug 2026 01:41:31 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:31 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:31 GMT
USER kong
# Tue, 04 Aug 2026 01:41:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:31 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:31 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:31 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:31 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9ff25286db3c07715f9e3fd2636efe4a5e5408c7837383e06e7ec95cf390e0`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a3e2e7a26899c96755bad3f337aa2fa7ec658f850813d8732edfb549842325`  
		Last Modified: Tue, 04 Aug 2026 01:41:52 GMT  
		Size: 88.0 MB (87958705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617602c1dbfebe4b6a321d7dd8505dee29d3bb947c6289fad7ebd509376f9c8b`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8` - unknown; unknown

```console
$ docker pull kong@sha256:083a6bf0a3a29b14ff67645b0312bfd8e1a59bc2984c9dcefd67e523fa6ab447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bbb1582e64ff1de8db0b415da49f88518c20eb512e876fcb479ef29f84b9f63`

```dockerfile
```

-	Layers:
	-	`sha256:8c169bac9f4a4706778c98d574ca728f22a302a3aa0623aaef042dc836b7bd44`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 5.3 MB (5346444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1b090e3f9d58f35f4a945c0e800ab7c7e20b9ba1768e196be1ce3b539573afe`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 15.3 KB (15345 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:de57b2d147b79532562c727f7c5a51233d920f1c38d43c15ac8b7e86aa9e9398
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114901338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be112874a7fbf429bd458ca863af8bc18634bb67c94d4846decc08aeea492742`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:12 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:12 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:12 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:12 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:12 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:12 GMT
ARG KONG_VERSION=3.8.0
# Tue, 04 Aug 2026 01:41:12 GMT
ENV KONG_VERSION=3.8.0
# Tue, 04 Aug 2026 01:41:12 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Tue, 04 Aug 2026 01:41:12 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Tue, 04 Aug 2026 01:41:37 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:37 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:37 GMT
USER kong
# Tue, 04 Aug 2026 01:41:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:37 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:37 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:37 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:37 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5157896db11c97ea4e765ed0d3f8aae796fa7cb45cf00cbd2b358049321d5ac`  
		Last Modified: Tue, 04 Aug 2026 01:41:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e66043b204902f11a50a2166d8d1e811e455319945f9ee6fff100d6466791b9`  
		Last Modified: Tue, 04 Aug 2026 01:41:57 GMT  
		Size: 87.3 MB (87280020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617602c1dbfebe4b6a321d7dd8505dee29d3bb947c6289fad7ebd509376f9c8b`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8` - unknown; unknown

```console
$ docker pull kong@sha256:83d609179985e728eb2df2506807b256e631b30105c6b296746f46312c0c0440
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d37cf8708fcaa691e9b16163c6758c98d51822f383bd28702538eb35d7b52f4`

```dockerfile
```

-	Layers:
	-	`sha256:74362c91dc83e915494f6370cc0c9b647a56fc7050bcdac5e3a86f87cc7536ae`  
		Last Modified: Tue, 04 Aug 2026 01:41:55 GMT  
		Size: 5.4 MB (5352770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d137c38fc5897d877bd1f5da02a4be26cd929fabfd6faae4b12b83115dc5ae13`  
		Last Modified: Tue, 04 Aug 2026 01:41:55 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8-ubuntu`

```console
$ docker pull kong@sha256:250cc9745fde8ce04be060bc8e4338dfc280f54986cb38ef24d03876cb6b6e2f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:3ab919cc552e1ee8a446bbbe11275931e49f8ae5e2aab21ba1884f5eae57690a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117696507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8c0257cede4d5cb263cacfcdc8c599da75d9796f205b88240cc241d59aa58fa`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:07 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:07 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:07 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:07 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:07 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:07 GMT
ARG KONG_VERSION=3.8.0
# Tue, 04 Aug 2026 01:41:07 GMT
ENV KONG_VERSION=3.8.0
# Tue, 04 Aug 2026 01:41:07 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Tue, 04 Aug 2026 01:41:07 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Tue, 04 Aug 2026 01:41:31 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:31 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:31 GMT
USER kong
# Tue, 04 Aug 2026 01:41:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:31 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:31 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:31 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:31 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9ff25286db3c07715f9e3fd2636efe4a5e5408c7837383e06e7ec95cf390e0`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a3e2e7a26899c96755bad3f337aa2fa7ec658f850813d8732edfb549842325`  
		Last Modified: Tue, 04 Aug 2026 01:41:52 GMT  
		Size: 88.0 MB (87958705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617602c1dbfebe4b6a321d7dd8505dee29d3bb947c6289fad7ebd509376f9c8b`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:083a6bf0a3a29b14ff67645b0312bfd8e1a59bc2984c9dcefd67e523fa6ab447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bbb1582e64ff1de8db0b415da49f88518c20eb512e876fcb479ef29f84b9f63`

```dockerfile
```

-	Layers:
	-	`sha256:8c169bac9f4a4706778c98d574ca728f22a302a3aa0623aaef042dc836b7bd44`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 5.3 MB (5346444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1b090e3f9d58f35f4a945c0e800ab7c7e20b9ba1768e196be1ce3b539573afe`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 15.3 KB (15345 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:de57b2d147b79532562c727f7c5a51233d920f1c38d43c15ac8b7e86aa9e9398
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114901338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be112874a7fbf429bd458ca863af8bc18634bb67c94d4846decc08aeea492742`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:12 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:12 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:12 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:12 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:12 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:12 GMT
ARG KONG_VERSION=3.8.0
# Tue, 04 Aug 2026 01:41:12 GMT
ENV KONG_VERSION=3.8.0
# Tue, 04 Aug 2026 01:41:12 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Tue, 04 Aug 2026 01:41:12 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Tue, 04 Aug 2026 01:41:37 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:37 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:37 GMT
USER kong
# Tue, 04 Aug 2026 01:41:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:37 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:37 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:37 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:37 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5157896db11c97ea4e765ed0d3f8aae796fa7cb45cf00cbd2b358049321d5ac`  
		Last Modified: Tue, 04 Aug 2026 01:41:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e66043b204902f11a50a2166d8d1e811e455319945f9ee6fff100d6466791b9`  
		Last Modified: Tue, 04 Aug 2026 01:41:57 GMT  
		Size: 87.3 MB (87280020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617602c1dbfebe4b6a321d7dd8505dee29d3bb947c6289fad7ebd509376f9c8b`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:83d609179985e728eb2df2506807b256e631b30105c6b296746f46312c0c0440
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d37cf8708fcaa691e9b16163c6758c98d51822f383bd28702538eb35d7b52f4`

```dockerfile
```

-	Layers:
	-	`sha256:74362c91dc83e915494f6370cc0c9b647a56fc7050bcdac5e3a86f87cc7536ae`  
		Last Modified: Tue, 04 Aug 2026 01:41:55 GMT  
		Size: 5.4 MB (5352770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d137c38fc5897d877bd1f5da02a4be26cd929fabfd6faae4b12b83115dc5ae13`  
		Last Modified: Tue, 04 Aug 2026 01:41:55 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8.0`

```console
$ docker pull kong@sha256:250cc9745fde8ce04be060bc8e4338dfc280f54986cb38ef24d03876cb6b6e2f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8.0` - linux; amd64

```console
$ docker pull kong@sha256:3ab919cc552e1ee8a446bbbe11275931e49f8ae5e2aab21ba1884f5eae57690a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117696507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8c0257cede4d5cb263cacfcdc8c599da75d9796f205b88240cc241d59aa58fa`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:07 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:07 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:07 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:07 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:07 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:07 GMT
ARG KONG_VERSION=3.8.0
# Tue, 04 Aug 2026 01:41:07 GMT
ENV KONG_VERSION=3.8.0
# Tue, 04 Aug 2026 01:41:07 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Tue, 04 Aug 2026 01:41:07 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Tue, 04 Aug 2026 01:41:31 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:31 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:31 GMT
USER kong
# Tue, 04 Aug 2026 01:41:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:31 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:31 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:31 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:31 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9ff25286db3c07715f9e3fd2636efe4a5e5408c7837383e06e7ec95cf390e0`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a3e2e7a26899c96755bad3f337aa2fa7ec658f850813d8732edfb549842325`  
		Last Modified: Tue, 04 Aug 2026 01:41:52 GMT  
		Size: 88.0 MB (87958705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617602c1dbfebe4b6a321d7dd8505dee29d3bb947c6289fad7ebd509376f9c8b`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0` - unknown; unknown

```console
$ docker pull kong@sha256:083a6bf0a3a29b14ff67645b0312bfd8e1a59bc2984c9dcefd67e523fa6ab447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bbb1582e64ff1de8db0b415da49f88518c20eb512e876fcb479ef29f84b9f63`

```dockerfile
```

-	Layers:
	-	`sha256:8c169bac9f4a4706778c98d574ca728f22a302a3aa0623aaef042dc836b7bd44`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 5.3 MB (5346444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1b090e3f9d58f35f4a945c0e800ab7c7e20b9ba1768e196be1ce3b539573afe`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 15.3 KB (15345 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8.0` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:de57b2d147b79532562c727f7c5a51233d920f1c38d43c15ac8b7e86aa9e9398
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114901338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be112874a7fbf429bd458ca863af8bc18634bb67c94d4846decc08aeea492742`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:12 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:12 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:12 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:12 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:12 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:12 GMT
ARG KONG_VERSION=3.8.0
# Tue, 04 Aug 2026 01:41:12 GMT
ENV KONG_VERSION=3.8.0
# Tue, 04 Aug 2026 01:41:12 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Tue, 04 Aug 2026 01:41:12 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Tue, 04 Aug 2026 01:41:37 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:37 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:37 GMT
USER kong
# Tue, 04 Aug 2026 01:41:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:37 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:37 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:37 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:37 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5157896db11c97ea4e765ed0d3f8aae796fa7cb45cf00cbd2b358049321d5ac`  
		Last Modified: Tue, 04 Aug 2026 01:41:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e66043b204902f11a50a2166d8d1e811e455319945f9ee6fff100d6466791b9`  
		Last Modified: Tue, 04 Aug 2026 01:41:57 GMT  
		Size: 87.3 MB (87280020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617602c1dbfebe4b6a321d7dd8505dee29d3bb947c6289fad7ebd509376f9c8b`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0` - unknown; unknown

```console
$ docker pull kong@sha256:83d609179985e728eb2df2506807b256e631b30105c6b296746f46312c0c0440
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d37cf8708fcaa691e9b16163c6758c98d51822f383bd28702538eb35d7b52f4`

```dockerfile
```

-	Layers:
	-	`sha256:74362c91dc83e915494f6370cc0c9b647a56fc7050bcdac5e3a86f87cc7536ae`  
		Last Modified: Tue, 04 Aug 2026 01:41:55 GMT  
		Size: 5.4 MB (5352770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d137c38fc5897d877bd1f5da02a4be26cd929fabfd6faae4b12b83115dc5ae13`  
		Last Modified: Tue, 04 Aug 2026 01:41:55 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8.0-ubuntu`

```console
$ docker pull kong@sha256:250cc9745fde8ce04be060bc8e4338dfc280f54986cb38ef24d03876cb6b6e2f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8.0-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:3ab919cc552e1ee8a446bbbe11275931e49f8ae5e2aab21ba1884f5eae57690a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117696507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8c0257cede4d5cb263cacfcdc8c599da75d9796f205b88240cc241d59aa58fa`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:07 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:07 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:07 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:07 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:07 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:07 GMT
ARG KONG_VERSION=3.8.0
# Tue, 04 Aug 2026 01:41:07 GMT
ENV KONG_VERSION=3.8.0
# Tue, 04 Aug 2026 01:41:07 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Tue, 04 Aug 2026 01:41:07 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Tue, 04 Aug 2026 01:41:31 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:31 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:31 GMT
USER kong
# Tue, 04 Aug 2026 01:41:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:31 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:31 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:31 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:31 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9ff25286db3c07715f9e3fd2636efe4a5e5408c7837383e06e7ec95cf390e0`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a3e2e7a26899c96755bad3f337aa2fa7ec658f850813d8732edfb549842325`  
		Last Modified: Tue, 04 Aug 2026 01:41:52 GMT  
		Size: 88.0 MB (87958705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617602c1dbfebe4b6a321d7dd8505dee29d3bb947c6289fad7ebd509376f9c8b`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:083a6bf0a3a29b14ff67645b0312bfd8e1a59bc2984c9dcefd67e523fa6ab447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bbb1582e64ff1de8db0b415da49f88518c20eb512e876fcb479ef29f84b9f63`

```dockerfile
```

-	Layers:
	-	`sha256:8c169bac9f4a4706778c98d574ca728f22a302a3aa0623aaef042dc836b7bd44`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 5.3 MB (5346444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1b090e3f9d58f35f4a945c0e800ab7c7e20b9ba1768e196be1ce3b539573afe`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 15.3 KB (15345 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8.0-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:de57b2d147b79532562c727f7c5a51233d920f1c38d43c15ac8b7e86aa9e9398
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114901338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be112874a7fbf429bd458ca863af8bc18634bb67c94d4846decc08aeea492742`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:12 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:12 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:12 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:12 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:12 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:12 GMT
ARG KONG_VERSION=3.8.0
# Tue, 04 Aug 2026 01:41:12 GMT
ENV KONG_VERSION=3.8.0
# Tue, 04 Aug 2026 01:41:12 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Tue, 04 Aug 2026 01:41:12 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Tue, 04 Aug 2026 01:41:37 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:37 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:37 GMT
USER kong
# Tue, 04 Aug 2026 01:41:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:37 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:37 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:37 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:37 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5157896db11c97ea4e765ed0d3f8aae796fa7cb45cf00cbd2b358049321d5ac`  
		Last Modified: Tue, 04 Aug 2026 01:41:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e66043b204902f11a50a2166d8d1e811e455319945f9ee6fff100d6466791b9`  
		Last Modified: Tue, 04 Aug 2026 01:41:57 GMT  
		Size: 87.3 MB (87280020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617602c1dbfebe4b6a321d7dd8505dee29d3bb947c6289fad7ebd509376f9c8b`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:83d609179985e728eb2df2506807b256e631b30105c6b296746f46312c0c0440
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d37cf8708fcaa691e9b16163c6758c98d51822f383bd28702538eb35d7b52f4`

```dockerfile
```

-	Layers:
	-	`sha256:74362c91dc83e915494f6370cc0c9b647a56fc7050bcdac5e3a86f87cc7536ae`  
		Last Modified: Tue, 04 Aug 2026 01:41:55 GMT  
		Size: 5.4 MB (5352770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d137c38fc5897d877bd1f5da02a4be26cd929fabfd6faae4b12b83115dc5ae13`  
		Last Modified: Tue, 04 Aug 2026 01:41:55 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9`

```console
$ docker pull kong@sha256:4d6a4ead594e9bf468d07a54d30a57991904b220403af1a43c5a3679615d11de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9` - linux; amd64

```console
$ docker pull kong@sha256:bcb12565d41caa57d888fa1987fa738b4620af80d6c8ff2a65e8b3f8d527097a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122834955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90f0dded06e4f9435b40494a15064530b5d2a853516d72bbdd261b0286e6936`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 04 Aug 2026 01:41:01 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:01 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:01 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:25 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
USER kong
# Tue, 04 Aug 2026 01:41:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:25 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:25 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:25 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:25 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d4d725cfa50f25062951d74c63bc037448819e0642a2c298b96cfc0bc2782f`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf21ab26fcb5b63c06f602d40d1f985f5cb40b863d9ece0e9a77edc1c3c09d6`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 93.1 MB (93082557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9` - unknown; unknown

```console
$ docker pull kong@sha256:36139acb28e1bac35434c7d7df88206dd25725afa2bcf2b73cd1456019db4fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d8c6c43d40847b3488c3511b447c17d44068c0c03242af4a2350033a2ffcb1`

```dockerfile
```

-	Layers:
	-	`sha256:0ca2eaf2b548542649018887a688210c72e161291891a885ce31c0c2779c967b`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 5.4 MB (5448599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1441190517b475f01b0b113c28f07f1ddb44e606cd6a1241022ce885c99e6b80`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:a4e30e80d764831c6da3370739376fe11d26067eb1acbe320833bc88c64a055f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118887673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31aa54a8c63ab1bbe2b171fd133e36f8882957dc3ba5b7c1875d8500dcbde63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 04 Aug 2026 01:41:02 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:02 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:02 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:27 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
USER kong
# Tue, 04 Aug 2026 01:41:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:27 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:27 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:27 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:27 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c19507edaf13199af40d7ecc8a08ceb2ff7cd9ded5e5fbcbff00eeb919366f`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a285021121a4cec92145b4bd91572fc559b6de489a6a51cafeb2482b488b8d1`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 90.0 MB (89999566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9` - unknown; unknown

```console
$ docker pull kong@sha256:ab6a34b43795c5160783f791f483a53c84a6b45c31be0da7e648446ce0641b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2c1091eb3d69c531a80e3f74d94f56e7232fff1731581eaa40fa69f6d86d1a`

```dockerfile
```

-	Layers:
	-	`sha256:2fd9603dc9c32e73e1bb0aa9e4faa150d9c2ea10858fa7fb1faa857bf96caf4a`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 5.5 MB (5455766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f16695160a8d929a4c046431cb0043a6598355ffd32ee5b0c972d7a2e5e8340d`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9-ubuntu`

```console
$ docker pull kong@sha256:4d6a4ead594e9bf468d07a54d30a57991904b220403af1a43c5a3679615d11de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:bcb12565d41caa57d888fa1987fa738b4620af80d6c8ff2a65e8b3f8d527097a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122834955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90f0dded06e4f9435b40494a15064530b5d2a853516d72bbdd261b0286e6936`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 04 Aug 2026 01:41:01 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:01 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:01 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:25 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
USER kong
# Tue, 04 Aug 2026 01:41:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:25 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:25 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:25 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:25 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d4d725cfa50f25062951d74c63bc037448819e0642a2c298b96cfc0bc2782f`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf21ab26fcb5b63c06f602d40d1f985f5cb40b863d9ece0e9a77edc1c3c09d6`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 93.1 MB (93082557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:36139acb28e1bac35434c7d7df88206dd25725afa2bcf2b73cd1456019db4fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d8c6c43d40847b3488c3511b447c17d44068c0c03242af4a2350033a2ffcb1`

```dockerfile
```

-	Layers:
	-	`sha256:0ca2eaf2b548542649018887a688210c72e161291891a885ce31c0c2779c967b`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 5.4 MB (5448599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1441190517b475f01b0b113c28f07f1ddb44e606cd6a1241022ce885c99e6b80`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:a4e30e80d764831c6da3370739376fe11d26067eb1acbe320833bc88c64a055f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118887673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31aa54a8c63ab1bbe2b171fd133e36f8882957dc3ba5b7c1875d8500dcbde63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 04 Aug 2026 01:41:02 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:02 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:02 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:27 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
USER kong
# Tue, 04 Aug 2026 01:41:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:27 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:27 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:27 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:27 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c19507edaf13199af40d7ecc8a08ceb2ff7cd9ded5e5fbcbff00eeb919366f`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a285021121a4cec92145b4bd91572fc559b6de489a6a51cafeb2482b488b8d1`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 90.0 MB (89999566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:ab6a34b43795c5160783f791f483a53c84a6b45c31be0da7e648446ce0641b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2c1091eb3d69c531a80e3f74d94f56e7232fff1731581eaa40fa69f6d86d1a`

```dockerfile
```

-	Layers:
	-	`sha256:2fd9603dc9c32e73e1bb0aa9e4faa150d9c2ea10858fa7fb1faa857bf96caf4a`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 5.5 MB (5455766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f16695160a8d929a4c046431cb0043a6598355ffd32ee5b0c972d7a2e5e8340d`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9.3`

```console
$ docker pull kong@sha256:4d6a4ead594e9bf468d07a54d30a57991904b220403af1a43c5a3679615d11de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9.3` - linux; amd64

```console
$ docker pull kong@sha256:bcb12565d41caa57d888fa1987fa738b4620af80d6c8ff2a65e8b3f8d527097a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122834955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90f0dded06e4f9435b40494a15064530b5d2a853516d72bbdd261b0286e6936`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 04 Aug 2026 01:41:01 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:01 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:01 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:25 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
USER kong
# Tue, 04 Aug 2026 01:41:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:25 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:25 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:25 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:25 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d4d725cfa50f25062951d74c63bc037448819e0642a2c298b96cfc0bc2782f`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf21ab26fcb5b63c06f602d40d1f985f5cb40b863d9ece0e9a77edc1c3c09d6`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 93.1 MB (93082557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.3` - unknown; unknown

```console
$ docker pull kong@sha256:36139acb28e1bac35434c7d7df88206dd25725afa2bcf2b73cd1456019db4fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d8c6c43d40847b3488c3511b447c17d44068c0c03242af4a2350033a2ffcb1`

```dockerfile
```

-	Layers:
	-	`sha256:0ca2eaf2b548542649018887a688210c72e161291891a885ce31c0c2779c967b`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 5.4 MB (5448599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1441190517b475f01b0b113c28f07f1ddb44e606cd6a1241022ce885c99e6b80`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9.3` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:a4e30e80d764831c6da3370739376fe11d26067eb1acbe320833bc88c64a055f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118887673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31aa54a8c63ab1bbe2b171fd133e36f8882957dc3ba5b7c1875d8500dcbde63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 04 Aug 2026 01:41:02 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:02 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:02 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:27 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
USER kong
# Tue, 04 Aug 2026 01:41:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:27 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:27 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:27 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:27 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c19507edaf13199af40d7ecc8a08ceb2ff7cd9ded5e5fbcbff00eeb919366f`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a285021121a4cec92145b4bd91572fc559b6de489a6a51cafeb2482b488b8d1`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 90.0 MB (89999566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.3` - unknown; unknown

```console
$ docker pull kong@sha256:ab6a34b43795c5160783f791f483a53c84a6b45c31be0da7e648446ce0641b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2c1091eb3d69c531a80e3f74d94f56e7232fff1731581eaa40fa69f6d86d1a`

```dockerfile
```

-	Layers:
	-	`sha256:2fd9603dc9c32e73e1bb0aa9e4faa150d9c2ea10858fa7fb1faa857bf96caf4a`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 5.5 MB (5455766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f16695160a8d929a4c046431cb0043a6598355ffd32ee5b0c972d7a2e5e8340d`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9.3-ubuntu`

```console
$ docker pull kong@sha256:4d6a4ead594e9bf468d07a54d30a57991904b220403af1a43c5a3679615d11de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9.3-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:bcb12565d41caa57d888fa1987fa738b4620af80d6c8ff2a65e8b3f8d527097a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122834955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90f0dded06e4f9435b40494a15064530b5d2a853516d72bbdd261b0286e6936`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 04 Aug 2026 01:41:01 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:01 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:01 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:25 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
USER kong
# Tue, 04 Aug 2026 01:41:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:25 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:25 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:25 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:25 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d4d725cfa50f25062951d74c63bc037448819e0642a2c298b96cfc0bc2782f`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf21ab26fcb5b63c06f602d40d1f985f5cb40b863d9ece0e9a77edc1c3c09d6`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 93.1 MB (93082557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.3-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:36139acb28e1bac35434c7d7df88206dd25725afa2bcf2b73cd1456019db4fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d8c6c43d40847b3488c3511b447c17d44068c0c03242af4a2350033a2ffcb1`

```dockerfile
```

-	Layers:
	-	`sha256:0ca2eaf2b548542649018887a688210c72e161291891a885ce31c0c2779c967b`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 5.4 MB (5448599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1441190517b475f01b0b113c28f07f1ddb44e606cd6a1241022ce885c99e6b80`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9.3-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:a4e30e80d764831c6da3370739376fe11d26067eb1acbe320833bc88c64a055f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118887673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31aa54a8c63ab1bbe2b171fd133e36f8882957dc3ba5b7c1875d8500dcbde63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 04 Aug 2026 01:41:02 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:02 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:02 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:27 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
USER kong
# Tue, 04 Aug 2026 01:41:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:27 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:27 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:27 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:27 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c19507edaf13199af40d7ecc8a08ceb2ff7cd9ded5e5fbcbff00eeb919366f`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a285021121a4cec92145b4bd91572fc559b6de489a6a51cafeb2482b488b8d1`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 90.0 MB (89999566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.3-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:ab6a34b43795c5160783f791f483a53c84a6b45c31be0da7e648446ce0641b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2c1091eb3d69c531a80e3f74d94f56e7232fff1731581eaa40fa69f6d86d1a`

```dockerfile
```

-	Layers:
	-	`sha256:2fd9603dc9c32e73e1bb0aa9e4faa150d9c2ea10858fa7fb1faa857bf96caf4a`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 5.5 MB (5455766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f16695160a8d929a4c046431cb0043a6598355ffd32ee5b0c972d7a2e5e8340d`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:latest`

```console
$ docker pull kong@sha256:4d6a4ead594e9bf468d07a54d30a57991904b220403af1a43c5a3679615d11de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:bcb12565d41caa57d888fa1987fa738b4620af80d6c8ff2a65e8b3f8d527097a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122834955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90f0dded06e4f9435b40494a15064530b5d2a853516d72bbdd261b0286e6936`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 04 Aug 2026 01:41:01 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:01 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:01 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:25 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
USER kong
# Tue, 04 Aug 2026 01:41:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:25 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:25 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:25 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:25 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d4d725cfa50f25062951d74c63bc037448819e0642a2c298b96cfc0bc2782f`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf21ab26fcb5b63c06f602d40d1f985f5cb40b863d9ece0e9a77edc1c3c09d6`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 93.1 MB (93082557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:latest` - unknown; unknown

```console
$ docker pull kong@sha256:36139acb28e1bac35434c7d7df88206dd25725afa2bcf2b73cd1456019db4fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d8c6c43d40847b3488c3511b447c17d44068c0c03242af4a2350033a2ffcb1`

```dockerfile
```

-	Layers:
	-	`sha256:0ca2eaf2b548542649018887a688210c72e161291891a885ce31c0c2779c967b`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 5.4 MB (5448599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1441190517b475f01b0b113c28f07f1ddb44e606cd6a1241022ce885c99e6b80`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:latest` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:a4e30e80d764831c6da3370739376fe11d26067eb1acbe320833bc88c64a055f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118887673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31aa54a8c63ab1bbe2b171fd133e36f8882957dc3ba5b7c1875d8500dcbde63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 04 Aug 2026 01:41:02 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:02 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:02 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:27 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
USER kong
# Tue, 04 Aug 2026 01:41:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:27 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:27 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:27 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:27 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c19507edaf13199af40d7ecc8a08ceb2ff7cd9ded5e5fbcbff00eeb919366f`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a285021121a4cec92145b4bd91572fc559b6de489a6a51cafeb2482b488b8d1`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 90.0 MB (89999566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:latest` - unknown; unknown

```console
$ docker pull kong@sha256:ab6a34b43795c5160783f791f483a53c84a6b45c31be0da7e648446ce0641b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2c1091eb3d69c531a80e3f74d94f56e7232fff1731581eaa40fa69f6d86d1a`

```dockerfile
```

-	Layers:
	-	`sha256:2fd9603dc9c32e73e1bb0aa9e4faa150d9c2ea10858fa7fb1faa857bf96caf4a`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 5.5 MB (5455766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f16695160a8d929a4c046431cb0043a6598355ffd32ee5b0c972d7a2e5e8340d`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:ubuntu`

```console
$ docker pull kong@sha256:4d6a4ead594e9bf468d07a54d30a57991904b220403af1a43c5a3679615d11de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:bcb12565d41caa57d888fa1987fa738b4620af80d6c8ff2a65e8b3f8d527097a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122834955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90f0dded06e4f9435b40494a15064530b5d2a853516d72bbdd261b0286e6936`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 04 Aug 2026 01:41:01 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:01 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:01 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:25 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
USER kong
# Tue, 04 Aug 2026 01:41:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:25 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:25 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:25 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:25 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d4d725cfa50f25062951d74c63bc037448819e0642a2c298b96cfc0bc2782f`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf21ab26fcb5b63c06f602d40d1f985f5cb40b863d9ece0e9a77edc1c3c09d6`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 93.1 MB (93082557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:36139acb28e1bac35434c7d7df88206dd25725afa2bcf2b73cd1456019db4fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d8c6c43d40847b3488c3511b447c17d44068c0c03242af4a2350033a2ffcb1`

```dockerfile
```

-	Layers:
	-	`sha256:0ca2eaf2b548542649018887a688210c72e161291891a885ce31c0c2779c967b`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 5.4 MB (5448599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1441190517b475f01b0b113c28f07f1ddb44e606cd6a1241022ce885c99e6b80`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:a4e30e80d764831c6da3370739376fe11d26067eb1acbe320833bc88c64a055f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118887673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31aa54a8c63ab1bbe2b171fd133e36f8882957dc3ba5b7c1875d8500dcbde63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 04 Aug 2026 01:41:02 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:02 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:02 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:27 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
USER kong
# Tue, 04 Aug 2026 01:41:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:27 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:27 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:27 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:27 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c19507edaf13199af40d7ecc8a08ceb2ff7cd9ded5e5fbcbff00eeb919366f`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a285021121a4cec92145b4bd91572fc559b6de489a6a51cafeb2482b488b8d1`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 90.0 MB (89999566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:ab6a34b43795c5160783f791f483a53c84a6b45c31be0da7e648446ce0641b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2c1091eb3d69c531a80e3f74d94f56e7232fff1731581eaa40fa69f6d86d1a`

```dockerfile
```

-	Layers:
	-	`sha256:2fd9603dc9c32e73e1bb0aa9e4faa150d9c2ea10858fa7fb1faa857bf96caf4a`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 5.5 MB (5455766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f16695160a8d929a4c046431cb0043a6598355ffd32ee5b0c972d7a2e5e8340d`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json
