## `kong:latest`

```console
$ docker pull kong@sha256:2a8cf3b110cdaba1cb00adc665b8635ed1fc75c907f7a4298613c68e4976de0a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:8a639948bf940868c8b4bed32fccc53d27fdd5766dbc8702b65cacbec48dcfd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120450334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fffbff57cf7c06b955616cb7ed974133c59778507ec624be4b300ba1c2cdb4b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:23:42 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 18 Aug 2026 19:23:42 GMT
ARG ASSET=ce
# Tue, 18 Aug 2026 19:23:42 GMT
ENV ASSET=ce
# Tue, 18 Aug 2026 19:23:42 GMT
ARG EE_PORTS
# Tue, 18 Aug 2026 19:23:42 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 18 Aug 2026 19:23:42 GMT
ARG KONG_VERSION=3.9.3
# Tue, 18 Aug 2026 19:23:42 GMT
ENV KONG_VERSION=3.9.3
# Tue, 18 Aug 2026 19:23:42 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 18 Aug 2026 19:23:42 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 18 Aug 2026 19:24:02 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 18 Aug 2026 19:24:02 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:24:02 GMT
USER kong
# Tue, 18 Aug 2026 19:24:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 19:24:02 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 18 Aug 2026 19:24:02 GMT
STOPSIGNAL SIGQUIT
# Tue, 18 Aug 2026 19:24:02 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 18 Aug 2026 19:24:02 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecab10d754653c2aff3bba74e98440aa634297d185610996ef34a77c8c927848`  
		Last Modified: Tue, 18 Aug 2026 19:24:19 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c48f886892248a857819e0bf913f428636ee14a2c4bcda1045adfb11b8f630`  
		Last Modified: Tue, 18 Aug 2026 19:24:21 GMT  
		Size: 90.7 MB (90696240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b28a708c649728c6a03712c0cbb2454cb89058f5068c25eca2ff3fd1f8206396`  
		Last Modified: Tue, 18 Aug 2026 19:24:19 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:latest` - unknown; unknown

```console
$ docker pull kong@sha256:a182ba69adda7e3fd4c1c849d7b312d2dbd0def71b0fb49b4e8c3e6281254c78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f28fc33f2e3a9c8ae260e3dbcbec24699dd470541d9f3500b610b5a306e1c64a`

```dockerfile
```

-	Layers:
	-	`sha256:720d6276e0bca33ae2b1c63672c917ca30001d16e6d8c112b91bb570e21d094f`  
		Last Modified: Tue, 18 Aug 2026 19:24:19 GMT  
		Size: 5.4 MB (5448599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36c758321fd020b8521ae96ed62633c6e5c09a2c089f8ae4819607d624bff3a8`  
		Last Modified: Tue, 18 Aug 2026 19:24:19 GMT  
		Size: 16.2 KB (16218 bytes)  
		MIME: application/vnd.in-toto+json

### `kong:latest` - linux; arm64 variant v8

```console
$ docker pull kong@sha256:15c06f1fbbc00712f90df67b265f73ec3663a9044ffe455d37564bca2270bc0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118888068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3d4a86f28a65ba6f0eb04972922c9305e78de999a136847dfad0f581532bb07`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:23:46 GMT
LABEL maintainer=Kong Docker Maintainers <docker@konghq.com> (@team-gateway-bot)
# Tue, 18 Aug 2026 19:23:46 GMT
ARG ASSET=ce
# Tue, 18 Aug 2026 19:23:46 GMT
ENV ASSET=ce
# Tue, 18 Aug 2026 19:23:46 GMT
ARG EE_PORTS
# Tue, 18 Aug 2026 19:23:46 GMT
COPY kong.deb /tmp/kong.deb # buildkit
# Tue, 18 Aug 2026 19:23:46 GMT
ARG KONG_VERSION=3.9.3
# Tue, 18 Aug 2026 19:23:46 GMT
ENV KONG_VERSION=3.9.3
# Tue, 18 Aug 2026 19:23:46 GMT
ARG KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872
# Tue, 18 Aug 2026 19:23:46 GMT
ARG KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
# Tue, 18 Aug 2026 19:24:11 GMT
# ARGS: ASSET=ce EE_PORTS= KONG_VERSION=3.9.3 KONG_AMD64_SHA=3b0bcaf6701b02c10fc2afd692f8e4411b981f0ed1b765f3c3b0f036fe373872 KONG_ARM64_SHA=fd62644015296c70f29802da287dec8f7d46ac0715f844e52c84a0df6b479763
RUN set -ex;     arch=$(dpkg --print-architecture);     case "${arch}" in       amd64) KONG_SHA256=$KONG_AMD64_SHA ;;       arm64) KONG_SHA256=$KONG_ARM64_SHA ;;     esac;     apt-get update     && if [ "$ASSET" = "ce" ] ; then       apt-get install -y --no-install-recommends curl ca-certificates       && UBUNTU_CODENAME=$(cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2)       && KONG_REPO=$(echo ${KONG_VERSION%.*} | sed 's/\.//')       && curl -fL https://packages.konghq.com/public/gateway-$KONG_REPO/deb/ubuntu/pool/$UBUNTU_CODENAME/main/k/ko/kong_$KONG_VERSION/kong_${KONG_VERSION}_$arch.deb -o /tmp/kong.deb       && apt-get purge -y curl       && echo "$KONG_SHA256  /tmp/kong.deb" | sha256sum -c -       || exit 1;     else       apt-get upgrade -y ;     fi;     apt-get install -y --no-install-recommends unzip git     && apt install --yes --no-install-recommends /tmp/kong.deb     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/kong.deb     && chown kong:0 /usr/local/bin/kong     && chown -R kong:0 /usr/local/kong     && ln -sf /usr/local/openresty/bin/resty /usr/local/bin/resty     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/luajit     && ln -sf /usr/local/openresty/luajit/bin/luajit /usr/local/bin/lua     && ln -sf /usr/local/openresty/nginx/sbin/nginx /usr/local/bin/nginx     && if [ "$ASSET" = "ce" ] ; then       kong version ;     fi # buildkit
# Tue, 18 Aug 2026 19:24:12 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:24:12 GMT
USER kong
# Tue, 18 Aug 2026 19:24:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 19:24:12 GMT
EXPOSE map[8000/tcp:{} 8001/tcp:{} 8443/tcp:{} 8444/tcp:{}]
# Tue, 18 Aug 2026 19:24:12 GMT
STOPSIGNAL SIGQUIT
# Tue, 18 Aug 2026 19:24:12 GMT
HEALTHCHECK &{["CMD-SHELL" "kong health"] "10s" "10s" "0s" "0s" '\n'}
# Tue, 18 Aug 2026 19:24:12 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4646b933684569fbed1f5f85c133e6d1f6ac94852980e745c86325954f8fb60b`  
		Last Modified: Tue, 18 Aug 2026 19:24:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aebe27cb635f7e226291906bdb4f6865d51ec44b80a2e2a01a1ada1ff4c2dc12`  
		Last Modified: Tue, 18 Aug 2026 19:24:32 GMT  
		Size: 90.0 MB (89999548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4a533cc66f56ee603c3b9755940c6e198f6ad466a042387bfdcdc149bb990bf`  
		Last Modified: Tue, 18 Aug 2026 19:24:30 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kong:latest` - unknown; unknown

```console
$ docker pull kong@sha256:4c4fe65570d3a8257878f671e0f3093abc62899d71cfab46a1ea51e735cc3902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5472123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b99547467a5e208e99deeb8b07de9cc2f7e0a69fcca9d5e2cae6e5f4097bddf`

```dockerfile
```

-	Layers:
	-	`sha256:46a7087d460477f990572bafe03f04cd7da2b710169887526fb136d044df1ecd`  
		Last Modified: Tue, 18 Aug 2026 19:24:30 GMT  
		Size: 5.5 MB (5455766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86f693d18149e6b120126312e33cf35cf622efb5b5acfb1ba1923e453d9c6dd5`  
		Last Modified: Tue, 18 Aug 2026 19:24:30 GMT  
		Size: 16.4 KB (16357 bytes)  
		MIME: application/vnd.in-toto+json
