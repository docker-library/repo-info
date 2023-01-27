## `kong:ubuntu`

```console
$ docker pull kong@sha256:58bf87d7e2aab6c637b4900a9acf304f7c551701d3bf1a881161676e8645f077
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `kong:ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:13e06dacd569084357592bec10a999ce3ee64887f155d8d18f1e102286564f38
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101722147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e312458a62a7e0d4e2617360ab2d5c03ca0e9673b1b480c2f5cb6b572568fed3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 02:19:23 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 09 Dec 2022 02:19:23 GMT
ARG ASSET=ce
# Fri, 09 Dec 2022 02:19:23 GMT
ENV ASSET=ce
# Fri, 09 Dec 2022 02:19:23 GMT
ARG EE_PORTS
# Fri, 09 Dec 2022 02:19:23 GMT
COPY file:c24b3b9739a4614fa0679c1a90bac51eb61f9f84b2b02c5c24925e0c84878649 in /tmp/kong.deb 
# Mon, 12 Dec 2022 20:41:47 GMT
ARG KONG_VERSION=3.1.1
# Mon, 12 Dec 2022 20:41:47 GMT
ENV KONG_VERSION=3.1.1
# Mon, 12 Dec 2022 20:41:47 GMT
ARG KONG_AMD64_SHA=39bbefa14d348dedf7734c742da46acf7777ff0018f2cad7961799ba4663277b
# Mon, 12 Dec 2022 20:41:47 GMT
ARG KONG_ARM64_SHA=66c88430fb641ace356af55db4377a697a5ee5a63fbb243bcc8a4a90e3874f9f
# Mon, 12 Dec 2022 20:42:26 GMT
# ARGS: KONG_AMD64_SHA=39bbefa14d348dedf7734c742da46acf7777ff0018f2cad7961799ba4663277b KONG_ARM64_SHA=66c88430fb641ace356af55db4377a697a5ee5a63fbb243bcc8a4a90e3874f9f
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y curl       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && curl -fL https://download.konghq.com/gateway-${KONG_VERSION%%.*}.x-ubuntu-${UBUNTU_CODENAME}/pool/all/k/kong/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -s /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -s /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -s /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -s /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi
# Mon, 12 Dec 2022 20:42:26 GMT
COPY file:df7f26941e26fd034e43646906785ecba3877cf078fa891fd1d304925f70408e in /docker-entrypoint.sh 
# Mon, 12 Dec 2022 20:42:26 GMT
USER kong
# Mon, 12 Dec 2022 20:42:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 12 Dec 2022 20:42:27 GMT
EXPOSE 8000 8001 8443 8444
# Mon, 12 Dec 2022 20:42:27 GMT
STOPSIGNAL SIGQUIT
# Mon, 12 Dec 2022 20:42:27 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" '\n'}
# Mon, 12 Dec 2022 20:42:27 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d7c9b92669dc7ad55e9d4346f9833d39acca1c6659122b6ffc3e7e59e42abb`  
		Last Modified: Fri, 09 Dec 2022 02:23:09 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b96304eea662a7e382fafae466cee0edbff55848a689a1f39d8828d08a34c`  
		Last Modified: Mon, 12 Dec 2022 20:44:42 GMT  
		Size: 73.1 MB (73144256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:481137a43f44a0e8ba511c9a5660f1b6ddea4b8b55d0c73005fe2fafa53070c9`  
		Last Modified: Mon, 12 Dec 2022 20:44:29 GMT  
		Size: 880.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kong:ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:46fef5bdd7ab2a0a49d9834b4cecc455bf3922ce2af615a224d23db95b0d5952
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.9 MB (98942044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0bb9cf02550c80823f964fb0c28d2144e297aa4a1201e2d08e16e67f6ce83b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:50 GMT
ADD file:8cba976cb6ea226de769a768ee274e7679d34f923c93392f340680dc6696232e in / 
# Fri, 09 Dec 2022 01:46:50 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 04:44:14 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Fri, 09 Dec 2022 04:44:14 GMT
ARG ASSET=ce
# Fri, 09 Dec 2022 04:44:15 GMT
ENV ASSET=ce
# Fri, 09 Dec 2022 04:44:15 GMT
ARG EE_PORTS
# Fri, 09 Dec 2022 04:44:15 GMT
COPY file:c24b3b9739a4614fa0679c1a90bac51eb61f9f84b2b02c5c24925e0c84878649 in /tmp/kong.deb 
# Mon, 12 Dec 2022 20:46:30 GMT
ARG KONG_VERSION=3.1.1
# Mon, 12 Dec 2022 20:46:30 GMT
ENV KONG_VERSION=3.1.1
# Mon, 12 Dec 2022 20:46:30 GMT
ARG KONG_AMD64_SHA=39bbefa14d348dedf7734c742da46acf7777ff0018f2cad7961799ba4663277b
# Mon, 12 Dec 2022 20:46:30 GMT
ARG KONG_ARM64_SHA=66c88430fb641ace356af55db4377a697a5ee5a63fbb243bcc8a4a90e3874f9f
# Mon, 12 Dec 2022 20:47:01 GMT
# ARGS: KONG_AMD64_SHA=39bbefa14d348dedf7734c742da46acf7777ff0018f2cad7961799ba4663277b KONG_ARM64_SHA=66c88430fb641ace356af55db4377a697a5ee5a63fbb243bcc8a4a90e3874f9f
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y curl       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && curl -fL https://download.konghq.com/gateway-${KONG_VERSION%%.*}.x-ubuntu-${UBUNTU_CODENAME}/pool/all/k/kong/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -s /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -s /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -s /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -s /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi
# Mon, 12 Dec 2022 20:47:02 GMT
COPY file:df7f26941e26fd034e43646906785ecba3877cf078fa891fd1d304925f70408e in /docker-entrypoint.sh 
# Mon, 12 Dec 2022 20:47:02 GMT
USER kong
# Mon, 12 Dec 2022 20:47:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 12 Dec 2022 20:47:02 GMT
EXPOSE 8000 8001 8443 8444
# Mon, 12 Dec 2022 20:47:02 GMT
STOPSIGNAL SIGQUIT
# Mon, 12 Dec 2022 20:47:02 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" '\n'}
# Mon, 12 Dec 2022 20:47:02 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:f04b4bbe15805316c8fda79beedd3b77e6b1ffcd0acf81226c3089e63f6bffeb`  
		Last Modified: Thu, 08 Dec 2022 15:28:02 GMT  
		Size: 27.2 MB (27193168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359a97e76580b42bec113a53e79fada5dda3b02cba5dd58e05cb2c6efae5d23a`  
		Last Modified: Fri, 09 Dec 2022 04:48:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d200479094e2982176a68b7d042bed39590e658a6138844d6834f2c0e1725dcf`  
		Last Modified: Mon, 12 Dec 2022 20:50:41 GMT  
		Size: 71.7 MB (71747865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823fc31b38e4126743e5da632c8aa27919068a74f0f408ca60d3d816abea3d47`  
		Last Modified: Mon, 12 Dec 2022 20:50:32 GMT  
		Size: 881.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
