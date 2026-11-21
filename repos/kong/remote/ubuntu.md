## `kong:ubuntu`

```console
$ docker pull kong@sha256:e9b87ddd0e6087792586e2cbba5ce91eadcbdd3d3673249aa4606f7207408c0d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:80ab879a8a76be649f753378bea7afeeb6176150151a003d8d112d42aaf37e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120519653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:300616d9988ba9a3c95adfeff31ce3afee2959cab39f34bc35623f99d710a357`
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
# Fri, 20 Nov 2026 19:51:22 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 19:51:22 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 19:51:22 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 19:51:22 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 19:51:22 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 19:51:22 GMT
ARG KONG_VERSION=3.9.5
# Fri, 20 Nov 2026 19:51:22 GMT
ENV KONG_VERSION=3.9.5
# Fri, 20 Nov 2026 19:51:22 GMT
ARG KONG_AMD64_SHA=f3204676a00035cbf9ae8289fc62877b97d15a277959635f3af50e100299f1d3
# Fri, 20 Nov 2026 19:51:22 GMT
ARG KONG_ARM64_SHA=7a7827b989979ef72463a3bd987c74e3d8849c99dee66481dd3e78ba0833722d
# Fri, 20 Nov 2026 19:51:41 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.5 KONG_AMD64_SHA=f3204676a00035cbf9ae8289fc62877b97d15a277959635f3af50e100299f1d3 KONG_ARM64_SHA=7a7827b989979ef72463a3bd987c74e3d8849c99dee66481dd3e78ba0833722d
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 19:51:41 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 19:51:41 GMT
USER kong
# Fri, 20 Nov 2026 19:51:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 19:51:41 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 19:51:41 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 19:51:41 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 19:51:41 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f005d620f325b022b22cb11704311e838d47f5f3004c858f4b20ffd54ae8d5d`  
		Last Modified: Fri, 20 Nov 2026 19:51:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9c6f5f2201bd3d7fcf2d06ed29aee4ce25e2639f2089c088c5f1294fceb27db`  
		Last Modified: Fri, 20 Nov 2026 19:52:01 GMT  
		Size: 90.7 MB (90725066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:985701b32e19a4ee912a64a3e9eed4f8723a85a655030777095634451cb0e41d`  
		Last Modified: Fri, 20 Nov 2026 19:51:58 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:8bb2cc880fa8c213004c42c688f8c1dc2d14f91859721c40e6731382545c49fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77dea4e58b8b366ed4a137a1b78936accedf47c01040e9a54ded22ba95ef731b`

```dockerfile
```

-	Layers:
	-	`sha256:7fd2302b170819d6024ff4e12a64253a26e0c72b004a65ac8a262255e27f3bc1`  
		Last Modified: Fri, 20 Nov 2026 19:51:58 GMT  
		Size: 5.4 MB (5449234 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6da9f44e9afcebf49abebe00d3527ef17bc9e33189fe84541291a2f3322f2c59`  
		Last Modified: Fri, 20 Nov 2026 19:51:58 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:18b842e1171615409e90373421116539194fe4ec07a9bd0442a547475d585301
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119003125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f563ee29311ae71b037a08f37d48e8c6af6c09748aa752d4790bc15f869fa5f0`
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
# Fri, 20 Nov 2026 19:51:48 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 20 Nov 2026 19:51:48 GMT
ARG ASSET=ce
# Fri, 20 Nov 2026 19:51:48 GMT
ENV ASSET=ce
# Fri, 20 Nov 2026 19:51:48 GMT
ARG EE_PORTS
# Fri, 20 Nov 2026 19:51:48 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Fri, 20 Nov 2026 19:51:48 GMT
ARG KONG_VERSION=3.9.5
# Fri, 20 Nov 2026 19:51:48 GMT
ENV KONG_VERSION=3.9.5
# Fri, 20 Nov 2026 19:51:48 GMT
ARG KONG_AMD64_SHA=f3204676a00035cbf9ae8289fc62877b97d15a277959635f3af50e100299f1d3
# Fri, 20 Nov 2026 19:51:48 GMT
ARG KONG_ARM64_SHA=7a7827b989979ef72463a3bd987c74e3d8849c99dee66481dd3e78ba0833722d
# Fri, 20 Nov 2026 19:52:22 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.5 KONG_AMD64_SHA=f3204676a00035cbf9ae8289fc62877b97d15a277959635f3af50e100299f1d3 KONG_ARM64_SHA=7a7827b989979ef72463a3bd987c74e3d8849c99dee66481dd3e78ba0833722d
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Fri, 20 Nov 2026 19:52:22 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 19:52:22 GMT
USER kong
# Fri, 20 Nov 2026 19:52:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 19:52:22 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Fri, 20 Nov 2026 19:52:22 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 19:52:22 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Fri, 20 Nov 2026 19:52:22 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1468dae7b18d45714368e8ce1424d7dd067a4fc4346b21c0fab8f9438f482e40`  
		Last Modified: Fri, 20 Nov 2026 19:52:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:337a9af0b41e4948b668f7d44d581898f74cdccf62d71a5ef8c274bd7e66fc8e`  
		Last Modified: Fri, 20 Nov 2026 19:52:42 GMT  
		Size: 90.0 MB (90036516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4c3b6aa18c161436dc507820a493f9a1dad600c1cc16ea914e2b78685ccd312`  
		Last Modified: Fri, 20 Nov 2026 19:52:40 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:478eeb406ad345ae3659db439319838792da41547f5142a002c60dfe7c500d88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2aa8a91ed6db40f1ce9fbc8b9226d4771bc4aeed7a61526414252a13c6dd80b`

```dockerfile
```

-	Layers:
	-	`sha256:517775464eac3a21a325cc9ec3138df94250877c684d12010b1107a9d23febc5`  
		Last Modified: Fri, 20 Nov 2026 19:52:40 GMT  
		Size: 5.5 MB (5456401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:697a9b73dc6cbfd5059bf979557b34d295cab040aec9c12c9f22daee13fa4f99`  
		Last Modified: Fri, 20 Nov 2026 19:52:39 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json
