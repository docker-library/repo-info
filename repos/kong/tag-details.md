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
$ docker pull kong@sha256:c1f5fbb80cd666b4b29b4e97875ecd64d93b01b23fb3083bc3e424b3bad5fdd5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3` - linux; amd64

```console
$ docker pull kong@sha256:ed09b2595d3eedf1d68b55b98e310b064de5f2f14628076d4366159ab581dcd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120486757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae0b7c98ca0770a1a37e69c4c81ac2e8bcaf7ebc71cc26aae3f1dec46e3b813`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:23:55 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:23:55 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:23:55 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:23:55 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:23:55 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:23:55 GMT
ARG KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:23:55 GMT
ENV KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:23:55 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Mon, 26 Oct 2026 23:23:55 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Mon, 26 Oct 2026 23:24:20 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:24:20 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:24:20 GMT
USER kong
# Mon, 26 Oct 2026 23:24:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:24:20 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:24:20 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:24:20 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:24:20 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72934de9872f6eff78cc64aa31cf3bceff68f4fe143e7d2b523d8997580caf02`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6bb20bba82565c5b64de7c5c3840e30888ba5d705387e2eeeb465d919b8852`  
		Last Modified: Mon, 26 Oct 2026 23:24:39 GMT  
		Size: 90.7 MB (90717854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:270611d99ed875a04ab364c52cfafdda6a766fc7473b1ad11cd7795280b015b9`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3` - unknown; unknown

```console
$ docker pull kong@sha256:cdee418a85f88a067f44fa512509650888404d0b625af5790f44c1a20929fa71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcd3774983b337d0fb2829f42b190e82bf3c19b87f9afd7a702e674b091699e1`

```dockerfile
```

-	Layers:
	-	`sha256:44329305da602c853785422e5f3b76f18e3181514efdc7074f2631678d0c357d`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 5.4 MB (5448630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdfa63e25f97d6c11c295940e087b3755f34bd4f480f4e924e36ac6258ab5e2d`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:2d572848be6fc58b73ba75edc84f028837bb7be998b3a8b8117fdb44a6892220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118969882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2b8fc8707d9dcb774ef1b70dedc149909573b49d1dd8016e6c24f6bc5b151d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:28:26 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:28:26 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:28:26 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:28:26 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:28:26 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:28:26 GMT
ARG KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:28:26 GMT
ENV KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:28:26 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Mon, 26 Oct 2026 23:28:26 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Mon, 26 Oct 2026 23:28:51 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:28:51 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:28:51 GMT
USER kong
# Mon, 26 Oct 2026 23:28:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:28:51 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:28:51 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:28:51 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:28:51 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4482a67513b8b59c80536a4107c67c75fb3da36fb98f5dbd0ca7be335f400cf7`  
		Last Modified: Mon, 26 Oct 2026 23:29:08 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72b5bf50a290e14d037f47bb546d2b2b59fe106b70f7a66e95288dbf5150e68`  
		Last Modified: Mon, 26 Oct 2026 23:29:10 GMT  
		Size: 90.0 MB (90028470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0dc11c281206d5f2b046966d7a506d172bf3cccdfd52bc7782d11d290362bb`  
		Last Modified: Mon, 26 Oct 2026 23:29:08 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3` - unknown; unknown

```console
$ docker pull kong@sha256:3f017bfd60f049bd40b331a546f291eb2f0bf59ffa10056221fae66c70c07e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7157ac4e89b0eeff09eee9894c5dd2ae1fdfdef1ef1afd975d2350b4903b38c`

```dockerfile
```

-	Layers:
	-	`sha256:14ad66dcf705d43214363892b661f9f3eebc4cd1327fba39646108705f982165`  
		Last Modified: Mon, 26 Oct 2026 23:29:09 GMT  
		Size: 5.5 MB (5455797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b19867be76e964c681dcfadb0ca3916c009552abc8abb938cca8ace9f697e53`  
		Last Modified: Mon, 26 Oct 2026 23:29:08 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4`

```console
$ docker pull kong@sha256:f043e48dc091e0f101a6c7322be675b3cdb8c102ebdcaa117462644732ec988d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4` - linux; amd64

```console
$ docker pull kong@sha256:4897bdb31cfde85f8e104e23202d85d9f9835a823642dab881a4f15a1fee15fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92534014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40e86f74c59b97eb7da135d58c3e1562359a0ccb69351a3e1aee01a1ca59b86b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:24:12 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:24:12 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:24:12 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:24:12 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:24:12 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:24:12 GMT
ARG KONG_VERSION=3.4.2
# Mon, 26 Oct 2026 23:24:12 GMT
ENV KONG_VERSION=3.4.2
# Mon, 26 Oct 2026 23:24:12 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Mon, 26 Oct 2026 23:24:12 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Mon, 26 Oct 2026 23:24:31 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:24:31 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:24:31 GMT
USER kong
# Mon, 26 Oct 2026 23:24:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:24:31 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:24:31 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:24:31 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:24:31 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e7a068c5f0803907a8713e50c511dd851048ed9cedf35d163146fd43a234d3`  
		Last Modified: Mon, 26 Oct 2026 23:24:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b2ed4d7f47fa06e36ea632035d268a223dc364ea703d08c8a1439fa7d0f0f1`  
		Last Modified: Mon, 26 Oct 2026 23:24:47 GMT  
		Size: 62.8 MB (62780239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f688a371c179e22fee868dfdcd8d932c291f10b215141559f957e8705180f27`  
		Last Modified: Mon, 26 Oct 2026 23:24:45 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4` - unknown; unknown

```console
$ docker pull kong@sha256:093dda16cc82589e70b40fb5093cffcb75435c31d6a4b1309d051c4b10cdbd07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6061429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d2c7b3a0a3eefa43423339304d56e9601ebbb22d8101abb8cfe2584747125a`

```dockerfile
```

-	Layers:
	-	`sha256:aa97bb91687bec0e6b40ef4f45d13b821b26f3b7937ec578a160e1b3b6c77be4`  
		Last Modified: Mon, 26 Oct 2026 23:24:45 GMT  
		Size: 6.0 MB (6046083 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:866c9c05a46c7b0fbf331c59d1b1536f27ef6b398bc0dbbb31eec26bb738fb9b`  
		Last Modified: Mon, 26 Oct 2026 23:24:45 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:7cd85a4ee56a3105e8dc33b763b5b1d14ee5b2143932b35bd2978a373a706130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (88950141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aece1b3307ed376996dd6200078ee8303c742d6c3d5a19b2c569eae742e7d4e3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:28:36 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:28:36 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:28:36 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:28:36 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:28:36 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:28:36 GMT
ARG KONG_VERSION=3.4.2
# Mon, 26 Oct 2026 23:28:36 GMT
ENV KONG_VERSION=3.4.2
# Mon, 26 Oct 2026 23:28:36 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Mon, 26 Oct 2026 23:28:36 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Mon, 26 Oct 2026 23:29:00 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:29:00 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:29:00 GMT
USER kong
# Mon, 26 Oct 2026 23:29:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:29:00 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:29:00 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:29:00 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:29:00 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2cb403cb1fd44cd090972a861b4da230635e681742acf65b4f08ef9744874e8`  
		Last Modified: Mon, 26 Oct 2026 23:29:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48cec9763e6ff0689a92af033675f6253ff0499b71d412d07fc194caa980bb2`  
		Last Modified: Mon, 26 Oct 2026 23:29:17 GMT  
		Size: 61.3 MB (61264251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86dbd461c54e79b58fe94266aaf53531abb995879daeab581fe97b8cfa5591b2`  
		Last Modified: Mon, 26 Oct 2026 23:29:15 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4` - unknown; unknown

```console
$ docker pull kong@sha256:e65792818b4226a5cc0a5bbddff691177d106166821693f7152bcbc6f05e63e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6039612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6165d67f5afe909d4385df24aa5247efc85a94e0b46970453216fbc2dca8692`

```dockerfile
```

-	Layers:
	-	`sha256:ecbe66a5023eec5ab29c61bab4bdec1be133a6e779327cec13373561fbe802e9`  
		Last Modified: Mon, 26 Oct 2026 23:29:15 GMT  
		Size: 6.0 MB (6024162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39a109ccc19085c7799beba62fec398e0fdaed1ddec37dd1a816137c4b95ef3a`  
		Last Modified: Mon, 26 Oct 2026 23:29:15 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4-ubuntu`

```console
$ docker pull kong@sha256:f043e48dc091e0f101a6c7322be675b3cdb8c102ebdcaa117462644732ec988d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:4897bdb31cfde85f8e104e23202d85d9f9835a823642dab881a4f15a1fee15fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92534014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40e86f74c59b97eb7da135d58c3e1562359a0ccb69351a3e1aee01a1ca59b86b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:24:12 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:24:12 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:24:12 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:24:12 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:24:12 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:24:12 GMT
ARG KONG_VERSION=3.4.2
# Mon, 26 Oct 2026 23:24:12 GMT
ENV KONG_VERSION=3.4.2
# Mon, 26 Oct 2026 23:24:12 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Mon, 26 Oct 2026 23:24:12 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Mon, 26 Oct 2026 23:24:31 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:24:31 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:24:31 GMT
USER kong
# Mon, 26 Oct 2026 23:24:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:24:31 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:24:31 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:24:31 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:24:31 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e7a068c5f0803907a8713e50c511dd851048ed9cedf35d163146fd43a234d3`  
		Last Modified: Mon, 26 Oct 2026 23:24:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b2ed4d7f47fa06e36ea632035d268a223dc364ea703d08c8a1439fa7d0f0f1`  
		Last Modified: Mon, 26 Oct 2026 23:24:47 GMT  
		Size: 62.8 MB (62780239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f688a371c179e22fee868dfdcd8d932c291f10b215141559f957e8705180f27`  
		Last Modified: Mon, 26 Oct 2026 23:24:45 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:093dda16cc82589e70b40fb5093cffcb75435c31d6a4b1309d051c4b10cdbd07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6061429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d2c7b3a0a3eefa43423339304d56e9601ebbb22d8101abb8cfe2584747125a`

```dockerfile
```

-	Layers:
	-	`sha256:aa97bb91687bec0e6b40ef4f45d13b821b26f3b7937ec578a160e1b3b6c77be4`  
		Last Modified: Mon, 26 Oct 2026 23:24:45 GMT  
		Size: 6.0 MB (6046083 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:866c9c05a46c7b0fbf331c59d1b1536f27ef6b398bc0dbbb31eec26bb738fb9b`  
		Last Modified: Mon, 26 Oct 2026 23:24:45 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:7cd85a4ee56a3105e8dc33b763b5b1d14ee5b2143932b35bd2978a373a706130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (88950141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aece1b3307ed376996dd6200078ee8303c742d6c3d5a19b2c569eae742e7d4e3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:28:36 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:28:36 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:28:36 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:28:36 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:28:36 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:28:36 GMT
ARG KONG_VERSION=3.4.2
# Mon, 26 Oct 2026 23:28:36 GMT
ENV KONG_VERSION=3.4.2
# Mon, 26 Oct 2026 23:28:36 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Mon, 26 Oct 2026 23:28:36 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Mon, 26 Oct 2026 23:29:00 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:29:00 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:29:00 GMT
USER kong
# Mon, 26 Oct 2026 23:29:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:29:00 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:29:00 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:29:00 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:29:00 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2cb403cb1fd44cd090972a861b4da230635e681742acf65b4f08ef9744874e8`  
		Last Modified: Mon, 26 Oct 2026 23:29:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48cec9763e6ff0689a92af033675f6253ff0499b71d412d07fc194caa980bb2`  
		Last Modified: Mon, 26 Oct 2026 23:29:17 GMT  
		Size: 61.3 MB (61264251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86dbd461c54e79b58fe94266aaf53531abb995879daeab581fe97b8cfa5591b2`  
		Last Modified: Mon, 26 Oct 2026 23:29:15 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:e65792818b4226a5cc0a5bbddff691177d106166821693f7152bcbc6f05e63e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6039612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6165d67f5afe909d4385df24aa5247efc85a94e0b46970453216fbc2dca8692`

```dockerfile
```

-	Layers:
	-	`sha256:ecbe66a5023eec5ab29c61bab4bdec1be133a6e779327cec13373561fbe802e9`  
		Last Modified: Mon, 26 Oct 2026 23:29:15 GMT  
		Size: 6.0 MB (6024162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39a109ccc19085c7799beba62fec398e0fdaed1ddec37dd1a816137c4b95ef3a`  
		Last Modified: Mon, 26 Oct 2026 23:29:15 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4.2`

```console
$ docker pull kong@sha256:f043e48dc091e0f101a6c7322be675b3cdb8c102ebdcaa117462644732ec988d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4.2` - linux; amd64

```console
$ docker pull kong@sha256:4897bdb31cfde85f8e104e23202d85d9f9835a823642dab881a4f15a1fee15fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92534014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40e86f74c59b97eb7da135d58c3e1562359a0ccb69351a3e1aee01a1ca59b86b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:24:12 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:24:12 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:24:12 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:24:12 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:24:12 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:24:12 GMT
ARG KONG_VERSION=3.4.2
# Mon, 26 Oct 2026 23:24:12 GMT
ENV KONG_VERSION=3.4.2
# Mon, 26 Oct 2026 23:24:12 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Mon, 26 Oct 2026 23:24:12 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Mon, 26 Oct 2026 23:24:31 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:24:31 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:24:31 GMT
USER kong
# Mon, 26 Oct 2026 23:24:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:24:31 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:24:31 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:24:31 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:24:31 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e7a068c5f0803907a8713e50c511dd851048ed9cedf35d163146fd43a234d3`  
		Last Modified: Mon, 26 Oct 2026 23:24:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b2ed4d7f47fa06e36ea632035d268a223dc364ea703d08c8a1439fa7d0f0f1`  
		Last Modified: Mon, 26 Oct 2026 23:24:47 GMT  
		Size: 62.8 MB (62780239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f688a371c179e22fee868dfdcd8d932c291f10b215141559f957e8705180f27`  
		Last Modified: Mon, 26 Oct 2026 23:24:45 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2` - unknown; unknown

```console
$ docker pull kong@sha256:093dda16cc82589e70b40fb5093cffcb75435c31d6a4b1309d051c4b10cdbd07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6061429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d2c7b3a0a3eefa43423339304d56e9601ebbb22d8101abb8cfe2584747125a`

```dockerfile
```

-	Layers:
	-	`sha256:aa97bb91687bec0e6b40ef4f45d13b821b26f3b7937ec578a160e1b3b6c77be4`  
		Last Modified: Mon, 26 Oct 2026 23:24:45 GMT  
		Size: 6.0 MB (6046083 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:866c9c05a46c7b0fbf331c59d1b1536f27ef6b398bc0dbbb31eec26bb738fb9b`  
		Last Modified: Mon, 26 Oct 2026 23:24:45 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4.2` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:7cd85a4ee56a3105e8dc33b763b5b1d14ee5b2143932b35bd2978a373a706130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (88950141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aece1b3307ed376996dd6200078ee8303c742d6c3d5a19b2c569eae742e7d4e3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:28:36 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:28:36 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:28:36 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:28:36 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:28:36 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:28:36 GMT
ARG KONG_VERSION=3.4.2
# Mon, 26 Oct 2026 23:28:36 GMT
ENV KONG_VERSION=3.4.2
# Mon, 26 Oct 2026 23:28:36 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Mon, 26 Oct 2026 23:28:36 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Mon, 26 Oct 2026 23:29:00 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:29:00 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:29:00 GMT
USER kong
# Mon, 26 Oct 2026 23:29:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:29:00 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:29:00 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:29:00 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:29:00 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2cb403cb1fd44cd090972a861b4da230635e681742acf65b4f08ef9744874e8`  
		Last Modified: Mon, 26 Oct 2026 23:29:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48cec9763e6ff0689a92af033675f6253ff0499b71d412d07fc194caa980bb2`  
		Last Modified: Mon, 26 Oct 2026 23:29:17 GMT  
		Size: 61.3 MB (61264251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86dbd461c54e79b58fe94266aaf53531abb995879daeab581fe97b8cfa5591b2`  
		Last Modified: Mon, 26 Oct 2026 23:29:15 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2` - unknown; unknown

```console
$ docker pull kong@sha256:e65792818b4226a5cc0a5bbddff691177d106166821693f7152bcbc6f05e63e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6039612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6165d67f5afe909d4385df24aa5247efc85a94e0b46970453216fbc2dca8692`

```dockerfile
```

-	Layers:
	-	`sha256:ecbe66a5023eec5ab29c61bab4bdec1be133a6e779327cec13373561fbe802e9`  
		Last Modified: Mon, 26 Oct 2026 23:29:15 GMT  
		Size: 6.0 MB (6024162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39a109ccc19085c7799beba62fec398e0fdaed1ddec37dd1a816137c4b95ef3a`  
		Last Modified: Mon, 26 Oct 2026 23:29:15 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4.2-ubuntu`

```console
$ docker pull kong@sha256:f043e48dc091e0f101a6c7322be675b3cdb8c102ebdcaa117462644732ec988d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4.2-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:4897bdb31cfde85f8e104e23202d85d9f9835a823642dab881a4f15a1fee15fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92534014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40e86f74c59b97eb7da135d58c3e1562359a0ccb69351a3e1aee01a1ca59b86b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:24:12 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:24:12 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:24:12 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:24:12 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:24:12 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:24:12 GMT
ARG KONG_VERSION=3.4.2
# Mon, 26 Oct 2026 23:24:12 GMT
ENV KONG_VERSION=3.4.2
# Mon, 26 Oct 2026 23:24:12 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Mon, 26 Oct 2026 23:24:12 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Mon, 26 Oct 2026 23:24:31 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:24:31 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:24:31 GMT
USER kong
# Mon, 26 Oct 2026 23:24:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:24:31 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:24:31 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:24:31 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:24:31 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e7a068c5f0803907a8713e50c511dd851048ed9cedf35d163146fd43a234d3`  
		Last Modified: Mon, 26 Oct 2026 23:24:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b2ed4d7f47fa06e36ea632035d268a223dc364ea703d08c8a1439fa7d0f0f1`  
		Last Modified: Mon, 26 Oct 2026 23:24:47 GMT  
		Size: 62.8 MB (62780239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f688a371c179e22fee868dfdcd8d932c291f10b215141559f957e8705180f27`  
		Last Modified: Mon, 26 Oct 2026 23:24:45 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:093dda16cc82589e70b40fb5093cffcb75435c31d6a4b1309d051c4b10cdbd07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6061429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d2c7b3a0a3eefa43423339304d56e9601ebbb22d8101abb8cfe2584747125a`

```dockerfile
```

-	Layers:
	-	`sha256:aa97bb91687bec0e6b40ef4f45d13b821b26f3b7937ec578a160e1b3b6c77be4`  
		Last Modified: Mon, 26 Oct 2026 23:24:45 GMT  
		Size: 6.0 MB (6046083 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:866c9c05a46c7b0fbf331c59d1b1536f27ef6b398bc0dbbb31eec26bb738fb9b`  
		Last Modified: Mon, 26 Oct 2026 23:24:45 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4.2-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:7cd85a4ee56a3105e8dc33b763b5b1d14ee5b2143932b35bd2978a373a706130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (88950141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aece1b3307ed376996dd6200078ee8303c742d6c3d5a19b2c569eae742e7d4e3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:28:36 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:28:36 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:28:36 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:28:36 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:28:36 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:28:36 GMT
ARG KONG_VERSION=3.4.2
# Mon, 26 Oct 2026 23:28:36 GMT
ENV KONG_VERSION=3.4.2
# Mon, 26 Oct 2026 23:28:36 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Mon, 26 Oct 2026 23:28:36 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Mon, 26 Oct 2026 23:29:00 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:29:00 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:29:00 GMT
USER kong
# Mon, 26 Oct 2026 23:29:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:29:00 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:29:00 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:29:00 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:29:00 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2cb403cb1fd44cd090972a861b4da230635e681742acf65b4f08ef9744874e8`  
		Last Modified: Mon, 26 Oct 2026 23:29:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48cec9763e6ff0689a92af033675f6253ff0499b71d412d07fc194caa980bb2`  
		Last Modified: Mon, 26 Oct 2026 23:29:17 GMT  
		Size: 61.3 MB (61264251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86dbd461c54e79b58fe94266aaf53531abb995879daeab581fe97b8cfa5591b2`  
		Last Modified: Mon, 26 Oct 2026 23:29:15 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:e65792818b4226a5cc0a5bbddff691177d106166821693f7152bcbc6f05e63e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6039612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6165d67f5afe909d4385df24aa5247efc85a94e0b46970453216fbc2dca8692`

```dockerfile
```

-	Layers:
	-	`sha256:ecbe66a5023eec5ab29c61bab4bdec1be133a6e779327cec13373561fbe802e9`  
		Last Modified: Mon, 26 Oct 2026 23:29:15 GMT  
		Size: 6.0 MB (6024162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39a109ccc19085c7799beba62fec398e0fdaed1ddec37dd1a816137c4b95ef3a`  
		Last Modified: Mon, 26 Oct 2026 23:29:15 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8`

```console
$ docker pull kong@sha256:c36bf02a89bd660b785986b40c0e5e139f45b8552fa6da199f05061e1f0bfa22
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8` - linux; amd64

```console
$ docker pull kong@sha256:d4664815e053261b90ebc5c2b4318593e39a192a475c2e10cd76026350b619aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117725860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8866f6a175e88b00d1af30658c1ed03ebabb24d3a17d26a86ec8f921e0391d8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:23:59 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:23:59 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:23:59 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:23:59 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:23:59 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:23:59 GMT
ARG KONG_VERSION=3.8.0
# Mon, 26 Oct 2026 23:23:59 GMT
ENV KONG_VERSION=3.8.0
# Mon, 26 Oct 2026 23:23:59 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Mon, 26 Oct 2026 23:23:59 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Mon, 26 Oct 2026 23:24:24 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:24:24 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:24:24 GMT
USER kong
# Mon, 26 Oct 2026 23:24:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:24:24 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:24:24 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:24:24 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:24:24 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c75d6a2e465527e78f72e094ded433881386142251f40ecf64218355ab1f8bd4`  
		Last Modified: Mon, 26 Oct 2026 23:24:41 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfcfb31403d1e1060e485411b5de4b21b749b5c89d8e7ee62332d49bbe37cdfd`  
		Last Modified: Mon, 26 Oct 2026 23:24:44 GMT  
		Size: 88.0 MB (87972090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd70a1634bde3b6ab96b7e80e4e8a81f4427d750c8ac705ad90c43cb6f9f3339`  
		Last Modified: Mon, 26 Oct 2026 23:24:41 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8` - unknown; unknown

```console
$ docker pull kong@sha256:dc55f213ac10d0960bbca1b6b0177826133e16ee56707f9bf7480b676cc162f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19b21609f242679b7aa502f9367400e7a21d36ee869ffb0bc80be0da2f5a88bf`

```dockerfile
```

-	Layers:
	-	`sha256:b2cced234385b4498996eac96de5c4ca0f3b10eef27d17859702cf2725550d1d`  
		Last Modified: Mon, 26 Oct 2026 23:24:42 GMT  
		Size: 5.3 MB (5345880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ea64680cfba28a1cdd484e6a6632cc89419758964fb186179b6cd972afc3f76`  
		Last Modified: Mon, 26 Oct 2026 23:24:41 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:32e39f7117cde7bb745d80246935cc5e606720a3e70b58da9d2d1b5599be1a0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114989616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa1c03d166ea8fa144a45416a11cfe8c29ff301a500fe2c6efea33160b2e624`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:28:29 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:28:29 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:28:29 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:28:29 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:28:29 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:28:29 GMT
ARG KONG_VERSION=3.8.0
# Mon, 26 Oct 2026 23:28:29 GMT
ENV KONG_VERSION=3.8.0
# Mon, 26 Oct 2026 23:28:29 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Mon, 26 Oct 2026 23:28:29 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Mon, 26 Oct 2026 23:28:55 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:28:55 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:28:55 GMT
USER kong
# Mon, 26 Oct 2026 23:28:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:28:55 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:28:55 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:28:55 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:28:55 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c65bbd0798bae6e319e1915f15704fe5c40698a2be56f33d167c3e3726c777e`  
		Last Modified: Mon, 26 Oct 2026 23:29:12 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2dbfc64e6f61c1482657d7a73e5c052b1669963a19a88c0ef36efee87ef23a0`  
		Last Modified: Mon, 26 Oct 2026 23:29:15 GMT  
		Size: 87.3 MB (87303728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4202484d2a32010df20022628017d5ce97b9dc84e1a8545e6a848c8a7aad3a`  
		Last Modified: Mon, 26 Oct 2026 23:29:12 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8` - unknown; unknown

```console
$ docker pull kong@sha256:e14d5a07508c17b07e06e78d4a8f3cdfc2ff70f196b5172b7dbe6fa38f7b2adc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5367656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce71ea65dda95b8c2401334ee51b5b00cda3da386eccdc2eec569a23f8f4ee5`

```dockerfile
```

-	Layers:
	-	`sha256:581401b74ecb42e2bd2b0f7c8ee0ef45ad8ec7555b878da8951a380084669167`  
		Last Modified: Mon, 26 Oct 2026 23:29:12 GMT  
		Size: 5.4 MB (5352206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1649d5084a28f4b60d57ec8fc14d54831a68fe14df5a5819bca1ce1c0034d9de`  
		Last Modified: Mon, 26 Oct 2026 23:29:12 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8-ubuntu`

```console
$ docker pull kong@sha256:c36bf02a89bd660b785986b40c0e5e139f45b8552fa6da199f05061e1f0bfa22
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:d4664815e053261b90ebc5c2b4318593e39a192a475c2e10cd76026350b619aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117725860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8866f6a175e88b00d1af30658c1ed03ebabb24d3a17d26a86ec8f921e0391d8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:23:59 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:23:59 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:23:59 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:23:59 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:23:59 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:23:59 GMT
ARG KONG_VERSION=3.8.0
# Mon, 26 Oct 2026 23:23:59 GMT
ENV KONG_VERSION=3.8.0
# Mon, 26 Oct 2026 23:23:59 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Mon, 26 Oct 2026 23:23:59 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Mon, 26 Oct 2026 23:24:24 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:24:24 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:24:24 GMT
USER kong
# Mon, 26 Oct 2026 23:24:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:24:24 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:24:24 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:24:24 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:24:24 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c75d6a2e465527e78f72e094ded433881386142251f40ecf64218355ab1f8bd4`  
		Last Modified: Mon, 26 Oct 2026 23:24:41 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfcfb31403d1e1060e485411b5de4b21b749b5c89d8e7ee62332d49bbe37cdfd`  
		Last Modified: Mon, 26 Oct 2026 23:24:44 GMT  
		Size: 88.0 MB (87972090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd70a1634bde3b6ab96b7e80e4e8a81f4427d750c8ac705ad90c43cb6f9f3339`  
		Last Modified: Mon, 26 Oct 2026 23:24:41 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:dc55f213ac10d0960bbca1b6b0177826133e16ee56707f9bf7480b676cc162f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19b21609f242679b7aa502f9367400e7a21d36ee869ffb0bc80be0da2f5a88bf`

```dockerfile
```

-	Layers:
	-	`sha256:b2cced234385b4498996eac96de5c4ca0f3b10eef27d17859702cf2725550d1d`  
		Last Modified: Mon, 26 Oct 2026 23:24:42 GMT  
		Size: 5.3 MB (5345880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ea64680cfba28a1cdd484e6a6632cc89419758964fb186179b6cd972afc3f76`  
		Last Modified: Mon, 26 Oct 2026 23:24:41 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:32e39f7117cde7bb745d80246935cc5e606720a3e70b58da9d2d1b5599be1a0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114989616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa1c03d166ea8fa144a45416a11cfe8c29ff301a500fe2c6efea33160b2e624`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:28:29 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:28:29 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:28:29 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:28:29 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:28:29 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:28:29 GMT
ARG KONG_VERSION=3.8.0
# Mon, 26 Oct 2026 23:28:29 GMT
ENV KONG_VERSION=3.8.0
# Mon, 26 Oct 2026 23:28:29 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Mon, 26 Oct 2026 23:28:29 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Mon, 26 Oct 2026 23:28:55 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:28:55 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:28:55 GMT
USER kong
# Mon, 26 Oct 2026 23:28:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:28:55 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:28:55 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:28:55 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:28:55 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c65bbd0798bae6e319e1915f15704fe5c40698a2be56f33d167c3e3726c777e`  
		Last Modified: Mon, 26 Oct 2026 23:29:12 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2dbfc64e6f61c1482657d7a73e5c052b1669963a19a88c0ef36efee87ef23a0`  
		Last Modified: Mon, 26 Oct 2026 23:29:15 GMT  
		Size: 87.3 MB (87303728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4202484d2a32010df20022628017d5ce97b9dc84e1a8545e6a848c8a7aad3a`  
		Last Modified: Mon, 26 Oct 2026 23:29:12 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:e14d5a07508c17b07e06e78d4a8f3cdfc2ff70f196b5172b7dbe6fa38f7b2adc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5367656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce71ea65dda95b8c2401334ee51b5b00cda3da386eccdc2eec569a23f8f4ee5`

```dockerfile
```

-	Layers:
	-	`sha256:581401b74ecb42e2bd2b0f7c8ee0ef45ad8ec7555b878da8951a380084669167`  
		Last Modified: Mon, 26 Oct 2026 23:29:12 GMT  
		Size: 5.4 MB (5352206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1649d5084a28f4b60d57ec8fc14d54831a68fe14df5a5819bca1ce1c0034d9de`  
		Last Modified: Mon, 26 Oct 2026 23:29:12 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8.0`

```console
$ docker pull kong@sha256:c36bf02a89bd660b785986b40c0e5e139f45b8552fa6da199f05061e1f0bfa22
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8.0` - linux; amd64

```console
$ docker pull kong@sha256:d4664815e053261b90ebc5c2b4318593e39a192a475c2e10cd76026350b619aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117725860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8866f6a175e88b00d1af30658c1ed03ebabb24d3a17d26a86ec8f921e0391d8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:23:59 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:23:59 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:23:59 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:23:59 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:23:59 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:23:59 GMT
ARG KONG_VERSION=3.8.0
# Mon, 26 Oct 2026 23:23:59 GMT
ENV KONG_VERSION=3.8.0
# Mon, 26 Oct 2026 23:23:59 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Mon, 26 Oct 2026 23:23:59 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Mon, 26 Oct 2026 23:24:24 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:24:24 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:24:24 GMT
USER kong
# Mon, 26 Oct 2026 23:24:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:24:24 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:24:24 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:24:24 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:24:24 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c75d6a2e465527e78f72e094ded433881386142251f40ecf64218355ab1f8bd4`  
		Last Modified: Mon, 26 Oct 2026 23:24:41 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfcfb31403d1e1060e485411b5de4b21b749b5c89d8e7ee62332d49bbe37cdfd`  
		Last Modified: Mon, 26 Oct 2026 23:24:44 GMT  
		Size: 88.0 MB (87972090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd70a1634bde3b6ab96b7e80e4e8a81f4427d750c8ac705ad90c43cb6f9f3339`  
		Last Modified: Mon, 26 Oct 2026 23:24:41 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0` - unknown; unknown

```console
$ docker pull kong@sha256:dc55f213ac10d0960bbca1b6b0177826133e16ee56707f9bf7480b676cc162f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19b21609f242679b7aa502f9367400e7a21d36ee869ffb0bc80be0da2f5a88bf`

```dockerfile
```

-	Layers:
	-	`sha256:b2cced234385b4498996eac96de5c4ca0f3b10eef27d17859702cf2725550d1d`  
		Last Modified: Mon, 26 Oct 2026 23:24:42 GMT  
		Size: 5.3 MB (5345880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ea64680cfba28a1cdd484e6a6632cc89419758964fb186179b6cd972afc3f76`  
		Last Modified: Mon, 26 Oct 2026 23:24:41 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8.0` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:32e39f7117cde7bb745d80246935cc5e606720a3e70b58da9d2d1b5599be1a0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114989616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa1c03d166ea8fa144a45416a11cfe8c29ff301a500fe2c6efea33160b2e624`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:28:29 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:28:29 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:28:29 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:28:29 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:28:29 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:28:29 GMT
ARG KONG_VERSION=3.8.0
# Mon, 26 Oct 2026 23:28:29 GMT
ENV KONG_VERSION=3.8.0
# Mon, 26 Oct 2026 23:28:29 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Mon, 26 Oct 2026 23:28:29 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Mon, 26 Oct 2026 23:28:55 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:28:55 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:28:55 GMT
USER kong
# Mon, 26 Oct 2026 23:28:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:28:55 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:28:55 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:28:55 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:28:55 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c65bbd0798bae6e319e1915f15704fe5c40698a2be56f33d167c3e3726c777e`  
		Last Modified: Mon, 26 Oct 2026 23:29:12 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2dbfc64e6f61c1482657d7a73e5c052b1669963a19a88c0ef36efee87ef23a0`  
		Last Modified: Mon, 26 Oct 2026 23:29:15 GMT  
		Size: 87.3 MB (87303728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4202484d2a32010df20022628017d5ce97b9dc84e1a8545e6a848c8a7aad3a`  
		Last Modified: Mon, 26 Oct 2026 23:29:12 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0` - unknown; unknown

```console
$ docker pull kong@sha256:e14d5a07508c17b07e06e78d4a8f3cdfc2ff70f196b5172b7dbe6fa38f7b2adc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5367656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce71ea65dda95b8c2401334ee51b5b00cda3da386eccdc2eec569a23f8f4ee5`

```dockerfile
```

-	Layers:
	-	`sha256:581401b74ecb42e2bd2b0f7c8ee0ef45ad8ec7555b878da8951a380084669167`  
		Last Modified: Mon, 26 Oct 2026 23:29:12 GMT  
		Size: 5.4 MB (5352206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1649d5084a28f4b60d57ec8fc14d54831a68fe14df5a5819bca1ce1c0034d9de`  
		Last Modified: Mon, 26 Oct 2026 23:29:12 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8.0-ubuntu`

```console
$ docker pull kong@sha256:c36bf02a89bd660b785986b40c0e5e139f45b8552fa6da199f05061e1f0bfa22
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8.0-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:d4664815e053261b90ebc5c2b4318593e39a192a475c2e10cd76026350b619aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117725860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8866f6a175e88b00d1af30658c1ed03ebabb24d3a17d26a86ec8f921e0391d8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:23:59 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:23:59 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:23:59 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:23:59 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:23:59 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:23:59 GMT
ARG KONG_VERSION=3.8.0
# Mon, 26 Oct 2026 23:23:59 GMT
ENV KONG_VERSION=3.8.0
# Mon, 26 Oct 2026 23:23:59 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Mon, 26 Oct 2026 23:23:59 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Mon, 26 Oct 2026 23:24:24 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:24:24 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:24:24 GMT
USER kong
# Mon, 26 Oct 2026 23:24:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:24:24 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:24:24 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:24:24 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:24:24 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c75d6a2e465527e78f72e094ded433881386142251f40ecf64218355ab1f8bd4`  
		Last Modified: Mon, 26 Oct 2026 23:24:41 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfcfb31403d1e1060e485411b5de4b21b749b5c89d8e7ee62332d49bbe37cdfd`  
		Last Modified: Mon, 26 Oct 2026 23:24:44 GMT  
		Size: 88.0 MB (87972090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd70a1634bde3b6ab96b7e80e4e8a81f4427d750c8ac705ad90c43cb6f9f3339`  
		Last Modified: Mon, 26 Oct 2026 23:24:41 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:dc55f213ac10d0960bbca1b6b0177826133e16ee56707f9bf7480b676cc162f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19b21609f242679b7aa502f9367400e7a21d36ee869ffb0bc80be0da2f5a88bf`

```dockerfile
```

-	Layers:
	-	`sha256:b2cced234385b4498996eac96de5c4ca0f3b10eef27d17859702cf2725550d1d`  
		Last Modified: Mon, 26 Oct 2026 23:24:42 GMT  
		Size: 5.3 MB (5345880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ea64680cfba28a1cdd484e6a6632cc89419758964fb186179b6cd972afc3f76`  
		Last Modified: Mon, 26 Oct 2026 23:24:41 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8.0-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:32e39f7117cde7bb745d80246935cc5e606720a3e70b58da9d2d1b5599be1a0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114989616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa1c03d166ea8fa144a45416a11cfe8c29ff301a500fe2c6efea33160b2e624`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:28:29 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:28:29 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:28:29 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:28:29 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:28:29 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:28:29 GMT
ARG KONG_VERSION=3.8.0
# Mon, 26 Oct 2026 23:28:29 GMT
ENV KONG_VERSION=3.8.0
# Mon, 26 Oct 2026 23:28:29 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Mon, 26 Oct 2026 23:28:29 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Mon, 26 Oct 2026 23:28:55 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:28:55 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:28:55 GMT
USER kong
# Mon, 26 Oct 2026 23:28:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:28:55 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:28:55 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:28:55 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:28:55 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c65bbd0798bae6e319e1915f15704fe5c40698a2be56f33d167c3e3726c777e`  
		Last Modified: Mon, 26 Oct 2026 23:29:12 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2dbfc64e6f61c1482657d7a73e5c052b1669963a19a88c0ef36efee87ef23a0`  
		Last Modified: Mon, 26 Oct 2026 23:29:15 GMT  
		Size: 87.3 MB (87303728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4202484d2a32010df20022628017d5ce97b9dc84e1a8545e6a848c8a7aad3a`  
		Last Modified: Mon, 26 Oct 2026 23:29:12 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:e14d5a07508c17b07e06e78d4a8f3cdfc2ff70f196b5172b7dbe6fa38f7b2adc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5367656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce71ea65dda95b8c2401334ee51b5b00cda3da386eccdc2eec569a23f8f4ee5`

```dockerfile
```

-	Layers:
	-	`sha256:581401b74ecb42e2bd2b0f7c8ee0ef45ad8ec7555b878da8951a380084669167`  
		Last Modified: Mon, 26 Oct 2026 23:29:12 GMT  
		Size: 5.4 MB (5352206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1649d5084a28f4b60d57ec8fc14d54831a68fe14df5a5819bca1ce1c0034d9de`  
		Last Modified: Mon, 26 Oct 2026 23:29:12 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9`

```console
$ docker pull kong@sha256:c1f5fbb80cd666b4b29b4e97875ecd64d93b01b23fb3083bc3e424b3bad5fdd5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9` - linux; amd64

```console
$ docker pull kong@sha256:ed09b2595d3eedf1d68b55b98e310b064de5f2f14628076d4366159ab581dcd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120486757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae0b7c98ca0770a1a37e69c4c81ac2e8bcaf7ebc71cc26aae3f1dec46e3b813`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:23:55 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:23:55 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:23:55 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:23:55 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:23:55 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:23:55 GMT
ARG KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:23:55 GMT
ENV KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:23:55 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Mon, 26 Oct 2026 23:23:55 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Mon, 26 Oct 2026 23:24:20 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:24:20 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:24:20 GMT
USER kong
# Mon, 26 Oct 2026 23:24:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:24:20 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:24:20 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:24:20 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:24:20 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72934de9872f6eff78cc64aa31cf3bceff68f4fe143e7d2b523d8997580caf02`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6bb20bba82565c5b64de7c5c3840e30888ba5d705387e2eeeb465d919b8852`  
		Last Modified: Mon, 26 Oct 2026 23:24:39 GMT  
		Size: 90.7 MB (90717854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:270611d99ed875a04ab364c52cfafdda6a766fc7473b1ad11cd7795280b015b9`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9` - unknown; unknown

```console
$ docker pull kong@sha256:cdee418a85f88a067f44fa512509650888404d0b625af5790f44c1a20929fa71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcd3774983b337d0fb2829f42b190e82bf3c19b87f9afd7a702e674b091699e1`

```dockerfile
```

-	Layers:
	-	`sha256:44329305da602c853785422e5f3b76f18e3181514efdc7074f2631678d0c357d`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 5.4 MB (5448630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdfa63e25f97d6c11c295940e087b3755f34bd4f480f4e924e36ac6258ab5e2d`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:2d572848be6fc58b73ba75edc84f028837bb7be998b3a8b8117fdb44a6892220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118969882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2b8fc8707d9dcb774ef1b70dedc149909573b49d1dd8016e6c24f6bc5b151d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:28:26 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:28:26 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:28:26 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:28:26 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:28:26 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:28:26 GMT
ARG KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:28:26 GMT
ENV KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:28:26 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Mon, 26 Oct 2026 23:28:26 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Mon, 26 Oct 2026 23:28:51 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:28:51 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:28:51 GMT
USER kong
# Mon, 26 Oct 2026 23:28:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:28:51 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:28:51 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:28:51 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:28:51 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4482a67513b8b59c80536a4107c67c75fb3da36fb98f5dbd0ca7be335f400cf7`  
		Last Modified: Mon, 26 Oct 2026 23:29:08 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72b5bf50a290e14d037f47bb546d2b2b59fe106b70f7a66e95288dbf5150e68`  
		Last Modified: Mon, 26 Oct 2026 23:29:10 GMT  
		Size: 90.0 MB (90028470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0dc11c281206d5f2b046966d7a506d172bf3cccdfd52bc7782d11d290362bb`  
		Last Modified: Mon, 26 Oct 2026 23:29:08 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9` - unknown; unknown

```console
$ docker pull kong@sha256:3f017bfd60f049bd40b331a546f291eb2f0bf59ffa10056221fae66c70c07e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7157ac4e89b0eeff09eee9894c5dd2ae1fdfdef1ef1afd975d2350b4903b38c`

```dockerfile
```

-	Layers:
	-	`sha256:14ad66dcf705d43214363892b661f9f3eebc4cd1327fba39646108705f982165`  
		Last Modified: Mon, 26 Oct 2026 23:29:09 GMT  
		Size: 5.5 MB (5455797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b19867be76e964c681dcfadb0ca3916c009552abc8abb938cca8ace9f697e53`  
		Last Modified: Mon, 26 Oct 2026 23:29:08 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9-ubuntu`

```console
$ docker pull kong@sha256:c1f5fbb80cd666b4b29b4e97875ecd64d93b01b23fb3083bc3e424b3bad5fdd5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:ed09b2595d3eedf1d68b55b98e310b064de5f2f14628076d4366159ab581dcd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120486757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae0b7c98ca0770a1a37e69c4c81ac2e8bcaf7ebc71cc26aae3f1dec46e3b813`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:23:55 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:23:55 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:23:55 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:23:55 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:23:55 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:23:55 GMT
ARG KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:23:55 GMT
ENV KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:23:55 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Mon, 26 Oct 2026 23:23:55 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Mon, 26 Oct 2026 23:24:20 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:24:20 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:24:20 GMT
USER kong
# Mon, 26 Oct 2026 23:24:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:24:20 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:24:20 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:24:20 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:24:20 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72934de9872f6eff78cc64aa31cf3bceff68f4fe143e7d2b523d8997580caf02`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6bb20bba82565c5b64de7c5c3840e30888ba5d705387e2eeeb465d919b8852`  
		Last Modified: Mon, 26 Oct 2026 23:24:39 GMT  
		Size: 90.7 MB (90717854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:270611d99ed875a04ab364c52cfafdda6a766fc7473b1ad11cd7795280b015b9`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:cdee418a85f88a067f44fa512509650888404d0b625af5790f44c1a20929fa71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcd3774983b337d0fb2829f42b190e82bf3c19b87f9afd7a702e674b091699e1`

```dockerfile
```

-	Layers:
	-	`sha256:44329305da602c853785422e5f3b76f18e3181514efdc7074f2631678d0c357d`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 5.4 MB (5448630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdfa63e25f97d6c11c295940e087b3755f34bd4f480f4e924e36ac6258ab5e2d`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:2d572848be6fc58b73ba75edc84f028837bb7be998b3a8b8117fdb44a6892220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118969882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2b8fc8707d9dcb774ef1b70dedc149909573b49d1dd8016e6c24f6bc5b151d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:28:26 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:28:26 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:28:26 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:28:26 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:28:26 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:28:26 GMT
ARG KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:28:26 GMT
ENV KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:28:26 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Mon, 26 Oct 2026 23:28:26 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Mon, 26 Oct 2026 23:28:51 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:28:51 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:28:51 GMT
USER kong
# Mon, 26 Oct 2026 23:28:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:28:51 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:28:51 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:28:51 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:28:51 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4482a67513b8b59c80536a4107c67c75fb3da36fb98f5dbd0ca7be335f400cf7`  
		Last Modified: Mon, 26 Oct 2026 23:29:08 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72b5bf50a290e14d037f47bb546d2b2b59fe106b70f7a66e95288dbf5150e68`  
		Last Modified: Mon, 26 Oct 2026 23:29:10 GMT  
		Size: 90.0 MB (90028470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0dc11c281206d5f2b046966d7a506d172bf3cccdfd52bc7782d11d290362bb`  
		Last Modified: Mon, 26 Oct 2026 23:29:08 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:3f017bfd60f049bd40b331a546f291eb2f0bf59ffa10056221fae66c70c07e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7157ac4e89b0eeff09eee9894c5dd2ae1fdfdef1ef1afd975d2350b4903b38c`

```dockerfile
```

-	Layers:
	-	`sha256:14ad66dcf705d43214363892b661f9f3eebc4cd1327fba39646108705f982165`  
		Last Modified: Mon, 26 Oct 2026 23:29:09 GMT  
		Size: 5.5 MB (5455797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b19867be76e964c681dcfadb0ca3916c009552abc8abb938cca8ace9f697e53`  
		Last Modified: Mon, 26 Oct 2026 23:29:08 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9.4`

```console
$ docker pull kong@sha256:c1f5fbb80cd666b4b29b4e97875ecd64d93b01b23fb3083bc3e424b3bad5fdd5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9.4` - linux; amd64

```console
$ docker pull kong@sha256:ed09b2595d3eedf1d68b55b98e310b064de5f2f14628076d4366159ab581dcd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120486757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae0b7c98ca0770a1a37e69c4c81ac2e8bcaf7ebc71cc26aae3f1dec46e3b813`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:23:55 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:23:55 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:23:55 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:23:55 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:23:55 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:23:55 GMT
ARG KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:23:55 GMT
ENV KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:23:55 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Mon, 26 Oct 2026 23:23:55 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Mon, 26 Oct 2026 23:24:20 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:24:20 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:24:20 GMT
USER kong
# Mon, 26 Oct 2026 23:24:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:24:20 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:24:20 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:24:20 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:24:20 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72934de9872f6eff78cc64aa31cf3bceff68f4fe143e7d2b523d8997580caf02`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6bb20bba82565c5b64de7c5c3840e30888ba5d705387e2eeeb465d919b8852`  
		Last Modified: Mon, 26 Oct 2026 23:24:39 GMT  
		Size: 90.7 MB (90717854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:270611d99ed875a04ab364c52cfafdda6a766fc7473b1ad11cd7795280b015b9`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.4` - unknown; unknown

```console
$ docker pull kong@sha256:cdee418a85f88a067f44fa512509650888404d0b625af5790f44c1a20929fa71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcd3774983b337d0fb2829f42b190e82bf3c19b87f9afd7a702e674b091699e1`

```dockerfile
```

-	Layers:
	-	`sha256:44329305da602c853785422e5f3b76f18e3181514efdc7074f2631678d0c357d`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 5.4 MB (5448630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdfa63e25f97d6c11c295940e087b3755f34bd4f480f4e924e36ac6258ab5e2d`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9.4` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:2d572848be6fc58b73ba75edc84f028837bb7be998b3a8b8117fdb44a6892220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118969882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2b8fc8707d9dcb774ef1b70dedc149909573b49d1dd8016e6c24f6bc5b151d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:28:26 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:28:26 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:28:26 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:28:26 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:28:26 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:28:26 GMT
ARG KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:28:26 GMT
ENV KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:28:26 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Mon, 26 Oct 2026 23:28:26 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Mon, 26 Oct 2026 23:28:51 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:28:51 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:28:51 GMT
USER kong
# Mon, 26 Oct 2026 23:28:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:28:51 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:28:51 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:28:51 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:28:51 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4482a67513b8b59c80536a4107c67c75fb3da36fb98f5dbd0ca7be335f400cf7`  
		Last Modified: Mon, 26 Oct 2026 23:29:08 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72b5bf50a290e14d037f47bb546d2b2b59fe106b70f7a66e95288dbf5150e68`  
		Last Modified: Mon, 26 Oct 2026 23:29:10 GMT  
		Size: 90.0 MB (90028470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0dc11c281206d5f2b046966d7a506d172bf3cccdfd52bc7782d11d290362bb`  
		Last Modified: Mon, 26 Oct 2026 23:29:08 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.4` - unknown; unknown

```console
$ docker pull kong@sha256:3f017bfd60f049bd40b331a546f291eb2f0bf59ffa10056221fae66c70c07e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7157ac4e89b0eeff09eee9894c5dd2ae1fdfdef1ef1afd975d2350b4903b38c`

```dockerfile
```

-	Layers:
	-	`sha256:14ad66dcf705d43214363892b661f9f3eebc4cd1327fba39646108705f982165`  
		Last Modified: Mon, 26 Oct 2026 23:29:09 GMT  
		Size: 5.5 MB (5455797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b19867be76e964c681dcfadb0ca3916c009552abc8abb938cca8ace9f697e53`  
		Last Modified: Mon, 26 Oct 2026 23:29:08 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9.4-ubuntu`

```console
$ docker pull kong@sha256:c1f5fbb80cd666b4b29b4e97875ecd64d93b01b23fb3083bc3e424b3bad5fdd5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9.4-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:ed09b2595d3eedf1d68b55b98e310b064de5f2f14628076d4366159ab581dcd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120486757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae0b7c98ca0770a1a37e69c4c81ac2e8bcaf7ebc71cc26aae3f1dec46e3b813`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:23:55 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:23:55 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:23:55 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:23:55 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:23:55 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:23:55 GMT
ARG KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:23:55 GMT
ENV KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:23:55 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Mon, 26 Oct 2026 23:23:55 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Mon, 26 Oct 2026 23:24:20 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:24:20 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:24:20 GMT
USER kong
# Mon, 26 Oct 2026 23:24:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:24:20 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:24:20 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:24:20 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:24:20 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72934de9872f6eff78cc64aa31cf3bceff68f4fe143e7d2b523d8997580caf02`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6bb20bba82565c5b64de7c5c3840e30888ba5d705387e2eeeb465d919b8852`  
		Last Modified: Mon, 26 Oct 2026 23:24:39 GMT  
		Size: 90.7 MB (90717854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:270611d99ed875a04ab364c52cfafdda6a766fc7473b1ad11cd7795280b015b9`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:cdee418a85f88a067f44fa512509650888404d0b625af5790f44c1a20929fa71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcd3774983b337d0fb2829f42b190e82bf3c19b87f9afd7a702e674b091699e1`

```dockerfile
```

-	Layers:
	-	`sha256:44329305da602c853785422e5f3b76f18e3181514efdc7074f2631678d0c357d`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 5.4 MB (5448630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdfa63e25f97d6c11c295940e087b3755f34bd4f480f4e924e36ac6258ab5e2d`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9.4-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:2d572848be6fc58b73ba75edc84f028837bb7be998b3a8b8117fdb44a6892220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118969882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2b8fc8707d9dcb774ef1b70dedc149909573b49d1dd8016e6c24f6bc5b151d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:28:26 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:28:26 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:28:26 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:28:26 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:28:26 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:28:26 GMT
ARG KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:28:26 GMT
ENV KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:28:26 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Mon, 26 Oct 2026 23:28:26 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Mon, 26 Oct 2026 23:28:51 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:28:51 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:28:51 GMT
USER kong
# Mon, 26 Oct 2026 23:28:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:28:51 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:28:51 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:28:51 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:28:51 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4482a67513b8b59c80536a4107c67c75fb3da36fb98f5dbd0ca7be335f400cf7`  
		Last Modified: Mon, 26 Oct 2026 23:29:08 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72b5bf50a290e14d037f47bb546d2b2b59fe106b70f7a66e95288dbf5150e68`  
		Last Modified: Mon, 26 Oct 2026 23:29:10 GMT  
		Size: 90.0 MB (90028470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0dc11c281206d5f2b046966d7a506d172bf3cccdfd52bc7782d11d290362bb`  
		Last Modified: Mon, 26 Oct 2026 23:29:08 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:3f017bfd60f049bd40b331a546f291eb2f0bf59ffa10056221fae66c70c07e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7157ac4e89b0eeff09eee9894c5dd2ae1fdfdef1ef1afd975d2350b4903b38c`

```dockerfile
```

-	Layers:
	-	`sha256:14ad66dcf705d43214363892b661f9f3eebc4cd1327fba39646108705f982165`  
		Last Modified: Mon, 26 Oct 2026 23:29:09 GMT  
		Size: 5.5 MB (5455797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b19867be76e964c681dcfadb0ca3916c009552abc8abb938cca8ace9f697e53`  
		Last Modified: Mon, 26 Oct 2026 23:29:08 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:latest`

```console
$ docker pull kong@sha256:c1f5fbb80cd666b4b29b4e97875ecd64d93b01b23fb3083bc3e424b3bad5fdd5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:ed09b2595d3eedf1d68b55b98e310b064de5f2f14628076d4366159ab581dcd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120486757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae0b7c98ca0770a1a37e69c4c81ac2e8bcaf7ebc71cc26aae3f1dec46e3b813`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:23:55 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:23:55 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:23:55 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:23:55 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:23:55 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:23:55 GMT
ARG KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:23:55 GMT
ENV KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:23:55 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Mon, 26 Oct 2026 23:23:55 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Mon, 26 Oct 2026 23:24:20 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:24:20 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:24:20 GMT
USER kong
# Mon, 26 Oct 2026 23:24:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:24:20 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:24:20 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:24:20 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:24:20 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72934de9872f6eff78cc64aa31cf3bceff68f4fe143e7d2b523d8997580caf02`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6bb20bba82565c5b64de7c5c3840e30888ba5d705387e2eeeb465d919b8852`  
		Last Modified: Mon, 26 Oct 2026 23:24:39 GMT  
		Size: 90.7 MB (90717854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:270611d99ed875a04ab364c52cfafdda6a766fc7473b1ad11cd7795280b015b9`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:latest` - unknown; unknown

```console
$ docker pull kong@sha256:cdee418a85f88a067f44fa512509650888404d0b625af5790f44c1a20929fa71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcd3774983b337d0fb2829f42b190e82bf3c19b87f9afd7a702e674b091699e1`

```dockerfile
```

-	Layers:
	-	`sha256:44329305da602c853785422e5f3b76f18e3181514efdc7074f2631678d0c357d`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 5.4 MB (5448630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdfa63e25f97d6c11c295940e087b3755f34bd4f480f4e924e36ac6258ab5e2d`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:latest` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:2d572848be6fc58b73ba75edc84f028837bb7be998b3a8b8117fdb44a6892220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118969882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2b8fc8707d9dcb774ef1b70dedc149909573b49d1dd8016e6c24f6bc5b151d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:28:26 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:28:26 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:28:26 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:28:26 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:28:26 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:28:26 GMT
ARG KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:28:26 GMT
ENV KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:28:26 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Mon, 26 Oct 2026 23:28:26 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Mon, 26 Oct 2026 23:28:51 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:28:51 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:28:51 GMT
USER kong
# Mon, 26 Oct 2026 23:28:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:28:51 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:28:51 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:28:51 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:28:51 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4482a67513b8b59c80536a4107c67c75fb3da36fb98f5dbd0ca7be335f400cf7`  
		Last Modified: Mon, 26 Oct 2026 23:29:08 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72b5bf50a290e14d037f47bb546d2b2b59fe106b70f7a66e95288dbf5150e68`  
		Last Modified: Mon, 26 Oct 2026 23:29:10 GMT  
		Size: 90.0 MB (90028470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0dc11c281206d5f2b046966d7a506d172bf3cccdfd52bc7782d11d290362bb`  
		Last Modified: Mon, 26 Oct 2026 23:29:08 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:latest` - unknown; unknown

```console
$ docker pull kong@sha256:3f017bfd60f049bd40b331a546f291eb2f0bf59ffa10056221fae66c70c07e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7157ac4e89b0eeff09eee9894c5dd2ae1fdfdef1ef1afd975d2350b4903b38c`

```dockerfile
```

-	Layers:
	-	`sha256:14ad66dcf705d43214363892b661f9f3eebc4cd1327fba39646108705f982165`  
		Last Modified: Mon, 26 Oct 2026 23:29:09 GMT  
		Size: 5.5 MB (5455797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b19867be76e964c681dcfadb0ca3916c009552abc8abb938cca8ace9f697e53`  
		Last Modified: Mon, 26 Oct 2026 23:29:08 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:ubuntu`

```console
$ docker pull kong@sha256:c1f5fbb80cd666b4b29b4e97875ecd64d93b01b23fb3083bc3e424b3bad5fdd5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:ed09b2595d3eedf1d68b55b98e310b064de5f2f14628076d4366159ab581dcd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120486757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae0b7c98ca0770a1a37e69c4c81ac2e8bcaf7ebc71cc26aae3f1dec46e3b813`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:23:55 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:23:55 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:23:55 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:23:55 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:23:55 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:23:55 GMT
ARG KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:23:55 GMT
ENV KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:23:55 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Mon, 26 Oct 2026 23:23:55 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Mon, 26 Oct 2026 23:24:20 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:24:20 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:24:20 GMT
USER kong
# Mon, 26 Oct 2026 23:24:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:24:20 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:24:20 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:24:20 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:24:20 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72934de9872f6eff78cc64aa31cf3bceff68f4fe143e7d2b523d8997580caf02`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6bb20bba82565c5b64de7c5c3840e30888ba5d705387e2eeeb465d919b8852`  
		Last Modified: Mon, 26 Oct 2026 23:24:39 GMT  
		Size: 90.7 MB (90717854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:270611d99ed875a04ab364c52cfafdda6a766fc7473b1ad11cd7795280b015b9`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:cdee418a85f88a067f44fa512509650888404d0b625af5790f44c1a20929fa71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcd3774983b337d0fb2829f42b190e82bf3c19b87f9afd7a702e674b091699e1`

```dockerfile
```

-	Layers:
	-	`sha256:44329305da602c853785422e5f3b76f18e3181514efdc7074f2631678d0c357d`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 5.4 MB (5448630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdfa63e25f97d6c11c295940e087b3755f34bd4f480f4e924e36ac6258ab5e2d`  
		Last Modified: Mon, 26 Oct 2026 23:24:36 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:2d572848be6fc58b73ba75edc84f028837bb7be998b3a8b8117fdb44a6892220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118969882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2b8fc8707d9dcb774ef1b70dedc149909573b49d1dd8016e6c24f6bc5b151d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:28:26 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Mon, 26 Oct 2026 23:28:26 GMT
ARG ASSET=ce
# Mon, 26 Oct 2026 23:28:26 GMT
ENV ASSET=ce
# Mon, 26 Oct 2026 23:28:26 GMT
ARG EE_PORTS
# Mon, 26 Oct 2026 23:28:26 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Mon, 26 Oct 2026 23:28:26 GMT
ARG KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:28:26 GMT
ENV KONG_VERSION=3.9.4
# Mon, 26 Oct 2026 23:28:26 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Mon, 26 Oct 2026 23:28:26 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Mon, 26 Oct 2026 23:28:51 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Mon, 26 Oct 2026 23:28:51 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:28:51 GMT
USER kong
# Mon, 26 Oct 2026 23:28:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:28:51 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Mon, 26 Oct 2026 23:28:51 GMT
STOPSIGNAL SIGQUIT
# Mon, 26 Oct 2026 23:28:51 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Mon, 26 Oct 2026 23:28:51 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4482a67513b8b59c80536a4107c67c75fb3da36fb98f5dbd0ca7be335f400cf7`  
		Last Modified: Mon, 26 Oct 2026 23:29:08 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72b5bf50a290e14d037f47bb546d2b2b59fe106b70f7a66e95288dbf5150e68`  
		Last Modified: Mon, 26 Oct 2026 23:29:10 GMT  
		Size: 90.0 MB (90028470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0dc11c281206d5f2b046966d7a506d172bf3cccdfd52bc7782d11d290362bb`  
		Last Modified: Mon, 26 Oct 2026 23:29:08 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:3f017bfd60f049bd40b331a546f291eb2f0bf59ffa10056221fae66c70c07e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7157ac4e89b0eeff09eee9894c5dd2ae1fdfdef1ef1afd975d2350b4903b38c`

```dockerfile
```

-	Layers:
	-	`sha256:14ad66dcf705d43214363892b661f9f3eebc4cd1327fba39646108705f982165`  
		Last Modified: Mon, 26 Oct 2026 23:29:09 GMT  
		Size: 5.5 MB (5455797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b19867be76e964c681dcfadb0ca3916c009552abc8abb938cca8ace9f697e53`  
		Last Modified: Mon, 26 Oct 2026 23:29:08 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json
