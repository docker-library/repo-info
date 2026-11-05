## `nats:alpine`

```console
$ docker pull nats@sha256:afae2fdbe2e326c65e1246cb83b9d05d319188734f3bd577ac8072daae78a10f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:alpine` - linux; amd64

```console
$ docker pull nats@sha256:89c5c61b5969261e05106a98e465ccb85c7f4bf4e94c1e70786c189759d79e7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11543969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eaf1cb5e75ad9cc23d8833bfc2dbf9a0b763d89d944a253af5f560982c4c6d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:38 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:56:38 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:56:38 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:56:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:56:38 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:278547e819af5eba5f3087c6e68dd48d3bc0221b7b31df0bd98ef366993cabf1`  
		Last Modified: Thu, 05 Nov 2026 18:56:43 GMT  
		Size: 7.7 MB (7748626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd9e4cfb447ee547d5eca07c3362c2c892ec74b52afa8cd466f4ce11d97be09`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2380c5ca2327626ae27b26e6535bdb795606fd96f4b7d4b81983f3a910ae6b28`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:c8187bcedd32f23136c7fac564faaf63e763a60a4e6a4c456f32400fbf36478d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64cf706f6c70951bd91806f6f098d6b4c827a2bfcf79b66643d55d0abf133b0c`

```dockerfile
```

-	Layers:
	-	`sha256:41d95bc8b4b21884d7889e131b59dd656756d037e1ad19086a54e1934a2cbbd5`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:205da278933ffd535e2e3499be794a80a599a6847a502dbef56e7d12da9f767d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11001726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd8c337c59b9cef05508aebb6fac94e3df4270c984b99decdb44011b9cf042f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:07 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:19:07 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:19:07 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:19:07 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:19:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:19:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:19:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c122c850f49cc9e9a7e26cfbe3d7de30cb1a342f7573cc1afe181dee2e9df3`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 7.5 MB (7499223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a44966c27ff282bf556cd87bc214c9261e20666f81f7fbd3a6ade04bb04f43`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1dc9a87049523265dd83c17bacdc82c7050d04ba65c7cec00d90860d7bace5`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:d7f535b03a7136113aef8c8bd27b59ef3c290a2750bb5b0fa38ab38fc983c547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42247081bb74aea8f21ac060f8c0f3a0ea558e40e9d837aa6793c2dc8acf0af4`

```dockerfile
```

-	Layers:
	-	`sha256:7c66a243bd72c94f2bd9ce7601c56ca7b5236bd945e891aa35d2fd514ee4a5be`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:ba9006a0a8413a4989a7dbef283debf0fd1bb0833c2da673d5f010bf6aa18135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10703411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fc7b8f23fbdaf57319e995461668b666935bc69a6341277d3c4b790b63161ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:50 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:18:50 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:18:50 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:18:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:18:50 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df07bf8f7ca5db64d9184a7f11627c9c0c2bec13c35c12014714a0ef89aea1c7`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 7.5 MB (7486974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385905d6ff25d4f7a460df8af5a53e78549c389c0c93aef4dab5031dbc581bc4`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bdcc1d96d2dc891b2a34b81412f0959fd8d720cf0eeef35e6de0c3016cb577a`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:5f3dd7867d90aa103cfc056ba3b2909c8c34077304857a9a1264fcf36e0d9746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedbf3fbfc0a84688bfe2baa49956d8398f801d3349116dbb756f381e56fce70`

```dockerfile
```

-	Layers:
	-	`sha256:8f1cef59332b8724a45cd71e510505364d47805852772f3db028e38489fbd9cf`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:20196671f18d72f951ae7c6877cdbad3a6fee55a4b0844b76eb152fa49fbee61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11182175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96d815945a57ca20dae2dbbcbaac196a56ccf1914d9b95595d731f5b475d65c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:13 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:52:13 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:52:13 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:52:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:52:13 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e17e660534e3ca63b76b524137203098c007d725e60d1f2265f721ded951441e`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 7.1 MB (7053823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b50346b9c35fca4a0d7edb441144554706ea0f43be601d2bea86eef8f70e06a`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9c2517dcaaf43ad04a2bb57e1bf9f6dab884ada10b01ac210f8fe39cc832a1`  
		Last Modified: Thu, 05 Nov 2026 18:52:17 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:bd540ac9f303409e551b1e07fccb3488686ab324a20fd5543703d57a0605da1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d634a274a99a65b2a76fc868ca4212cf7233dd04e877f4aa4bf2d6e37514a2`

```dockerfile
```

-	Layers:
	-	`sha256:5825c5f9a01a421c40ea91537e3074ef1cb06cd2731c6ba23e69a72d9afe8e0a`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:69c44ce3dd1cdfaf9fd10c5526385408160657c60557ae6e173f85bd31ed62b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10851392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7cef9f419aafa4eb29a67988cbcded653624ef4bac27c08dcf25e8347e90692`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 20:44:11 GMT
ADD alpine-minirootfs-3.22.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:44:11 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:34:22 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 21:34:22 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 21:34:22 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 21:34:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 21:34:24 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 21:34:24 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 21:34:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:34:24 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:4be1a473c77a45524d8389eeb78602a090c801a1ec4c4187ac5060cd906c4712`  
		Last Modified: Thu, 05 Nov 2026 20:44:20 GMT  
		Size: 3.7 MB (3725514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b62bccc22e1c10511df2fd608dd18489f10158170e6d355d54b691c429be9c04`  
		Last Modified: Thu, 05 Nov 2026 21:34:30 GMT  
		Size: 7.1 MB (7124909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d893e95c9beb820dbe1ec735cc12ec01f0e70faeb80b2e1ac28dba21b9bd10b`  
		Last Modified: Thu, 05 Nov 2026 21:34:30 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ea606f5964bf888e1b5d19f9092fac2ea309dbac7c0c9445b80ecead1c3269`  
		Last Modified: Thu, 05 Nov 2026 21:34:30 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:be685455896a879fa3aca6d3afb607b773d0e43b0b18c0a95620d2f4d2ef9466
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f19270e076967c4f3239a11527f25c5d2bcff065ac20fd8f404a8093ac7d9ddf`

```dockerfile
```

-	Layers:
	-	`sha256:c74d1bcdbc95bdfbe064000a1b120e8a7db421d6af6a19aaf9230d9ef9c4fa27`  
		Last Modified: Thu, 05 Nov 2026 21:34:30 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; s390x

```console
$ docker pull nats@sha256:433d6bd1eb645f3c90df9de45091afdc45fd42c68e0107633ae0b41d74ee0f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11186778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3704dd01964bbc5af23ad2e4d3a3688251f47650565d133e5ed94d314bd82332`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:49 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:16:49 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:16:49 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:16:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:49 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38f97790eb2e376cb2b2bf41344e5e48968a9aff8ad01c91af94307feb37e42`  
		Last Modified: Thu, 05 Nov 2026 18:16:58 GMT  
		Size: 7.5 MB (7542604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee79203b72080cac05d8bfe93d14650aa9f7e6fc24b864c6d101817309788a62`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613a76bdffadea2f0e5fd82145523bea4f32e04954357b4e2cc1d903d0e5404c`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:8f5e7085be204073d7639c3b1958feec99bbce3bf1c16ee9193bedfdc2309ac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7f552b396da76b829250f24580a8381a8b55069ebb5213735ef0ab5af2d15a6`

```dockerfile
```

-	Layers:
	-	`sha256:81c7fcdad54c2e00eb8ceb690542439324ef1b6976778ce1a217c1b341b2c7fd`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json
