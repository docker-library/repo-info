## `nats:alpine3.22`

```console
$ docker pull nats@sha256:5fe569eab270ed1ac62e7974b80e86db130d33f464fe276beedd9003f50576dc
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

### `nats:alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:56f9d75f139c4c7b123916049cfbb399fe9007cf0656fda6b97ef9dcb402ed84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11543994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52fe91deea5a7ce5dc20fc282c909ae9c933344ec43ffe66f908ebbc81f59b20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:15 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8f2848b9eb04644b19ddda11b672da8c9f0dc729443b70760357b5f4626babe`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 7.7 MB (7748667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1736e5c40599be75577e15de328a6edf90f11998636ff635924219a078ed6770`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62811b51816616eb09f98cd85fd4ab27ce91acef07f204e49c55cea013e048f`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:026e760d6cc8a36a42bb1bce15903738bfab6bc1a39147e364a63111a75ea38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce9ae4b347b8c4c04f4d7015b31d340331b640a41633b8485b18f7f0226d23d4`

```dockerfile
```

-	Layers:
	-	`sha256:27d76ef0d9183fef8b550060bbc1d850ed53739da86e6cc57588ffcaf9cf3ade`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:4ecd269a0375f9770949de6c397454b9c0efd35171c9d66708243f98d4edf23d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11001618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee4a1f6901e8ad4f1cb37bdb54969e4a7577b0f72c1ec1c52088b3759baba75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:27:59 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:27:59 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:27:59 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:27:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:27:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5686813b44bf844f5cc4c00c745a8a7b8d274f4e4e71b2fbbe23017b206a77d`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 7.5 MB (7499254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79b1a30efcef3a36c4c9b0e1d9faaeb36a738fc94f7589e3993a7d2932fe988`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8eaec2c8c7db32dafabd9d083cb4753b7f4a17121db3d418cd8ca59330cf17`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:e05c00066c097110f4fd80e6dd51fe28ee6987b8a965036381e3e76cd1555bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c8fcf62b5359ea51bc3f5b61fb8254f69ec5dc84df67aa17da9a431d08db1b`

```dockerfile
```

-	Layers:
	-	`sha256:272f6ec2f7d4ef9d116cab4ba1f9ee27d5958e1ea0168d83bda9c99b81134984`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:4a5c40bbe5206fb4ad4ac4ff9d3bd68d959c53494519dd71b9c2b4b5a9347c49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10703389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2607cb38feae0ee8cdd5a846b1f6b51902bb2b88b1b2693ca9295ac89486df40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:39 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:39 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:39 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:39 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96301f062d670cc8524dffd4dcc7ccba337d67c599b1a7d477a1ebedd8932d3d`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 7.5 MB (7487011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab363269f1f4301d4920136cd1858ca1c18bf72a7399ef860813a44a379c24f`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df15deaea8f695d493ca8db2e2de83a0cc6ba1b37f7fbb1125c30f6abe600b5`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:cefd4b8350a062a070fceef60b3c1aa218f370f1e8cf915af85077f9e457ed2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c60068d084639e2fbe9f78b60c195e0cb69779e9ec3eb54aaacb44620e8d5f1a`

```dockerfile
```

-	Layers:
	-	`sha256:2b7a60922afeae01806a6b711f9c5b388c4d6de30434b1ff241e13e5a354d239`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:752ae3365e3b09a84a241ef13948adf16c4c7f0e44401c5e1ad9eade876668a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11182192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fb7908f74d9c2b8d37cd31cdd7fd42fc75082784f8acb7a3f6ec385613ea66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:26 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:26 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:26 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543b292cd4bd7a6ad619f712d0bf02df7eb21f33821eb35b649402746cc908ab`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 7.1 MB (7053839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c38215127e2fb355524f3d1f01d10ac77b18769a42df30acc32cc9578fb9f0`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed71c399bb4bef24d706fc82babb61a94e378f1fe5f940427a554e00c9497f9`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:9305fc31b7efe45295679d893c3e0ea439df1ab4647e9a1873c5c6f4d8fe017c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bfa3c58fc176a571792173dc4dfa576a21925837e6f3d3782785f3db8e45d8f`

```dockerfile
```

-	Layers:
	-	`sha256:28a9b5fc2ba9dcdd370acc1fa330b40ba269277202b7b6a2d6859e7d7ba42221`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:e10f4517b6b0b9f7a4502d7ae0e70d061fd9f2b25e708168d3e14c1178e4a185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10848186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da975cd2f43eba0f5d9abe2726a89d39e6b914f51ce3c7e673ccb454899fb24e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.22.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:34:19 GMT
ENV NATS_SERVER=2.15.1
# Thu, 22 Oct 2026 10:34:19 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Thu, 22 Oct 2026 10:34:19 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 22 Oct 2026 10:34:19 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 22 Oct 2026 10:34:20 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 22 Oct 2026 10:34:20 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 22 Oct 2026 10:34:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 10:34:20 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6292411e96b44c5d76aac019d2f95f8c7a9e90210868cfdbc37ed4c3ba65fcab`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.7 MB (3725437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1725f45760a0dedebd75604a5470ecccd9a52768feed42bce8726a53b78f08b`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 7.1 MB (7121781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264561df3ab5c4c38918d35cba7fd695dacb010ff1120011947cecd14e3b4f65`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce3d9c4a2459e1a8d7722b05b46a6498aee63cbfc4854c668452d3e648127ad2`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:e25520dcbd35fb841c6b2715338a1f1c5420cac20a04e03f60d8701540f93b98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d8f5a3cd0cd458cf8ed32ae6106db1795f32ba0b75d15bb439bad687f2f220`

```dockerfile
```

-	Layers:
	-	`sha256:c6ace09cc7995145a7d16d1fac9a3bdca8013327b10803ae319f6fee050e04b4`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 15.5 KB (15471 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:54001fdfb9e5a5f30846a2ae5314d96cf509b8a02f5800b97f61824ffad9e404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11186803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe1ed5d71c57552c3e70cd9c28050154e36d7accb8ff905632315b82000a99c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:28:01 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:28:01 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:28:01 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:28:02 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:28:03 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:28:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:28:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:28:03 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f26a6fe29f604a7b3e2833f3ebef070580330596d696a786b77f9b887c890d`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 7.5 MB (7542610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef37a83adf235350c0fe57d2f427b472363b767bca76094ed28557b29cc7c39d`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a785f699f967f9ad0d838dd9078f868aafeba29a4bc4a858b6de90842df01454`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:c2aab83b405252881bd1c98bf591815d866ff0a85e0a893f008dcde7044f3b66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9f4f9de62c2609500e4d821e6c37645f025c05a03e4b9bcb08c5964b00701f`

```dockerfile
```

-	Layers:
	-	`sha256:88c291d43fcd1e660b5ed30ac14e1e2ee8c273d25914ddad71c6250850f63689`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json
