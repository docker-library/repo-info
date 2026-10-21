## `api-firewall:latest`

```console
$ docker pull api-firewall@sha256:1b84410403deb80499a4f47f0eaf2aea24b248d141ed24d19707f38cfa8d50a3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `api-firewall:latest` - linux; amd64

```console
$ docker pull api-firewall@sha256:a47737795165ad83c2a8eb44fca70d44079e47b9e76a2bc589c8f3fea1518f56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18485324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538533751f4e107f53b2ce0476feaf8e2397a95628153ae4c5019cb98a71715b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["api-firewall"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:04:48 GMT
ENV APIFW_PATH=/opt/api-firewall
# Wed, 21 Oct 2026 21:04:48 GMT
ENV PATH=/opt/api-firewall:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:04:48 GMT
RUN set -eux;     adduser -u 1000 -H -h /opt -D -s /bin/sh api-firewall # buildkit
# Wed, 21 Oct 2026 21:04:48 GMT
ENV APIFIREWALL_VERSION=v0.9.6
# Wed, 21 Oct 2026 21:04:50 GMT
RUN set -eux;         apk add --no-cache wget;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-amd64-musl.tar.gz";             sha256='c533716f7dd3db86a8b70879b83fe14292c8f5b9d3974daf20272317ac6e9ffc';             ;;         'aarch64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-arm64-musl.tar.gz";             sha256='274579a052a5ff966430ab279f5990a83839492817433f2ae5860abc0f4f7a5f';             ;;         'x86')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-386-musl.tar.gz";             sha256='14ba27c545db203673269e02cf8c02edb06eddd71d6910f44e417a13a3ac664b';             ;;         *)             echo >&2 "error: current architecture ($arch) does not have a corresponding API-Firewall binary release";             exit 1;             ;;     esac;         wget -O api-firewall.tar.gz "$url";     echo "$sha256 *api-firewall.tar.gz" | sha256sum -c;         mkdir -p "$APIFW_PATH";     tar -xzf api-firewall.tar.gz -C "$APIFW_PATH" --strip-components 1;     rm api-firewall.tar.gz;         chmod 755 $APIFW_PATH/api-firewall;         api-firewall -v # buildkit
# Wed, 21 Oct 2026 21:04:50 GMT
COPY docker-entrypoint.sh /opt/api-firewall/ # buildkit
# Wed, 21 Oct 2026 21:04:50 GMT
USER api-firewall
# Wed, 21 Oct 2026 21:04:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:04:50 GMT
CMD ["api-firewall"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e355f4a92e75e00c1d626f05c979f2bb3c1dfae7143b673b0e475c637bb20f9`  
		Last Modified: Wed, 21 Oct 2026 21:04:56 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02ddc6738095a9ead58002ac6634248fae6991f8a6391b2d1073725e4ac4e4e5`  
		Last Modified: Wed, 21 Oct 2026 21:04:57 GMT  
		Size: 14.6 MB (14631851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f19620a439f09d10e6efba1350751ffed5610fd361ec4c1ce21009a2438551ba`  
		Last Modified: Wed, 21 Oct 2026 21:04:56 GMT  
		Size: 351.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `api-firewall:latest` - unknown; unknown

```console
$ docker pull api-firewall@sha256:ea47dc08e764ea8935ec5c16a282120cf1f4bfb9ae667ef9cf97d771ecce2c09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 KB (184145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39085b6d37e8a1661208b7d0ddd07e70635cdd82a199ce7f024c7d5bcf6aaae1`

```dockerfile
```

-	Layers:
	-	`sha256:6058f89cc931ffc1f2837ff8d14fc10ab8807ac827b61490f1dcbd24d66f393d`  
		Last Modified: Wed, 21 Oct 2026 21:04:56 GMT  
		Size: 170.6 KB (170642 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4dfd1d84ac6cce3266749ca571158e28af8843af910b2dc76e2b55c2a6acccc4`  
		Last Modified: Wed, 21 Oct 2026 21:04:56 GMT  
		Size: 13.5 KB (13503 bytes)  
		MIME: application/vnd.in-toto+json

### `api-firewall:latest` - linux; arm64 variant v8

```console
$ docker pull api-firewall@sha256:5530f456316efbfa35f5e4946241dfcf6e0630b856edd071568a71162b326ebb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17506681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72bcee5a568708661dc2d3b43322b0e21d56c88152b9fa560d91fc5c911eb4e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["api-firewall"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:04:12 GMT
ENV APIFW_PATH=/opt/api-firewall
# Wed, 21 Oct 2026 21:04:12 GMT
ENV PATH=/opt/api-firewall:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:04:12 GMT
RUN set -eux;     adduser -u 1000 -H -h /opt -D -s /bin/sh api-firewall # buildkit
# Wed, 21 Oct 2026 21:04:12 GMT
ENV APIFIREWALL_VERSION=v0.9.6
# Wed, 21 Oct 2026 21:04:13 GMT
RUN set -eux;         apk add --no-cache wget;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-amd64-musl.tar.gz";             sha256='c533716f7dd3db86a8b70879b83fe14292c8f5b9d3974daf20272317ac6e9ffc';             ;;         'aarch64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-arm64-musl.tar.gz";             sha256='274579a052a5ff966430ab279f5990a83839492817433f2ae5860abc0f4f7a5f';             ;;         'x86')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-386-musl.tar.gz";             sha256='14ba27c545db203673269e02cf8c02edb06eddd71d6910f44e417a13a3ac664b';             ;;         *)             echo >&2 "error: current architecture ($arch) does not have a corresponding API-Firewall binary release";             exit 1;             ;;     esac;         wget -O api-firewall.tar.gz "$url";     echo "$sha256 *api-firewall.tar.gz" | sha256sum -c;         mkdir -p "$APIFW_PATH";     tar -xzf api-firewall.tar.gz -C "$APIFW_PATH" --strip-components 1;     rm api-firewall.tar.gz;         chmod 755 $APIFW_PATH/api-firewall;         api-firewall -v # buildkit
# Wed, 21 Oct 2026 21:04:13 GMT
COPY docker-entrypoint.sh /opt/api-firewall/ # buildkit
# Wed, 21 Oct 2026 21:04:13 GMT
USER api-firewall
# Wed, 21 Oct 2026 21:04:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:04:13 GMT
CMD ["api-firewall"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6cc1fe614200a6441e06a3487731503efa17802e4b318b9bb2866d2b81dd659`  
		Last Modified: Wed, 21 Oct 2026 21:04:20 GMT  
		Size: 896.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c48288cc5624f08e00504a3f87cad9fe11ad5651a9e70d0c35d5f3bf6a123b17`  
		Last Modified: Wed, 21 Oct 2026 21:04:20 GMT  
		Size: 13.3 MB (13315941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eed57bfc4a81e30f2eebd149012726200c06d5e08350c84f4c7b5a0ed06173d`  
		Last Modified: Wed, 21 Oct 2026 21:04:20 GMT  
		Size: 350.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `api-firewall:latest` - unknown; unknown

```console
$ docker pull api-firewall@sha256:e042726a60218ebc6ef3ccb6a7e5ce2dc861d707d819c015944adccc21ce2735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.6 KB (183622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2f1df21ecb5f54817baa7bb2c606cbf33b3bcb2d2765c06a3385e04495fb516`

```dockerfile
```

-	Layers:
	-	`sha256:933cbad71a87c5787c8b48442a48e2bdb510d4db0366efab0a14f555615574ef`  
		Last Modified: Wed, 21 Oct 2026 21:04:20 GMT  
		Size: 170.0 KB (170024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21d632bf37b21837888dc034c09a50af8907f7a72dad6f6949b85322f3f03761`  
		Last Modified: Wed, 21 Oct 2026 21:04:20 GMT  
		Size: 13.6 KB (13598 bytes)  
		MIME: application/vnd.in-toto+json

### `api-firewall:latest` - linux; 386

```console
$ docker pull api-firewall@sha256:c958cc9865a94a757f7014fb9c84da94d58809f07efc138e9ef6f725252965ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16706813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65024cd36009c4ceb3ea1545bec39abb8a0fde07cb0eed30158e87fc0a4200b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["api-firewall"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:04:37 GMT
ENV APIFW_PATH=/opt/api-firewall
# Wed, 21 Oct 2026 21:04:37 GMT
ENV PATH=/opt/api-firewall:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:04:37 GMT
RUN set -eux;     adduser -u 1000 -H -h /opt -D -s /bin/sh api-firewall # buildkit
# Wed, 21 Oct 2026 21:04:37 GMT
ENV APIFIREWALL_VERSION=v0.9.6
# Wed, 21 Oct 2026 21:04:39 GMT
RUN set -eux;         apk add --no-cache wget;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-amd64-musl.tar.gz";             sha256='c533716f7dd3db86a8b70879b83fe14292c8f5b9d3974daf20272317ac6e9ffc';             ;;         'aarch64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-arm64-musl.tar.gz";             sha256='274579a052a5ff966430ab279f5990a83839492817433f2ae5860abc0f4f7a5f';             ;;         'x86')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-386-musl.tar.gz";             sha256='14ba27c545db203673269e02cf8c02edb06eddd71d6910f44e417a13a3ac664b';             ;;         *)             echo >&2 "error: current architecture ($arch) does not have a corresponding API-Firewall binary release";             exit 1;             ;;     esac;         wget -O api-firewall.tar.gz "$url";     echo "$sha256 *api-firewall.tar.gz" | sha256sum -c;         mkdir -p "$APIFW_PATH";     tar -xzf api-firewall.tar.gz -C "$APIFW_PATH" --strip-components 1;     rm api-firewall.tar.gz;         chmod 755 $APIFW_PATH/api-firewall;         api-firewall -v # buildkit
# Wed, 21 Oct 2026 21:04:39 GMT
COPY docker-entrypoint.sh /opt/api-firewall/ # buildkit
# Wed, 21 Oct 2026 21:04:39 GMT
USER api-firewall
# Wed, 21 Oct 2026 21:04:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:04:39 GMT
CMD ["api-firewall"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7a4a4bf6a9fc3f37d66df306d555fe322b6c02d37ff43250062d6bbd862be0`  
		Last Modified: Wed, 21 Oct 2026 21:04:45 GMT  
		Size: 896.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e40141ff0037b7cdec0424e0e6b543444a8e5f7ff40166d9c2787268b296e59f`  
		Last Modified: Wed, 21 Oct 2026 21:04:46 GMT  
		Size: 13.0 MB (13028255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d3d8d2edc5cc37d1e8f7425191b227c94fa27589b71867246bdea36559d2b89`  
		Last Modified: Wed, 21 Oct 2026 21:04:45 GMT  
		Size: 355.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `api-firewall:latest` - unknown; unknown

```console
$ docker pull api-firewall@sha256:d316e342486e6227948bdf785dc5019d42b8d45e1fb0eb7d178614436071eacf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 KB (184106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e963ffef5edd39b7d82ceef5ad21df2f936aa4dbaac0b3ff9e214e6f8d93bf7`

```dockerfile
```

-	Layers:
	-	`sha256:e2135cca8797f9d44a080003694aee1c264d0fe56ebbfef7d6b6c88b87c28dfb`  
		Last Modified: Wed, 21 Oct 2026 21:04:46 GMT  
		Size: 170.6 KB (170627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ed987c400d655a3bcd523614d3144528b83fb88a053544fcc4bb53900bd2464`  
		Last Modified: Wed, 21 Oct 2026 21:04:45 GMT  
		Size: 13.5 KB (13479 bytes)  
		MIME: application/vnd.in-toto+json
