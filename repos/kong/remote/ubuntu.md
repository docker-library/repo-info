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
