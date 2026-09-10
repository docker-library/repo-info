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
$ docker pull kong@sha256:ca71c5591eabaf18de96d26b7eed5e2fdb590dac141e467a779c38017e5bdf81
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3` - linux; amd64

```console
$ docker pull kong@sha256:d68aa2f13f21d37d2bbfaf1c386c3662a24ce743a5bf79ebc5ade399a6a7f2e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120460763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8508cb6088b146c4270696ab20385b4a0c8808b1e9b0cf40e622a2ead0bd24cd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:27 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 02:32:27 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 02:32:27 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 02:32:27 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 02:32:27 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 02:32:27 GMT
ARG KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:32:27 GMT
ENV KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:32:27 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Wed, 09 Sep 2026 02:32:27 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Wed, 09 Sep 2026 02:32:52 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 02:32:52 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:32:52 GMT
USER kong
# Wed, 09 Sep 2026 02:32:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:32:52 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 02:32:52 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 02:32:52 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 02:32:52 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a3678ff9504e6834b8552ed507d6702a3eb58702f9b82d00bedeec10a4cd70`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe06051bdc7a165942d410c5188c5deca323eb85d7917062e090f2696b5e361`  
		Last Modified: Wed, 09 Sep 2026 02:33:11 GMT  
		Size: 90.7 MB (90696225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b02b50744aa9417d550835af240b7df96f1d1171aeaac792d00635025c16682`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3` - unknown; unknown

```console
$ docker pull kong@sha256:e4e7403aaa1f2b0664147df695622af9b9aa102d22b788b6dbe53fa2b239087d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3efd71fcf7e16bb01474963391628854cbeb633485cdda8627eeab13f5b64e5`

```dockerfile
```

-	Layers:
	-	`sha256:9671486dbe94286f57ec1dea38091dbb706c2d4a894d5022b46e27b067b62aca`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 5.4 MB (5448613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bef5e5e5d1518f3d1571322ad851433dde54bbeae2467e818d3df60958d47058`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:d92642d98ad9c4ff7e40051fd7160f9163fd65cff3f5e04314718af3acabae22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118951543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d328d500d1b6a1ee38ffb7b0a35af4ea9f7403f20858e7876ddd777a29322506`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:29:27 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 02:29:27 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 02:29:27 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 02:29:27 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 02:29:27 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 02:29:27 GMT
ARG KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:29:27 GMT
ENV KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:29:27 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Wed, 09 Sep 2026 02:29:27 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Wed, 09 Sep 2026 02:29:53 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 02:29:53 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:29:53 GMT
USER kong
# Wed, 09 Sep 2026 02:29:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:29:53 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 02:29:53 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 02:29:53 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 02:29:53 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb57b97672d55e2cbf001b226b39b397430d0cacb0028f64c4c8035ca96c2229`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2791fb21c7a8ef0e4bf881eb0c21f98ba490268c8069750eae6cdb9f62f7a0`  
		Last Modified: Wed, 09 Sep 2026 02:30:13 GMT  
		Size: 90.0 MB (90010243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b455a7ddc305f8378bdadb18a47db06d9f2b996b18796f3619317df49166c8e9`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3` - unknown; unknown

```console
$ docker pull kong@sha256:5655715358346e1c2ca519655f55e8bf3eb1aad9087dac899e9d8bedb56a0df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba06e905d7ca86eaf23e190fba38ccf7095eb458b440bd54e3dfa6b70913c0f2`

```dockerfile
```

-	Layers:
	-	`sha256:6461131eda585e0078a68fe4d4d757f7423dcf77d9c0c75f81d5705f0cb6100f`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 5.5 MB (5455780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c39de36d779433d85fbd88b1b08f421c62b888aa126b5e90d9f924d2fd886541`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4`

```console
$ docker pull kong@sha256:15ca5eb5dbe7c7e53b1b2d39d0ee612438d5c7ebae07c315f4a6948c1e8a241d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4` - linux; amd64

```console
$ docker pull kong@sha256:e6840716cc2d98d2e4a44d6a4efaeebbbc3c38c453239c2549aa7159858e7596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.0 MB (100005447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bfa14eb9dafdf3319cce09fc7eba09de6d39e5741ff146a38a1f41794e8a897`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:33 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 02:32:33 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 02:32:33 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 02:32:33 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 02:32:33 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 02:32:33 GMT
ARG KONG_VERSION=3.4.2
# Wed, 09 Sep 2026 02:32:33 GMT
ENV KONG_VERSION=3.4.2
# Wed, 09 Sep 2026 02:32:33 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Wed, 09 Sep 2026 02:32:33 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Wed, 09 Sep 2026 02:32:59 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 02:32:59 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:32:59 GMT
USER kong
# Wed, 09 Sep 2026 02:32:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:32:59 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 02:32:59 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 02:32:59 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 02:32:59 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e906e1db73f49125db43b6047e9818e252574061e0e177a45bab93e0bec30375`  
		Last Modified: Wed, 09 Sep 2026 02:33:13 GMT  
		Size: 123.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:001c000bc60d2e814c9e3ef515e7d10698cea5b5038518a04576316d819a5d98`  
		Last Modified: Wed, 09 Sep 2026 02:33:16 GMT  
		Size: 70.3 MB (70253918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:356be250f9f271e1db7001893982fa8ef4d4ea50ba08fd2d2114e5e607f551e3`  
		Last Modified: Wed, 09 Sep 2026 02:33:13 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4` - unknown; unknown

```console
$ docker pull kong@sha256:0faf04d4e26b1016488dd465ef2410b66c7932ce5f83f389171f55bd04478553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6063299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22381b385106d47d9b04885ab82c343349ee6c5498e7a4ef4cb8ffb55b54bd8d`

```dockerfile
```

-	Layers:
	-	`sha256:6bc7a870aa88c128ebd216dd8650e99d5ceab9cc45aed746e2b0984a584a0f60`  
		Last Modified: Wed, 09 Sep 2026 02:33:14 GMT  
		Size: 6.0 MB (6047953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b39e03ab8503b467a82e52d9b245f461d49fac964569e14bbd6483a79d50992`  
		Last Modified: Wed, 09 Sep 2026 02:33:13 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:f6d741054d2f1f5b8dd5a83791efec4abdf1f47746fd774b3d2617f2a1f090a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.3 MB (95281224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:975733bddc845484186f1380a5543976187d4483399e9cdaa0b70ee8ffd654af`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:55:11 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 01:55:11 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 01:55:11 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 01:55:11 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 01:55:11 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 01:55:11 GMT
ARG KONG_VERSION=3.4.2
# Wed, 09 Sep 2026 01:55:11 GMT
ENV KONG_VERSION=3.4.2
# Wed, 09 Sep 2026 01:55:11 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Wed, 09 Sep 2026 01:55:11 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Wed, 09 Sep 2026 01:55:39 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 01:55:39 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:55:39 GMT
USER kong
# Wed, 09 Sep 2026 01:55:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 01:55:39 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 01:55:39 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 01:55:39 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 01:55:39 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb21c4d6baca1a54001e9ff6619e4734be27cd4eb3acedd961ea30b9656839ac`  
		Last Modified: Wed, 09 Sep 2026 01:55:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42c49f9c8820f0268bd4843eba94d12132a2f512cecfb56e8790605e0fcd81ef`  
		Last Modified: Wed, 09 Sep 2026 01:55:57 GMT  
		Size: 67.6 MB (67597193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9db92b5ec8528312d1533c7455eba904bf53582c5e066c118beefc04b92eece2`  
		Last Modified: Wed, 09 Sep 2026 01:55:54 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4` - unknown; unknown

```console
$ docker pull kong@sha256:4871bafea1d4ce71f8d1342c516365665616bb27a6dfe7db291e9299577acf66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6041482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64211f8b15eb425ded4df740ea221d762e9d090c533d58edada5854b39fb2eef`

```dockerfile
```

-	Layers:
	-	`sha256:a56e46ae8878841fd223093163b4eacf7cebad23bed378436c9e472f5bbf3759`  
		Last Modified: Wed, 09 Sep 2026 01:55:55 GMT  
		Size: 6.0 MB (6026032 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91aeeb60911bb6109eca7dbc97777bf82e9db19e98daf94efbdf9f1b5ac57ad8`  
		Last Modified: Wed, 09 Sep 2026 01:55:54 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4-ubuntu`

```console
$ docker pull kong@sha256:15ca5eb5dbe7c7e53b1b2d39d0ee612438d5c7ebae07c315f4a6948c1e8a241d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:e6840716cc2d98d2e4a44d6a4efaeebbbc3c38c453239c2549aa7159858e7596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.0 MB (100005447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bfa14eb9dafdf3319cce09fc7eba09de6d39e5741ff146a38a1f41794e8a897`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:33 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 02:32:33 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 02:32:33 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 02:32:33 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 02:32:33 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 02:32:33 GMT
ARG KONG_VERSION=3.4.2
# Wed, 09 Sep 2026 02:32:33 GMT
ENV KONG_VERSION=3.4.2
# Wed, 09 Sep 2026 02:32:33 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Wed, 09 Sep 2026 02:32:33 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Wed, 09 Sep 2026 02:32:59 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 02:32:59 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:32:59 GMT
USER kong
# Wed, 09 Sep 2026 02:32:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:32:59 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 02:32:59 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 02:32:59 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 02:32:59 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e906e1db73f49125db43b6047e9818e252574061e0e177a45bab93e0bec30375`  
		Last Modified: Wed, 09 Sep 2026 02:33:13 GMT  
		Size: 123.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:001c000bc60d2e814c9e3ef515e7d10698cea5b5038518a04576316d819a5d98`  
		Last Modified: Wed, 09 Sep 2026 02:33:16 GMT  
		Size: 70.3 MB (70253918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:356be250f9f271e1db7001893982fa8ef4d4ea50ba08fd2d2114e5e607f551e3`  
		Last Modified: Wed, 09 Sep 2026 02:33:13 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:0faf04d4e26b1016488dd465ef2410b66c7932ce5f83f389171f55bd04478553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6063299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22381b385106d47d9b04885ab82c343349ee6c5498e7a4ef4cb8ffb55b54bd8d`

```dockerfile
```

-	Layers:
	-	`sha256:6bc7a870aa88c128ebd216dd8650e99d5ceab9cc45aed746e2b0984a584a0f60`  
		Last Modified: Wed, 09 Sep 2026 02:33:14 GMT  
		Size: 6.0 MB (6047953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b39e03ab8503b467a82e52d9b245f461d49fac964569e14bbd6483a79d50992`  
		Last Modified: Wed, 09 Sep 2026 02:33:13 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:f6d741054d2f1f5b8dd5a83791efec4abdf1f47746fd774b3d2617f2a1f090a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.3 MB (95281224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:975733bddc845484186f1380a5543976187d4483399e9cdaa0b70ee8ffd654af`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:55:11 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 01:55:11 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 01:55:11 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 01:55:11 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 01:55:11 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 01:55:11 GMT
ARG KONG_VERSION=3.4.2
# Wed, 09 Sep 2026 01:55:11 GMT
ENV KONG_VERSION=3.4.2
# Wed, 09 Sep 2026 01:55:11 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Wed, 09 Sep 2026 01:55:11 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Wed, 09 Sep 2026 01:55:39 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 01:55:39 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:55:39 GMT
USER kong
# Wed, 09 Sep 2026 01:55:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 01:55:39 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 01:55:39 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 01:55:39 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 01:55:39 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb21c4d6baca1a54001e9ff6619e4734be27cd4eb3acedd961ea30b9656839ac`  
		Last Modified: Wed, 09 Sep 2026 01:55:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42c49f9c8820f0268bd4843eba94d12132a2f512cecfb56e8790605e0fcd81ef`  
		Last Modified: Wed, 09 Sep 2026 01:55:57 GMT  
		Size: 67.6 MB (67597193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9db92b5ec8528312d1533c7455eba904bf53582c5e066c118beefc04b92eece2`  
		Last Modified: Wed, 09 Sep 2026 01:55:54 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:4871bafea1d4ce71f8d1342c516365665616bb27a6dfe7db291e9299577acf66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6041482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64211f8b15eb425ded4df740ea221d762e9d090c533d58edada5854b39fb2eef`

```dockerfile
```

-	Layers:
	-	`sha256:a56e46ae8878841fd223093163b4eacf7cebad23bed378436c9e472f5bbf3759`  
		Last Modified: Wed, 09 Sep 2026 01:55:55 GMT  
		Size: 6.0 MB (6026032 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91aeeb60911bb6109eca7dbc97777bf82e9db19e98daf94efbdf9f1b5ac57ad8`  
		Last Modified: Wed, 09 Sep 2026 01:55:54 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4.2`

```console
$ docker pull kong@sha256:15ca5eb5dbe7c7e53b1b2d39d0ee612438d5c7ebae07c315f4a6948c1e8a241d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4.2` - linux; amd64

```console
$ docker pull kong@sha256:e6840716cc2d98d2e4a44d6a4efaeebbbc3c38c453239c2549aa7159858e7596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.0 MB (100005447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bfa14eb9dafdf3319cce09fc7eba09de6d39e5741ff146a38a1f41794e8a897`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:33 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 02:32:33 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 02:32:33 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 02:32:33 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 02:32:33 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 02:32:33 GMT
ARG KONG_VERSION=3.4.2
# Wed, 09 Sep 2026 02:32:33 GMT
ENV KONG_VERSION=3.4.2
# Wed, 09 Sep 2026 02:32:33 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Wed, 09 Sep 2026 02:32:33 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Wed, 09 Sep 2026 02:32:59 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 02:32:59 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:32:59 GMT
USER kong
# Wed, 09 Sep 2026 02:32:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:32:59 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 02:32:59 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 02:32:59 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 02:32:59 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e906e1db73f49125db43b6047e9818e252574061e0e177a45bab93e0bec30375`  
		Last Modified: Wed, 09 Sep 2026 02:33:13 GMT  
		Size: 123.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:001c000bc60d2e814c9e3ef515e7d10698cea5b5038518a04576316d819a5d98`  
		Last Modified: Wed, 09 Sep 2026 02:33:16 GMT  
		Size: 70.3 MB (70253918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:356be250f9f271e1db7001893982fa8ef4d4ea50ba08fd2d2114e5e607f551e3`  
		Last Modified: Wed, 09 Sep 2026 02:33:13 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2` - unknown; unknown

```console
$ docker pull kong@sha256:0faf04d4e26b1016488dd465ef2410b66c7932ce5f83f389171f55bd04478553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6063299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22381b385106d47d9b04885ab82c343349ee6c5498e7a4ef4cb8ffb55b54bd8d`

```dockerfile
```

-	Layers:
	-	`sha256:6bc7a870aa88c128ebd216dd8650e99d5ceab9cc45aed746e2b0984a584a0f60`  
		Last Modified: Wed, 09 Sep 2026 02:33:14 GMT  
		Size: 6.0 MB (6047953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b39e03ab8503b467a82e52d9b245f461d49fac964569e14bbd6483a79d50992`  
		Last Modified: Wed, 09 Sep 2026 02:33:13 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4.2` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:f6d741054d2f1f5b8dd5a83791efec4abdf1f47746fd774b3d2617f2a1f090a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.3 MB (95281224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:975733bddc845484186f1380a5543976187d4483399e9cdaa0b70ee8ffd654af`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:55:11 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 01:55:11 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 01:55:11 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 01:55:11 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 01:55:11 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 01:55:11 GMT
ARG KONG_VERSION=3.4.2
# Wed, 09 Sep 2026 01:55:11 GMT
ENV KONG_VERSION=3.4.2
# Wed, 09 Sep 2026 01:55:11 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Wed, 09 Sep 2026 01:55:11 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Wed, 09 Sep 2026 01:55:39 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 01:55:39 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:55:39 GMT
USER kong
# Wed, 09 Sep 2026 01:55:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 01:55:39 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 01:55:39 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 01:55:39 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 01:55:39 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb21c4d6baca1a54001e9ff6619e4734be27cd4eb3acedd961ea30b9656839ac`  
		Last Modified: Wed, 09 Sep 2026 01:55:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42c49f9c8820f0268bd4843eba94d12132a2f512cecfb56e8790605e0fcd81ef`  
		Last Modified: Wed, 09 Sep 2026 01:55:57 GMT  
		Size: 67.6 MB (67597193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9db92b5ec8528312d1533c7455eba904bf53582c5e066c118beefc04b92eece2`  
		Last Modified: Wed, 09 Sep 2026 01:55:54 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2` - unknown; unknown

```console
$ docker pull kong@sha256:4871bafea1d4ce71f8d1342c516365665616bb27a6dfe7db291e9299577acf66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6041482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64211f8b15eb425ded4df740ea221d762e9d090c533d58edada5854b39fb2eef`

```dockerfile
```

-	Layers:
	-	`sha256:a56e46ae8878841fd223093163b4eacf7cebad23bed378436c9e472f5bbf3759`  
		Last Modified: Wed, 09 Sep 2026 01:55:55 GMT  
		Size: 6.0 MB (6026032 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91aeeb60911bb6109eca7dbc97777bf82e9db19e98daf94efbdf9f1b5ac57ad8`  
		Last Modified: Wed, 09 Sep 2026 01:55:54 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.4.2-ubuntu`

```console
$ docker pull kong@sha256:15ca5eb5dbe7c7e53b1b2d39d0ee612438d5c7ebae07c315f4a6948c1e8a241d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.4.2-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:e6840716cc2d98d2e4a44d6a4efaeebbbc3c38c453239c2549aa7159858e7596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.0 MB (100005447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bfa14eb9dafdf3319cce09fc7eba09de6d39e5741ff146a38a1f41794e8a897`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:33 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 02:32:33 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 02:32:33 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 02:32:33 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 02:32:33 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 02:32:33 GMT
ARG KONG_VERSION=3.4.2
# Wed, 09 Sep 2026 02:32:33 GMT
ENV KONG_VERSION=3.4.2
# Wed, 09 Sep 2026 02:32:33 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Wed, 09 Sep 2026 02:32:33 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Wed, 09 Sep 2026 02:32:59 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 02:32:59 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:32:59 GMT
USER kong
# Wed, 09 Sep 2026 02:32:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:32:59 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 02:32:59 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 02:32:59 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 02:32:59 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e906e1db73f49125db43b6047e9818e252574061e0e177a45bab93e0bec30375`  
		Last Modified: Wed, 09 Sep 2026 02:33:13 GMT  
		Size: 123.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:001c000bc60d2e814c9e3ef515e7d10698cea5b5038518a04576316d819a5d98`  
		Last Modified: Wed, 09 Sep 2026 02:33:16 GMT  
		Size: 70.3 MB (70253918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:356be250f9f271e1db7001893982fa8ef4d4ea50ba08fd2d2114e5e607f551e3`  
		Last Modified: Wed, 09 Sep 2026 02:33:13 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:0faf04d4e26b1016488dd465ef2410b66c7932ce5f83f389171f55bd04478553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6063299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22381b385106d47d9b04885ab82c343349ee6c5498e7a4ef4cb8ffb55b54bd8d`

```dockerfile
```

-	Layers:
	-	`sha256:6bc7a870aa88c128ebd216dd8650e99d5ceab9cc45aed746e2b0984a584a0f60`  
		Last Modified: Wed, 09 Sep 2026 02:33:14 GMT  
		Size: 6.0 MB (6047953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b39e03ab8503b467a82e52d9b245f461d49fac964569e14bbd6483a79d50992`  
		Last Modified: Wed, 09 Sep 2026 02:33:13 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.4.2-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:f6d741054d2f1f5b8dd5a83791efec4abdf1f47746fd774b3d2617f2a1f090a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.3 MB (95281224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:975733bddc845484186f1380a5543976187d4483399e9cdaa0b70ee8ffd654af`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:55:11 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 01:55:11 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 01:55:11 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 01:55:11 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 01:55:11 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 01:55:11 GMT
ARG KONG_VERSION=3.4.2
# Wed, 09 Sep 2026 01:55:11 GMT
ENV KONG_VERSION=3.4.2
# Wed, 09 Sep 2026 01:55:11 GMT
ARG KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2
# Wed, 09 Sep 2026 01:55:11 GMT
ARG KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
# Wed, 09 Sep 2026 01:55:39 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.4.2 KONG_AMD64_SHA=b6bf56a5088660e7cac748a005af8d977be7177e64b0abfe1e7f77d797cdc0e2 KONG_ARM64_SHA=8bca79a6337a6299316cca4e2f9a766df09268359292686498db18a48d883689
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 01:55:39 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:55:39 GMT
USER kong
# Wed, 09 Sep 2026 01:55:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 01:55:39 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 01:55:39 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 01:55:39 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 01:55:39 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb21c4d6baca1a54001e9ff6619e4734be27cd4eb3acedd961ea30b9656839ac`  
		Last Modified: Wed, 09 Sep 2026 01:55:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42c49f9c8820f0268bd4843eba94d12132a2f512cecfb56e8790605e0fcd81ef`  
		Last Modified: Wed, 09 Sep 2026 01:55:57 GMT  
		Size: 67.6 MB (67597193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9db92b5ec8528312d1533c7455eba904bf53582c5e066c118beefc04b92eece2`  
		Last Modified: Wed, 09 Sep 2026 01:55:54 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.4.2-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:4871bafea1d4ce71f8d1342c516365665616bb27a6dfe7db291e9299577acf66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6041482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64211f8b15eb425ded4df740ea221d762e9d090c533d58edada5854b39fb2eef`

```dockerfile
```

-	Layers:
	-	`sha256:a56e46ae8878841fd223093163b4eacf7cebad23bed378436c9e472f5bbf3759`  
		Last Modified: Wed, 09 Sep 2026 01:55:55 GMT  
		Size: 6.0 MB (6026032 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91aeeb60911bb6109eca7dbc97777bf82e9db19e98daf94efbdf9f1b5ac57ad8`  
		Last Modified: Wed, 09 Sep 2026 01:55:54 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8`

```console
$ docker pull kong@sha256:fd78090e9e775323bed8a8f0f8bbea0cf732cea96370d4352d126789e8e1ce1f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8` - linux; amd64

```console
$ docker pull kong@sha256:0f19e96c320b1f01dcdf6e61ed06baab2b57811bdcaceb55866a8ac71aedebbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.0 MB (120033075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1039f7755ab7f4b696c51eb812d698f97ed7da0ed645d8d67308d82572663f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:31 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 02:32:31 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 02:32:31 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 02:32:31 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 02:32:31 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 02:32:31 GMT
ARG KONG_VERSION=3.8.0
# Wed, 09 Sep 2026 02:32:31 GMT
ENV KONG_VERSION=3.8.0
# Wed, 09 Sep 2026 02:32:31 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Wed, 09 Sep 2026 02:32:31 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Wed, 09 Sep 2026 02:32:58 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 02:32:58 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:32:58 GMT
USER kong
# Wed, 09 Sep 2026 02:32:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:32:58 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 02:32:58 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 02:32:58 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 02:32:58 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4803f23ba6f80e83c060105b60d523e472682fcdbf45b26a41b70bb6720eec88`  
		Last Modified: Wed, 09 Sep 2026 02:33:14 GMT  
		Size: 123.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fb4eaa93bbab6192f81438534347c08353f065812884e90592569b91d50e17b`  
		Last Modified: Wed, 09 Sep 2026 02:33:16 GMT  
		Size: 90.3 MB (90281545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975579e50d11cf51b9a8e752abb496126634ed1befa5de86e980f6df39238bf6`  
		Last Modified: Wed, 09 Sep 2026 02:33:14 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8` - unknown; unknown

```console
$ docker pull kong@sha256:c927d67b8f9055caf401fcca854a8fc39049abd37af7dd2a5f2e33ec37c630fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33593c8686a05ca851254c1a341bf8dc5858ae86ccd483d87e3cf8576cd5ee04`

```dockerfile
```

-	Layers:
	-	`sha256:4ccbffdc27890379a57b87a2d6aa460b9909d09f453d89436abdbbf9ba273571`  
		Last Modified: Wed, 09 Sep 2026 02:33:14 GMT  
		Size: 5.3 MB (5346484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c48c395fd8f70f9a1b16e42a7638f2db011c5edc05126031c0fce705c8b7773`  
		Last Modified: Wed, 09 Sep 2026 02:33:14 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:a6453376bdee80ecf7839d1a9ebd0b3f957c72b25d80810d792d603d53fa8265
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117232337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120642ff88d23bfde083e3a293356407adc8c2682672bf0cf4deca8ba5f84844`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:54:59 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 01:54:59 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 01:54:59 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 01:54:59 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 01:54:59 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 01:54:59 GMT
ARG KONG_VERSION=3.8.0
# Wed, 09 Sep 2026 01:54:59 GMT
ENV KONG_VERSION=3.8.0
# Wed, 09 Sep 2026 01:54:59 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Wed, 09 Sep 2026 01:54:59 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Wed, 09 Sep 2026 01:55:30 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 01:55:30 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:55:30 GMT
USER kong
# Wed, 09 Sep 2026 01:55:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 01:55:30 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 01:55:30 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 01:55:30 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 01:55:30 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6dda14cef3edb00cc4bdbe81830ee27a3b0e2064f2dce9c9f9f4306313f6587`  
		Last Modified: Wed, 09 Sep 2026 01:55:48 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f4e64343339d0a3e04a16795dfd03480ed199311e4aeb0ba96679d1d771b44`  
		Last Modified: Wed, 09 Sep 2026 01:55:50 GMT  
		Size: 89.5 MB (89548309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0796a87f7e731493b339ff925532095d59d7bf52b77e3634cd9f97c38599b09b`  
		Last Modified: Wed, 09 Sep 2026 01:55:48 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8` - unknown; unknown

```console
$ docker pull kong@sha256:c6b1bc6090f783303edbb890354e92d3406079afcfbc8e3124ff69e5e3b74988
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b857886c33de078ab6361183de40584e19fd6bf4f4c248b3e7c1e4953420b3d8`

```dockerfile
```

-	Layers:
	-	`sha256:411c4c96a64b12e3b2cb44c540e04bdaebd31cb98d64aceee3d1dac21e6b8eca`  
		Last Modified: Wed, 09 Sep 2026 01:55:48 GMT  
		Size: 5.4 MB (5352810 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efba16d5a4fa4c9fb7196dcaf9ca3de5fa3518b3095521196a5dc1d71dc1e537`  
		Last Modified: Wed, 09 Sep 2026 01:55:48 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8-ubuntu`

```console
$ docker pull kong@sha256:fd78090e9e775323bed8a8f0f8bbea0cf732cea96370d4352d126789e8e1ce1f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:0f19e96c320b1f01dcdf6e61ed06baab2b57811bdcaceb55866a8ac71aedebbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.0 MB (120033075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1039f7755ab7f4b696c51eb812d698f97ed7da0ed645d8d67308d82572663f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:31 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 02:32:31 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 02:32:31 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 02:32:31 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 02:32:31 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 02:32:31 GMT
ARG KONG_VERSION=3.8.0
# Wed, 09 Sep 2026 02:32:31 GMT
ENV KONG_VERSION=3.8.0
# Wed, 09 Sep 2026 02:32:31 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Wed, 09 Sep 2026 02:32:31 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Wed, 09 Sep 2026 02:32:58 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 02:32:58 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:32:58 GMT
USER kong
# Wed, 09 Sep 2026 02:32:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:32:58 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 02:32:58 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 02:32:58 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 02:32:58 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4803f23ba6f80e83c060105b60d523e472682fcdbf45b26a41b70bb6720eec88`  
		Last Modified: Wed, 09 Sep 2026 02:33:14 GMT  
		Size: 123.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fb4eaa93bbab6192f81438534347c08353f065812884e90592569b91d50e17b`  
		Last Modified: Wed, 09 Sep 2026 02:33:16 GMT  
		Size: 90.3 MB (90281545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975579e50d11cf51b9a8e752abb496126634ed1befa5de86e980f6df39238bf6`  
		Last Modified: Wed, 09 Sep 2026 02:33:14 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:c927d67b8f9055caf401fcca854a8fc39049abd37af7dd2a5f2e33ec37c630fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33593c8686a05ca851254c1a341bf8dc5858ae86ccd483d87e3cf8576cd5ee04`

```dockerfile
```

-	Layers:
	-	`sha256:4ccbffdc27890379a57b87a2d6aa460b9909d09f453d89436abdbbf9ba273571`  
		Last Modified: Wed, 09 Sep 2026 02:33:14 GMT  
		Size: 5.3 MB (5346484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c48c395fd8f70f9a1b16e42a7638f2db011c5edc05126031c0fce705c8b7773`  
		Last Modified: Wed, 09 Sep 2026 02:33:14 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:a6453376bdee80ecf7839d1a9ebd0b3f957c72b25d80810d792d603d53fa8265
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117232337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120642ff88d23bfde083e3a293356407adc8c2682672bf0cf4deca8ba5f84844`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:54:59 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 01:54:59 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 01:54:59 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 01:54:59 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 01:54:59 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 01:54:59 GMT
ARG KONG_VERSION=3.8.0
# Wed, 09 Sep 2026 01:54:59 GMT
ENV KONG_VERSION=3.8.0
# Wed, 09 Sep 2026 01:54:59 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Wed, 09 Sep 2026 01:54:59 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Wed, 09 Sep 2026 01:55:30 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 01:55:30 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:55:30 GMT
USER kong
# Wed, 09 Sep 2026 01:55:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 01:55:30 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 01:55:30 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 01:55:30 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 01:55:30 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6dda14cef3edb00cc4bdbe81830ee27a3b0e2064f2dce9c9f9f4306313f6587`  
		Last Modified: Wed, 09 Sep 2026 01:55:48 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f4e64343339d0a3e04a16795dfd03480ed199311e4aeb0ba96679d1d771b44`  
		Last Modified: Wed, 09 Sep 2026 01:55:50 GMT  
		Size: 89.5 MB (89548309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0796a87f7e731493b339ff925532095d59d7bf52b77e3634cd9f97c38599b09b`  
		Last Modified: Wed, 09 Sep 2026 01:55:48 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:c6b1bc6090f783303edbb890354e92d3406079afcfbc8e3124ff69e5e3b74988
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b857886c33de078ab6361183de40584e19fd6bf4f4c248b3e7c1e4953420b3d8`

```dockerfile
```

-	Layers:
	-	`sha256:411c4c96a64b12e3b2cb44c540e04bdaebd31cb98d64aceee3d1dac21e6b8eca`  
		Last Modified: Wed, 09 Sep 2026 01:55:48 GMT  
		Size: 5.4 MB (5352810 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efba16d5a4fa4c9fb7196dcaf9ca3de5fa3518b3095521196a5dc1d71dc1e537`  
		Last Modified: Wed, 09 Sep 2026 01:55:48 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8.0`

```console
$ docker pull kong@sha256:fd78090e9e775323bed8a8f0f8bbea0cf732cea96370d4352d126789e8e1ce1f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8.0` - linux; amd64

```console
$ docker pull kong@sha256:0f19e96c320b1f01dcdf6e61ed06baab2b57811bdcaceb55866a8ac71aedebbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.0 MB (120033075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1039f7755ab7f4b696c51eb812d698f97ed7da0ed645d8d67308d82572663f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:31 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 02:32:31 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 02:32:31 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 02:32:31 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 02:32:31 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 02:32:31 GMT
ARG KONG_VERSION=3.8.0
# Wed, 09 Sep 2026 02:32:31 GMT
ENV KONG_VERSION=3.8.0
# Wed, 09 Sep 2026 02:32:31 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Wed, 09 Sep 2026 02:32:31 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Wed, 09 Sep 2026 02:32:58 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 02:32:58 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:32:58 GMT
USER kong
# Wed, 09 Sep 2026 02:32:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:32:58 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 02:32:58 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 02:32:58 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 02:32:58 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4803f23ba6f80e83c060105b60d523e472682fcdbf45b26a41b70bb6720eec88`  
		Last Modified: Wed, 09 Sep 2026 02:33:14 GMT  
		Size: 123.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fb4eaa93bbab6192f81438534347c08353f065812884e90592569b91d50e17b`  
		Last Modified: Wed, 09 Sep 2026 02:33:16 GMT  
		Size: 90.3 MB (90281545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975579e50d11cf51b9a8e752abb496126634ed1befa5de86e980f6df39238bf6`  
		Last Modified: Wed, 09 Sep 2026 02:33:14 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0` - unknown; unknown

```console
$ docker pull kong@sha256:c927d67b8f9055caf401fcca854a8fc39049abd37af7dd2a5f2e33ec37c630fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33593c8686a05ca851254c1a341bf8dc5858ae86ccd483d87e3cf8576cd5ee04`

```dockerfile
```

-	Layers:
	-	`sha256:4ccbffdc27890379a57b87a2d6aa460b9909d09f453d89436abdbbf9ba273571`  
		Last Modified: Wed, 09 Sep 2026 02:33:14 GMT  
		Size: 5.3 MB (5346484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c48c395fd8f70f9a1b16e42a7638f2db011c5edc05126031c0fce705c8b7773`  
		Last Modified: Wed, 09 Sep 2026 02:33:14 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8.0` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:a6453376bdee80ecf7839d1a9ebd0b3f957c72b25d80810d792d603d53fa8265
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117232337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120642ff88d23bfde083e3a293356407adc8c2682672bf0cf4deca8ba5f84844`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:54:59 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 01:54:59 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 01:54:59 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 01:54:59 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 01:54:59 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 01:54:59 GMT
ARG KONG_VERSION=3.8.0
# Wed, 09 Sep 2026 01:54:59 GMT
ENV KONG_VERSION=3.8.0
# Wed, 09 Sep 2026 01:54:59 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Wed, 09 Sep 2026 01:54:59 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Wed, 09 Sep 2026 01:55:30 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 01:55:30 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:55:30 GMT
USER kong
# Wed, 09 Sep 2026 01:55:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 01:55:30 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 01:55:30 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 01:55:30 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 01:55:30 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6dda14cef3edb00cc4bdbe81830ee27a3b0e2064f2dce9c9f9f4306313f6587`  
		Last Modified: Wed, 09 Sep 2026 01:55:48 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f4e64343339d0a3e04a16795dfd03480ed199311e4aeb0ba96679d1d771b44`  
		Last Modified: Wed, 09 Sep 2026 01:55:50 GMT  
		Size: 89.5 MB (89548309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0796a87f7e731493b339ff925532095d59d7bf52b77e3634cd9f97c38599b09b`  
		Last Modified: Wed, 09 Sep 2026 01:55:48 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0` - unknown; unknown

```console
$ docker pull kong@sha256:c6b1bc6090f783303edbb890354e92d3406079afcfbc8e3124ff69e5e3b74988
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b857886c33de078ab6361183de40584e19fd6bf4f4c248b3e7c1e4953420b3d8`

```dockerfile
```

-	Layers:
	-	`sha256:411c4c96a64b12e3b2cb44c540e04bdaebd31cb98d64aceee3d1dac21e6b8eca`  
		Last Modified: Wed, 09 Sep 2026 01:55:48 GMT  
		Size: 5.4 MB (5352810 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efba16d5a4fa4c9fb7196dcaf9ca3de5fa3518b3095521196a5dc1d71dc1e537`  
		Last Modified: Wed, 09 Sep 2026 01:55:48 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.8.0-ubuntu`

```console
$ docker pull kong@sha256:fd78090e9e775323bed8a8f0f8bbea0cf732cea96370d4352d126789e8e1ce1f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.8.0-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:0f19e96c320b1f01dcdf6e61ed06baab2b57811bdcaceb55866a8ac71aedebbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.0 MB (120033075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1039f7755ab7f4b696c51eb812d698f97ed7da0ed645d8d67308d82572663f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:31 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 02:32:31 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 02:32:31 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 02:32:31 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 02:32:31 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 02:32:31 GMT
ARG KONG_VERSION=3.8.0
# Wed, 09 Sep 2026 02:32:31 GMT
ENV KONG_VERSION=3.8.0
# Wed, 09 Sep 2026 02:32:31 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Wed, 09 Sep 2026 02:32:31 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Wed, 09 Sep 2026 02:32:58 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 02:32:58 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:32:58 GMT
USER kong
# Wed, 09 Sep 2026 02:32:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:32:58 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 02:32:58 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 02:32:58 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 02:32:58 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4803f23ba6f80e83c060105b60d523e472682fcdbf45b26a41b70bb6720eec88`  
		Last Modified: Wed, 09 Sep 2026 02:33:14 GMT  
		Size: 123.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fb4eaa93bbab6192f81438534347c08353f065812884e90592569b91d50e17b`  
		Last Modified: Wed, 09 Sep 2026 02:33:16 GMT  
		Size: 90.3 MB (90281545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975579e50d11cf51b9a8e752abb496126634ed1befa5de86e980f6df39238bf6`  
		Last Modified: Wed, 09 Sep 2026 02:33:14 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:c927d67b8f9055caf401fcca854a8fc39049abd37af7dd2a5f2e33ec37c630fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5361830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33593c8686a05ca851254c1a341bf8dc5858ae86ccd483d87e3cf8576cd5ee04`

```dockerfile
```

-	Layers:
	-	`sha256:4ccbffdc27890379a57b87a2d6aa460b9909d09f453d89436abdbbf9ba273571`  
		Last Modified: Wed, 09 Sep 2026 02:33:14 GMT  
		Size: 5.3 MB (5346484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c48c395fd8f70f9a1b16e42a7638f2db011c5edc05126031c0fce705c8b7773`  
		Last Modified: Wed, 09 Sep 2026 02:33:14 GMT  
		Size: 15.3 KB (15346 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.8.0-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:a6453376bdee80ecf7839d1a9ebd0b3f957c72b25d80810d792d603d53fa8265
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117232337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120642ff88d23bfde083e3a293356407adc8c2682672bf0cf4deca8ba5f84844`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:54:59 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 01:54:59 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 01:54:59 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 01:54:59 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 01:54:59 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 01:54:59 GMT
ARG KONG_VERSION=3.8.0
# Wed, 09 Sep 2026 01:54:59 GMT
ENV KONG_VERSION=3.8.0
# Wed, 09 Sep 2026 01:54:59 GMT
ARG KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987
# Wed, 09 Sep 2026 01:54:59 GMT
ARG KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
# Wed, 09 Sep 2026 01:55:30 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.8.0 KONG_AMD64_SHA=d7f3bb1b34128ebefc7c1dadf552b88903631d33e479715545c1e1b8f9468987 KONG_ARM64_SHA=21a35f15c1ee96996da8739c9bcc937e164b5a075db64c0a7e17b5443af458bf
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 01:55:30 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:55:30 GMT
USER kong
# Wed, 09 Sep 2026 01:55:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 01:55:30 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 01:55:30 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 01:55:30 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 01:55:30 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6dda14cef3edb00cc4bdbe81830ee27a3b0e2064f2dce9c9f9f4306313f6587`  
		Last Modified: Wed, 09 Sep 2026 01:55:48 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f4e64343339d0a3e04a16795dfd03480ed199311e4aeb0ba96679d1d771b44`  
		Last Modified: Wed, 09 Sep 2026 01:55:50 GMT  
		Size: 89.5 MB (89548309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0796a87f7e731493b339ff925532095d59d7bf52b77e3634cd9f97c38599b09b`  
		Last Modified: Wed, 09 Sep 2026 01:55:48 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.8.0-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:c6b1bc6090f783303edbb890354e92d3406079afcfbc8e3124ff69e5e3b74988
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b857886c33de078ab6361183de40584e19fd6bf4f4c248b3e7c1e4953420b3d8`

```dockerfile
```

-	Layers:
	-	`sha256:411c4c96a64b12e3b2cb44c540e04bdaebd31cb98d64aceee3d1dac21e6b8eca`  
		Last Modified: Wed, 09 Sep 2026 01:55:48 GMT  
		Size: 5.4 MB (5352810 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efba16d5a4fa4c9fb7196dcaf9ca3de5fa3518b3095521196a5dc1d71dc1e537`  
		Last Modified: Wed, 09 Sep 2026 01:55:48 GMT  
		Size: 15.4 KB (15450 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9`

```console
$ docker pull kong@sha256:ca71c5591eabaf18de96d26b7eed5e2fdb590dac141e467a779c38017e5bdf81
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9` - linux; amd64

```console
$ docker pull kong@sha256:d68aa2f13f21d37d2bbfaf1c386c3662a24ce743a5bf79ebc5ade399a6a7f2e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120460763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8508cb6088b146c4270696ab20385b4a0c8808b1e9b0cf40e622a2ead0bd24cd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:27 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 02:32:27 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 02:32:27 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 02:32:27 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 02:32:27 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 02:32:27 GMT
ARG KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:32:27 GMT
ENV KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:32:27 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Wed, 09 Sep 2026 02:32:27 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Wed, 09 Sep 2026 02:32:52 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 02:32:52 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:32:52 GMT
USER kong
# Wed, 09 Sep 2026 02:32:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:32:52 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 02:32:52 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 02:32:52 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 02:32:52 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a3678ff9504e6834b8552ed507d6702a3eb58702f9b82d00bedeec10a4cd70`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe06051bdc7a165942d410c5188c5deca323eb85d7917062e090f2696b5e361`  
		Last Modified: Wed, 09 Sep 2026 02:33:11 GMT  
		Size: 90.7 MB (90696225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b02b50744aa9417d550835af240b7df96f1d1171aeaac792d00635025c16682`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9` - unknown; unknown

```console
$ docker pull kong@sha256:e4e7403aaa1f2b0664147df695622af9b9aa102d22b788b6dbe53fa2b239087d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3efd71fcf7e16bb01474963391628854cbeb633485cdda8627eeab13f5b64e5`

```dockerfile
```

-	Layers:
	-	`sha256:9671486dbe94286f57ec1dea38091dbb706c2d4a894d5022b46e27b067b62aca`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 5.4 MB (5448613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bef5e5e5d1518f3d1571322ad851433dde54bbeae2467e818d3df60958d47058`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:d92642d98ad9c4ff7e40051fd7160f9163fd65cff3f5e04314718af3acabae22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118951543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d328d500d1b6a1ee38ffb7b0a35af4ea9f7403f20858e7876ddd777a29322506`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:29:27 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 02:29:27 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 02:29:27 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 02:29:27 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 02:29:27 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 02:29:27 GMT
ARG KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:29:27 GMT
ENV KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:29:27 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Wed, 09 Sep 2026 02:29:27 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Wed, 09 Sep 2026 02:29:53 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 02:29:53 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:29:53 GMT
USER kong
# Wed, 09 Sep 2026 02:29:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:29:53 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 02:29:53 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 02:29:53 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 02:29:53 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb57b97672d55e2cbf001b226b39b397430d0cacb0028f64c4c8035ca96c2229`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2791fb21c7a8ef0e4bf881eb0c21f98ba490268c8069750eae6cdb9f62f7a0`  
		Last Modified: Wed, 09 Sep 2026 02:30:13 GMT  
		Size: 90.0 MB (90010243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b455a7ddc305f8378bdadb18a47db06d9f2b996b18796f3619317df49166c8e9`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9` - unknown; unknown

```console
$ docker pull kong@sha256:5655715358346e1c2ca519655f55e8bf3eb1aad9087dac899e9d8bedb56a0df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba06e905d7ca86eaf23e190fba38ccf7095eb458b440bd54e3dfa6b70913c0f2`

```dockerfile
```

-	Layers:
	-	`sha256:6461131eda585e0078a68fe4d4d757f7423dcf77d9c0c75f81d5705f0cb6100f`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 5.5 MB (5455780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c39de36d779433d85fbd88b1b08f421c62b888aa126b5e90d9f924d2fd886541`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9-ubuntu`

```console
$ docker pull kong@sha256:ca71c5591eabaf18de96d26b7eed5e2fdb590dac141e467a779c38017e5bdf81
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:d68aa2f13f21d37d2bbfaf1c386c3662a24ce743a5bf79ebc5ade399a6a7f2e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120460763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8508cb6088b146c4270696ab20385b4a0c8808b1e9b0cf40e622a2ead0bd24cd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:27 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 02:32:27 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 02:32:27 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 02:32:27 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 02:32:27 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 02:32:27 GMT
ARG KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:32:27 GMT
ENV KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:32:27 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Wed, 09 Sep 2026 02:32:27 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Wed, 09 Sep 2026 02:32:52 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 02:32:52 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:32:52 GMT
USER kong
# Wed, 09 Sep 2026 02:32:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:32:52 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 02:32:52 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 02:32:52 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 02:32:52 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a3678ff9504e6834b8552ed507d6702a3eb58702f9b82d00bedeec10a4cd70`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe06051bdc7a165942d410c5188c5deca323eb85d7917062e090f2696b5e361`  
		Last Modified: Wed, 09 Sep 2026 02:33:11 GMT  
		Size: 90.7 MB (90696225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b02b50744aa9417d550835af240b7df96f1d1171aeaac792d00635025c16682`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:e4e7403aaa1f2b0664147df695622af9b9aa102d22b788b6dbe53fa2b239087d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3efd71fcf7e16bb01474963391628854cbeb633485cdda8627eeab13f5b64e5`

```dockerfile
```

-	Layers:
	-	`sha256:9671486dbe94286f57ec1dea38091dbb706c2d4a894d5022b46e27b067b62aca`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 5.4 MB (5448613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bef5e5e5d1518f3d1571322ad851433dde54bbeae2467e818d3df60958d47058`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:d92642d98ad9c4ff7e40051fd7160f9163fd65cff3f5e04314718af3acabae22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118951543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d328d500d1b6a1ee38ffb7b0a35af4ea9f7403f20858e7876ddd777a29322506`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:29:27 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 02:29:27 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 02:29:27 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 02:29:27 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 02:29:27 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 02:29:27 GMT
ARG KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:29:27 GMT
ENV KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:29:27 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Wed, 09 Sep 2026 02:29:27 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Wed, 09 Sep 2026 02:29:53 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 02:29:53 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:29:53 GMT
USER kong
# Wed, 09 Sep 2026 02:29:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:29:53 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 02:29:53 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 02:29:53 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 02:29:53 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb57b97672d55e2cbf001b226b39b397430d0cacb0028f64c4c8035ca96c2229`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2791fb21c7a8ef0e4bf881eb0c21f98ba490268c8069750eae6cdb9f62f7a0`  
		Last Modified: Wed, 09 Sep 2026 02:30:13 GMT  
		Size: 90.0 MB (90010243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b455a7ddc305f8378bdadb18a47db06d9f2b996b18796f3619317df49166c8e9`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:5655715358346e1c2ca519655f55e8bf3eb1aad9087dac899e9d8bedb56a0df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba06e905d7ca86eaf23e190fba38ccf7095eb458b440bd54e3dfa6b70913c0f2`

```dockerfile
```

-	Layers:
	-	`sha256:6461131eda585e0078a68fe4d4d757f7423dcf77d9c0c75f81d5705f0cb6100f`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 5.5 MB (5455780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c39de36d779433d85fbd88b1b08f421c62b888aa126b5e90d9f924d2fd886541`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9.3`

```console
$ docker pull kong@sha256:ca71c5591eabaf18de96d26b7eed5e2fdb590dac141e467a779c38017e5bdf81
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9.3` - linux; amd64

```console
$ docker pull kong@sha256:d68aa2f13f21d37d2bbfaf1c386c3662a24ce743a5bf79ebc5ade399a6a7f2e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120460763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8508cb6088b146c4270696ab20385b4a0c8808b1e9b0cf40e622a2ead0bd24cd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:27 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 02:32:27 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 02:32:27 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 02:32:27 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 02:32:27 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 02:32:27 GMT
ARG KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:32:27 GMT
ENV KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:32:27 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Wed, 09 Sep 2026 02:32:27 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Wed, 09 Sep 2026 02:32:52 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 02:32:52 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:32:52 GMT
USER kong
# Wed, 09 Sep 2026 02:32:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:32:52 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 02:32:52 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 02:32:52 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 02:32:52 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a3678ff9504e6834b8552ed507d6702a3eb58702f9b82d00bedeec10a4cd70`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe06051bdc7a165942d410c5188c5deca323eb85d7917062e090f2696b5e361`  
		Last Modified: Wed, 09 Sep 2026 02:33:11 GMT  
		Size: 90.7 MB (90696225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b02b50744aa9417d550835af240b7df96f1d1171aeaac792d00635025c16682`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.3` - unknown; unknown

```console
$ docker pull kong@sha256:e4e7403aaa1f2b0664147df695622af9b9aa102d22b788b6dbe53fa2b239087d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3efd71fcf7e16bb01474963391628854cbeb633485cdda8627eeab13f5b64e5`

```dockerfile
```

-	Layers:
	-	`sha256:9671486dbe94286f57ec1dea38091dbb706c2d4a894d5022b46e27b067b62aca`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 5.4 MB (5448613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bef5e5e5d1518f3d1571322ad851433dde54bbeae2467e818d3df60958d47058`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9.3` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:d92642d98ad9c4ff7e40051fd7160f9163fd65cff3f5e04314718af3acabae22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118951543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d328d500d1b6a1ee38ffb7b0a35af4ea9f7403f20858e7876ddd777a29322506`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:29:27 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 02:29:27 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 02:29:27 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 02:29:27 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 02:29:27 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 02:29:27 GMT
ARG KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:29:27 GMT
ENV KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:29:27 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Wed, 09 Sep 2026 02:29:27 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Wed, 09 Sep 2026 02:29:53 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 02:29:53 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:29:53 GMT
USER kong
# Wed, 09 Sep 2026 02:29:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:29:53 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 02:29:53 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 02:29:53 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 02:29:53 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb57b97672d55e2cbf001b226b39b397430d0cacb0028f64c4c8035ca96c2229`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2791fb21c7a8ef0e4bf881eb0c21f98ba490268c8069750eae6cdb9f62f7a0`  
		Last Modified: Wed, 09 Sep 2026 02:30:13 GMT  
		Size: 90.0 MB (90010243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b455a7ddc305f8378bdadb18a47db06d9f2b996b18796f3619317df49166c8e9`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.3` - unknown; unknown

```console
$ docker pull kong@sha256:5655715358346e1c2ca519655f55e8bf3eb1aad9087dac899e9d8bedb56a0df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba06e905d7ca86eaf23e190fba38ccf7095eb458b440bd54e3dfa6b70913c0f2`

```dockerfile
```

-	Layers:
	-	`sha256:6461131eda585e0078a68fe4d4d757f7423dcf77d9c0c75f81d5705f0cb6100f`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 5.5 MB (5455780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c39de36d779433d85fbd88b1b08f421c62b888aa126b5e90d9f924d2fd886541`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:3.9.3-ubuntu`

```console
$ docker pull kong@sha256:ca71c5591eabaf18de96d26b7eed5e2fdb590dac141e467a779c38017e5bdf81
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:3.9.3-ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:d68aa2f13f21d37d2bbfaf1c386c3662a24ce743a5bf79ebc5ade399a6a7f2e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120460763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8508cb6088b146c4270696ab20385b4a0c8808b1e9b0cf40e622a2ead0bd24cd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:27 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 02:32:27 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 02:32:27 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 02:32:27 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 02:32:27 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 02:32:27 GMT
ARG KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:32:27 GMT
ENV KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:32:27 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Wed, 09 Sep 2026 02:32:27 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Wed, 09 Sep 2026 02:32:52 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 02:32:52 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:32:52 GMT
USER kong
# Wed, 09 Sep 2026 02:32:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:32:52 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 02:32:52 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 02:32:52 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 02:32:52 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a3678ff9504e6834b8552ed507d6702a3eb58702f9b82d00bedeec10a4cd70`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe06051bdc7a165942d410c5188c5deca323eb85d7917062e090f2696b5e361`  
		Last Modified: Wed, 09 Sep 2026 02:33:11 GMT  
		Size: 90.7 MB (90696225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b02b50744aa9417d550835af240b7df96f1d1171aeaac792d00635025c16682`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.3-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:e4e7403aaa1f2b0664147df695622af9b9aa102d22b788b6dbe53fa2b239087d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3efd71fcf7e16bb01474963391628854cbeb633485cdda8627eeab13f5b64e5`

```dockerfile
```

-	Layers:
	-	`sha256:9671486dbe94286f57ec1dea38091dbb706c2d4a894d5022b46e27b067b62aca`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 5.4 MB (5448613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bef5e5e5d1518f3d1571322ad851433dde54bbeae2467e818d3df60958d47058`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:3.9.3-ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:d92642d98ad9c4ff7e40051fd7160f9163fd65cff3f5e04314718af3acabae22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118951543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d328d500d1b6a1ee38ffb7b0a35af4ea9f7403f20858e7876ddd777a29322506`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:29:27 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 02:29:27 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 02:29:27 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 02:29:27 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 02:29:27 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 02:29:27 GMT
ARG KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:29:27 GMT
ENV KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:29:27 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Wed, 09 Sep 2026 02:29:27 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Wed, 09 Sep 2026 02:29:53 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 02:29:53 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:29:53 GMT
USER kong
# Wed, 09 Sep 2026 02:29:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:29:53 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 02:29:53 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 02:29:53 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 02:29:53 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb57b97672d55e2cbf001b226b39b397430d0cacb0028f64c4c8035ca96c2229`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2791fb21c7a8ef0e4bf881eb0c21f98ba490268c8069750eae6cdb9f62f7a0`  
		Last Modified: Wed, 09 Sep 2026 02:30:13 GMT  
		Size: 90.0 MB (90010243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b455a7ddc305f8378bdadb18a47db06d9f2b996b18796f3619317df49166c8e9`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:3.9.3-ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:5655715358346e1c2ca519655f55e8bf3eb1aad9087dac899e9d8bedb56a0df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba06e905d7ca86eaf23e190fba38ccf7095eb458b440bd54e3dfa6b70913c0f2`

```dockerfile
```

-	Layers:
	-	`sha256:6461131eda585e0078a68fe4d4d757f7423dcf77d9c0c75f81d5705f0cb6100f`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 5.5 MB (5455780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c39de36d779433d85fbd88b1b08f421c62b888aa126b5e90d9f924d2fd886541`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:latest`

```console
$ docker pull kong@sha256:ca71c5591eabaf18de96d26b7eed5e2fdb590dac141e467a779c38017e5bdf81
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:d68aa2f13f21d37d2bbfaf1c386c3662a24ce743a5bf79ebc5ade399a6a7f2e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120460763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8508cb6088b146c4270696ab20385b4a0c8808b1e9b0cf40e622a2ead0bd24cd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:27 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 02:32:27 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 02:32:27 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 02:32:27 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 02:32:27 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 02:32:27 GMT
ARG KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:32:27 GMT
ENV KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:32:27 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Wed, 09 Sep 2026 02:32:27 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Wed, 09 Sep 2026 02:32:52 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 02:32:52 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:32:52 GMT
USER kong
# Wed, 09 Sep 2026 02:32:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:32:52 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 02:32:52 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 02:32:52 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 02:32:52 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a3678ff9504e6834b8552ed507d6702a3eb58702f9b82d00bedeec10a4cd70`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe06051bdc7a165942d410c5188c5deca323eb85d7917062e090f2696b5e361`  
		Last Modified: Wed, 09 Sep 2026 02:33:11 GMT  
		Size: 90.7 MB (90696225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b02b50744aa9417d550835af240b7df96f1d1171aeaac792d00635025c16682`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:latest` - unknown; unknown

```console
$ docker pull kong@sha256:e4e7403aaa1f2b0664147df695622af9b9aa102d22b788b6dbe53fa2b239087d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3efd71fcf7e16bb01474963391628854cbeb633485cdda8627eeab13f5b64e5`

```dockerfile
```

-	Layers:
	-	`sha256:9671486dbe94286f57ec1dea38091dbb706c2d4a894d5022b46e27b067b62aca`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 5.4 MB (5448613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bef5e5e5d1518f3d1571322ad851433dde54bbeae2467e818d3df60958d47058`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:latest` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:d92642d98ad9c4ff7e40051fd7160f9163fd65cff3f5e04314718af3acabae22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118951543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d328d500d1b6a1ee38ffb7b0a35af4ea9f7403f20858e7876ddd777a29322506`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:29:27 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 02:29:27 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 02:29:27 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 02:29:27 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 02:29:27 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 02:29:27 GMT
ARG KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:29:27 GMT
ENV KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:29:27 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Wed, 09 Sep 2026 02:29:27 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Wed, 09 Sep 2026 02:29:53 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 02:29:53 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:29:53 GMT
USER kong
# Wed, 09 Sep 2026 02:29:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:29:53 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 02:29:53 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 02:29:53 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 02:29:53 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb57b97672d55e2cbf001b226b39b397430d0cacb0028f64c4c8035ca96c2229`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2791fb21c7a8ef0e4bf881eb0c21f98ba490268c8069750eae6cdb9f62f7a0`  
		Last Modified: Wed, 09 Sep 2026 02:30:13 GMT  
		Size: 90.0 MB (90010243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b455a7ddc305f8378bdadb18a47db06d9f2b996b18796f3619317df49166c8e9`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:latest` - unknown; unknown

```console
$ docker pull kong@sha256:5655715358346e1c2ca519655f55e8bf3eb1aad9087dac899e9d8bedb56a0df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba06e905d7ca86eaf23e190fba38ccf7095eb458b440bd54e3dfa6b70913c0f2`

```dockerfile
```

-	Layers:
	-	`sha256:6461131eda585e0078a68fe4d4d757f7423dcf77d9c0c75f81d5705f0cb6100f`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 5.5 MB (5455780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c39de36d779433d85fbd88b1b08f421c62b888aa126b5e90d9f924d2fd886541`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json

## `kong:ubuntu`

```console
$ docker pull kong@sha256:ca71c5591eabaf18de96d26b7eed5e2fdb590dac141e467a779c38017e5bdf81
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:ubuntu` - linux; amd64

```console
$ docker pull kong@sha256:d68aa2f13f21d37d2bbfaf1c386c3662a24ce743a5bf79ebc5ade399a6a7f2e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120460763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8508cb6088b146c4270696ab20385b4a0c8808b1e9b0cf40e622a2ead0bd24cd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:32:27 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 02:32:27 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 02:32:27 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 02:32:27 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 02:32:27 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 02:32:27 GMT
ARG KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:32:27 GMT
ENV KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:32:27 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Wed, 09 Sep 2026 02:32:27 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Wed, 09 Sep 2026 02:32:52 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 02:32:52 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:32:52 GMT
USER kong
# Wed, 09 Sep 2026 02:32:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:32:52 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 02:32:52 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 02:32:52 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 02:32:52 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a3678ff9504e6834b8552ed507d6702a3eb58702f9b82d00bedeec10a4cd70`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe06051bdc7a165942d410c5188c5deca323eb85d7917062e090f2696b5e361`  
		Last Modified: Wed, 09 Sep 2026 02:33:11 GMT  
		Size: 90.7 MB (90696225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b02b50744aa9417d550835af240b7df96f1d1171aeaac792d00635025c16682`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:e4e7403aaa1f2b0664147df695622af9b9aa102d22b788b6dbe53fa2b239087d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3efd71fcf7e16bb01474963391628854cbeb633485cdda8627eeab13f5b64e5`

```dockerfile
```

-	Layers:
	-	`sha256:9671486dbe94286f57ec1dea38091dbb706c2d4a894d5022b46e27b067b62aca`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 5.4 MB (5448613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bef5e5e5d1518f3d1571322ad851433dde54bbeae2467e818d3df60958d47058`  
		Last Modified: Wed, 09 Sep 2026 02:33:09 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:ubuntu` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:d92642d98ad9c4ff7e40051fd7160f9163fd65cff3f5e04314718af3acabae22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (118951543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d328d500d1b6a1ee38ffb7b0a35af4ea9f7403f20858e7876ddd777a29322506`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:29:27 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Wed, 09 Sep 2026 02:29:27 GMT
ARG ASSET=ce
# Wed, 09 Sep 2026 02:29:27 GMT
ENV ASSET=ce
# Wed, 09 Sep 2026 02:29:27 GMT
ARG EE_PORTS
# Wed, 09 Sep 2026 02:29:27 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Wed, 09 Sep 2026 02:29:27 GMT
ARG KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:29:27 GMT
ENV KONG_VERSION=3.9.3
# Wed, 09 Sep 2026 02:29:27 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Wed, 09 Sep 2026 02:29:27 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Wed, 09 Sep 2026 02:29:53 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Wed, 09 Sep 2026 02:29:53 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:29:53 GMT
USER kong
# Wed, 09 Sep 2026 02:29:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:29:53 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Wed, 09 Sep 2026 02:29:53 GMT
STOPSIGNAL SIGQUIT
# Wed, 09 Sep 2026 02:29:53 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Wed, 09 Sep 2026 02:29:53 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb57b97672d55e2cbf001b226b39b397430d0cacb0028f64c4c8035ca96c2229`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2791fb21c7a8ef0e4bf881eb0c21f98ba490268c8069750eae6cdb9f62f7a0`  
		Last Modified: Wed, 09 Sep 2026 02:30:13 GMT  
		Size: 90.0 MB (90010243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b455a7ddc305f8378bdadb18a47db06d9f2b996b18796f3619317df49166c8e9`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:ubuntu` - unknown; unknown

```console
$ docker pull kong@sha256:5655715358346e1c2ca519655f55e8bf3eb1aad9087dac899e9d8bedb56a0df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba06e905d7ca86eaf23e190fba38ccf7095eb458b440bd54e3dfa6b70913c0f2`

```dockerfile
```

-	Layers:
	-	`sha256:6461131eda585e0078a68fe4d4d757f7423dcf77d9c0c75f81d5705f0cb6100f`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 5.5 MB (5455780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c39de36d779433d85fbd88b1b08f421c62b888aa126b5e90d9f924d2fd886541`  
		Last Modified: Wed, 09 Sep 2026 02:30:11 GMT  
		Size: 16.4 KB (16358 bytes)  
		MIME: application/vnd.in-toto+json
