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
$ docker pull kong@sha256:0bf9f0968cbe341a97dccbfe43529bd1e276b5b911cc75015370f1d4b4a256fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3` - linux; amd64

```console
$ docker pull kong@sha256:18d9e718c3c261ee03fa914ae0895868b3b19d9c645958cff2da8d64acd409a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120513996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54e42823aad26516c3963a4760b7b02f0371de0d09ee597be2af7984f9547251`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:29 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:29 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:29 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:29 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:29 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:29 GMT
ARG KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:29 GMT
ENV KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:29 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Fri, 20 Nov 2026 03:23:29 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Fri, 20 Nov 2026 03:23:47 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:23:47 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:47 GMT
USER kong
# Fri, 20 Nov 2026 03:23:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:47 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:23:47 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:23:47 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:23:47 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d080c3d6a65f8ebe609375c41f566fbed44bfaf1b82eb2f0daeba7f49551ec`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f105b0d8de323b552144428409a81d49b8218c7ab337f9b9439213970e61710`  
		Last Modified: Fri, 20 Nov 2026 03:24:05 GMT  
		Size: 90.7 MB (90719412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da1466128c138a0e04d0bd367e70c067b4626d4a211315e4a9f7df96e661794`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3` - unknown; unknown

```console
$ docker pull kong@sha256:08b481d79be25649cf2c027e63308103a56e8f6ee9678896c4234a2631366f32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7389f29d77f560295bd896366ddc283376011983f118bedf375f3259aa3554`

```dockerfile
```

-	Layers:
	-	`sha256:356b3cecd6964e4741b7b4c208c837641b057c47d9414b05a33ab6931d67741c`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 5.4 MB (5449234 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01ef63cdaf73dc642d1e7d213009337077f0dc398a05269af58b52d5bd0a89fc`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 16.2 KB (16216 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:cea32d4678607a46cd74cb82af48a1fa5e49eb3cfaf4eb20b600be8699b78b60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119000654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b89e3dc92229b036486682cd62734a400aad180e48ce19aefb4f5e702a1ee2ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:56 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:56 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:56 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:56 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:56 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:56 GMT
ARG KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:56 GMT
ENV KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:56 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Fri, 20 Nov 2026 03:23:56 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Fri, 20 Nov 2026 03:24:16 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:24:16 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:24:16 GMT
USER kong
# Fri, 20 Nov 2026 03:24:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:24:16 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:24:16 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:24:16 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:24:16 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf3bf48583e684e425e9cb0a1795823094d60b0564a0778fbe125b77f95ab32`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f67dce621f6d6dd50ca1a62170400f76a2e740b13602ffb63f5fce0f03b1cb62`  
		Last Modified: Fri, 20 Nov 2026 03:24:36 GMT  
		Size: 90.0 MB (90034049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a561049ef7e4c4a1306b546677ae45b02d32f16775d302761164cc71152ba917`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3` - unknown; unknown

```console
$ docker pull kong@sha256:53e8ae4945c321e9d15fa4f60d6aa82064f84793a2eee05d65f7bb17e542be21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91a127265bffb3b93fd9791b90bf1527cf1cddaa476b6c9b7c5780d4dbe0164`

```dockerfile
```

-	Layers:
	-	`sha256:2d0886d70cdd1337a84b557d32ad407badab5208a005ff2e22be683d9a3a9738`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 5.5 MB (5456401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd5524fc1cf1967c4211d4693d4aceb4f4f5be2bb6cb4fd8b8d2dcf129c26861`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4`

```console
$ docker pull kong@sha256:b4910181e95454bf63a89ae08ec70813c4abc5770d87d6d4a3731cab96a997fa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4` - linux; amd64

```console
$ docker pull kong@sha256:e6b828f116926874a7c5db1eebd41955da64a64a3edb2a599e8b2bc8d885308a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92885770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db4cfc1b85f793b69538d4c016c16063e84219381b28c96eed3328e08bfb53c0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:43 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:43 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:43 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:43 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:43 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:43 GMT
ARG KONG_VERSION=3.4.2
# Fri, 20 Nov 2026 03:23:43 GMT
ENV KONG_VERSION=3.4.2
# Fri, 20 Nov 2026 03:23:43 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Fri, 20 Nov 2026 03:23:43 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Fri, 20 Nov 2026 03:23:58 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:23:58 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:58 GMT
USER kong
# Fri, 20 Nov 2026 03:23:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:58 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:23:58 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:23:58 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:23:58 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e9d0e07632718722bcb43709e04386d9dae5eabb27ad17285306726a4362c1f`  
		Last Modified: Fri, 20 Nov 2026 03:24:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a57fc6603667cd10033ac9cff65e8dae279f62343453a6884911fc1a1b6c0bf3`  
		Last Modified: Fri, 20 Nov 2026 03:24:14 GMT  
		Size: 62.8 MB (62814670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d988a432762623050670dc1fe32f4f361077d084a1dcbc200f453197103283d`  
		Last Modified: Fri, 20 Nov 2026 03:24:12 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4` - unknown; unknown

```console
$ docker pull kong@sha256:5b837894da202c19e20bd0c7baffcfc39579a10db05785db73efa32b16b7b42b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6062041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a0f47259e0589aec6fdb4d2bfc1397553bcae8a9ba16a88eb11ce7c3c8a400`

```dockerfile
```

-	Layers:
	-	`sha256:c8281a6226a2b2cbc20a72e077eb5116b95818bc053a6582ff3e421950d6d34d`  
		Last Modified: Fri, 20 Nov 2026 03:24:12 GMT  
		Size: 6.0 MB (6046695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:351f453ba0fea1e03ebeb19391c83b14c2051017f2388d1ef56d40c2d7f651f2`  
		Last Modified: Fri, 20 Nov 2026 03:24:12 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:91a14b3aa6114d35de83b1cf2eec8bac363a732d6273c2dc6ebc9d7f853705ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.3 MB (89298338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d082643ffb837610c578fcf59fe42d4c65a6b30713def19407149163a3ee7c58`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:24:17 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:24:17 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:24:17 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:24:17 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:24:17 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:24:17 GMT
ARG KONG_VERSION=3.4.2
# Fri, 20 Nov 2026 03:24:17 GMT
ENV KONG_VERSION=3.4.2
# Fri, 20 Nov 2026 03:24:17 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Fri, 20 Nov 2026 03:24:17 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Fri, 20 Nov 2026 03:24:35 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:24:35 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:24:35 GMT
USER kong
# Fri, 20 Nov 2026 03:24:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:24:35 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:24:35 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:24:35 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:24:35 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaff95f723ada9c7d7ee49b841630ecefae9b1bb8b3528286b0c71a5143004d5`  
		Last Modified: Fri, 20 Nov 2026 03:24:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:050484491611c05f17559fc24d62f64999219ef03b70af45328d1664ca7004a7`  
		Last Modified: Fri, 20 Nov 2026 03:24:51 GMT  
		Size: 61.3 MB (61295655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d68b45f9414cd74d274816289b0fe1c6158e4361996478171ba28b30e1f1437e`  
		Last Modified: Fri, 20 Nov 2026 03:24:50 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4` - unknown; unknown

```console
$ docker pull kong@sha256:54404f5817819e3d0a6369257f356f8f2b9ba0a63c3e0ac236145a1943a27695
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6040224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:148c15bbe7538d38edc0f46fbcafe97aabf4b18ce3a5d8eb00ce1e0af3f4dec4`

```dockerfile
```

-	Layers:
	-	`sha256:28da6c3616788db5ce62f2ce632c6b26ff5a27dc8d9b11b87a237ad887f2e2df`  
		Last Modified: Fri, 20 Nov 2026 03:24:50 GMT  
		Size: 6.0 MB (6024774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63207ab7179741dcd41664c150ab9a6c8907642e2db3e80e639e92fa5901c71e`  
		Last Modified: Fri, 20 Nov 2026 03:24:49 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4-ubuntu`

```console
$ docker pull kong@sha256:b4910181e95454bf63a89ae08ec70813c4abc5770d87d6d4a3731cab96a997fa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:e6b828f116926874a7c5db1eebd41955da64a64a3edb2a599e8b2bc8d885308a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92885770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db4cfc1b85f793b69538d4c016c16063e84219381b28c96eed3328e08bfb53c0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:43 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:43 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:43 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:43 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:43 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:43 GMT
ARG KONG_VERSION=3.4.2
# Fri, 20 Nov 2026 03:23:43 GMT
ENV KONG_VERSION=3.4.2
# Fri, 20 Nov 2026 03:23:43 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Fri, 20 Nov 2026 03:23:43 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Fri, 20 Nov 2026 03:23:58 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:23:58 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:58 GMT
USER kong
# Fri, 20 Nov 2026 03:23:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:58 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:23:58 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:23:58 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:23:58 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e9d0e07632718722bcb43709e04386d9dae5eabb27ad17285306726a4362c1f`  
		Last Modified: Fri, 20 Nov 2026 03:24:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a57fc6603667cd10033ac9cff65e8dae279f62343453a6884911fc1a1b6c0bf3`  
		Last Modified: Fri, 20 Nov 2026 03:24:14 GMT  
		Size: 62.8 MB (62814670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d988a432762623050670dc1fe32f4f361077d084a1dcbc200f453197103283d`  
		Last Modified: Fri, 20 Nov 2026 03:24:12 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:5b837894da202c19e20bd0c7baffcfc39579a10db05785db73efa32b16b7b42b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6062041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a0f47259e0589aec6fdb4d2bfc1397553bcae8a9ba16a88eb11ce7c3c8a400`

```dockerfile
```

-	Layers:
	-	`sha256:c8281a6226a2b2cbc20a72e077eb5116b95818bc053a6582ff3e421950d6d34d`  
		Last Modified: Fri, 20 Nov 2026 03:24:12 GMT  
		Size: 6.0 MB (6046695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:351f453ba0fea1e03ebeb19391c83b14c2051017f2388d1ef56d40c2d7f651f2`  
		Last Modified: Fri, 20 Nov 2026 03:24:12 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:91a14b3aa6114d35de83b1cf2eec8bac363a732d6273c2dc6ebc9d7f853705ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.3 MB (89298338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d082643ffb837610c578fcf59fe42d4c65a6b30713def19407149163a3ee7c58`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:24:17 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:24:17 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:24:17 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:24:17 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:24:17 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:24:17 GMT
ARG KONG_VERSION=3.4.2
# Fri, 20 Nov 2026 03:24:17 GMT
ENV KONG_VERSION=3.4.2
# Fri, 20 Nov 2026 03:24:17 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Fri, 20 Nov 2026 03:24:17 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Fri, 20 Nov 2026 03:24:35 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:24:35 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:24:35 GMT
USER kong
# Fri, 20 Nov 2026 03:24:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:24:35 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:24:35 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:24:35 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:24:35 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaff95f723ada9c7d7ee49b841630ecefae9b1bb8b3528286b0c71a5143004d5`  
		Last Modified: Fri, 20 Nov 2026 03:24:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:050484491611c05f17559fc24d62f64999219ef03b70af45328d1664ca7004a7`  
		Last Modified: Fri, 20 Nov 2026 03:24:51 GMT  
		Size: 61.3 MB (61295655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d68b45f9414cd74d274816289b0fe1c6158e4361996478171ba28b30e1f1437e`  
		Last Modified: Fri, 20 Nov 2026 03:24:50 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:54404f5817819e3d0a6369257f356f8f2b9ba0a63c3e0ac236145a1943a27695
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6040224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:148c15bbe7538d38edc0f46fbcafe97aabf4b18ce3a5d8eb00ce1e0af3f4dec4`

```dockerfile
```

-	Layers:
	-	`sha256:28da6c3616788db5ce62f2ce632c6b26ff5a27dc8d9b11b87a237ad887f2e2df`  
		Last Modified: Fri, 20 Nov 2026 03:24:50 GMT  
		Size: 6.0 MB (6024774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63207ab7179741dcd41664c150ab9a6c8907642e2db3e80e639e92fa5901c71e`  
		Last Modified: Fri, 20 Nov 2026 03:24:49 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4.2`

```console
$ docker pull kong@sha256:b4910181e95454bf63a89ae08ec70813c4abc5770d87d6d4a3731cab96a997fa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4.2` - linux; amd64

```console
$ docker pull kong@sha256:e6b828f116926874a7c5db1eebd41955da64a64a3edb2a599e8b2bc8d885308a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92885770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db4cfc1b85f793b69538d4c016c16063e84219381b28c96eed3328e08bfb53c0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:43 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:43 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:43 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:43 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:43 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:43 GMT
ARG KONG_VERSION=3.4.2
# Fri, 20 Nov 2026 03:23:43 GMT
ENV KONG_VERSION=3.4.2
# Fri, 20 Nov 2026 03:23:43 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Fri, 20 Nov 2026 03:23:43 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Fri, 20 Nov 2026 03:23:58 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:23:58 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:58 GMT
USER kong
# Fri, 20 Nov 2026 03:23:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:58 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:23:58 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:23:58 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:23:58 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e9d0e07632718722bcb43709e04386d9dae5eabb27ad17285306726a4362c1f`  
		Last Modified: Fri, 20 Nov 2026 03:24:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a57fc6603667cd10033ac9cff65e8dae279f62343453a6884911fc1a1b6c0bf3`  
		Last Modified: Fri, 20 Nov 2026 03:24:14 GMT  
		Size: 62.8 MB (62814670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d988a432762623050670dc1fe32f4f361077d084a1dcbc200f453197103283d`  
		Last Modified: Fri, 20 Nov 2026 03:24:12 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2` - unknown; unknown

```console
$ docker pull kong@sha256:5b837894da202c19e20bd0c7baffcfc39579a10db05785db73efa32b16b7b42b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6062041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a0f47259e0589aec6fdb4d2bfc1397553bcae8a9ba16a88eb11ce7c3c8a400`

```dockerfile
```

-	Layers:
	-	`sha256:c8281a6226a2b2cbc20a72e077eb5116b95818bc053a6582ff3e421950d6d34d`  
		Last Modified: Fri, 20 Nov 2026 03:24:12 GMT  
		Size: 6.0 MB (6046695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:351f453ba0fea1e03ebeb19391c83b14c2051017f2388d1ef56d40c2d7f651f2`  
		Last Modified: Fri, 20 Nov 2026 03:24:12 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4.2` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:91a14b3aa6114d35de83b1cf2eec8bac363a732d6273c2dc6ebc9d7f853705ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.3 MB (89298338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d082643ffb837610c578fcf59fe42d4c65a6b30713def19407149163a3ee7c58`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:24:17 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:24:17 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:24:17 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:24:17 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:24:17 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:24:17 GMT
ARG KONG_VERSION=3.4.2
# Fri, 20 Nov 2026 03:24:17 GMT
ENV KONG_VERSION=3.4.2
# Fri, 20 Nov 2026 03:24:17 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Fri, 20 Nov 2026 03:24:17 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Fri, 20 Nov 2026 03:24:35 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:24:35 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:24:35 GMT
USER kong
# Fri, 20 Nov 2026 03:24:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:24:35 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:24:35 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:24:35 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:24:35 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaff95f723ada9c7d7ee49b841630ecefae9b1bb8b3528286b0c71a5143004d5`  
		Last Modified: Fri, 20 Nov 2026 03:24:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:050484491611c05f17559fc24d62f64999219ef03b70af45328d1664ca7004a7`  
		Last Modified: Fri, 20 Nov 2026 03:24:51 GMT  
		Size: 61.3 MB (61295655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d68b45f9414cd74d274816289b0fe1c6158e4361996478171ba28b30e1f1437e`  
		Last Modified: Fri, 20 Nov 2026 03:24:50 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2` - unknown; unknown

```console
$ docker pull kong@sha256:54404f5817819e3d0a6369257f356f8f2b9ba0a63c3e0ac236145a1943a27695
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6040224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:148c15bbe7538d38edc0f46fbcafe97aabf4b18ce3a5d8eb00ce1e0af3f4dec4`

```dockerfile
```

-	Layers:
	-	`sha256:28da6c3616788db5ce62f2ce632c6b26ff5a27dc8d9b11b87a237ad887f2e2df`  
		Last Modified: Fri, 20 Nov 2026 03:24:50 GMT  
		Size: 6.0 MB (6024774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63207ab7179741dcd41664c150ab9a6c8907642e2db3e80e639e92fa5901c71e`  
		Last Modified: Fri, 20 Nov 2026 03:24:49 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4.2-ubuntu`

```console
$ docker pull kong@sha256:b4910181e95454bf63a89ae08ec70813c4abc5770d87d6d4a3731cab96a997fa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4.2-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:e6b828f116926874a7c5db1eebd41955da64a64a3edb2a599e8b2bc8d885308a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92885770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db4cfc1b85f793b69538d4c016c16063e84219381b28c96eed3328e08bfb53c0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:43 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:43 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:43 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:43 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:43 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:43 GMT
ARG KONG_VERSION=3.4.2
# Fri, 20 Nov 2026 03:23:43 GMT
ENV KONG_VERSION=3.4.2
# Fri, 20 Nov 2026 03:23:43 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Fri, 20 Nov 2026 03:23:43 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Fri, 20 Nov 2026 03:23:58 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:23:58 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:58 GMT
USER kong
# Fri, 20 Nov 2026 03:23:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:58 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:23:58 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:23:58 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:23:58 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e9d0e07632718722bcb43709e04386d9dae5eabb27ad17285306726a4362c1f`  
		Last Modified: Fri, 20 Nov 2026 03:24:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a57fc6603667cd10033ac9cff65e8dae279f62343453a6884911fc1a1b6c0bf3`  
		Last Modified: Fri, 20 Nov 2026 03:24:14 GMT  
		Size: 62.8 MB (62814670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d988a432762623050670dc1fe32f4f361077d084a1dcbc200f453197103283d`  
		Last Modified: Fri, 20 Nov 2026 03:24:12 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:5b837894da202c19e20bd0c7baffcfc39579a10db05785db73efa32b16b7b42b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6062041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a0f47259e0589aec6fdb4d2bfc1397553bcae8a9ba16a88eb11ce7c3c8a400`

```dockerfile
```

-	Layers:
	-	`sha256:c8281a6226a2b2cbc20a72e077eb5116b95818bc053a6582ff3e421950d6d34d`  
		Last Modified: Fri, 20 Nov 2026 03:24:12 GMT  
		Size: 6.0 MB (6046695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:351f453ba0fea1e03ebeb19391c83b14c2051017f2388d1ef56d40c2d7f651f2`  
		Last Modified: Fri, 20 Nov 2026 03:24:12 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4.2-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:91a14b3aa6114d35de83b1cf2eec8bac363a732d6273c2dc6ebc9d7f853705ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.3 MB (89298338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d082643ffb837610c578fcf59fe42d4c65a6b30713def19407149163a3ee7c58`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:24:17 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:24:17 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:24:17 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:24:17 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:24:17 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:24:17 GMT
ARG KONG_VERSION=3.4.2
# Fri, 20 Nov 2026 03:24:17 GMT
ENV KONG_VERSION=3.4.2
# Fri, 20 Nov 2026 03:24:17 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Fri, 20 Nov 2026 03:24:17 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Fri, 20 Nov 2026 03:24:35 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:24:35 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:24:35 GMT
USER kong
# Fri, 20 Nov 2026 03:24:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:24:35 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:24:35 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:24:35 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:24:35 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaff95f723ada9c7d7ee49b841630ecefae9b1bb8b3528286b0c71a5143004d5`  
		Last Modified: Fri, 20 Nov 2026 03:24:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:050484491611c05f17559fc24d62f64999219ef03b70af45328d1664ca7004a7`  
		Last Modified: Fri, 20 Nov 2026 03:24:51 GMT  
		Size: 61.3 MB (61295655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d68b45f9414cd74d274816289b0fe1c6158e4361996478171ba28b30e1f1437e`  
		Last Modified: Fri, 20 Nov 2026 03:24:50 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:54404f5817819e3d0a6369257f356f8f2b9ba0a63c3e0ac236145a1943a27695
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6040224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:148c15bbe7538d38edc0f46fbcafe97aabf4b18ce3a5d8eb00ce1e0af3f4dec4`

```dockerfile
```

-	Layers:
	-	`sha256:28da6c3616788db5ce62f2ce632c6b26ff5a27dc8d9b11b87a237ad887f2e2df`  
		Last Modified: Fri, 20 Nov 2026 03:24:50 GMT  
		Size: 6.0 MB (6024774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63207ab7179741dcd41664c150ab9a6c8907642e2db3e80e639e92fa5901c71e`  
		Last Modified: Fri, 20 Nov 2026 03:24:49 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8`

```console
$ docker pull kong@sha256:6bab149c86bb01bb0e52281cae80ee80358b1a13254e897f70cdc098d6babf66
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8` - linux; amd64

```console
$ docker pull kong@sha256:fe16fd2e42e826f5e7c08803ec31f7aada79317de299c7f39d3736eed2c1db43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118051927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de247a5b9ebdb487125dd39e6b5a345da0b57d627a0ca503c1bcbf3cdc5450c1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:40 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:40 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:40 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:40 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:40 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:40 GMT
ARG KONG_VERSION=3.8.0
# Fri, 20 Nov 2026 03:23:40 GMT
ENV KONG_VERSION=3.8.0
# Fri, 20 Nov 2026 03:23:40 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Fri, 20 Nov 2026 03:23:40 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Fri, 20 Nov 2026 03:23:59 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:23:59 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:59 GMT
USER kong
# Fri, 20 Nov 2026 03:23:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:59 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:23:59 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:23:59 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:23:59 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e3673009f4fbac4937e9f93d22ea8aecc43f2001a0d8468fd2be0269a58189a`  
		Last Modified: Fri, 20 Nov 2026 03:24:14 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e84a1bccb219f2ea7e1e07270e6303fe11b2b9285da680fbd5f8c0f4e39ec536`  
		Last Modified: Fri, 20 Nov 2026 03:24:17 GMT  
		Size: 88.0 MB (87980830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c662f2cd6afd4b67c7fa52c2dd69d26f0861f6a5f9ff7b997effb8185c7a85e`  
		Last Modified: Fri, 20 Nov 2026 03:24:14 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8` - unknown; unknown

```console
$ docker pull kong@sha256:2202b882fd7aa27882962f161329d958b3ca48da5b0a671c063ad05fc6539870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68c2aa7f71aec8f94148fae87e5b58b3996eaa50d911b845f635dd1a50d3d67d`

```dockerfile
```

-	Layers:
	-	`sha256:8c69afb464378bd6b16d602898cd541a5d0ee55662fc6808d435ca2e9e70e44c`  
		Last Modified: Fri, 20 Nov 2026 03:24:15 GMT  
		Size: 5.3 MB (5346492 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94d17570f91ad96a77061c7095c4e61ea3ce3962a4554e6948f8349f64d0be8a`  
		Last Modified: Fri, 20 Nov 2026 03:24:14 GMT  
		Size: 15.3 KB (15345 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:8387236eb9a0f561949236ea73904985b5f0c4304d2b939414cde45d914bcc4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 MB (115303619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb0f19ad743f82af1817c49cfbddb68d7ce08ee5c06d1cafc41f7349064d3224`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:59 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:59 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:59 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:59 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:59 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:59 GMT
ARG KONG_VERSION=3.8.0
# Fri, 20 Nov 2026 03:23:59 GMT
ENV KONG_VERSION=3.8.0
# Fri, 20 Nov 2026 03:23:59 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Fri, 20 Nov 2026 03:23:59 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Fri, 20 Nov 2026 03:24:20 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:24:20 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:24:20 GMT
USER kong
# Fri, 20 Nov 2026 03:24:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:24:20 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:24:20 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:24:20 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:24:20 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e12cc1b1dac0662464b4c1b1cd1781260b210dae2bbabe689fd12a5de6ff3d`  
		Last Modified: Fri, 20 Nov 2026 03:24:38 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be4dfcaedd64837921a2c716b08177d7ff05bb7e6a116b9627678a2efc5bbaaf`  
		Last Modified: Fri, 20 Nov 2026 03:24:40 GMT  
		Size: 87.3 MB (87300936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46f19c3c88823d300e82b85aec621ca660319e3ed37488e83bd8fa1ba78a47c3`  
		Last Modified: Fri, 20 Nov 2026 03:24:38 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8` - unknown; unknown

```console
$ docker pull kong@sha256:505b2396f0fcccc7cb1aa188c9c8b65a29537afee0ed783741b0ee2a183e8657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59b3376c77abf927e2ae909adfcb6f89478ca14eeb4037a281f516943f17220b`

```dockerfile
```

-	Layers:
	-	`sha256:1b5450b09ae4ce077e864ae7b1fd020176cdd9cccce387477b1f1c9109e50cf4`  
		Last Modified: Fri, 20 Nov 2026 03:24:38 GMT  
		Size: 5.4 MB (5352818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c16a1b2e26cc298c66e65038bc0faa84581fda2a580c008667094be14eaade9`  
		Last Modified: Fri, 20 Nov 2026 03:24:38 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8-ubuntu`

```console
$ docker pull kong@sha256:6bab149c86bb01bb0e52281cae80ee80358b1a13254e897f70cdc098d6babf66
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:fe16fd2e42e826f5e7c08803ec31f7aada79317de299c7f39d3736eed2c1db43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118051927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de247a5b9ebdb487125dd39e6b5a345da0b57d627a0ca503c1bcbf3cdc5450c1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:40 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:40 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:40 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:40 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:40 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:40 GMT
ARG KONG_VERSION=3.8.0
# Fri, 20 Nov 2026 03:23:40 GMT
ENV KONG_VERSION=3.8.0
# Fri, 20 Nov 2026 03:23:40 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Fri, 20 Nov 2026 03:23:40 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Fri, 20 Nov 2026 03:23:59 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:23:59 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:59 GMT
USER kong
# Fri, 20 Nov 2026 03:23:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:59 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:23:59 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:23:59 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:23:59 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e3673009f4fbac4937e9f93d22ea8aecc43f2001a0d8468fd2be0269a58189a`  
		Last Modified: Fri, 20 Nov 2026 03:24:14 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e84a1bccb219f2ea7e1e07270e6303fe11b2b9285da680fbd5f8c0f4e39ec536`  
		Last Modified: Fri, 20 Nov 2026 03:24:17 GMT  
		Size: 88.0 MB (87980830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c662f2cd6afd4b67c7fa52c2dd69d26f0861f6a5f9ff7b997effb8185c7a85e`  
		Last Modified: Fri, 20 Nov 2026 03:24:14 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:2202b882fd7aa27882962f161329d958b3ca48da5b0a671c063ad05fc6539870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68c2aa7f71aec8f94148fae87e5b58b3996eaa50d911b845f635dd1a50d3d67d`

```dockerfile
```

-	Layers:
	-	`sha256:8c69afb464378bd6b16d602898cd541a5d0ee55662fc6808d435ca2e9e70e44c`  
		Last Modified: Fri, 20 Nov 2026 03:24:15 GMT  
		Size: 5.3 MB (5346492 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94d17570f91ad96a77061c7095c4e61ea3ce3962a4554e6948f8349f64d0be8a`  
		Last Modified: Fri, 20 Nov 2026 03:24:14 GMT  
		Size: 15.3 KB (15345 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:8387236eb9a0f561949236ea73904985b5f0c4304d2b939414cde45d914bcc4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 MB (115303619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb0f19ad743f82af1817c49cfbddb68d7ce08ee5c06d1cafc41f7349064d3224`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:59 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:59 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:59 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:59 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:59 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:59 GMT
ARG KONG_VERSION=3.8.0
# Fri, 20 Nov 2026 03:23:59 GMT
ENV KONG_VERSION=3.8.0
# Fri, 20 Nov 2026 03:23:59 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Fri, 20 Nov 2026 03:23:59 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Fri, 20 Nov 2026 03:24:20 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:24:20 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:24:20 GMT
USER kong
# Fri, 20 Nov 2026 03:24:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:24:20 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:24:20 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:24:20 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:24:20 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e12cc1b1dac0662464b4c1b1cd1781260b210dae2bbabe689fd12a5de6ff3d`  
		Last Modified: Fri, 20 Nov 2026 03:24:38 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be4dfcaedd64837921a2c716b08177d7ff05bb7e6a116b9627678a2efc5bbaaf`  
		Last Modified: Fri, 20 Nov 2026 03:24:40 GMT  
		Size: 87.3 MB (87300936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46f19c3c88823d300e82b85aec621ca660319e3ed37488e83bd8fa1ba78a47c3`  
		Last Modified: Fri, 20 Nov 2026 03:24:38 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:505b2396f0fcccc7cb1aa188c9c8b65a29537afee0ed783741b0ee2a183e8657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59b3376c77abf927e2ae909adfcb6f89478ca14eeb4037a281f516943f17220b`

```dockerfile
```

-	Layers:
	-	`sha256:1b5450b09ae4ce077e864ae7b1fd020176cdd9cccce387477b1f1c9109e50cf4`  
		Last Modified: Fri, 20 Nov 2026 03:24:38 GMT  
		Size: 5.4 MB (5352818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c16a1b2e26cc298c66e65038bc0faa84581fda2a580c008667094be14eaade9`  
		Last Modified: Fri, 20 Nov 2026 03:24:38 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8.0`

```console
$ docker pull kong@sha256:6bab149c86bb01bb0e52281cae80ee80358b1a13254e897f70cdc098d6babf66
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8.0` - linux; amd64

```console
$ docker pull kong@sha256:fe16fd2e42e826f5e7c08803ec31f7aada79317de299c7f39d3736eed2c1db43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118051927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de247a5b9ebdb487125dd39e6b5a345da0b57d627a0ca503c1bcbf3cdc5450c1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:40 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:40 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:40 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:40 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:40 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:40 GMT
ARG KONG_VERSION=3.8.0
# Fri, 20 Nov 2026 03:23:40 GMT
ENV KONG_VERSION=3.8.0
# Fri, 20 Nov 2026 03:23:40 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Fri, 20 Nov 2026 03:23:40 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Fri, 20 Nov 2026 03:23:59 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:23:59 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:59 GMT
USER kong
# Fri, 20 Nov 2026 03:23:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:59 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:23:59 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:23:59 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:23:59 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e3673009f4fbac4937e9f93d22ea8aecc43f2001a0d8468fd2be0269a58189a`  
		Last Modified: Fri, 20 Nov 2026 03:24:14 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e84a1bccb219f2ea7e1e07270e6303fe11b2b9285da680fbd5f8c0f4e39ec536`  
		Last Modified: Fri, 20 Nov 2026 03:24:17 GMT  
		Size: 88.0 MB (87980830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c662f2cd6afd4b67c7fa52c2dd69d26f0861f6a5f9ff7b997effb8185c7a85e`  
		Last Modified: Fri, 20 Nov 2026 03:24:14 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0` - unknown; unknown

```console
$ docker pull kong@sha256:2202b882fd7aa27882962f161329d958b3ca48da5b0a671c063ad05fc6539870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68c2aa7f71aec8f94148fae87e5b58b3996eaa50d911b845f635dd1a50d3d67d`

```dockerfile
```

-	Layers:
	-	`sha256:8c69afb464378bd6b16d602898cd541a5d0ee55662fc6808d435ca2e9e70e44c`  
		Last Modified: Fri, 20 Nov 2026 03:24:15 GMT  
		Size: 5.3 MB (5346492 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94d17570f91ad96a77061c7095c4e61ea3ce3962a4554e6948f8349f64d0be8a`  
		Last Modified: Fri, 20 Nov 2026 03:24:14 GMT  
		Size: 15.3 KB (15345 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8.0` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:8387236eb9a0f561949236ea73904985b5f0c4304d2b939414cde45d914bcc4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 MB (115303619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb0f19ad743f82af1817c49cfbddb68d7ce08ee5c06d1cafc41f7349064d3224`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:59 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:59 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:59 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:59 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:59 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:59 GMT
ARG KONG_VERSION=3.8.0
# Fri, 20 Nov 2026 03:23:59 GMT
ENV KONG_VERSION=3.8.0
# Fri, 20 Nov 2026 03:23:59 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Fri, 20 Nov 2026 03:23:59 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Fri, 20 Nov 2026 03:24:20 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:24:20 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:24:20 GMT
USER kong
# Fri, 20 Nov 2026 03:24:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:24:20 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:24:20 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:24:20 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:24:20 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e12cc1b1dac0662464b4c1b1cd1781260b210dae2bbabe689fd12a5de6ff3d`  
		Last Modified: Fri, 20 Nov 2026 03:24:38 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be4dfcaedd64837921a2c716b08177d7ff05bb7e6a116b9627678a2efc5bbaaf`  
		Last Modified: Fri, 20 Nov 2026 03:24:40 GMT  
		Size: 87.3 MB (87300936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46f19c3c88823d300e82b85aec621ca660319e3ed37488e83bd8fa1ba78a47c3`  
		Last Modified: Fri, 20 Nov 2026 03:24:38 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0` - unknown; unknown

```console
$ docker pull kong@sha256:505b2396f0fcccc7cb1aa188c9c8b65a29537afee0ed783741b0ee2a183e8657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59b3376c77abf927e2ae909adfcb6f89478ca14eeb4037a281f516943f17220b`

```dockerfile
```

-	Layers:
	-	`sha256:1b5450b09ae4ce077e864ae7b1fd020176cdd9cccce387477b1f1c9109e50cf4`  
		Last Modified: Fri, 20 Nov 2026 03:24:38 GMT  
		Size: 5.4 MB (5352818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c16a1b2e26cc298c66e65038bc0faa84581fda2a580c008667094be14eaade9`  
		Last Modified: Fri, 20 Nov 2026 03:24:38 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8.0-ubuntu`

```console
$ docker pull kong@sha256:6bab149c86bb01bb0e52281cae80ee80358b1a13254e897f70cdc098d6babf66
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8.0-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:fe16fd2e42e826f5e7c08803ec31f7aada79317de299c7f39d3736eed2c1db43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118051927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de247a5b9ebdb487125dd39e6b5a345da0b57d627a0ca503c1bcbf3cdc5450c1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:40 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:40 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:40 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:40 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:40 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:40 GMT
ARG KONG_VERSION=3.8.0
# Fri, 20 Nov 2026 03:23:40 GMT
ENV KONG_VERSION=3.8.0
# Fri, 20 Nov 2026 03:23:40 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Fri, 20 Nov 2026 03:23:40 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Fri, 20 Nov 2026 03:23:59 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:23:59 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:59 GMT
USER kong
# Fri, 20 Nov 2026 03:23:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:59 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:23:59 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:23:59 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:23:59 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e3673009f4fbac4937e9f93d22ea8aecc43f2001a0d8468fd2be0269a58189a`  
		Last Modified: Fri, 20 Nov 2026 03:24:14 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e84a1bccb219f2ea7e1e07270e6303fe11b2b9285da680fbd5f8c0f4e39ec536`  
		Last Modified: Fri, 20 Nov 2026 03:24:17 GMT  
		Size: 88.0 MB (87980830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c662f2cd6afd4b67c7fa52c2dd69d26f0861f6a5f9ff7b997effb8185c7a85e`  
		Last Modified: Fri, 20 Nov 2026 03:24:14 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:2202b882fd7aa27882962f161329d958b3ca48da5b0a671c063ad05fc6539870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68c2aa7f71aec8f94148fae87e5b58b3996eaa50d911b845f635dd1a50d3d67d`

```dockerfile
```

-	Layers:
	-	`sha256:8c69afb464378bd6b16d602898cd541a5d0ee55662fc6808d435ca2e9e70e44c`  
		Last Modified: Fri, 20 Nov 2026 03:24:15 GMT  
		Size: 5.3 MB (5346492 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94d17570f91ad96a77061c7095c4e61ea3ce3962a4554e6948f8349f64d0be8a`  
		Last Modified: Fri, 20 Nov 2026 03:24:14 GMT  
		Size: 15.3 KB (15345 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8.0-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:8387236eb9a0f561949236ea73904985b5f0c4304d2b939414cde45d914bcc4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 MB (115303619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb0f19ad743f82af1817c49cfbddb68d7ce08ee5c06d1cafc41f7349064d3224`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:59 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:59 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:59 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:59 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:59 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:59 GMT
ARG KONG_VERSION=3.8.0
# Fri, 20 Nov 2026 03:23:59 GMT
ENV KONG_VERSION=3.8.0
# Fri, 20 Nov 2026 03:23:59 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Fri, 20 Nov 2026 03:23:59 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Fri, 20 Nov 2026 03:24:20 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:24:20 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:24:20 GMT
USER kong
# Fri, 20 Nov 2026 03:24:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:24:20 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:24:20 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:24:20 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:24:20 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e12cc1b1dac0662464b4c1b1cd1781260b210dae2bbabe689fd12a5de6ff3d`  
		Last Modified: Fri, 20 Nov 2026 03:24:38 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be4dfcaedd64837921a2c716b08177d7ff05bb7e6a116b9627678a2efc5bbaaf`  
		Last Modified: Fri, 20 Nov 2026 03:24:40 GMT  
		Size: 87.3 MB (87300936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46f19c3c88823d300e82b85aec621ca660319e3ed37488e83bd8fa1ba78a47c3`  
		Last Modified: Fri, 20 Nov 2026 03:24:38 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:505b2396f0fcccc7cb1aa188c9c8b65a29537afee0ed783741b0ee2a183e8657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59b3376c77abf927e2ae909adfcb6f89478ca14eeb4037a281f516943f17220b`

```dockerfile
```

-	Layers:
	-	`sha256:1b5450b09ae4ce077e864ae7b1fd020176cdd9cccce387477b1f1c9109e50cf4`  
		Last Modified: Fri, 20 Nov 2026 03:24:38 GMT  
		Size: 5.4 MB (5352818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c16a1b2e26cc298c66e65038bc0faa84581fda2a580c008667094be14eaade9`  
		Last Modified: Fri, 20 Nov 2026 03:24:38 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9`

```console
$ docker pull kong@sha256:0bf9f0968cbe341a97dccbfe43529bd1e276b5b911cc75015370f1d4b4a256fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9` - linux; amd64

```console
$ docker pull kong@sha256:18d9e718c3c261ee03fa914ae0895868b3b19d9c645958cff2da8d64acd409a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120513996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54e42823aad26516c3963a4760b7b02f0371de0d09ee597be2af7984f9547251`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:29 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:29 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:29 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:29 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:29 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:29 GMT
ARG KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:29 GMT
ENV KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:29 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Fri, 20 Nov 2026 03:23:29 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Fri, 20 Nov 2026 03:23:47 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:23:47 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:47 GMT
USER kong
# Fri, 20 Nov 2026 03:23:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:47 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:23:47 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:23:47 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:23:47 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d080c3d6a65f8ebe609375c41f566fbed44bfaf1b82eb2f0daeba7f49551ec`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f105b0d8de323b552144428409a81d49b8218c7ab337f9b9439213970e61710`  
		Last Modified: Fri, 20 Nov 2026 03:24:05 GMT  
		Size: 90.7 MB (90719412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da1466128c138a0e04d0bd367e70c067b4626d4a211315e4a9f7df96e661794`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9` - unknown; unknown

```console
$ docker pull kong@sha256:08b481d79be25649cf2c027e63308103a56e8f6ee9678896c4234a2631366f32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7389f29d77f560295bd896366ddc283376011983f118bedf375f3259aa3554`

```dockerfile
```

-	Layers:
	-	`sha256:356b3cecd6964e4741b7b4c208c837641b057c47d9414b05a33ab6931d67741c`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 5.4 MB (5449234 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01ef63cdaf73dc642d1e7d213009337077f0dc398a05269af58b52d5bd0a89fc`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 16.2 KB (16216 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:cea32d4678607a46cd74cb82af48a1fa5e49eb3cfaf4eb20b600be8699b78b60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119000654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b89e3dc92229b036486682cd62734a400aad180e48ce19aefb4f5e702a1ee2ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:56 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:56 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:56 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:56 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:56 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:56 GMT
ARG KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:56 GMT
ENV KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:56 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Fri, 20 Nov 2026 03:23:56 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Fri, 20 Nov 2026 03:24:16 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:24:16 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:24:16 GMT
USER kong
# Fri, 20 Nov 2026 03:24:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:24:16 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:24:16 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:24:16 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:24:16 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf3bf48583e684e425e9cb0a1795823094d60b0564a0778fbe125b77f95ab32`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f67dce621f6d6dd50ca1a62170400f76a2e740b13602ffb63f5fce0f03b1cb62`  
		Last Modified: Fri, 20 Nov 2026 03:24:36 GMT  
		Size: 90.0 MB (90034049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a561049ef7e4c4a1306b546677ae45b02d32f16775d302761164cc71152ba917`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9` - unknown; unknown

```console
$ docker pull kong@sha256:53e8ae4945c321e9d15fa4f60d6aa82064f84793a2eee05d65f7bb17e542be21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91a127265bffb3b93fd9791b90bf1527cf1cddaa476b6c9b7c5780d4dbe0164`

```dockerfile
```

-	Layers:
	-	`sha256:2d0886d70cdd1337a84b557d32ad407badab5208a005ff2e22be683d9a3a9738`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 5.5 MB (5456401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd5524fc1cf1967c4211d4693d4aceb4f4f5be2bb6cb4fd8b8d2dcf129c26861`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9-ubuntu`

```console
$ docker pull kong@sha256:0bf9f0968cbe341a97dccbfe43529bd1e276b5b911cc75015370f1d4b4a256fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:18d9e718c3c261ee03fa914ae0895868b3b19d9c645958cff2da8d64acd409a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120513996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54e42823aad26516c3963a4760b7b02f0371de0d09ee597be2af7984f9547251`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:29 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:29 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:29 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:29 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:29 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:29 GMT
ARG KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:29 GMT
ENV KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:29 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Fri, 20 Nov 2026 03:23:29 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Fri, 20 Nov 2026 03:23:47 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:23:47 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:47 GMT
USER kong
# Fri, 20 Nov 2026 03:23:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:47 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:23:47 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:23:47 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:23:47 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d080c3d6a65f8ebe609375c41f566fbed44bfaf1b82eb2f0daeba7f49551ec`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f105b0d8de323b552144428409a81d49b8218c7ab337f9b9439213970e61710`  
		Last Modified: Fri, 20 Nov 2026 03:24:05 GMT  
		Size: 90.7 MB (90719412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da1466128c138a0e04d0bd367e70c067b4626d4a211315e4a9f7df96e661794`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:08b481d79be25649cf2c027e63308103a56e8f6ee9678896c4234a2631366f32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7389f29d77f560295bd896366ddc283376011983f118bedf375f3259aa3554`

```dockerfile
```

-	Layers:
	-	`sha256:356b3cecd6964e4741b7b4c208c837641b057c47d9414b05a33ab6931d67741c`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 5.4 MB (5449234 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01ef63cdaf73dc642d1e7d213009337077f0dc398a05269af58b52d5bd0a89fc`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 16.2 KB (16216 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:cea32d4678607a46cd74cb82af48a1fa5e49eb3cfaf4eb20b600be8699b78b60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119000654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b89e3dc92229b036486682cd62734a400aad180e48ce19aefb4f5e702a1ee2ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:56 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:56 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:56 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:56 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:56 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:56 GMT
ARG KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:56 GMT
ENV KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:56 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Fri, 20 Nov 2026 03:23:56 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Fri, 20 Nov 2026 03:24:16 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:24:16 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:24:16 GMT
USER kong
# Fri, 20 Nov 2026 03:24:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:24:16 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:24:16 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:24:16 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:24:16 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf3bf48583e684e425e9cb0a1795823094d60b0564a0778fbe125b77f95ab32`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f67dce621f6d6dd50ca1a62170400f76a2e740b13602ffb63f5fce0f03b1cb62`  
		Last Modified: Fri, 20 Nov 2026 03:24:36 GMT  
		Size: 90.0 MB (90034049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a561049ef7e4c4a1306b546677ae45b02d32f16775d302761164cc71152ba917`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:53e8ae4945c321e9d15fa4f60d6aa82064f84793a2eee05d65f7bb17e542be21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91a127265bffb3b93fd9791b90bf1527cf1cddaa476b6c9b7c5780d4dbe0164`

```dockerfile
```

-	Layers:
	-	`sha256:2d0886d70cdd1337a84b557d32ad407badab5208a005ff2e22be683d9a3a9738`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 5.5 MB (5456401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd5524fc1cf1967c4211d4693d4aceb4f4f5be2bb6cb4fd8b8d2dcf129c26861`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9.4`

```console
$ docker pull kong@sha256:0bf9f0968cbe341a97dccbfe43529bd1e276b5b911cc75015370f1d4b4a256fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9.4` - linux; amd64

```console
$ docker pull kong@sha256:18d9e718c3c261ee03fa914ae0895868b3b19d9c645958cff2da8d64acd409a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120513996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54e42823aad26516c3963a4760b7b02f0371de0d09ee597be2af7984f9547251`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:29 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:29 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:29 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:29 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:29 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:29 GMT
ARG KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:29 GMT
ENV KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:29 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Fri, 20 Nov 2026 03:23:29 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Fri, 20 Nov 2026 03:23:47 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:23:47 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:47 GMT
USER kong
# Fri, 20 Nov 2026 03:23:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:47 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:23:47 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:23:47 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:23:47 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d080c3d6a65f8ebe609375c41f566fbed44bfaf1b82eb2f0daeba7f49551ec`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f105b0d8de323b552144428409a81d49b8218c7ab337f9b9439213970e61710`  
		Last Modified: Fri, 20 Nov 2026 03:24:05 GMT  
		Size: 90.7 MB (90719412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da1466128c138a0e04d0bd367e70c067b4626d4a211315e4a9f7df96e661794`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.4` - unknown; unknown

```console
$ docker pull kong@sha256:08b481d79be25649cf2c027e63308103a56e8f6ee9678896c4234a2631366f32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7389f29d77f560295bd896366ddc283376011983f118bedf375f3259aa3554`

```dockerfile
```

-	Layers:
	-	`sha256:356b3cecd6964e4741b7b4c208c837641b057c47d9414b05a33ab6931d67741c`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 5.4 MB (5449234 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01ef63cdaf73dc642d1e7d213009337077f0dc398a05269af58b52d5bd0a89fc`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 16.2 KB (16216 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9.4` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:cea32d4678607a46cd74cb82af48a1fa5e49eb3cfaf4eb20b600be8699b78b60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119000654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b89e3dc92229b036486682cd62734a400aad180e48ce19aefb4f5e702a1ee2ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:56 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:56 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:56 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:56 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:56 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:56 GMT
ARG KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:56 GMT
ENV KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:56 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Fri, 20 Nov 2026 03:23:56 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Fri, 20 Nov 2026 03:24:16 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:24:16 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:24:16 GMT
USER kong
# Fri, 20 Nov 2026 03:24:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:24:16 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:24:16 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:24:16 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:24:16 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf3bf48583e684e425e9cb0a1795823094d60b0564a0778fbe125b77f95ab32`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f67dce621f6d6dd50ca1a62170400f76a2e740b13602ffb63f5fce0f03b1cb62`  
		Last Modified: Fri, 20 Nov 2026 03:24:36 GMT  
		Size: 90.0 MB (90034049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a561049ef7e4c4a1306b546677ae45b02d32f16775d302761164cc71152ba917`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.4` - unknown; unknown

```console
$ docker pull kong@sha256:53e8ae4945c321e9d15fa4f60d6aa82064f84793a2eee05d65f7bb17e542be21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91a127265bffb3b93fd9791b90bf1527cf1cddaa476b6c9b7c5780d4dbe0164`

```dockerfile
```

-	Layers:
	-	`sha256:2d0886d70cdd1337a84b557d32ad407badab5208a005ff2e22be683d9a3a9738`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 5.5 MB (5456401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd5524fc1cf1967c4211d4693d4aceb4f4f5be2bb6cb4fd8b8d2dcf129c26861`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9.4-ubuntu`

```console
$ docker pull kong@sha256:0bf9f0968cbe341a97dccbfe43529bd1e276b5b911cc75015370f1d4b4a256fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9.4-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:18d9e718c3c261ee03fa914ae0895868b3b19d9c645958cff2da8d64acd409a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120513996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54e42823aad26516c3963a4760b7b02f0371de0d09ee597be2af7984f9547251`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:29 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:29 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:29 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:29 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:29 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:29 GMT
ARG KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:29 GMT
ENV KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:29 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Fri, 20 Nov 2026 03:23:29 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Fri, 20 Nov 2026 03:23:47 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:23:47 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:47 GMT
USER kong
# Fri, 20 Nov 2026 03:23:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:47 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:23:47 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:23:47 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:23:47 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d080c3d6a65f8ebe609375c41f566fbed44bfaf1b82eb2f0daeba7f49551ec`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f105b0d8de323b552144428409a81d49b8218c7ab337f9b9439213970e61710`  
		Last Modified: Fri, 20 Nov 2026 03:24:05 GMT  
		Size: 90.7 MB (90719412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da1466128c138a0e04d0bd367e70c067b4626d4a211315e4a9f7df96e661794`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:08b481d79be25649cf2c027e63308103a56e8f6ee9678896c4234a2631366f32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7389f29d77f560295bd896366ddc283376011983f118bedf375f3259aa3554`

```dockerfile
```

-	Layers:
	-	`sha256:356b3cecd6964e4741b7b4c208c837641b057c47d9414b05a33ab6931d67741c`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 5.4 MB (5449234 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01ef63cdaf73dc642d1e7d213009337077f0dc398a05269af58b52d5bd0a89fc`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 16.2 KB (16216 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9.4-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:cea32d4678607a46cd74cb82af48a1fa5e49eb3cfaf4eb20b600be8699b78b60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119000654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b89e3dc92229b036486682cd62734a400aad180e48ce19aefb4f5e702a1ee2ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:56 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:56 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:56 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:56 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:56 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:56 GMT
ARG KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:56 GMT
ENV KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:56 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Fri, 20 Nov 2026 03:23:56 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Fri, 20 Nov 2026 03:24:16 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:24:16 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:24:16 GMT
USER kong
# Fri, 20 Nov 2026 03:24:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:24:16 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:24:16 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:24:16 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:24:16 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf3bf48583e684e425e9cb0a1795823094d60b0564a0778fbe125b77f95ab32`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f67dce621f6d6dd50ca1a62170400f76a2e740b13602ffb63f5fce0f03b1cb62`  
		Last Modified: Fri, 20 Nov 2026 03:24:36 GMT  
		Size: 90.0 MB (90034049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a561049ef7e4c4a1306b546677ae45b02d32f16775d302761164cc71152ba917`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:53e8ae4945c321e9d15fa4f60d6aa82064f84793a2eee05d65f7bb17e542be21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91a127265bffb3b93fd9791b90bf1527cf1cddaa476b6c9b7c5780d4dbe0164`

```dockerfile
```

-	Layers:
	-	`sha256:2d0886d70cdd1337a84b557d32ad407badab5208a005ff2e22be683d9a3a9738`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 5.5 MB (5456401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd5524fc1cf1967c4211d4693d4aceb4f4f5be2bb6cb4fd8b8d2dcf129c26861`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:latest`

```console
$ docker pull kong@sha256:0bf9f0968cbe341a97dccbfe43529bd1e276b5b911cc75015370f1d4b4a256fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:18d9e718c3c261ee03fa914ae0895868b3b19d9c645958cff2da8d64acd409a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120513996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54e42823aad26516c3963a4760b7b02f0371de0d09ee597be2af7984f9547251`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:29 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:29 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:29 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:29 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:29 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:29 GMT
ARG KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:29 GMT
ENV KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:29 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Fri, 20 Nov 2026 03:23:29 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Fri, 20 Nov 2026 03:23:47 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:23:47 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:47 GMT
USER kong
# Fri, 20 Nov 2026 03:23:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:47 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:23:47 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:23:47 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:23:47 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d080c3d6a65f8ebe609375c41f566fbed44bfaf1b82eb2f0daeba7f49551ec`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f105b0d8de323b552144428409a81d49b8218c7ab337f9b9439213970e61710`  
		Last Modified: Fri, 20 Nov 2026 03:24:05 GMT  
		Size: 90.7 MB (90719412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da1466128c138a0e04d0bd367e70c067b4626d4a211315e4a9f7df96e661794`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:latest` - unknown; unknown

```console
$ docker pull kong@sha256:08b481d79be25649cf2c027e63308103a56e8f6ee9678896c4234a2631366f32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7389f29d77f560295bd896366ddc283376011983f118bedf375f3259aa3554`

```dockerfile
```

-	Layers:
	-	`sha256:356b3cecd6964e4741b7b4c208c837641b057c47d9414b05a33ab6931d67741c`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 5.4 MB (5449234 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01ef63cdaf73dc642d1e7d213009337077f0dc398a05269af58b52d5bd0a89fc`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 16.2 KB (16216 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:latest` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:cea32d4678607a46cd74cb82af48a1fa5e49eb3cfaf4eb20b600be8699b78b60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119000654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b89e3dc92229b036486682cd62734a400aad180e48ce19aefb4f5e702a1ee2ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:56 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:56 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:56 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:56 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:56 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:56 GMT
ARG KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:56 GMT
ENV KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:56 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Fri, 20 Nov 2026 03:23:56 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Fri, 20 Nov 2026 03:24:16 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:24:16 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:24:16 GMT
USER kong
# Fri, 20 Nov 2026 03:24:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:24:16 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:24:16 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:24:16 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:24:16 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf3bf48583e684e425e9cb0a1795823094d60b0564a0778fbe125b77f95ab32`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f67dce621f6d6dd50ca1a62170400f76a2e740b13602ffb63f5fce0f03b1cb62`  
		Last Modified: Fri, 20 Nov 2026 03:24:36 GMT  
		Size: 90.0 MB (90034049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a561049ef7e4c4a1306b546677ae45b02d32f16775d302761164cc71152ba917`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:latest` - unknown; unknown

```console
$ docker pull kong@sha256:53e8ae4945c321e9d15fa4f60d6aa82064f84793a2eee05d65f7bb17e542be21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91a127265bffb3b93fd9791b90bf1527cf1cddaa476b6c9b7c5780d4dbe0164`

```dockerfile
```

-	Layers:
	-	`sha256:2d0886d70cdd1337a84b557d32ad407badab5208a005ff2e22be683d9a3a9738`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 5.5 MB (5456401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd5524fc1cf1967c4211d4693d4aceb4f4f5be2bb6cb4fd8b8d2dcf129c26861`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:ubuntu`

```console
$ docker pull kong@sha256:0bf9f0968cbe341a97dccbfe43529bd1e276b5b911cc75015370f1d4b4a256fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:18d9e718c3c261ee03fa914ae0895868b3b19d9c645958cff2da8d64acd409a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120513996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54e42823aad26516c3963a4760b7b02f0371de0d09ee597be2af7984f9547251`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:29 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:29 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:29 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:29 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:29 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:29 GMT
ARG KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:29 GMT
ENV KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:29 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Fri, 20 Nov 2026 03:23:29 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Fri, 20 Nov 2026 03:23:47 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:23:47 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:47 GMT
USER kong
# Fri, 20 Nov 2026 03:23:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:47 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:23:47 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:23:47 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:23:47 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d080c3d6a65f8ebe609375c41f566fbed44bfaf1b82eb2f0daeba7f49551ec`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f105b0d8de323b552144428409a81d49b8218c7ab337f9b9439213970e61710`  
		Last Modified: Fri, 20 Nov 2026 03:24:05 GMT  
		Size: 90.7 MB (90719412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da1466128c138a0e04d0bd367e70c067b4626d4a211315e4a9f7df96e661794`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:08b481d79be25649cf2c027e63308103a56e8f6ee9678896c4234a2631366f32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7389f29d77f560295bd896366ddc283376011983f118bedf375f3259aa3554`

```dockerfile
```

-	Layers:
	-	`sha256:356b3cecd6964e4741b7b4c208c837641b057c47d9414b05a33ab6931d67741c`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 5.4 MB (5449234 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01ef63cdaf73dc642d1e7d213009337077f0dc398a05269af58b52d5bd0a89fc`  
		Last Modified: Fri, 20 Nov 2026 03:24:03 GMT  
		Size: 16.2 KB (16216 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:cea32d4678607a46cd74cb82af48a1fa5e49eb3cfaf4eb20b600be8699b78b60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119000654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b89e3dc92229b036486682cd62734a400aad180e48ce19aefb4f5e702a1ee2ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:56 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 03:23:56 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 03:23:56 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 03:23:56 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 03:23:56 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 03:23:56 GMT
ARG KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:56 GMT
ENV KONG_VERSION=3.9.4
# Fri, 20 Nov 2026 03:23:56 GMT
ARG KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6
# Fri, 20 Nov 2026 03:23:56 GMT
ARG KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
# Fri, 20 Nov 2026 03:24:16 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.4 KONG_AMD64_SHA=2048e1f72633dd90836794cbe785c9c917981d07e31d3dfe8dcf69962d791aa6 KONG_ARM64_SHA=9fe628f7b6b9c8967d21549bc2cedbdcc23e7e2d32ed337dbd7e2647bc9f6a76
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 03:24:16 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:24:16 GMT
USER kong
# Fri, 20 Nov 2026 03:24:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 03:24:16 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 03:24:16 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 03:24:16 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 03:24:16 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf3bf48583e684e425e9cb0a1795823094d60b0564a0778fbe125b77f95ab32`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f67dce621f6d6dd50ca1a62170400f76a2e740b13602ffb63f5fce0f03b1cb62`  
		Last Modified: Fri, 20 Nov 2026 03:24:36 GMT  
		Size: 90.0 MB (90034049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a561049ef7e4c4a1306b546677ae45b02d32f16775d302761164cc71152ba917`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:53e8ae4945c321e9d15fa4f60d6aa82064f84793a2eee05d65f7bb17e542be21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91a127265bffb3b93fd9791b90bf1527cf1cddaa476b6c9b7c5780d4dbe0164`

```dockerfile
```

-	Layers:
	-	`sha256:2d0886d70cdd1337a84b557d32ad407badab5208a005ff2e22be683d9a3a9738`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 5.5 MB (5456401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd5524fc1cf1967c4211d4693d4aceb4f4f5be2bb6cb4fd8b8d2dcf129c26861`  
		Last Modified: Fri, 20 Nov 2026 03:24:34 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json
