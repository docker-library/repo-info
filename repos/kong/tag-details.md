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
$ docker pull kong@sha256:1343ee8d5662d42c03a108314d6326f0f3a307dabf445474946a173fba56fca0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3` - linux; amd64

```console
$ docker pull kong@sha256:f43c04ab0c0f731633d9bfd1ac00f736e8a65e20109dec000e656cf4a641a4cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122878773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1fe629c6b2c4b4231fb95f308f88463da4d7c41bb77ce3256ef31ab27b8c465`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 13 Oct 2026 20:48:34 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 13 Oct 2026 20:48:34 GMT
ARG ASSET=ce
# Tue, 13 Oct 2026 20:48:34 GMT
ENV ASSET=ce
# Tue, 13 Oct 2026 20:48:34 GMT
ARG EE_PORTS
# Tue, 13 Oct 2026 20:48:34 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 13 Oct 2026 20:48:34 GMT
ARG KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:48:34 GMT
ENV KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:48:34 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Tue, 13 Oct 2026 20:48:34 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Tue, 13 Oct 2026 20:48:58 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 13 Oct 2026 20:48:58 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 13 Oct 2026 20:48:58 GMT
USER kong
# Tue, 13 Oct 2026 20:48:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 20:48:58 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 13 Oct 2026 20:48:58 GMT
STOPSIGNAL SIGQUIT
# Tue, 13 Oct 2026 20:48:58 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 13 Oct 2026 20:48:58 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a7804c0f0028834624accb8e8dd8bdba99e00d872af72a8d6858c02974c3ecd`  
		Last Modified: Tue, 13 Oct 2026 20:49:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3bb02646d9d4313024aa78afe125763717e2703f6144f6064215804158c3e5c`  
		Last Modified: Tue, 13 Oct 2026 20:49:18 GMT  
		Size: 93.1 MB (93113059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cd1bb2ea7b9b01b0dc3572bdb2e788b690f26851951ab4d2f42d0b35e9300e5`  
		Last Modified: Tue, 13 Oct 2026 20:49:15 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3` - unknown; unknown

```console
$ docker pull kong@sha256:75589bd98343744eadc1d81d56dd4ffbf0ff5baff598b9279749a3ae7e6551bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a4cfbd749e1067d5e67a2ac89d89fa0a9ff8f1df1f91d82324528b0d5677dad`

```dockerfile
```

-	Layers:
	-	`sha256:9147ba9840a6b0d890e68a076a666857d15fdb487c6728a80aebf80eec8f5531`  
		Last Modified: Tue, 13 Oct 2026 20:49:16 GMT  
		Size: 5.4 MB (5449256 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86e00101b58c1a892f6e92f025a45fa48148033a8d739c6004e5411592b06c98`  
		Last Modified: Tue, 13 Oct 2026 20:49:16 GMT  
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
$ docker pull kong@sha256:511b461210fa1dcd0e30ce808435e7f6f43f87681bf0c4adf624b5c64e08844b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4` - linux; amd64

```console
$ docker pull kong@sha256:f1bcb5fac699e1132bdc778d4fbe2e8ca4cb335a0ca2670c3859affaf9400b6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92534320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a58ac68e9ab5013d49f0fa6d97ecc95dd5cf3783f133a2d050dfcaadaba12366`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:30:14 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 02 Oct 2026 01:30:14 GMT
ARG ASSET=ce
# Fri, 02 Oct 2026 01:30:14 GMT
ENV ASSET=ce
# Fri, 02 Oct 2026 01:30:14 GMT
ARG EE_PORTS
# Fri, 02 Oct 2026 01:30:14 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 02 Oct 2026 01:30:14 GMT
ARG KONG_VERSION=3.4.2
# Fri, 02 Oct 2026 01:30:14 GMT
ENV KONG_VERSION=3.4.2
# Fri, 02 Oct 2026 01:30:14 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Fri, 02 Oct 2026 01:30:14 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Fri, 02 Oct 2026 01:30:36 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 02 Oct 2026 01:30:36 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:30:36 GMT
USER kong
# Fri, 02 Oct 2026 01:30:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 01:30:36 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 02 Oct 2026 01:30:36 GMT
STOPSIGNAL SIGQUIT
# Fri, 02 Oct 2026 01:30:36 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 02 Oct 2026 01:30:36 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bbf0fe75c4f3addf7dfcc7acb4d2beed3d50a454005d28a57490a81304362c9`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5c7d99c269ac4bb0521f1f305ad7eb1b4982c0fe71d0d8f864171c5a0622058`  
		Last Modified: Fri, 02 Oct 2026 01:30:52 GMT  
		Size: 62.8 MB (62781411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd7395be550007101282841efdd24c2abed8924973e42220e049c2562c1426d`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4` - unknown; unknown

```console
$ docker pull kong@sha256:4292d6fb8d2a5e08236c172f426d69020e7a24961542cb39a5801244089672da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6063964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f048991ab18c24e2100f342200e08d844a2feb29d612252f6d576ecbd80ae38`

```dockerfile
```

-	Layers:
	-	`sha256:ad9bb87a08fe2a3a3b5bd9da771cdb8f7a8d7f4681a5bdf6751a05267473d1aa`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
		Size: 6.0 MB (6048618 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc40a128f0e6c80ce55cca9efab18f75f090e7174a0c909691eff1a2997db577`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
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
$ docker pull kong@sha256:511b461210fa1dcd0e30ce808435e7f6f43f87681bf0c4adf624b5c64e08844b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:f1bcb5fac699e1132bdc778d4fbe2e8ca4cb335a0ca2670c3859affaf9400b6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92534320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a58ac68e9ab5013d49f0fa6d97ecc95dd5cf3783f133a2d050dfcaadaba12366`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:30:14 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 02 Oct 2026 01:30:14 GMT
ARG ASSET=ce
# Fri, 02 Oct 2026 01:30:14 GMT
ENV ASSET=ce
# Fri, 02 Oct 2026 01:30:14 GMT
ARG EE_PORTS
# Fri, 02 Oct 2026 01:30:14 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 02 Oct 2026 01:30:14 GMT
ARG KONG_VERSION=3.4.2
# Fri, 02 Oct 2026 01:30:14 GMT
ENV KONG_VERSION=3.4.2
# Fri, 02 Oct 2026 01:30:14 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Fri, 02 Oct 2026 01:30:14 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Fri, 02 Oct 2026 01:30:36 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 02 Oct 2026 01:30:36 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:30:36 GMT
USER kong
# Fri, 02 Oct 2026 01:30:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 01:30:36 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 02 Oct 2026 01:30:36 GMT
STOPSIGNAL SIGQUIT
# Fri, 02 Oct 2026 01:30:36 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 02 Oct 2026 01:30:36 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bbf0fe75c4f3addf7dfcc7acb4d2beed3d50a454005d28a57490a81304362c9`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5c7d99c269ac4bb0521f1f305ad7eb1b4982c0fe71d0d8f864171c5a0622058`  
		Last Modified: Fri, 02 Oct 2026 01:30:52 GMT  
		Size: 62.8 MB (62781411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd7395be550007101282841efdd24c2abed8924973e42220e049c2562c1426d`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:4292d6fb8d2a5e08236c172f426d69020e7a24961542cb39a5801244089672da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6063964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f048991ab18c24e2100f342200e08d844a2feb29d612252f6d576ecbd80ae38`

```dockerfile
```

-	Layers:
	-	`sha256:ad9bb87a08fe2a3a3b5bd9da771cdb8f7a8d7f4681a5bdf6751a05267473d1aa`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
		Size: 6.0 MB (6048618 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc40a128f0e6c80ce55cca9efab18f75f090e7174a0c909691eff1a2997db577`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
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
$ docker pull kong@sha256:511b461210fa1dcd0e30ce808435e7f6f43f87681bf0c4adf624b5c64e08844b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4.2` - linux; amd64

```console
$ docker pull kong@sha256:f1bcb5fac699e1132bdc778d4fbe2e8ca4cb335a0ca2670c3859affaf9400b6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92534320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a58ac68e9ab5013d49f0fa6d97ecc95dd5cf3783f133a2d050dfcaadaba12366`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:30:14 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 02 Oct 2026 01:30:14 GMT
ARG ASSET=ce
# Fri, 02 Oct 2026 01:30:14 GMT
ENV ASSET=ce
# Fri, 02 Oct 2026 01:30:14 GMT
ARG EE_PORTS
# Fri, 02 Oct 2026 01:30:14 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 02 Oct 2026 01:30:14 GMT
ARG KONG_VERSION=3.4.2
# Fri, 02 Oct 2026 01:30:14 GMT
ENV KONG_VERSION=3.4.2
# Fri, 02 Oct 2026 01:30:14 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Fri, 02 Oct 2026 01:30:14 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Fri, 02 Oct 2026 01:30:36 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 02 Oct 2026 01:30:36 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:30:36 GMT
USER kong
# Fri, 02 Oct 2026 01:30:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 01:30:36 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 02 Oct 2026 01:30:36 GMT
STOPSIGNAL SIGQUIT
# Fri, 02 Oct 2026 01:30:36 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 02 Oct 2026 01:30:36 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bbf0fe75c4f3addf7dfcc7acb4d2beed3d50a454005d28a57490a81304362c9`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5c7d99c269ac4bb0521f1f305ad7eb1b4982c0fe71d0d8f864171c5a0622058`  
		Last Modified: Fri, 02 Oct 2026 01:30:52 GMT  
		Size: 62.8 MB (62781411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd7395be550007101282841efdd24c2abed8924973e42220e049c2562c1426d`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2` - unknown; unknown

```console
$ docker pull kong@sha256:4292d6fb8d2a5e08236c172f426d69020e7a24961542cb39a5801244089672da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6063964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f048991ab18c24e2100f342200e08d844a2feb29d612252f6d576ecbd80ae38`

```dockerfile
```

-	Layers:
	-	`sha256:ad9bb87a08fe2a3a3b5bd9da771cdb8f7a8d7f4681a5bdf6751a05267473d1aa`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
		Size: 6.0 MB (6048618 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc40a128f0e6c80ce55cca9efab18f75f090e7174a0c909691eff1a2997db577`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
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
$ docker pull kong@sha256:511b461210fa1dcd0e30ce808435e7f6f43f87681bf0c4adf624b5c64e08844b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4.2-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:f1bcb5fac699e1132bdc778d4fbe2e8ca4cb335a0ca2670c3859affaf9400b6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92534320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a58ac68e9ab5013d49f0fa6d97ecc95dd5cf3783f133a2d050dfcaadaba12366`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:30:14 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 02 Oct 2026 01:30:14 GMT
ARG ASSET=ce
# Fri, 02 Oct 2026 01:30:14 GMT
ENV ASSET=ce
# Fri, 02 Oct 2026 01:30:14 GMT
ARG EE_PORTS
# Fri, 02 Oct 2026 01:30:14 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 02 Oct 2026 01:30:14 GMT
ARG KONG_VERSION=3.4.2
# Fri, 02 Oct 2026 01:30:14 GMT
ENV KONG_VERSION=3.4.2
# Fri, 02 Oct 2026 01:30:14 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Fri, 02 Oct 2026 01:30:14 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Fri, 02 Oct 2026 01:30:36 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 02 Oct 2026 01:30:36 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:30:36 GMT
USER kong
# Fri, 02 Oct 2026 01:30:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 01:30:36 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 02 Oct 2026 01:30:36 GMT
STOPSIGNAL SIGQUIT
# Fri, 02 Oct 2026 01:30:36 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 02 Oct 2026 01:30:36 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bbf0fe75c4f3addf7dfcc7acb4d2beed3d50a454005d28a57490a81304362c9`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5c7d99c269ac4bb0521f1f305ad7eb1b4982c0fe71d0d8f864171c5a0622058`  
		Last Modified: Fri, 02 Oct 2026 01:30:52 GMT  
		Size: 62.8 MB (62781411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd7395be550007101282841efdd24c2abed8924973e42220e049c2562c1426d`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:4292d6fb8d2a5e08236c172f426d69020e7a24961542cb39a5801244089672da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6063964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f048991ab18c24e2100f342200e08d844a2feb29d612252f6d576ecbd80ae38`

```dockerfile
```

-	Layers:
	-	`sha256:ad9bb87a08fe2a3a3b5bd9da771cdb8f7a8d7f4681a5bdf6751a05267473d1aa`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
		Size: 6.0 MB (6048618 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc40a128f0e6c80ce55cca9efab18f75f090e7174a0c909691eff1a2997db577`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
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
$ docker pull kong@sha256:a60f00b1f62d78afaa1dc2fbc7d2e29b13c5bf53f8782d56edfd404d425b9453
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8` - linux; amd64

```console
$ docker pull kong@sha256:b496acc7566a39db353fe98370a85f4f154a2f80b371eb221158724f93d404f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117728040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfb293c155dd5d4aea6aaaaa220b998d8a1c4f3faa2ee6e0ea43bf59f1dae46c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:30:13 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 02 Oct 2026 01:30:13 GMT
ARG ASSET=ce
# Fri, 02 Oct 2026 01:30:13 GMT
ENV ASSET=ce
# Fri, 02 Oct 2026 01:30:13 GMT
ARG EE_PORTS
# Fri, 02 Oct 2026 01:30:13 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 02 Oct 2026 01:30:13 GMT
ARG KONG_VERSION=3.8.0
# Fri, 02 Oct 2026 01:30:13 GMT
ENV KONG_VERSION=3.8.0
# Fri, 02 Oct 2026 01:30:13 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Fri, 02 Oct 2026 01:30:13 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Fri, 02 Oct 2026 01:30:35 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 02 Oct 2026 01:30:35 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:30:35 GMT
USER kong
# Fri, 02 Oct 2026 01:30:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 01:30:35 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 02 Oct 2026 01:30:35 GMT
STOPSIGNAL SIGQUIT
# Fri, 02 Oct 2026 01:30:35 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 02 Oct 2026 01:30:35 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1daadd77147384c91d8e645b18813b89314ff2d1a9d93486acc0e0213f6d8a2f`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bada9d13eaf05c2dd51380ef2213607021368811718d170450f7a4bc73260823`  
		Last Modified: Fri, 02 Oct 2026 01:30:53 GMT  
		Size: 88.0 MB (87975128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651555200447c3c549fbc46b0416148bad2b861a4a6e322b1d840c551ac5bb36`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8` - unknown; unknown

```console
$ docker pull kong@sha256:f60c4e570fe1ad7292ce2379935a18fd99e88c38489d7ee0389da654efddaef4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5363759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b92b5dcddaca5e09f703e571a4949f4474c2fb19e0812cfbd0dd381c6663669`

```dockerfile
```

-	Layers:
	-	`sha256:1d9a832c47ce99631bfed2d03e03d2ea9b418bf8fdb7ab9b4acfee7a58386d1a`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
		Size: 5.3 MB (5348415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d6e1ba64fc8090e38e9e2288a2178dcaee051dc55b126e5b6d60053c0cdcfd8`  
		Last Modified: Fri, 02 Oct 2026 01:30:50 GMT  
		Size: 15.3 KB (15344 bytes)  
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
$ docker pull kong@sha256:a60f00b1f62d78afaa1dc2fbc7d2e29b13c5bf53f8782d56edfd404d425b9453
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:b496acc7566a39db353fe98370a85f4f154a2f80b371eb221158724f93d404f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117728040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfb293c155dd5d4aea6aaaaa220b998d8a1c4f3faa2ee6e0ea43bf59f1dae46c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:30:13 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 02 Oct 2026 01:30:13 GMT
ARG ASSET=ce
# Fri, 02 Oct 2026 01:30:13 GMT
ENV ASSET=ce
# Fri, 02 Oct 2026 01:30:13 GMT
ARG EE_PORTS
# Fri, 02 Oct 2026 01:30:13 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 02 Oct 2026 01:30:13 GMT
ARG KONG_VERSION=3.8.0
# Fri, 02 Oct 2026 01:30:13 GMT
ENV KONG_VERSION=3.8.0
# Fri, 02 Oct 2026 01:30:13 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Fri, 02 Oct 2026 01:30:13 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Fri, 02 Oct 2026 01:30:35 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 02 Oct 2026 01:30:35 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:30:35 GMT
USER kong
# Fri, 02 Oct 2026 01:30:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 01:30:35 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 02 Oct 2026 01:30:35 GMT
STOPSIGNAL SIGQUIT
# Fri, 02 Oct 2026 01:30:35 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 02 Oct 2026 01:30:35 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1daadd77147384c91d8e645b18813b89314ff2d1a9d93486acc0e0213f6d8a2f`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bada9d13eaf05c2dd51380ef2213607021368811718d170450f7a4bc73260823`  
		Last Modified: Fri, 02 Oct 2026 01:30:53 GMT  
		Size: 88.0 MB (87975128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651555200447c3c549fbc46b0416148bad2b861a4a6e322b1d840c551ac5bb36`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:f60c4e570fe1ad7292ce2379935a18fd99e88c38489d7ee0389da654efddaef4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5363759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b92b5dcddaca5e09f703e571a4949f4474c2fb19e0812cfbd0dd381c6663669`

```dockerfile
```

-	Layers:
	-	`sha256:1d9a832c47ce99631bfed2d03e03d2ea9b418bf8fdb7ab9b4acfee7a58386d1a`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
		Size: 5.3 MB (5348415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d6e1ba64fc8090e38e9e2288a2178dcaee051dc55b126e5b6d60053c0cdcfd8`  
		Last Modified: Fri, 02 Oct 2026 01:30:50 GMT  
		Size: 15.3 KB (15344 bytes)  
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
$ docker pull kong@sha256:a60f00b1f62d78afaa1dc2fbc7d2e29b13c5bf53f8782d56edfd404d425b9453
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8.0` - linux; amd64

```console
$ docker pull kong@sha256:b496acc7566a39db353fe98370a85f4f154a2f80b371eb221158724f93d404f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117728040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfb293c155dd5d4aea6aaaaa220b998d8a1c4f3faa2ee6e0ea43bf59f1dae46c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:30:13 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 02 Oct 2026 01:30:13 GMT
ARG ASSET=ce
# Fri, 02 Oct 2026 01:30:13 GMT
ENV ASSET=ce
# Fri, 02 Oct 2026 01:30:13 GMT
ARG EE_PORTS
# Fri, 02 Oct 2026 01:30:13 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 02 Oct 2026 01:30:13 GMT
ARG KONG_VERSION=3.8.0
# Fri, 02 Oct 2026 01:30:13 GMT
ENV KONG_VERSION=3.8.0
# Fri, 02 Oct 2026 01:30:13 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Fri, 02 Oct 2026 01:30:13 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Fri, 02 Oct 2026 01:30:35 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 02 Oct 2026 01:30:35 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:30:35 GMT
USER kong
# Fri, 02 Oct 2026 01:30:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 01:30:35 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 02 Oct 2026 01:30:35 GMT
STOPSIGNAL SIGQUIT
# Fri, 02 Oct 2026 01:30:35 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 02 Oct 2026 01:30:35 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1daadd77147384c91d8e645b18813b89314ff2d1a9d93486acc0e0213f6d8a2f`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bada9d13eaf05c2dd51380ef2213607021368811718d170450f7a4bc73260823`  
		Last Modified: Fri, 02 Oct 2026 01:30:53 GMT  
		Size: 88.0 MB (87975128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651555200447c3c549fbc46b0416148bad2b861a4a6e322b1d840c551ac5bb36`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0` - unknown; unknown

```console
$ docker pull kong@sha256:f60c4e570fe1ad7292ce2379935a18fd99e88c38489d7ee0389da654efddaef4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5363759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b92b5dcddaca5e09f703e571a4949f4474c2fb19e0812cfbd0dd381c6663669`

```dockerfile
```

-	Layers:
	-	`sha256:1d9a832c47ce99631bfed2d03e03d2ea9b418bf8fdb7ab9b4acfee7a58386d1a`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
		Size: 5.3 MB (5348415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d6e1ba64fc8090e38e9e2288a2178dcaee051dc55b126e5b6d60053c0cdcfd8`  
		Last Modified: Fri, 02 Oct 2026 01:30:50 GMT  
		Size: 15.3 KB (15344 bytes)  
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
$ docker pull kong@sha256:a60f00b1f62d78afaa1dc2fbc7d2e29b13c5bf53f8782d56edfd404d425b9453
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8.0-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:b496acc7566a39db353fe98370a85f4f154a2f80b371eb221158724f93d404f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117728040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfb293c155dd5d4aea6aaaaa220b998d8a1c4f3faa2ee6e0ea43bf59f1dae46c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:30:13 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 02 Oct 2026 01:30:13 GMT
ARG ASSET=ce
# Fri, 02 Oct 2026 01:30:13 GMT
ENV ASSET=ce
# Fri, 02 Oct 2026 01:30:13 GMT
ARG EE_PORTS
# Fri, 02 Oct 2026 01:30:13 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 02 Oct 2026 01:30:13 GMT
ARG KONG_VERSION=3.8.0
# Fri, 02 Oct 2026 01:30:13 GMT
ENV KONG_VERSION=3.8.0
# Fri, 02 Oct 2026 01:30:13 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Fri, 02 Oct 2026 01:30:13 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Fri, 02 Oct 2026 01:30:35 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 02 Oct 2026 01:30:35 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:30:35 GMT
USER kong
# Fri, 02 Oct 2026 01:30:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 01:30:35 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 02 Oct 2026 01:30:35 GMT
STOPSIGNAL SIGQUIT
# Fri, 02 Oct 2026 01:30:35 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 02 Oct 2026 01:30:35 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1daadd77147384c91d8e645b18813b89314ff2d1a9d93486acc0e0213f6d8a2f`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bada9d13eaf05c2dd51380ef2213607021368811718d170450f7a4bc73260823`  
		Last Modified: Fri, 02 Oct 2026 01:30:53 GMT  
		Size: 88.0 MB (87975128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651555200447c3c549fbc46b0416148bad2b861a4a6e322b1d840c551ac5bb36`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:f60c4e570fe1ad7292ce2379935a18fd99e88c38489d7ee0389da654efddaef4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5363759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b92b5dcddaca5e09f703e571a4949f4474c2fb19e0812cfbd0dd381c6663669`

```dockerfile
```

-	Layers:
	-	`sha256:1d9a832c47ce99631bfed2d03e03d2ea9b418bf8fdb7ab9b4acfee7a58386d1a`  
		Last Modified: Fri, 02 Oct 2026 01:30:51 GMT  
		Size: 5.3 MB (5348415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d6e1ba64fc8090e38e9e2288a2178dcaee051dc55b126e5b6d60053c0cdcfd8`  
		Last Modified: Fri, 02 Oct 2026 01:30:50 GMT  
		Size: 15.3 KB (15344 bytes)  
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
$ docker pull kong@sha256:1343ee8d5662d42c03a108314d6326f0f3a307dabf445474946a173fba56fca0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9` - linux; amd64

```console
$ docker pull kong@sha256:f43c04ab0c0f731633d9bfd1ac00f736e8a65e20109dec000e656cf4a641a4cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122878773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1fe629c6b2c4b4231fb95f308f88463da4d7c41bb77ce3256ef31ab27b8c465`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 13 Oct 2026 20:48:34 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 13 Oct 2026 20:48:34 GMT
ARG ASSET=ce
# Tue, 13 Oct 2026 20:48:34 GMT
ENV ASSET=ce
# Tue, 13 Oct 2026 20:48:34 GMT
ARG EE_PORTS
# Tue, 13 Oct 2026 20:48:34 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 13 Oct 2026 20:48:34 GMT
ARG KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:48:34 GMT
ENV KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:48:34 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Tue, 13 Oct 2026 20:48:34 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Tue, 13 Oct 2026 20:48:58 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 13 Oct 2026 20:48:58 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 13 Oct 2026 20:48:58 GMT
USER kong
# Tue, 13 Oct 2026 20:48:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 20:48:58 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 13 Oct 2026 20:48:58 GMT
STOPSIGNAL SIGQUIT
# Tue, 13 Oct 2026 20:48:58 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 13 Oct 2026 20:48:58 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a7804c0f0028834624accb8e8dd8bdba99e00d872af72a8d6858c02974c3ecd`  
		Last Modified: Tue, 13 Oct 2026 20:49:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3bb02646d9d4313024aa78afe125763717e2703f6144f6064215804158c3e5c`  
		Last Modified: Tue, 13 Oct 2026 20:49:18 GMT  
		Size: 93.1 MB (93113059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cd1bb2ea7b9b01b0dc3572bdb2e788b690f26851951ab4d2f42d0b35e9300e5`  
		Last Modified: Tue, 13 Oct 2026 20:49:15 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9` - unknown; unknown

```console
$ docker pull kong@sha256:75589bd98343744eadc1d81d56dd4ffbf0ff5baff598b9279749a3ae7e6551bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a4cfbd749e1067d5e67a2ac89d89fa0a9ff8f1df1f91d82324528b0d5677dad`

```dockerfile
```

-	Layers:
	-	`sha256:9147ba9840a6b0d890e68a076a666857d15fdb487c6728a80aebf80eec8f5531`  
		Last Modified: Tue, 13 Oct 2026 20:49:16 GMT  
		Size: 5.4 MB (5449256 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86e00101b58c1a892f6e92f025a45fa48148033a8d739c6004e5411592b06c98`  
		Last Modified: Tue, 13 Oct 2026 20:49:16 GMT  
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
$ docker pull kong@sha256:1343ee8d5662d42c03a108314d6326f0f3a307dabf445474946a173fba56fca0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:f43c04ab0c0f731633d9bfd1ac00f736e8a65e20109dec000e656cf4a641a4cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122878773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1fe629c6b2c4b4231fb95f308f88463da4d7c41bb77ce3256ef31ab27b8c465`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 13 Oct 2026 20:48:34 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 13 Oct 2026 20:48:34 GMT
ARG ASSET=ce
# Tue, 13 Oct 2026 20:48:34 GMT
ENV ASSET=ce
# Tue, 13 Oct 2026 20:48:34 GMT
ARG EE_PORTS
# Tue, 13 Oct 2026 20:48:34 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 13 Oct 2026 20:48:34 GMT
ARG KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:48:34 GMT
ENV KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:48:34 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Tue, 13 Oct 2026 20:48:34 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Tue, 13 Oct 2026 20:48:58 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 13 Oct 2026 20:48:58 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 13 Oct 2026 20:48:58 GMT
USER kong
# Tue, 13 Oct 2026 20:48:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 20:48:58 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 13 Oct 2026 20:48:58 GMT
STOPSIGNAL SIGQUIT
# Tue, 13 Oct 2026 20:48:58 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 13 Oct 2026 20:48:58 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a7804c0f0028834624accb8e8dd8bdba99e00d872af72a8d6858c02974c3ecd`  
		Last Modified: Tue, 13 Oct 2026 20:49:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3bb02646d9d4313024aa78afe125763717e2703f6144f6064215804158c3e5c`  
		Last Modified: Tue, 13 Oct 2026 20:49:18 GMT  
		Size: 93.1 MB (93113059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cd1bb2ea7b9b01b0dc3572bdb2e788b690f26851951ab4d2f42d0b35e9300e5`  
		Last Modified: Tue, 13 Oct 2026 20:49:15 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:75589bd98343744eadc1d81d56dd4ffbf0ff5baff598b9279749a3ae7e6551bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a4cfbd749e1067d5e67a2ac89d89fa0a9ff8f1df1f91d82324528b0d5677dad`

```dockerfile
```

-	Layers:
	-	`sha256:9147ba9840a6b0d890e68a076a666857d15fdb487c6728a80aebf80eec8f5531`  
		Last Modified: Tue, 13 Oct 2026 20:49:16 GMT  
		Size: 5.4 MB (5449256 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86e00101b58c1a892f6e92f025a45fa48148033a8d739c6004e5411592b06c98`  
		Last Modified: Tue, 13 Oct 2026 20:49:16 GMT  
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
$ docker pull kong@sha256:1343ee8d5662d42c03a108314d6326f0f3a307dabf445474946a173fba56fca0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9.4` - linux; amd64

```console
$ docker pull kong@sha256:f43c04ab0c0f731633d9bfd1ac00f736e8a65e20109dec000e656cf4a641a4cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122878773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1fe629c6b2c4b4231fb95f308f88463da4d7c41bb77ce3256ef31ab27b8c465`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 13 Oct 2026 20:48:34 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 13 Oct 2026 20:48:34 GMT
ARG ASSET=ce
# Tue, 13 Oct 2026 20:48:34 GMT
ENV ASSET=ce
# Tue, 13 Oct 2026 20:48:34 GMT
ARG EE_PORTS
# Tue, 13 Oct 2026 20:48:34 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 13 Oct 2026 20:48:34 GMT
ARG KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:48:34 GMT
ENV KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:48:34 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Tue, 13 Oct 2026 20:48:34 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Tue, 13 Oct 2026 20:48:58 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 13 Oct 2026 20:48:58 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 13 Oct 2026 20:48:58 GMT
USER kong
# Tue, 13 Oct 2026 20:48:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 20:48:58 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 13 Oct 2026 20:48:58 GMT
STOPSIGNAL SIGQUIT
# Tue, 13 Oct 2026 20:48:58 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 13 Oct 2026 20:48:58 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a7804c0f0028834624accb8e8dd8bdba99e00d872af72a8d6858c02974c3ecd`  
		Last Modified: Tue, 13 Oct 2026 20:49:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3bb02646d9d4313024aa78afe125763717e2703f6144f6064215804158c3e5c`  
		Last Modified: Tue, 13 Oct 2026 20:49:18 GMT  
		Size: 93.1 MB (93113059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cd1bb2ea7b9b01b0dc3572bdb2e788b690f26851951ab4d2f42d0b35e9300e5`  
		Last Modified: Tue, 13 Oct 2026 20:49:15 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.4` - unknown; unknown

```console
$ docker pull kong@sha256:75589bd98343744eadc1d81d56dd4ffbf0ff5baff598b9279749a3ae7e6551bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a4cfbd749e1067d5e67a2ac89d89fa0a9ff8f1df1f91d82324528b0d5677dad`

```dockerfile
```

-	Layers:
	-	`sha256:9147ba9840a6b0d890e68a076a666857d15fdb487c6728a80aebf80eec8f5531`  
		Last Modified: Tue, 13 Oct 2026 20:49:16 GMT  
		Size: 5.4 MB (5449256 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86e00101b58c1a892f6e92f025a45fa48148033a8d739c6004e5411592b06c98`  
		Last Modified: Tue, 13 Oct 2026 20:49:16 GMT  
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
$ docker pull kong@sha256:1343ee8d5662d42c03a108314d6326f0f3a307dabf445474946a173fba56fca0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9.4-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:f43c04ab0c0f731633d9bfd1ac00f736e8a65e20109dec000e656cf4a641a4cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122878773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1fe629c6b2c4b4231fb95f308f88463da4d7c41bb77ce3256ef31ab27b8c465`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 13 Oct 2026 20:48:34 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 13 Oct 2026 20:48:34 GMT
ARG ASSET=ce
# Tue, 13 Oct 2026 20:48:34 GMT
ENV ASSET=ce
# Tue, 13 Oct 2026 20:48:34 GMT
ARG EE_PORTS
# Tue, 13 Oct 2026 20:48:34 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 13 Oct 2026 20:48:34 GMT
ARG KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:48:34 GMT
ENV KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:48:34 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Tue, 13 Oct 2026 20:48:34 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Tue, 13 Oct 2026 20:48:58 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 13 Oct 2026 20:48:58 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 13 Oct 2026 20:48:58 GMT
USER kong
# Tue, 13 Oct 2026 20:48:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 20:48:58 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 13 Oct 2026 20:48:58 GMT
STOPSIGNAL SIGQUIT
# Tue, 13 Oct 2026 20:48:58 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 13 Oct 2026 20:48:58 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a7804c0f0028834624accb8e8dd8bdba99e00d872af72a8d6858c02974c3ecd`  
		Last Modified: Tue, 13 Oct 2026 20:49:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3bb02646d9d4313024aa78afe125763717e2703f6144f6064215804158c3e5c`  
		Last Modified: Tue, 13 Oct 2026 20:49:18 GMT  
		Size: 93.1 MB (93113059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cd1bb2ea7b9b01b0dc3572bdb2e788b690f26851951ab4d2f42d0b35e9300e5`  
		Last Modified: Tue, 13 Oct 2026 20:49:15 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:75589bd98343744eadc1d81d56dd4ffbf0ff5baff598b9279749a3ae7e6551bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a4cfbd749e1067d5e67a2ac89d89fa0a9ff8f1df1f91d82324528b0d5677dad`

```dockerfile
```

-	Layers:
	-	`sha256:9147ba9840a6b0d890e68a076a666857d15fdb487c6728a80aebf80eec8f5531`  
		Last Modified: Tue, 13 Oct 2026 20:49:16 GMT  
		Size: 5.4 MB (5449256 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86e00101b58c1a892f6e92f025a45fa48148033a8d739c6004e5411592b06c98`  
		Last Modified: Tue, 13 Oct 2026 20:49:16 GMT  
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
$ docker pull kong@sha256:1343ee8d5662d42c03a108314d6326f0f3a307dabf445474946a173fba56fca0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:f43c04ab0c0f731633d9bfd1ac00f736e8a65e20109dec000e656cf4a641a4cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122878773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1fe629c6b2c4b4231fb95f308f88463da4d7c41bb77ce3256ef31ab27b8c465`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 13 Oct 2026 20:48:34 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 13 Oct 2026 20:48:34 GMT
ARG ASSET=ce
# Tue, 13 Oct 2026 20:48:34 GMT
ENV ASSET=ce
# Tue, 13 Oct 2026 20:48:34 GMT
ARG EE_PORTS
# Tue, 13 Oct 2026 20:48:34 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 13 Oct 2026 20:48:34 GMT
ARG KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:48:34 GMT
ENV KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:48:34 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Tue, 13 Oct 2026 20:48:34 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Tue, 13 Oct 2026 20:48:58 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 13 Oct 2026 20:48:58 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 13 Oct 2026 20:48:58 GMT
USER kong
# Tue, 13 Oct 2026 20:48:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 20:48:58 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 13 Oct 2026 20:48:58 GMT
STOPSIGNAL SIGQUIT
# Tue, 13 Oct 2026 20:48:58 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 13 Oct 2026 20:48:58 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a7804c0f0028834624accb8e8dd8bdba99e00d872af72a8d6858c02974c3ecd`  
		Last Modified: Tue, 13 Oct 2026 20:49:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3bb02646d9d4313024aa78afe125763717e2703f6144f6064215804158c3e5c`  
		Last Modified: Tue, 13 Oct 2026 20:49:18 GMT  
		Size: 93.1 MB (93113059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cd1bb2ea7b9b01b0dc3572bdb2e788b690f26851951ab4d2f42d0b35e9300e5`  
		Last Modified: Tue, 13 Oct 2026 20:49:15 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:latest` - unknown; unknown

```console
$ docker pull kong@sha256:75589bd98343744eadc1d81d56dd4ffbf0ff5baff598b9279749a3ae7e6551bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a4cfbd749e1067d5e67a2ac89d89fa0a9ff8f1df1f91d82324528b0d5677dad`

```dockerfile
```

-	Layers:
	-	`sha256:9147ba9840a6b0d890e68a076a666857d15fdb487c6728a80aebf80eec8f5531`  
		Last Modified: Tue, 13 Oct 2026 20:49:16 GMT  
		Size: 5.4 MB (5449256 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86e00101b58c1a892f6e92f025a45fa48148033a8d739c6004e5411592b06c98`  
		Last Modified: Tue, 13 Oct 2026 20:49:16 GMT  
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
$ docker pull kong@sha256:1343ee8d5662d42c03a108314d6326f0f3a307dabf445474946a173fba56fca0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:f43c04ab0c0f731633d9bfd1ac00f736e8a65e20109dec000e656cf4a641a4cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122878773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1fe629c6b2c4b4231fb95f308f88463da4d7c41bb77ce3256ef31ab27b8c465`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 13 Oct 2026 20:48:34 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 13 Oct 2026 20:48:34 GMT
ARG ASSET=ce
# Tue, 13 Oct 2026 20:48:34 GMT
ENV ASSET=ce
# Tue, 13 Oct 2026 20:48:34 GMT
ARG EE_PORTS
# Tue, 13 Oct 2026 20:48:34 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 13 Oct 2026 20:48:34 GMT
ARG KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:48:34 GMT
ENV KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:48:34 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Tue, 13 Oct 2026 20:48:34 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Tue, 13 Oct 2026 20:48:58 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 13 Oct 2026 20:48:58 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 13 Oct 2026 20:48:58 GMT
USER kong
# Tue, 13 Oct 2026 20:48:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 20:48:58 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 13 Oct 2026 20:48:58 GMT
STOPSIGNAL SIGQUIT
# Tue, 13 Oct 2026 20:48:58 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 13 Oct 2026 20:48:58 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a7804c0f0028834624accb8e8dd8bdba99e00d872af72a8d6858c02974c3ecd`  
		Last Modified: Tue, 13 Oct 2026 20:49:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3bb02646d9d4313024aa78afe125763717e2703f6144f6064215804158c3e5c`  
		Last Modified: Tue, 13 Oct 2026 20:49:18 GMT  
		Size: 93.1 MB (93113059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cd1bb2ea7b9b01b0dc3572bdb2e788b690f26851951ab4d2f42d0b35e9300e5`  
		Last Modified: Tue, 13 Oct 2026 20:49:15 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:75589bd98343744eadc1d81d56dd4ffbf0ff5baff598b9279749a3ae7e6551bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a4cfbd749e1067d5e67a2ac89d89fa0a9ff8f1df1f91d82324528b0d5677dad`

```dockerfile
```

-	Layers:
	-	`sha256:9147ba9840a6b0d890e68a076a666857d15fdb487c6728a80aebf80eec8f5531`  
		Last Modified: Tue, 13 Oct 2026 20:49:16 GMT  
		Size: 5.4 MB (5449256 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86e00101b58c1a892f6e92f025a45fa48148033a8d739c6004e5411592b06c98`  
		Last Modified: Tue, 13 Oct 2026 20:49:16 GMT  
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
