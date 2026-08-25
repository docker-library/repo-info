## `emqx:latest`

```console
$ docker pull emqx@sha256:11efadd3e7ae665d39a7a7838ac0c783bb7bb80abb3c0efcc8fd8f80c45b0209
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `emqx:latest` - linux; amd64

```console
$ docker pull emqx@sha256:da0c8f724b964bc2763aa4558756319860f8d14c6cbdcc20eb29daa5d1400b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108420022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6c108b5d0a3e20cd0c63246343adf9de5792a3b2ff02e9511f441c376875b2`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:16:17 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 25 Aug 2026 00:16:17 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 25 Aug 2026 00:16:17 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 25 Aug 2026 00:16:17 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 25 Aug 2026 00:16:17 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 25 Aug 2026 00:16:17 GMT
WORKDIR /opt/emqx
# Tue, 25 Aug 2026 00:16:17 GMT
USER emqx
# Tue, 25 Aug 2026 00:16:17 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 25 Aug 2026 00:16:17 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 25 Aug 2026 00:16:17 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 25 Aug 2026 00:16:17 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:16:17 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a20ea6b8242f04bc230907069581c8af445c52c6be346d3f66544dd941bc0d5`  
		Last Modified: Tue, 25 Aug 2026 00:16:32 GMT  
		Size: 78.6 MB (78626299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ad037ac7b177326d46362a0d3d27436ee2ee29d940b4e66ff664d2aadc29f2`  
		Last Modified: Tue, 25 Aug 2026 00:16:30 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:latest` - unknown; unknown

```console
$ docker pull emqx@sha256:06113f093ca85e47f88232585929926fa76efef81544f024e16a71ebb2a6c0a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a93815a5e5827c8946b1c1a9d2ba445933a9d02ee6951942fb50e1d9a7f10c`

```dockerfile
```

-	Layers:
	-	`sha256:33cad876deefb707396d9611fd58cb3feeba24c8733418db3600d9f50454de8b`  
		Last Modified: Tue, 25 Aug 2026 00:16:30 GMT  
		Size: 2.4 MB (2403957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e208bad2f86c6be0d23f490e59781cb80b0df98e63bfe67e1152f83ac18640b`  
		Last Modified: Tue, 25 Aug 2026 00:16:29 GMT  
		Size: 12.5 KB (12486 bytes)  
		MIME: application/vnd.in-toto+json

### `emqx:latest` - linux; arm64 variant v8

```console
$ docker pull emqx@sha256:9535a506376c3f6fa7a6be99cbb27d4db5039e8da5478eb23f22947f3be43607
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106693642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30419b585090a92e8c8dd912bbe70f2c1962c9b9543ebf22376c6236b0a1a4ea`
-	Entrypoint: `["\/usr\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["\/opt\/emqx\/bin\/emqx","foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:15:47 GMT
ENV EMQX_VERSION=5.8.8
# Tue, 25 Aug 2026 00:15:47 GMT
ENV AMD64_SHA256=cf48d49f80db3d447a8015c222ef7d4686289f799695c7740c153ae6b0185523
# Tue, 25 Aug 2026 00:15:47 GMT
ENV ARM64_SHA256=7ff020a2b9acc488bb26578e966ef212b75b8418fd8d0b7ec193f9af411e1e68
# Tue, 25 Aug 2026 00:15:47 GMT
ENV LC_ALL=C.UTF-8 LANG=C.UTF-8
# Tue, 25 Aug 2026 00:15:47 GMT
RUN set -eu;     apt-get update;     apt-get install -y --no-install-recommends ca-certificates procps curl;     arch=$(dpkg --print-architecture);     if [ ${arch} = "amd64" ]; then sha256="$AMD64_SHA256"; fi;     if [ ${arch} = "arm64" ]; then sha256="$ARM64_SHA256"; fi;     . /etc/os-release;     pkg="emqx-${EMQX_VERSION}-${ID}${VERSION_ID}-${arch}.tar.gz";     curl -f -O -L https://www.emqx.com/en/downloads/broker/v${EMQX_VERSION}/${pkg};     echo "$sha256 *$pkg" | sha256sum -c;     mkdir /opt/emqx;     tar zxf $pkg -C /opt/emqx;     find /opt/emqx -name 'swagger*.js.map' -exec rm {} +;     ln -s /opt/emqx/bin/* /usr/local/bin/;     groupadd -r -g 1000 emqx;     useradd -r -m -u 1000 -g emqx emqx;     chown -R emqx:emqx /opt/emqx;     rm -f $pkg;     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* # buildkit
# Tue, 25 Aug 2026 00:15:47 GMT
WORKDIR /opt/emqx
# Tue, 25 Aug 2026 00:15:47 GMT
USER emqx
# Tue, 25 Aug 2026 00:15:47 GMT
VOLUME [/opt/emqx/log /opt/emqx/data]
# Tue, 25 Aug 2026 00:15:47 GMT
EXPOSE map[18083/tcp:{} 1883/tcp:{} 4370/tcp:{} 5369/tcp:{} 8083/tcp:{} 8084/tcp:{} 8883/tcp:{}]
# Tue, 25 Aug 2026 00:15:47 GMT
COPY docker-entrypoint.sh /usr/bin/ # buildkit
# Tue, 25 Aug 2026 00:15:47 GMT
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 00:15:47 GMT
CMD ["/opt/emqx/bin/emqx" "foreground"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1bacc94f80147d2c24233023cd03a2445da9368dd304f1b4e27e80b2c3d0861`  
		Last Modified: Tue, 25 Aug 2026 00:16:02 GMT  
		Size: 76.5 MB (76532997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6403f3c25f50acf648a9f1ac67d83333a5d595fe11a13e4f44904cff80bda65b`  
		Last Modified: Tue, 25 Aug 2026 00:16:00 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `emqx:latest` - unknown; unknown

```console
$ docker pull emqx@sha256:e5fa86a8c32a758f1421e9ea767b7042f867f530f8a7afcfa322f917279fb9e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2416828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d018bb4162ee5d6c579687261bbd7b3b38684efc4534ce90d80f414b5eb8a8`

```dockerfile
```

-	Layers:
	-	`sha256:82cc5af44284ea8ec6c216349d0990d1057365027877c6f3a854ef57a7d53a1f`  
		Last Modified: Tue, 25 Aug 2026 00:16:00 GMT  
		Size: 2.4 MB (2404238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d32592c19de8fb9280216c4982ad483b7d07a6fe6d7a0fe59abf5b389fb27106`  
		Last Modified: Tue, 25 Aug 2026 00:16:00 GMT  
		Size: 12.6 KB (12590 bytes)  
		MIME: application/vnd.in-toto+json
