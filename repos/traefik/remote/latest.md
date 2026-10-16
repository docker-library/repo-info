## `traefik:latest`

```console
$ docker pull traefik@sha256:0f6150202bc1fed72a7bd2107460eaa510e5b8a905f3fdb5b84f2c8619c33368
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:10cc4f33663c9d71049b71775d0b2ac67c18f7ade489ce9d826acc292d7eb82a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55389975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cfd9663a5d3591fde0170042b72dd00614a6b99208cb377a46ec23a91560b65`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 15 Oct 2026 19:13:01 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Thu, 15 Oct 2026 19:13:03 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.15/traefik_v3.7.15_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Thu, 15 Oct 2026 19:13:03 GMT
COPY entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 19:13:03 GMT
EXPOSE map[80/tcp:{}]
# Thu, 15 Oct 2026 19:13:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Oct 2026 19:13:03 GMT
CMD ["traefik"]
# Thu, 15 Oct 2026 19:13:03 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.15 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fb72a3619abfebd44e3f4d3c7f9ad0bb9e11a726ae25d32ae013a266f2cb881`  
		Last Modified: Thu, 15 Oct 2026 19:13:26 GMT  
		Size: 416.3 KB (416311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b5b821dc1e5519c54528d5bae3c04073f8e2720bd67181d1ad888211ab29ea4`  
		Last Modified: Thu, 15 Oct 2026 19:13:28 GMT  
		Size: 51.1 MB (51123556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f71da154c5770e93bca910072311b8ccb0925ee8c0b88ba494cc6b18ae641a4b`  
		Last Modified: Thu, 15 Oct 2026 19:13:26 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:b0cd9351cd30f343f439e93f6f4d2e19081755fbd603a1355fc96ee3000e4543
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **844.5 KB (844537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82614333f72c505e9c7daf02c1a47ee6819a35bed6c70b91234eb06a718265f4`

```dockerfile
```

-	Layers:
	-	`sha256:4a5686622da646ec457f8205e801341a90d21f74471d61b15550460fea7e1837`  
		Last Modified: Thu, 15 Oct 2026 19:13:27 GMT  
		Size: 831.6 KB (831648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6f3377583a02ad53b64c651eb05a0a62d205ec4c9f0096279b763d72a035405`  
		Last Modified: Thu, 15 Oct 2026 19:13:26 GMT  
		Size: 12.9 KB (12889 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:a82a3fea434b5e50f83ef10a960adaf271697f84c93356456159ad6e89b4fd18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50711222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d19d75229286dc348a7e647219b424ff302961bf89228622fd818c90687a8dfa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 15 Oct 2026 19:11:33 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Thu, 15 Oct 2026 19:11:36 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.15/traefik_v3.7.15_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Thu, 15 Oct 2026 19:11:36 GMT
COPY entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 19:11:36 GMT
EXPOSE map[80/tcp:{}]
# Thu, 15 Oct 2026 19:11:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Oct 2026 19:11:36 GMT
CMD ["traefik"]
# Thu, 15 Oct 2026 19:11:36 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.15 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e455df47fb6d382e0d2fd51ae29e821b721566fcdc626d1b9d3b1cb2490335b`  
		Last Modified: Thu, 15 Oct 2026 19:11:44 GMT  
		Size: 417.6 KB (417555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce8a5f15b4f3f3cf23a3307bef4dab0339a961c50a50dde48a43434ea2002dce`  
		Last Modified: Thu, 15 Oct 2026 19:11:46 GMT  
		Size: 46.7 MB (46738184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fab3bdb4476d93821ac918f079d168812ea44ae0248dab5f2060f30e26086566`  
		Last Modified: Thu, 15 Oct 2026 19:11:44 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:de4ef8281422bfa14bf2a255cf8d42319f935a92c209f6e17644177d249d1299
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 KB (12799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9091ac82f0921039b4cc2127c30cb90fb8840590d8a7a74eeb7f7fe49a4b4012`

```dockerfile
```

-	Layers:
	-	`sha256:819cef77a0438a78866470b1d3fd8349c5defd5a921f2f193d941d1373ed9e2f`  
		Last Modified: Thu, 15 Oct 2026 19:11:45 GMT  
		Size: 12.8 KB (12799 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:e4b3dc44af95a546106a89d5200cea77d897e1acbaf4dc8211875c0621bd192c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50196347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0b0dc249c40e4f5edd4e5827cc4b634879e14a89da53d675ae9248ecac819a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 15 Oct 2026 19:11:34 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Thu, 15 Oct 2026 19:11:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.15/traefik_v3.7.15_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Thu, 15 Oct 2026 19:11:37 GMT
COPY entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 19:11:37 GMT
EXPOSE map[80/tcp:{}]
# Thu, 15 Oct 2026 19:11:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Oct 2026 19:11:37 GMT
CMD ["traefik"]
# Thu, 15 Oct 2026 19:11:37 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.15 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8429d17b9018aa0b941e8390cc92b7d852fe3a3c8b446d794b470589dae05220`  
		Last Modified: Thu, 15 Oct 2026 19:12:01 GMT  
		Size: 419.1 KB (419119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ebaeea289d445f5749dd6f498bf2ffea0f082445e3b3ae3f827c14889621c3c`  
		Last Modified: Thu, 15 Oct 2026 19:12:03 GMT  
		Size: 45.6 MB (45589199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d5cbc0de4811398966c036a262810c6b67da108e3d152cbc9bf1df7b15918e`  
		Last Modified: Thu, 15 Oct 2026 19:12:01 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:23b3722881c6de1be547d41b4218d7d49fd215f7f6c3857616ca450bb393fc29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **844.2 KB (844157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8522b3038587ee3b0db80f9b237fb0b7574ee55ae5699ee1b2841b7c8cdb627`

```dockerfile
```

-	Layers:
	-	`sha256:b393173e8e23cb889a87a8f4524be7f94e3f58252209d9580466c8cd847a897e`  
		Last Modified: Thu, 15 Oct 2026 19:12:01 GMT  
		Size: 831.1 KB (831102 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f89ac441c071c44ff44d20f6f75021c9d035cfad453b9f7a5b07ed599a017ff6`  
		Last Modified: Thu, 15 Oct 2026 19:12:01 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; ppc64le

```console
$ docker pull traefik@sha256:13ba638a5e132d40ce5edf15a486f95d1f7d98bc131d860685e05fec0aed6814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48544342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f694f6a3bbe74b7dea8f41c725930997824c2feb549a4a359b808eda4ac1f051`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Tue, 06 Oct 2026 18:55:39 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Thu, 15 Oct 2026 19:50:53 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.15/traefik_v3.7.15_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Thu, 15 Oct 2026 19:50:54 GMT
COPY entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 19:50:54 GMT
EXPOSE map[80/tcp:{}]
# Thu, 15 Oct 2026 19:50:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Oct 2026 19:50:54 GMT
CMD ["traefik"]
# Thu, 15 Oct 2026 19:50:54 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.15 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d257b36cbf4abc45a24d73f57981ca9acc76bb5af73375751dcecda533b5120c`  
		Last Modified: Tue, 06 Oct 2026 18:57:07 GMT  
		Size: 419.5 KB (419533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c0fb0022b9ba510035c4a468546ca09f8fdd21213aa40dd2834c3c7bd93bf33`  
		Last Modified: Thu, 15 Oct 2026 19:51:51 GMT  
		Size: 44.3 MB (44306963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b2464c5ffebb4b77221ac8f5b20d5053caf221a44d42925d5e93d2b73cd431`  
		Last Modified: Thu, 15 Oct 2026 19:51:50 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:412e1a8ce27d7e8f234009ac642499affa3aee5451e2b9780b683460f3d4a224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **844.0 KB (844014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c592f6e043322a6f65693ebf061787fda55e0a8dc05de91df97fbf614f28cd11`

```dockerfile
```

-	Layers:
	-	`sha256:3245e1ff1d6ddfbf84068531d3d6913dc2573b55e631c52af608c979f11d05be`  
		Last Modified: Thu, 15 Oct 2026 19:51:50 GMT  
		Size: 831.1 KB (831055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc9449c466f5bbee22bdac1f4377e82d755f38757fdce052ace58dbe887a45f0`  
		Last Modified: Thu, 15 Oct 2026 19:51:50 GMT  
		Size: 13.0 KB (12959 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; riscv64

```console
$ docker pull traefik@sha256:02bc4da2c90c0f177862623bc7276cd87f2fa6106dbb9b8db34d4e0b55c15ad8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.9 MB (52938891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:023083b585e1c5f3234d480e3a09f9906f4e171f486b004a57eb18a781832009`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 03:51:29 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Fri, 16 Oct 2026 03:51:42 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.15/traefik_v3.7.15_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Fri, 16 Oct 2026 03:51:42 GMT
COPY entrypoint.sh / # buildkit
# Fri, 16 Oct 2026 03:51:42 GMT
EXPOSE map[80/tcp:{}]
# Fri, 16 Oct 2026 03:51:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Oct 2026 03:51:42 GMT
CMD ["traefik"]
# Fri, 16 Oct 2026 03:51:42 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.15 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbc7f88a2c624248e15992b14564c9089660ee14d75dbd04f945ec5a8e7c535a`  
		Last Modified: Fri, 16 Oct 2026 03:56:12 GMT  
		Size: 416.8 KB (416784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29b3a46d8ea6d802854def50ff5378bdf234b9fa5142ad2542cc12eaf3059901`  
		Last Modified: Fri, 16 Oct 2026 03:56:20 GMT  
		Size: 48.9 MB (48946367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9190e421db15accdbabeb7d12d210271827f8e9558b5b70cd9ac6163557c549`  
		Last Modified: Fri, 16 Oct 2026 03:56:13 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:8d288fe875334be6b4b4a5557a850fcb2690094dacc4d9583ee81d538f66fc76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **844.0 KB (844010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63f49e5d1f2e3187f4d06a769ed587903e117d9eb314b87916c098d022c2a325`

```dockerfile
```

-	Layers:
	-	`sha256:6f6d1dfcc50606636c9d76319204e9ab9778f8cdaa113eae5f839a7694cbaf08`  
		Last Modified: Fri, 16 Oct 2026 03:56:13 GMT  
		Size: 831.1 KB (831051 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:784c61e8fe7f4ca9e6f9e68c9eaba8da2e7998f3d4c9b9cd71183faae0d5173c`  
		Last Modified: Fri, 16 Oct 2026 03:56:13 GMT  
		Size: 13.0 KB (12959 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; s390x

```console
$ docker pull traefik@sha256:feabe3a3edefea9b8a7ac926b56aadb1e037e90471065d4f6ce5ff6d54bea911
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.4 MB (53392152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4c52dcef7a68f744490bc2b574ffdd9bfa99d366310daddd8676d71f539941d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 15 Oct 2026 19:36:21 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Thu, 15 Oct 2026 19:36:26 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.15/traefik_v3.7.15_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Thu, 15 Oct 2026 19:36:27 GMT
COPY entrypoint.sh / # buildkit
# Thu, 15 Oct 2026 19:36:27 GMT
EXPOSE map[80/tcp:{}]
# Thu, 15 Oct 2026 19:36:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Oct 2026 19:36:27 GMT
CMD ["traefik"]
# Thu, 15 Oct 2026 19:36:27 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.15 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0a9b957774f7869fb16ba46f742e061eca0f50558ee0faa50a7c927f481f416`  
		Last Modified: Thu, 15 Oct 2026 19:37:42 GMT  
		Size: 417.5 KB (417455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d90bf54c4bbfde946ab97b42738682ba60b69cf3c417cb01f04506f8d78ca365`  
		Last Modified: Thu, 15 Oct 2026 19:37:45 GMT  
		Size: 49.3 MB (49258988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed34c49877d5ed074187bdb44c5dc145cde82da002ffdfdcc4269f6d85eb341f`  
		Last Modified: Thu, 15 Oct 2026 19:37:42 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:1a97a0c4d0c999fb8a257b3c8a41b0f23da97c48370e94ca1731e04c77d9ece7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **843.9 KB (843884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9cee98085ef1c0733889a3efc16167a8bc63c77361190cb5eebdfde6610bd9c`

```dockerfile
```

-	Layers:
	-	`sha256:a40b40931491445a37108084dd5bf151d4b842fd99f942ade051e14f7aa31647`  
		Last Modified: Thu, 15 Oct 2026 19:37:42 GMT  
		Size: 831.0 KB (830995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe6f303f6870342d29412432fe03465f64a715ec08ff965729ee3c7cfc18b27c`  
		Last Modified: Thu, 15 Oct 2026 19:37:42 GMT  
		Size: 12.9 KB (12889 bytes)  
		MIME: application/vnd.in-toto+json
