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
$ docker pull kong@sha256:fd8a8bb8b7cec583e7ba7a1d4ccdb1e4c542a42eda7f5ae3431332585ab92813
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
$ docker pull kong@sha256:dd41dedd859a459617f595ef7c5ea7607dd7fd9252a0cc9de13b43f770360c8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119000278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa352ea3554bad80493dc2d430bb029866d6de409bfdbbc3376223db5d5da850`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:32:25 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 11 Nov 2026 23:32:25 GMT
ARG ASSET=ce
# Wed, 11 Nov 2026 23:32:25 GMT
ENV ASSET=ce
# Wed, 11 Nov 2026 23:32:25 GMT
ARG EE_PORTS
# Wed, 11 Nov 2026 23:32:25 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 11 Nov 2026 23:32:25 GMT
ARG KONG_VERSION=3.9.4
# Wed, 11 Nov 2026 23:32:25 GMT
ENV KONG_VERSION=3.9.4
# Wed, 11 Nov 2026 23:32:25 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Wed, 11 Nov 2026 23:32:25 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Wed, 11 Nov 2026 23:32:54 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 11 Nov 2026 23:32:54 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:32:54 GMT
USER kong
# Wed, 11 Nov 2026 23:32:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:32:54 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 11 Nov 2026 23:32:54 GMT
STOPSIGNAL SIGQUIT
# Wed, 11 Nov 2026 23:32:54 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 11 Nov 2026 23:32:54 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764f5f15270b12c0926795304c78479748596cd2dcd13fae0f3e161fb8221635`  
		Last Modified: Wed, 11 Nov 2026 23:33:13 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:949ebb0fa216ff21bf1c658c6bb2d52261b4b4ff8f2da592d1ea120d4faa4ede`  
		Last Modified: Wed, 11 Nov 2026 23:33:14 GMT  
		Size: 90.0 MB (90033736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6300d344ddfa6c00898a6c077f24396a7a4a95bed74333e22c41a52a81b006`  
		Last Modified: Wed, 11 Nov 2026 23:33:11 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3` - unknown; unknown

```console
$ docker pull kong@sha256:c703dad6d7674205ae66a279919a6a73d21187f4fb7d04b2cc5b1a85f59ec5f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb5225e79430fc8f7010f44d3e575a62a78a002ed10f590958218b9161772a1`

```dockerfile
```

-	Layers:
	-	`sha256:a5c08e9b0d86bce893638fc345d25cedc96f08c44834b6257b24ddc6f871eab4`  
		Last Modified: Wed, 11 Nov 2026 23:33:12 GMT  
		Size: 5.5 MB (5456401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8f7846b29df359fc613051b29cb4c9ff4f6294310a2f244b5aa20972fd9f138`  
		Last Modified: Wed, 11 Nov 2026 23:33:11 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4`

```console
$ docker pull kong@sha256:c851c5864bc8d490ae62e99a8da03d081ff8a42b69dd27c34dbc38b1a81273d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4` - linux; amd64

```console
$ docker pull kong@sha256:23cd1afd128da997a4421700ec7d91a957d62c795ad3d202a25c060c22d19963
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92870196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ba7ab7803646c7736b3af6573d2ecc8171420ff4a7b0d9a8549fad4bda1b371`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:29:21 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 11 Nov 2026 23:29:21 GMT
ARG ASSET=ce
# Wed, 11 Nov 2026 23:29:21 GMT
ENV ASSET=ce
# Wed, 11 Nov 2026 23:29:21 GMT
ARG EE_PORTS
# Wed, 11 Nov 2026 23:29:21 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 11 Nov 2026 23:29:21 GMT
ARG KONG_VERSION=3.4.2
# Wed, 11 Nov 2026 23:29:21 GMT
ENV KONG_VERSION=3.4.2
# Wed, 11 Nov 2026 23:29:21 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Wed, 11 Nov 2026 23:29:21 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Wed, 11 Nov 2026 23:29:52 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 11 Nov 2026 23:29:53 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:29:53 GMT
USER kong
# Wed, 11 Nov 2026 23:29:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:29:53 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 11 Nov 2026 23:29:53 GMT
STOPSIGNAL SIGQUIT
# Wed, 11 Nov 2026 23:29:53 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 11 Nov 2026 23:29:53 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01095384783f689368e1005ef06dc7500b4d5deb92afda420756c61f661962a8`  
		Last Modified: Wed, 11 Nov 2026 23:30:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6c0679f1e23b20b74444471c206b291d1dca957612c0cbc45595eed4d32f1c`  
		Last Modified: Wed, 11 Nov 2026 23:30:10 GMT  
		Size: 62.8 MB (62799377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dff5a1ee1ba095902dd4e305f20a419e7264beeb60b7aadcb9c5d2f6ab62b84`  
		Last Modified: Wed, 11 Nov 2026 23:30:08 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4` - unknown; unknown

```console
$ docker pull kong@sha256:31762fab2ee21af20ff7ad8a264a5a0b98b0e771040e077ffd53dfafc3590e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6062041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e7859df4db86603ff97ea74672ca07607d5b93d7ac6478916ea5d62f1a270ee`

```dockerfile
```

-	Layers:
	-	`sha256:2277dc01715befb52fb4859021bdce05cc55440fab3bbdac8b5068db4d4d940a`  
		Last Modified: Wed, 11 Nov 2026 23:30:09 GMT  
		Size: 6.0 MB (6046695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2474ab3ef12b2ab074da6a1b166688645110bfc21d3335d6fff3d6f69fbfc5d1`  
		Last Modified: Wed, 11 Nov 2026 23:30:08 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:49021ab9d47e7a55dd557b0e59490315b2eb12911558e49f65426edcf2d6dea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.3 MB (89283757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb336cb43954a180ac4a0daea4af70b6435e8fe9652810df6c14425df232ce87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:32:28 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 11 Nov 2026 23:32:28 GMT
ARG ASSET=ce
# Wed, 11 Nov 2026 23:32:28 GMT
ENV ASSET=ce
# Wed, 11 Nov 2026 23:32:28 GMT
ARG EE_PORTS
# Wed, 11 Nov 2026 23:32:28 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 11 Nov 2026 23:32:28 GMT
ARG KONG_VERSION=3.4.2
# Wed, 11 Nov 2026 23:32:28 GMT
ENV KONG_VERSION=3.4.2
# Wed, 11 Nov 2026 23:32:28 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Wed, 11 Nov 2026 23:32:28 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Wed, 11 Nov 2026 23:32:48 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 11 Nov 2026 23:32:48 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:32:48 GMT
USER kong
# Wed, 11 Nov 2026 23:32:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:32:48 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 11 Nov 2026 23:32:48 GMT
STOPSIGNAL SIGQUIT
# Wed, 11 Nov 2026 23:32:48 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 11 Nov 2026 23:32:48 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e2e87248e68063a51841022e1ea960e235b6fa6ee155935e752a0ba25ca6f8b`  
		Last Modified: Wed, 11 Nov 2026 23:33:02 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff9cdbb2ffcee723ff12caaae1ca82a6f18660367d4857239b30e7f1f350dc79`  
		Last Modified: Wed, 11 Nov 2026 23:33:04 GMT  
		Size: 61.3 MB (61281062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7636e51f975f614e6215da0805ae2e200460df9311654b8a89658edf43ebd457`  
		Last Modified: Wed, 11 Nov 2026 23:33:02 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4` - unknown; unknown

```console
$ docker pull kong@sha256:23ffa174fa0a047e7f055a5a69233137fa89182621d71387bd609fd14ae9265b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6040224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ba7d12c61bf7629d2cc6eda58a822c6827b105f00a4f04b54d01d376104e29`

```dockerfile
```

-	Layers:
	-	`sha256:f25d55f9f4e2daea95d1a196f507a67d31af36bcbe08743901cfb308086d3047`  
		Last Modified: Wed, 11 Nov 2026 23:33:03 GMT  
		Size: 6.0 MB (6024774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6991ec3af7b25cae4db875dd549f830f65f78d1a6909397368b01c5b02a26fb7`  
		Last Modified: Wed, 11 Nov 2026 23:33:02 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4-ubuntu`

```console
$ docker pull kong@sha256:321b8452e73c083e3beac0b69b74676f2e5b0ad5050dd65eb4bf790c04c3299d
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
$ docker pull kong@sha256:49021ab9d47e7a55dd557b0e59490315b2eb12911558e49f65426edcf2d6dea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.3 MB (89283757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb336cb43954a180ac4a0daea4af70b6435e8fe9652810df6c14425df232ce87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:32:28 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 11 Nov 2026 23:32:28 GMT
ARG ASSET=ce
# Wed, 11 Nov 2026 23:32:28 GMT
ENV ASSET=ce
# Wed, 11 Nov 2026 23:32:28 GMT
ARG EE_PORTS
# Wed, 11 Nov 2026 23:32:28 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 11 Nov 2026 23:32:28 GMT
ARG KONG_VERSION=3.4.2
# Wed, 11 Nov 2026 23:32:28 GMT
ENV KONG_VERSION=3.4.2
# Wed, 11 Nov 2026 23:32:28 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Wed, 11 Nov 2026 23:32:28 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Wed, 11 Nov 2026 23:32:48 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 11 Nov 2026 23:32:48 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:32:48 GMT
USER kong
# Wed, 11 Nov 2026 23:32:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:32:48 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 11 Nov 2026 23:32:48 GMT
STOPSIGNAL SIGQUIT
# Wed, 11 Nov 2026 23:32:48 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 11 Nov 2026 23:32:48 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e2e87248e68063a51841022e1ea960e235b6fa6ee155935e752a0ba25ca6f8b`  
		Last Modified: Wed, 11 Nov 2026 23:33:02 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff9cdbb2ffcee723ff12caaae1ca82a6f18660367d4857239b30e7f1f350dc79`  
		Last Modified: Wed, 11 Nov 2026 23:33:04 GMT  
		Size: 61.3 MB (61281062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7636e51f975f614e6215da0805ae2e200460df9311654b8a89658edf43ebd457`  
		Last Modified: Wed, 11 Nov 2026 23:33:02 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:23ffa174fa0a047e7f055a5a69233137fa89182621d71387bd609fd14ae9265b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6040224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ba7d12c61bf7629d2cc6eda58a822c6827b105f00a4f04b54d01d376104e29`

```dockerfile
```

-	Layers:
	-	`sha256:f25d55f9f4e2daea95d1a196f507a67d31af36bcbe08743901cfb308086d3047`  
		Last Modified: Wed, 11 Nov 2026 23:33:03 GMT  
		Size: 6.0 MB (6024774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6991ec3af7b25cae4db875dd549f830f65f78d1a6909397368b01c5b02a26fb7`  
		Last Modified: Wed, 11 Nov 2026 23:33:02 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4.2`

```console
$ docker pull kong@sha256:c851c5864bc8d490ae62e99a8da03d081ff8a42b69dd27c34dbc38b1a81273d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4.2` - linux; amd64

```console
$ docker pull kong@sha256:23cd1afd128da997a4421700ec7d91a957d62c795ad3d202a25c060c22d19963
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92870196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ba7ab7803646c7736b3af6573d2ecc8171420ff4a7b0d9a8549fad4bda1b371`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:29:21 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 11 Nov 2026 23:29:21 GMT
ARG ASSET=ce
# Wed, 11 Nov 2026 23:29:21 GMT
ENV ASSET=ce
# Wed, 11 Nov 2026 23:29:21 GMT
ARG EE_PORTS
# Wed, 11 Nov 2026 23:29:21 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 11 Nov 2026 23:29:21 GMT
ARG KONG_VERSION=3.4.2
# Wed, 11 Nov 2026 23:29:21 GMT
ENV KONG_VERSION=3.4.2
# Wed, 11 Nov 2026 23:29:21 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Wed, 11 Nov 2026 23:29:21 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Wed, 11 Nov 2026 23:29:52 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 11 Nov 2026 23:29:53 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:29:53 GMT
USER kong
# Wed, 11 Nov 2026 23:29:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:29:53 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 11 Nov 2026 23:29:53 GMT
STOPSIGNAL SIGQUIT
# Wed, 11 Nov 2026 23:29:53 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 11 Nov 2026 23:29:53 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01095384783f689368e1005ef06dc7500b4d5deb92afda420756c61f661962a8`  
		Last Modified: Wed, 11 Nov 2026 23:30:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6c0679f1e23b20b74444471c206b291d1dca957612c0cbc45595eed4d32f1c`  
		Last Modified: Wed, 11 Nov 2026 23:30:10 GMT  
		Size: 62.8 MB (62799377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dff5a1ee1ba095902dd4e305f20a419e7264beeb60b7aadcb9c5d2f6ab62b84`  
		Last Modified: Wed, 11 Nov 2026 23:30:08 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2` - unknown; unknown

```console
$ docker pull kong@sha256:31762fab2ee21af20ff7ad8a264a5a0b98b0e771040e077ffd53dfafc3590e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6062041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e7859df4db86603ff97ea74672ca07607d5b93d7ac6478916ea5d62f1a270ee`

```dockerfile
```

-	Layers:
	-	`sha256:2277dc01715befb52fb4859021bdce05cc55440fab3bbdac8b5068db4d4d940a`  
		Last Modified: Wed, 11 Nov 2026 23:30:09 GMT  
		Size: 6.0 MB (6046695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2474ab3ef12b2ab074da6a1b166688645110bfc21d3335d6fff3d6f69fbfc5d1`  
		Last Modified: Wed, 11 Nov 2026 23:30:08 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4.2` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:49021ab9d47e7a55dd557b0e59490315b2eb12911558e49f65426edcf2d6dea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.3 MB (89283757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb336cb43954a180ac4a0daea4af70b6435e8fe9652810df6c14425df232ce87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:32:28 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 11 Nov 2026 23:32:28 GMT
ARG ASSET=ce
# Wed, 11 Nov 2026 23:32:28 GMT
ENV ASSET=ce
# Wed, 11 Nov 2026 23:32:28 GMT
ARG EE_PORTS
# Wed, 11 Nov 2026 23:32:28 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 11 Nov 2026 23:32:28 GMT
ARG KONG_VERSION=3.4.2
# Wed, 11 Nov 2026 23:32:28 GMT
ENV KONG_VERSION=3.4.2
# Wed, 11 Nov 2026 23:32:28 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Wed, 11 Nov 2026 23:32:28 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Wed, 11 Nov 2026 23:32:48 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 11 Nov 2026 23:32:48 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:32:48 GMT
USER kong
# Wed, 11 Nov 2026 23:32:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:32:48 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 11 Nov 2026 23:32:48 GMT
STOPSIGNAL SIGQUIT
# Wed, 11 Nov 2026 23:32:48 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 11 Nov 2026 23:32:48 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e2e87248e68063a51841022e1ea960e235b6fa6ee155935e752a0ba25ca6f8b`  
		Last Modified: Wed, 11 Nov 2026 23:33:02 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff9cdbb2ffcee723ff12caaae1ca82a6f18660367d4857239b30e7f1f350dc79`  
		Last Modified: Wed, 11 Nov 2026 23:33:04 GMT  
		Size: 61.3 MB (61281062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7636e51f975f614e6215da0805ae2e200460df9311654b8a89658edf43ebd457`  
		Last Modified: Wed, 11 Nov 2026 23:33:02 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2` - unknown; unknown

```console
$ docker pull kong@sha256:23ffa174fa0a047e7f055a5a69233137fa89182621d71387bd609fd14ae9265b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6040224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ba7d12c61bf7629d2cc6eda58a822c6827b105f00a4f04b54d01d376104e29`

```dockerfile
```

-	Layers:
	-	`sha256:f25d55f9f4e2daea95d1a196f507a67d31af36bcbe08743901cfb308086d3047`  
		Last Modified: Wed, 11 Nov 2026 23:33:03 GMT  
		Size: 6.0 MB (6024774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6991ec3af7b25cae4db875dd549f830f65f78d1a6909397368b01c5b02a26fb7`  
		Last Modified: Wed, 11 Nov 2026 23:33:02 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4.2-ubuntu`

```console
$ docker pull kong@sha256:c851c5864bc8d490ae62e99a8da03d081ff8a42b69dd27c34dbc38b1a81273d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4.2-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:23cd1afd128da997a4421700ec7d91a957d62c795ad3d202a25c060c22d19963
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92870196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ba7ab7803646c7736b3af6573d2ecc8171420ff4a7b0d9a8549fad4bda1b371`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:29:21 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 11 Nov 2026 23:29:21 GMT
ARG ASSET=ce
# Wed, 11 Nov 2026 23:29:21 GMT
ENV ASSET=ce
# Wed, 11 Nov 2026 23:29:21 GMT
ARG EE_PORTS
# Wed, 11 Nov 2026 23:29:21 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 11 Nov 2026 23:29:21 GMT
ARG KONG_VERSION=3.4.2
# Wed, 11 Nov 2026 23:29:21 GMT
ENV KONG_VERSION=3.4.2
# Wed, 11 Nov 2026 23:29:21 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Wed, 11 Nov 2026 23:29:21 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Wed, 11 Nov 2026 23:29:52 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 11 Nov 2026 23:29:53 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:29:53 GMT
USER kong
# Wed, 11 Nov 2026 23:29:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:29:53 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 11 Nov 2026 23:29:53 GMT
STOPSIGNAL SIGQUIT
# Wed, 11 Nov 2026 23:29:53 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 11 Nov 2026 23:29:53 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01095384783f689368e1005ef06dc7500b4d5deb92afda420756c61f661962a8`  
		Last Modified: Wed, 11 Nov 2026 23:30:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6c0679f1e23b20b74444471c206b291d1dca957612c0cbc45595eed4d32f1c`  
		Last Modified: Wed, 11 Nov 2026 23:30:10 GMT  
		Size: 62.8 MB (62799377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dff5a1ee1ba095902dd4e305f20a419e7264beeb60b7aadcb9c5d2f6ab62b84`  
		Last Modified: Wed, 11 Nov 2026 23:30:08 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:31762fab2ee21af20ff7ad8a264a5a0b98b0e771040e077ffd53dfafc3590e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6062041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e7859df4db86603ff97ea74672ca07607d5b93d7ac6478916ea5d62f1a270ee`

```dockerfile
```

-	Layers:
	-	`sha256:2277dc01715befb52fb4859021bdce05cc55440fab3bbdac8b5068db4d4d940a`  
		Last Modified: Wed, 11 Nov 2026 23:30:09 GMT  
		Size: 6.0 MB (6046695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2474ab3ef12b2ab074da6a1b166688645110bfc21d3335d6fff3d6f69fbfc5d1`  
		Last Modified: Wed, 11 Nov 2026 23:30:08 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4.2-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:49021ab9d47e7a55dd557b0e59490315b2eb12911558e49f65426edcf2d6dea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.3 MB (89283757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb336cb43954a180ac4a0daea4af70b6435e8fe9652810df6c14425df232ce87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:32:28 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 11 Nov 2026 23:32:28 GMT
ARG ASSET=ce
# Wed, 11 Nov 2026 23:32:28 GMT
ENV ASSET=ce
# Wed, 11 Nov 2026 23:32:28 GMT
ARG EE_PORTS
# Wed, 11 Nov 2026 23:32:28 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 11 Nov 2026 23:32:28 GMT
ARG KONG_VERSION=3.4.2
# Wed, 11 Nov 2026 23:32:28 GMT
ENV KONG_VERSION=3.4.2
# Wed, 11 Nov 2026 23:32:28 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Wed, 11 Nov 2026 23:32:28 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Wed, 11 Nov 2026 23:32:48 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 11 Nov 2026 23:32:48 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:32:48 GMT
USER kong
# Wed, 11 Nov 2026 23:32:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:32:48 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 11 Nov 2026 23:32:48 GMT
STOPSIGNAL SIGQUIT
# Wed, 11 Nov 2026 23:32:48 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 11 Nov 2026 23:32:48 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e2e87248e68063a51841022e1ea960e235b6fa6ee155935e752a0ba25ca6f8b`  
		Last Modified: Wed, 11 Nov 2026 23:33:02 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff9cdbb2ffcee723ff12caaae1ca82a6f18660367d4857239b30e7f1f350dc79`  
		Last Modified: Wed, 11 Nov 2026 23:33:04 GMT  
		Size: 61.3 MB (61281062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7636e51f975f614e6215da0805ae2e200460df9311654b8a89658edf43ebd457`  
		Last Modified: Wed, 11 Nov 2026 23:33:02 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:23ffa174fa0a047e7f055a5a69233137fa89182621d71387bd609fd14ae9265b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6040224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ba7d12c61bf7629d2cc6eda58a822c6827b105f00a4f04b54d01d376104e29`

```dockerfile
```

-	Layers:
	-	`sha256:f25d55f9f4e2daea95d1a196f507a67d31af36bcbe08743901cfb308086d3047`  
		Last Modified: Wed, 11 Nov 2026 23:33:03 GMT  
		Size: 6.0 MB (6024774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6991ec3af7b25cae4db875dd549f830f65f78d1a6909397368b01c5b02a26fb7`  
		Last Modified: Wed, 11 Nov 2026 23:33:02 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8`

```console
$ docker pull kong@sha256:94fe6719242f3cbd01c7fd381c707ef278554a168762c441a7371dbcdfc13d0a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8` - linux; amd64

```console
$ docker pull kong@sha256:ca0bf7f8b0fa6fcb7656309dc1b03eafb3fcfbeb549364fbf79ac2e7532f07fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118050323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4239dd677ce2eed12e337b9404e4b9d3255b0cf06f25f39a2350cc25c40f19a0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:29:21 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 11 Nov 2026 23:29:21 GMT
ARG ASSET=ce
# Wed, 11 Nov 2026 23:29:21 GMT
ENV ASSET=ce
# Wed, 11 Nov 2026 23:29:21 GMT
ARG EE_PORTS
# Wed, 11 Nov 2026 23:29:21 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 11 Nov 2026 23:29:21 GMT
ARG KONG_VERSION=3.8.0
# Wed, 11 Nov 2026 23:29:21 GMT
ENV KONG_VERSION=3.8.0
# Wed, 11 Nov 2026 23:29:21 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Wed, 11 Nov 2026 23:29:21 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Wed, 11 Nov 2026 23:29:46 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 11 Nov 2026 23:29:46 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:29:46 GMT
USER kong
# Wed, 11 Nov 2026 23:29:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:29:46 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 11 Nov 2026 23:29:46 GMT
STOPSIGNAL SIGQUIT
# Wed, 11 Nov 2026 23:29:46 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 11 Nov 2026 23:29:46 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1527390e5737cede6f4b00bacaca33bd14da350dcd7627ff9f03498e55df246`  
		Last Modified: Wed, 11 Nov 2026 23:30:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd04903fe207abea0135ecdead9765482915c30604fc2a631c8907b8a47a408f`  
		Last Modified: Wed, 11 Nov 2026 23:30:07 GMT  
		Size: 88.0 MB (87979507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b9dff04848e2ad29fb5a6e16d5de32b946bf741547307a0a8074fff9f8e295`  
		Last Modified: Wed, 11 Nov 2026 23:30:04 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8` - unknown; unknown

```console
$ docker pull kong@sha256:2073952c4c94251ceeffcc74f4c9baa961fbea3efde60b4477c111dd9cf607c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f608230dcc18b8d18aec9a921747676960d68c8bd94549cfa9fce8e72ba7119`

```dockerfile
```

-	Layers:
	-	`sha256:71fb02f08bb0ce17f596f064f24494a33f04077875dd78e1e8b9ce1e17aa734f`  
		Last Modified: Wed, 11 Nov 2026 23:30:05 GMT  
		Size: 5.3 MB (5346492 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4764dad6c3f502fc994df8bccad2475541278f44e60cff5492e61fad144284db`  
		Last Modified: Wed, 11 Nov 2026 23:30:04 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:50d031101c8ad6d36ec6c7e967127dece3efb61ae1f0034e470f7e4f14b6d49c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 MB (115303630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3182950a2362da2132c227f8f16bfed441905a1d5ed97f781d10b0b01c348100`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:32:33 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 11 Nov 2026 23:32:33 GMT
ARG ASSET=ce
# Wed, 11 Nov 2026 23:32:33 GMT
ENV ASSET=ce
# Wed, 11 Nov 2026 23:32:33 GMT
ARG EE_PORTS
# Wed, 11 Nov 2026 23:32:33 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 11 Nov 2026 23:32:33 GMT
ARG KONG_VERSION=3.8.0
# Wed, 11 Nov 2026 23:32:33 GMT
ENV KONG_VERSION=3.8.0
# Wed, 11 Nov 2026 23:32:33 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Wed, 11 Nov 2026 23:32:33 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Wed, 11 Nov 2026 23:32:55 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 11 Nov 2026 23:32:55 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:32:55 GMT
USER kong
# Wed, 11 Nov 2026 23:32:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:32:55 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 11 Nov 2026 23:32:55 GMT
STOPSIGNAL SIGQUIT
# Wed, 11 Nov 2026 23:32:55 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 11 Nov 2026 23:32:55 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc64193585a1363ee50612754ff02cb76229ced3d158da1f8df7513c308dd76`  
		Last Modified: Wed, 11 Nov 2026 23:33:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:130e72645c718cdb13c7081b50eac8803a063ef9e5f5d8418031c72684122507`  
		Last Modified: Wed, 11 Nov 2026 23:33:16 GMT  
		Size: 87.3 MB (87300932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:298927d391b5a1ccb5daad8771daa60381b304a07295b2f3c3c0020e51192aa7`  
		Last Modified: Wed, 11 Nov 2026 23:33:13 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8` - unknown; unknown

```console
$ docker pull kong@sha256:cc19fb4f3013d4332b78cc7611da1e36a40299968d77f6819d272b5bfca79ae8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:820eeb0af1aad757e22b5b758b13144a90ab9684cdd470ca6cc68dd08f241903`

```dockerfile
```

-	Layers:
	-	`sha256:e84fbb104ab7eafb68c698e3d4e2807270086de21325dbfc6d5a89a1018baa94`  
		Last Modified: Wed, 11 Nov 2026 23:33:13 GMT  
		Size: 5.4 MB (5352818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:defb3f2b4fd064ca2c228c243b6db8d9fa67dffc459ba8b7eebe77a392e438da`  
		Last Modified: Wed, 11 Nov 2026 23:33:13 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8-ubuntu`

```console
$ docker pull kong@sha256:bbb4f43a5ebf210db0b18af81e9be4cf76b80adf28e74ababc65ef56a831b693
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
$ docker pull kong@sha256:50d031101c8ad6d36ec6c7e967127dece3efb61ae1f0034e470f7e4f14b6d49c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 MB (115303630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3182950a2362da2132c227f8f16bfed441905a1d5ed97f781d10b0b01c348100`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:32:33 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 11 Nov 2026 23:32:33 GMT
ARG ASSET=ce
# Wed, 11 Nov 2026 23:32:33 GMT
ENV ASSET=ce
# Wed, 11 Nov 2026 23:32:33 GMT
ARG EE_PORTS
# Wed, 11 Nov 2026 23:32:33 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 11 Nov 2026 23:32:33 GMT
ARG KONG_VERSION=3.8.0
# Wed, 11 Nov 2026 23:32:33 GMT
ENV KONG_VERSION=3.8.0
# Wed, 11 Nov 2026 23:32:33 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Wed, 11 Nov 2026 23:32:33 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Wed, 11 Nov 2026 23:32:55 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 11 Nov 2026 23:32:55 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:32:55 GMT
USER kong
# Wed, 11 Nov 2026 23:32:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:32:55 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 11 Nov 2026 23:32:55 GMT
STOPSIGNAL SIGQUIT
# Wed, 11 Nov 2026 23:32:55 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 11 Nov 2026 23:32:55 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc64193585a1363ee50612754ff02cb76229ced3d158da1f8df7513c308dd76`  
		Last Modified: Wed, 11 Nov 2026 23:33:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:130e72645c718cdb13c7081b50eac8803a063ef9e5f5d8418031c72684122507`  
		Last Modified: Wed, 11 Nov 2026 23:33:16 GMT  
		Size: 87.3 MB (87300932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:298927d391b5a1ccb5daad8771daa60381b304a07295b2f3c3c0020e51192aa7`  
		Last Modified: Wed, 11 Nov 2026 23:33:13 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:cc19fb4f3013d4332b78cc7611da1e36a40299968d77f6819d272b5bfca79ae8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:820eeb0af1aad757e22b5b758b13144a90ab9684cdd470ca6cc68dd08f241903`

```dockerfile
```

-	Layers:
	-	`sha256:e84fbb104ab7eafb68c698e3d4e2807270086de21325dbfc6d5a89a1018baa94`  
		Last Modified: Wed, 11 Nov 2026 23:33:13 GMT  
		Size: 5.4 MB (5352818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:defb3f2b4fd064ca2c228c243b6db8d9fa67dffc459ba8b7eebe77a392e438da`  
		Last Modified: Wed, 11 Nov 2026 23:33:13 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8.0`

```console
$ docker pull kong@sha256:bbb4f43a5ebf210db0b18af81e9be4cf76b80adf28e74ababc65ef56a831b693
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
$ docker pull kong@sha256:50d031101c8ad6d36ec6c7e967127dece3efb61ae1f0034e470f7e4f14b6d49c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 MB (115303630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3182950a2362da2132c227f8f16bfed441905a1d5ed97f781d10b0b01c348100`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:32:33 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 11 Nov 2026 23:32:33 GMT
ARG ASSET=ce
# Wed, 11 Nov 2026 23:32:33 GMT
ENV ASSET=ce
# Wed, 11 Nov 2026 23:32:33 GMT
ARG EE_PORTS
# Wed, 11 Nov 2026 23:32:33 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 11 Nov 2026 23:32:33 GMT
ARG KONG_VERSION=3.8.0
# Wed, 11 Nov 2026 23:32:33 GMT
ENV KONG_VERSION=3.8.0
# Wed, 11 Nov 2026 23:32:33 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Wed, 11 Nov 2026 23:32:33 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Wed, 11 Nov 2026 23:32:55 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 11 Nov 2026 23:32:55 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:32:55 GMT
USER kong
# Wed, 11 Nov 2026 23:32:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:32:55 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 11 Nov 2026 23:32:55 GMT
STOPSIGNAL SIGQUIT
# Wed, 11 Nov 2026 23:32:55 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 11 Nov 2026 23:32:55 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc64193585a1363ee50612754ff02cb76229ced3d158da1f8df7513c308dd76`  
		Last Modified: Wed, 11 Nov 2026 23:33:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:130e72645c718cdb13c7081b50eac8803a063ef9e5f5d8418031c72684122507`  
		Last Modified: Wed, 11 Nov 2026 23:33:16 GMT  
		Size: 87.3 MB (87300932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:298927d391b5a1ccb5daad8771daa60381b304a07295b2f3c3c0020e51192aa7`  
		Last Modified: Wed, 11 Nov 2026 23:33:13 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0` - unknown; unknown

```console
$ docker pull kong@sha256:cc19fb4f3013d4332b78cc7611da1e36a40299968d77f6819d272b5bfca79ae8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:820eeb0af1aad757e22b5b758b13144a90ab9684cdd470ca6cc68dd08f241903`

```dockerfile
```

-	Layers:
	-	`sha256:e84fbb104ab7eafb68c698e3d4e2807270086de21325dbfc6d5a89a1018baa94`  
		Last Modified: Wed, 11 Nov 2026 23:33:13 GMT  
		Size: 5.4 MB (5352818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:defb3f2b4fd064ca2c228c243b6db8d9fa67dffc459ba8b7eebe77a392e438da`  
		Last Modified: Wed, 11 Nov 2026 23:33:13 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8.0-ubuntu`

```console
$ docker pull kong@sha256:94fe6719242f3cbd01c7fd381c707ef278554a168762c441a7371dbcdfc13d0a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8.0-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:ca0bf7f8b0fa6fcb7656309dc1b03eafb3fcfbeb549364fbf79ac2e7532f07fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118050323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4239dd677ce2eed12e337b9404e4b9d3255b0cf06f25f39a2350cc25c40f19a0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:29:21 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 11 Nov 2026 23:29:21 GMT
ARG ASSET=ce
# Wed, 11 Nov 2026 23:29:21 GMT
ENV ASSET=ce
# Wed, 11 Nov 2026 23:29:21 GMT
ARG EE_PORTS
# Wed, 11 Nov 2026 23:29:21 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 11 Nov 2026 23:29:21 GMT
ARG KONG_VERSION=3.8.0
# Wed, 11 Nov 2026 23:29:21 GMT
ENV KONG_VERSION=3.8.0
# Wed, 11 Nov 2026 23:29:21 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Wed, 11 Nov 2026 23:29:21 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Wed, 11 Nov 2026 23:29:46 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 11 Nov 2026 23:29:46 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:29:46 GMT
USER kong
# Wed, 11 Nov 2026 23:29:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:29:46 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 11 Nov 2026 23:29:46 GMT
STOPSIGNAL SIGQUIT
# Wed, 11 Nov 2026 23:29:46 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 11 Nov 2026 23:29:46 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1527390e5737cede6f4b00bacaca33bd14da350dcd7627ff9f03498e55df246`  
		Last Modified: Wed, 11 Nov 2026 23:30:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd04903fe207abea0135ecdead9765482915c30604fc2a631c8907b8a47a408f`  
		Last Modified: Wed, 11 Nov 2026 23:30:07 GMT  
		Size: 88.0 MB (87979507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b9dff04848e2ad29fb5a6e16d5de32b946bf741547307a0a8074fff9f8e295`  
		Last Modified: Wed, 11 Nov 2026 23:30:04 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:2073952c4c94251ceeffcc74f4c9baa961fbea3efde60b4477c111dd9cf607c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f608230dcc18b8d18aec9a921747676960d68c8bd94549cfa9fce8e72ba7119`

```dockerfile
```

-	Layers:
	-	`sha256:71fb02f08bb0ce17f596f064f24494a33f04077875dd78e1e8b9ce1e17aa734f`  
		Last Modified: Wed, 11 Nov 2026 23:30:05 GMT  
		Size: 5.3 MB (5346492 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4764dad6c3f502fc994df8bccad2475541278f44e60cff5492e61fad144284db`  
		Last Modified: Wed, 11 Nov 2026 23:30:04 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8.0-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:50d031101c8ad6d36ec6c7e967127dece3efb61ae1f0034e470f7e4f14b6d49c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 MB (115303630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3182950a2362da2132c227f8f16bfed441905a1d5ed97f781d10b0b01c348100`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:32:33 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 11 Nov 2026 23:32:33 GMT
ARG ASSET=ce
# Wed, 11 Nov 2026 23:32:33 GMT
ENV ASSET=ce
# Wed, 11 Nov 2026 23:32:33 GMT
ARG EE_PORTS
# Wed, 11 Nov 2026 23:32:33 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 11 Nov 2026 23:32:33 GMT
ARG KONG_VERSION=3.8.0
# Wed, 11 Nov 2026 23:32:33 GMT
ENV KONG_VERSION=3.8.0
# Wed, 11 Nov 2026 23:32:33 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Wed, 11 Nov 2026 23:32:33 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Wed, 11 Nov 2026 23:32:55 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 11 Nov 2026 23:32:55 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:32:55 GMT
USER kong
# Wed, 11 Nov 2026 23:32:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:32:55 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 11 Nov 2026 23:32:55 GMT
STOPSIGNAL SIGQUIT
# Wed, 11 Nov 2026 23:32:55 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 11 Nov 2026 23:32:55 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc64193585a1363ee50612754ff02cb76229ced3d158da1f8df7513c308dd76`  
		Last Modified: Wed, 11 Nov 2026 23:33:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:130e72645c718cdb13c7081b50eac8803a063ef9e5f5d8418031c72684122507`  
		Last Modified: Wed, 11 Nov 2026 23:33:16 GMT  
		Size: 87.3 MB (87300932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:298927d391b5a1ccb5daad8771daa60381b304a07295b2f3c3c0020e51192aa7`  
		Last Modified: Wed, 11 Nov 2026 23:33:13 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:cc19fb4f3013d4332b78cc7611da1e36a40299968d77f6819d272b5bfca79ae8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:820eeb0af1aad757e22b5b758b13144a90ab9684cdd470ca6cc68dd08f241903`

```dockerfile
```

-	Layers:
	-	`sha256:e84fbb104ab7eafb68c698e3d4e2807270086de21325dbfc6d5a89a1018baa94`  
		Last Modified: Wed, 11 Nov 2026 23:33:13 GMT  
		Size: 5.4 MB (5352818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:defb3f2b4fd064ca2c228c243b6db8d9fa67dffc459ba8b7eebe77a392e438da`  
		Last Modified: Wed, 11 Nov 2026 23:33:13 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9`

```console
$ docker pull kong@sha256:ad6cc0c8cca5b66b3cdab3bde7bc7ca973d4d820dd2c6651a7e3042f5428a76a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9` - linux; amd64

```console
$ docker pull kong@sha256:98a3d6e6556299938c20edb918fe427f9aceb77e391296f89a33ca4897c5d426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122929467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96209e9de1471995581260514e83ed70628431be8b96d75dba8a16e6d7ccd8b8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:29:15 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 11 Nov 2026 23:29:15 GMT
ARG ASSET=ce
# Wed, 11 Nov 2026 23:29:15 GMT
ENV ASSET=ce
# Wed, 11 Nov 2026 23:29:15 GMT
ARG EE_PORTS
# Wed, 11 Nov 2026 23:29:15 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 11 Nov 2026 23:29:15 GMT
ARG KONG_VERSION=3.9.4
# Wed, 11 Nov 2026 23:29:15 GMT
ENV KONG_VERSION=3.9.4
# Wed, 11 Nov 2026 23:29:15 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Wed, 11 Nov 2026 23:29:15 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Wed, 11 Nov 2026 23:29:34 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 11 Nov 2026 23:29:34 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:29:34 GMT
USER kong
# Wed, 11 Nov 2026 23:29:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:29:34 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 11 Nov 2026 23:29:34 GMT
STOPSIGNAL SIGQUIT
# Wed, 11 Nov 2026 23:29:34 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 11 Nov 2026 23:29:34 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e653f3b828f4a12098384ef651ec1079eb2ba0e2777b861b81c98b7debb7a4`  
		Last Modified: Wed, 11 Nov 2026 23:29:53 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0fc0eca854364e766e70b1a4c618974f5fb1675538b4826e418ba5ec1a15507`  
		Last Modified: Wed, 11 Nov 2026 23:29:55 GMT  
		Size: 93.1 MB (93134955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08f5a22b98094561d1d692f670a182cccd15a883532593d53b764fd9dd57bcf5`  
		Last Modified: Wed, 11 Nov 2026 23:29:53 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9` - unknown; unknown

```console
$ docker pull kong@sha256:97b915317f06091c9093b17e339c3dae95a738596dee03fdd697c68c5d57e81e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c85b64f5d898798c66826afee9bac0ace17ee293345b2d6401ccbdb8d9f0bea`

```dockerfile
```

-	Layers:
	-	`sha256:1ed08557a43438215c63768b318bd2205fd50987b1e3231edbdc655af70e9a0b`  
		Last Modified: Wed, 11 Nov 2026 23:29:53 GMT  
		Size: 5.4 MB (5449234 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:468d2624eac1fd4ccd1ebe1a84af8b5d1d8d109138f42b4c6e550df2f5f7a924`  
		Last Modified: Wed, 11 Nov 2026 23:29:53 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:dd41dedd859a459617f595ef7c5ea7607dd7fd9252a0cc9de13b43f770360c8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119000278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa352ea3554bad80493dc2d430bb029866d6de409bfdbbc3376223db5d5da850`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:32:25 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 11 Nov 2026 23:32:25 GMT
ARG ASSET=ce
# Wed, 11 Nov 2026 23:32:25 GMT
ENV ASSET=ce
# Wed, 11 Nov 2026 23:32:25 GMT
ARG EE_PORTS
# Wed, 11 Nov 2026 23:32:25 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 11 Nov 2026 23:32:25 GMT
ARG KONG_VERSION=3.9.4
# Wed, 11 Nov 2026 23:32:25 GMT
ENV KONG_VERSION=3.9.4
# Wed, 11 Nov 2026 23:32:25 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Wed, 11 Nov 2026 23:32:25 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Wed, 11 Nov 2026 23:32:54 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 11 Nov 2026 23:32:54 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:32:54 GMT
USER kong
# Wed, 11 Nov 2026 23:32:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:32:54 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 11 Nov 2026 23:32:54 GMT
STOPSIGNAL SIGQUIT
# Wed, 11 Nov 2026 23:32:54 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 11 Nov 2026 23:32:54 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764f5f15270b12c0926795304c78479748596cd2dcd13fae0f3e161fb8221635`  
		Last Modified: Wed, 11 Nov 2026 23:33:13 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:949ebb0fa216ff21bf1c658c6bb2d52261b4b4ff8f2da592d1ea120d4faa4ede`  
		Last Modified: Wed, 11 Nov 2026 23:33:14 GMT  
		Size: 90.0 MB (90033736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6300d344ddfa6c00898a6c077f24396a7a4a95bed74333e22c41a52a81b006`  
		Last Modified: Wed, 11 Nov 2026 23:33:11 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9` - unknown; unknown

```console
$ docker pull kong@sha256:c703dad6d7674205ae66a279919a6a73d21187f4fb7d04b2cc5b1a85f59ec5f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb5225e79430fc8f7010f44d3e575a62a78a002ed10f590958218b9161772a1`

```dockerfile
```

-	Layers:
	-	`sha256:a5c08e9b0d86bce893638fc345d25cedc96f08c44834b6257b24ddc6f871eab4`  
		Last Modified: Wed, 11 Nov 2026 23:33:12 GMT  
		Size: 5.5 MB (5456401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8f7846b29df359fc613051b29cb4c9ff4f6294310a2f244b5aa20972fd9f138`  
		Last Modified: Wed, 11 Nov 2026 23:33:11 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9-ubuntu`

```console
$ docker pull kong@sha256:fd8a8bb8b7cec583e7ba7a1d4ccdb1e4c542a42eda7f5ae3431332585ab92813
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
$ docker pull kong@sha256:dd41dedd859a459617f595ef7c5ea7607dd7fd9252a0cc9de13b43f770360c8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119000278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa352ea3554bad80493dc2d430bb029866d6de409bfdbbc3376223db5d5da850`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:32:25 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 11 Nov 2026 23:32:25 GMT
ARG ASSET=ce
# Wed, 11 Nov 2026 23:32:25 GMT
ENV ASSET=ce
# Wed, 11 Nov 2026 23:32:25 GMT
ARG EE_PORTS
# Wed, 11 Nov 2026 23:32:25 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 11 Nov 2026 23:32:25 GMT
ARG KONG_VERSION=3.9.4
# Wed, 11 Nov 2026 23:32:25 GMT
ENV KONG_VERSION=3.9.4
# Wed, 11 Nov 2026 23:32:25 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Wed, 11 Nov 2026 23:32:25 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Wed, 11 Nov 2026 23:32:54 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 11 Nov 2026 23:32:54 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:32:54 GMT
USER kong
# Wed, 11 Nov 2026 23:32:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:32:54 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 11 Nov 2026 23:32:54 GMT
STOPSIGNAL SIGQUIT
# Wed, 11 Nov 2026 23:32:54 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 11 Nov 2026 23:32:54 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764f5f15270b12c0926795304c78479748596cd2dcd13fae0f3e161fb8221635`  
		Last Modified: Wed, 11 Nov 2026 23:33:13 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:949ebb0fa216ff21bf1c658c6bb2d52261b4b4ff8f2da592d1ea120d4faa4ede`  
		Last Modified: Wed, 11 Nov 2026 23:33:14 GMT  
		Size: 90.0 MB (90033736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6300d344ddfa6c00898a6c077f24396a7a4a95bed74333e22c41a52a81b006`  
		Last Modified: Wed, 11 Nov 2026 23:33:11 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:c703dad6d7674205ae66a279919a6a73d21187f4fb7d04b2cc5b1a85f59ec5f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb5225e79430fc8f7010f44d3e575a62a78a002ed10f590958218b9161772a1`

```dockerfile
```

-	Layers:
	-	`sha256:a5c08e9b0d86bce893638fc345d25cedc96f08c44834b6257b24ddc6f871eab4`  
		Last Modified: Wed, 11 Nov 2026 23:33:12 GMT  
		Size: 5.5 MB (5456401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8f7846b29df359fc613051b29cb4c9ff4f6294310a2f244b5aa20972fd9f138`  
		Last Modified: Wed, 11 Nov 2026 23:33:11 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9.4`

```console
$ docker pull kong@sha256:fd8a8bb8b7cec583e7ba7a1d4ccdb1e4c542a42eda7f5ae3431332585ab92813
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
$ docker pull kong@sha256:dd41dedd859a459617f595ef7c5ea7607dd7fd9252a0cc9de13b43f770360c8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119000278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa352ea3554bad80493dc2d430bb029866d6de409bfdbbc3376223db5d5da850`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:32:25 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 11 Nov 2026 23:32:25 GMT
ARG ASSET=ce
# Wed, 11 Nov 2026 23:32:25 GMT
ENV ASSET=ce
# Wed, 11 Nov 2026 23:32:25 GMT
ARG EE_PORTS
# Wed, 11 Nov 2026 23:32:25 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 11 Nov 2026 23:32:25 GMT
ARG KONG_VERSION=3.9.4
# Wed, 11 Nov 2026 23:32:25 GMT
ENV KONG_VERSION=3.9.4
# Wed, 11 Nov 2026 23:32:25 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Wed, 11 Nov 2026 23:32:25 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Wed, 11 Nov 2026 23:32:54 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 11 Nov 2026 23:32:54 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:32:54 GMT
USER kong
# Wed, 11 Nov 2026 23:32:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:32:54 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 11 Nov 2026 23:32:54 GMT
STOPSIGNAL SIGQUIT
# Wed, 11 Nov 2026 23:32:54 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 11 Nov 2026 23:32:54 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764f5f15270b12c0926795304c78479748596cd2dcd13fae0f3e161fb8221635`  
		Last Modified: Wed, 11 Nov 2026 23:33:13 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:949ebb0fa216ff21bf1c658c6bb2d52261b4b4ff8f2da592d1ea120d4faa4ede`  
		Last Modified: Wed, 11 Nov 2026 23:33:14 GMT  
		Size: 90.0 MB (90033736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6300d344ddfa6c00898a6c077f24396a7a4a95bed74333e22c41a52a81b006`  
		Last Modified: Wed, 11 Nov 2026 23:33:11 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.4` - unknown; unknown

```console
$ docker pull kong@sha256:c703dad6d7674205ae66a279919a6a73d21187f4fb7d04b2cc5b1a85f59ec5f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb5225e79430fc8f7010f44d3e575a62a78a002ed10f590958218b9161772a1`

```dockerfile
```

-	Layers:
	-	`sha256:a5c08e9b0d86bce893638fc345d25cedc96f08c44834b6257b24ddc6f871eab4`  
		Last Modified: Wed, 11 Nov 2026 23:33:12 GMT  
		Size: 5.5 MB (5456401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8f7846b29df359fc613051b29cb4c9ff4f6294310a2f244b5aa20972fd9f138`  
		Last Modified: Wed, 11 Nov 2026 23:33:11 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9.4-ubuntu`

```console
$ docker pull kong@sha256:ad6cc0c8cca5b66b3cdab3bde7bc7ca973d4d820dd2c6651a7e3042f5428a76a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9.4-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:98a3d6e6556299938c20edb918fe427f9aceb77e391296f89a33ca4897c5d426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122929467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96209e9de1471995581260514e83ed70628431be8b96d75dba8a16e6d7ccd8b8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:29:15 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 11 Nov 2026 23:29:15 GMT
ARG ASSET=ce
# Wed, 11 Nov 2026 23:29:15 GMT
ENV ASSET=ce
# Wed, 11 Nov 2026 23:29:15 GMT
ARG EE_PORTS
# Wed, 11 Nov 2026 23:29:15 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 11 Nov 2026 23:29:15 GMT
ARG KONG_VERSION=3.9.4
# Wed, 11 Nov 2026 23:29:15 GMT
ENV KONG_VERSION=3.9.4
# Wed, 11 Nov 2026 23:29:15 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Wed, 11 Nov 2026 23:29:15 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Wed, 11 Nov 2026 23:29:34 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 11 Nov 2026 23:29:34 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:29:34 GMT
USER kong
# Wed, 11 Nov 2026 23:29:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:29:34 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 11 Nov 2026 23:29:34 GMT
STOPSIGNAL SIGQUIT
# Wed, 11 Nov 2026 23:29:34 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 11 Nov 2026 23:29:34 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e653f3b828f4a12098384ef651ec1079eb2ba0e2777b861b81c98b7debb7a4`  
		Last Modified: Wed, 11 Nov 2026 23:29:53 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0fc0eca854364e766e70b1a4c618974f5fb1675538b4826e418ba5ec1a15507`  
		Last Modified: Wed, 11 Nov 2026 23:29:55 GMT  
		Size: 93.1 MB (93134955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08f5a22b98094561d1d692f670a182cccd15a883532593d53b764fd9dd57bcf5`  
		Last Modified: Wed, 11 Nov 2026 23:29:53 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:97b915317f06091c9093b17e339c3dae95a738596dee03fdd697c68c5d57e81e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c85b64f5d898798c66826afee9bac0ace17ee293345b2d6401ccbdb8d9f0bea`

```dockerfile
```

-	Layers:
	-	`sha256:1ed08557a43438215c63768b318bd2205fd50987b1e3231edbdc655af70e9a0b`  
		Last Modified: Wed, 11 Nov 2026 23:29:53 GMT  
		Size: 5.4 MB (5449234 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:468d2624eac1fd4ccd1ebe1a84af8b5d1d8d109138f42b4c6e550df2f5f7a924`  
		Last Modified: Wed, 11 Nov 2026 23:29:53 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9.4-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:dd41dedd859a459617f595ef7c5ea7607dd7fd9252a0cc9de13b43f770360c8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119000278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa352ea3554bad80493dc2d430bb029866d6de409bfdbbc3376223db5d5da850`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:32:25 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 11 Nov 2026 23:32:25 GMT
ARG ASSET=ce
# Wed, 11 Nov 2026 23:32:25 GMT
ENV ASSET=ce
# Wed, 11 Nov 2026 23:32:25 GMT
ARG EE_PORTS
# Wed, 11 Nov 2026 23:32:25 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 11 Nov 2026 23:32:25 GMT
ARG KONG_VERSION=3.9.4
# Wed, 11 Nov 2026 23:32:25 GMT
ENV KONG_VERSION=3.9.4
# Wed, 11 Nov 2026 23:32:25 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Wed, 11 Nov 2026 23:32:25 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Wed, 11 Nov 2026 23:32:54 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 11 Nov 2026 23:32:54 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:32:54 GMT
USER kong
# Wed, 11 Nov 2026 23:32:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:32:54 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 11 Nov 2026 23:32:54 GMT
STOPSIGNAL SIGQUIT
# Wed, 11 Nov 2026 23:32:54 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 11 Nov 2026 23:32:54 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764f5f15270b12c0926795304c78479748596cd2dcd13fae0f3e161fb8221635`  
		Last Modified: Wed, 11 Nov 2026 23:33:13 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:949ebb0fa216ff21bf1c658c6bb2d52261b4b4ff8f2da592d1ea120d4faa4ede`  
		Last Modified: Wed, 11 Nov 2026 23:33:14 GMT  
		Size: 90.0 MB (90033736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6300d344ddfa6c00898a6c077f24396a7a4a95bed74333e22c41a52a81b006`  
		Last Modified: Wed, 11 Nov 2026 23:33:11 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:c703dad6d7674205ae66a279919a6a73d21187f4fb7d04b2cc5b1a85f59ec5f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb5225e79430fc8f7010f44d3e575a62a78a002ed10f590958218b9161772a1`

```dockerfile
```

-	Layers:
	-	`sha256:a5c08e9b0d86bce893638fc345d25cedc96f08c44834b6257b24ddc6f871eab4`  
		Last Modified: Wed, 11 Nov 2026 23:33:12 GMT  
		Size: 5.5 MB (5456401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8f7846b29df359fc613051b29cb4c9ff4f6294310a2f244b5aa20972fd9f138`  
		Last Modified: Wed, 11 Nov 2026 23:33:11 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:latest`

```console
$ docker pull kong@sha256:fd8a8bb8b7cec583e7ba7a1d4ccdb1e4c542a42eda7f5ae3431332585ab92813
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
$ docker pull kong@sha256:dd41dedd859a459617f595ef7c5ea7607dd7fd9252a0cc9de13b43f770360c8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119000278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa352ea3554bad80493dc2d430bb029866d6de409bfdbbc3376223db5d5da850`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:32:25 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 11 Nov 2026 23:32:25 GMT
ARG ASSET=ce
# Wed, 11 Nov 2026 23:32:25 GMT
ENV ASSET=ce
# Wed, 11 Nov 2026 23:32:25 GMT
ARG EE_PORTS
# Wed, 11 Nov 2026 23:32:25 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 11 Nov 2026 23:32:25 GMT
ARG KONG_VERSION=3.9.4
# Wed, 11 Nov 2026 23:32:25 GMT
ENV KONG_VERSION=3.9.4
# Wed, 11 Nov 2026 23:32:25 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Wed, 11 Nov 2026 23:32:25 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Wed, 11 Nov 2026 23:32:54 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 11 Nov 2026 23:32:54 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:32:54 GMT
USER kong
# Wed, 11 Nov 2026 23:32:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:32:54 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 11 Nov 2026 23:32:54 GMT
STOPSIGNAL SIGQUIT
# Wed, 11 Nov 2026 23:32:54 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 11 Nov 2026 23:32:54 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764f5f15270b12c0926795304c78479748596cd2dcd13fae0f3e161fb8221635`  
		Last Modified: Wed, 11 Nov 2026 23:33:13 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:949ebb0fa216ff21bf1c658c6bb2d52261b4b4ff8f2da592d1ea120d4faa4ede`  
		Last Modified: Wed, 11 Nov 2026 23:33:14 GMT  
		Size: 90.0 MB (90033736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6300d344ddfa6c00898a6c077f24396a7a4a95bed74333e22c41a52a81b006`  
		Last Modified: Wed, 11 Nov 2026 23:33:11 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:latest` - unknown; unknown

```console
$ docker pull kong@sha256:c703dad6d7674205ae66a279919a6a73d21187f4fb7d04b2cc5b1a85f59ec5f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb5225e79430fc8f7010f44d3e575a62a78a002ed10f590958218b9161772a1`

```dockerfile
```

-	Layers:
	-	`sha256:a5c08e9b0d86bce893638fc345d25cedc96f08c44834b6257b24ddc6f871eab4`  
		Last Modified: Wed, 11 Nov 2026 23:33:12 GMT  
		Size: 5.5 MB (5456401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8f7846b29df359fc613051b29cb4c9ff4f6294310a2f244b5aa20972fd9f138`  
		Last Modified: Wed, 11 Nov 2026 23:33:11 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:ubuntu`

```console
$ docker pull kong@sha256:ad6cc0c8cca5b66b3cdab3bde7bc7ca973d4d820dd2c6651a7e3042f5428a76a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:98a3d6e6556299938c20edb918fe427f9aceb77e391296f89a33ca4897c5d426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122929467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96209e9de1471995581260514e83ed70628431be8b96d75dba8a16e6d7ccd8b8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:29:15 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 11 Nov 2026 23:29:15 GMT
ARG ASSET=ce
# Wed, 11 Nov 2026 23:29:15 GMT
ENV ASSET=ce
# Wed, 11 Nov 2026 23:29:15 GMT
ARG EE_PORTS
# Wed, 11 Nov 2026 23:29:15 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 11 Nov 2026 23:29:15 GMT
ARG KONG_VERSION=3.9.4
# Wed, 11 Nov 2026 23:29:15 GMT
ENV KONG_VERSION=3.9.4
# Wed, 11 Nov 2026 23:29:15 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Wed, 11 Nov 2026 23:29:15 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Wed, 11 Nov 2026 23:29:34 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 11 Nov 2026 23:29:34 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:29:34 GMT
USER kong
# Wed, 11 Nov 2026 23:29:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:29:34 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 11 Nov 2026 23:29:34 GMT
STOPSIGNAL SIGQUIT
# Wed, 11 Nov 2026 23:29:34 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 11 Nov 2026 23:29:34 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e653f3b828f4a12098384ef651ec1079eb2ba0e2777b861b81c98b7debb7a4`  
		Last Modified: Wed, 11 Nov 2026 23:29:53 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0fc0eca854364e766e70b1a4c618974f5fb1675538b4826e418ba5ec1a15507`  
		Last Modified: Wed, 11 Nov 2026 23:29:55 GMT  
		Size: 93.1 MB (93134955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08f5a22b98094561d1d692f670a182cccd15a883532593d53b764fd9dd57bcf5`  
		Last Modified: Wed, 11 Nov 2026 23:29:53 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:97b915317f06091c9093b17e339c3dae95a738596dee03fdd697c68c5d57e81e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c85b64f5d898798c66826afee9bac0ace17ee293345b2d6401ccbdb8d9f0bea`

```dockerfile
```

-	Layers:
	-	`sha256:1ed08557a43438215c63768b318bd2205fd50987b1e3231edbdc655af70e9a0b`  
		Last Modified: Wed, 11 Nov 2026 23:29:53 GMT  
		Size: 5.4 MB (5449234 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:468d2624eac1fd4ccd1ebe1a84af8b5d1d8d109138f42b4c6e550df2f5f7a924`  
		Last Modified: Wed, 11 Nov 2026 23:29:53 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:dd41dedd859a459617f595ef7c5ea7607dd7fd9252a0cc9de13b43f770360c8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119000278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa352ea3554bad80493dc2d430bb029866d6de409bfdbbc3376223db5d5da850`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:32:25 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 11 Nov 2026 23:32:25 GMT
ARG ASSET=ce
# Wed, 11 Nov 2026 23:32:25 GMT
ENV ASSET=ce
# Wed, 11 Nov 2026 23:32:25 GMT
ARG EE_PORTS
# Wed, 11 Nov 2026 23:32:25 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 11 Nov 2026 23:32:25 GMT
ARG KONG_VERSION=3.9.4
# Wed, 11 Nov 2026 23:32:25 GMT
ENV KONG_VERSION=3.9.4
# Wed, 11 Nov 2026 23:32:25 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Wed, 11 Nov 2026 23:32:25 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Wed, 11 Nov 2026 23:32:54 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 11 Nov 2026 23:32:54 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:32:54 GMT
USER kong
# Wed, 11 Nov 2026 23:32:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 23:32:54 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 11 Nov 2026 23:32:54 GMT
STOPSIGNAL SIGQUIT
# Wed, 11 Nov 2026 23:32:54 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 11 Nov 2026 23:32:54 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764f5f15270b12c0926795304c78479748596cd2dcd13fae0f3e161fb8221635`  
		Last Modified: Wed, 11 Nov 2026 23:33:13 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:949ebb0fa216ff21bf1c658c6bb2d52261b4b4ff8f2da592d1ea120d4faa4ede`  
		Last Modified: Wed, 11 Nov 2026 23:33:14 GMT  
		Size: 90.0 MB (90033736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6300d344ddfa6c00898a6c077f24396a7a4a95bed74333e22c41a52a81b006`  
		Last Modified: Wed, 11 Nov 2026 23:33:11 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:c703dad6d7674205ae66a279919a6a73d21187f4fb7d04b2cc5b1a85f59ec5f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb5225e79430fc8f7010f44d3e575a62a78a002ed10f590958218b9161772a1`

```dockerfile
```

-	Layers:
	-	`sha256:a5c08e9b0d86bce893638fc345d25cedc96f08c44834b6257b24ddc6f871eab4`  
		Last Modified: Wed, 11 Nov 2026 23:33:12 GMT  
		Size: 5.5 MB (5456401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8f7846b29df359fc613051b29cb4c9ff4f6294310a2f244b5aa20972fd9f138`  
		Last Modified: Wed, 11 Nov 2026 23:33:11 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json
