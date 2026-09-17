## `nats:2-alpine3.22`

```console
$ docker pull nats@sha256:a6a00804d940a5325b9ab7b91886dc27d5bde544a45948ef292c7811e36f0e9b
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

### `nats:2-alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:d305a5e7e1253df48518b27598f7006ba2c13bc9ce142f6bb6a8dd72b83ea68a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11477472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:810e4d17ec8e3ad9fb8b3500059ba67f037dc4ebc6daaa7be0488cdccc9365d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 18:32:53 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 18:32:53 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 18:32:53 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 18:32:53 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 18:32:53 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 18:32:53 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 18:32:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 18:32:53 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8057129e06cdeed7e2ee3e851ac13da43828052a34eca77da4825bdb1058a2ec`  
		Last Modified: Thu, 17 Sep 2026 18:32:57 GMT  
		Size: 7.7 MB (7688908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee58cd0ec6df09cf3c6922e4ee763c075096045f391367ae4ea7d7971e5ce402`  
		Last Modified: Thu, 17 Sep 2026 18:32:57 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46b2032cf646e929c5ee933202096bea024cd28ca4288b672136b4816c9e2244`  
		Last Modified: Thu, 17 Sep 2026 18:32:57 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:5cbc5e07a72399e79f953a677c1a231b481ca0a2574def3e9b530295b4fd5fd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe8d13614c57bbe7a2bc102f1db687c806381816eda89c60f464d7d57444a48`

```dockerfile
```

-	Layers:
	-	`sha256:0d6199bce5e2f63b6476a88c8d6d16ba48738ba1a4785d76a37b60581fa12840`  
		Last Modified: Thu, 17 Sep 2026 18:32:57 GMT  
		Size: 15.4 KB (15403 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:2742395d259b49470a3695b11a958483f5e05646b5fbc02bf118031a988282f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10943513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d2aac5f70a9c4312deaffede2b0cdef06ed750c4c0477be9f4c691c2001f66a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 18:34:36 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 18:34:36 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 18:34:36 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 18:34:36 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 18:34:36 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 18:34:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 18:34:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 18:34:36 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10332dfaf6ab8abced1b14e1ebf0a634457bc04b734c4736673614b9338aecd7`  
		Last Modified: Thu, 17 Sep 2026 18:34:41 GMT  
		Size: 7.4 MB (7447742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f92600ae9b06e5b6ce9702aa4446313e16049e2714344b9667eb4adc15858f`  
		Last Modified: Thu, 17 Sep 2026 18:34:41 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aad2cf999474e97911f40da2457d5e0752efeddc22543619d1132e222744dce`  
		Last Modified: Thu, 17 Sep 2026 18:34:40 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:570831b092255f9d0c84c17acf2a4bc85deaa969afcd78f003b3e580766b3d3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:870b6433c43869bfc34bcb7c4c132f07b0b91150ad2511726ee98bab0be2ab34`

```dockerfile
```

-	Layers:
	-	`sha256:805df43953146a37e52c7cfa7f808989252bdfcddd3a0c6662b1c98bbb0deb94`  
		Last Modified: Thu, 17 Sep 2026 18:34:41 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:68e1d9d490e224463e7f86d8813938627ef3611d6f3728096fbfb715c6f1b20a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10278927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6fe77a8a3e641a965039066a586aeaf1a48130bfbf3573a0f9541eb21aea7c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:07:57 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 23:07:57 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 23:07:57 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:07:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:07:57 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b7879596ea56d85cb1ac334c7a38fba9e027caa63028c9a1787fc57624ee10`  
		Last Modified: Tue, 15 Sep 2026 23:08:02 GMT  
		Size: 7.1 MB (7068344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5fd517204c87f9b693e3ca6d3fde3d2164753486c0200af79e2bf18815bb83`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b4cbd95fcfb3d9399a2727410a0eec4ed360b8e5df871bf3eb9c4607c6c538`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:c6b36df7be3134270053db14eb306e170fc04843d61fef40ca288ffc5ed163db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b1a6407412522f54cf74e02e7c7e3a34e72fff88dce05e402a0e4710c7e7762`

```dockerfile
```

-	Layers:
	-	`sha256:b56bbd10e0beaa7b9a38efbb276c501266a1e1fed96832530686b97ff4ae6137`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:d72fb8026aad79642d09e2fe37ae84234e6ec2417f355684ce7e1b9f1187fc0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11126376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee1a7cab42dd79e40d157e043ca6d419f20e752c4b6c646d197baf8e49660c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 18:32:39 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 18:32:39 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 18:32:39 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 18:32:39 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 18:32:39 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 18:32:39 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 18:32:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 18:32:39 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa924cfeb425a8515b62b63961dee8783b1ba772c40c72740db4d157d72d8ea4`  
		Last Modified: Thu, 17 Sep 2026 18:32:44 GMT  
		Size: 7.0 MB (7004916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42235d6ca183b4482eb521fb7ed7102391872d81f4313fbd315ff0b36becd535`  
		Last Modified: Thu, 17 Sep 2026 18:32:44 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:290776ed7db797dc6c2114b036e282956dc2614698b74e951f4eb23e007f40d6`  
		Last Modified: Thu, 17 Sep 2026 18:32:44 GMT  
		Size: 413.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:2d04f305bcf8a1ce4a6d6d418e2eb8137d94107d80235aa63fd362d5a32bbda5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69cf5e7ebc8a43b8d057d9252a4502b9884b53e9a3e68764b4ab1f6290a1222d`

```dockerfile
```

-	Layers:
	-	`sha256:6c6c2e4a2aa77b95dec792f63221333283de47eb9561231296d7c5b7bed032db`  
		Last Modified: Thu, 17 Sep 2026 18:32:44 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:b6b57a3ee25f90578a5b274a3e7be34b3b5bb736c596373247856e81a900a070
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10791063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e483a509233eabf2a83c7b339f57a6f61e5e71afc76dc4744082f67a1e77be94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 18:31:36 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 18:31:36 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 18:31:36 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 18:31:36 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 18:31:37 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 18:31:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 18:31:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 18:31:37 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14decc33d9144f0e760c8edcfe370fd7bfb767db90558f25eb90b7df6c11d7e5`  
		Last Modified: Thu, 17 Sep 2026 18:31:44 GMT  
		Size: 7.1 MB (7070863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b056c735c83e0db758ac39d3bf5635fabdc7f6169ba4c05482b7ab37192b34d`  
		Last Modified: Thu, 17 Sep 2026 18:31:44 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1404577d7e2d738f0c9ecd053f09b81a3d32950e59d9d576495afa44cd02e16`  
		Last Modified: Thu, 17 Sep 2026 18:31:43 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:b9f93b2349772a50ec0ead052f4ec5953182f1ff686724a7ceb891e6c0f4185c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd5a2af74d09e4a6c8463c17a1214a1e584f46b802fc9a2a17182268b42f6cff`

```dockerfile
```

-	Layers:
	-	`sha256:cfbb8f17d0457f5f5ee3c38353a2592ef75d6589c3ca35c27aca62bb5ee22c81`  
		Last Modified: Thu, 17 Sep 2026 18:31:43 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:67d324d01e28b83bef62189c1d1154931280112db7083d0991c36fe5c57cdebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10770143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b32c5c16c81a600b5f64f3b59bc7c00f2ad1e6cebdc60797d787095f16a65a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:38:04 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:38:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:38:04 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:38:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:38:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:733418739eb09a48ae40e7aa1f5226525e967741c8ae1be16996ca7a6ed3ab27`  
		Last Modified: Thu, 27 Aug 2026 18:38:14 GMT  
		Size: 7.1 MB (7132092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82ef8fd292cff2f562ef0b2c403d31d0f82eed9524412a3a639394912aa2dea0`  
		Last Modified: Thu, 27 Aug 2026 18:38:13 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5948955085b10476397b8ece39a73df989b85999e6d5a654bd473759360dcb6a`  
		Last Modified: Thu, 27 Aug 2026 18:38:14 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:5fc20748d838f1a2cf13ec7b08ddfabdbfd0775d469734977bae799142f5d7c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ed9531ad80e6aeeee9e3dd3ea10b651a388dac062ad5e459d35c7898771766`

```dockerfile
```

-	Layers:
	-	`sha256:d76499fd8e383cadd858e276ef1475f757f04bb83d450c890a02a73009b7a398`  
		Last Modified: Thu, 27 Aug 2026 18:38:13 GMT  
		Size: 15.4 KB (15403 bytes)  
		MIME: application/vnd.in-toto+json
