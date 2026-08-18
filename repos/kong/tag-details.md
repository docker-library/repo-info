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
-	[`kong:3.9.3`](#kong393)
-	[`kong:3.9.3-ubuntu`](#kong393-ubuntu)
-	[`kong:latest`](#konglatest)
-	[`kong:ubuntu`](#kongubuntu)

## `kong:3`

```console
$ docker pull kong@sha256:4d6a4ead594e9bf468d07a54d30a57991904b220403af1a43c5a3679615d11de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3` - linux; amd64

```console
$ docker pull kong@sha256:bcb12565d41caa57d888fa1987fa738b4620af80d6c8ff2a65e8b3f8d527097a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122834955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90f0dded06e4f9435b40494a15064530b5d2a853516d72bbdd261b0286e6936`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:01 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:01 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:01 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:25 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
USER kong
# Tue, 04 Aug 2026 01:41:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:25 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:25 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:25 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:25 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d4d725cfa50f25062951d74c63bc037448819e0642a2c298b96cfc0bc2782f`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf21ab26fcb5b63c06f602d40d1f985f5cb40b863d9ece0e9a77edc1c3c09d6`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 93.1 MB (93082557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3` - unknown; unknown

```console
$ docker pull kong@sha256:36139acb28e1bac35434c7d7df88206dd25725afa2bcf2b73cd1456019db4fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d8c6c43d40847b3488c3511b447c17d44068c0c03242af4a2350033a2ffcb1`

```dockerfile
```

-	Layers:
	-	`sha256:0ca2eaf2b548542649018887a688210c72e161291891a885ce31c0c2779c967b`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 5.4 MB (5448599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1441190517b475f01b0b113c28f07f1ddb44e606cd6a1241022ce885c99e6b80`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:a4e30e80d764831c6da3370739376fe11d26067eb1acbe320833bc88c64a055f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118887673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31aa54a8c63ab1bbe2b171fd133e36f8882957dc3ba5b7c1875d8500dcbde63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:02 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:02 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:02 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:27 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
USER kong
# Tue, 04 Aug 2026 01:41:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:27 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:27 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:27 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:27 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c19507edaf13199af40d7ecc8a08ceb2ff7cd9ded5e5fbcbff00eeb919366f`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a285021121a4cec92145b4bd91572fc559b6de489a6a51cafeb2482b488b8d1`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 90.0 MB (89999566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3` - unknown; unknown

```console
$ docker pull kong@sha256:ab6a34b43795c5160783f791f483a53c84a6b45c31be0da7e648446ce0641b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2c1091eb3d69c531a80e3f74d94f56e7232fff1731581eaa40fa69f6d86d1a`

```dockerfile
```

-	Layers:
	-	`sha256:2fd9603dc9c32e73e1bb0aa9e4faa150d9c2ea10858fa7fb1faa857bf96caf4a`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 5.5 MB (5455766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f16695160a8d929a4c046431cb0043a6598355ffd32ee5b0c972d7a2e5e8340d`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4`

```console
$ docker pull kong@sha256:ba835f7880c61555fffb1d6a933d80551915c1cbe7a1092acaf8bf2ba670d3ab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4` - linux; amd64

```console
$ docker pull kong@sha256:4ed0d27dbdf0d02301142ecaece511c7ede4972f88633700c44002eafc108330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92480519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3865920c3b2acafa3ce3502a8c652cdf648504c5ac40158e17b8197ba1a30117`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:18:52 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 18 Aug 2026 01:18:52 GMT
ARG ASSET=ce
# Tue, 18 Aug 2026 01:18:52 GMT
ENV ASSET=ce
# Tue, 18 Aug 2026 01:18:52 GMT
ARG EE_PORTS
# Tue, 18 Aug 2026 01:18:52 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 18 Aug 2026 01:18:52 GMT
ARG KONG_VERSION=3.4.2
# Tue, 18 Aug 2026 01:18:52 GMT
ENV KONG_VERSION=3.4.2
# Tue, 18 Aug 2026 01:18:52 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Tue, 18 Aug 2026 01:18:52 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Tue, 18 Aug 2026 01:19:17 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 18 Aug 2026 01:19:17 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:19:17 GMT
USER kong
# Tue, 18 Aug 2026 01:19:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:19:17 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 18 Aug 2026 01:19:17 GMT
STOPSIGNAL SIGQUIT
# Tue, 18 Aug 2026 01:19:17 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 18 Aug 2026 01:19:17 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7568a27079597727417bd98cb86315ee0189c6774b71eb168a3f3730e484259c`  
		Last Modified: Tue, 18 Aug 2026 01:19:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def2e533bb689659a016048a3dcf0baa6f7107cdd448fc18a223288f5760216e`  
		Last Modified: Tue, 18 Aug 2026 01:19:34 GMT  
		Size: 62.7 MB (62742291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192657f136c55ac7b9c73d3da3ccf5df454616a0670790e1f141d6daa0875af1`  
		Last Modified: Tue, 18 Aug 2026 01:19:32 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4` - unknown; unknown

```console
$ docker pull kong@sha256:3dd0af242013eda877c87d162d11a708ad6fff843244cc2d26a0692acdf2cb9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6061993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd17a4fa345ea49c406127529ece323166d1aaf91f559c8dfaea1dcb72208a3`

```dockerfile
```

-	Layers:
	-	`sha256:8f492a0f3e89621eb2c8fc4bebc684ac462d0c789e14dc43a9056bd4ab1c5279`  
		Last Modified: Tue, 18 Aug 2026 01:19:32 GMT  
		Size: 6.0 MB (6046647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be4ea2ec149db79ba2664adfc260af5aa3018f9fce3e33312f040888f9f4f02c`  
		Last Modified: Tue, 18 Aug 2026 01:19:32 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:b4316a261b140960d322997f7f8fe2ab47e4eab423e022b87dcf6793890379cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88840190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd994def56eb254ff68c2f08fc5bf46320ecc2d76d9f38ef9c2e35a7053c37af`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:18:11 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 18 Aug 2026 01:18:11 GMT
ARG ASSET=ce
# Tue, 18 Aug 2026 01:18:11 GMT
ENV ASSET=ce
# Tue, 18 Aug 2026 01:18:11 GMT
ARG EE_PORTS
# Tue, 18 Aug 2026 01:18:11 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 18 Aug 2026 01:18:11 GMT
ARG KONG_VERSION=3.4.2
# Tue, 18 Aug 2026 01:18:11 GMT
ENV KONG_VERSION=3.4.2
# Tue, 18 Aug 2026 01:18:11 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Tue, 18 Aug 2026 01:18:11 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Tue, 18 Aug 2026 01:18:39 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 18 Aug 2026 01:18:39 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:18:39 GMT
USER kong
# Tue, 18 Aug 2026 01:18:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:18:39 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 18 Aug 2026 01:18:39 GMT
STOPSIGNAL SIGQUIT
# Tue, 18 Aug 2026 01:18:39 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 18 Aug 2026 01:18:39 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b3c89b68a7bdd2b8471b6a32002d7d2c190c52e9c7480f7acef37be0b09514`  
		Last Modified: Tue, 18 Aug 2026 01:18:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1f9cb891617843d2f27971fc66724c13e62092f3dad72f1748df468080cc133`  
		Last Modified: Tue, 18 Aug 2026 01:18:55 GMT  
		Size: 61.2 MB (61218456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6354256f90eb28d3f70c6b1e98cf8a24674a1aeae495ee1283a55947ce5b41b`  
		Last Modified: Tue, 18 Aug 2026 01:18:53 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4` - unknown; unknown

```console
$ docker pull kong@sha256:fd25042997a7b62c9e04f9ce0d91c114ffc57cb4206b901664cd95e818c6b896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6040175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:023aee2828e0e5eb13575b66ede8752eea886aa1630bfa806cb71d9aab57989e`

```dockerfile
```

-	Layers:
	-	`sha256:5b53b2707459c24764ea3464fa8ad6d018701c5545a24881fb25941de0e22b44`  
		Last Modified: Tue, 18 Aug 2026 01:18:54 GMT  
		Size: 6.0 MB (6024726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bf14e36bc6e652382d9e93a963e004605305987de49c5a069da47b4fea69d3f`  
		Last Modified: Tue, 18 Aug 2026 01:18:53 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4-ubuntu`

```console
$ docker pull kong@sha256:ba835f7880c61555fffb1d6a933d80551915c1cbe7a1092acaf8bf2ba670d3ab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:4ed0d27dbdf0d02301142ecaece511c7ede4972f88633700c44002eafc108330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92480519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3865920c3b2acafa3ce3502a8c652cdf648504c5ac40158e17b8197ba1a30117`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:18:52 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 18 Aug 2026 01:18:52 GMT
ARG ASSET=ce
# Tue, 18 Aug 2026 01:18:52 GMT
ENV ASSET=ce
# Tue, 18 Aug 2026 01:18:52 GMT
ARG EE_PORTS
# Tue, 18 Aug 2026 01:18:52 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 18 Aug 2026 01:18:52 GMT
ARG KONG_VERSION=3.4.2
# Tue, 18 Aug 2026 01:18:52 GMT
ENV KONG_VERSION=3.4.2
# Tue, 18 Aug 2026 01:18:52 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Tue, 18 Aug 2026 01:18:52 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Tue, 18 Aug 2026 01:19:17 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 18 Aug 2026 01:19:17 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:19:17 GMT
USER kong
# Tue, 18 Aug 2026 01:19:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:19:17 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 18 Aug 2026 01:19:17 GMT
STOPSIGNAL SIGQUIT
# Tue, 18 Aug 2026 01:19:17 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 18 Aug 2026 01:19:17 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7568a27079597727417bd98cb86315ee0189c6774b71eb168a3f3730e484259c`  
		Last Modified: Tue, 18 Aug 2026 01:19:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def2e533bb689659a016048a3dcf0baa6f7107cdd448fc18a223288f5760216e`  
		Last Modified: Tue, 18 Aug 2026 01:19:34 GMT  
		Size: 62.7 MB (62742291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192657f136c55ac7b9c73d3da3ccf5df454616a0670790e1f141d6daa0875af1`  
		Last Modified: Tue, 18 Aug 2026 01:19:32 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:3dd0af242013eda877c87d162d11a708ad6fff843244cc2d26a0692acdf2cb9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6061993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd17a4fa345ea49c406127529ece323166d1aaf91f559c8dfaea1dcb72208a3`

```dockerfile
```

-	Layers:
	-	`sha256:8f492a0f3e89621eb2c8fc4bebc684ac462d0c789e14dc43a9056bd4ab1c5279`  
		Last Modified: Tue, 18 Aug 2026 01:19:32 GMT  
		Size: 6.0 MB (6046647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be4ea2ec149db79ba2664adfc260af5aa3018f9fce3e33312f040888f9f4f02c`  
		Last Modified: Tue, 18 Aug 2026 01:19:32 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:b4316a261b140960d322997f7f8fe2ab47e4eab423e022b87dcf6793890379cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88840190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd994def56eb254ff68c2f08fc5bf46320ecc2d76d9f38ef9c2e35a7053c37af`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:18:11 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 18 Aug 2026 01:18:11 GMT
ARG ASSET=ce
# Tue, 18 Aug 2026 01:18:11 GMT
ENV ASSET=ce
# Tue, 18 Aug 2026 01:18:11 GMT
ARG EE_PORTS
# Tue, 18 Aug 2026 01:18:11 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 18 Aug 2026 01:18:11 GMT
ARG KONG_VERSION=3.4.2
# Tue, 18 Aug 2026 01:18:11 GMT
ENV KONG_VERSION=3.4.2
# Tue, 18 Aug 2026 01:18:11 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Tue, 18 Aug 2026 01:18:11 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Tue, 18 Aug 2026 01:18:39 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 18 Aug 2026 01:18:39 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:18:39 GMT
USER kong
# Tue, 18 Aug 2026 01:18:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:18:39 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 18 Aug 2026 01:18:39 GMT
STOPSIGNAL SIGQUIT
# Tue, 18 Aug 2026 01:18:39 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 18 Aug 2026 01:18:39 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b3c89b68a7bdd2b8471b6a32002d7d2c190c52e9c7480f7acef37be0b09514`  
		Last Modified: Tue, 18 Aug 2026 01:18:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1f9cb891617843d2f27971fc66724c13e62092f3dad72f1748df468080cc133`  
		Last Modified: Tue, 18 Aug 2026 01:18:55 GMT  
		Size: 61.2 MB (61218456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6354256f90eb28d3f70c6b1e98cf8a24674a1aeae495ee1283a55947ce5b41b`  
		Last Modified: Tue, 18 Aug 2026 01:18:53 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:fd25042997a7b62c9e04f9ce0d91c114ffc57cb4206b901664cd95e818c6b896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6040175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:023aee2828e0e5eb13575b66ede8752eea886aa1630bfa806cb71d9aab57989e`

```dockerfile
```

-	Layers:
	-	`sha256:5b53b2707459c24764ea3464fa8ad6d018701c5545a24881fb25941de0e22b44`  
		Last Modified: Tue, 18 Aug 2026 01:18:54 GMT  
		Size: 6.0 MB (6024726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bf14e36bc6e652382d9e93a963e004605305987de49c5a069da47b4fea69d3f`  
		Last Modified: Tue, 18 Aug 2026 01:18:53 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4.2`

```console
$ docker pull kong@sha256:ba835f7880c61555fffb1d6a933d80551915c1cbe7a1092acaf8bf2ba670d3ab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4.2` - linux; amd64

```console
$ docker pull kong@sha256:4ed0d27dbdf0d02301142ecaece511c7ede4972f88633700c44002eafc108330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92480519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3865920c3b2acafa3ce3502a8c652cdf648504c5ac40158e17b8197ba1a30117`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:18:52 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 18 Aug 2026 01:18:52 GMT
ARG ASSET=ce
# Tue, 18 Aug 2026 01:18:52 GMT
ENV ASSET=ce
# Tue, 18 Aug 2026 01:18:52 GMT
ARG EE_PORTS
# Tue, 18 Aug 2026 01:18:52 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 18 Aug 2026 01:18:52 GMT
ARG KONG_VERSION=3.4.2
# Tue, 18 Aug 2026 01:18:52 GMT
ENV KONG_VERSION=3.4.2
# Tue, 18 Aug 2026 01:18:52 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Tue, 18 Aug 2026 01:18:52 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Tue, 18 Aug 2026 01:19:17 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 18 Aug 2026 01:19:17 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:19:17 GMT
USER kong
# Tue, 18 Aug 2026 01:19:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:19:17 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 18 Aug 2026 01:19:17 GMT
STOPSIGNAL SIGQUIT
# Tue, 18 Aug 2026 01:19:17 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 18 Aug 2026 01:19:17 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7568a27079597727417bd98cb86315ee0189c6774b71eb168a3f3730e484259c`  
		Last Modified: Tue, 18 Aug 2026 01:19:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def2e533bb689659a016048a3dcf0baa6f7107cdd448fc18a223288f5760216e`  
		Last Modified: Tue, 18 Aug 2026 01:19:34 GMT  
		Size: 62.7 MB (62742291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192657f136c55ac7b9c73d3da3ccf5df454616a0670790e1f141d6daa0875af1`  
		Last Modified: Tue, 18 Aug 2026 01:19:32 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2` - unknown; unknown

```console
$ docker pull kong@sha256:3dd0af242013eda877c87d162d11a708ad6fff843244cc2d26a0692acdf2cb9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6061993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd17a4fa345ea49c406127529ece323166d1aaf91f559c8dfaea1dcb72208a3`

```dockerfile
```

-	Layers:
	-	`sha256:8f492a0f3e89621eb2c8fc4bebc684ac462d0c789e14dc43a9056bd4ab1c5279`  
		Last Modified: Tue, 18 Aug 2026 01:19:32 GMT  
		Size: 6.0 MB (6046647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be4ea2ec149db79ba2664adfc260af5aa3018f9fce3e33312f040888f9f4f02c`  
		Last Modified: Tue, 18 Aug 2026 01:19:32 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4.2` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:b4316a261b140960d322997f7f8fe2ab47e4eab423e022b87dcf6793890379cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88840190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd994def56eb254ff68c2f08fc5bf46320ecc2d76d9f38ef9c2e35a7053c37af`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:18:11 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 18 Aug 2026 01:18:11 GMT
ARG ASSET=ce
# Tue, 18 Aug 2026 01:18:11 GMT
ENV ASSET=ce
# Tue, 18 Aug 2026 01:18:11 GMT
ARG EE_PORTS
# Tue, 18 Aug 2026 01:18:11 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 18 Aug 2026 01:18:11 GMT
ARG KONG_VERSION=3.4.2
# Tue, 18 Aug 2026 01:18:11 GMT
ENV KONG_VERSION=3.4.2
# Tue, 18 Aug 2026 01:18:11 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Tue, 18 Aug 2026 01:18:11 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Tue, 18 Aug 2026 01:18:39 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 18 Aug 2026 01:18:39 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:18:39 GMT
USER kong
# Tue, 18 Aug 2026 01:18:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:18:39 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 18 Aug 2026 01:18:39 GMT
STOPSIGNAL SIGQUIT
# Tue, 18 Aug 2026 01:18:39 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 18 Aug 2026 01:18:39 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b3c89b68a7bdd2b8471b6a32002d7d2c190c52e9c7480f7acef37be0b09514`  
		Last Modified: Tue, 18 Aug 2026 01:18:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1f9cb891617843d2f27971fc66724c13e62092f3dad72f1748df468080cc133`  
		Last Modified: Tue, 18 Aug 2026 01:18:55 GMT  
		Size: 61.2 MB (61218456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6354256f90eb28d3f70c6b1e98cf8a24674a1aeae495ee1283a55947ce5b41b`  
		Last Modified: Tue, 18 Aug 2026 01:18:53 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2` - unknown; unknown

```console
$ docker pull kong@sha256:fd25042997a7b62c9e04f9ce0d91c114ffc57cb4206b901664cd95e818c6b896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6040175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:023aee2828e0e5eb13575b66ede8752eea886aa1630bfa806cb71d9aab57989e`

```dockerfile
```

-	Layers:
	-	`sha256:5b53b2707459c24764ea3464fa8ad6d018701c5545a24881fb25941de0e22b44`  
		Last Modified: Tue, 18 Aug 2026 01:18:54 GMT  
		Size: 6.0 MB (6024726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bf14e36bc6e652382d9e93a963e004605305987de49c5a069da47b4fea69d3f`  
		Last Modified: Tue, 18 Aug 2026 01:18:53 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4.2-ubuntu`

```console
$ docker pull kong@sha256:ba835f7880c61555fffb1d6a933d80551915c1cbe7a1092acaf8bf2ba670d3ab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4.2-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:4ed0d27dbdf0d02301142ecaece511c7ede4972f88633700c44002eafc108330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92480519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3865920c3b2acafa3ce3502a8c652cdf648504c5ac40158e17b8197ba1a30117`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:18:52 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 18 Aug 2026 01:18:52 GMT
ARG ASSET=ce
# Tue, 18 Aug 2026 01:18:52 GMT
ENV ASSET=ce
# Tue, 18 Aug 2026 01:18:52 GMT
ARG EE_PORTS
# Tue, 18 Aug 2026 01:18:52 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 18 Aug 2026 01:18:52 GMT
ARG KONG_VERSION=3.4.2
# Tue, 18 Aug 2026 01:18:52 GMT
ENV KONG_VERSION=3.4.2
# Tue, 18 Aug 2026 01:18:52 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Tue, 18 Aug 2026 01:18:52 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Tue, 18 Aug 2026 01:19:17 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 18 Aug 2026 01:19:17 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:19:17 GMT
USER kong
# Tue, 18 Aug 2026 01:19:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:19:17 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 18 Aug 2026 01:19:17 GMT
STOPSIGNAL SIGQUIT
# Tue, 18 Aug 2026 01:19:17 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 18 Aug 2026 01:19:17 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7568a27079597727417bd98cb86315ee0189c6774b71eb168a3f3730e484259c`  
		Last Modified: Tue, 18 Aug 2026 01:19:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def2e533bb689659a016048a3dcf0baa6f7107cdd448fc18a223288f5760216e`  
		Last Modified: Tue, 18 Aug 2026 01:19:34 GMT  
		Size: 62.7 MB (62742291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192657f136c55ac7b9c73d3da3ccf5df454616a0670790e1f141d6daa0875af1`  
		Last Modified: Tue, 18 Aug 2026 01:19:32 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:3dd0af242013eda877c87d162d11a708ad6fff843244cc2d26a0692acdf2cb9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6061993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd17a4fa345ea49c406127529ece323166d1aaf91f559c8dfaea1dcb72208a3`

```dockerfile
```

-	Layers:
	-	`sha256:8f492a0f3e89621eb2c8fc4bebc684ac462d0c789e14dc43a9056bd4ab1c5279`  
		Last Modified: Tue, 18 Aug 2026 01:19:32 GMT  
		Size: 6.0 MB (6046647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be4ea2ec149db79ba2664adfc260af5aa3018f9fce3e33312f040888f9f4f02c`  
		Last Modified: Tue, 18 Aug 2026 01:19:32 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4.2-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:b4316a261b140960d322997f7f8fe2ab47e4eab423e022b87dcf6793890379cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88840190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd994def56eb254ff68c2f08fc5bf46320ecc2d76d9f38ef9c2e35a7053c37af`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:18:11 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 18 Aug 2026 01:18:11 GMT
ARG ASSET=ce
# Tue, 18 Aug 2026 01:18:11 GMT
ENV ASSET=ce
# Tue, 18 Aug 2026 01:18:11 GMT
ARG EE_PORTS
# Tue, 18 Aug 2026 01:18:11 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 18 Aug 2026 01:18:11 GMT
ARG KONG_VERSION=3.4.2
# Tue, 18 Aug 2026 01:18:11 GMT
ENV KONG_VERSION=3.4.2
# Tue, 18 Aug 2026 01:18:11 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Tue, 18 Aug 2026 01:18:11 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Tue, 18 Aug 2026 01:18:39 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 18 Aug 2026 01:18:39 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:18:39 GMT
USER kong
# Tue, 18 Aug 2026 01:18:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:18:39 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 18 Aug 2026 01:18:39 GMT
STOPSIGNAL SIGQUIT
# Tue, 18 Aug 2026 01:18:39 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 18 Aug 2026 01:18:39 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b3c89b68a7bdd2b8471b6a32002d7d2c190c52e9c7480f7acef37be0b09514`  
		Last Modified: Tue, 18 Aug 2026 01:18:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1f9cb891617843d2f27971fc66724c13e62092f3dad72f1748df468080cc133`  
		Last Modified: Tue, 18 Aug 2026 01:18:55 GMT  
		Size: 61.2 MB (61218456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6354256f90eb28d3f70c6b1e98cf8a24674a1aeae495ee1283a55947ce5b41b`  
		Last Modified: Tue, 18 Aug 2026 01:18:53 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:fd25042997a7b62c9e04f9ce0d91c114ffc57cb4206b901664cd95e818c6b896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6040175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:023aee2828e0e5eb13575b66ede8752eea886aa1630bfa806cb71d9aab57989e`

```dockerfile
```

-	Layers:
	-	`sha256:5b53b2707459c24764ea3464fa8ad6d018701c5545a24881fb25941de0e22b44`  
		Last Modified: Tue, 18 Aug 2026 01:18:54 GMT  
		Size: 6.0 MB (6024726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bf14e36bc6e652382d9e93a963e004605305987de49c5a069da47b4fea69d3f`  
		Last Modified: Tue, 18 Aug 2026 01:18:53 GMT  
		Size: 15.4 KB (15449 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8`

```console
$ docker pull kong@sha256:712e407b20eac6a79e4d85f705667c2889f123cdc5e402bb89794d540aafd546
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8` - linux; amd64

```console
$ docker pull kong@sha256:a8cc7d2e2d374b9b252f6446da92a4f41141899423817482ed64f17bcbca3ca8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117697004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff263995bf52bc931917e1dc936b0623a2d2696353e22a97391d8cb4039df77c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:18:49 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 18 Aug 2026 01:18:49 GMT
ARG ASSET=ce
# Tue, 18 Aug 2026 01:18:49 GMT
ENV ASSET=ce
# Tue, 18 Aug 2026 01:18:49 GMT
ARG EE_PORTS
# Tue, 18 Aug 2026 01:18:49 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 18 Aug 2026 01:18:49 GMT
ARG KONG_VERSION=3.8.0
# Tue, 18 Aug 2026 01:18:49 GMT
ENV KONG_VERSION=3.8.0
# Tue, 18 Aug 2026 01:18:49 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Tue, 18 Aug 2026 01:18:49 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Tue, 18 Aug 2026 01:19:15 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 18 Aug 2026 01:19:15 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:19:15 GMT
USER kong
# Tue, 18 Aug 2026 01:19:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:19:15 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 18 Aug 2026 01:19:15 GMT
STOPSIGNAL SIGQUIT
# Tue, 18 Aug 2026 01:19:15 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 18 Aug 2026 01:19:15 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1214a9da3fdadfa6463c316a65060107f41d247a54616e3212fae3ebbbb99d`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c8dd5016044409cf0453ba3a155a68c9b867c6b56237f4eb974e76601c9eb0`  
		Last Modified: Tue, 18 Aug 2026 01:19:32 GMT  
		Size: 88.0 MB (87958780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04546a43ac4371a0ef39dddc660ed44ffa4b7105c36340e84d1ebb3427006f9a`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8` - unknown; unknown

```console
$ docker pull kong@sha256:23dc8a9ed97cf4086f1659dd80f926e0a1d50ab7cb0a94c2c48c1485bb584143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e936821a95d5f8dd36a1704cdd9d1a1850b55425658fef0d3a5a5daa40ef2fb`

```dockerfile
```

-	Layers:
	-	`sha256:78cd5b84d2162bb85241365d80e7609ba6ef06c11d298411e6c3e1d49642ff2c`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 5.3 MB (5346444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d88065058c3f84a34ec83d0754ea7486c77fe94d2e2484b2d0271174edb3ae2d`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:ed379cf1ef3c6721a0cd1f67cce381b4168c09d3dad6529e75ca9256d047fc61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114901732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399275715e284d9b4d9ec9fe00218c87f1cf34b164389e256fd357d35f3c4219`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:17:58 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 18 Aug 2026 01:17:58 GMT
ARG ASSET=ce
# Tue, 18 Aug 2026 01:17:58 GMT
ENV ASSET=ce
# Tue, 18 Aug 2026 01:17:58 GMT
ARG EE_PORTS
# Tue, 18 Aug 2026 01:17:58 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 18 Aug 2026 01:17:58 GMT
ARG KONG_VERSION=3.8.0
# Tue, 18 Aug 2026 01:17:58 GMT
ENV KONG_VERSION=3.8.0
# Tue, 18 Aug 2026 01:17:58 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Tue, 18 Aug 2026 01:17:58 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Tue, 18 Aug 2026 01:18:29 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 18 Aug 2026 01:18:29 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:18:29 GMT
USER kong
# Tue, 18 Aug 2026 01:18:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:18:29 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 18 Aug 2026 01:18:29 GMT
STOPSIGNAL SIGQUIT
# Tue, 18 Aug 2026 01:18:29 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 18 Aug 2026 01:18:29 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a2c55c3600a300979c4206b9bc669771762b17eebfd5c863b7459bfa7b7b1a4`  
		Last Modified: Tue, 18 Aug 2026 01:18:46 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbb67731cd1b364af02560d496e15d487e7d9d70f1a97ff16bb934930b65072`  
		Last Modified: Tue, 18 Aug 2026 01:18:48 GMT  
		Size: 87.3 MB (87279998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdf7dbb2be55ad85bdb7fb780adbd305dbf7789117c94aab249f6777d3b5f70e`  
		Last Modified: Tue, 18 Aug 2026 01:18:46 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8` - unknown; unknown

```console
$ docker pull kong@sha256:39a9af294e51282f57aa8642b582199817a81bdda872e74fb3ff69165b932bdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36f73759924b4c7297f394308b77c62befc48aa888d4e2f85edf95fe4e4b180a`

```dockerfile
```

-	Layers:
	-	`sha256:4c2beeabd3525f458f43f755073118245829cf714426abe5c5671642f79f2157`  
		Last Modified: Tue, 18 Aug 2026 01:18:46 GMT  
		Size: 5.4 MB (5352770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dd02a48f550650631b714cbdc59905b2a13d8e66040bef5fad9f1752cd078b7`  
		Last Modified: Tue, 18 Aug 2026 01:18:46 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8-ubuntu`

```console
$ docker pull kong@sha256:712e407b20eac6a79e4d85f705667c2889f123cdc5e402bb89794d540aafd546
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:a8cc7d2e2d374b9b252f6446da92a4f41141899423817482ed64f17bcbca3ca8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117697004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff263995bf52bc931917e1dc936b0623a2d2696353e22a97391d8cb4039df77c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:18:49 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 18 Aug 2026 01:18:49 GMT
ARG ASSET=ce
# Tue, 18 Aug 2026 01:18:49 GMT
ENV ASSET=ce
# Tue, 18 Aug 2026 01:18:49 GMT
ARG EE_PORTS
# Tue, 18 Aug 2026 01:18:49 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 18 Aug 2026 01:18:49 GMT
ARG KONG_VERSION=3.8.0
# Tue, 18 Aug 2026 01:18:49 GMT
ENV KONG_VERSION=3.8.0
# Tue, 18 Aug 2026 01:18:49 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Tue, 18 Aug 2026 01:18:49 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Tue, 18 Aug 2026 01:19:15 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 18 Aug 2026 01:19:15 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:19:15 GMT
USER kong
# Tue, 18 Aug 2026 01:19:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:19:15 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 18 Aug 2026 01:19:15 GMT
STOPSIGNAL SIGQUIT
# Tue, 18 Aug 2026 01:19:15 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 18 Aug 2026 01:19:15 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1214a9da3fdadfa6463c316a65060107f41d247a54616e3212fae3ebbbb99d`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c8dd5016044409cf0453ba3a155a68c9b867c6b56237f4eb974e76601c9eb0`  
		Last Modified: Tue, 18 Aug 2026 01:19:32 GMT  
		Size: 88.0 MB (87958780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04546a43ac4371a0ef39dddc660ed44ffa4b7105c36340e84d1ebb3427006f9a`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:23dc8a9ed97cf4086f1659dd80f926e0a1d50ab7cb0a94c2c48c1485bb584143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e936821a95d5f8dd36a1704cdd9d1a1850b55425658fef0d3a5a5daa40ef2fb`

```dockerfile
```

-	Layers:
	-	`sha256:78cd5b84d2162bb85241365d80e7609ba6ef06c11d298411e6c3e1d49642ff2c`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 5.3 MB (5346444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d88065058c3f84a34ec83d0754ea7486c77fe94d2e2484b2d0271174edb3ae2d`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:ed379cf1ef3c6721a0cd1f67cce381b4168c09d3dad6529e75ca9256d047fc61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114901732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399275715e284d9b4d9ec9fe00218c87f1cf34b164389e256fd357d35f3c4219`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:17:58 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 18 Aug 2026 01:17:58 GMT
ARG ASSET=ce
# Tue, 18 Aug 2026 01:17:58 GMT
ENV ASSET=ce
# Tue, 18 Aug 2026 01:17:58 GMT
ARG EE_PORTS
# Tue, 18 Aug 2026 01:17:58 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 18 Aug 2026 01:17:58 GMT
ARG KONG_VERSION=3.8.0
# Tue, 18 Aug 2026 01:17:58 GMT
ENV KONG_VERSION=3.8.0
# Tue, 18 Aug 2026 01:17:58 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Tue, 18 Aug 2026 01:17:58 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Tue, 18 Aug 2026 01:18:29 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 18 Aug 2026 01:18:29 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:18:29 GMT
USER kong
# Tue, 18 Aug 2026 01:18:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:18:29 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 18 Aug 2026 01:18:29 GMT
STOPSIGNAL SIGQUIT
# Tue, 18 Aug 2026 01:18:29 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 18 Aug 2026 01:18:29 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a2c55c3600a300979c4206b9bc669771762b17eebfd5c863b7459bfa7b7b1a4`  
		Last Modified: Tue, 18 Aug 2026 01:18:46 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbb67731cd1b364af02560d496e15d487e7d9d70f1a97ff16bb934930b65072`  
		Last Modified: Tue, 18 Aug 2026 01:18:48 GMT  
		Size: 87.3 MB (87279998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdf7dbb2be55ad85bdb7fb780adbd305dbf7789117c94aab249f6777d3b5f70e`  
		Last Modified: Tue, 18 Aug 2026 01:18:46 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:39a9af294e51282f57aa8642b582199817a81bdda872e74fb3ff69165b932bdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36f73759924b4c7297f394308b77c62befc48aa888d4e2f85edf95fe4e4b180a`

```dockerfile
```

-	Layers:
	-	`sha256:4c2beeabd3525f458f43f755073118245829cf714426abe5c5671642f79f2157`  
		Last Modified: Tue, 18 Aug 2026 01:18:46 GMT  
		Size: 5.4 MB (5352770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dd02a48f550650631b714cbdc59905b2a13d8e66040bef5fad9f1752cd078b7`  
		Last Modified: Tue, 18 Aug 2026 01:18:46 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8.0`

```console
$ docker pull kong@sha256:712e407b20eac6a79e4d85f705667c2889f123cdc5e402bb89794d540aafd546
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8.0` - linux; amd64

```console
$ docker pull kong@sha256:a8cc7d2e2d374b9b252f6446da92a4f41141899423817482ed64f17bcbca3ca8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117697004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff263995bf52bc931917e1dc936b0623a2d2696353e22a97391d8cb4039df77c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:18:49 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 18 Aug 2026 01:18:49 GMT
ARG ASSET=ce
# Tue, 18 Aug 2026 01:18:49 GMT
ENV ASSET=ce
# Tue, 18 Aug 2026 01:18:49 GMT
ARG EE_PORTS
# Tue, 18 Aug 2026 01:18:49 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 18 Aug 2026 01:18:49 GMT
ARG KONG_VERSION=3.8.0
# Tue, 18 Aug 2026 01:18:49 GMT
ENV KONG_VERSION=3.8.0
# Tue, 18 Aug 2026 01:18:49 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Tue, 18 Aug 2026 01:18:49 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Tue, 18 Aug 2026 01:19:15 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 18 Aug 2026 01:19:15 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:19:15 GMT
USER kong
# Tue, 18 Aug 2026 01:19:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:19:15 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 18 Aug 2026 01:19:15 GMT
STOPSIGNAL SIGQUIT
# Tue, 18 Aug 2026 01:19:15 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 18 Aug 2026 01:19:15 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1214a9da3fdadfa6463c316a65060107f41d247a54616e3212fae3ebbbb99d`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c8dd5016044409cf0453ba3a155a68c9b867c6b56237f4eb974e76601c9eb0`  
		Last Modified: Tue, 18 Aug 2026 01:19:32 GMT  
		Size: 88.0 MB (87958780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04546a43ac4371a0ef39dddc660ed44ffa4b7105c36340e84d1ebb3427006f9a`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0` - unknown; unknown

```console
$ docker pull kong@sha256:23dc8a9ed97cf4086f1659dd80f926e0a1d50ab7cb0a94c2c48c1485bb584143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e936821a95d5f8dd36a1704cdd9d1a1850b55425658fef0d3a5a5daa40ef2fb`

```dockerfile
```

-	Layers:
	-	`sha256:78cd5b84d2162bb85241365d80e7609ba6ef06c11d298411e6c3e1d49642ff2c`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 5.3 MB (5346444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d88065058c3f84a34ec83d0754ea7486c77fe94d2e2484b2d0271174edb3ae2d`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8.0` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:ed379cf1ef3c6721a0cd1f67cce381b4168c09d3dad6529e75ca9256d047fc61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114901732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399275715e284d9b4d9ec9fe00218c87f1cf34b164389e256fd357d35f3c4219`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:17:58 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 18 Aug 2026 01:17:58 GMT
ARG ASSET=ce
# Tue, 18 Aug 2026 01:17:58 GMT
ENV ASSET=ce
# Tue, 18 Aug 2026 01:17:58 GMT
ARG EE_PORTS
# Tue, 18 Aug 2026 01:17:58 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 18 Aug 2026 01:17:58 GMT
ARG KONG_VERSION=3.8.0
# Tue, 18 Aug 2026 01:17:58 GMT
ENV KONG_VERSION=3.8.0
# Tue, 18 Aug 2026 01:17:58 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Tue, 18 Aug 2026 01:17:58 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Tue, 18 Aug 2026 01:18:29 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 18 Aug 2026 01:18:29 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:18:29 GMT
USER kong
# Tue, 18 Aug 2026 01:18:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:18:29 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 18 Aug 2026 01:18:29 GMT
STOPSIGNAL SIGQUIT
# Tue, 18 Aug 2026 01:18:29 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 18 Aug 2026 01:18:29 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a2c55c3600a300979c4206b9bc669771762b17eebfd5c863b7459bfa7b7b1a4`  
		Last Modified: Tue, 18 Aug 2026 01:18:46 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbb67731cd1b364af02560d496e15d487e7d9d70f1a97ff16bb934930b65072`  
		Last Modified: Tue, 18 Aug 2026 01:18:48 GMT  
		Size: 87.3 MB (87279998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdf7dbb2be55ad85bdb7fb780adbd305dbf7789117c94aab249f6777d3b5f70e`  
		Last Modified: Tue, 18 Aug 2026 01:18:46 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0` - unknown; unknown

```console
$ docker pull kong@sha256:39a9af294e51282f57aa8642b582199817a81bdda872e74fb3ff69165b932bdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36f73759924b4c7297f394308b77c62befc48aa888d4e2f85edf95fe4e4b180a`

```dockerfile
```

-	Layers:
	-	`sha256:4c2beeabd3525f458f43f755073118245829cf714426abe5c5671642f79f2157`  
		Last Modified: Tue, 18 Aug 2026 01:18:46 GMT  
		Size: 5.4 MB (5352770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dd02a48f550650631b714cbdc59905b2a13d8e66040bef5fad9f1752cd078b7`  
		Last Modified: Tue, 18 Aug 2026 01:18:46 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8.0-ubuntu`

```console
$ docker pull kong@sha256:712e407b20eac6a79e4d85f705667c2889f123cdc5e402bb89794d540aafd546
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8.0-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:a8cc7d2e2d374b9b252f6446da92a4f41141899423817482ed64f17bcbca3ca8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117697004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff263995bf52bc931917e1dc936b0623a2d2696353e22a97391d8cb4039df77c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:18:49 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 18 Aug 2026 01:18:49 GMT
ARG ASSET=ce
# Tue, 18 Aug 2026 01:18:49 GMT
ENV ASSET=ce
# Tue, 18 Aug 2026 01:18:49 GMT
ARG EE_PORTS
# Tue, 18 Aug 2026 01:18:49 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 18 Aug 2026 01:18:49 GMT
ARG KONG_VERSION=3.8.0
# Tue, 18 Aug 2026 01:18:49 GMT
ENV KONG_VERSION=3.8.0
# Tue, 18 Aug 2026 01:18:49 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Tue, 18 Aug 2026 01:18:49 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Tue, 18 Aug 2026 01:19:15 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 18 Aug 2026 01:19:15 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:19:15 GMT
USER kong
# Tue, 18 Aug 2026 01:19:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:19:15 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 18 Aug 2026 01:19:15 GMT
STOPSIGNAL SIGQUIT
# Tue, 18 Aug 2026 01:19:15 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 18 Aug 2026 01:19:15 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1214a9da3fdadfa6463c316a65060107f41d247a54616e3212fae3ebbbb99d`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c8dd5016044409cf0453ba3a155a68c9b867c6b56237f4eb974e76601c9eb0`  
		Last Modified: Tue, 18 Aug 2026 01:19:32 GMT  
		Size: 88.0 MB (87958780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04546a43ac4371a0ef39dddc660ed44ffa4b7105c36340e84d1ebb3427006f9a`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:23dc8a9ed97cf4086f1659dd80f926e0a1d50ab7cb0a94c2c48c1485bb584143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e936821a95d5f8dd36a1704cdd9d1a1850b55425658fef0d3a5a5daa40ef2fb`

```dockerfile
```

-	Layers:
	-	`sha256:78cd5b84d2162bb85241365d80e7609ba6ef06c11d298411e6c3e1d49642ff2c`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 5.3 MB (5346444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d88065058c3f84a34ec83d0754ea7486c77fe94d2e2484b2d0271174edb3ae2d`  
		Last Modified: Tue, 18 Aug 2026 01:19:30 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8.0-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:ed379cf1ef3c6721a0cd1f67cce381b4168c09d3dad6529e75ca9256d047fc61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114901732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399275715e284d9b4d9ec9fe00218c87f1cf34b164389e256fd357d35f3c4219`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:17:58 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 18 Aug 2026 01:17:58 GMT
ARG ASSET=ce
# Tue, 18 Aug 2026 01:17:58 GMT
ENV ASSET=ce
# Tue, 18 Aug 2026 01:17:58 GMT
ARG EE_PORTS
# Tue, 18 Aug 2026 01:17:58 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 18 Aug 2026 01:17:58 GMT
ARG KONG_VERSION=3.8.0
# Tue, 18 Aug 2026 01:17:58 GMT
ENV KONG_VERSION=3.8.0
# Tue, 18 Aug 2026 01:17:58 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Tue, 18 Aug 2026 01:17:58 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Tue, 18 Aug 2026 01:18:29 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 18 Aug 2026 01:18:29 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:18:29 GMT
USER kong
# Tue, 18 Aug 2026 01:18:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 01:18:29 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 18 Aug 2026 01:18:29 GMT
STOPSIGNAL SIGQUIT
# Tue, 18 Aug 2026 01:18:29 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 18 Aug 2026 01:18:29 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a2c55c3600a300979c4206b9bc669771762b17eebfd5c863b7459bfa7b7b1a4`  
		Last Modified: Tue, 18 Aug 2026 01:18:46 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dbb67731cd1b364af02560d496e15d487e7d9d70f1a97ff16bb934930b65072`  
		Last Modified: Tue, 18 Aug 2026 01:18:48 GMT  
		Size: 87.3 MB (87279998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdf7dbb2be55ad85bdb7fb780adbd305dbf7789117c94aab249f6777d3b5f70e`  
		Last Modified: Tue, 18 Aug 2026 01:18:46 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:39a9af294e51282f57aa8642b582199817a81bdda872e74fb3ff69165b932bdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36f73759924b4c7297f394308b77c62befc48aa888d4e2f85edf95fe4e4b180a`

```dockerfile
```

-	Layers:
	-	`sha256:4c2beeabd3525f458f43f755073118245829cf714426abe5c5671642f79f2157`  
		Last Modified: Tue, 18 Aug 2026 01:18:46 GMT  
		Size: 5.4 MB (5352770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dd02a48f550650631b714cbdc59905b2a13d8e66040bef5fad9f1752cd078b7`  
		Last Modified: Tue, 18 Aug 2026 01:18:46 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9`

```console
$ docker pull kong@sha256:4d6a4ead594e9bf468d07a54d30a57991904b220403af1a43c5a3679615d11de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9` - linux; amd64

```console
$ docker pull kong@sha256:bcb12565d41caa57d888fa1987fa738b4620af80d6c8ff2a65e8b3f8d527097a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122834955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90f0dded06e4f9435b40494a15064530b5d2a853516d72bbdd261b0286e6936`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:01 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:01 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:01 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:25 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
USER kong
# Tue, 04 Aug 2026 01:41:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:25 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:25 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:25 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:25 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d4d725cfa50f25062951d74c63bc037448819e0642a2c298b96cfc0bc2782f`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf21ab26fcb5b63c06f602d40d1f985f5cb40b863d9ece0e9a77edc1c3c09d6`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 93.1 MB (93082557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9` - unknown; unknown

```console
$ docker pull kong@sha256:36139acb28e1bac35434c7d7df88206dd25725afa2bcf2b73cd1456019db4fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d8c6c43d40847b3488c3511b447c17d44068c0c03242af4a2350033a2ffcb1`

```dockerfile
```

-	Layers:
	-	`sha256:0ca2eaf2b548542649018887a688210c72e161291891a885ce31c0c2779c967b`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 5.4 MB (5448599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1441190517b475f01b0b113c28f07f1ddb44e606cd6a1241022ce885c99e6b80`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:a4e30e80d764831c6da3370739376fe11d26067eb1acbe320833bc88c64a055f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118887673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31aa54a8c63ab1bbe2b171fd133e36f8882957dc3ba5b7c1875d8500dcbde63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:02 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:02 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:02 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:27 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
USER kong
# Tue, 04 Aug 2026 01:41:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:27 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:27 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:27 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:27 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c19507edaf13199af40d7ecc8a08ceb2ff7cd9ded5e5fbcbff00eeb919366f`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a285021121a4cec92145b4bd91572fc559b6de489a6a51cafeb2482b488b8d1`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 90.0 MB (89999566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9` - unknown; unknown

```console
$ docker pull kong@sha256:ab6a34b43795c5160783f791f483a53c84a6b45c31be0da7e648446ce0641b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2c1091eb3d69c531a80e3f74d94f56e7232fff1731581eaa40fa69f6d86d1a`

```dockerfile
```

-	Layers:
	-	`sha256:2fd9603dc9c32e73e1bb0aa9e4faa150d9c2ea10858fa7fb1faa857bf96caf4a`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 5.5 MB (5455766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f16695160a8d929a4c046431cb0043a6598355ffd32ee5b0c972d7a2e5e8340d`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9-ubuntu`

```console
$ docker pull kong@sha256:4d6a4ead594e9bf468d07a54d30a57991904b220403af1a43c5a3679615d11de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:bcb12565d41caa57d888fa1987fa738b4620af80d6c8ff2a65e8b3f8d527097a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122834955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90f0dded06e4f9435b40494a15064530b5d2a853516d72bbdd261b0286e6936`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:01 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:01 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:01 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:25 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
USER kong
# Tue, 04 Aug 2026 01:41:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:25 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:25 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:25 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:25 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d4d725cfa50f25062951d74c63bc037448819e0642a2c298b96cfc0bc2782f`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf21ab26fcb5b63c06f602d40d1f985f5cb40b863d9ece0e9a77edc1c3c09d6`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 93.1 MB (93082557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:36139acb28e1bac35434c7d7df88206dd25725afa2bcf2b73cd1456019db4fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d8c6c43d40847b3488c3511b447c17d44068c0c03242af4a2350033a2ffcb1`

```dockerfile
```

-	Layers:
	-	`sha256:0ca2eaf2b548542649018887a688210c72e161291891a885ce31c0c2779c967b`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 5.4 MB (5448599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1441190517b475f01b0b113c28f07f1ddb44e606cd6a1241022ce885c99e6b80`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:a4e30e80d764831c6da3370739376fe11d26067eb1acbe320833bc88c64a055f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118887673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31aa54a8c63ab1bbe2b171fd133e36f8882957dc3ba5b7c1875d8500dcbde63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:02 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:02 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:02 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:27 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
USER kong
# Tue, 04 Aug 2026 01:41:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:27 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:27 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:27 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:27 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c19507edaf13199af40d7ecc8a08ceb2ff7cd9ded5e5fbcbff00eeb919366f`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a285021121a4cec92145b4bd91572fc559b6de489a6a51cafeb2482b488b8d1`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 90.0 MB (89999566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:ab6a34b43795c5160783f791f483a53c84a6b45c31be0da7e648446ce0641b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2c1091eb3d69c531a80e3f74d94f56e7232fff1731581eaa40fa69f6d86d1a`

```dockerfile
```

-	Layers:
	-	`sha256:2fd9603dc9c32e73e1bb0aa9e4faa150d9c2ea10858fa7fb1faa857bf96caf4a`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 5.5 MB (5455766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f16695160a8d929a4c046431cb0043a6598355ffd32ee5b0c972d7a2e5e8340d`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9.3`

```console
$ docker pull kong@sha256:4d6a4ead594e9bf468d07a54d30a57991904b220403af1a43c5a3679615d11de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9.3` - linux; amd64

```console
$ docker pull kong@sha256:bcb12565d41caa57d888fa1987fa738b4620af80d6c8ff2a65e8b3f8d527097a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122834955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90f0dded06e4f9435b40494a15064530b5d2a853516d72bbdd261b0286e6936`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:01 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:01 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:01 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:25 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
USER kong
# Tue, 04 Aug 2026 01:41:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:25 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:25 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:25 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:25 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d4d725cfa50f25062951d74c63bc037448819e0642a2c298b96cfc0bc2782f`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf21ab26fcb5b63c06f602d40d1f985f5cb40b863d9ece0e9a77edc1c3c09d6`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 93.1 MB (93082557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.3` - unknown; unknown

```console
$ docker pull kong@sha256:36139acb28e1bac35434c7d7df88206dd25725afa2bcf2b73cd1456019db4fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d8c6c43d40847b3488c3511b447c17d44068c0c03242af4a2350033a2ffcb1`

```dockerfile
```

-	Layers:
	-	`sha256:0ca2eaf2b548542649018887a688210c72e161291891a885ce31c0c2779c967b`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 5.4 MB (5448599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1441190517b475f01b0b113c28f07f1ddb44e606cd6a1241022ce885c99e6b80`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9.3` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:a4e30e80d764831c6da3370739376fe11d26067eb1acbe320833bc88c64a055f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118887673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31aa54a8c63ab1bbe2b171fd133e36f8882957dc3ba5b7c1875d8500dcbde63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:02 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:02 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:02 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:27 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
USER kong
# Tue, 04 Aug 2026 01:41:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:27 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:27 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:27 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:27 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c19507edaf13199af40d7ecc8a08ceb2ff7cd9ded5e5fbcbff00eeb919366f`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a285021121a4cec92145b4bd91572fc559b6de489a6a51cafeb2482b488b8d1`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 90.0 MB (89999566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.3` - unknown; unknown

```console
$ docker pull kong@sha256:ab6a34b43795c5160783f791f483a53c84a6b45c31be0da7e648446ce0641b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2c1091eb3d69c531a80e3f74d94f56e7232fff1731581eaa40fa69f6d86d1a`

```dockerfile
```

-	Layers:
	-	`sha256:2fd9603dc9c32e73e1bb0aa9e4faa150d9c2ea10858fa7fb1faa857bf96caf4a`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 5.5 MB (5455766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f16695160a8d929a4c046431cb0043a6598355ffd32ee5b0c972d7a2e5e8340d`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9.3-ubuntu`

```console
$ docker pull kong@sha256:4d6a4ead594e9bf468d07a54d30a57991904b220403af1a43c5a3679615d11de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9.3-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:bcb12565d41caa57d888fa1987fa738b4620af80d6c8ff2a65e8b3f8d527097a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122834955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90f0dded06e4f9435b40494a15064530b5d2a853516d72bbdd261b0286e6936`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:01 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:01 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:01 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:25 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
USER kong
# Tue, 04 Aug 2026 01:41:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:25 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:25 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:25 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:25 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d4d725cfa50f25062951d74c63bc037448819e0642a2c298b96cfc0bc2782f`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf21ab26fcb5b63c06f602d40d1f985f5cb40b863d9ece0e9a77edc1c3c09d6`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 93.1 MB (93082557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.3-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:36139acb28e1bac35434c7d7df88206dd25725afa2bcf2b73cd1456019db4fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d8c6c43d40847b3488c3511b447c17d44068c0c03242af4a2350033a2ffcb1`

```dockerfile
```

-	Layers:
	-	`sha256:0ca2eaf2b548542649018887a688210c72e161291891a885ce31c0c2779c967b`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 5.4 MB (5448599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1441190517b475f01b0b113c28f07f1ddb44e606cd6a1241022ce885c99e6b80`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9.3-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:a4e30e80d764831c6da3370739376fe11d26067eb1acbe320833bc88c64a055f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118887673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31aa54a8c63ab1bbe2b171fd133e36f8882957dc3ba5b7c1875d8500dcbde63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:02 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:02 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:02 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:27 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
USER kong
# Tue, 04 Aug 2026 01:41:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:27 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:27 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:27 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:27 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c19507edaf13199af40d7ecc8a08ceb2ff7cd9ded5e5fbcbff00eeb919366f`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a285021121a4cec92145b4bd91572fc559b6de489a6a51cafeb2482b488b8d1`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 90.0 MB (89999566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.3-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:ab6a34b43795c5160783f791f483a53c84a6b45c31be0da7e648446ce0641b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2c1091eb3d69c531a80e3f74d94f56e7232fff1731581eaa40fa69f6d86d1a`

```dockerfile
```

-	Layers:
	-	`sha256:2fd9603dc9c32e73e1bb0aa9e4faa150d9c2ea10858fa7fb1faa857bf96caf4a`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 5.5 MB (5455766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f16695160a8d929a4c046431cb0043a6598355ffd32ee5b0c972d7a2e5e8340d`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:latest`

```console
$ docker pull kong@sha256:4d6a4ead594e9bf468d07a54d30a57991904b220403af1a43c5a3679615d11de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:bcb12565d41caa57d888fa1987fa738b4620af80d6c8ff2a65e8b3f8d527097a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122834955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90f0dded06e4f9435b40494a15064530b5d2a853516d72bbdd261b0286e6936`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:01 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:01 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:01 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:25 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
USER kong
# Tue, 04 Aug 2026 01:41:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:25 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:25 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:25 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:25 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d4d725cfa50f25062951d74c63bc037448819e0642a2c298b96cfc0bc2782f`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf21ab26fcb5b63c06f602d40d1f985f5cb40b863d9ece0e9a77edc1c3c09d6`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 93.1 MB (93082557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:latest` - unknown; unknown

```console
$ docker pull kong@sha256:36139acb28e1bac35434c7d7df88206dd25725afa2bcf2b73cd1456019db4fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d8c6c43d40847b3488c3511b447c17d44068c0c03242af4a2350033a2ffcb1`

```dockerfile
```

-	Layers:
	-	`sha256:0ca2eaf2b548542649018887a688210c72e161291891a885ce31c0c2779c967b`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 5.4 MB (5448599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1441190517b475f01b0b113c28f07f1ddb44e606cd6a1241022ce885c99e6b80`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:latest` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:a4e30e80d764831c6da3370739376fe11d26067eb1acbe320833bc88c64a055f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118887673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31aa54a8c63ab1bbe2b171fd133e36f8882957dc3ba5b7c1875d8500dcbde63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:02 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:02 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:02 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:27 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
USER kong
# Tue, 04 Aug 2026 01:41:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:27 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:27 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:27 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:27 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c19507edaf13199af40d7ecc8a08ceb2ff7cd9ded5e5fbcbff00eeb919366f`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a285021121a4cec92145b4bd91572fc559b6de489a6a51cafeb2482b488b8d1`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 90.0 MB (89999566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:latest` - unknown; unknown

```console
$ docker pull kong@sha256:ab6a34b43795c5160783f791f483a53c84a6b45c31be0da7e648446ce0641b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2c1091eb3d69c531a80e3f74d94f56e7232fff1731581eaa40fa69f6d86d1a`

```dockerfile
```

-	Layers:
	-	`sha256:2fd9603dc9c32e73e1bb0aa9e4faa150d9c2ea10858fa7fb1faa857bf96caf4a`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 5.5 MB (5455766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f16695160a8d929a4c046431cb0043a6598355ffd32ee5b0c972d7a2e5e8340d`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:ubuntu`

```console
$ docker pull kong@sha256:4d6a4ead594e9bf468d07a54d30a57991904b220403af1a43c5a3679615d11de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:bcb12565d41caa57d888fa1987fa738b4620af80d6c8ff2a65e8b3f8d527097a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122834955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90f0dded06e4f9435b40494a15064530b5d2a853516d72bbdd261b0286e6936`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:01 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:01 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:01 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:01 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:01 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:25 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:25 GMT
USER kong
# Tue, 04 Aug 2026 01:41:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:25 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:25 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:25 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:25 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d4d725cfa50f25062951d74c63bc037448819e0642a2c298b96cfc0bc2782f`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf21ab26fcb5b63c06f602d40d1f985f5cb40b863d9ece0e9a77edc1c3c09d6`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 93.1 MB (93082557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:36139acb28e1bac35434c7d7df88206dd25725afa2bcf2b73cd1456019db4fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d8c6c43d40847b3488c3511b447c17d44068c0c03242af4a2350033a2ffcb1`

```dockerfile
```

-	Layers:
	-	`sha256:0ca2eaf2b548542649018887a688210c72e161291891a885ce31c0c2779c967b`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 5.4 MB (5448599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1441190517b475f01b0b113c28f07f1ddb44e606cd6a1241022ce885c99e6b80`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:a4e30e80d764831c6da3370739376fe11d26067eb1acbe320833bc88c64a055f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118887673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31aa54a8c63ab1bbe2b171fd133e36f8882957dc3ba5b7c1875d8500dcbde63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:41:02 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 04 Aug 2026 01:41:02 GMT
ARG ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ENV ASSET=ce
# Tue, 04 Aug 2026 01:41:02 GMT
ARG EE_PORTS
# Tue, 04 Aug 2026 01:41:02 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ENV KONG_VERSION=3.9.3
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 04 Aug 2026 01:41:02 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 04 Aug 2026 01:41:27 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:41:27 GMT
USER kong
# Tue, 04 Aug 2026 01:41:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:41:27 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 04 Aug 2026 01:41:27 GMT
STOPSIGNAL SIGQUIT
# Tue, 04 Aug 2026 01:41:27 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 04 Aug 2026 01:41:27 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47c19507edaf13199af40d7ecc8a08ceb2ff7cd9ded5e5fbcbff00eeb919366f`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a285021121a4cec92145b4bd91572fc559b6de489a6a51cafeb2482b488b8d1`  
		Last Modified: Tue, 04 Aug 2026 01:41:48 GMT  
		Size: 90.0 MB (89999566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c1f4371ae25bc5d967d56e6a25e1d5e3abdb301aa83e48287733030c0c28`  
		Last Modified: Tue, 04 Aug 2026 01:41:43 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:ab6a34b43795c5160783f791f483a53c84a6b45c31be0da7e648446ce0641b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2c1091eb3d69c531a80e3f74d94f56e7232fff1731581eaa40fa69f6d86d1a`

```dockerfile
```

-	Layers:
	-	`sha256:2fd9603dc9c32e73e1bb0aa9e4faa150d9c2ea10858fa7fb1faa857bf96caf4a`  
		Last Modified: Tue, 04 Aug 2026 01:41:46 GMT  
		Size: 5.5 MB (5455766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f16695160a8d929a4c046431cb0043a6598355ffd32ee5b0c972d7a2e5e8340d`  
		Last Modified: Tue, 04 Aug 2026 01:41:45 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json
