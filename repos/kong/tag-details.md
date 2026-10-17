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
-	[`kong:3.9.4`](#kong394)
-	[`kong:3.9.4-ubuntu`](#kong394-ubuntu)
-	[`kong:latest`](#konglatest)
-	[`kong:ubuntu`](#kongubuntu)

## `kong:3`

```console
$ docker pull kong@sha256:aa4a4687b1330e427ad0d3b27a0606b833894297c78abf1a212edc9ba73c8620
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3` - linux; amd64

```console
$ docker pull kong@sha256:45993f7e2c77036e52e553419553f58eb06b7dd87513e3350e230dc04b5ebe6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120487095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f80debe0c29be110e045cc6714066f725ad9566e9530809563d9c0b2182be14`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:30:57 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:30:57 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:30:57 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:30:57 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:30:57 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:30:57 GMT
ARG KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:57 GMT
ENV KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:57 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Sat, 17 Oct 2026 00:30:57 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Sat, 17 Oct 2026 00:31:20 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:20 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:20 GMT
USER kong
# Sat, 17 Oct 2026 00:31:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:20 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:20 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:20 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:20 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36483c75dea5d870268201c3ad037a2f77a1735999a906abb41a5b4156fb74a2`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f137ae7193f8df6a1db53d62a86fb4f45f832b47deac35a89b5fdf65fa190abb`  
		Last Modified: Sat, 17 Oct 2026 00:31:39 GMT  
		Size: 90.7 MB (90720051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf9fb2e27700f44b59ea4a22a34ebef38fc65d8f54e7ad6a01b1a7acce7d0a0`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3` - unknown; unknown

```console
$ docker pull kong@sha256:21a2526274994081c8909db7d37ddab053b06c011b350a46f56f97981088c097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524256d871fbb9990f746e3f4d193b1731fca69200f48d606f69277bd4b22726`

```dockerfile
```

-	Layers:
	-	`sha256:afff6f1bff9b89ddabbc953e397f25c95afb7436a8f651b73e670e37f60735e9`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 5.4 MB (5449262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2158efd557543991902390243725230a656818993d46c7a2b5a54ca44652e797`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:5e8ad63d52c02dc31745e4f577c73c4f702dd491d74f6da21a9c9abd77a3c4d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118968754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a48454a8aee6ab6a6d9aa4e35926269a39e79421d67b28caecab2063791b73fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:30:41 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:30:41 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:30:41 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:30:41 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:30:41 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:30:41 GMT
ARG KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:41 GMT
ENV KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:41 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Sat, 17 Oct 2026 00:30:41 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Sat, 17 Oct 2026 00:31:06 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:06 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:06 GMT
USER kong
# Sat, 17 Oct 2026 00:31:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:06 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:06 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:06 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:06 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16f9cf9cb5478c864090bba1cbbe0045ce4d4eb392fb96de005519c44be281e`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f67831c060d2249d53303abdbcd40a91deb3e33c3dd62ffed7ce5718a2fb51f`  
		Last Modified: Sat, 17 Oct 2026 00:31:26 GMT  
		Size: 90.0 MB (90027706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209225ecfd326a0c5bcd8ae86278ed49dcb84bcb24f4e0d4f5aaa23955a1d737`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3` - unknown; unknown

```console
$ docker pull kong@sha256:3f6e55eca0481a13c3b521a238b7fc0790ffa37eecf216e621018782ccc1f04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60fc048ce85f11707a901f79aa9dc6bc01c7853b86236a50326e84676e0467e8`

```dockerfile
```

-	Layers:
	-	`sha256:475fe92565d654b2f5f0c6343ce688541a42c96adbab2d5ac5ae0dfbace775c7`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 5.5 MB (5456429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71da79363bf2714653d63bb6fd060d433efe07d47bea98dc89f0c017b40b0d5e`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 16.4 KB (16357 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4`

```console
$ docker pull kong@sha256:bddc23cfc27769aa4654f518ebc3a9f4310213be3d48ff71b13fc829861eddbb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4` - linux; amd64

```console
$ docker pull kong@sha256:af8352c25b1eaecd9cb002c980de94dcdce8e6c7c7ffdce2741af722e0b3c6c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92535038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd456eb48df562672546fc4ad195fddd1d0b0c77b12639e3a10fa44611b7aa7d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:31:05 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:31:05 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:31:05 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:31:05 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:31:05 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:31:05 GMT
ARG KONG_VERSION=3.4.2
# Sat, 17 Oct 2026 00:31:05 GMT
ENV KONG_VERSION=3.4.2
# Sat, 17 Oct 2026 00:31:05 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Sat, 17 Oct 2026 00:31:05 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Sat, 17 Oct 2026 00:31:32 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:32 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:32 GMT
USER kong
# Sat, 17 Oct 2026 00:31:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:32 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:32 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:32 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:32 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e893bb17b5ee272469dac239b1d17c63fc673d042afce88e7ce4188537e56928`  
		Last Modified: Sat, 17 Oct 2026 00:31:45 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982310650bd6041d9b17a78591f250049f74b531fbdd887a18706a66c195c0f1`  
		Last Modified: Sat, 17 Oct 2026 00:31:48 GMT  
		Size: 62.8 MB (62781281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098cedb4172b140a8a64fc21ac0fb2da5d98165ecf1af936f0d0e416fe3f7787`  
		Last Modified: Sat, 17 Oct 2026 00:31:45 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4` - unknown; unknown

```console
$ docker pull kong@sha256:9a57e4bb66c02ee21da65d01e9ea3f862396d77aeb4c7f9964300a98cc674485
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6062061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d5f8f64c1fbda3aaa24cf54f3adb9e48465cbd4b737be776c9a20693ce6d9d2`

```dockerfile
```

-	Layers:
	-	`sha256:579a57e57b9281cb395e0d6eb0ae736186a163a6849da698b5b55186d600a176`  
		Last Modified: Sat, 17 Oct 2026 00:31:47 GMT  
		Size: 6.0 MB (6046715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcf8de27c036461c9852cbfadf8a7a6f6ca2f9a9f51536df98996802ad5290a1`  
		Last Modified: Sat, 17 Oct 2026 00:31:47 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:a8ea39664bfc32d871cca5f8140ede84324bff60a0572d771ef3593014c40058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (88951179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcc7807fb95c863f1ed6ced67731ef4089b466da414357a949ae120b0988b75d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:30:49 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:30:49 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:30:49 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:30:49 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:30:49 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:30:49 GMT
ARG KONG_VERSION=3.4.2
# Sat, 17 Oct 2026 00:30:49 GMT
ENV KONG_VERSION=3.4.2
# Sat, 17 Oct 2026 00:30:49 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Sat, 17 Oct 2026 00:30:49 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Sat, 17 Oct 2026 00:31:13 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:13 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:13 GMT
USER kong
# Sat, 17 Oct 2026 00:31:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:13 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:13 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:13 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:13 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1171886d33062c769799f0bd4defe09cd8f42bd88a6dad50191bcf70631089c`  
		Last Modified: Sat, 17 Oct 2026 00:31:27 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5378ba210f8ec0a570ffd6143555e1d8cfc73f87241364a7775b94f6c4a9ea7b`  
		Last Modified: Sat, 17 Oct 2026 00:31:29 GMT  
		Size: 61.3 MB (61265176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53fbf50c9cf8e6e52ab5b90c5df7a3d132ee9e5fa3ea70cef31c4da6870f0c12`  
		Last Modified: Sat, 17 Oct 2026 00:31:27 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4` - unknown; unknown

```console
$ docker pull kong@sha256:a58ed46027ddc8dffc2f86a4ceecf7ceff1beb9904d8df0cd0c2242722b10626
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6040244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab68f90e32f85d6e5888df6fdc4db0cdbb6b2758dbfa3c25ffbbc191ff83ab8`

```dockerfile
```

-	Layers:
	-	`sha256:08d4949c12620ea7c19e18b34baa9866ae89bae07cbc667714ed000845254be0`  
		Last Modified: Sat, 17 Oct 2026 00:31:28 GMT  
		Size: 6.0 MB (6024794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68e8cc56d7990313075711100941706f828a984b461d0ce2ab7c91769acc82e8`  
		Last Modified: Sat, 17 Oct 2026 00:31:27 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4-ubuntu`

```console
$ docker pull kong@sha256:bddc23cfc27769aa4654f518ebc3a9f4310213be3d48ff71b13fc829861eddbb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:af8352c25b1eaecd9cb002c980de94dcdce8e6c7c7ffdce2741af722e0b3c6c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92535038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd456eb48df562672546fc4ad195fddd1d0b0c77b12639e3a10fa44611b7aa7d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:31:05 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:31:05 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:31:05 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:31:05 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:31:05 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:31:05 GMT
ARG KONG_VERSION=3.4.2
# Sat, 17 Oct 2026 00:31:05 GMT
ENV KONG_VERSION=3.4.2
# Sat, 17 Oct 2026 00:31:05 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Sat, 17 Oct 2026 00:31:05 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Sat, 17 Oct 2026 00:31:32 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:32 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:32 GMT
USER kong
# Sat, 17 Oct 2026 00:31:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:32 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:32 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:32 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:32 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e893bb17b5ee272469dac239b1d17c63fc673d042afce88e7ce4188537e56928`  
		Last Modified: Sat, 17 Oct 2026 00:31:45 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982310650bd6041d9b17a78591f250049f74b531fbdd887a18706a66c195c0f1`  
		Last Modified: Sat, 17 Oct 2026 00:31:48 GMT  
		Size: 62.8 MB (62781281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098cedb4172b140a8a64fc21ac0fb2da5d98165ecf1af936f0d0e416fe3f7787`  
		Last Modified: Sat, 17 Oct 2026 00:31:45 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:9a57e4bb66c02ee21da65d01e9ea3f862396d77aeb4c7f9964300a98cc674485
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6062061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d5f8f64c1fbda3aaa24cf54f3adb9e48465cbd4b737be776c9a20693ce6d9d2`

```dockerfile
```

-	Layers:
	-	`sha256:579a57e57b9281cb395e0d6eb0ae736186a163a6849da698b5b55186d600a176`  
		Last Modified: Sat, 17 Oct 2026 00:31:47 GMT  
		Size: 6.0 MB (6046715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcf8de27c036461c9852cbfadf8a7a6f6ca2f9a9f51536df98996802ad5290a1`  
		Last Modified: Sat, 17 Oct 2026 00:31:47 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:a8ea39664bfc32d871cca5f8140ede84324bff60a0572d771ef3593014c40058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (88951179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcc7807fb95c863f1ed6ced67731ef4089b466da414357a949ae120b0988b75d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:30:49 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:30:49 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:30:49 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:30:49 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:30:49 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:30:49 GMT
ARG KONG_VERSION=3.4.2
# Sat, 17 Oct 2026 00:30:49 GMT
ENV KONG_VERSION=3.4.2
# Sat, 17 Oct 2026 00:30:49 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Sat, 17 Oct 2026 00:30:49 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Sat, 17 Oct 2026 00:31:13 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:13 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:13 GMT
USER kong
# Sat, 17 Oct 2026 00:31:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:13 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:13 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:13 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:13 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1171886d33062c769799f0bd4defe09cd8f42bd88a6dad50191bcf70631089c`  
		Last Modified: Sat, 17 Oct 2026 00:31:27 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5378ba210f8ec0a570ffd6143555e1d8cfc73f87241364a7775b94f6c4a9ea7b`  
		Last Modified: Sat, 17 Oct 2026 00:31:29 GMT  
		Size: 61.3 MB (61265176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53fbf50c9cf8e6e52ab5b90c5df7a3d132ee9e5fa3ea70cef31c4da6870f0c12`  
		Last Modified: Sat, 17 Oct 2026 00:31:27 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:a58ed46027ddc8dffc2f86a4ceecf7ceff1beb9904d8df0cd0c2242722b10626
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6040244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab68f90e32f85d6e5888df6fdc4db0cdbb6b2758dbfa3c25ffbbc191ff83ab8`

```dockerfile
```

-	Layers:
	-	`sha256:08d4949c12620ea7c19e18b34baa9866ae89bae07cbc667714ed000845254be0`  
		Last Modified: Sat, 17 Oct 2026 00:31:28 GMT  
		Size: 6.0 MB (6024794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68e8cc56d7990313075711100941706f828a984b461d0ce2ab7c91769acc82e8`  
		Last Modified: Sat, 17 Oct 2026 00:31:27 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4.2`

```console
$ docker pull kong@sha256:bddc23cfc27769aa4654f518ebc3a9f4310213be3d48ff71b13fc829861eddbb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4.2` - linux; amd64

```console
$ docker pull kong@sha256:af8352c25b1eaecd9cb002c980de94dcdce8e6c7c7ffdce2741af722e0b3c6c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92535038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd456eb48df562672546fc4ad195fddd1d0b0c77b12639e3a10fa44611b7aa7d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:31:05 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:31:05 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:31:05 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:31:05 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:31:05 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:31:05 GMT
ARG KONG_VERSION=3.4.2
# Sat, 17 Oct 2026 00:31:05 GMT
ENV KONG_VERSION=3.4.2
# Sat, 17 Oct 2026 00:31:05 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Sat, 17 Oct 2026 00:31:05 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Sat, 17 Oct 2026 00:31:32 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:32 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:32 GMT
USER kong
# Sat, 17 Oct 2026 00:31:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:32 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:32 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:32 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:32 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e893bb17b5ee272469dac239b1d17c63fc673d042afce88e7ce4188537e56928`  
		Last Modified: Sat, 17 Oct 2026 00:31:45 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982310650bd6041d9b17a78591f250049f74b531fbdd887a18706a66c195c0f1`  
		Last Modified: Sat, 17 Oct 2026 00:31:48 GMT  
		Size: 62.8 MB (62781281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098cedb4172b140a8a64fc21ac0fb2da5d98165ecf1af936f0d0e416fe3f7787`  
		Last Modified: Sat, 17 Oct 2026 00:31:45 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2` - unknown; unknown

```console
$ docker pull kong@sha256:9a57e4bb66c02ee21da65d01e9ea3f862396d77aeb4c7f9964300a98cc674485
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6062061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d5f8f64c1fbda3aaa24cf54f3adb9e48465cbd4b737be776c9a20693ce6d9d2`

```dockerfile
```

-	Layers:
	-	`sha256:579a57e57b9281cb395e0d6eb0ae736186a163a6849da698b5b55186d600a176`  
		Last Modified: Sat, 17 Oct 2026 00:31:47 GMT  
		Size: 6.0 MB (6046715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcf8de27c036461c9852cbfadf8a7a6f6ca2f9a9f51536df98996802ad5290a1`  
		Last Modified: Sat, 17 Oct 2026 00:31:47 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4.2` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:a8ea39664bfc32d871cca5f8140ede84324bff60a0572d771ef3593014c40058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (88951179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcc7807fb95c863f1ed6ced67731ef4089b466da414357a949ae120b0988b75d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:30:49 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:30:49 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:30:49 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:30:49 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:30:49 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:30:49 GMT
ARG KONG_VERSION=3.4.2
# Sat, 17 Oct 2026 00:30:49 GMT
ENV KONG_VERSION=3.4.2
# Sat, 17 Oct 2026 00:30:49 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Sat, 17 Oct 2026 00:30:49 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Sat, 17 Oct 2026 00:31:13 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:13 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:13 GMT
USER kong
# Sat, 17 Oct 2026 00:31:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:13 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:13 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:13 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:13 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1171886d33062c769799f0bd4defe09cd8f42bd88a6dad50191bcf70631089c`  
		Last Modified: Sat, 17 Oct 2026 00:31:27 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5378ba210f8ec0a570ffd6143555e1d8cfc73f87241364a7775b94f6c4a9ea7b`  
		Last Modified: Sat, 17 Oct 2026 00:31:29 GMT  
		Size: 61.3 MB (61265176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53fbf50c9cf8e6e52ab5b90c5df7a3d132ee9e5fa3ea70cef31c4da6870f0c12`  
		Last Modified: Sat, 17 Oct 2026 00:31:27 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2` - unknown; unknown

```console
$ docker pull kong@sha256:a58ed46027ddc8dffc2f86a4ceecf7ceff1beb9904d8df0cd0c2242722b10626
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6040244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab68f90e32f85d6e5888df6fdc4db0cdbb6b2758dbfa3c25ffbbc191ff83ab8`

```dockerfile
```

-	Layers:
	-	`sha256:08d4949c12620ea7c19e18b34baa9866ae89bae07cbc667714ed000845254be0`  
		Last Modified: Sat, 17 Oct 2026 00:31:28 GMT  
		Size: 6.0 MB (6024794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68e8cc56d7990313075711100941706f828a984b461d0ce2ab7c91769acc82e8`  
		Last Modified: Sat, 17 Oct 2026 00:31:27 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4.2-ubuntu`

```console
$ docker pull kong@sha256:bddc23cfc27769aa4654f518ebc3a9f4310213be3d48ff71b13fc829861eddbb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4.2-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:af8352c25b1eaecd9cb002c980de94dcdce8e6c7c7ffdce2741af722e0b3c6c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92535038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd456eb48df562672546fc4ad195fddd1d0b0c77b12639e3a10fa44611b7aa7d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:31:05 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:31:05 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:31:05 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:31:05 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:31:05 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:31:05 GMT
ARG KONG_VERSION=3.4.2
# Sat, 17 Oct 2026 00:31:05 GMT
ENV KONG_VERSION=3.4.2
# Sat, 17 Oct 2026 00:31:05 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Sat, 17 Oct 2026 00:31:05 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Sat, 17 Oct 2026 00:31:32 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:32 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:32 GMT
USER kong
# Sat, 17 Oct 2026 00:31:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:32 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:32 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:32 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:32 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e893bb17b5ee272469dac239b1d17c63fc673d042afce88e7ce4188537e56928`  
		Last Modified: Sat, 17 Oct 2026 00:31:45 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982310650bd6041d9b17a78591f250049f74b531fbdd887a18706a66c195c0f1`  
		Last Modified: Sat, 17 Oct 2026 00:31:48 GMT  
		Size: 62.8 MB (62781281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098cedb4172b140a8a64fc21ac0fb2da5d98165ecf1af936f0d0e416fe3f7787`  
		Last Modified: Sat, 17 Oct 2026 00:31:45 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:9a57e4bb66c02ee21da65d01e9ea3f862396d77aeb4c7f9964300a98cc674485
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6062061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d5f8f64c1fbda3aaa24cf54f3adb9e48465cbd4b737be776c9a20693ce6d9d2`

```dockerfile
```

-	Layers:
	-	`sha256:579a57e57b9281cb395e0d6eb0ae736186a163a6849da698b5b55186d600a176`  
		Last Modified: Sat, 17 Oct 2026 00:31:47 GMT  
		Size: 6.0 MB (6046715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcf8de27c036461c9852cbfadf8a7a6f6ca2f9a9f51536df98996802ad5290a1`  
		Last Modified: Sat, 17 Oct 2026 00:31:47 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4.2-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:a8ea39664bfc32d871cca5f8140ede84324bff60a0572d771ef3593014c40058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (88951179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcc7807fb95c863f1ed6ced67731ef4089b466da414357a949ae120b0988b75d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:30:49 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:30:49 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:30:49 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:30:49 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:30:49 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:30:49 GMT
ARG KONG_VERSION=3.4.2
# Sat, 17 Oct 2026 00:30:49 GMT
ENV KONG_VERSION=3.4.2
# Sat, 17 Oct 2026 00:30:49 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Sat, 17 Oct 2026 00:30:49 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Sat, 17 Oct 2026 00:31:13 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:13 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:13 GMT
USER kong
# Sat, 17 Oct 2026 00:31:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:13 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:13 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:13 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:13 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1171886d33062c769799f0bd4defe09cd8f42bd88a6dad50191bcf70631089c`  
		Last Modified: Sat, 17 Oct 2026 00:31:27 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5378ba210f8ec0a570ffd6143555e1d8cfc73f87241364a7775b94f6c4a9ea7b`  
		Last Modified: Sat, 17 Oct 2026 00:31:29 GMT  
		Size: 61.3 MB (61265176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53fbf50c9cf8e6e52ab5b90c5df7a3d132ee9e5fa3ea70cef31c4da6870f0c12`  
		Last Modified: Sat, 17 Oct 2026 00:31:27 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:a58ed46027ddc8dffc2f86a4ceecf7ceff1beb9904d8df0cd0c2242722b10626
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6040244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab68f90e32f85d6e5888df6fdc4db0cdbb6b2758dbfa3c25ffbbc191ff83ab8`

```dockerfile
```

-	Layers:
	-	`sha256:08d4949c12620ea7c19e18b34baa9866ae89bae07cbc667714ed000845254be0`  
		Last Modified: Sat, 17 Oct 2026 00:31:28 GMT  
		Size: 6.0 MB (6024794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68e8cc56d7990313075711100941706f828a984b461d0ce2ab7c91769acc82e8`  
		Last Modified: Sat, 17 Oct 2026 00:31:27 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8`

```console
$ docker pull kong@sha256:322e80209a919d6eb221e5082db939753a602a09f210f8314a4c7533b7d170d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8` - linux; amd64

```console
$ docker pull kong@sha256:7cf32f7f6f9d28e900df3779b892ade11b5df8636b81effe13c85a8705156b69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117729338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79fb1f36cdc58fdd644eafd1c75454f7ab9e99b88ce1b699c682bbb3b42e9ec7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:31:05 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:31:05 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:31:05 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:31:05 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:31:05 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:31:05 GMT
ARG KONG_VERSION=3.8.0
# Sat, 17 Oct 2026 00:31:05 GMT
ENV KONG_VERSION=3.8.0
# Sat, 17 Oct 2026 00:31:05 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Sat, 17 Oct 2026 00:31:05 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Sat, 17 Oct 2026 00:31:29 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:29 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:29 GMT
USER kong
# Sat, 17 Oct 2026 00:31:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:29 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:29 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:29 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:29 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e893bb17b5ee272469dac239b1d17c63fc673d042afce88e7ce4188537e56928`  
		Last Modified: Sat, 17 Oct 2026 00:31:45 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e08d059aa2a4df9b954e589b8cefbf106f6c28afab937459fd05a5a8d133e5cc`  
		Last Modified: Sat, 17 Oct 2026 00:31:47 GMT  
		Size: 88.0 MB (87975581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098cedb4172b140a8a64fc21ac0fb2da5d98165ecf1af936f0d0e416fe3f7787`  
		Last Modified: Sat, 17 Oct 2026 00:31:45 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8` - unknown; unknown

```console
$ docker pull kong@sha256:85e5dd822023902e14ddbe8657597bdaee7437cb28131d9edf3b5db705fdaf56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7da548e84ce3923aa6a9bcb070d4221b2a0d4210403d10b5d3c7da602c08e438`

```dockerfile
```

-	Layers:
	-	`sha256:32adb1486a019d07f852fc6f313ac71aca2ee97556ec9dafddb0128f0a09c1f7`  
		Last Modified: Sat, 17 Oct 2026 00:31:45 GMT  
		Size: 5.3 MB (5346512 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97e3e90e7f7bcc6698a93c7e7e7dab47335b0ded8354afa668fad5ade7430285`  
		Last Modified: Sat, 17 Oct 2026 00:31:44 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:3c2c74f8da2e5bcb2ffdc98ddd08ada208878f79d2a63f9c70841657f08ee351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114989059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f95fb2c41c0fa89a939e1b197a1d6be79e6fca1b54b14581dbc36b62d94d83e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:30:47 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:30:47 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:30:47 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:30:47 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:30:47 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:30:47 GMT
ARG KONG_VERSION=3.8.0
# Sat, 17 Oct 2026 00:30:47 GMT
ENV KONG_VERSION=3.8.0
# Sat, 17 Oct 2026 00:30:47 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Sat, 17 Oct 2026 00:30:47 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Sat, 17 Oct 2026 00:31:10 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:10 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:10 GMT
USER kong
# Sat, 17 Oct 2026 00:31:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:10 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:10 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:10 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:10 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634e4e1596bc143a24a0b47ae049fc463469f47c6795a5d007700ee856a5a1f1`  
		Last Modified: Sat, 17 Oct 2026 00:31:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206976fbda1f9647a8e1f3e163ea69cb494a994c9fc3bb6c1239940399c667ce`  
		Last Modified: Sat, 17 Oct 2026 00:31:31 GMT  
		Size: 87.3 MB (87303051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace0f1b7569741ebb2ff218e21f0539526067267e94a5515df0ba9592369e485`  
		Last Modified: Sat, 17 Oct 2026 00:31:28 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8` - unknown; unknown

```console
$ docker pull kong@sha256:eb507b0bd108722041db3445fc97d4b74a07eb08c5b8423a2d54e4c17758f962
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76f0d8e0976f13eee42d66fe737216d6e240e2d762ea87a1d6f621c6daca11a3`

```dockerfile
```

-	Layers:
	-	`sha256:c8eb57cb1695b053aab9baa33711ffcb7aed12f14b3b675aa7ad7838ca928de0`  
		Last Modified: Sat, 17 Oct 2026 00:31:29 GMT  
		Size: 5.4 MB (5352838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44db4d3387d51a170fea2ad3ed7d3c524756cc540ae27c0800fca3e9bfc5f597`  
		Last Modified: Sat, 17 Oct 2026 00:31:28 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8-ubuntu`

```console
$ docker pull kong@sha256:322e80209a919d6eb221e5082db939753a602a09f210f8314a4c7533b7d170d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:7cf32f7f6f9d28e900df3779b892ade11b5df8636b81effe13c85a8705156b69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117729338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79fb1f36cdc58fdd644eafd1c75454f7ab9e99b88ce1b699c682bbb3b42e9ec7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:31:05 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:31:05 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:31:05 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:31:05 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:31:05 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:31:05 GMT
ARG KONG_VERSION=3.8.0
# Sat, 17 Oct 2026 00:31:05 GMT
ENV KONG_VERSION=3.8.0
# Sat, 17 Oct 2026 00:31:05 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Sat, 17 Oct 2026 00:31:05 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Sat, 17 Oct 2026 00:31:29 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:29 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:29 GMT
USER kong
# Sat, 17 Oct 2026 00:31:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:29 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:29 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:29 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:29 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e893bb17b5ee272469dac239b1d17c63fc673d042afce88e7ce4188537e56928`  
		Last Modified: Sat, 17 Oct 2026 00:31:45 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e08d059aa2a4df9b954e589b8cefbf106f6c28afab937459fd05a5a8d133e5cc`  
		Last Modified: Sat, 17 Oct 2026 00:31:47 GMT  
		Size: 88.0 MB (87975581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098cedb4172b140a8a64fc21ac0fb2da5d98165ecf1af936f0d0e416fe3f7787`  
		Last Modified: Sat, 17 Oct 2026 00:31:45 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:85e5dd822023902e14ddbe8657597bdaee7437cb28131d9edf3b5db705fdaf56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7da548e84ce3923aa6a9bcb070d4221b2a0d4210403d10b5d3c7da602c08e438`

```dockerfile
```

-	Layers:
	-	`sha256:32adb1486a019d07f852fc6f313ac71aca2ee97556ec9dafddb0128f0a09c1f7`  
		Last Modified: Sat, 17 Oct 2026 00:31:45 GMT  
		Size: 5.3 MB (5346512 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97e3e90e7f7bcc6698a93c7e7e7dab47335b0ded8354afa668fad5ade7430285`  
		Last Modified: Sat, 17 Oct 2026 00:31:44 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:3c2c74f8da2e5bcb2ffdc98ddd08ada208878f79d2a63f9c70841657f08ee351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114989059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f95fb2c41c0fa89a939e1b197a1d6be79e6fca1b54b14581dbc36b62d94d83e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:30:47 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:30:47 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:30:47 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:30:47 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:30:47 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:30:47 GMT
ARG KONG_VERSION=3.8.0
# Sat, 17 Oct 2026 00:30:47 GMT
ENV KONG_VERSION=3.8.0
# Sat, 17 Oct 2026 00:30:47 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Sat, 17 Oct 2026 00:30:47 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Sat, 17 Oct 2026 00:31:10 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:10 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:10 GMT
USER kong
# Sat, 17 Oct 2026 00:31:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:10 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:10 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:10 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:10 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634e4e1596bc143a24a0b47ae049fc463469f47c6795a5d007700ee856a5a1f1`  
		Last Modified: Sat, 17 Oct 2026 00:31:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206976fbda1f9647a8e1f3e163ea69cb494a994c9fc3bb6c1239940399c667ce`  
		Last Modified: Sat, 17 Oct 2026 00:31:31 GMT  
		Size: 87.3 MB (87303051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace0f1b7569741ebb2ff218e21f0539526067267e94a5515df0ba9592369e485`  
		Last Modified: Sat, 17 Oct 2026 00:31:28 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:eb507b0bd108722041db3445fc97d4b74a07eb08c5b8423a2d54e4c17758f962
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76f0d8e0976f13eee42d66fe737216d6e240e2d762ea87a1d6f621c6daca11a3`

```dockerfile
```

-	Layers:
	-	`sha256:c8eb57cb1695b053aab9baa33711ffcb7aed12f14b3b675aa7ad7838ca928de0`  
		Last Modified: Sat, 17 Oct 2026 00:31:29 GMT  
		Size: 5.4 MB (5352838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44db4d3387d51a170fea2ad3ed7d3c524756cc540ae27c0800fca3e9bfc5f597`  
		Last Modified: Sat, 17 Oct 2026 00:31:28 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8.0`

```console
$ docker pull kong@sha256:322e80209a919d6eb221e5082db939753a602a09f210f8314a4c7533b7d170d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8.0` - linux; amd64

```console
$ docker pull kong@sha256:7cf32f7f6f9d28e900df3779b892ade11b5df8636b81effe13c85a8705156b69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117729338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79fb1f36cdc58fdd644eafd1c75454f7ab9e99b88ce1b699c682bbb3b42e9ec7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:31:05 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:31:05 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:31:05 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:31:05 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:31:05 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:31:05 GMT
ARG KONG_VERSION=3.8.0
# Sat, 17 Oct 2026 00:31:05 GMT
ENV KONG_VERSION=3.8.0
# Sat, 17 Oct 2026 00:31:05 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Sat, 17 Oct 2026 00:31:05 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Sat, 17 Oct 2026 00:31:29 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:29 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:29 GMT
USER kong
# Sat, 17 Oct 2026 00:31:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:29 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:29 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:29 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:29 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e893bb17b5ee272469dac239b1d17c63fc673d042afce88e7ce4188537e56928`  
		Last Modified: Sat, 17 Oct 2026 00:31:45 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e08d059aa2a4df9b954e589b8cefbf106f6c28afab937459fd05a5a8d133e5cc`  
		Last Modified: Sat, 17 Oct 2026 00:31:47 GMT  
		Size: 88.0 MB (87975581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098cedb4172b140a8a64fc21ac0fb2da5d98165ecf1af936f0d0e416fe3f7787`  
		Last Modified: Sat, 17 Oct 2026 00:31:45 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0` - unknown; unknown

```console
$ docker pull kong@sha256:85e5dd822023902e14ddbe8657597bdaee7437cb28131d9edf3b5db705fdaf56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7da548e84ce3923aa6a9bcb070d4221b2a0d4210403d10b5d3c7da602c08e438`

```dockerfile
```

-	Layers:
	-	`sha256:32adb1486a019d07f852fc6f313ac71aca2ee97556ec9dafddb0128f0a09c1f7`  
		Last Modified: Sat, 17 Oct 2026 00:31:45 GMT  
		Size: 5.3 MB (5346512 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97e3e90e7f7bcc6698a93c7e7e7dab47335b0ded8354afa668fad5ade7430285`  
		Last Modified: Sat, 17 Oct 2026 00:31:44 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8.0` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:3c2c74f8da2e5bcb2ffdc98ddd08ada208878f79d2a63f9c70841657f08ee351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114989059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f95fb2c41c0fa89a939e1b197a1d6be79e6fca1b54b14581dbc36b62d94d83e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:30:47 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:30:47 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:30:47 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:30:47 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:30:47 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:30:47 GMT
ARG KONG_VERSION=3.8.0
# Sat, 17 Oct 2026 00:30:47 GMT
ENV KONG_VERSION=3.8.0
# Sat, 17 Oct 2026 00:30:47 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Sat, 17 Oct 2026 00:30:47 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Sat, 17 Oct 2026 00:31:10 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:10 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:10 GMT
USER kong
# Sat, 17 Oct 2026 00:31:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:10 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:10 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:10 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:10 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634e4e1596bc143a24a0b47ae049fc463469f47c6795a5d007700ee856a5a1f1`  
		Last Modified: Sat, 17 Oct 2026 00:31:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206976fbda1f9647a8e1f3e163ea69cb494a994c9fc3bb6c1239940399c667ce`  
		Last Modified: Sat, 17 Oct 2026 00:31:31 GMT  
		Size: 87.3 MB (87303051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace0f1b7569741ebb2ff218e21f0539526067267e94a5515df0ba9592369e485`  
		Last Modified: Sat, 17 Oct 2026 00:31:28 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0` - unknown; unknown

```console
$ docker pull kong@sha256:eb507b0bd108722041db3445fc97d4b74a07eb08c5b8423a2d54e4c17758f962
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76f0d8e0976f13eee42d66fe737216d6e240e2d762ea87a1d6f621c6daca11a3`

```dockerfile
```

-	Layers:
	-	`sha256:c8eb57cb1695b053aab9baa33711ffcb7aed12f14b3b675aa7ad7838ca928de0`  
		Last Modified: Sat, 17 Oct 2026 00:31:29 GMT  
		Size: 5.4 MB (5352838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44db4d3387d51a170fea2ad3ed7d3c524756cc540ae27c0800fca3e9bfc5f597`  
		Last Modified: Sat, 17 Oct 2026 00:31:28 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8.0-ubuntu`

```console
$ docker pull kong@sha256:322e80209a919d6eb221e5082db939753a602a09f210f8314a4c7533b7d170d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8.0-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:7cf32f7f6f9d28e900df3779b892ade11b5df8636b81effe13c85a8705156b69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117729338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79fb1f36cdc58fdd644eafd1c75454f7ab9e99b88ce1b699c682bbb3b42e9ec7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:31:05 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:31:05 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:31:05 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:31:05 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:31:05 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:31:05 GMT
ARG KONG_VERSION=3.8.0
# Sat, 17 Oct 2026 00:31:05 GMT
ENV KONG_VERSION=3.8.0
# Sat, 17 Oct 2026 00:31:05 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Sat, 17 Oct 2026 00:31:05 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Sat, 17 Oct 2026 00:31:29 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:29 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:29 GMT
USER kong
# Sat, 17 Oct 2026 00:31:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:29 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:29 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:29 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:29 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e893bb17b5ee272469dac239b1d17c63fc673d042afce88e7ce4188537e56928`  
		Last Modified: Sat, 17 Oct 2026 00:31:45 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e08d059aa2a4df9b954e589b8cefbf106f6c28afab937459fd05a5a8d133e5cc`  
		Last Modified: Sat, 17 Oct 2026 00:31:47 GMT  
		Size: 88.0 MB (87975581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098cedb4172b140a8a64fc21ac0fb2da5d98165ecf1af936f0d0e416fe3f7787`  
		Last Modified: Sat, 17 Oct 2026 00:31:45 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:85e5dd822023902e14ddbe8657597bdaee7437cb28131d9edf3b5db705fdaf56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7da548e84ce3923aa6a9bcb070d4221b2a0d4210403d10b5d3c7da602c08e438`

```dockerfile
```

-	Layers:
	-	`sha256:32adb1486a019d07f852fc6f313ac71aca2ee97556ec9dafddb0128f0a09c1f7`  
		Last Modified: Sat, 17 Oct 2026 00:31:45 GMT  
		Size: 5.3 MB (5346512 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97e3e90e7f7bcc6698a93c7e7e7dab47335b0ded8354afa668fad5ade7430285`  
		Last Modified: Sat, 17 Oct 2026 00:31:44 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8.0-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:3c2c74f8da2e5bcb2ffdc98ddd08ada208878f79d2a63f9c70841657f08ee351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114989059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f95fb2c41c0fa89a939e1b197a1d6be79e6fca1b54b14581dbc36b62d94d83e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:30:47 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:30:47 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:30:47 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:30:47 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:30:47 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:30:47 GMT
ARG KONG_VERSION=3.8.0
# Sat, 17 Oct 2026 00:30:47 GMT
ENV KONG_VERSION=3.8.0
# Sat, 17 Oct 2026 00:30:47 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Sat, 17 Oct 2026 00:30:47 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Sat, 17 Oct 2026 00:31:10 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:10 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:10 GMT
USER kong
# Sat, 17 Oct 2026 00:31:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:10 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:10 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:10 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:10 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634e4e1596bc143a24a0b47ae049fc463469f47c6795a5d007700ee856a5a1f1`  
		Last Modified: Sat, 17 Oct 2026 00:31:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206976fbda1f9647a8e1f3e163ea69cb494a994c9fc3bb6c1239940399c667ce`  
		Last Modified: Sat, 17 Oct 2026 00:31:31 GMT  
		Size: 87.3 MB (87303051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace0f1b7569741ebb2ff218e21f0539526067267e94a5515df0ba9592369e485`  
		Last Modified: Sat, 17 Oct 2026 00:31:28 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:eb507b0bd108722041db3445fc97d4b74a07eb08c5b8423a2d54e4c17758f962
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76f0d8e0976f13eee42d66fe737216d6e240e2d762ea87a1d6f621c6daca11a3`

```dockerfile
```

-	Layers:
	-	`sha256:c8eb57cb1695b053aab9baa33711ffcb7aed12f14b3b675aa7ad7838ca928de0`  
		Last Modified: Sat, 17 Oct 2026 00:31:29 GMT  
		Size: 5.4 MB (5352838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44db4d3387d51a170fea2ad3ed7d3c524756cc540ae27c0800fca3e9bfc5f597`  
		Last Modified: Sat, 17 Oct 2026 00:31:28 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9`

```console
$ docker pull kong@sha256:aa4a4687b1330e427ad0d3b27a0606b833894297c78abf1a212edc9ba73c8620
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9` - linux; amd64

```console
$ docker pull kong@sha256:45993f7e2c77036e52e553419553f58eb06b7dd87513e3350e230dc04b5ebe6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120487095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f80debe0c29be110e045cc6714066f725ad9566e9530809563d9c0b2182be14`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:30:57 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:30:57 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:30:57 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:30:57 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:30:57 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:30:57 GMT
ARG KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:57 GMT
ENV KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:57 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Sat, 17 Oct 2026 00:30:57 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Sat, 17 Oct 2026 00:31:20 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:20 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:20 GMT
USER kong
# Sat, 17 Oct 2026 00:31:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:20 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:20 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:20 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:20 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36483c75dea5d870268201c3ad037a2f77a1735999a906abb41a5b4156fb74a2`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f137ae7193f8df6a1db53d62a86fb4f45f832b47deac35a89b5fdf65fa190abb`  
		Last Modified: Sat, 17 Oct 2026 00:31:39 GMT  
		Size: 90.7 MB (90720051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf9fb2e27700f44b59ea4a22a34ebef38fc65d8f54e7ad6a01b1a7acce7d0a0`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9` - unknown; unknown

```console
$ docker pull kong@sha256:21a2526274994081c8909db7d37ddab053b06c011b350a46f56f97981088c097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524256d871fbb9990f746e3f4d193b1731fca69200f48d606f69277bd4b22726`

```dockerfile
```

-	Layers:
	-	`sha256:afff6f1bff9b89ddabbc953e397f25c95afb7436a8f651b73e670e37f60735e9`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 5.4 MB (5449262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2158efd557543991902390243725230a656818993d46c7a2b5a54ca44652e797`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:5e8ad63d52c02dc31745e4f577c73c4f702dd491d74f6da21a9c9abd77a3c4d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118968754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a48454a8aee6ab6a6d9aa4e35926269a39e79421d67b28caecab2063791b73fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:30:41 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:30:41 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:30:41 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:30:41 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:30:41 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:30:41 GMT
ARG KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:41 GMT
ENV KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:41 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Sat, 17 Oct 2026 00:30:41 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Sat, 17 Oct 2026 00:31:06 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:06 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:06 GMT
USER kong
# Sat, 17 Oct 2026 00:31:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:06 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:06 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:06 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:06 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16f9cf9cb5478c864090bba1cbbe0045ce4d4eb392fb96de005519c44be281e`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f67831c060d2249d53303abdbcd40a91deb3e33c3dd62ffed7ce5718a2fb51f`  
		Last Modified: Sat, 17 Oct 2026 00:31:26 GMT  
		Size: 90.0 MB (90027706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209225ecfd326a0c5bcd8ae86278ed49dcb84bcb24f4e0d4f5aaa23955a1d737`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9` - unknown; unknown

```console
$ docker pull kong@sha256:3f6e55eca0481a13c3b521a238b7fc0790ffa37eecf216e621018782ccc1f04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60fc048ce85f11707a901f79aa9dc6bc01c7853b86236a50326e84676e0467e8`

```dockerfile
```

-	Layers:
	-	`sha256:475fe92565d654b2f5f0c6343ce688541a42c96adbab2d5ac5ae0dfbace775c7`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 5.5 MB (5456429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71da79363bf2714653d63bb6fd060d433efe07d47bea98dc89f0c017b40b0d5e`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 16.4 KB (16357 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9-ubuntu`

```console
$ docker pull kong@sha256:aa4a4687b1330e427ad0d3b27a0606b833894297c78abf1a212edc9ba73c8620
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:45993f7e2c77036e52e553419553f58eb06b7dd87513e3350e230dc04b5ebe6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120487095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f80debe0c29be110e045cc6714066f725ad9566e9530809563d9c0b2182be14`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:30:57 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:30:57 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:30:57 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:30:57 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:30:57 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:30:57 GMT
ARG KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:57 GMT
ENV KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:57 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Sat, 17 Oct 2026 00:30:57 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Sat, 17 Oct 2026 00:31:20 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:20 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:20 GMT
USER kong
# Sat, 17 Oct 2026 00:31:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:20 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:20 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:20 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:20 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36483c75dea5d870268201c3ad037a2f77a1735999a906abb41a5b4156fb74a2`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f137ae7193f8df6a1db53d62a86fb4f45f832b47deac35a89b5fdf65fa190abb`  
		Last Modified: Sat, 17 Oct 2026 00:31:39 GMT  
		Size: 90.7 MB (90720051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf9fb2e27700f44b59ea4a22a34ebef38fc65d8f54e7ad6a01b1a7acce7d0a0`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:21a2526274994081c8909db7d37ddab053b06c011b350a46f56f97981088c097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524256d871fbb9990f746e3f4d193b1731fca69200f48d606f69277bd4b22726`

```dockerfile
```

-	Layers:
	-	`sha256:afff6f1bff9b89ddabbc953e397f25c95afb7436a8f651b73e670e37f60735e9`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 5.4 MB (5449262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2158efd557543991902390243725230a656818993d46c7a2b5a54ca44652e797`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:5e8ad63d52c02dc31745e4f577c73c4f702dd491d74f6da21a9c9abd77a3c4d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118968754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a48454a8aee6ab6a6d9aa4e35926269a39e79421d67b28caecab2063791b73fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:30:41 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:30:41 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:30:41 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:30:41 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:30:41 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:30:41 GMT
ARG KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:41 GMT
ENV KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:41 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Sat, 17 Oct 2026 00:30:41 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Sat, 17 Oct 2026 00:31:06 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:06 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:06 GMT
USER kong
# Sat, 17 Oct 2026 00:31:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:06 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:06 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:06 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:06 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16f9cf9cb5478c864090bba1cbbe0045ce4d4eb392fb96de005519c44be281e`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f67831c060d2249d53303abdbcd40a91deb3e33c3dd62ffed7ce5718a2fb51f`  
		Last Modified: Sat, 17 Oct 2026 00:31:26 GMT  
		Size: 90.0 MB (90027706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209225ecfd326a0c5bcd8ae86278ed49dcb84bcb24f4e0d4f5aaa23955a1d737`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:3f6e55eca0481a13c3b521a238b7fc0790ffa37eecf216e621018782ccc1f04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60fc048ce85f11707a901f79aa9dc6bc01c7853b86236a50326e84676e0467e8`

```dockerfile
```

-	Layers:
	-	`sha256:475fe92565d654b2f5f0c6343ce688541a42c96adbab2d5ac5ae0dfbace775c7`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 5.5 MB (5456429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71da79363bf2714653d63bb6fd060d433efe07d47bea98dc89f0c017b40b0d5e`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 16.4 KB (16357 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9.4`

```console
$ docker pull kong@sha256:aa4a4687b1330e427ad0d3b27a0606b833894297c78abf1a212edc9ba73c8620
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9.4` - linux; amd64

```console
$ docker pull kong@sha256:45993f7e2c77036e52e553419553f58eb06b7dd87513e3350e230dc04b5ebe6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120487095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f80debe0c29be110e045cc6714066f725ad9566e9530809563d9c0b2182be14`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:30:57 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:30:57 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:30:57 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:30:57 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:30:57 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:30:57 GMT
ARG KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:57 GMT
ENV KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:57 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Sat, 17 Oct 2026 00:30:57 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Sat, 17 Oct 2026 00:31:20 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:20 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:20 GMT
USER kong
# Sat, 17 Oct 2026 00:31:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:20 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:20 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:20 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:20 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36483c75dea5d870268201c3ad037a2f77a1735999a906abb41a5b4156fb74a2`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f137ae7193f8df6a1db53d62a86fb4f45f832b47deac35a89b5fdf65fa190abb`  
		Last Modified: Sat, 17 Oct 2026 00:31:39 GMT  
		Size: 90.7 MB (90720051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf9fb2e27700f44b59ea4a22a34ebef38fc65d8f54e7ad6a01b1a7acce7d0a0`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.4` - unknown; unknown

```console
$ docker pull kong@sha256:21a2526274994081c8909db7d37ddab053b06c011b350a46f56f97981088c097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524256d871fbb9990f746e3f4d193b1731fca69200f48d606f69277bd4b22726`

```dockerfile
```

-	Layers:
	-	`sha256:afff6f1bff9b89ddabbc953e397f25c95afb7436a8f651b73e670e37f60735e9`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 5.4 MB (5449262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2158efd557543991902390243725230a656818993d46c7a2b5a54ca44652e797`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9.4` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:5e8ad63d52c02dc31745e4f577c73c4f702dd491d74f6da21a9c9abd77a3c4d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118968754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a48454a8aee6ab6a6d9aa4e35926269a39e79421d67b28caecab2063791b73fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:30:41 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:30:41 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:30:41 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:30:41 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:30:41 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:30:41 GMT
ARG KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:41 GMT
ENV KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:41 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Sat, 17 Oct 2026 00:30:41 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Sat, 17 Oct 2026 00:31:06 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:06 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:06 GMT
USER kong
# Sat, 17 Oct 2026 00:31:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:06 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:06 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:06 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:06 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16f9cf9cb5478c864090bba1cbbe0045ce4d4eb392fb96de005519c44be281e`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f67831c060d2249d53303abdbcd40a91deb3e33c3dd62ffed7ce5718a2fb51f`  
		Last Modified: Sat, 17 Oct 2026 00:31:26 GMT  
		Size: 90.0 MB (90027706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209225ecfd326a0c5bcd8ae86278ed49dcb84bcb24f4e0d4f5aaa23955a1d737`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.4` - unknown; unknown

```console
$ docker pull kong@sha256:3f6e55eca0481a13c3b521a238b7fc0790ffa37eecf216e621018782ccc1f04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60fc048ce85f11707a901f79aa9dc6bc01c7853b86236a50326e84676e0467e8`

```dockerfile
```

-	Layers:
	-	`sha256:475fe92565d654b2f5f0c6343ce688541a42c96adbab2d5ac5ae0dfbace775c7`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 5.5 MB (5456429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71da79363bf2714653d63bb6fd060d433efe07d47bea98dc89f0c017b40b0d5e`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 16.4 KB (16357 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9.4-ubuntu`

```console
$ docker pull kong@sha256:aa4a4687b1330e427ad0d3b27a0606b833894297c78abf1a212edc9ba73c8620
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9.4-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:45993f7e2c77036e52e553419553f58eb06b7dd87513e3350e230dc04b5ebe6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120487095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f80debe0c29be110e045cc6714066f725ad9566e9530809563d9c0b2182be14`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:30:57 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:30:57 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:30:57 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:30:57 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:30:57 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:30:57 GMT
ARG KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:57 GMT
ENV KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:57 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Sat, 17 Oct 2026 00:30:57 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Sat, 17 Oct 2026 00:31:20 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:20 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:20 GMT
USER kong
# Sat, 17 Oct 2026 00:31:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:20 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:20 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:20 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:20 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36483c75dea5d870268201c3ad037a2f77a1735999a906abb41a5b4156fb74a2`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f137ae7193f8df6a1db53d62a86fb4f45f832b47deac35a89b5fdf65fa190abb`  
		Last Modified: Sat, 17 Oct 2026 00:31:39 GMT  
		Size: 90.7 MB (90720051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf9fb2e27700f44b59ea4a22a34ebef38fc65d8f54e7ad6a01b1a7acce7d0a0`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:21a2526274994081c8909db7d37ddab053b06c011b350a46f56f97981088c097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524256d871fbb9990f746e3f4d193b1731fca69200f48d606f69277bd4b22726`

```dockerfile
```

-	Layers:
	-	`sha256:afff6f1bff9b89ddabbc953e397f25c95afb7436a8f651b73e670e37f60735e9`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 5.4 MB (5449262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2158efd557543991902390243725230a656818993d46c7a2b5a54ca44652e797`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9.4-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:5e8ad63d52c02dc31745e4f577c73c4f702dd491d74f6da21a9c9abd77a3c4d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118968754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a48454a8aee6ab6a6d9aa4e35926269a39e79421d67b28caecab2063791b73fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:30:41 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:30:41 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:30:41 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:30:41 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:30:41 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:30:41 GMT
ARG KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:41 GMT
ENV KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:41 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Sat, 17 Oct 2026 00:30:41 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Sat, 17 Oct 2026 00:31:06 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:06 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:06 GMT
USER kong
# Sat, 17 Oct 2026 00:31:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:06 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:06 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:06 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:06 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16f9cf9cb5478c864090bba1cbbe0045ce4d4eb392fb96de005519c44be281e`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f67831c060d2249d53303abdbcd40a91deb3e33c3dd62ffed7ce5718a2fb51f`  
		Last Modified: Sat, 17 Oct 2026 00:31:26 GMT  
		Size: 90.0 MB (90027706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209225ecfd326a0c5bcd8ae86278ed49dcb84bcb24f4e0d4f5aaa23955a1d737`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:3f6e55eca0481a13c3b521a238b7fc0790ffa37eecf216e621018782ccc1f04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60fc048ce85f11707a901f79aa9dc6bc01c7853b86236a50326e84676e0467e8`

```dockerfile
```

-	Layers:
	-	`sha256:475fe92565d654b2f5f0c6343ce688541a42c96adbab2d5ac5ae0dfbace775c7`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 5.5 MB (5456429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71da79363bf2714653d63bb6fd060d433efe07d47bea98dc89f0c017b40b0d5e`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 16.4 KB (16357 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:latest`

```console
$ docker pull kong@sha256:aa4a4687b1330e427ad0d3b27a0606b833894297c78abf1a212edc9ba73c8620
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:45993f7e2c77036e52e553419553f58eb06b7dd87513e3350e230dc04b5ebe6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120487095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f80debe0c29be110e045cc6714066f725ad9566e9530809563d9c0b2182be14`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:30:57 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:30:57 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:30:57 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:30:57 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:30:57 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:30:57 GMT
ARG KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:57 GMT
ENV KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:57 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Sat, 17 Oct 2026 00:30:57 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Sat, 17 Oct 2026 00:31:20 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:20 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:20 GMT
USER kong
# Sat, 17 Oct 2026 00:31:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:20 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:20 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:20 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:20 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36483c75dea5d870268201c3ad037a2f77a1735999a906abb41a5b4156fb74a2`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f137ae7193f8df6a1db53d62a86fb4f45f832b47deac35a89b5fdf65fa190abb`  
		Last Modified: Sat, 17 Oct 2026 00:31:39 GMT  
		Size: 90.7 MB (90720051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf9fb2e27700f44b59ea4a22a34ebef38fc65d8f54e7ad6a01b1a7acce7d0a0`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:latest` - unknown; unknown

```console
$ docker pull kong@sha256:21a2526274994081c8909db7d37ddab053b06c011b350a46f56f97981088c097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524256d871fbb9990f746e3f4d193b1731fca69200f48d606f69277bd4b22726`

```dockerfile
```

-	Layers:
	-	`sha256:afff6f1bff9b89ddabbc953e397f25c95afb7436a8f651b73e670e37f60735e9`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 5.4 MB (5449262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2158efd557543991902390243725230a656818993d46c7a2b5a54ca44652e797`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:latest` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:5e8ad63d52c02dc31745e4f577c73c4f702dd491d74f6da21a9c9abd77a3c4d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118968754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a48454a8aee6ab6a6d9aa4e35926269a39e79421d67b28caecab2063791b73fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:30:41 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:30:41 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:30:41 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:30:41 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:30:41 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:30:41 GMT
ARG KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:41 GMT
ENV KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:41 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Sat, 17 Oct 2026 00:30:41 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Sat, 17 Oct 2026 00:31:06 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:06 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:06 GMT
USER kong
# Sat, 17 Oct 2026 00:31:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:06 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:06 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:06 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:06 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16f9cf9cb5478c864090bba1cbbe0045ce4d4eb392fb96de005519c44be281e`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f67831c060d2249d53303abdbcd40a91deb3e33c3dd62ffed7ce5718a2fb51f`  
		Last Modified: Sat, 17 Oct 2026 00:31:26 GMT  
		Size: 90.0 MB (90027706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209225ecfd326a0c5bcd8ae86278ed49dcb84bcb24f4e0d4f5aaa23955a1d737`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:latest` - unknown; unknown

```console
$ docker pull kong@sha256:3f6e55eca0481a13c3b521a238b7fc0790ffa37eecf216e621018782ccc1f04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60fc048ce85f11707a901f79aa9dc6bc01c7853b86236a50326e84676e0467e8`

```dockerfile
```

-	Layers:
	-	`sha256:475fe92565d654b2f5f0c6343ce688541a42c96adbab2d5ac5ae0dfbace775c7`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 5.5 MB (5456429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71da79363bf2714653d63bb6fd060d433efe07d47bea98dc89f0c017b40b0d5e`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 16.4 KB (16357 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:ubuntu`

```console
$ docker pull kong@sha256:aa4a4687b1330e427ad0d3b27a0606b833894297c78abf1a212edc9ba73c8620
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:45993f7e2c77036e52e553419553f58eb06b7dd87513e3350e230dc04b5ebe6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120487095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f80debe0c29be110e045cc6714066f725ad9566e9530809563d9c0b2182be14`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:30:57 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:30:57 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:30:57 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:30:57 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:30:57 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:30:57 GMT
ARG KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:57 GMT
ENV KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:57 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Sat, 17 Oct 2026 00:30:57 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Sat, 17 Oct 2026 00:31:20 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:20 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:20 GMT
USER kong
# Sat, 17 Oct 2026 00:31:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:20 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:20 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:20 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:20 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36483c75dea5d870268201c3ad037a2f77a1735999a906abb41a5b4156fb74a2`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f137ae7193f8df6a1db53d62a86fb4f45f832b47deac35a89b5fdf65fa190abb`  
		Last Modified: Sat, 17 Oct 2026 00:31:39 GMT  
		Size: 90.7 MB (90720051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf9fb2e27700f44b59ea4a22a34ebef38fc65d8f54e7ad6a01b1a7acce7d0a0`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:21a2526274994081c8909db7d37ddab053b06c011b350a46f56f97981088c097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524256d871fbb9990f746e3f4d193b1731fca69200f48d606f69277bd4b22726`

```dockerfile
```

-	Layers:
	-	`sha256:afff6f1bff9b89ddabbc953e397f25c95afb7436a8f651b73e670e37f60735e9`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 5.4 MB (5449262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2158efd557543991902390243725230a656818993d46c7a2b5a54ca44652e797`  
		Last Modified: Sat, 17 Oct 2026 00:31:37 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:5e8ad63d52c02dc31745e4f577c73c4f702dd491d74f6da21a9c9abd77a3c4d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118968754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a48454a8aee6ab6a6d9aa4e35926269a39e79421d67b28caecab2063791b73fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:30:41 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Sat, 17 Oct 2026 00:30:41 GMT
ARG ASSET=ce
# Sat, 17 Oct 2026 00:30:41 GMT
ENV ASSET=ce
# Sat, 17 Oct 2026 00:30:41 GMT
ARG EE_PORTS
# Sat, 17 Oct 2026 00:30:41 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Sat, 17 Oct 2026 00:30:41 GMT
ARG KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:41 GMT
ENV KONG_VERSION=3.9.4
# Sat, 17 Oct 2026 00:30:41 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Sat, 17 Oct 2026 00:30:41 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Sat, 17 Oct 2026 00:31:06 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Sat, 17 Oct 2026 00:31:06 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:31:06 GMT
USER kong
# Sat, 17 Oct 2026 00:31:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 00:31:06 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Sat, 17 Oct 2026 00:31:06 GMT
STOPSIGNAL SIGQUIT
# Sat, 17 Oct 2026 00:31:06 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Sat, 17 Oct 2026 00:31:06 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16f9cf9cb5478c864090bba1cbbe0045ce4d4eb392fb96de005519c44be281e`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f67831c060d2249d53303abdbcd40a91deb3e33c3dd62ffed7ce5718a2fb51f`  
		Last Modified: Sat, 17 Oct 2026 00:31:26 GMT  
		Size: 90.0 MB (90027706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209225ecfd326a0c5bcd8ae86278ed49dcb84bcb24f4e0d4f5aaa23955a1d737`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:3f6e55eca0481a13c3b521a238b7fc0790ffa37eecf216e621018782ccc1f04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60fc048ce85f11707a901f79aa9dc6bc01c7853b86236a50326e84676e0467e8`

```dockerfile
```

-	Layers:
	-	`sha256:475fe92565d654b2f5f0c6343ce688541a42c96adbab2d5ac5ae0dfbace775c7`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 5.5 MB (5456429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71da79363bf2714653d63bb6fd060d433efe07d47bea98dc89f0c017b40b0d5e`  
		Last Modified: Sat, 17 Oct 2026 00:31:24 GMT  
		Size: 16.4 KB (16357 bytes)  
		MIME: application/vnd.in-toto+json
