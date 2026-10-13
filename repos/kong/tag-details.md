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
$ docker pull kong@sha256:8485cabdadb0320212baf1b3f3f47ab293438a61691d198154ccd899d5aabb65
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
$ docker pull kong@sha256:056c9c8947246cfbf05549b52377520aad042880e492b78084861e3e53d91743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121241489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c75256c247e6a4ab36f44360680c04ee3bd6aa36e065994922bbe0bbf5c8504`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 13 Oct 2026 20:49:36 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 13 Oct 2026 20:49:36 GMT
ARG ASSET=ce
# Tue, 13 Oct 2026 20:49:36 GMT
ENV ASSET=ce
# Tue, 13 Oct 2026 20:49:36 GMT
ARG EE_PORTS
# Tue, 13 Oct 2026 20:49:36 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 13 Oct 2026 20:49:36 GMT
ARG KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:49:36 GMT
ENV KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:49:36 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Tue, 13 Oct 2026 20:49:36 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Tue, 13 Oct 2026 20:50:01 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 13 Oct 2026 20:50:01 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 13 Oct 2026 20:50:01 GMT
USER kong
# Tue, 13 Oct 2026 20:50:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 20:50:01 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 13 Oct 2026 20:50:01 GMT
STOPSIGNAL SIGQUIT
# Tue, 13 Oct 2026 20:50:01 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 13 Oct 2026 20:50:01 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba42d4ad10b09a586832ee7e82d293d99c13df3f7346b105627e6c55da5a2e5`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb9a6d2d724c942144c1092c4ccd19e14f6019e258caff378ac8c2617754bed5`  
		Last Modified: Tue, 13 Oct 2026 20:50:21 GMT  
		Size: 92.3 MB (92300111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd2a804300d8de1766fde07e08728750b3a5391f6c279c61556e956131024e6`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3` - unknown; unknown

```console
$ docker pull kong@sha256:11f9f5cd76495c08976e6844b0aa0c957682bb6fea57d3e040d788d479e84321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:686275c8c951fb608d5783d1b38cdc32f4d109c6b6a5ac3285915f16ef7fdd2d`

```dockerfile
```

-	Layers:
	-	`sha256:deaa38719f94f6d9a7473814104501b006fd625498850d37745c8baf2ea002c5`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 5.5 MB (5456423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd955dec22126d064958503569d4a5d605feafdcd87796465f3ac547fc081d55`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4`

```console
$ docker pull kong@sha256:7007d860e5e24efc54da1c06d7ed8d7f1e0754a56d937d57aade329ab20bb3bc
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
$ docker pull kong@sha256:6c0c720b4208245a52a390def6de865ce487002cc1b57f58dfaa21accd273476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (88951717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c0efd85ef6163969410e1e691473214a0f85fbfa367230dc9bc5bec0c1f07d4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:29:55 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 02 Oct 2026 01:29:55 GMT
ARG ASSET=ce
# Fri, 02 Oct 2026 01:29:55 GMT
ENV ASSET=ce
# Fri, 02 Oct 2026 01:29:55 GMT
ARG EE_PORTS
# Fri, 02 Oct 2026 01:29:55 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 02 Oct 2026 01:29:55 GMT
ARG KONG_VERSION=3.4.2
# Fri, 02 Oct 2026 01:29:55 GMT
ENV KONG_VERSION=3.4.2
# Fri, 02 Oct 2026 01:29:55 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Fri, 02 Oct 2026 01:29:55 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Fri, 02 Oct 2026 01:30:20 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 02 Oct 2026 01:30:20 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:30:20 GMT
USER kong
# Fri, 02 Oct 2026 01:30:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 01:30:20 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 02 Oct 2026 01:30:20 GMT
STOPSIGNAL SIGQUIT
# Fri, 02 Oct 2026 01:30:20 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 02 Oct 2026 01:30:20 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2436447d1bcfa64bd9e5952bf64a1be08ca174493844807d5180217ada176065`  
		Last Modified: Fri, 02 Oct 2026 01:30:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f596e9c288bc6daba2d20dcd7172220ced1371434edcbb749e08dda8ca0f0cc`  
		Last Modified: Fri, 02 Oct 2026 01:30:37 GMT  
		Size: 61.3 MB (61266297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7df386ddcccb16afff2783ab4da0805c879ed1fe7d142da29a2204ffe9e478a`  
		Last Modified: Fri, 02 Oct 2026 01:30:35 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4` - unknown; unknown

```console
$ docker pull kong@sha256:31a8410f709d6567b9c07eeb7ffc8f3f014ca6632024db669a64d3bbb35df8ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6042146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58bf54356fb78119e3ceca28cba5364accd58fa8f75db22cc664aabebf9a18a8`

```dockerfile
```

-	Layers:
	-	`sha256:0faa3e5df5c82b0fe4390a566c3bf217e8e35aba3a1fb80cb4e91f69bb73bee7`  
		Last Modified: Fri, 02 Oct 2026 01:30:35 GMT  
		Size: 6.0 MB (6026697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:010dbf614fb00e8e872f743c1544867fc0daceec4fac87474a8a5af975f329e5`  
		Last Modified: Fri, 02 Oct 2026 01:30:34 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4-ubuntu`

```console
$ docker pull kong@sha256:7007d860e5e24efc54da1c06d7ed8d7f1e0754a56d937d57aade329ab20bb3bc
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
$ docker pull kong@sha256:6c0c720b4208245a52a390def6de865ce487002cc1b57f58dfaa21accd273476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (88951717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c0efd85ef6163969410e1e691473214a0f85fbfa367230dc9bc5bec0c1f07d4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:29:55 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 02 Oct 2026 01:29:55 GMT
ARG ASSET=ce
# Fri, 02 Oct 2026 01:29:55 GMT
ENV ASSET=ce
# Fri, 02 Oct 2026 01:29:55 GMT
ARG EE_PORTS
# Fri, 02 Oct 2026 01:29:55 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 02 Oct 2026 01:29:55 GMT
ARG KONG_VERSION=3.4.2
# Fri, 02 Oct 2026 01:29:55 GMT
ENV KONG_VERSION=3.4.2
# Fri, 02 Oct 2026 01:29:55 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Fri, 02 Oct 2026 01:29:55 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Fri, 02 Oct 2026 01:30:20 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 02 Oct 2026 01:30:20 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:30:20 GMT
USER kong
# Fri, 02 Oct 2026 01:30:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 01:30:20 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 02 Oct 2026 01:30:20 GMT
STOPSIGNAL SIGQUIT
# Fri, 02 Oct 2026 01:30:20 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 02 Oct 2026 01:30:20 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2436447d1bcfa64bd9e5952bf64a1be08ca174493844807d5180217ada176065`  
		Last Modified: Fri, 02 Oct 2026 01:30:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f596e9c288bc6daba2d20dcd7172220ced1371434edcbb749e08dda8ca0f0cc`  
		Last Modified: Fri, 02 Oct 2026 01:30:37 GMT  
		Size: 61.3 MB (61266297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7df386ddcccb16afff2783ab4da0805c879ed1fe7d142da29a2204ffe9e478a`  
		Last Modified: Fri, 02 Oct 2026 01:30:35 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:31a8410f709d6567b9c07eeb7ffc8f3f014ca6632024db669a64d3bbb35df8ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6042146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58bf54356fb78119e3ceca28cba5364accd58fa8f75db22cc664aabebf9a18a8`

```dockerfile
```

-	Layers:
	-	`sha256:0faa3e5df5c82b0fe4390a566c3bf217e8e35aba3a1fb80cb4e91f69bb73bee7`  
		Last Modified: Fri, 02 Oct 2026 01:30:35 GMT  
		Size: 6.0 MB (6026697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:010dbf614fb00e8e872f743c1544867fc0daceec4fac87474a8a5af975f329e5`  
		Last Modified: Fri, 02 Oct 2026 01:30:34 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4.2`

```console
$ docker pull kong@sha256:7007d860e5e24efc54da1c06d7ed8d7f1e0754a56d937d57aade329ab20bb3bc
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
$ docker pull kong@sha256:6c0c720b4208245a52a390def6de865ce487002cc1b57f58dfaa21accd273476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (88951717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c0efd85ef6163969410e1e691473214a0f85fbfa367230dc9bc5bec0c1f07d4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:29:55 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 02 Oct 2026 01:29:55 GMT
ARG ASSET=ce
# Fri, 02 Oct 2026 01:29:55 GMT
ENV ASSET=ce
# Fri, 02 Oct 2026 01:29:55 GMT
ARG EE_PORTS
# Fri, 02 Oct 2026 01:29:55 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 02 Oct 2026 01:29:55 GMT
ARG KONG_VERSION=3.4.2
# Fri, 02 Oct 2026 01:29:55 GMT
ENV KONG_VERSION=3.4.2
# Fri, 02 Oct 2026 01:29:55 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Fri, 02 Oct 2026 01:29:55 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Fri, 02 Oct 2026 01:30:20 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 02 Oct 2026 01:30:20 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:30:20 GMT
USER kong
# Fri, 02 Oct 2026 01:30:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 01:30:20 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 02 Oct 2026 01:30:20 GMT
STOPSIGNAL SIGQUIT
# Fri, 02 Oct 2026 01:30:20 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 02 Oct 2026 01:30:20 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2436447d1bcfa64bd9e5952bf64a1be08ca174493844807d5180217ada176065`  
		Last Modified: Fri, 02 Oct 2026 01:30:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f596e9c288bc6daba2d20dcd7172220ced1371434edcbb749e08dda8ca0f0cc`  
		Last Modified: Fri, 02 Oct 2026 01:30:37 GMT  
		Size: 61.3 MB (61266297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7df386ddcccb16afff2783ab4da0805c879ed1fe7d142da29a2204ffe9e478a`  
		Last Modified: Fri, 02 Oct 2026 01:30:35 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2` - unknown; unknown

```console
$ docker pull kong@sha256:31a8410f709d6567b9c07eeb7ffc8f3f014ca6632024db669a64d3bbb35df8ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6042146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58bf54356fb78119e3ceca28cba5364accd58fa8f75db22cc664aabebf9a18a8`

```dockerfile
```

-	Layers:
	-	`sha256:0faa3e5df5c82b0fe4390a566c3bf217e8e35aba3a1fb80cb4e91f69bb73bee7`  
		Last Modified: Fri, 02 Oct 2026 01:30:35 GMT  
		Size: 6.0 MB (6026697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:010dbf614fb00e8e872f743c1544867fc0daceec4fac87474a8a5af975f329e5`  
		Last Modified: Fri, 02 Oct 2026 01:30:34 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4.2-ubuntu`

```console
$ docker pull kong@sha256:7007d860e5e24efc54da1c06d7ed8d7f1e0754a56d937d57aade329ab20bb3bc
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
$ docker pull kong@sha256:6c0c720b4208245a52a390def6de865ce487002cc1b57f58dfaa21accd273476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (88951717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c0efd85ef6163969410e1e691473214a0f85fbfa367230dc9bc5bec0c1f07d4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:29:55 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 02 Oct 2026 01:29:55 GMT
ARG ASSET=ce
# Fri, 02 Oct 2026 01:29:55 GMT
ENV ASSET=ce
# Fri, 02 Oct 2026 01:29:55 GMT
ARG EE_PORTS
# Fri, 02 Oct 2026 01:29:55 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 02 Oct 2026 01:29:55 GMT
ARG KONG_VERSION=3.4.2
# Fri, 02 Oct 2026 01:29:55 GMT
ENV KONG_VERSION=3.4.2
# Fri, 02 Oct 2026 01:29:55 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Fri, 02 Oct 2026 01:29:55 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Fri, 02 Oct 2026 01:30:20 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 02 Oct 2026 01:30:20 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:30:20 GMT
USER kong
# Fri, 02 Oct 2026 01:30:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 01:30:20 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 02 Oct 2026 01:30:20 GMT
STOPSIGNAL SIGQUIT
# Fri, 02 Oct 2026 01:30:20 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 02 Oct 2026 01:30:20 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2436447d1bcfa64bd9e5952bf64a1be08ca174493844807d5180217ada176065`  
		Last Modified: Fri, 02 Oct 2026 01:30:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f596e9c288bc6daba2d20dcd7172220ced1371434edcbb749e08dda8ca0f0cc`  
		Last Modified: Fri, 02 Oct 2026 01:30:37 GMT  
		Size: 61.3 MB (61266297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7df386ddcccb16afff2783ab4da0805c879ed1fe7d142da29a2204ffe9e478a`  
		Last Modified: Fri, 02 Oct 2026 01:30:35 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:31a8410f709d6567b9c07eeb7ffc8f3f014ca6632024db669a64d3bbb35df8ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6042146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58bf54356fb78119e3ceca28cba5364accd58fa8f75db22cc664aabebf9a18a8`

```dockerfile
```

-	Layers:
	-	`sha256:0faa3e5df5c82b0fe4390a566c3bf217e8e35aba3a1fb80cb4e91f69bb73bee7`  
		Last Modified: Fri, 02 Oct 2026 01:30:35 GMT  
		Size: 6.0 MB (6026697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:010dbf614fb00e8e872f743c1544867fc0daceec4fac87474a8a5af975f329e5`  
		Last Modified: Fri, 02 Oct 2026 01:30:34 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8`

```console
$ docker pull kong@sha256:8635e3c97b27cf71ed620bb30f6091dbab1d39aad99a6c54dd9c3cfccb6d1013
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
$ docker pull kong@sha256:46f6a98b1ad42dea77e365440d397c86142ddfe87a2fd189ec49334e0f9ee500
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114985966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30bd590d57093eb409e7a55bdebb8da920a56f927e31c773c50a06178dc2a785`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:29:53 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 02 Oct 2026 01:29:53 GMT
ARG ASSET=ce
# Fri, 02 Oct 2026 01:29:53 GMT
ENV ASSET=ce
# Fri, 02 Oct 2026 01:29:53 GMT
ARG EE_PORTS
# Fri, 02 Oct 2026 01:29:53 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 02 Oct 2026 01:29:53 GMT
ARG KONG_VERSION=3.8.0
# Fri, 02 Oct 2026 01:29:53 GMT
ENV KONG_VERSION=3.8.0
# Fri, 02 Oct 2026 01:29:53 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Fri, 02 Oct 2026 01:29:53 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Fri, 02 Oct 2026 01:30:18 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 02 Oct 2026 01:30:18 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:30:18 GMT
USER kong
# Fri, 02 Oct 2026 01:30:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 01:30:18 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 02 Oct 2026 01:30:18 GMT
STOPSIGNAL SIGQUIT
# Fri, 02 Oct 2026 01:30:18 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 02 Oct 2026 01:30:18 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fcf34c14b44eb704469236aa01272ffa326372cd2b099a39bba998657c78d4c`  
		Last Modified: Fri, 02 Oct 2026 01:30:35 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa0bfab4ce4b3cd553b706447cf3b0466263dac569c40a28c21a193f31b6ef73`  
		Last Modified: Fri, 02 Oct 2026 01:30:39 GMT  
		Size: 87.3 MB (87300544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a58f07b10a74eff21e302a06d7280eea7f29f9e14b789492d3f77491ffa4c12`  
		Last Modified: Fri, 02 Oct 2026 01:30:36 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8` - unknown; unknown

```console
$ docker pull kong@sha256:087d68af5314d4a67a8ae6dc0ca32fb70e448be4b8c909566e1cb3169ce2380d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5370191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353b19418bb0aa64e4e63957281d911c79d904513a521a1d44ad7e2f9ed55818`

```dockerfile
```

-	Layers:
	-	`sha256:1c056c40e71922a2009aa6e38ff827d03fe0173ccd6cd1781806ef2b0d51d1b7`  
		Last Modified: Fri, 02 Oct 2026 01:30:36 GMT  
		Size: 5.4 MB (5354741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02f1bcc6d92df4727fbcee08eb2a6c831e287f9d0ea868353fdf06f7446462d8`  
		Last Modified: Fri, 02 Oct 2026 01:30:36 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8-ubuntu`

```console
$ docker pull kong@sha256:8635e3c97b27cf71ed620bb30f6091dbab1d39aad99a6c54dd9c3cfccb6d1013
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
$ docker pull kong@sha256:46f6a98b1ad42dea77e365440d397c86142ddfe87a2fd189ec49334e0f9ee500
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114985966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30bd590d57093eb409e7a55bdebb8da920a56f927e31c773c50a06178dc2a785`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:29:53 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 02 Oct 2026 01:29:53 GMT
ARG ASSET=ce
# Fri, 02 Oct 2026 01:29:53 GMT
ENV ASSET=ce
# Fri, 02 Oct 2026 01:29:53 GMT
ARG EE_PORTS
# Fri, 02 Oct 2026 01:29:53 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 02 Oct 2026 01:29:53 GMT
ARG KONG_VERSION=3.8.0
# Fri, 02 Oct 2026 01:29:53 GMT
ENV KONG_VERSION=3.8.0
# Fri, 02 Oct 2026 01:29:53 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Fri, 02 Oct 2026 01:29:53 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Fri, 02 Oct 2026 01:30:18 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 02 Oct 2026 01:30:18 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:30:18 GMT
USER kong
# Fri, 02 Oct 2026 01:30:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 01:30:18 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 02 Oct 2026 01:30:18 GMT
STOPSIGNAL SIGQUIT
# Fri, 02 Oct 2026 01:30:18 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 02 Oct 2026 01:30:18 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fcf34c14b44eb704469236aa01272ffa326372cd2b099a39bba998657c78d4c`  
		Last Modified: Fri, 02 Oct 2026 01:30:35 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa0bfab4ce4b3cd553b706447cf3b0466263dac569c40a28c21a193f31b6ef73`  
		Last Modified: Fri, 02 Oct 2026 01:30:39 GMT  
		Size: 87.3 MB (87300544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a58f07b10a74eff21e302a06d7280eea7f29f9e14b789492d3f77491ffa4c12`  
		Last Modified: Fri, 02 Oct 2026 01:30:36 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:087d68af5314d4a67a8ae6dc0ca32fb70e448be4b8c909566e1cb3169ce2380d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5370191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353b19418bb0aa64e4e63957281d911c79d904513a521a1d44ad7e2f9ed55818`

```dockerfile
```

-	Layers:
	-	`sha256:1c056c40e71922a2009aa6e38ff827d03fe0173ccd6cd1781806ef2b0d51d1b7`  
		Last Modified: Fri, 02 Oct 2026 01:30:36 GMT  
		Size: 5.4 MB (5354741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02f1bcc6d92df4727fbcee08eb2a6c831e287f9d0ea868353fdf06f7446462d8`  
		Last Modified: Fri, 02 Oct 2026 01:30:36 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8.0`

```console
$ docker pull kong@sha256:8635e3c97b27cf71ed620bb30f6091dbab1d39aad99a6c54dd9c3cfccb6d1013
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
$ docker pull kong@sha256:46f6a98b1ad42dea77e365440d397c86142ddfe87a2fd189ec49334e0f9ee500
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114985966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30bd590d57093eb409e7a55bdebb8da920a56f927e31c773c50a06178dc2a785`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:29:53 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 02 Oct 2026 01:29:53 GMT
ARG ASSET=ce
# Fri, 02 Oct 2026 01:29:53 GMT
ENV ASSET=ce
# Fri, 02 Oct 2026 01:29:53 GMT
ARG EE_PORTS
# Fri, 02 Oct 2026 01:29:53 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 02 Oct 2026 01:29:53 GMT
ARG KONG_VERSION=3.8.0
# Fri, 02 Oct 2026 01:29:53 GMT
ENV KONG_VERSION=3.8.0
# Fri, 02 Oct 2026 01:29:53 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Fri, 02 Oct 2026 01:29:53 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Fri, 02 Oct 2026 01:30:18 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 02 Oct 2026 01:30:18 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:30:18 GMT
USER kong
# Fri, 02 Oct 2026 01:30:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 01:30:18 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 02 Oct 2026 01:30:18 GMT
STOPSIGNAL SIGQUIT
# Fri, 02 Oct 2026 01:30:18 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 02 Oct 2026 01:30:18 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fcf34c14b44eb704469236aa01272ffa326372cd2b099a39bba998657c78d4c`  
		Last Modified: Fri, 02 Oct 2026 01:30:35 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa0bfab4ce4b3cd553b706447cf3b0466263dac569c40a28c21a193f31b6ef73`  
		Last Modified: Fri, 02 Oct 2026 01:30:39 GMT  
		Size: 87.3 MB (87300544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a58f07b10a74eff21e302a06d7280eea7f29f9e14b789492d3f77491ffa4c12`  
		Last Modified: Fri, 02 Oct 2026 01:30:36 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0` - unknown; unknown

```console
$ docker pull kong@sha256:087d68af5314d4a67a8ae6dc0ca32fb70e448be4b8c909566e1cb3169ce2380d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5370191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353b19418bb0aa64e4e63957281d911c79d904513a521a1d44ad7e2f9ed55818`

```dockerfile
```

-	Layers:
	-	`sha256:1c056c40e71922a2009aa6e38ff827d03fe0173ccd6cd1781806ef2b0d51d1b7`  
		Last Modified: Fri, 02 Oct 2026 01:30:36 GMT  
		Size: 5.4 MB (5354741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02f1bcc6d92df4727fbcee08eb2a6c831e287f9d0ea868353fdf06f7446462d8`  
		Last Modified: Fri, 02 Oct 2026 01:30:36 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8.0-ubuntu`

```console
$ docker pull kong@sha256:8635e3c97b27cf71ed620bb30f6091dbab1d39aad99a6c54dd9c3cfccb6d1013
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
$ docker pull kong@sha256:46f6a98b1ad42dea77e365440d397c86142ddfe87a2fd189ec49334e0f9ee500
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114985966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30bd590d57093eb409e7a55bdebb8da920a56f927e31c773c50a06178dc2a785`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:29:53 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 02 Oct 2026 01:29:53 GMT
ARG ASSET=ce
# Fri, 02 Oct 2026 01:29:53 GMT
ENV ASSET=ce
# Fri, 02 Oct 2026 01:29:53 GMT
ARG EE_PORTS
# Fri, 02 Oct 2026 01:29:53 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 02 Oct 2026 01:29:53 GMT
ARG KONG_VERSION=3.8.0
# Fri, 02 Oct 2026 01:29:53 GMT
ENV KONG_VERSION=3.8.0
# Fri, 02 Oct 2026 01:29:53 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Fri, 02 Oct 2026 01:29:53 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Fri, 02 Oct 2026 01:30:18 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 02 Oct 2026 01:30:18 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:30:18 GMT
USER kong
# Fri, 02 Oct 2026 01:30:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 01:30:18 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 02 Oct 2026 01:30:18 GMT
STOPSIGNAL SIGQUIT
# Fri, 02 Oct 2026 01:30:18 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 02 Oct 2026 01:30:18 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fcf34c14b44eb704469236aa01272ffa326372cd2b099a39bba998657c78d4c`  
		Last Modified: Fri, 02 Oct 2026 01:30:35 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa0bfab4ce4b3cd553b706447cf3b0466263dac569c40a28c21a193f31b6ef73`  
		Last Modified: Fri, 02 Oct 2026 01:30:39 GMT  
		Size: 87.3 MB (87300544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a58f07b10a74eff21e302a06d7280eea7f29f9e14b789492d3f77491ffa4c12`  
		Last Modified: Fri, 02 Oct 2026 01:30:36 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:087d68af5314d4a67a8ae6dc0ca32fb70e448be4b8c909566e1cb3169ce2380d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5370191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353b19418bb0aa64e4e63957281d911c79d904513a521a1d44ad7e2f9ed55818`

```dockerfile
```

-	Layers:
	-	`sha256:1c056c40e71922a2009aa6e38ff827d03fe0173ccd6cd1781806ef2b0d51d1b7`  
		Last Modified: Fri, 02 Oct 2026 01:30:36 GMT  
		Size: 5.4 MB (5354741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02f1bcc6d92df4727fbcee08eb2a6c831e287f9d0ea868353fdf06f7446462d8`  
		Last Modified: Fri, 02 Oct 2026 01:30:36 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9`

```console
$ docker pull kong@sha256:8485cabdadb0320212baf1b3f3f47ab293438a61691d198154ccd899d5aabb65
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
$ docker pull kong@sha256:056c9c8947246cfbf05549b52377520aad042880e492b78084861e3e53d91743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121241489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c75256c247e6a4ab36f44360680c04ee3bd6aa36e065994922bbe0bbf5c8504`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 13 Oct 2026 20:49:36 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 13 Oct 2026 20:49:36 GMT
ARG ASSET=ce
# Tue, 13 Oct 2026 20:49:36 GMT
ENV ASSET=ce
# Tue, 13 Oct 2026 20:49:36 GMT
ARG EE_PORTS
# Tue, 13 Oct 2026 20:49:36 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 13 Oct 2026 20:49:36 GMT
ARG KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:49:36 GMT
ENV KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:49:36 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Tue, 13 Oct 2026 20:49:36 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Tue, 13 Oct 2026 20:50:01 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 13 Oct 2026 20:50:01 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 13 Oct 2026 20:50:01 GMT
USER kong
# Tue, 13 Oct 2026 20:50:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 20:50:01 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 13 Oct 2026 20:50:01 GMT
STOPSIGNAL SIGQUIT
# Tue, 13 Oct 2026 20:50:01 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 13 Oct 2026 20:50:01 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba42d4ad10b09a586832ee7e82d293d99c13df3f7346b105627e6c55da5a2e5`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb9a6d2d724c942144c1092c4ccd19e14f6019e258caff378ac8c2617754bed5`  
		Last Modified: Tue, 13 Oct 2026 20:50:21 GMT  
		Size: 92.3 MB (92300111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd2a804300d8de1766fde07e08728750b3a5391f6c279c61556e956131024e6`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9` - unknown; unknown

```console
$ docker pull kong@sha256:11f9f5cd76495c08976e6844b0aa0c957682bb6fea57d3e040d788d479e84321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:686275c8c951fb608d5783d1b38cdc32f4d109c6b6a5ac3285915f16ef7fdd2d`

```dockerfile
```

-	Layers:
	-	`sha256:deaa38719f94f6d9a7473814104501b006fd625498850d37745c8baf2ea002c5`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 5.5 MB (5456423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd955dec22126d064958503569d4a5d605feafdcd87796465f3ac547fc081d55`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9-ubuntu`

```console
$ docker pull kong@sha256:8485cabdadb0320212baf1b3f3f47ab293438a61691d198154ccd899d5aabb65
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
$ docker pull kong@sha256:056c9c8947246cfbf05549b52377520aad042880e492b78084861e3e53d91743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121241489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c75256c247e6a4ab36f44360680c04ee3bd6aa36e065994922bbe0bbf5c8504`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 13 Oct 2026 20:49:36 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 13 Oct 2026 20:49:36 GMT
ARG ASSET=ce
# Tue, 13 Oct 2026 20:49:36 GMT
ENV ASSET=ce
# Tue, 13 Oct 2026 20:49:36 GMT
ARG EE_PORTS
# Tue, 13 Oct 2026 20:49:36 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 13 Oct 2026 20:49:36 GMT
ARG KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:49:36 GMT
ENV KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:49:36 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Tue, 13 Oct 2026 20:49:36 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Tue, 13 Oct 2026 20:50:01 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 13 Oct 2026 20:50:01 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 13 Oct 2026 20:50:01 GMT
USER kong
# Tue, 13 Oct 2026 20:50:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 20:50:01 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 13 Oct 2026 20:50:01 GMT
STOPSIGNAL SIGQUIT
# Tue, 13 Oct 2026 20:50:01 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 13 Oct 2026 20:50:01 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba42d4ad10b09a586832ee7e82d293d99c13df3f7346b105627e6c55da5a2e5`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb9a6d2d724c942144c1092c4ccd19e14f6019e258caff378ac8c2617754bed5`  
		Last Modified: Tue, 13 Oct 2026 20:50:21 GMT  
		Size: 92.3 MB (92300111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd2a804300d8de1766fde07e08728750b3a5391f6c279c61556e956131024e6`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:11f9f5cd76495c08976e6844b0aa0c957682bb6fea57d3e040d788d479e84321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:686275c8c951fb608d5783d1b38cdc32f4d109c6b6a5ac3285915f16ef7fdd2d`

```dockerfile
```

-	Layers:
	-	`sha256:deaa38719f94f6d9a7473814104501b006fd625498850d37745c8baf2ea002c5`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 5.5 MB (5456423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd955dec22126d064958503569d4a5d605feafdcd87796465f3ac547fc081d55`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9.4`

```console
$ docker pull kong@sha256:8485cabdadb0320212baf1b3f3f47ab293438a61691d198154ccd899d5aabb65
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
$ docker pull kong@sha256:056c9c8947246cfbf05549b52377520aad042880e492b78084861e3e53d91743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121241489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c75256c247e6a4ab36f44360680c04ee3bd6aa36e065994922bbe0bbf5c8504`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 13 Oct 2026 20:49:36 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 13 Oct 2026 20:49:36 GMT
ARG ASSET=ce
# Tue, 13 Oct 2026 20:49:36 GMT
ENV ASSET=ce
# Tue, 13 Oct 2026 20:49:36 GMT
ARG EE_PORTS
# Tue, 13 Oct 2026 20:49:36 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 13 Oct 2026 20:49:36 GMT
ARG KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:49:36 GMT
ENV KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:49:36 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Tue, 13 Oct 2026 20:49:36 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Tue, 13 Oct 2026 20:50:01 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 13 Oct 2026 20:50:01 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 13 Oct 2026 20:50:01 GMT
USER kong
# Tue, 13 Oct 2026 20:50:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 20:50:01 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 13 Oct 2026 20:50:01 GMT
STOPSIGNAL SIGQUIT
# Tue, 13 Oct 2026 20:50:01 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 13 Oct 2026 20:50:01 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba42d4ad10b09a586832ee7e82d293d99c13df3f7346b105627e6c55da5a2e5`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb9a6d2d724c942144c1092c4ccd19e14f6019e258caff378ac8c2617754bed5`  
		Last Modified: Tue, 13 Oct 2026 20:50:21 GMT  
		Size: 92.3 MB (92300111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd2a804300d8de1766fde07e08728750b3a5391f6c279c61556e956131024e6`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.4` - unknown; unknown

```console
$ docker pull kong@sha256:11f9f5cd76495c08976e6844b0aa0c957682bb6fea57d3e040d788d479e84321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:686275c8c951fb608d5783d1b38cdc32f4d109c6b6a5ac3285915f16ef7fdd2d`

```dockerfile
```

-	Layers:
	-	`sha256:deaa38719f94f6d9a7473814104501b006fd625498850d37745c8baf2ea002c5`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 5.5 MB (5456423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd955dec22126d064958503569d4a5d605feafdcd87796465f3ac547fc081d55`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9.4-ubuntu`

```console
$ docker pull kong@sha256:8485cabdadb0320212baf1b3f3f47ab293438a61691d198154ccd899d5aabb65
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
$ docker pull kong@sha256:056c9c8947246cfbf05549b52377520aad042880e492b78084861e3e53d91743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121241489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c75256c247e6a4ab36f44360680c04ee3bd6aa36e065994922bbe0bbf5c8504`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 13 Oct 2026 20:49:36 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 13 Oct 2026 20:49:36 GMT
ARG ASSET=ce
# Tue, 13 Oct 2026 20:49:36 GMT
ENV ASSET=ce
# Tue, 13 Oct 2026 20:49:36 GMT
ARG EE_PORTS
# Tue, 13 Oct 2026 20:49:36 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 13 Oct 2026 20:49:36 GMT
ARG KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:49:36 GMT
ENV KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:49:36 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Tue, 13 Oct 2026 20:49:36 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Tue, 13 Oct 2026 20:50:01 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 13 Oct 2026 20:50:01 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 13 Oct 2026 20:50:01 GMT
USER kong
# Tue, 13 Oct 2026 20:50:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 20:50:01 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 13 Oct 2026 20:50:01 GMT
STOPSIGNAL SIGQUIT
# Tue, 13 Oct 2026 20:50:01 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 13 Oct 2026 20:50:01 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba42d4ad10b09a586832ee7e82d293d99c13df3f7346b105627e6c55da5a2e5`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb9a6d2d724c942144c1092c4ccd19e14f6019e258caff378ac8c2617754bed5`  
		Last Modified: Tue, 13 Oct 2026 20:50:21 GMT  
		Size: 92.3 MB (92300111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd2a804300d8de1766fde07e08728750b3a5391f6c279c61556e956131024e6`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:11f9f5cd76495c08976e6844b0aa0c957682bb6fea57d3e040d788d479e84321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:686275c8c951fb608d5783d1b38cdc32f4d109c6b6a5ac3285915f16ef7fdd2d`

```dockerfile
```

-	Layers:
	-	`sha256:deaa38719f94f6d9a7473814104501b006fd625498850d37745c8baf2ea002c5`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 5.5 MB (5456423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd955dec22126d064958503569d4a5d605feafdcd87796465f3ac547fc081d55`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:latest`

```console
$ docker pull kong@sha256:8485cabdadb0320212baf1b3f3f47ab293438a61691d198154ccd899d5aabb65
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
$ docker pull kong@sha256:056c9c8947246cfbf05549b52377520aad042880e492b78084861e3e53d91743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121241489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c75256c247e6a4ab36f44360680c04ee3bd6aa36e065994922bbe0bbf5c8504`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 13 Oct 2026 20:49:36 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 13 Oct 2026 20:49:36 GMT
ARG ASSET=ce
# Tue, 13 Oct 2026 20:49:36 GMT
ENV ASSET=ce
# Tue, 13 Oct 2026 20:49:36 GMT
ARG EE_PORTS
# Tue, 13 Oct 2026 20:49:36 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 13 Oct 2026 20:49:36 GMT
ARG KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:49:36 GMT
ENV KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:49:36 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Tue, 13 Oct 2026 20:49:36 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Tue, 13 Oct 2026 20:50:01 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 13 Oct 2026 20:50:01 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 13 Oct 2026 20:50:01 GMT
USER kong
# Tue, 13 Oct 2026 20:50:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 20:50:01 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 13 Oct 2026 20:50:01 GMT
STOPSIGNAL SIGQUIT
# Tue, 13 Oct 2026 20:50:01 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 13 Oct 2026 20:50:01 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba42d4ad10b09a586832ee7e82d293d99c13df3f7346b105627e6c55da5a2e5`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb9a6d2d724c942144c1092c4ccd19e14f6019e258caff378ac8c2617754bed5`  
		Last Modified: Tue, 13 Oct 2026 20:50:21 GMT  
		Size: 92.3 MB (92300111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd2a804300d8de1766fde07e08728750b3a5391f6c279c61556e956131024e6`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:latest` - unknown; unknown

```console
$ docker pull kong@sha256:11f9f5cd76495c08976e6844b0aa0c957682bb6fea57d3e040d788d479e84321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:686275c8c951fb608d5783d1b38cdc32f4d109c6b6a5ac3285915f16ef7fdd2d`

```dockerfile
```

-	Layers:
	-	`sha256:deaa38719f94f6d9a7473814104501b006fd625498850d37745c8baf2ea002c5`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 5.5 MB (5456423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd955dec22126d064958503569d4a5d605feafdcd87796465f3ac547fc081d55`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:ubuntu`

```console
$ docker pull kong@sha256:8485cabdadb0320212baf1b3f3f47ab293438a61691d198154ccd899d5aabb65
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
$ docker pull kong@sha256:056c9c8947246cfbf05549b52377520aad042880e492b78084861e3e53d91743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121241489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c75256c247e6a4ab36f44360680c04ee3bd6aa36e065994922bbe0bbf5c8504`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

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
# Tue, 13 Oct 2026 20:49:36 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 13 Oct 2026 20:49:36 GMT
ARG ASSET=ce
# Tue, 13 Oct 2026 20:49:36 GMT
ENV ASSET=ce
# Tue, 13 Oct 2026 20:49:36 GMT
ARG EE_PORTS
# Tue, 13 Oct 2026 20:49:36 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 13 Oct 2026 20:49:36 GMT
ARG KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:49:36 GMT
ENV KONG_VERSION=3.9.4
# Tue, 13 Oct 2026 20:49:36 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Tue, 13 Oct 2026 20:49:36 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Tue, 13 Oct 2026 20:50:01 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 13 Oct 2026 20:50:01 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 13 Oct 2026 20:50:01 GMT
USER kong
# Tue, 13 Oct 2026 20:50:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Oct 2026 20:50:01 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 13 Oct 2026 20:50:01 GMT
STOPSIGNAL SIGQUIT
# Tue, 13 Oct 2026 20:50:01 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 13 Oct 2026 20:50:01 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba42d4ad10b09a586832ee7e82d293d99c13df3f7346b105627e6c55da5a2e5`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb9a6d2d724c942144c1092c4ccd19e14f6019e258caff378ac8c2617754bed5`  
		Last Modified: Tue, 13 Oct 2026 20:50:21 GMT  
		Size: 92.3 MB (92300111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd2a804300d8de1766fde07e08728750b3a5391f6c279c61556e956131024e6`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:11f9f5cd76495c08976e6844b0aa0c957682bb6fea57d3e040d788d479e84321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:686275c8c951fb608d5783d1b38cdc32f4d109c6b6a5ac3285915f16ef7fdd2d`

```dockerfile
```

-	Layers:
	-	`sha256:deaa38719f94f6d9a7473814104501b006fd625498850d37745c8baf2ea002c5`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 5.5 MB (5456423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd955dec22126d064958503569d4a5d605feafdcd87796465f3ac547fc081d55`  
		Last Modified: Tue, 13 Oct 2026 20:50:19 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json
