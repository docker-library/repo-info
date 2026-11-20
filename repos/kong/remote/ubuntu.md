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
