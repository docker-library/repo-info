<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `caddy`

-	[`caddy:2`](#caddy2)
-	[`caddy:2-alpine`](#caddy2-alpine)
-	[`caddy:2-builder`](#caddy2-builder)
-	[`caddy:2-builder-alpine`](#caddy2-builder-alpine)
-	[`caddy:2-builder-windowsservercore-ltsc2022`](#caddy2-builder-windowsservercore-ltsc2022)
-	[`caddy:2-builder-windowsservercore-ltsc2025`](#caddy2-builder-windowsservercore-ltsc2025)
-	[`caddy:2-nanoserver`](#caddy2-nanoserver)
-	[`caddy:2-nanoserver-ltsc2022`](#caddy2-nanoserver-ltsc2022)
-	[`caddy:2-nanoserver-ltsc2025`](#caddy2-nanoserver-ltsc2025)
-	[`caddy:2-windowsservercore`](#caddy2-windowsservercore)
-	[`caddy:2-windowsservercore-ltsc2022`](#caddy2-windowsservercore-ltsc2022)
-	[`caddy:2-windowsservercore-ltsc2025`](#caddy2-windowsservercore-ltsc2025)
-	[`caddy:2.11`](#caddy211)
-	[`caddy:2.11-alpine`](#caddy211-alpine)
-	[`caddy:2.11-builder`](#caddy211-builder)
-	[`caddy:2.11-builder-alpine`](#caddy211-builder-alpine)
-	[`caddy:2.11-builder-windowsservercore-ltsc2022`](#caddy211-builder-windowsservercore-ltsc2022)
-	[`caddy:2.11-builder-windowsservercore-ltsc2025`](#caddy211-builder-windowsservercore-ltsc2025)
-	[`caddy:2.11-nanoserver`](#caddy211-nanoserver)
-	[`caddy:2.11-nanoserver-ltsc2022`](#caddy211-nanoserver-ltsc2022)
-	[`caddy:2.11-nanoserver-ltsc2025`](#caddy211-nanoserver-ltsc2025)
-	[`caddy:2.11-windowsservercore`](#caddy211-windowsservercore)
-	[`caddy:2.11-windowsservercore-ltsc2022`](#caddy211-windowsservercore-ltsc2022)
-	[`caddy:2.11-windowsservercore-ltsc2025`](#caddy211-windowsservercore-ltsc2025)
-	[`caddy:2.11.9`](#caddy2119)
-	[`caddy:2.11.9-alpine`](#caddy2119-alpine)
-	[`caddy:2.11.9-builder`](#caddy2119-builder)
-	[`caddy:2.11.9-builder-alpine`](#caddy2119-builder-alpine)
-	[`caddy:2.11.9-builder-windowsservercore-ltsc2022`](#caddy2119-builder-windowsservercore-ltsc2022)
-	[`caddy:2.11.9-builder-windowsservercore-ltsc2025`](#caddy2119-builder-windowsservercore-ltsc2025)
-	[`caddy:2.11.9-nanoserver`](#caddy2119-nanoserver)
-	[`caddy:2.11.9-nanoserver-ltsc2022`](#caddy2119-nanoserver-ltsc2022)
-	[`caddy:2.11.9-nanoserver-ltsc2025`](#caddy2119-nanoserver-ltsc2025)
-	[`caddy:2.11.9-windowsservercore`](#caddy2119-windowsservercore)
-	[`caddy:2.11.9-windowsservercore-ltsc2022`](#caddy2119-windowsservercore-ltsc2022)
-	[`caddy:2.11.9-windowsservercore-ltsc2025`](#caddy2119-windowsservercore-ltsc2025)
-	[`caddy:alpine`](#caddyalpine)
-	[`caddy:builder`](#caddybuilder)
-	[`caddy:builder-alpine`](#caddybuilder-alpine)
-	[`caddy:builder-windowsservercore-ltsc2022`](#caddybuilder-windowsservercore-ltsc2022)
-	[`caddy:builder-windowsservercore-ltsc2025`](#caddybuilder-windowsservercore-ltsc2025)
-	[`caddy:latest`](#caddylatest)
-	[`caddy:nanoserver`](#caddynanoserver)
-	[`caddy:nanoserver-ltsc2022`](#caddynanoserver-ltsc2022)
-	[`caddy:nanoserver-ltsc2025`](#caddynanoserver-ltsc2025)
-	[`caddy:windowsservercore`](#caddywindowsservercore)
-	[`caddy:windowsservercore-ltsc2022`](#caddywindowsservercore-ltsc2022)
-	[`caddy:windowsservercore-ltsc2025`](#caddywindowsservercore-ltsc2025)

## `caddy:2`

```console
$ docker pull caddy@sha256:dee6bce21b6c3d17c78805046901f9558f0bcfe9d3853f26ab7eb5cf06021ba4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
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
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `caddy:2` - linux; amd64

```console
$ docker pull caddy@sha256:fc9cbc100585871d18d4e451cca7021785c90a7006087427ae5ceb3e4efe6424
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24793574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5813f7eb9b94fac4970f9f576695fe1ed1d53d41586fd3eaa350caf7c4627d9c`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:37:06 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Thu, 05 Nov 2026 19:37:07 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Thu, 05 Nov 2026 19:37:08 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 19:37:08 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='0e85544340290a16ce4bfb76fe7d65e9de1bf3a6e67f5ccfff30b30d27ea4c73e078077b7bf3e58ae60b6b12e44327705287059c775bca5782e8ee85ea7edd75' ;; 		armhf)   binArch='armv6'; checksum='bfd9b415660caccaf5efbba2a8828eb9e61e31609ee6a62d532e70ef1f419e2ba420fdfd1e16c13e4896c33557813f87fddc849de57400eac34c4635f413bc0c' ;; 		armv7)   binArch='armv7'; checksum='ea042518bfb5eec5070a3119430263ae920b2d1e878c733a80d3d0ced1168afe5816362f295de46915d651a67f31f4d8a67ac67326f507d90cda71274b8ee689' ;; 		aarch64) binArch='arm64'; checksum='9e5e76d7888542924de2c25353ae87c5f77e2a22c5b1198633cae13688922282e05383d142599205c88d8d80eee5e967d291214d7abce4835329a191b20dd6e0' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='9b95cfa058e9651c0738179c6c18d0a93eb9c491e5c9ed3d95f30b23e1c9324e739bbf91a3ac0ebf91aaff89e25de1cff22f127484be937c0089b079266cd37f' ;; 		riscv64) binArch='riscv64'; checksum='52c9750b091a297766f2faaa01955eb894b614f4b94a9a418632d67f65f942e5363681869de0a6434d87482ac611f5c228282c23c6a90349085bb17aa3eff686' ;; 		s390x)   binArch='s390x'; checksum='213186130eeab27bc8fff06f4a6cffb253b36f719166c6cb12c539b4432186d6f7938847547a4e5cf47b1525424fdc74813950f08b928f788b7402127eb30e6b' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Thu, 05 Nov 2026 19:37:08 GMT
ENV XDG_CONFIG_HOME=/config
# Thu, 05 Nov 2026 19:37:08 GMT
ENV XDG_DATA_HOME=/data
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[443/udp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[2019/tcp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
WORKDIR /srv
# Thu, 05 Nov 2026 19:37:08 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d6974dbf71e422d13654405f502ff60ea306943b999003c012ecc6dd93d317`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 2.8 MB (2798840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a802d3a0a957e15ac518be2f3f3e786b9965895265888c3390753c81d1c085`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 7.5 KB (7501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5000c332a1cc372a1a248c2923696c0bc7817d213f2db0f4161fc18a3fc17cd7`  
		Last Modified: Thu, 05 Nov 2026 19:37:16 GMT  
		Size: 18.1 MB (18133528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2` - unknown; unknown

```console
$ docker pull caddy@sha256:38891e0175dd27a9b2c2a9e7314b356b0477f0002302bbeb51ccc87491f83abf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.6 KB (334614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a48c1497cac67279989d2b2c55010f2ed2546887974c8dfeee774c8cb204f5d`

```dockerfile
```

-	Layers:
	-	`sha256:f4183d0ed1bf0fc5c8a612569bbfe4bd35053c401ddec3523acf17101a388fd5`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 316.2 KB (316187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed4aeb1ef3c37f8dd726324c7a8739e6a1dcf890a00af32bf17ea28558f0b0bb`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 18.4 KB (18427 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2` - linux; arm variant v6

```console
$ docker pull caddy@sha256:2ff7d8bd4c710ca24cee8553653e81236fdff5eac3258b319d1f3a8c9c90e1b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23531358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46e92b0833bac59556797e076e62d1e55e29d47edd40f1d1127b2837556d4529`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:55:45 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:55:45 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:55:47 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:55:47 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:55:47 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:55:47 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:55:47 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:55:47 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:55:47 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:55:47 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:55:47 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:55:47 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ff5ed468f4efb91ff9789ce83f3ddf01ffd2fb0b6fc960f72960fd6491b771`  
		Last Modified: Wed, 04 Nov 2026 17:55:53 GMT  
		Size: 2.7 MB (2723763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6987a10766febd34eccb10c8cfd6ed45b4dbc7543f2f279c007430465248cd5e`  
		Last Modified: Wed, 04 Nov 2026 17:55:52 GMT  
		Size: 7.5 KB (7498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d2de185c946d96bd1f952450842f74c1e1456eaaed32c45e2c2453477d635a`  
		Last Modified: Wed, 04 Nov 2026 17:55:53 GMT  
		Size: 17.2 MB (17241774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2` - unknown; unknown

```console
$ docker pull caddy@sha256:b4d1fa4fd97be630b03ed7777f8d64b950b535a23568ba53ea68c9c4e8b4b533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 KB (18352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36929c847918c1d3bcc1a0a94c3670d9ca097bba6ff84631b35b6cc94d226189`

```dockerfile
```

-	Layers:
	-	`sha256:2685aa767d9f0cc12f38fe5b24dd8fb7d6aa4fd629476527c5fb5f9839998455`  
		Last Modified: Wed, 04 Nov 2026 17:55:52 GMT  
		Size: 18.4 KB (18352 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2` - linux; arm variant v7

```console
$ docker pull caddy@sha256:6071525234f574e3000519dde9d25abfd4c089236956a24f2e0984b0cfa0695d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23092436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b321be350ac394b2b447774810803eba1fdaf731137388ea78e0494454a523`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:56:00 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:56:01 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:56:03 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:03 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:56:03 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:56:03 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:56:03 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afc8c568af13a7e8edac14d90a6dc6b10c007b4c156e7169017c0dc3f3a98faf`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 2.6 MB (2596752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27dff964349b9f016fff9f0a401da75a95f9e4fce26ac4bfa94bb9c1dc6afb16`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 7.5 KB (7499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3faea2288b2bcf4c48c14e2a5fed69d4aa014fe1a3fc1806b8eb10f663b045a2`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 17.2 MB (17221493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2` - unknown; unknown

```console
$ docker pull caddy@sha256:bafe8101cc3628601a617b071b54dc33b676af3be1d88a0f1bad4b4c01436638
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.2 KB (334172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:469cbdf0a43a3b348b602651aa2aa2460c545e0a527950248c722eba4c1e6fac`

```dockerfile
```

-	Layers:
	-	`sha256:0b8e772e6707b2c953c84db65f6fc0c700d43d80350eac9883d213585e518be7`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 315.6 KB (315605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21e8a360f5a935352045f20a4c4a2253e333180b840eeaafe42be297baf42274`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 18.6 KB (18567 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:d48486623b1522f9e6d0fd0407e2929eb66bf2cc5bfbf71c2d89611d6fd24c35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23504341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a73eea10ae6ad4918f4dcbaf33fac04a70713c92d1f191eac79c3c5114eb55`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:56:01 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:56:02 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:56:03 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:03 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:56:03 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:56:03 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:56:03 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873b94e511f0ec80ec6cce86c968b610d228a774642b83f1a326d66ee6ae3aa8`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 2.8 MB (2814373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6d1df8fdd49da33b1d28007fdd1b07e242c84c67de3a92c2b7c7e9b847ef08d`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 7.5 KB (7499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8c8f8ce0e89504c960b22c3185bfb6e05eee0d897d84cfd010a12c70854ab9`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 16.5 MB (16491949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2` - unknown; unknown

```console
$ docker pull caddy@sha256:10730ad845a1ca6297f672954ed94457459be6e4ff5f8b68e775baa4f75fbb9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.3 KB (334252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93401ef29b5158eba16ec2ba44339cea6bdbaa7055e899b5a5c96b2e88cf290a`

```dockerfile
```

-	Layers:
	-	`sha256:c6400d8de2626b662e1e17c25df8375093495be746b3bbb65131e69fa1d9db9d`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 315.6 KB (315641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3a7e9f8ef8acc4ede2bdc6185b5ac8c1b482add58b99147135f950c3cf22e80`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 18.6 KB (18611 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2` - linux; ppc64le

```console
$ docker pull caddy@sha256:ff88079998a1d0ba6f228c328559d4e62ba3e23af23e03b07a03c26a76e564cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23289477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5c541ac1e43db67305c3cdca64c7fb798ca25eb4dd6f4035bd72ea6a1a0f8e6`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:54:56 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:55:21 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:55:33 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:55:33 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:55:33 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:55:33 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:55:33 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:55:33 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:55:33 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:55:33 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:55:44 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:55:44 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4802e0decc07b315032252b6be29a6e3794399b42e3d4217eb2e19810c3174`  
		Last Modified: Wed, 04 Nov 2026 17:56:17 GMT  
		Size: 2.9 MB (2932250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad41792dfa73ceb9d83ad15b8ab9cc0b2be12338d4a1e9d082b7bf78ef8fade3`  
		Last Modified: Wed, 04 Nov 2026 17:56:18 GMT  
		Size: 7.5 KB (7503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40aa986fbe3a1df875e66d40afcb7c0845e6d3af591ce6999bb3661561c10657`  
		Last Modified: Wed, 04 Nov 2026 17:56:19 GMT  
		Size: 16.5 MB (16528870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2` - unknown; unknown

```console
$ docker pull caddy@sha256:c20b862368bf90b1e3fa1587d2c114a4941eb3c1675fe097d251307148ab490a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.1 KB (334095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:199a982489ac400a96711f5035dc7ec32172db2c39b9769e2e3651849822dc84`

```dockerfile
```

-	Layers:
	-	`sha256:3146ebe2743ac7948ef787e58eba77453e7e520d64bb62dea3f5d92a536dcc73`  
		Last Modified: Wed, 04 Nov 2026 17:56:17 GMT  
		Size: 315.6 KB (315594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:758b0113ca1d278b827b18662633a6cdcf77d0203e6604905e9f5c7d1e526c8a`  
		Last Modified: Wed, 04 Nov 2026 17:56:17 GMT  
		Size: 18.5 KB (18501 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2` - linux; riscv64

```console
$ docker pull caddy@sha256:77a5533e54c81871e933687658b5d6a44265e75bae69bb6375a91383c1ffb76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23763391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877017629382ecdaf48df46afb54ec03844ec812855b044082cd22e0bb863afb`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 07:00:19 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Thu, 05 Nov 2026 07:00:21 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Thu, 05 Nov 2026 07:00:27 GMT
ENV CADDY_VERSION=v2.11.8
# Thu, 05 Nov 2026 07:00:27 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Thu, 05 Nov 2026 07:00:27 GMT
ENV XDG_CONFIG_HOME=/config
# Thu, 05 Nov 2026 07:00:27 GMT
ENV XDG_DATA_HOME=/data
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 07:00:27 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 07:00:27 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:00:27 GMT
EXPOSE map[443/udp:{}]
# Thu, 05 Nov 2026 07:00:27 GMT
EXPOSE map[2019/tcp:{}]
# Thu, 05 Nov 2026 07:00:28 GMT
WORKDIR /srv
# Thu, 05 Nov 2026 07:00:28 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b243dd3f78be3ff66be2edf51b3320f33932a2643de0382aabcc7451cc1d102`  
		Last Modified: Thu, 05 Nov 2026 07:01:29 GMT  
		Size: 2.9 MB (2930615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc3453e8adac8cf5a49ad6b057cb143688903d1c8637e7239f90f6dad8301b2f`  
		Last Modified: Thu, 05 Nov 2026 07:01:29 GMT  
		Size: 7.5 KB (7502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f9223ac75c6a1a12d29241638f981c0cb6eff5ecc027e6e6483675e06634f8a`  
		Last Modified: Thu, 05 Nov 2026 07:01:32 GMT  
		Size: 17.2 MB (17244595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2` - unknown; unknown

```console
$ docker pull caddy@sha256:bbfe7db37148fedff73b048d06c8d440079103765bb26d8d3ff88f40adac4283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.1 KB (334091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7763aa7321cac96f9bc28cad61a3a46cfb05081f242f50e940de633852e6fb6b`

```dockerfile
```

-	Layers:
	-	`sha256:663bafd8bcb8c99e0a08a065c8d4e75b18baa3431df39812e3b0d9a81350d38f`  
		Last Modified: Thu, 05 Nov 2026 07:01:29 GMT  
		Size: 315.6 KB (315590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37596a9fbfe0de52e041917bd80b035bf70c1e11ce758b6784fe5e5796dd5316`  
		Last Modified: Thu, 05 Nov 2026 07:01:29 GMT  
		Size: 18.5 KB (18501 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2` - linux; s390x

```console
$ docker pull caddy@sha256:6df2d88e242bbc40dbaae102045f3537c9d988c37f0e9f32ec5a59eb7822423b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24136179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a0ff7d133cc4fa4c0e464d8126567e1ebf625068c1141d62bf5f1fe880db72`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:54:31 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:54:33 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:54:33 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:54:33 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:54:33 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:54:33 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:54:33 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:54:33 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:54:33 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:54:33 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:54:33 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3160eca0d674aa6dbbfbfce3c9df7ef11c85e6f658ace8c027ebd1cdfc53b99f`  
		Last Modified: Wed, 04 Nov 2026 17:54:44 GMT  
		Size: 2.9 MB (2914741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b8a8eb35c9fb4d61cdc88a7ac4008899c342f64f54f2efbaaba9233e84204c5`  
		Last Modified: Wed, 04 Nov 2026 17:54:44 GMT  
		Size: 7.5 KB (7502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd224a2dd4702f0fd00b7dcac7d191597019c51cd31aaf6b5b3027d03d3c2ca`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 17.5 MB (17494194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2` - unknown; unknown

```console
$ docker pull caddy@sha256:c921ef6152f997e93b113fa249d92639e3052271393487a1d21d132010d8296f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 KB (333964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c8c7ccc5c9c0fcfb60339b5665c7ff2f5622c8631d90cc253054a58282eb578`

```dockerfile
```

-	Layers:
	-	`sha256:cea63384879323dcf292cc0507cda1a549a1e9c4a2ef78fb2184459fdc48e811`  
		Last Modified: Wed, 04 Nov 2026 17:54:44 GMT  
		Size: 315.5 KB (315536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de008cdae2ba256db19a07f3b77749db37b6707673cab309b7506175ed0f3d70`  
		Last Modified: Wed, 04 Nov 2026 17:54:44 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:95abf9d14aaade6d55fc1fe67837955424c407f7c42122cf56ec269df234b976
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411640909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab973cc14b9e0c52be1b72c2f49166655cfed54fcb528bb66f89be6dcdea52d`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Thu, 05 Nov 2026 18:48:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:50:14 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:50:15 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:31 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:31 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:32 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:35 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:38 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:41 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:42 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:50:58 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:50:58 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3105b031b17a07724dd061a02beeb8696051059e004ecd9ed26a9e17fa3cdc02`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6906576f53243cb11c77a99856afa7453fea514a6239d8daad6968e7a25cba`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 390.9 KB (390919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066b4e49953291e1e590b8dc069208ed71f03d794a65a73813cb94d3655ec8f6`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f696f899da47fb0fca096725494a65fa4db2ed97ad592f434625bbf012bf4ccf`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 18.8 MB (18842906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61509ec5d34e9f0c9171bdaa8e0f889d0ae0266be4be408c271535c594f26c1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad5baa2304ae76c673dfcc132b4d9f5ed56a9c843984069ec22db953f24e183`  
		Last Modified: Thu, 05 Nov 2026 18:51:07 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf73fb3dacde170edc236e1c1f5e252519e2bba968312caa5570f79dd63be52`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9609d2b97073146c6468eedb5f32415c8a4cea9ca99c0602ccec800de92daf`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f857ee3127ebcc1c023b71b6e00845ff2e591296da1c03b77239054ce73059c7`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492801772255ddb526037e2a61f6e3f699aa4bfd695d5d2e844f6b041120e3b4`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fc7a0cadb49e63446196633584282ca5d0c21670b9f6a1303cc898819a5939`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4934c1a327b2efa689cf58a31640d074993b68ea01d8a3dc6f84b7aba9f7c40b`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421fbfd0d299f828ca293b67045a58a1398a41a480f918db09529c7720ba005e`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6808f4fa8c3f137ea2fe98d8343b4cd850d351a6c24415d6c7af9087023ca853`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc9e06eb01a305ee8abe1f8ad9e360461382e96f40fe09fe66638366d2b3921`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4771a13f86c4e0005351f8cf24a7199b26f48a8aca82fa482712118a2bd1f006`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc5ee75a0594ffb8e38f738cf42f1829027f8569736758d0d7b97265642a34a`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1be9f4dc4e64883d35c8a23d7396f2e832c32ef0bdbbf4bbca5cc99be26a3cf`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e9fcd3b3e14a5fede69ab9fee080810c9d6869d863c0c40b8109dbeb33bc10`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 336.2 KB (336222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad69e21d7b060686c53a003a33e3f7b9f3bcf502846a49bb9ffaa3ecf4b55167`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:2` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:2cc1f16a110963701a69a8093e051d1e6a68775f92423e05076fa8ac137525c2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2246593231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81d2947c39b363c1833583c76c91cafe62b764e5397a4d58ebd31dee62c2460`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Thu, 05 Nov 2026 18:48:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:49:53 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:49:54 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:24 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:26 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:27 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:29 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:30 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:32 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:42 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:51:03 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:51:04 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a008cba775e8dd0fa98285e50e68016c6e59c9c7d78331b024d243c8028b4cbc`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2d491895f80263abfd15f22c5c30039fa3ebd8d83087a2433cb846961153e1`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 371.5 KB (371473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5358c2eea08f8a9d209da01918bf15f92d5f2604b8bd529de0691bbbaabe927`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f303a38c5095af4de86858b6f2fedefdb9854cd41e24cb7b7f6e0de3e51e36`  
		Last Modified: Thu, 05 Nov 2026 18:51:17 GMT  
		Size: 18.8 MB (18820643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e592ad193121b2d1f6737f2fc89e24d03e9d33d6cca8e7add2957ccf57b9c61`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25fe4e292b538b454f7496f886418773ff60ff66c6837656d45cc2eb319ad3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a510990588c53fcf965e7ef95cd6e4765af69ddff30a9b85537cd50c39eee3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66d18fd2f2ee4d3baba1e5f3770dbed152867afeb50caad16c8ef145e17a6a2`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c670bb7e8fef2b7d9e51de98054eedf8577c01c8dab3f5307e26ad849db0ab39`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500888919d78c692c88bcec1ff4727723df54e3e34385d05da99c27285ee455f`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cdcae9d52f42f49f9a70d23426fc1feceede855ea6a0748f5f8663a35be90a`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7210618d2f93291160433de49867d5821e996bd5f005cc6c2b36801e9820829d`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790aa499060b9807135ef195885142b4c146bb6b428a843e2d8f79e595bb15f3`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07378ecb425dbafad024761d9bb5f11c3102ab26215b09dd90548401cfdbffc`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bb0f5976c9b254675a71ddc0e556c3e8c57376ad629f3a9431fb344eb0ac46`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23012e55c65156794576b8d2534079d31f2adad56300fb59cdeec1f58391db4`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6049bd500c5b62b0a05932db59f93ba3b7324a26e40d0c7e0708070abf5a4da9`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e3314e91f873e91dae6f3f2edceadb9449a46ef807bb118819fe75d83c8bb1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265b4d1fd5b55896df277baa4c1db1204b11578f29e866d4ad6afb1bc93f976b`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 322.8 KB (322785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48a65dcbe82d2fa7112e338b77c64a167952bea5d360d7a0b3587b835dbb9d69`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2-alpine`

```console
$ docker pull caddy@sha256:8652f54d3ef21e120f78f3c6b396bcf7d3fc8f999cece30cd35490430da89430
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `caddy:2-alpine` - linux; amd64

```console
$ docker pull caddy@sha256:fc9cbc100585871d18d4e451cca7021785c90a7006087427ae5ceb3e4efe6424
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24793574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5813f7eb9b94fac4970f9f576695fe1ed1d53d41586fd3eaa350caf7c4627d9c`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:37:06 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Thu, 05 Nov 2026 19:37:07 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Thu, 05 Nov 2026 19:37:08 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 19:37:08 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='0e85544340290a16ce4bfb76fe7d65e9de1bf3a6e67f5ccfff30b30d27ea4c73e078077b7bf3e58ae60b6b12e44327705287059c775bca5782e8ee85ea7edd75' ;; 		armhf)   binArch='armv6'; checksum='bfd9b415660caccaf5efbba2a8828eb9e61e31609ee6a62d532e70ef1f419e2ba420fdfd1e16c13e4896c33557813f87fddc849de57400eac34c4635f413bc0c' ;; 		armv7)   binArch='armv7'; checksum='ea042518bfb5eec5070a3119430263ae920b2d1e878c733a80d3d0ced1168afe5816362f295de46915d651a67f31f4d8a67ac67326f507d90cda71274b8ee689' ;; 		aarch64) binArch='arm64'; checksum='9e5e76d7888542924de2c25353ae87c5f77e2a22c5b1198633cae13688922282e05383d142599205c88d8d80eee5e967d291214d7abce4835329a191b20dd6e0' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='9b95cfa058e9651c0738179c6c18d0a93eb9c491e5c9ed3d95f30b23e1c9324e739bbf91a3ac0ebf91aaff89e25de1cff22f127484be937c0089b079266cd37f' ;; 		riscv64) binArch='riscv64'; checksum='52c9750b091a297766f2faaa01955eb894b614f4b94a9a418632d67f65f942e5363681869de0a6434d87482ac611f5c228282c23c6a90349085bb17aa3eff686' ;; 		s390x)   binArch='s390x'; checksum='213186130eeab27bc8fff06f4a6cffb253b36f719166c6cb12c539b4432186d6f7938847547a4e5cf47b1525424fdc74813950f08b928f788b7402127eb30e6b' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Thu, 05 Nov 2026 19:37:08 GMT
ENV XDG_CONFIG_HOME=/config
# Thu, 05 Nov 2026 19:37:08 GMT
ENV XDG_DATA_HOME=/data
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[443/udp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[2019/tcp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
WORKDIR /srv
# Thu, 05 Nov 2026 19:37:08 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d6974dbf71e422d13654405f502ff60ea306943b999003c012ecc6dd93d317`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 2.8 MB (2798840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a802d3a0a957e15ac518be2f3f3e786b9965895265888c3390753c81d1c085`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 7.5 KB (7501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5000c332a1cc372a1a248c2923696c0bc7817d213f2db0f4161fc18a3fc17cd7`  
		Last Modified: Thu, 05 Nov 2026 19:37:16 GMT  
		Size: 18.1 MB (18133528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:38891e0175dd27a9b2c2a9e7314b356b0477f0002302bbeb51ccc87491f83abf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.6 KB (334614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a48c1497cac67279989d2b2c55010f2ed2546887974c8dfeee774c8cb204f5d`

```dockerfile
```

-	Layers:
	-	`sha256:f4183d0ed1bf0fc5c8a612569bbfe4bd35053c401ddec3523acf17101a388fd5`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 316.2 KB (316187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed4aeb1ef3c37f8dd726324c7a8739e6a1dcf890a00af32bf17ea28558f0b0bb`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 18.4 KB (18427 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-alpine` - linux; arm variant v6

```console
$ docker pull caddy@sha256:2ff7d8bd4c710ca24cee8553653e81236fdff5eac3258b319d1f3a8c9c90e1b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23531358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46e92b0833bac59556797e076e62d1e55e29d47edd40f1d1127b2837556d4529`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:55:45 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:55:45 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:55:47 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:55:47 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:55:47 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:55:47 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:55:47 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:55:47 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:55:47 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:55:47 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:55:47 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:55:47 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ff5ed468f4efb91ff9789ce83f3ddf01ffd2fb0b6fc960f72960fd6491b771`  
		Last Modified: Wed, 04 Nov 2026 17:55:53 GMT  
		Size: 2.7 MB (2723763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6987a10766febd34eccb10c8cfd6ed45b4dbc7543f2f279c007430465248cd5e`  
		Last Modified: Wed, 04 Nov 2026 17:55:52 GMT  
		Size: 7.5 KB (7498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d2de185c946d96bd1f952450842f74c1e1456eaaed32c45e2c2453477d635a`  
		Last Modified: Wed, 04 Nov 2026 17:55:53 GMT  
		Size: 17.2 MB (17241774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:b4d1fa4fd97be630b03ed7777f8d64b950b535a23568ba53ea68c9c4e8b4b533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 KB (18352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36929c847918c1d3bcc1a0a94c3670d9ca097bba6ff84631b35b6cc94d226189`

```dockerfile
```

-	Layers:
	-	`sha256:2685aa767d9f0cc12f38fe5b24dd8fb7d6aa4fd629476527c5fb5f9839998455`  
		Last Modified: Wed, 04 Nov 2026 17:55:52 GMT  
		Size: 18.4 KB (18352 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-alpine` - linux; arm variant v7

```console
$ docker pull caddy@sha256:6071525234f574e3000519dde9d25abfd4c089236956a24f2e0984b0cfa0695d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23092436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b321be350ac394b2b447774810803eba1fdaf731137388ea78e0494454a523`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:56:00 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:56:01 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:56:03 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:03 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:56:03 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:56:03 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:56:03 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afc8c568af13a7e8edac14d90a6dc6b10c007b4c156e7169017c0dc3f3a98faf`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 2.6 MB (2596752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27dff964349b9f016fff9f0a401da75a95f9e4fce26ac4bfa94bb9c1dc6afb16`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 7.5 KB (7499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3faea2288b2bcf4c48c14e2a5fed69d4aa014fe1a3fc1806b8eb10f663b045a2`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 17.2 MB (17221493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:bafe8101cc3628601a617b071b54dc33b676af3be1d88a0f1bad4b4c01436638
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.2 KB (334172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:469cbdf0a43a3b348b602651aa2aa2460c545e0a527950248c722eba4c1e6fac`

```dockerfile
```

-	Layers:
	-	`sha256:0b8e772e6707b2c953c84db65f6fc0c700d43d80350eac9883d213585e518be7`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 315.6 KB (315605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21e8a360f5a935352045f20a4c4a2253e333180b840eeaafe42be297baf42274`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 18.6 KB (18567 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-alpine` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:d48486623b1522f9e6d0fd0407e2929eb66bf2cc5bfbf71c2d89611d6fd24c35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23504341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a73eea10ae6ad4918f4dcbaf33fac04a70713c92d1f191eac79c3c5114eb55`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:56:01 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:56:02 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:56:03 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:03 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:56:03 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:56:03 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:56:03 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873b94e511f0ec80ec6cce86c968b610d228a774642b83f1a326d66ee6ae3aa8`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 2.8 MB (2814373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6d1df8fdd49da33b1d28007fdd1b07e242c84c67de3a92c2b7c7e9b847ef08d`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 7.5 KB (7499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8c8f8ce0e89504c960b22c3185bfb6e05eee0d897d84cfd010a12c70854ab9`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 16.5 MB (16491949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:10730ad845a1ca6297f672954ed94457459be6e4ff5f8b68e775baa4f75fbb9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.3 KB (334252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93401ef29b5158eba16ec2ba44339cea6bdbaa7055e899b5a5c96b2e88cf290a`

```dockerfile
```

-	Layers:
	-	`sha256:c6400d8de2626b662e1e17c25df8375093495be746b3bbb65131e69fa1d9db9d`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 315.6 KB (315641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3a7e9f8ef8acc4ede2bdc6185b5ac8c1b482add58b99147135f950c3cf22e80`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 18.6 KB (18611 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-alpine` - linux; ppc64le

```console
$ docker pull caddy@sha256:ff88079998a1d0ba6f228c328559d4e62ba3e23af23e03b07a03c26a76e564cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23289477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5c541ac1e43db67305c3cdca64c7fb798ca25eb4dd6f4035bd72ea6a1a0f8e6`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:54:56 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:55:21 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:55:33 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:55:33 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:55:33 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:55:33 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:55:33 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:55:33 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:55:33 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:55:33 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:55:44 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:55:44 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4802e0decc07b315032252b6be29a6e3794399b42e3d4217eb2e19810c3174`  
		Last Modified: Wed, 04 Nov 2026 17:56:17 GMT  
		Size: 2.9 MB (2932250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad41792dfa73ceb9d83ad15b8ab9cc0b2be12338d4a1e9d082b7bf78ef8fade3`  
		Last Modified: Wed, 04 Nov 2026 17:56:18 GMT  
		Size: 7.5 KB (7503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40aa986fbe3a1df875e66d40afcb7c0845e6d3af591ce6999bb3661561c10657`  
		Last Modified: Wed, 04 Nov 2026 17:56:19 GMT  
		Size: 16.5 MB (16528870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:c20b862368bf90b1e3fa1587d2c114a4941eb3c1675fe097d251307148ab490a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.1 KB (334095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:199a982489ac400a96711f5035dc7ec32172db2c39b9769e2e3651849822dc84`

```dockerfile
```

-	Layers:
	-	`sha256:3146ebe2743ac7948ef787e58eba77453e7e520d64bb62dea3f5d92a536dcc73`  
		Last Modified: Wed, 04 Nov 2026 17:56:17 GMT  
		Size: 315.6 KB (315594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:758b0113ca1d278b827b18662633a6cdcf77d0203e6604905e9f5c7d1e526c8a`  
		Last Modified: Wed, 04 Nov 2026 17:56:17 GMT  
		Size: 18.5 KB (18501 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-alpine` - linux; riscv64

```console
$ docker pull caddy@sha256:77a5533e54c81871e933687658b5d6a44265e75bae69bb6375a91383c1ffb76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23763391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877017629382ecdaf48df46afb54ec03844ec812855b044082cd22e0bb863afb`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 07:00:19 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Thu, 05 Nov 2026 07:00:21 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Thu, 05 Nov 2026 07:00:27 GMT
ENV CADDY_VERSION=v2.11.8
# Thu, 05 Nov 2026 07:00:27 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Thu, 05 Nov 2026 07:00:27 GMT
ENV XDG_CONFIG_HOME=/config
# Thu, 05 Nov 2026 07:00:27 GMT
ENV XDG_DATA_HOME=/data
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 07:00:27 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 07:00:27 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:00:27 GMT
EXPOSE map[443/udp:{}]
# Thu, 05 Nov 2026 07:00:27 GMT
EXPOSE map[2019/tcp:{}]
# Thu, 05 Nov 2026 07:00:28 GMT
WORKDIR /srv
# Thu, 05 Nov 2026 07:00:28 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b243dd3f78be3ff66be2edf51b3320f33932a2643de0382aabcc7451cc1d102`  
		Last Modified: Thu, 05 Nov 2026 07:01:29 GMT  
		Size: 2.9 MB (2930615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc3453e8adac8cf5a49ad6b057cb143688903d1c8637e7239f90f6dad8301b2f`  
		Last Modified: Thu, 05 Nov 2026 07:01:29 GMT  
		Size: 7.5 KB (7502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f9223ac75c6a1a12d29241638f981c0cb6eff5ecc027e6e6483675e06634f8a`  
		Last Modified: Thu, 05 Nov 2026 07:01:32 GMT  
		Size: 17.2 MB (17244595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:bbfe7db37148fedff73b048d06c8d440079103765bb26d8d3ff88f40adac4283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.1 KB (334091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7763aa7321cac96f9bc28cad61a3a46cfb05081f242f50e940de633852e6fb6b`

```dockerfile
```

-	Layers:
	-	`sha256:663bafd8bcb8c99e0a08a065c8d4e75b18baa3431df39812e3b0d9a81350d38f`  
		Last Modified: Thu, 05 Nov 2026 07:01:29 GMT  
		Size: 315.6 KB (315590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37596a9fbfe0de52e041917bd80b035bf70c1e11ce758b6784fe5e5796dd5316`  
		Last Modified: Thu, 05 Nov 2026 07:01:29 GMT  
		Size: 18.5 KB (18501 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-alpine` - linux; s390x

```console
$ docker pull caddy@sha256:6df2d88e242bbc40dbaae102045f3537c9d988c37f0e9f32ec5a59eb7822423b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24136179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a0ff7d133cc4fa4c0e464d8126567e1ebf625068c1141d62bf5f1fe880db72`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:54:31 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:54:33 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:54:33 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:54:33 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:54:33 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:54:33 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:54:33 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:54:33 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:54:33 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:54:33 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:54:33 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3160eca0d674aa6dbbfbfce3c9df7ef11c85e6f658ace8c027ebd1cdfc53b99f`  
		Last Modified: Wed, 04 Nov 2026 17:54:44 GMT  
		Size: 2.9 MB (2914741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b8a8eb35c9fb4d61cdc88a7ac4008899c342f64f54f2efbaaba9233e84204c5`  
		Last Modified: Wed, 04 Nov 2026 17:54:44 GMT  
		Size: 7.5 KB (7502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd224a2dd4702f0fd00b7dcac7d191597019c51cd31aaf6b5b3027d03d3c2ca`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 17.5 MB (17494194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:c921ef6152f997e93b113fa249d92639e3052271393487a1d21d132010d8296f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 KB (333964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c8c7ccc5c9c0fcfb60339b5665c7ff2f5622c8631d90cc253054a58282eb578`

```dockerfile
```

-	Layers:
	-	`sha256:cea63384879323dcf292cc0507cda1a549a1e9c4a2ef78fb2184459fdc48e811`  
		Last Modified: Wed, 04 Nov 2026 17:54:44 GMT  
		Size: 315.5 KB (315536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de008cdae2ba256db19a07f3b77749db37b6707673cab309b7506175ed0f3d70`  
		Last Modified: Wed, 04 Nov 2026 17:54:44 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

## `caddy:2-builder`

```console
$ docker pull caddy@sha256:3d2f0c4c322bbb420a70d02b775e79d3f837fe1fecea937d7536e4f5e8e1ede7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
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
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `caddy:2-builder` - linux; amd64

```console
$ docker pull caddy@sha256:f5ca6b3084eb14bd936970e95ad0b00d814b039b9263c3227cdead98c6b89a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83901648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73a4be9b1fc009db503df9d7fd20d8a5d059dacfea8514298d2d59698e0fd357`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:58:02 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 22:58:09 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 22:58:09 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 22:58:09 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 22:58:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:58:09 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 22:58:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 22:58:12 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:57:18 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:57:18 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:57:18 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:57:18 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:57:18 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:57:18 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:57:18 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:57:18 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c012d78a862fe59ae6789c91f982ea68a882c9c44bbde97013914458dcdd9c4c`  
		Last Modified: Wed, 21 Oct 2026 22:58:25 GMT  
		Size: 244.5 KB (244471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0bb27ae78502103ed383ed33346f88a83943fb7bd93977850d5890ee8fb3b`  
		Last Modified: Tue, 20 Oct 2026 02:42:46 GMT  
		Size: 71.2 MB (71150395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e3100880d834be60a9562375f4c5018b2cb26d64591bd0060aa3a80b935f43`  
		Last Modified: Wed, 21 Oct 2026 22:58:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f75821daa4e57f3cf136ac3698c24e27acc6148b904936fad0875779d9a7896`  
		Last Modified: Wed, 04 Nov 2026 17:57:27 GMT  
		Size: 6.6 MB (6643577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:363e2d59666e67f976bdd297efde475d864502c6df48318c8ec218b3c02f60b7`  
		Last Modified: Wed, 04 Nov 2026 17:57:27 GMT  
		Size: 2.0 MB (2009506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f753fcec1ce79dc0413a0a309b6fb2956d4eba7c0b69fa8bf2521ba976f6a891`  
		Last Modified: Wed, 04 Nov 2026 17:57:26 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:c6ff12d4b199ab8009031f6f52380f34dfe292ab0a3b4e94bf091954bf832fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.4 KB (283370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29d63d2129aa380ca65172aae435b595525aaf52718784904bea68b9dff8e02`

```dockerfile
```

-	Layers:
	-	`sha256:b43270beb5d9fa4753496c872822e2a9c7de255f3b67b18d19bdc2f7eb86e790`  
		Last Modified: Wed, 04 Nov 2026 17:57:26 GMT  
		Size: 263.2 KB (263241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c0cd564e6a1a4c550c2bb1412edd3214269f177e85a5dae8388f2fad4cbd5b2`  
		Last Modified: Wed, 04 Nov 2026 17:57:26 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - linux; arm variant v6

```console
$ docker pull caddy@sha256:b568aab6f8b018ddb505fa6055c6e7c622f767a36976ba68cfab769be167e0c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81892741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83650bcf36d98ced23db81cb3f128c49e97039e39bcb4f25f0289082f037adcc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:29:36 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:29:45 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:29:45 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:29:45 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:29:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:29:45 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:29:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:29:48 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:56:04 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:56:05 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:56:05 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:05 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:56:05 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:56:05 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:56:05 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:56:05 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057399039eb243e7808b91993ba9f63d3e0da431e05f5bbb72f37e5dd6b080c8`  
		Last Modified: Wed, 21 Oct 2026 23:29:59 GMT  
		Size: 245.6 KB (245575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311ceebe23a2437e4f10eca55adfacd488c82ac6aa8e96dacaebe20785979cba`  
		Last Modified: Tue, 20 Oct 2026 02:42:15 GMT  
		Size: 69.7 MB (69655857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4270a94f0219df984116129a409fe43c3d2d9c5996177b591aca31e1f3615398`  
		Last Modified: Wed, 21 Oct 2026 23:29:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57981200b77c1ac92be88844e2b5d96ed3085b7d4bf3a2a65c38812afc5adaae`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 6.6 MB (6550958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7f91d9deb69265e264ce01570a2c8096325281fb63fae1d86d1f1c4b45c705d`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 1.9 MB (1881469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc603c44182b798efd59c2539361f0c2091b5cce17da95246a8317bd751bf59`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:ae2567192a55556ecfa6571bbf2b213ae00692d20a5adc60e9ef41d52be603fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 KB (20039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0e5d6b36579df986e3a4fbce904711cff41d948011bc50249655b1c0b53ff0c`

```dockerfile
```

-	Layers:
	-	`sha256:88d4f38776bbaa9941ccb45282129440b1ad886df732151a9b64dc6ebd5cf462`  
		Last Modified: Wed, 04 Nov 2026 17:56:09 GMT  
		Size: 20.0 KB (20039 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - linux; arm variant v7

```console
$ docker pull caddy@sha256:dd6a43a6c388a1550850ce282e5f3380c65e6eb0c816c3bdd92d0bedee6d8747
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.0 MB (81040107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef03978689ceb0b7e301965ff96198caaf5b44eb2d860e1dd347b6a875c6f9d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:30:49 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:33:59 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:33:59 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:33:59 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:33:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:33:59 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:34:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:34:02 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:56:37 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:56:38 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:56:38 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:38 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:56:38 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:56:38 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:56:38 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:56:38 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ea789e2969e7e9134f029905c7800eb29baab37b23bce0b5c7b8842814015e`  
		Last Modified: Wed, 21 Oct 2026 23:30:58 GMT  
		Size: 244.5 KB (244518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae9b35601617bc051bb43546b04b850ce4f1eac0f66a3a5d94eff209388a0b2`  
		Last Modified: Tue, 20 Oct 2026 02:43:07 GMT  
		Size: 69.7 MB (69655805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d4e0aad963a6de3ba7f2ac6cad5cd64943f102880db12296ba798d90e05b19`  
		Last Modified: Wed, 21 Oct 2026 23:34:16 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddeac073f1ff9ce1762b297bdd4dc1735ce37ab24c5af711fdfd0907a0ad0ca7`  
		Last Modified: Wed, 04 Nov 2026 17:56:46 GMT  
		Size: 6.0 MB (5995495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a745b9350000bcd3caa8d30555052a24a52df1e4445ecf1552b74fb5e1766bf7`  
		Last Modified: Wed, 04 Nov 2026 17:56:46 GMT  
		Size: 1.9 MB (1877039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d9929a95fe998bd09e0fd1ea6e728e41de22218969a24a5a235eeb5021ed86a`  
		Last Modified: Wed, 04 Nov 2026 17:56:45 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:f534cd318dde50f4dfb5d7c4d09dd55993ee4e56051566e04943e6450c823aee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.9 KB (285887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:200aafce2fad433150b55aaf21e495b9fad99309cab50ff448dcf7c60eb473b0`

```dockerfile
```

-	Layers:
	-	`sha256:6a41681ca1d8c3bd081286d8a0bf3afb1164d71bbe0534f2703014ee8dc7b1a3`  
		Last Modified: Wed, 04 Nov 2026 17:56:45 GMT  
		Size: 265.6 KB (265633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a2331cc41bfa20b1f481c65211a111ffac4b73b9a3bc58775fa9bc905db1a98`  
		Last Modified: Wed, 04 Nov 2026 17:56:45 GMT  
		Size: 20.3 KB (20254 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:188269e13e55e4fd9b8d07c70a116b64de79d6cc8868cc508e60d079ab89b18b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80715823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a5a3c3741317bb370be72fb12c60d0becda282cf1878f8d6f36d74d0dc0fea`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:46 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:20:54 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:20:54 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:20:54 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:20:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:20:54 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:20:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:20:56 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:56:21 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:56:21 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:56:21 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:21 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:56:21 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:56:21 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:56:22 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:56:22 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcdc05aad5cf439d58eff6bbe6e136d87af146e3b7442a5c64928da3ae1b86a3`  
		Last Modified: Wed, 21 Oct 2026 23:21:11 GMT  
		Size: 246.9 KB (246920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e7dba5c30798b9d70d746d9fb1606b744e5c3baa8015b51dad60cea99c045b`  
		Last Modified: Tue, 20 Oct 2026 02:42:50 GMT  
		Size: 67.7 MB (67719732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070112d392529aede516cb12dd04bbbf175fcab48c54121d76e09a5043ce92a1`  
		Last Modified: Wed, 21 Oct 2026 23:21:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ebdeb09f3c924d39a56d696297e2d657a33871448b8e075942cf6a752f6c58c`  
		Last Modified: Wed, 04 Nov 2026 17:56:30 GMT  
		Size: 6.7 MB (6727138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39f58f80fb592545c17183ccbecd0b91355710c0665447e528d36424e942860`  
		Last Modified: Wed, 04 Nov 2026 17:56:30 GMT  
		Size: 1.8 MB (1830954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2689232fbef6373f21177d0f3d90d3882efce2c056f4a0a1a2f274c5940996b4`  
		Last Modified: Wed, 04 Nov 2026 17:56:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:ad0d33a228c686de25fba171bceb5c6af03099048487bdc6e3f6c1c83c1b5547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 KB (282991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31d63d5e32fc1cc2653faf3997b6b813beac19ed930b727da0d45d2425331cc`

```dockerfile
```

-	Layers:
	-	`sha256:5debd47c4c43686d18317b7954ead90bd0e141ca4dac0b9c3d62ebfc9c223937`  
		Last Modified: Wed, 04 Nov 2026 17:56:29 GMT  
		Size: 262.7 KB (262695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53d25d2936ebab3f9951b9e7e0a2c51d87d02980c61d812a5f129bf7bc681ea3`  
		Last Modified: Wed, 04 Nov 2026 17:56:29 GMT  
		Size: 20.3 KB (20296 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - linux; ppc64le

```console
$ docker pull caddy@sha256:2c6692c88ae9ce80f131b5d4b74388fef59f0562bf9ba63f48927d0deb672ff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81481471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c078bdbd49232982d7b0a5b520eb8ca7d0e2fa6f5c4413b231845c5ed69e91d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 13:35:51 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:41:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:41:36 GMT
COPY /target/ / # buildkit
# Thu, 22 Oct 2026 13:43:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 22 Oct 2026 13:43:20 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:55:21 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:55:30 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:55:30 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:55:30 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:55:30 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:55:30 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:55:42 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:55:48 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1039312999d7cc79e1a73e7d562cb99a4e1d9808a1c7eb990e7bd00db569593`  
		Last Modified: Thu, 22 Oct 2026 13:36:31 GMT  
		Size: 247.4 KB (247354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99280a61a753e565d841200e74a9ffba4717a286b10e4a5b0e0f4148164d619`  
		Last Modified: Tue, 20 Oct 2026 02:42:42 GMT  
		Size: 68.5 MB (68492171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d26cca5cf4e23e7a631853927e088cd119148d2149259c5d02e4358523c9f9b`  
		Last Modified: Thu, 22 Oct 2026 13:43:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ec1cdb0369df3ec046840060bcdbafe17a6d5d0b64286b96ff3bd86f4c36a9`  
		Last Modified: Wed, 04 Nov 2026 17:56:23 GMT  
		Size: 7.1 MB (7067825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a74bbbbe3cab47dc229b607b0ab407ed2ea0e57494a027de2a771709fc6e578`  
		Last Modified: Wed, 04 Nov 2026 17:56:23 GMT  
		Size: 1.9 MB (1852706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5d4efc145ed802ea281abacad7847207d1e5b29f7028adb36ed021ee7623cb`  
		Last Modified: Wed, 04 Nov 2026 17:56:24 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:7ef384c917d2c72247359c2f8206cce9da27e7a01410109a801e062512c81b73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 KB (282862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fffb55fa30667e00acb5dad7551df3b10c6165ff741c359a72ca9a1610782502`

```dockerfile
```

-	Layers:
	-	`sha256:b5e6a2af55077255e40063701decf51a2ebffc67802ef6533fd5e2e55d9084e2`  
		Last Modified: Wed, 04 Nov 2026 17:56:24 GMT  
		Size: 262.7 KB (262664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d07be2f615552682b5000418a0d635db93b098e2060fb882cff1d21ef7df550`  
		Last Modified: Wed, 04 Nov 2026 17:56:24 GMT  
		Size: 20.2 KB (20198 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - linux; riscv64

```console
$ docker pull caddy@sha256:5976ed6ad86ce3fa234815ce06110972c027b5f3602c3b026c5de8d5e48789d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81675521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b0bf3a1751a3aeefba4002876c682d97f77e0c732a1b5df1ef55496ab6e0026`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 13:36:28 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:43:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:43:35 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 00:22:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 00:22:55 GMT
WORKDIR /go
# Thu, 05 Nov 2026 07:03:46 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 05 Nov 2026 07:03:47 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 07:03:47 GMT
ENV CADDY_VERSION=v2.11.8
# Thu, 05 Nov 2026 07:03:47 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 07:03:47 GMT
ENV XCADDY_SETCAP=1
# Thu, 05 Nov 2026 07:03:47 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 05 Nov 2026 07:03:48 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 05 Nov 2026 07:03:48 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0c6bbdd7e2de39b486fb00ad142f28331aaffeee541e676368c08a410f76ed`  
		Last Modified: Mon, 26 Oct 2026 13:37:55 GMT  
		Size: 244.9 KB (244881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb54614ae9ed635bfb8e27e661f01b863c8fcc98d1049b51549da2b2bf52a7a4`  
		Last Modified: Tue, 20 Oct 2026 02:50:40 GMT  
		Size: 69.2 MB (69170985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dad86abc0730a42f957fd3d2aeb23ea0616dea43d14b33d12b96325a36d169e`  
		Last Modified: Tue, 27 Oct 2026 00:24:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c4c16eb9680371fca8f637985610d3a4b85255941c76a98a2ea0dd04432c00b`  
		Last Modified: Thu, 05 Nov 2026 07:05:27 GMT  
		Size: 6.8 MB (6825625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f45a92b7c360dc9219503a83da9c3c705416b0b93da5f576141a4f54c00774`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 1.9 MB (1852791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2d08bd7441e433de00fd4eae87a8b3ff26f54839ffb155a092b95127a5dc51f`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:df2ff7bf921df9a16643efdb2163df724b2cecdb7b9d18dc62e40246d386c79e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 KB (282859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81fdef83eeef55f4039393b700e958a9ef945541926df8d9c7b36ecd394819dd`

```dockerfile
```

-	Layers:
	-	`sha256:71f67b9b9248518abcbb988b596d199d322073e385b35b7b3ef9573cce5637c3`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 262.7 KB (262660 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1db7972890027e7ce8cb45c48ea7206795733fc21a313202520668bae351437e`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 20.2 KB (20199 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - linux; s390x

```console
$ docker pull caddy@sha256:7673aabded7251df3319d5c0ebeca77666e5d8efe0371ea7a2d8c5213b12479a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83120777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3bb20b8d4b4a40649130906bec7ebd5660dfafb0487e66c87e7e0600d727e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:41:23 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:41:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:41:05 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:41:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:41:33 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:54:32 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:54:32 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:54:32 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:54:32 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:54:32 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394b72af52beb97b1ac0b1a98b13629b3b0aee2321f877e115a82124b80d7793`  
		Last Modified: Wed, 21 Oct 2026 23:41:45 GMT  
		Size: 245.6 KB (245571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c0523718a973c87af9229ebd329dd6cf4e5d8ba37906c1e4c9083f5bb46d84`  
		Last Modified: Tue, 20 Oct 2026 02:41:29 GMT  
		Size: 70.3 MB (70281640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:096905f6e50b9f46f97862a2a89bf93646cfd1326c57bfde369c1e8b28b45e43`  
		Last Modified: Wed, 21 Oct 2026 23:41:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd451073c8291040e36d1ad69d5d1aff7fcbcdde6a619463318c669639663ca`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 6.9 MB (6929167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91773e053345d095de77ac8ee8097500d4e2adfb2d4e79185160197a7c95188`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 1.9 MB (1944097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983f6d28817b32472305d38546d4ad8c5039c0bb56072fefb0ed383da9cef71b`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:f96d9615c049ff203083b41f15e921e7cf3220baf4a9baacb89dd47e0dd2646f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 KB (283215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e23784b2c54a2206de5ede21d1d08d0c11dbcc9138f2d41fc8f0d6a821325d6`

```dockerfile
```

-	Layers:
	-	`sha256:20d26e6c47c81bb7d1f238d070f68b16820f4b39cf7838d591209a27b40a3ac5`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 263.1 KB (263086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b4602176494052efed8ad3b0302d9053e7abd5be5a0ecc43d8636d9b52799a5`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:322cf178420fc490995ab4926e551ded39c7741bafd40e52d8f37721a5af63d3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2512025216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:405652c8cb9a777e8aee873526e5de489b3584c99fe7a4d85fc6e4cc6c00bf0a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 23:01:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 23:01:50 GMT
ENV GIT_VERSION=2.56.0.4
# Tue, 27 Oct 2026 23:01:50 GMT
ENV GIT_TAG=v2.56.0.windows.4
# Tue, 27 Oct 2026 23:01:51 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.4/MinGit-2.56.0.4-64-bit.zip
# Tue, 27 Oct 2026 23:01:51 GMT
ENV GIT_DOWNLOAD_SHA256=e3bf78351fe777fba47ddee5950082f8a98bb0f02604fdc7ba3ee2cb68ffa877
# Tue, 27 Oct 2026 23:02:08 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:02:08 GMT
ENV GOPATH=C:\go
# Tue, 27 Oct 2026 23:02:13 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 27 Oct 2026 23:02:13 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 27 Oct 2026 23:03:36 GMT
RUN $url = 'https://dl.google.com/go/go1.27.3.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f26081f438319757f8a1b46d7d0b2c5ec7583d4038e485e0aa725cfde7885fff'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:03:37 GMT
WORKDIR C:\go
# Thu, 05 Nov 2026 18:52:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:52:42 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 18:52:44 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:52:46 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 18:54:15 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Thu, 05 Nov 2026 18:54:17 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9dc3ea73737b5e7988b67a3b7d66fb12d1c2d45ae0faa88815590457b0a29b`  
		Last Modified: Tue, 27 Oct 2026 23:03:53 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bca6fe69737ca73ad3f90994d40696ec38484b78dfb551c7453e8a9807b6d01`  
		Last Modified: Tue, 27 Oct 2026 23:03:53 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82709fc838d73d56ca04aa73f6f789b6386d035fb9349e1c9d228780049400c4`  
		Last Modified: Tue, 27 Oct 2026 23:03:52 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82212b5c849462e3dd0139e5a5b8d58d3290d92803198d5c1fee2a88cc24a5be`  
		Last Modified: Tue, 27 Oct 2026 23:03:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e0cc77e3f495c77875f1db941bab19c86844345c0256d4bf05597e900d69`  
		Last Modified: Tue, 27 Oct 2026 23:03:51 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3325ade1b95eef958b43223a8e2f930fb7a88598ff07289c108e40ea9568a3b`  
		Last Modified: Tue, 27 Oct 2026 23:03:56 GMT  
		Size: 43.3 MB (43340994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45beab588c2115a45d58cb6eab918d433478c7dbbef7d92f37cba8577cf68bd`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f4a352e310ffb8a93987326f53c0de896ff11e6a2ff1eea5ff3e7d53ecbdd0`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 342.2 KB (342171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82a5f4fcc0e72594b3ae2c9f480fa94be4c163c60eb901be1efe8af9a3b22da`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3514708ffcd88eb748540b2377d36f6f66979a9a404466596eef1f4ddc267a9f`  
		Last Modified: Tue, 27 Oct 2026 23:04:00 GMT  
		Size: 73.8 MB (73799496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff0d49c8c867b9582a5632680730d342eb19e9b2312e19c6d15dd7d0c6224a5`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9ab2e56e2d098ba7b923d3900c3a059128580601b8c4330b3ce30e9801c480`  
		Last Modified: Thu, 05 Nov 2026 18:54:29 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b8a891d239d53a8974688b221304c7560ebdbbfd82a019bd055f295d44192`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792e2e2b39b4dd9c9c9c571462238ef17d5af5ac4ddd4b5d66fd6fa8cfe2c4ee`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb594f57a5fb2306703fce5e22bcd0a0ccb5b0e92fe12f50d71de5b2da826c1e`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0850508e52ef599053526680e30927a065d297bd0fc01bcc6eb20f754de41af2`  
		Last Modified: Thu, 05 Nov 2026 18:54:29 GMT  
		Size: 2.5 MB (2476586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149a6383ffbf32a8756510d52ecb475ef4a6fb14b5a146d9165cae7ecc4944d3`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:2-builder` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:251630ed505d1bc71474d21c55de8c81013041f0be69b00734d6f10fc3af37a3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2346987143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b538f9c56cc6192b44467cf39f5699357058cab8013b2b91347260eaef074f10`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 23:01:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 23:01:55 GMT
ENV GIT_VERSION=2.56.0.4
# Tue, 27 Oct 2026 23:01:56 GMT
ENV GIT_TAG=v2.56.0.windows.4
# Tue, 27 Oct 2026 23:01:57 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.4/MinGit-2.56.0.4-64-bit.zip
# Tue, 27 Oct 2026 23:01:58 GMT
ENV GIT_DOWNLOAD_SHA256=e3bf78351fe777fba47ddee5950082f8a98bb0f02604fdc7ba3ee2cb68ffa877
# Tue, 27 Oct 2026 23:02:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:02:19 GMT
ENV GOPATH=C:\go
# Tue, 27 Oct 2026 23:02:25 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 27 Oct 2026 23:02:25 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 27 Oct 2026 23:03:54 GMT
RUN $url = 'https://dl.google.com/go/go1.27.3.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f26081f438319757f8a1b46d7d0b2c5ec7583d4038e485e0aa725cfde7885fff'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:03:55 GMT
WORKDIR C:\go
# Thu, 05 Nov 2026 18:52:29 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:52:33 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 18:52:35 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:52:36 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 18:53:59 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Thu, 05 Nov 2026 18:54:01 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f98ea005c6b5e82948bfd0d9f8a10a638f47353d2a860c1f04848b1fe63f43`  
		Last Modified: Tue, 27 Oct 2026 23:04:06 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25ff349fed69087dede49cbfb0d3b004befe6b14a59c473e56c8e2cccf4a6b4`  
		Last Modified: Tue, 27 Oct 2026 23:04:06 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8daa49ca7ead8b36f0b651f5788eead2db56caec3df7b94eb6f594cd3e5badb`  
		Last Modified: Tue, 27 Oct 2026 23:04:05 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32b0dbaa15dfd6332ead1255f233ea55cbb7a7d2eb216492a47bc4eb4f08a36`  
		Last Modified: Tue, 27 Oct 2026 23:04:04 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845ec009e41fbeeb45ebd214b6d358294dbf999e572d9d7ed78fb3f3f1b141a1`  
		Last Modified: Tue, 27 Oct 2026 23:04:04 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0343caa9e4c6abefa9caf25adbeacea608cbff97167723f99a282aa3a2d3c41c`  
		Last Modified: Tue, 27 Oct 2026 23:04:10 GMT  
		Size: 43.3 MB (43334640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6898c1b1554e9b4d9b0dab9c58c389f3f346f9f3d8be61f727d3dded97076b`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad6ffce0035c184d0f1cc69cc6eeee2960caf115514e65c99284f29a2362e3c`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 328.9 KB (328893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7eb5a2f945389244a435c579c2a21d1f289ebc2085d6ca51a23413dbb7345ff`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20140fb2422e642b34aa718958c5502a414c499b2fb93bff0ad64a135333051a`  
		Last Modified: Tue, 27 Oct 2026 23:04:14 GMT  
		Size: 73.8 MB (73788363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d46f6710058016f086fc453a4ff487f1ef0a8a5f2ed98c165d7be7df1a9daa`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97bd9afb309fbe0e00e3c3890bcb6b657012badb1ab77379d780d0f9516f4402`  
		Last Modified: Thu, 05 Nov 2026 18:54:19 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e418dd3b67b3ce1fde3dd9b4986f075bfdf19d21ac4739722823ca30f57ae692`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b96bd881305e184e63e771a5a35a07de64033d714d1f2f5fc3bbb36b516450`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11e7419554a1a0ed1cbe7f59c491e8a4b2219697a873b9ced64719df5a79466`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdc448824d456f3fddbdb0e5431171a1f7274d188b46463e05c83f183fd15c0`  
		Last Modified: Thu, 05 Nov 2026 18:54:20 GMT  
		Size: 2.5 MB (2461854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dead047b3a40bbbeb7dd37f709c20f5672f1fca49a8c9e3fb78ea309f92c26`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2-builder-alpine`

```console
$ docker pull caddy@sha256:e42a64b3bc70aa3a1387bde85b930e507a378fecae5852d5bfde9dcd37d0b999
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `caddy:2-builder-alpine` - linux; amd64

```console
$ docker pull caddy@sha256:f5ca6b3084eb14bd936970e95ad0b00d814b039b9263c3227cdead98c6b89a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83901648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73a4be9b1fc009db503df9d7fd20d8a5d059dacfea8514298d2d59698e0fd357`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:58:02 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 22:58:09 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 22:58:09 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 22:58:09 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 22:58:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:58:09 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 22:58:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 22:58:12 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:57:18 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:57:18 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:57:18 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:57:18 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:57:18 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:57:18 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:57:18 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:57:18 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c012d78a862fe59ae6789c91f982ea68a882c9c44bbde97013914458dcdd9c4c`  
		Last Modified: Wed, 21 Oct 2026 22:58:25 GMT  
		Size: 244.5 KB (244471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0bb27ae78502103ed383ed33346f88a83943fb7bd93977850d5890ee8fb3b`  
		Last Modified: Tue, 20 Oct 2026 02:42:46 GMT  
		Size: 71.2 MB (71150395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e3100880d834be60a9562375f4c5018b2cb26d64591bd0060aa3a80b935f43`  
		Last Modified: Wed, 21 Oct 2026 22:58:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f75821daa4e57f3cf136ac3698c24e27acc6148b904936fad0875779d9a7896`  
		Last Modified: Wed, 04 Nov 2026 17:57:27 GMT  
		Size: 6.6 MB (6643577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:363e2d59666e67f976bdd297efde475d864502c6df48318c8ec218b3c02f60b7`  
		Last Modified: Wed, 04 Nov 2026 17:57:27 GMT  
		Size: 2.0 MB (2009506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f753fcec1ce79dc0413a0a309b6fb2956d4eba7c0b69fa8bf2521ba976f6a891`  
		Last Modified: Wed, 04 Nov 2026 17:57:26 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:c6ff12d4b199ab8009031f6f52380f34dfe292ab0a3b4e94bf091954bf832fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.4 KB (283370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29d63d2129aa380ca65172aae435b595525aaf52718784904bea68b9dff8e02`

```dockerfile
```

-	Layers:
	-	`sha256:b43270beb5d9fa4753496c872822e2a9c7de255f3b67b18d19bdc2f7eb86e790`  
		Last Modified: Wed, 04 Nov 2026 17:57:26 GMT  
		Size: 263.2 KB (263241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c0cd564e6a1a4c550c2bb1412edd3214269f177e85a5dae8388f2fad4cbd5b2`  
		Last Modified: Wed, 04 Nov 2026 17:57:26 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; arm variant v6

```console
$ docker pull caddy@sha256:b568aab6f8b018ddb505fa6055c6e7c622f767a36976ba68cfab769be167e0c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81892741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83650bcf36d98ced23db81cb3f128c49e97039e39bcb4f25f0289082f037adcc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:29:36 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:29:45 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:29:45 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:29:45 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:29:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:29:45 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:29:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:29:48 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:56:04 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:56:05 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:56:05 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:05 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:56:05 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:56:05 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:56:05 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:56:05 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057399039eb243e7808b91993ba9f63d3e0da431e05f5bbb72f37e5dd6b080c8`  
		Last Modified: Wed, 21 Oct 2026 23:29:59 GMT  
		Size: 245.6 KB (245575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311ceebe23a2437e4f10eca55adfacd488c82ac6aa8e96dacaebe20785979cba`  
		Last Modified: Tue, 20 Oct 2026 02:42:15 GMT  
		Size: 69.7 MB (69655857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4270a94f0219df984116129a409fe43c3d2d9c5996177b591aca31e1f3615398`  
		Last Modified: Wed, 21 Oct 2026 23:29:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57981200b77c1ac92be88844e2b5d96ed3085b7d4bf3a2a65c38812afc5adaae`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 6.6 MB (6550958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7f91d9deb69265e264ce01570a2c8096325281fb63fae1d86d1f1c4b45c705d`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 1.9 MB (1881469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc603c44182b798efd59c2539361f0c2091b5cce17da95246a8317bd751bf59`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:ae2567192a55556ecfa6571bbf2b213ae00692d20a5adc60e9ef41d52be603fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 KB (20039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0e5d6b36579df986e3a4fbce904711cff41d948011bc50249655b1c0b53ff0c`

```dockerfile
```

-	Layers:
	-	`sha256:88d4f38776bbaa9941ccb45282129440b1ad886df732151a9b64dc6ebd5cf462`  
		Last Modified: Wed, 04 Nov 2026 17:56:09 GMT  
		Size: 20.0 KB (20039 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; arm variant v7

```console
$ docker pull caddy@sha256:dd6a43a6c388a1550850ce282e5f3380c65e6eb0c816c3bdd92d0bedee6d8747
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.0 MB (81040107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef03978689ceb0b7e301965ff96198caaf5b44eb2d860e1dd347b6a875c6f9d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:30:49 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:33:59 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:33:59 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:33:59 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:33:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:33:59 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:34:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:34:02 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:56:37 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:56:38 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:56:38 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:38 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:56:38 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:56:38 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:56:38 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:56:38 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ea789e2969e7e9134f029905c7800eb29baab37b23bce0b5c7b8842814015e`  
		Last Modified: Wed, 21 Oct 2026 23:30:58 GMT  
		Size: 244.5 KB (244518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae9b35601617bc051bb43546b04b850ce4f1eac0f66a3a5d94eff209388a0b2`  
		Last Modified: Tue, 20 Oct 2026 02:43:07 GMT  
		Size: 69.7 MB (69655805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d4e0aad963a6de3ba7f2ac6cad5cd64943f102880db12296ba798d90e05b19`  
		Last Modified: Wed, 21 Oct 2026 23:34:16 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddeac073f1ff9ce1762b297bdd4dc1735ce37ab24c5af711fdfd0907a0ad0ca7`  
		Last Modified: Wed, 04 Nov 2026 17:56:46 GMT  
		Size: 6.0 MB (5995495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a745b9350000bcd3caa8d30555052a24a52df1e4445ecf1552b74fb5e1766bf7`  
		Last Modified: Wed, 04 Nov 2026 17:56:46 GMT  
		Size: 1.9 MB (1877039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d9929a95fe998bd09e0fd1ea6e728e41de22218969a24a5a235eeb5021ed86a`  
		Last Modified: Wed, 04 Nov 2026 17:56:45 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:f534cd318dde50f4dfb5d7c4d09dd55993ee4e56051566e04943e6450c823aee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.9 KB (285887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:200aafce2fad433150b55aaf21e495b9fad99309cab50ff448dcf7c60eb473b0`

```dockerfile
```

-	Layers:
	-	`sha256:6a41681ca1d8c3bd081286d8a0bf3afb1164d71bbe0534f2703014ee8dc7b1a3`  
		Last Modified: Wed, 04 Nov 2026 17:56:45 GMT  
		Size: 265.6 KB (265633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a2331cc41bfa20b1f481c65211a111ffac4b73b9a3bc58775fa9bc905db1a98`  
		Last Modified: Wed, 04 Nov 2026 17:56:45 GMT  
		Size: 20.3 KB (20254 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:188269e13e55e4fd9b8d07c70a116b64de79d6cc8868cc508e60d079ab89b18b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80715823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a5a3c3741317bb370be72fb12c60d0becda282cf1878f8d6f36d74d0dc0fea`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:46 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:20:54 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:20:54 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:20:54 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:20:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:20:54 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:20:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:20:56 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:56:21 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:56:21 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:56:21 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:21 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:56:21 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:56:21 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:56:22 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:56:22 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcdc05aad5cf439d58eff6bbe6e136d87af146e3b7442a5c64928da3ae1b86a3`  
		Last Modified: Wed, 21 Oct 2026 23:21:11 GMT  
		Size: 246.9 KB (246920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e7dba5c30798b9d70d746d9fb1606b744e5c3baa8015b51dad60cea99c045b`  
		Last Modified: Tue, 20 Oct 2026 02:42:50 GMT  
		Size: 67.7 MB (67719732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070112d392529aede516cb12dd04bbbf175fcab48c54121d76e09a5043ce92a1`  
		Last Modified: Wed, 21 Oct 2026 23:21:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ebdeb09f3c924d39a56d696297e2d657a33871448b8e075942cf6a752f6c58c`  
		Last Modified: Wed, 04 Nov 2026 17:56:30 GMT  
		Size: 6.7 MB (6727138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39f58f80fb592545c17183ccbecd0b91355710c0665447e528d36424e942860`  
		Last Modified: Wed, 04 Nov 2026 17:56:30 GMT  
		Size: 1.8 MB (1830954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2689232fbef6373f21177d0f3d90d3882efce2c056f4a0a1a2f274c5940996b4`  
		Last Modified: Wed, 04 Nov 2026 17:56:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:ad0d33a228c686de25fba171bceb5c6af03099048487bdc6e3f6c1c83c1b5547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 KB (282991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31d63d5e32fc1cc2653faf3997b6b813beac19ed930b727da0d45d2425331cc`

```dockerfile
```

-	Layers:
	-	`sha256:5debd47c4c43686d18317b7954ead90bd0e141ca4dac0b9c3d62ebfc9c223937`  
		Last Modified: Wed, 04 Nov 2026 17:56:29 GMT  
		Size: 262.7 KB (262695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53d25d2936ebab3f9951b9e7e0a2c51d87d02980c61d812a5f129bf7bc681ea3`  
		Last Modified: Wed, 04 Nov 2026 17:56:29 GMT  
		Size: 20.3 KB (20296 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; ppc64le

```console
$ docker pull caddy@sha256:2c6692c88ae9ce80f131b5d4b74388fef59f0562bf9ba63f48927d0deb672ff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81481471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c078bdbd49232982d7b0a5b520eb8ca7d0e2fa6f5c4413b231845c5ed69e91d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 13:35:51 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:41:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:41:36 GMT
COPY /target/ / # buildkit
# Thu, 22 Oct 2026 13:43:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 22 Oct 2026 13:43:20 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:55:21 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:55:30 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:55:30 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:55:30 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:55:30 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:55:30 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:55:42 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:55:48 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1039312999d7cc79e1a73e7d562cb99a4e1d9808a1c7eb990e7bd00db569593`  
		Last Modified: Thu, 22 Oct 2026 13:36:31 GMT  
		Size: 247.4 KB (247354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99280a61a753e565d841200e74a9ffba4717a286b10e4a5b0e0f4148164d619`  
		Last Modified: Tue, 20 Oct 2026 02:42:42 GMT  
		Size: 68.5 MB (68492171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d26cca5cf4e23e7a631853927e088cd119148d2149259c5d02e4358523c9f9b`  
		Last Modified: Thu, 22 Oct 2026 13:43:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ec1cdb0369df3ec046840060bcdbafe17a6d5d0b64286b96ff3bd86f4c36a9`  
		Last Modified: Wed, 04 Nov 2026 17:56:23 GMT  
		Size: 7.1 MB (7067825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a74bbbbe3cab47dc229b607b0ab407ed2ea0e57494a027de2a771709fc6e578`  
		Last Modified: Wed, 04 Nov 2026 17:56:23 GMT  
		Size: 1.9 MB (1852706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5d4efc145ed802ea281abacad7847207d1e5b29f7028adb36ed021ee7623cb`  
		Last Modified: Wed, 04 Nov 2026 17:56:24 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:7ef384c917d2c72247359c2f8206cce9da27e7a01410109a801e062512c81b73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 KB (282862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fffb55fa30667e00acb5dad7551df3b10c6165ff741c359a72ca9a1610782502`

```dockerfile
```

-	Layers:
	-	`sha256:b5e6a2af55077255e40063701decf51a2ebffc67802ef6533fd5e2e55d9084e2`  
		Last Modified: Wed, 04 Nov 2026 17:56:24 GMT  
		Size: 262.7 KB (262664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d07be2f615552682b5000418a0d635db93b098e2060fb882cff1d21ef7df550`  
		Last Modified: Wed, 04 Nov 2026 17:56:24 GMT  
		Size: 20.2 KB (20198 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; riscv64

```console
$ docker pull caddy@sha256:5976ed6ad86ce3fa234815ce06110972c027b5f3602c3b026c5de8d5e48789d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81675521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b0bf3a1751a3aeefba4002876c682d97f77e0c732a1b5df1ef55496ab6e0026`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 13:36:28 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:43:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:43:35 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 00:22:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 00:22:55 GMT
WORKDIR /go
# Thu, 05 Nov 2026 07:03:46 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 05 Nov 2026 07:03:47 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 07:03:47 GMT
ENV CADDY_VERSION=v2.11.8
# Thu, 05 Nov 2026 07:03:47 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 07:03:47 GMT
ENV XCADDY_SETCAP=1
# Thu, 05 Nov 2026 07:03:47 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 05 Nov 2026 07:03:48 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 05 Nov 2026 07:03:48 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0c6bbdd7e2de39b486fb00ad142f28331aaffeee541e676368c08a410f76ed`  
		Last Modified: Mon, 26 Oct 2026 13:37:55 GMT  
		Size: 244.9 KB (244881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb54614ae9ed635bfb8e27e661f01b863c8fcc98d1049b51549da2b2bf52a7a4`  
		Last Modified: Tue, 20 Oct 2026 02:50:40 GMT  
		Size: 69.2 MB (69170985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dad86abc0730a42f957fd3d2aeb23ea0616dea43d14b33d12b96325a36d169e`  
		Last Modified: Tue, 27 Oct 2026 00:24:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c4c16eb9680371fca8f637985610d3a4b85255941c76a98a2ea0dd04432c00b`  
		Last Modified: Thu, 05 Nov 2026 07:05:27 GMT  
		Size: 6.8 MB (6825625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f45a92b7c360dc9219503a83da9c3c705416b0b93da5f576141a4f54c00774`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 1.9 MB (1852791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2d08bd7441e433de00fd4eae87a8b3ff26f54839ffb155a092b95127a5dc51f`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:df2ff7bf921df9a16643efdb2163df724b2cecdb7b9d18dc62e40246d386c79e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 KB (282859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81fdef83eeef55f4039393b700e958a9ef945541926df8d9c7b36ecd394819dd`

```dockerfile
```

-	Layers:
	-	`sha256:71f67b9b9248518abcbb988b596d199d322073e385b35b7b3ef9573cce5637c3`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 262.7 KB (262660 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1db7972890027e7ce8cb45c48ea7206795733fc21a313202520668bae351437e`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 20.2 KB (20199 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-builder-alpine` - linux; s390x

```console
$ docker pull caddy@sha256:7673aabded7251df3319d5c0ebeca77666e5d8efe0371ea7a2d8c5213b12479a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83120777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3bb20b8d4b4a40649130906bec7ebd5660dfafb0487e66c87e7e0600d727e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:41:23 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:41:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:41:05 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:41:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:41:33 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:54:32 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:54:32 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:54:32 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:54:32 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:54:32 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394b72af52beb97b1ac0b1a98b13629b3b0aee2321f877e115a82124b80d7793`  
		Last Modified: Wed, 21 Oct 2026 23:41:45 GMT  
		Size: 245.6 KB (245571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c0523718a973c87af9229ebd329dd6cf4e5d8ba37906c1e4c9083f5bb46d84`  
		Last Modified: Tue, 20 Oct 2026 02:41:29 GMT  
		Size: 70.3 MB (70281640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:096905f6e50b9f46f97862a2a89bf93646cfd1326c57bfde369c1e8b28b45e43`  
		Last Modified: Wed, 21 Oct 2026 23:41:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd451073c8291040e36d1ad69d5d1aff7fcbcdde6a619463318c669639663ca`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 6.9 MB (6929167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91773e053345d095de77ac8ee8097500d4e2adfb2d4e79185160197a7c95188`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 1.9 MB (1944097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983f6d28817b32472305d38546d4ad8c5039c0bb56072fefb0ed383da9cef71b`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:f96d9615c049ff203083b41f15e921e7cf3220baf4a9baacb89dd47e0dd2646f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 KB (283215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e23784b2c54a2206de5ede21d1d08d0c11dbcc9138f2d41fc8f0d6a821325d6`

```dockerfile
```

-	Layers:
	-	`sha256:20d26e6c47c81bb7d1f238d070f68b16820f4b39cf7838d591209a27b40a3ac5`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 263.1 KB (263086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b4602176494052efed8ad3b0302d9053e7abd5be5a0ecc43d8636d9b52799a5`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json

## `caddy:2-builder-windowsservercore-ltsc2022`

```console
$ docker pull caddy@sha256:fd376832a45bde301952ad8538e4ced511ba4ccfde972c7012ec351c06758527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `caddy:2-builder-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:251630ed505d1bc71474d21c55de8c81013041f0be69b00734d6f10fc3af37a3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2346987143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b538f9c56cc6192b44467cf39f5699357058cab8013b2b91347260eaef074f10`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 23:01:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 23:01:55 GMT
ENV GIT_VERSION=2.56.0.4
# Tue, 27 Oct 2026 23:01:56 GMT
ENV GIT_TAG=v2.56.0.windows.4
# Tue, 27 Oct 2026 23:01:57 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.4/MinGit-2.56.0.4-64-bit.zip
# Tue, 27 Oct 2026 23:01:58 GMT
ENV GIT_DOWNLOAD_SHA256=e3bf78351fe777fba47ddee5950082f8a98bb0f02604fdc7ba3ee2cb68ffa877
# Tue, 27 Oct 2026 23:02:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:02:19 GMT
ENV GOPATH=C:\go
# Tue, 27 Oct 2026 23:02:25 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 27 Oct 2026 23:02:25 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 27 Oct 2026 23:03:54 GMT
RUN $url = 'https://dl.google.com/go/go1.27.3.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f26081f438319757f8a1b46d7d0b2c5ec7583d4038e485e0aa725cfde7885fff'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:03:55 GMT
WORKDIR C:\go
# Thu, 05 Nov 2026 18:52:29 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:52:33 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 18:52:35 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:52:36 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 18:53:59 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Thu, 05 Nov 2026 18:54:01 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f98ea005c6b5e82948bfd0d9f8a10a638f47353d2a860c1f04848b1fe63f43`  
		Last Modified: Tue, 27 Oct 2026 23:04:06 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25ff349fed69087dede49cbfb0d3b004befe6b14a59c473e56c8e2cccf4a6b4`  
		Last Modified: Tue, 27 Oct 2026 23:04:06 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8daa49ca7ead8b36f0b651f5788eead2db56caec3df7b94eb6f594cd3e5badb`  
		Last Modified: Tue, 27 Oct 2026 23:04:05 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32b0dbaa15dfd6332ead1255f233ea55cbb7a7d2eb216492a47bc4eb4f08a36`  
		Last Modified: Tue, 27 Oct 2026 23:04:04 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845ec009e41fbeeb45ebd214b6d358294dbf999e572d9d7ed78fb3f3f1b141a1`  
		Last Modified: Tue, 27 Oct 2026 23:04:04 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0343caa9e4c6abefa9caf25adbeacea608cbff97167723f99a282aa3a2d3c41c`  
		Last Modified: Tue, 27 Oct 2026 23:04:10 GMT  
		Size: 43.3 MB (43334640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6898c1b1554e9b4d9b0dab9c58c389f3f346f9f3d8be61f727d3dded97076b`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad6ffce0035c184d0f1cc69cc6eeee2960caf115514e65c99284f29a2362e3c`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 328.9 KB (328893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7eb5a2f945389244a435c579c2a21d1f289ebc2085d6ca51a23413dbb7345ff`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20140fb2422e642b34aa718958c5502a414c499b2fb93bff0ad64a135333051a`  
		Last Modified: Tue, 27 Oct 2026 23:04:14 GMT  
		Size: 73.8 MB (73788363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d46f6710058016f086fc453a4ff487f1ef0a8a5f2ed98c165d7be7df1a9daa`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97bd9afb309fbe0e00e3c3890bcb6b657012badb1ab77379d780d0f9516f4402`  
		Last Modified: Thu, 05 Nov 2026 18:54:19 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e418dd3b67b3ce1fde3dd9b4986f075bfdf19d21ac4739722823ca30f57ae692`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b96bd881305e184e63e771a5a35a07de64033d714d1f2f5fc3bbb36b516450`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11e7419554a1a0ed1cbe7f59c491e8a4b2219697a873b9ced64719df5a79466`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdc448824d456f3fddbdb0e5431171a1f7274d188b46463e05c83f183fd15c0`  
		Last Modified: Thu, 05 Nov 2026 18:54:20 GMT  
		Size: 2.5 MB (2461854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dead047b3a40bbbeb7dd37f709c20f5672f1fca49a8c9e3fb78ea309f92c26`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2-builder-windowsservercore-ltsc2025`

```console
$ docker pull caddy@sha256:941dd431e0b855f2ccdd530b0f60113a70531639c387fa4c6c3bf4efa158ba21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `caddy:2-builder-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:322cf178420fc490995ab4926e551ded39c7741bafd40e52d8f37721a5af63d3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2512025216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:405652c8cb9a777e8aee873526e5de489b3584c99fe7a4d85fc6e4cc6c00bf0a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 23:01:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 23:01:50 GMT
ENV GIT_VERSION=2.56.0.4
# Tue, 27 Oct 2026 23:01:50 GMT
ENV GIT_TAG=v2.56.0.windows.4
# Tue, 27 Oct 2026 23:01:51 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.4/MinGit-2.56.0.4-64-bit.zip
# Tue, 27 Oct 2026 23:01:51 GMT
ENV GIT_DOWNLOAD_SHA256=e3bf78351fe777fba47ddee5950082f8a98bb0f02604fdc7ba3ee2cb68ffa877
# Tue, 27 Oct 2026 23:02:08 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:02:08 GMT
ENV GOPATH=C:\go
# Tue, 27 Oct 2026 23:02:13 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 27 Oct 2026 23:02:13 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 27 Oct 2026 23:03:36 GMT
RUN $url = 'https://dl.google.com/go/go1.27.3.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f26081f438319757f8a1b46d7d0b2c5ec7583d4038e485e0aa725cfde7885fff'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:03:37 GMT
WORKDIR C:\go
# Thu, 05 Nov 2026 18:52:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:52:42 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 18:52:44 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:52:46 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 18:54:15 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Thu, 05 Nov 2026 18:54:17 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9dc3ea73737b5e7988b67a3b7d66fb12d1c2d45ae0faa88815590457b0a29b`  
		Last Modified: Tue, 27 Oct 2026 23:03:53 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bca6fe69737ca73ad3f90994d40696ec38484b78dfb551c7453e8a9807b6d01`  
		Last Modified: Tue, 27 Oct 2026 23:03:53 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82709fc838d73d56ca04aa73f6f789b6386d035fb9349e1c9d228780049400c4`  
		Last Modified: Tue, 27 Oct 2026 23:03:52 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82212b5c849462e3dd0139e5a5b8d58d3290d92803198d5c1fee2a88cc24a5be`  
		Last Modified: Tue, 27 Oct 2026 23:03:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e0cc77e3f495c77875f1db941bab19c86844345c0256d4bf05597e900d69`  
		Last Modified: Tue, 27 Oct 2026 23:03:51 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3325ade1b95eef958b43223a8e2f930fb7a88598ff07289c108e40ea9568a3b`  
		Last Modified: Tue, 27 Oct 2026 23:03:56 GMT  
		Size: 43.3 MB (43340994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45beab588c2115a45d58cb6eab918d433478c7dbbef7d92f37cba8577cf68bd`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f4a352e310ffb8a93987326f53c0de896ff11e6a2ff1eea5ff3e7d53ecbdd0`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 342.2 KB (342171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82a5f4fcc0e72594b3ae2c9f480fa94be4c163c60eb901be1efe8af9a3b22da`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3514708ffcd88eb748540b2377d36f6f66979a9a404466596eef1f4ddc267a9f`  
		Last Modified: Tue, 27 Oct 2026 23:04:00 GMT  
		Size: 73.8 MB (73799496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff0d49c8c867b9582a5632680730d342eb19e9b2312e19c6d15dd7d0c6224a5`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9ab2e56e2d098ba7b923d3900c3a059128580601b8c4330b3ce30e9801c480`  
		Last Modified: Thu, 05 Nov 2026 18:54:29 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b8a891d239d53a8974688b221304c7560ebdbbfd82a019bd055f295d44192`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792e2e2b39b4dd9c9c9c571462238ef17d5af5ac4ddd4b5d66fd6fa8cfe2c4ee`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb594f57a5fb2306703fce5e22bcd0a0ccb5b0e92fe12f50d71de5b2da826c1e`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0850508e52ef599053526680e30927a065d297bd0fc01bcc6eb20f754de41af2`  
		Last Modified: Thu, 05 Nov 2026 18:54:29 GMT  
		Size: 2.5 MB (2476586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149a6383ffbf32a8756510d52ecb475ef4a6fb14b5a146d9165cae7ecc4944d3`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2-nanoserver`

```console
$ docker pull caddy@sha256:69f081326e11d5de2bc6c36c49f7ff6ada1ca0d0bea17ecc5eeea8dd430beb68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `caddy:2-nanoserver` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:52c08ac30210f7dd3f8797086ed8ac9250a0bd2c1f819fce3ec17bb43b550405
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219049983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d510733a0955a2dba4581ac8a3dbe4fefbc470008b16142b7e3e5fd68585a5da`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Thu, 05 Nov 2026 19:10:17 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Thu, 05 Nov 2026 19:10:18 GMT
RUN cmd /S /C #(nop) COPY file:f6fd9f7c8bd53ad2dea712d2b3468beaa8adaf6a9b8689f2f467c74c0f14078e in c:\caddy.exe 
# Thu, 05 Nov 2026 19:10:25 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Thu, 05 Nov 2026 19:10:29 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Thu, 05 Nov 2026 19:10:30 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 19:10:30 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:10:34 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:10:35 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:10:35 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Thu, 05 Nov 2026 19:10:37 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Thu, 05 Nov 2026 19:10:41 GMT
RUN caddy version
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddb22bef6de03c70812651b09b9821db3663cf45ff609907d10b9223c206e91`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 70.2 KB (70167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6273d9e342a51812fe6a306da942b6b9dbe8ae64128c1178a19252af4436b594`  
		Last Modified: Thu, 05 Nov 2026 19:10:53 GMT  
		Size: 18.5 MB (18498144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e65ef40e0b391980a2212b18173e33196f175d022677d8bf80196a25a27764ed`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 286.7 KB (286666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc2e4903cde3fdce7a882b066fe815f3c9bd7723bb1476ea6679f6ecefb781`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 110.6 KB (110556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7331d4d3ee891076ae62d845a7e716f975c8a172163ddcacf7a86a214d95f06b`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9cef09dbb1fce3303467532de78e107af35c09effe992c0c5b3f75fb4241d03`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7edd05c17a313dafe0ddc9d3c214f97b11cb340eb9052a7ebd18e46081fe5645`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5d7a4be40b85550ab5f630d17e44de58f0a5aed45ab517e19bb00b9b0a8d69`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ce06190fbf60c8b77d7d8395c6989896257f9d10fba71bd66b6fe1601b8122`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a85c2a042f8a082426f33de5baf817710599a44f092127bea8884df81e3e31`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd21175cf9bb40435e4283e25efbd5f8de0fa6696a4a7dcc1e409b35f1cef5ad`  
		Last Modified: Thu, 05 Nov 2026 19:10:48 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29396bba1f2c855cfde8454974891af94bf1de63f44dad9188b8e07a4aa6312`  
		Last Modified: Thu, 05 Nov 2026 19:10:47 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78531b08c4180ca18873517da84cc773b54b5956abe1dc0cf4d8c94dd68cf57c`  
		Last Modified: Thu, 05 Nov 2026 19:10:47 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850a9a9b73ee169356776de2a8b429f6f1732c66db7a036ca95a5a9493792eab`  
		Last Modified: Thu, 05 Nov 2026 19:10:48 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8636cc7c7957d3ec336e4fbb74ed197ac2de19d4b42db105b7cd462d40d9faf`  
		Last Modified: Thu, 05 Nov 2026 19:10:47 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71abcd22f3b21f1e95a509b2fe5f71af0bb4d40addb2f7105de2d49737e39b95`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f1f2d196935066aa2ef719631b3b557d1ace896db7ed0d60d439d2360f557`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdf3a91e2c46286142913d3f7a62f79dfb0f164e0063e1e3a24ae938b92d6cb`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73cad6dc76af673edc78125074e804abc99510c3b6e31b79bc2d5cf55eb1624`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 110.0 KB (109952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d227e39196c67b43f84f423ddda30d3e817ff1b3a4053613285525b20cfcb3d`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:2-nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:56b01f793a8128ee887d3e64de342dd3f2000a638ac1b4e7db29f2eb4bcb6284
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (145040802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d6191e2fc28e32c185f501fbd9572ebcf4e2a14ad065271c3337800994d629c`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Thu, 05 Nov 2026 19:10:13 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Thu, 05 Nov 2026 19:10:14 GMT
RUN cmd /S /C #(nop) COPY file:f6fd9f7c8bd53ad2dea712d2b3468beaa8adaf6a9b8689f2f467c74c0f14078e in c:\caddy.exe 
# Thu, 05 Nov 2026 19:10:25 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Thu, 05 Nov 2026 19:10:29 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:10:37 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:10:38 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:10:39 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:10:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:10:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 05 Nov 2026 19:10:44 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Thu, 05 Nov 2026 19:10:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Thu, 05 Nov 2026 19:10:47 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Thu, 05 Nov 2026 19:10:53 GMT
RUN caddy version
# Thu, 05 Nov 2026 19:10:54 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e1d06ea3837094c8761c7a40f502ad3ad9c213d4b486704f0a133be3d23f36`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 65.7 KB (65722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02d611403e37ecc02486a51183dcf106fb194e74b539f53bc1a00f1bbef02d7`  
		Last Modified: Thu, 05 Nov 2026 19:11:05 GMT  
		Size: 18.5 MB (18498202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1a17f3d31316c91205b5a519e0fc13c47939d3cc80aae106bd10649a823c04`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 290.2 KB (290212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3248fc9eb8b3c5ca0a8c7d6e92613d1df59864d1fd999fd6918e7245f189c392`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 123.2 KB (123168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40617a87b67b23ff7cfbe9de77177d9d3c6cb4284f1e39fe4a10f6171ad1ac4c`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e53fdde1ce4c324048149b5a456caab36f2220fb554c3c224cb29e9e3fa33b`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db93c253cdba976c39879edf23f24ea82aa83905b876504043e6c3cc9de39beb`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8965ee7d0cd826aaf2b9bf9879787f2110e2e2dab8f1fedcc0e9a1a4908b3f`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c29573c1901e5ea02b5f9e28e88e7a22b70c0acf84c41f4df6c1e795786c1`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2452f6722465dd773bf66b1cd607629e8b0f1fa73e4fc9fc7850e361c34a6553`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffdfaa4722c6a480ef02a2b6d8b2febc1a780a6a9a5557bbb6d3ffeeddd3ea4`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1597c7620d13ea57db6902612b6262261a7472a43e6b51a415418f0948523908`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fca5741b400358f371bb2758d52b63990bf9fe6613de999ccccd67b9bae200`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad096f0eeb95189cb63225d7b5873ab5d1e783703e639614a5aad4b23b880f1c`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c0adb7da06b7e605d03e094aad1033bc43abb83e9b59ecbcd8168abf0baa00`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8fe49479fc270257c4ca6cd3ce110e48008b6c06b1238b4c37fee4a39bf7b1`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa9a4eb0fa03b7c97b076bbccb045c37ba876eb6562c74449bb13fd5c309eb9`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10f275be5ed1abde3b084de91ae3a4a44c3334c0d8434366c30c953ae63460d`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fba564c3db312cd1674228848c185b36885e03927345eb02c84fee49d9bd6d2`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 121.0 KB (120982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc99724b66359e0703518bd1f7fa181f2563be2605953b7c7bc6641b51624d1`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2-nanoserver-ltsc2022`

```console
$ docker pull caddy@sha256:d2d8348d9c32aa61453875bf150b1dafce34d416c9195267d80f4a6e9eaed07b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `caddy:2-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:56b01f793a8128ee887d3e64de342dd3f2000a638ac1b4e7db29f2eb4bcb6284
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (145040802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d6191e2fc28e32c185f501fbd9572ebcf4e2a14ad065271c3337800994d629c`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Thu, 05 Nov 2026 19:10:13 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Thu, 05 Nov 2026 19:10:14 GMT
RUN cmd /S /C #(nop) COPY file:f6fd9f7c8bd53ad2dea712d2b3468beaa8adaf6a9b8689f2f467c74c0f14078e in c:\caddy.exe 
# Thu, 05 Nov 2026 19:10:25 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Thu, 05 Nov 2026 19:10:29 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:10:37 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:10:38 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:10:39 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:10:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:10:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 05 Nov 2026 19:10:44 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Thu, 05 Nov 2026 19:10:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Thu, 05 Nov 2026 19:10:47 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Thu, 05 Nov 2026 19:10:53 GMT
RUN caddy version
# Thu, 05 Nov 2026 19:10:54 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e1d06ea3837094c8761c7a40f502ad3ad9c213d4b486704f0a133be3d23f36`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 65.7 KB (65722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02d611403e37ecc02486a51183dcf106fb194e74b539f53bc1a00f1bbef02d7`  
		Last Modified: Thu, 05 Nov 2026 19:11:05 GMT  
		Size: 18.5 MB (18498202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1a17f3d31316c91205b5a519e0fc13c47939d3cc80aae106bd10649a823c04`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 290.2 KB (290212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3248fc9eb8b3c5ca0a8c7d6e92613d1df59864d1fd999fd6918e7245f189c392`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 123.2 KB (123168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40617a87b67b23ff7cfbe9de77177d9d3c6cb4284f1e39fe4a10f6171ad1ac4c`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e53fdde1ce4c324048149b5a456caab36f2220fb554c3c224cb29e9e3fa33b`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db93c253cdba976c39879edf23f24ea82aa83905b876504043e6c3cc9de39beb`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8965ee7d0cd826aaf2b9bf9879787f2110e2e2dab8f1fedcc0e9a1a4908b3f`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c29573c1901e5ea02b5f9e28e88e7a22b70c0acf84c41f4df6c1e795786c1`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2452f6722465dd773bf66b1cd607629e8b0f1fa73e4fc9fc7850e361c34a6553`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffdfaa4722c6a480ef02a2b6d8b2febc1a780a6a9a5557bbb6d3ffeeddd3ea4`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1597c7620d13ea57db6902612b6262261a7472a43e6b51a415418f0948523908`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fca5741b400358f371bb2758d52b63990bf9fe6613de999ccccd67b9bae200`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad096f0eeb95189cb63225d7b5873ab5d1e783703e639614a5aad4b23b880f1c`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c0adb7da06b7e605d03e094aad1033bc43abb83e9b59ecbcd8168abf0baa00`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8fe49479fc270257c4ca6cd3ce110e48008b6c06b1238b4c37fee4a39bf7b1`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa9a4eb0fa03b7c97b076bbccb045c37ba876eb6562c74449bb13fd5c309eb9`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10f275be5ed1abde3b084de91ae3a4a44c3334c0d8434366c30c953ae63460d`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fba564c3db312cd1674228848c185b36885e03927345eb02c84fee49d9bd6d2`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 121.0 KB (120982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc99724b66359e0703518bd1f7fa181f2563be2605953b7c7bc6641b51624d1`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2-nanoserver-ltsc2025`

```console
$ docker pull caddy@sha256:f3a662bcf43bcc21cff24811fe7f0a70d762d6bacd747c83dae7a97d6f5115b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `caddy:2-nanoserver-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:52c08ac30210f7dd3f8797086ed8ac9250a0bd2c1f819fce3ec17bb43b550405
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219049983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d510733a0955a2dba4581ac8a3dbe4fefbc470008b16142b7e3e5fd68585a5da`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Thu, 05 Nov 2026 19:10:17 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Thu, 05 Nov 2026 19:10:18 GMT
RUN cmd /S /C #(nop) COPY file:f6fd9f7c8bd53ad2dea712d2b3468beaa8adaf6a9b8689f2f467c74c0f14078e in c:\caddy.exe 
# Thu, 05 Nov 2026 19:10:25 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Thu, 05 Nov 2026 19:10:29 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Thu, 05 Nov 2026 19:10:30 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 19:10:30 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:10:34 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:10:35 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:10:35 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Thu, 05 Nov 2026 19:10:37 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Thu, 05 Nov 2026 19:10:41 GMT
RUN caddy version
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddb22bef6de03c70812651b09b9821db3663cf45ff609907d10b9223c206e91`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 70.2 KB (70167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6273d9e342a51812fe6a306da942b6b9dbe8ae64128c1178a19252af4436b594`  
		Last Modified: Thu, 05 Nov 2026 19:10:53 GMT  
		Size: 18.5 MB (18498144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e65ef40e0b391980a2212b18173e33196f175d022677d8bf80196a25a27764ed`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 286.7 KB (286666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc2e4903cde3fdce7a882b066fe815f3c9bd7723bb1476ea6679f6ecefb781`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 110.6 KB (110556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7331d4d3ee891076ae62d845a7e716f975c8a172163ddcacf7a86a214d95f06b`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9cef09dbb1fce3303467532de78e107af35c09effe992c0c5b3f75fb4241d03`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7edd05c17a313dafe0ddc9d3c214f97b11cb340eb9052a7ebd18e46081fe5645`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5d7a4be40b85550ab5f630d17e44de58f0a5aed45ab517e19bb00b9b0a8d69`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ce06190fbf60c8b77d7d8395c6989896257f9d10fba71bd66b6fe1601b8122`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a85c2a042f8a082426f33de5baf817710599a44f092127bea8884df81e3e31`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd21175cf9bb40435e4283e25efbd5f8de0fa6696a4a7dcc1e409b35f1cef5ad`  
		Last Modified: Thu, 05 Nov 2026 19:10:48 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29396bba1f2c855cfde8454974891af94bf1de63f44dad9188b8e07a4aa6312`  
		Last Modified: Thu, 05 Nov 2026 19:10:47 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78531b08c4180ca18873517da84cc773b54b5956abe1dc0cf4d8c94dd68cf57c`  
		Last Modified: Thu, 05 Nov 2026 19:10:47 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850a9a9b73ee169356776de2a8b429f6f1732c66db7a036ca95a5a9493792eab`  
		Last Modified: Thu, 05 Nov 2026 19:10:48 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8636cc7c7957d3ec336e4fbb74ed197ac2de19d4b42db105b7cd462d40d9faf`  
		Last Modified: Thu, 05 Nov 2026 19:10:47 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71abcd22f3b21f1e95a509b2fe5f71af0bb4d40addb2f7105de2d49737e39b95`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f1f2d196935066aa2ef719631b3b557d1ace896db7ed0d60d439d2360f557`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdf3a91e2c46286142913d3f7a62f79dfb0f164e0063e1e3a24ae938b92d6cb`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73cad6dc76af673edc78125074e804abc99510c3b6e31b79bc2d5cf55eb1624`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 110.0 KB (109952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d227e39196c67b43f84f423ddda30d3e817ff1b3a4053613285525b20cfcb3d`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2-windowsservercore`

```console
$ docker pull caddy@sha256:dc5598fddf05d80360663cb0e872500af9db218dc9dd72a2313593e0129789ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `caddy:2-windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:95abf9d14aaade6d55fc1fe67837955424c407f7c42122cf56ec269df234b976
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411640909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab973cc14b9e0c52be1b72c2f49166655cfed54fcb528bb66f89be6dcdea52d`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Thu, 05 Nov 2026 18:48:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:50:14 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:50:15 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:31 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:31 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:32 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:35 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:38 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:41 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:42 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:50:58 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:50:58 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3105b031b17a07724dd061a02beeb8696051059e004ecd9ed26a9e17fa3cdc02`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6906576f53243cb11c77a99856afa7453fea514a6239d8daad6968e7a25cba`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 390.9 KB (390919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066b4e49953291e1e590b8dc069208ed71f03d794a65a73813cb94d3655ec8f6`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f696f899da47fb0fca096725494a65fa4db2ed97ad592f434625bbf012bf4ccf`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 18.8 MB (18842906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61509ec5d34e9f0c9171bdaa8e0f889d0ae0266be4be408c271535c594f26c1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad5baa2304ae76c673dfcc132b4d9f5ed56a9c843984069ec22db953f24e183`  
		Last Modified: Thu, 05 Nov 2026 18:51:07 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf73fb3dacde170edc236e1c1f5e252519e2bba968312caa5570f79dd63be52`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9609d2b97073146c6468eedb5f32415c8a4cea9ca99c0602ccec800de92daf`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f857ee3127ebcc1c023b71b6e00845ff2e591296da1c03b77239054ce73059c7`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492801772255ddb526037e2a61f6e3f699aa4bfd695d5d2e844f6b041120e3b4`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fc7a0cadb49e63446196633584282ca5d0c21670b9f6a1303cc898819a5939`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4934c1a327b2efa689cf58a31640d074993b68ea01d8a3dc6f84b7aba9f7c40b`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421fbfd0d299f828ca293b67045a58a1398a41a480f918db09529c7720ba005e`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6808f4fa8c3f137ea2fe98d8343b4cd850d351a6c24415d6c7af9087023ca853`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc9e06eb01a305ee8abe1f8ad9e360461382e96f40fe09fe66638366d2b3921`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4771a13f86c4e0005351f8cf24a7199b26f48a8aca82fa482712118a2bd1f006`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc5ee75a0594ffb8e38f738cf42f1829027f8569736758d0d7b97265642a34a`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1be9f4dc4e64883d35c8a23d7396f2e832c32ef0bdbbf4bbca5cc99be26a3cf`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e9fcd3b3e14a5fede69ab9fee080810c9d6869d863c0c40b8109dbeb33bc10`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 336.2 KB (336222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad69e21d7b060686c53a003a33e3f7b9f3bcf502846a49bb9ffaa3ecf4b55167`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:2-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:2cc1f16a110963701a69a8093e051d1e6a68775f92423e05076fa8ac137525c2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2246593231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81d2947c39b363c1833583c76c91cafe62b764e5397a4d58ebd31dee62c2460`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Thu, 05 Nov 2026 18:48:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:49:53 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:49:54 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:24 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:26 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:27 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:29 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:30 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:32 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:42 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:51:03 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:51:04 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a008cba775e8dd0fa98285e50e68016c6e59c9c7d78331b024d243c8028b4cbc`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2d491895f80263abfd15f22c5c30039fa3ebd8d83087a2433cb846961153e1`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 371.5 KB (371473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5358c2eea08f8a9d209da01918bf15f92d5f2604b8bd529de0691bbbaabe927`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f303a38c5095af4de86858b6f2fedefdb9854cd41e24cb7b7f6e0de3e51e36`  
		Last Modified: Thu, 05 Nov 2026 18:51:17 GMT  
		Size: 18.8 MB (18820643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e592ad193121b2d1f6737f2fc89e24d03e9d33d6cca8e7add2957ccf57b9c61`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25fe4e292b538b454f7496f886418773ff60ff66c6837656d45cc2eb319ad3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a510990588c53fcf965e7ef95cd6e4765af69ddff30a9b85537cd50c39eee3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66d18fd2f2ee4d3baba1e5f3770dbed152867afeb50caad16c8ef145e17a6a2`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c670bb7e8fef2b7d9e51de98054eedf8577c01c8dab3f5307e26ad849db0ab39`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500888919d78c692c88bcec1ff4727723df54e3e34385d05da99c27285ee455f`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cdcae9d52f42f49f9a70d23426fc1feceede855ea6a0748f5f8663a35be90a`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7210618d2f93291160433de49867d5821e996bd5f005cc6c2b36801e9820829d`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790aa499060b9807135ef195885142b4c146bb6b428a843e2d8f79e595bb15f3`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07378ecb425dbafad024761d9bb5f11c3102ab26215b09dd90548401cfdbffc`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bb0f5976c9b254675a71ddc0e556c3e8c57376ad629f3a9431fb344eb0ac46`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23012e55c65156794576b8d2534079d31f2adad56300fb59cdeec1f58391db4`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6049bd500c5b62b0a05932db59f93ba3b7324a26e40d0c7e0708070abf5a4da9`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e3314e91f873e91dae6f3f2edceadb9449a46ef807bb118819fe75d83c8bb1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265b4d1fd5b55896df277baa4c1db1204b11578f29e866d4ad6afb1bc93f976b`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 322.8 KB (322785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48a65dcbe82d2fa7112e338b77c64a167952bea5d360d7a0b3587b835dbb9d69`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2-windowsservercore-ltsc2022`

```console
$ docker pull caddy@sha256:2298da0168ddb976b485403648a9f5f585fdfa0de3b04b380f6490413f3f59c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `caddy:2-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:2cc1f16a110963701a69a8093e051d1e6a68775f92423e05076fa8ac137525c2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2246593231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81d2947c39b363c1833583c76c91cafe62b764e5397a4d58ebd31dee62c2460`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Thu, 05 Nov 2026 18:48:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:49:53 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:49:54 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:24 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:26 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:27 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:29 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:30 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:32 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:42 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:51:03 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:51:04 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a008cba775e8dd0fa98285e50e68016c6e59c9c7d78331b024d243c8028b4cbc`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2d491895f80263abfd15f22c5c30039fa3ebd8d83087a2433cb846961153e1`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 371.5 KB (371473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5358c2eea08f8a9d209da01918bf15f92d5f2604b8bd529de0691bbbaabe927`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f303a38c5095af4de86858b6f2fedefdb9854cd41e24cb7b7f6e0de3e51e36`  
		Last Modified: Thu, 05 Nov 2026 18:51:17 GMT  
		Size: 18.8 MB (18820643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e592ad193121b2d1f6737f2fc89e24d03e9d33d6cca8e7add2957ccf57b9c61`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25fe4e292b538b454f7496f886418773ff60ff66c6837656d45cc2eb319ad3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a510990588c53fcf965e7ef95cd6e4765af69ddff30a9b85537cd50c39eee3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66d18fd2f2ee4d3baba1e5f3770dbed152867afeb50caad16c8ef145e17a6a2`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c670bb7e8fef2b7d9e51de98054eedf8577c01c8dab3f5307e26ad849db0ab39`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500888919d78c692c88bcec1ff4727723df54e3e34385d05da99c27285ee455f`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cdcae9d52f42f49f9a70d23426fc1feceede855ea6a0748f5f8663a35be90a`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7210618d2f93291160433de49867d5821e996bd5f005cc6c2b36801e9820829d`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790aa499060b9807135ef195885142b4c146bb6b428a843e2d8f79e595bb15f3`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07378ecb425dbafad024761d9bb5f11c3102ab26215b09dd90548401cfdbffc`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bb0f5976c9b254675a71ddc0e556c3e8c57376ad629f3a9431fb344eb0ac46`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23012e55c65156794576b8d2534079d31f2adad56300fb59cdeec1f58391db4`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6049bd500c5b62b0a05932db59f93ba3b7324a26e40d0c7e0708070abf5a4da9`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e3314e91f873e91dae6f3f2edceadb9449a46ef807bb118819fe75d83c8bb1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265b4d1fd5b55896df277baa4c1db1204b11578f29e866d4ad6afb1bc93f976b`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 322.8 KB (322785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48a65dcbe82d2fa7112e338b77c64a167952bea5d360d7a0b3587b835dbb9d69`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2-windowsservercore-ltsc2025`

```console
$ docker pull caddy@sha256:4033b7b744da419c8d150dfdcdb3cef86e4c15f721b1d1b9c55708db2e447f40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `caddy:2-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:95abf9d14aaade6d55fc1fe67837955424c407f7c42122cf56ec269df234b976
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411640909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab973cc14b9e0c52be1b72c2f49166655cfed54fcb528bb66f89be6dcdea52d`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Thu, 05 Nov 2026 18:48:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:50:14 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:50:15 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:31 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:31 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:32 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:35 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:38 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:41 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:42 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:50:58 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:50:58 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3105b031b17a07724dd061a02beeb8696051059e004ecd9ed26a9e17fa3cdc02`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6906576f53243cb11c77a99856afa7453fea514a6239d8daad6968e7a25cba`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 390.9 KB (390919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066b4e49953291e1e590b8dc069208ed71f03d794a65a73813cb94d3655ec8f6`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f696f899da47fb0fca096725494a65fa4db2ed97ad592f434625bbf012bf4ccf`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 18.8 MB (18842906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61509ec5d34e9f0c9171bdaa8e0f889d0ae0266be4be408c271535c594f26c1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad5baa2304ae76c673dfcc132b4d9f5ed56a9c843984069ec22db953f24e183`  
		Last Modified: Thu, 05 Nov 2026 18:51:07 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf73fb3dacde170edc236e1c1f5e252519e2bba968312caa5570f79dd63be52`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9609d2b97073146c6468eedb5f32415c8a4cea9ca99c0602ccec800de92daf`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f857ee3127ebcc1c023b71b6e00845ff2e591296da1c03b77239054ce73059c7`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492801772255ddb526037e2a61f6e3f699aa4bfd695d5d2e844f6b041120e3b4`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fc7a0cadb49e63446196633584282ca5d0c21670b9f6a1303cc898819a5939`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4934c1a327b2efa689cf58a31640d074993b68ea01d8a3dc6f84b7aba9f7c40b`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421fbfd0d299f828ca293b67045a58a1398a41a480f918db09529c7720ba005e`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6808f4fa8c3f137ea2fe98d8343b4cd850d351a6c24415d6c7af9087023ca853`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc9e06eb01a305ee8abe1f8ad9e360461382e96f40fe09fe66638366d2b3921`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4771a13f86c4e0005351f8cf24a7199b26f48a8aca82fa482712118a2bd1f006`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc5ee75a0594ffb8e38f738cf42f1829027f8569736758d0d7b97265642a34a`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1be9f4dc4e64883d35c8a23d7396f2e832c32ef0bdbbf4bbca5cc99be26a3cf`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e9fcd3b3e14a5fede69ab9fee080810c9d6869d863c0c40b8109dbeb33bc10`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 336.2 KB (336222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad69e21d7b060686c53a003a33e3f7b9f3bcf502846a49bb9ffaa3ecf4b55167`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2.11`

```console
$ docker pull caddy@sha256:dee6bce21b6c3d17c78805046901f9558f0bcfe9d3853f26ab7eb5cf06021ba4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
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
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `caddy:2.11` - linux; amd64

```console
$ docker pull caddy@sha256:fc9cbc100585871d18d4e451cca7021785c90a7006087427ae5ceb3e4efe6424
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24793574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5813f7eb9b94fac4970f9f576695fe1ed1d53d41586fd3eaa350caf7c4627d9c`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:37:06 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Thu, 05 Nov 2026 19:37:07 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Thu, 05 Nov 2026 19:37:08 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 19:37:08 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='0e85544340290a16ce4bfb76fe7d65e9de1bf3a6e67f5ccfff30b30d27ea4c73e078077b7bf3e58ae60b6b12e44327705287059c775bca5782e8ee85ea7edd75' ;; 		armhf)   binArch='armv6'; checksum='bfd9b415660caccaf5efbba2a8828eb9e61e31609ee6a62d532e70ef1f419e2ba420fdfd1e16c13e4896c33557813f87fddc849de57400eac34c4635f413bc0c' ;; 		armv7)   binArch='armv7'; checksum='ea042518bfb5eec5070a3119430263ae920b2d1e878c733a80d3d0ced1168afe5816362f295de46915d651a67f31f4d8a67ac67326f507d90cda71274b8ee689' ;; 		aarch64) binArch='arm64'; checksum='9e5e76d7888542924de2c25353ae87c5f77e2a22c5b1198633cae13688922282e05383d142599205c88d8d80eee5e967d291214d7abce4835329a191b20dd6e0' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='9b95cfa058e9651c0738179c6c18d0a93eb9c491e5c9ed3d95f30b23e1c9324e739bbf91a3ac0ebf91aaff89e25de1cff22f127484be937c0089b079266cd37f' ;; 		riscv64) binArch='riscv64'; checksum='52c9750b091a297766f2faaa01955eb894b614f4b94a9a418632d67f65f942e5363681869de0a6434d87482ac611f5c228282c23c6a90349085bb17aa3eff686' ;; 		s390x)   binArch='s390x'; checksum='213186130eeab27bc8fff06f4a6cffb253b36f719166c6cb12c539b4432186d6f7938847547a4e5cf47b1525424fdc74813950f08b928f788b7402127eb30e6b' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Thu, 05 Nov 2026 19:37:08 GMT
ENV XDG_CONFIG_HOME=/config
# Thu, 05 Nov 2026 19:37:08 GMT
ENV XDG_DATA_HOME=/data
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[443/udp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[2019/tcp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
WORKDIR /srv
# Thu, 05 Nov 2026 19:37:08 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d6974dbf71e422d13654405f502ff60ea306943b999003c012ecc6dd93d317`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 2.8 MB (2798840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a802d3a0a957e15ac518be2f3f3e786b9965895265888c3390753c81d1c085`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 7.5 KB (7501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5000c332a1cc372a1a248c2923696c0bc7817d213f2db0f4161fc18a3fc17cd7`  
		Last Modified: Thu, 05 Nov 2026 19:37:16 GMT  
		Size: 18.1 MB (18133528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11` - unknown; unknown

```console
$ docker pull caddy@sha256:38891e0175dd27a9b2c2a9e7314b356b0477f0002302bbeb51ccc87491f83abf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.6 KB (334614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a48c1497cac67279989d2b2c55010f2ed2546887974c8dfeee774c8cb204f5d`

```dockerfile
```

-	Layers:
	-	`sha256:f4183d0ed1bf0fc5c8a612569bbfe4bd35053c401ddec3523acf17101a388fd5`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 316.2 KB (316187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed4aeb1ef3c37f8dd726324c7a8739e6a1dcf890a00af32bf17ea28558f0b0bb`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 18.4 KB (18427 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11` - linux; arm variant v6

```console
$ docker pull caddy@sha256:2ff7d8bd4c710ca24cee8553653e81236fdff5eac3258b319d1f3a8c9c90e1b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23531358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46e92b0833bac59556797e076e62d1e55e29d47edd40f1d1127b2837556d4529`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:55:45 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:55:45 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:55:47 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:55:47 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:55:47 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:55:47 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:55:47 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:55:47 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:55:47 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:55:47 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:55:47 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:55:47 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ff5ed468f4efb91ff9789ce83f3ddf01ffd2fb0b6fc960f72960fd6491b771`  
		Last Modified: Wed, 04 Nov 2026 17:55:53 GMT  
		Size: 2.7 MB (2723763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6987a10766febd34eccb10c8cfd6ed45b4dbc7543f2f279c007430465248cd5e`  
		Last Modified: Wed, 04 Nov 2026 17:55:52 GMT  
		Size: 7.5 KB (7498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d2de185c946d96bd1f952450842f74c1e1456eaaed32c45e2c2453477d635a`  
		Last Modified: Wed, 04 Nov 2026 17:55:53 GMT  
		Size: 17.2 MB (17241774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11` - unknown; unknown

```console
$ docker pull caddy@sha256:b4d1fa4fd97be630b03ed7777f8d64b950b535a23568ba53ea68c9c4e8b4b533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 KB (18352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36929c847918c1d3bcc1a0a94c3670d9ca097bba6ff84631b35b6cc94d226189`

```dockerfile
```

-	Layers:
	-	`sha256:2685aa767d9f0cc12f38fe5b24dd8fb7d6aa4fd629476527c5fb5f9839998455`  
		Last Modified: Wed, 04 Nov 2026 17:55:52 GMT  
		Size: 18.4 KB (18352 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11` - linux; arm variant v7

```console
$ docker pull caddy@sha256:6071525234f574e3000519dde9d25abfd4c089236956a24f2e0984b0cfa0695d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23092436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b321be350ac394b2b447774810803eba1fdaf731137388ea78e0494454a523`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:56:00 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:56:01 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:56:03 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:03 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:56:03 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:56:03 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:56:03 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afc8c568af13a7e8edac14d90a6dc6b10c007b4c156e7169017c0dc3f3a98faf`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 2.6 MB (2596752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27dff964349b9f016fff9f0a401da75a95f9e4fce26ac4bfa94bb9c1dc6afb16`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 7.5 KB (7499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3faea2288b2bcf4c48c14e2a5fed69d4aa014fe1a3fc1806b8eb10f663b045a2`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 17.2 MB (17221493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11` - unknown; unknown

```console
$ docker pull caddy@sha256:bafe8101cc3628601a617b071b54dc33b676af3be1d88a0f1bad4b4c01436638
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.2 KB (334172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:469cbdf0a43a3b348b602651aa2aa2460c545e0a527950248c722eba4c1e6fac`

```dockerfile
```

-	Layers:
	-	`sha256:0b8e772e6707b2c953c84db65f6fc0c700d43d80350eac9883d213585e518be7`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 315.6 KB (315605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21e8a360f5a935352045f20a4c4a2253e333180b840eeaafe42be297baf42274`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 18.6 KB (18567 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:d48486623b1522f9e6d0fd0407e2929eb66bf2cc5bfbf71c2d89611d6fd24c35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23504341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a73eea10ae6ad4918f4dcbaf33fac04a70713c92d1f191eac79c3c5114eb55`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:56:01 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:56:02 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:56:03 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:03 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:56:03 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:56:03 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:56:03 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873b94e511f0ec80ec6cce86c968b610d228a774642b83f1a326d66ee6ae3aa8`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 2.8 MB (2814373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6d1df8fdd49da33b1d28007fdd1b07e242c84c67de3a92c2b7c7e9b847ef08d`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 7.5 KB (7499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8c8f8ce0e89504c960b22c3185bfb6e05eee0d897d84cfd010a12c70854ab9`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 16.5 MB (16491949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11` - unknown; unknown

```console
$ docker pull caddy@sha256:10730ad845a1ca6297f672954ed94457459be6e4ff5f8b68e775baa4f75fbb9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.3 KB (334252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93401ef29b5158eba16ec2ba44339cea6bdbaa7055e899b5a5c96b2e88cf290a`

```dockerfile
```

-	Layers:
	-	`sha256:c6400d8de2626b662e1e17c25df8375093495be746b3bbb65131e69fa1d9db9d`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 315.6 KB (315641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3a7e9f8ef8acc4ede2bdc6185b5ac8c1b482add58b99147135f950c3cf22e80`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 18.6 KB (18611 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11` - linux; ppc64le

```console
$ docker pull caddy@sha256:ff88079998a1d0ba6f228c328559d4e62ba3e23af23e03b07a03c26a76e564cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23289477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5c541ac1e43db67305c3cdca64c7fb798ca25eb4dd6f4035bd72ea6a1a0f8e6`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:54:56 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:55:21 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:55:33 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:55:33 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:55:33 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:55:33 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:55:33 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:55:33 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:55:33 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:55:33 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:55:44 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:55:44 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4802e0decc07b315032252b6be29a6e3794399b42e3d4217eb2e19810c3174`  
		Last Modified: Wed, 04 Nov 2026 17:56:17 GMT  
		Size: 2.9 MB (2932250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad41792dfa73ceb9d83ad15b8ab9cc0b2be12338d4a1e9d082b7bf78ef8fade3`  
		Last Modified: Wed, 04 Nov 2026 17:56:18 GMT  
		Size: 7.5 KB (7503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40aa986fbe3a1df875e66d40afcb7c0845e6d3af591ce6999bb3661561c10657`  
		Last Modified: Wed, 04 Nov 2026 17:56:19 GMT  
		Size: 16.5 MB (16528870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11` - unknown; unknown

```console
$ docker pull caddy@sha256:c20b862368bf90b1e3fa1587d2c114a4941eb3c1675fe097d251307148ab490a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.1 KB (334095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:199a982489ac400a96711f5035dc7ec32172db2c39b9769e2e3651849822dc84`

```dockerfile
```

-	Layers:
	-	`sha256:3146ebe2743ac7948ef787e58eba77453e7e520d64bb62dea3f5d92a536dcc73`  
		Last Modified: Wed, 04 Nov 2026 17:56:17 GMT  
		Size: 315.6 KB (315594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:758b0113ca1d278b827b18662633a6cdcf77d0203e6604905e9f5c7d1e526c8a`  
		Last Modified: Wed, 04 Nov 2026 17:56:17 GMT  
		Size: 18.5 KB (18501 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11` - linux; riscv64

```console
$ docker pull caddy@sha256:77a5533e54c81871e933687658b5d6a44265e75bae69bb6375a91383c1ffb76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23763391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877017629382ecdaf48df46afb54ec03844ec812855b044082cd22e0bb863afb`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 07:00:19 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Thu, 05 Nov 2026 07:00:21 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Thu, 05 Nov 2026 07:00:27 GMT
ENV CADDY_VERSION=v2.11.8
# Thu, 05 Nov 2026 07:00:27 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Thu, 05 Nov 2026 07:00:27 GMT
ENV XDG_CONFIG_HOME=/config
# Thu, 05 Nov 2026 07:00:27 GMT
ENV XDG_DATA_HOME=/data
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 07:00:27 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 07:00:27 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:00:27 GMT
EXPOSE map[443/udp:{}]
# Thu, 05 Nov 2026 07:00:27 GMT
EXPOSE map[2019/tcp:{}]
# Thu, 05 Nov 2026 07:00:28 GMT
WORKDIR /srv
# Thu, 05 Nov 2026 07:00:28 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b243dd3f78be3ff66be2edf51b3320f33932a2643de0382aabcc7451cc1d102`  
		Last Modified: Thu, 05 Nov 2026 07:01:29 GMT  
		Size: 2.9 MB (2930615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc3453e8adac8cf5a49ad6b057cb143688903d1c8637e7239f90f6dad8301b2f`  
		Last Modified: Thu, 05 Nov 2026 07:01:29 GMT  
		Size: 7.5 KB (7502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f9223ac75c6a1a12d29241638f981c0cb6eff5ecc027e6e6483675e06634f8a`  
		Last Modified: Thu, 05 Nov 2026 07:01:32 GMT  
		Size: 17.2 MB (17244595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11` - unknown; unknown

```console
$ docker pull caddy@sha256:bbfe7db37148fedff73b048d06c8d440079103765bb26d8d3ff88f40adac4283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.1 KB (334091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7763aa7321cac96f9bc28cad61a3a46cfb05081f242f50e940de633852e6fb6b`

```dockerfile
```

-	Layers:
	-	`sha256:663bafd8bcb8c99e0a08a065c8d4e75b18baa3431df39812e3b0d9a81350d38f`  
		Last Modified: Thu, 05 Nov 2026 07:01:29 GMT  
		Size: 315.6 KB (315590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37596a9fbfe0de52e041917bd80b035bf70c1e11ce758b6784fe5e5796dd5316`  
		Last Modified: Thu, 05 Nov 2026 07:01:29 GMT  
		Size: 18.5 KB (18501 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11` - linux; s390x

```console
$ docker pull caddy@sha256:6df2d88e242bbc40dbaae102045f3537c9d988c37f0e9f32ec5a59eb7822423b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24136179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a0ff7d133cc4fa4c0e464d8126567e1ebf625068c1141d62bf5f1fe880db72`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:54:31 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:54:33 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:54:33 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:54:33 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:54:33 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:54:33 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:54:33 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:54:33 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:54:33 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:54:33 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:54:33 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3160eca0d674aa6dbbfbfce3c9df7ef11c85e6f658ace8c027ebd1cdfc53b99f`  
		Last Modified: Wed, 04 Nov 2026 17:54:44 GMT  
		Size: 2.9 MB (2914741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b8a8eb35c9fb4d61cdc88a7ac4008899c342f64f54f2efbaaba9233e84204c5`  
		Last Modified: Wed, 04 Nov 2026 17:54:44 GMT  
		Size: 7.5 KB (7502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd224a2dd4702f0fd00b7dcac7d191597019c51cd31aaf6b5b3027d03d3c2ca`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 17.5 MB (17494194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11` - unknown; unknown

```console
$ docker pull caddy@sha256:c921ef6152f997e93b113fa249d92639e3052271393487a1d21d132010d8296f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 KB (333964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c8c7ccc5c9c0fcfb60339b5665c7ff2f5622c8631d90cc253054a58282eb578`

```dockerfile
```

-	Layers:
	-	`sha256:cea63384879323dcf292cc0507cda1a549a1e9c4a2ef78fb2184459fdc48e811`  
		Last Modified: Wed, 04 Nov 2026 17:54:44 GMT  
		Size: 315.5 KB (315536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de008cdae2ba256db19a07f3b77749db37b6707673cab309b7506175ed0f3d70`  
		Last Modified: Wed, 04 Nov 2026 17:54:44 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:95abf9d14aaade6d55fc1fe67837955424c407f7c42122cf56ec269df234b976
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411640909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab973cc14b9e0c52be1b72c2f49166655cfed54fcb528bb66f89be6dcdea52d`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Thu, 05 Nov 2026 18:48:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:50:14 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:50:15 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:31 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:31 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:32 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:35 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:38 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:41 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:42 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:50:58 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:50:58 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3105b031b17a07724dd061a02beeb8696051059e004ecd9ed26a9e17fa3cdc02`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6906576f53243cb11c77a99856afa7453fea514a6239d8daad6968e7a25cba`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 390.9 KB (390919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066b4e49953291e1e590b8dc069208ed71f03d794a65a73813cb94d3655ec8f6`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f696f899da47fb0fca096725494a65fa4db2ed97ad592f434625bbf012bf4ccf`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 18.8 MB (18842906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61509ec5d34e9f0c9171bdaa8e0f889d0ae0266be4be408c271535c594f26c1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad5baa2304ae76c673dfcc132b4d9f5ed56a9c843984069ec22db953f24e183`  
		Last Modified: Thu, 05 Nov 2026 18:51:07 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf73fb3dacde170edc236e1c1f5e252519e2bba968312caa5570f79dd63be52`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9609d2b97073146c6468eedb5f32415c8a4cea9ca99c0602ccec800de92daf`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f857ee3127ebcc1c023b71b6e00845ff2e591296da1c03b77239054ce73059c7`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492801772255ddb526037e2a61f6e3f699aa4bfd695d5d2e844f6b041120e3b4`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fc7a0cadb49e63446196633584282ca5d0c21670b9f6a1303cc898819a5939`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4934c1a327b2efa689cf58a31640d074993b68ea01d8a3dc6f84b7aba9f7c40b`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421fbfd0d299f828ca293b67045a58a1398a41a480f918db09529c7720ba005e`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6808f4fa8c3f137ea2fe98d8343b4cd850d351a6c24415d6c7af9087023ca853`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc9e06eb01a305ee8abe1f8ad9e360461382e96f40fe09fe66638366d2b3921`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4771a13f86c4e0005351f8cf24a7199b26f48a8aca82fa482712118a2bd1f006`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc5ee75a0594ffb8e38f738cf42f1829027f8569736758d0d7b97265642a34a`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1be9f4dc4e64883d35c8a23d7396f2e832c32ef0bdbbf4bbca5cc99be26a3cf`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e9fcd3b3e14a5fede69ab9fee080810c9d6869d863c0c40b8109dbeb33bc10`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 336.2 KB (336222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad69e21d7b060686c53a003a33e3f7b9f3bcf502846a49bb9ffaa3ecf4b55167`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:2.11` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:2cc1f16a110963701a69a8093e051d1e6a68775f92423e05076fa8ac137525c2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2246593231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81d2947c39b363c1833583c76c91cafe62b764e5397a4d58ebd31dee62c2460`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Thu, 05 Nov 2026 18:48:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:49:53 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:49:54 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:24 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:26 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:27 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:29 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:30 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:32 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:42 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:51:03 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:51:04 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a008cba775e8dd0fa98285e50e68016c6e59c9c7d78331b024d243c8028b4cbc`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2d491895f80263abfd15f22c5c30039fa3ebd8d83087a2433cb846961153e1`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 371.5 KB (371473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5358c2eea08f8a9d209da01918bf15f92d5f2604b8bd529de0691bbbaabe927`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f303a38c5095af4de86858b6f2fedefdb9854cd41e24cb7b7f6e0de3e51e36`  
		Last Modified: Thu, 05 Nov 2026 18:51:17 GMT  
		Size: 18.8 MB (18820643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e592ad193121b2d1f6737f2fc89e24d03e9d33d6cca8e7add2957ccf57b9c61`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25fe4e292b538b454f7496f886418773ff60ff66c6837656d45cc2eb319ad3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a510990588c53fcf965e7ef95cd6e4765af69ddff30a9b85537cd50c39eee3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66d18fd2f2ee4d3baba1e5f3770dbed152867afeb50caad16c8ef145e17a6a2`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c670bb7e8fef2b7d9e51de98054eedf8577c01c8dab3f5307e26ad849db0ab39`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500888919d78c692c88bcec1ff4727723df54e3e34385d05da99c27285ee455f`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cdcae9d52f42f49f9a70d23426fc1feceede855ea6a0748f5f8663a35be90a`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7210618d2f93291160433de49867d5821e996bd5f005cc6c2b36801e9820829d`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790aa499060b9807135ef195885142b4c146bb6b428a843e2d8f79e595bb15f3`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07378ecb425dbafad024761d9bb5f11c3102ab26215b09dd90548401cfdbffc`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bb0f5976c9b254675a71ddc0e556c3e8c57376ad629f3a9431fb344eb0ac46`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23012e55c65156794576b8d2534079d31f2adad56300fb59cdeec1f58391db4`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6049bd500c5b62b0a05932db59f93ba3b7324a26e40d0c7e0708070abf5a4da9`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e3314e91f873e91dae6f3f2edceadb9449a46ef807bb118819fe75d83c8bb1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265b4d1fd5b55896df277baa4c1db1204b11578f29e866d4ad6afb1bc93f976b`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 322.8 KB (322785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48a65dcbe82d2fa7112e338b77c64a167952bea5d360d7a0b3587b835dbb9d69`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2.11-alpine`

```console
$ docker pull caddy@sha256:8652f54d3ef21e120f78f3c6b396bcf7d3fc8f999cece30cd35490430da89430
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `caddy:2.11-alpine` - linux; amd64

```console
$ docker pull caddy@sha256:fc9cbc100585871d18d4e451cca7021785c90a7006087427ae5ceb3e4efe6424
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24793574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5813f7eb9b94fac4970f9f576695fe1ed1d53d41586fd3eaa350caf7c4627d9c`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:37:06 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Thu, 05 Nov 2026 19:37:07 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Thu, 05 Nov 2026 19:37:08 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 19:37:08 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='0e85544340290a16ce4bfb76fe7d65e9de1bf3a6e67f5ccfff30b30d27ea4c73e078077b7bf3e58ae60b6b12e44327705287059c775bca5782e8ee85ea7edd75' ;; 		armhf)   binArch='armv6'; checksum='bfd9b415660caccaf5efbba2a8828eb9e61e31609ee6a62d532e70ef1f419e2ba420fdfd1e16c13e4896c33557813f87fddc849de57400eac34c4635f413bc0c' ;; 		armv7)   binArch='armv7'; checksum='ea042518bfb5eec5070a3119430263ae920b2d1e878c733a80d3d0ced1168afe5816362f295de46915d651a67f31f4d8a67ac67326f507d90cda71274b8ee689' ;; 		aarch64) binArch='arm64'; checksum='9e5e76d7888542924de2c25353ae87c5f77e2a22c5b1198633cae13688922282e05383d142599205c88d8d80eee5e967d291214d7abce4835329a191b20dd6e0' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='9b95cfa058e9651c0738179c6c18d0a93eb9c491e5c9ed3d95f30b23e1c9324e739bbf91a3ac0ebf91aaff89e25de1cff22f127484be937c0089b079266cd37f' ;; 		riscv64) binArch='riscv64'; checksum='52c9750b091a297766f2faaa01955eb894b614f4b94a9a418632d67f65f942e5363681869de0a6434d87482ac611f5c228282c23c6a90349085bb17aa3eff686' ;; 		s390x)   binArch='s390x'; checksum='213186130eeab27bc8fff06f4a6cffb253b36f719166c6cb12c539b4432186d6f7938847547a4e5cf47b1525424fdc74813950f08b928f788b7402127eb30e6b' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Thu, 05 Nov 2026 19:37:08 GMT
ENV XDG_CONFIG_HOME=/config
# Thu, 05 Nov 2026 19:37:08 GMT
ENV XDG_DATA_HOME=/data
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[443/udp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[2019/tcp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
WORKDIR /srv
# Thu, 05 Nov 2026 19:37:08 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d6974dbf71e422d13654405f502ff60ea306943b999003c012ecc6dd93d317`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 2.8 MB (2798840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a802d3a0a957e15ac518be2f3f3e786b9965895265888c3390753c81d1c085`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 7.5 KB (7501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5000c332a1cc372a1a248c2923696c0bc7817d213f2db0f4161fc18a3fc17cd7`  
		Last Modified: Thu, 05 Nov 2026 19:37:16 GMT  
		Size: 18.1 MB (18133528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:38891e0175dd27a9b2c2a9e7314b356b0477f0002302bbeb51ccc87491f83abf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.6 KB (334614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a48c1497cac67279989d2b2c55010f2ed2546887974c8dfeee774c8cb204f5d`

```dockerfile
```

-	Layers:
	-	`sha256:f4183d0ed1bf0fc5c8a612569bbfe4bd35053c401ddec3523acf17101a388fd5`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 316.2 KB (316187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed4aeb1ef3c37f8dd726324c7a8739e6a1dcf890a00af32bf17ea28558f0b0bb`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 18.4 KB (18427 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11-alpine` - linux; arm variant v6

```console
$ docker pull caddy@sha256:2ff7d8bd4c710ca24cee8553653e81236fdff5eac3258b319d1f3a8c9c90e1b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23531358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46e92b0833bac59556797e076e62d1e55e29d47edd40f1d1127b2837556d4529`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:55:45 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:55:45 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:55:47 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:55:47 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:55:47 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:55:47 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:55:47 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:55:47 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:55:47 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:55:47 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:55:47 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:55:47 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ff5ed468f4efb91ff9789ce83f3ddf01ffd2fb0b6fc960f72960fd6491b771`  
		Last Modified: Wed, 04 Nov 2026 17:55:53 GMT  
		Size: 2.7 MB (2723763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6987a10766febd34eccb10c8cfd6ed45b4dbc7543f2f279c007430465248cd5e`  
		Last Modified: Wed, 04 Nov 2026 17:55:52 GMT  
		Size: 7.5 KB (7498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d2de185c946d96bd1f952450842f74c1e1456eaaed32c45e2c2453477d635a`  
		Last Modified: Wed, 04 Nov 2026 17:55:53 GMT  
		Size: 17.2 MB (17241774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:b4d1fa4fd97be630b03ed7777f8d64b950b535a23568ba53ea68c9c4e8b4b533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 KB (18352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36929c847918c1d3bcc1a0a94c3670d9ca097bba6ff84631b35b6cc94d226189`

```dockerfile
```

-	Layers:
	-	`sha256:2685aa767d9f0cc12f38fe5b24dd8fb7d6aa4fd629476527c5fb5f9839998455`  
		Last Modified: Wed, 04 Nov 2026 17:55:52 GMT  
		Size: 18.4 KB (18352 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11-alpine` - linux; arm variant v7

```console
$ docker pull caddy@sha256:6071525234f574e3000519dde9d25abfd4c089236956a24f2e0984b0cfa0695d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23092436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b321be350ac394b2b447774810803eba1fdaf731137388ea78e0494454a523`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:56:00 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:56:01 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:56:03 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:03 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:56:03 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:56:03 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:56:03 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afc8c568af13a7e8edac14d90a6dc6b10c007b4c156e7169017c0dc3f3a98faf`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 2.6 MB (2596752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27dff964349b9f016fff9f0a401da75a95f9e4fce26ac4bfa94bb9c1dc6afb16`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 7.5 KB (7499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3faea2288b2bcf4c48c14e2a5fed69d4aa014fe1a3fc1806b8eb10f663b045a2`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 17.2 MB (17221493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:bafe8101cc3628601a617b071b54dc33b676af3be1d88a0f1bad4b4c01436638
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.2 KB (334172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:469cbdf0a43a3b348b602651aa2aa2460c545e0a527950248c722eba4c1e6fac`

```dockerfile
```

-	Layers:
	-	`sha256:0b8e772e6707b2c953c84db65f6fc0c700d43d80350eac9883d213585e518be7`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 315.6 KB (315605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21e8a360f5a935352045f20a4c4a2253e333180b840eeaafe42be297baf42274`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 18.6 KB (18567 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11-alpine` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:d48486623b1522f9e6d0fd0407e2929eb66bf2cc5bfbf71c2d89611d6fd24c35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23504341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a73eea10ae6ad4918f4dcbaf33fac04a70713c92d1f191eac79c3c5114eb55`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:56:01 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:56:02 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:56:03 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:03 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:56:03 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:56:03 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:56:03 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873b94e511f0ec80ec6cce86c968b610d228a774642b83f1a326d66ee6ae3aa8`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 2.8 MB (2814373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6d1df8fdd49da33b1d28007fdd1b07e242c84c67de3a92c2b7c7e9b847ef08d`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 7.5 KB (7499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8c8f8ce0e89504c960b22c3185bfb6e05eee0d897d84cfd010a12c70854ab9`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 16.5 MB (16491949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:10730ad845a1ca6297f672954ed94457459be6e4ff5f8b68e775baa4f75fbb9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.3 KB (334252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93401ef29b5158eba16ec2ba44339cea6bdbaa7055e899b5a5c96b2e88cf290a`

```dockerfile
```

-	Layers:
	-	`sha256:c6400d8de2626b662e1e17c25df8375093495be746b3bbb65131e69fa1d9db9d`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 315.6 KB (315641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3a7e9f8ef8acc4ede2bdc6185b5ac8c1b482add58b99147135f950c3cf22e80`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 18.6 KB (18611 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11-alpine` - linux; ppc64le

```console
$ docker pull caddy@sha256:ff88079998a1d0ba6f228c328559d4e62ba3e23af23e03b07a03c26a76e564cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23289477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5c541ac1e43db67305c3cdca64c7fb798ca25eb4dd6f4035bd72ea6a1a0f8e6`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:54:56 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:55:21 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:55:33 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:55:33 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:55:33 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:55:33 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:55:33 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:55:33 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:55:33 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:55:33 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:55:44 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:55:44 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4802e0decc07b315032252b6be29a6e3794399b42e3d4217eb2e19810c3174`  
		Last Modified: Wed, 04 Nov 2026 17:56:17 GMT  
		Size: 2.9 MB (2932250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad41792dfa73ceb9d83ad15b8ab9cc0b2be12338d4a1e9d082b7bf78ef8fade3`  
		Last Modified: Wed, 04 Nov 2026 17:56:18 GMT  
		Size: 7.5 KB (7503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40aa986fbe3a1df875e66d40afcb7c0845e6d3af591ce6999bb3661561c10657`  
		Last Modified: Wed, 04 Nov 2026 17:56:19 GMT  
		Size: 16.5 MB (16528870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:c20b862368bf90b1e3fa1587d2c114a4941eb3c1675fe097d251307148ab490a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.1 KB (334095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:199a982489ac400a96711f5035dc7ec32172db2c39b9769e2e3651849822dc84`

```dockerfile
```

-	Layers:
	-	`sha256:3146ebe2743ac7948ef787e58eba77453e7e520d64bb62dea3f5d92a536dcc73`  
		Last Modified: Wed, 04 Nov 2026 17:56:17 GMT  
		Size: 315.6 KB (315594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:758b0113ca1d278b827b18662633a6cdcf77d0203e6604905e9f5c7d1e526c8a`  
		Last Modified: Wed, 04 Nov 2026 17:56:17 GMT  
		Size: 18.5 KB (18501 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11-alpine` - linux; riscv64

```console
$ docker pull caddy@sha256:77a5533e54c81871e933687658b5d6a44265e75bae69bb6375a91383c1ffb76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23763391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877017629382ecdaf48df46afb54ec03844ec812855b044082cd22e0bb863afb`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 07:00:19 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Thu, 05 Nov 2026 07:00:21 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Thu, 05 Nov 2026 07:00:27 GMT
ENV CADDY_VERSION=v2.11.8
# Thu, 05 Nov 2026 07:00:27 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Thu, 05 Nov 2026 07:00:27 GMT
ENV XDG_CONFIG_HOME=/config
# Thu, 05 Nov 2026 07:00:27 GMT
ENV XDG_DATA_HOME=/data
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 07:00:27 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 07:00:27 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:00:27 GMT
EXPOSE map[443/udp:{}]
# Thu, 05 Nov 2026 07:00:27 GMT
EXPOSE map[2019/tcp:{}]
# Thu, 05 Nov 2026 07:00:28 GMT
WORKDIR /srv
# Thu, 05 Nov 2026 07:00:28 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b243dd3f78be3ff66be2edf51b3320f33932a2643de0382aabcc7451cc1d102`  
		Last Modified: Thu, 05 Nov 2026 07:01:29 GMT  
		Size: 2.9 MB (2930615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc3453e8adac8cf5a49ad6b057cb143688903d1c8637e7239f90f6dad8301b2f`  
		Last Modified: Thu, 05 Nov 2026 07:01:29 GMT  
		Size: 7.5 KB (7502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f9223ac75c6a1a12d29241638f981c0cb6eff5ecc027e6e6483675e06634f8a`  
		Last Modified: Thu, 05 Nov 2026 07:01:32 GMT  
		Size: 17.2 MB (17244595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:bbfe7db37148fedff73b048d06c8d440079103765bb26d8d3ff88f40adac4283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.1 KB (334091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7763aa7321cac96f9bc28cad61a3a46cfb05081f242f50e940de633852e6fb6b`

```dockerfile
```

-	Layers:
	-	`sha256:663bafd8bcb8c99e0a08a065c8d4e75b18baa3431df39812e3b0d9a81350d38f`  
		Last Modified: Thu, 05 Nov 2026 07:01:29 GMT  
		Size: 315.6 KB (315590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37596a9fbfe0de52e041917bd80b035bf70c1e11ce758b6784fe5e5796dd5316`  
		Last Modified: Thu, 05 Nov 2026 07:01:29 GMT  
		Size: 18.5 KB (18501 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11-alpine` - linux; s390x

```console
$ docker pull caddy@sha256:6df2d88e242bbc40dbaae102045f3537c9d988c37f0e9f32ec5a59eb7822423b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24136179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a0ff7d133cc4fa4c0e464d8126567e1ebf625068c1141d62bf5f1fe880db72`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:54:31 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:54:33 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:54:33 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:54:33 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:54:33 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:54:33 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:54:33 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:54:33 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:54:33 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:54:33 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:54:33 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3160eca0d674aa6dbbfbfce3c9df7ef11c85e6f658ace8c027ebd1cdfc53b99f`  
		Last Modified: Wed, 04 Nov 2026 17:54:44 GMT  
		Size: 2.9 MB (2914741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b8a8eb35c9fb4d61cdc88a7ac4008899c342f64f54f2efbaaba9233e84204c5`  
		Last Modified: Wed, 04 Nov 2026 17:54:44 GMT  
		Size: 7.5 KB (7502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd224a2dd4702f0fd00b7dcac7d191597019c51cd31aaf6b5b3027d03d3c2ca`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 17.5 MB (17494194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:c921ef6152f997e93b113fa249d92639e3052271393487a1d21d132010d8296f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 KB (333964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c8c7ccc5c9c0fcfb60339b5665c7ff2f5622c8631d90cc253054a58282eb578`

```dockerfile
```

-	Layers:
	-	`sha256:cea63384879323dcf292cc0507cda1a549a1e9c4a2ef78fb2184459fdc48e811`  
		Last Modified: Wed, 04 Nov 2026 17:54:44 GMT  
		Size: 315.5 KB (315536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de008cdae2ba256db19a07f3b77749db37b6707673cab309b7506175ed0f3d70`  
		Last Modified: Wed, 04 Nov 2026 17:54:44 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

## `caddy:2.11-builder`

```console
$ docker pull caddy@sha256:3d2f0c4c322bbb420a70d02b775e79d3f837fe1fecea937d7536e4f5e8e1ede7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
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
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `caddy:2.11-builder` - linux; amd64

```console
$ docker pull caddy@sha256:f5ca6b3084eb14bd936970e95ad0b00d814b039b9263c3227cdead98c6b89a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83901648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73a4be9b1fc009db503df9d7fd20d8a5d059dacfea8514298d2d59698e0fd357`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:58:02 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 22:58:09 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 22:58:09 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 22:58:09 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 22:58:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:58:09 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 22:58:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 22:58:12 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:57:18 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:57:18 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:57:18 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:57:18 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:57:18 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:57:18 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:57:18 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:57:18 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c012d78a862fe59ae6789c91f982ea68a882c9c44bbde97013914458dcdd9c4c`  
		Last Modified: Wed, 21 Oct 2026 22:58:25 GMT  
		Size: 244.5 KB (244471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0bb27ae78502103ed383ed33346f88a83943fb7bd93977850d5890ee8fb3b`  
		Last Modified: Tue, 20 Oct 2026 02:42:46 GMT  
		Size: 71.2 MB (71150395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e3100880d834be60a9562375f4c5018b2cb26d64591bd0060aa3a80b935f43`  
		Last Modified: Wed, 21 Oct 2026 22:58:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f75821daa4e57f3cf136ac3698c24e27acc6148b904936fad0875779d9a7896`  
		Last Modified: Wed, 04 Nov 2026 17:57:27 GMT  
		Size: 6.6 MB (6643577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:363e2d59666e67f976bdd297efde475d864502c6df48318c8ec218b3c02f60b7`  
		Last Modified: Wed, 04 Nov 2026 17:57:27 GMT  
		Size: 2.0 MB (2009506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f753fcec1ce79dc0413a0a309b6fb2956d4eba7c0b69fa8bf2521ba976f6a891`  
		Last Modified: Wed, 04 Nov 2026 17:57:26 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:c6ff12d4b199ab8009031f6f52380f34dfe292ab0a3b4e94bf091954bf832fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.4 KB (283370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29d63d2129aa380ca65172aae435b595525aaf52718784904bea68b9dff8e02`

```dockerfile
```

-	Layers:
	-	`sha256:b43270beb5d9fa4753496c872822e2a9c7de255f3b67b18d19bdc2f7eb86e790`  
		Last Modified: Wed, 04 Nov 2026 17:57:26 GMT  
		Size: 263.2 KB (263241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c0cd564e6a1a4c550c2bb1412edd3214269f177e85a5dae8388f2fad4cbd5b2`  
		Last Modified: Wed, 04 Nov 2026 17:57:26 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11-builder` - linux; arm variant v6

```console
$ docker pull caddy@sha256:b568aab6f8b018ddb505fa6055c6e7c622f767a36976ba68cfab769be167e0c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81892741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83650bcf36d98ced23db81cb3f128c49e97039e39bcb4f25f0289082f037adcc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:29:36 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:29:45 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:29:45 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:29:45 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:29:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:29:45 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:29:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:29:48 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:56:04 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:56:05 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:56:05 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:05 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:56:05 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:56:05 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:56:05 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:56:05 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057399039eb243e7808b91993ba9f63d3e0da431e05f5bbb72f37e5dd6b080c8`  
		Last Modified: Wed, 21 Oct 2026 23:29:59 GMT  
		Size: 245.6 KB (245575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311ceebe23a2437e4f10eca55adfacd488c82ac6aa8e96dacaebe20785979cba`  
		Last Modified: Tue, 20 Oct 2026 02:42:15 GMT  
		Size: 69.7 MB (69655857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4270a94f0219df984116129a409fe43c3d2d9c5996177b591aca31e1f3615398`  
		Last Modified: Wed, 21 Oct 2026 23:29:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57981200b77c1ac92be88844e2b5d96ed3085b7d4bf3a2a65c38812afc5adaae`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 6.6 MB (6550958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7f91d9deb69265e264ce01570a2c8096325281fb63fae1d86d1f1c4b45c705d`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 1.9 MB (1881469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc603c44182b798efd59c2539361f0c2091b5cce17da95246a8317bd751bf59`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:ae2567192a55556ecfa6571bbf2b213ae00692d20a5adc60e9ef41d52be603fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 KB (20039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0e5d6b36579df986e3a4fbce904711cff41d948011bc50249655b1c0b53ff0c`

```dockerfile
```

-	Layers:
	-	`sha256:88d4f38776bbaa9941ccb45282129440b1ad886df732151a9b64dc6ebd5cf462`  
		Last Modified: Wed, 04 Nov 2026 17:56:09 GMT  
		Size: 20.0 KB (20039 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11-builder` - linux; arm variant v7

```console
$ docker pull caddy@sha256:dd6a43a6c388a1550850ce282e5f3380c65e6eb0c816c3bdd92d0bedee6d8747
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.0 MB (81040107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef03978689ceb0b7e301965ff96198caaf5b44eb2d860e1dd347b6a875c6f9d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:30:49 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:33:59 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:33:59 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:33:59 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:33:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:33:59 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:34:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:34:02 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:56:37 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:56:38 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:56:38 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:38 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:56:38 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:56:38 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:56:38 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:56:38 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ea789e2969e7e9134f029905c7800eb29baab37b23bce0b5c7b8842814015e`  
		Last Modified: Wed, 21 Oct 2026 23:30:58 GMT  
		Size: 244.5 KB (244518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae9b35601617bc051bb43546b04b850ce4f1eac0f66a3a5d94eff209388a0b2`  
		Last Modified: Tue, 20 Oct 2026 02:43:07 GMT  
		Size: 69.7 MB (69655805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d4e0aad963a6de3ba7f2ac6cad5cd64943f102880db12296ba798d90e05b19`  
		Last Modified: Wed, 21 Oct 2026 23:34:16 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddeac073f1ff9ce1762b297bdd4dc1735ce37ab24c5af711fdfd0907a0ad0ca7`  
		Last Modified: Wed, 04 Nov 2026 17:56:46 GMT  
		Size: 6.0 MB (5995495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a745b9350000bcd3caa8d30555052a24a52df1e4445ecf1552b74fb5e1766bf7`  
		Last Modified: Wed, 04 Nov 2026 17:56:46 GMT  
		Size: 1.9 MB (1877039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d9929a95fe998bd09e0fd1ea6e728e41de22218969a24a5a235eeb5021ed86a`  
		Last Modified: Wed, 04 Nov 2026 17:56:45 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:f534cd318dde50f4dfb5d7c4d09dd55993ee4e56051566e04943e6450c823aee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.9 KB (285887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:200aafce2fad433150b55aaf21e495b9fad99309cab50ff448dcf7c60eb473b0`

```dockerfile
```

-	Layers:
	-	`sha256:6a41681ca1d8c3bd081286d8a0bf3afb1164d71bbe0534f2703014ee8dc7b1a3`  
		Last Modified: Wed, 04 Nov 2026 17:56:45 GMT  
		Size: 265.6 KB (265633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a2331cc41bfa20b1f481c65211a111ffac4b73b9a3bc58775fa9bc905db1a98`  
		Last Modified: Wed, 04 Nov 2026 17:56:45 GMT  
		Size: 20.3 KB (20254 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11-builder` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:188269e13e55e4fd9b8d07c70a116b64de79d6cc8868cc508e60d079ab89b18b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80715823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a5a3c3741317bb370be72fb12c60d0becda282cf1878f8d6f36d74d0dc0fea`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:46 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:20:54 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:20:54 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:20:54 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:20:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:20:54 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:20:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:20:56 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:56:21 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:56:21 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:56:21 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:21 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:56:21 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:56:21 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:56:22 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:56:22 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcdc05aad5cf439d58eff6bbe6e136d87af146e3b7442a5c64928da3ae1b86a3`  
		Last Modified: Wed, 21 Oct 2026 23:21:11 GMT  
		Size: 246.9 KB (246920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e7dba5c30798b9d70d746d9fb1606b744e5c3baa8015b51dad60cea99c045b`  
		Last Modified: Tue, 20 Oct 2026 02:42:50 GMT  
		Size: 67.7 MB (67719732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070112d392529aede516cb12dd04bbbf175fcab48c54121d76e09a5043ce92a1`  
		Last Modified: Wed, 21 Oct 2026 23:21:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ebdeb09f3c924d39a56d696297e2d657a33871448b8e075942cf6a752f6c58c`  
		Last Modified: Wed, 04 Nov 2026 17:56:30 GMT  
		Size: 6.7 MB (6727138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39f58f80fb592545c17183ccbecd0b91355710c0665447e528d36424e942860`  
		Last Modified: Wed, 04 Nov 2026 17:56:30 GMT  
		Size: 1.8 MB (1830954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2689232fbef6373f21177d0f3d90d3882efce2c056f4a0a1a2f274c5940996b4`  
		Last Modified: Wed, 04 Nov 2026 17:56:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:ad0d33a228c686de25fba171bceb5c6af03099048487bdc6e3f6c1c83c1b5547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 KB (282991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31d63d5e32fc1cc2653faf3997b6b813beac19ed930b727da0d45d2425331cc`

```dockerfile
```

-	Layers:
	-	`sha256:5debd47c4c43686d18317b7954ead90bd0e141ca4dac0b9c3d62ebfc9c223937`  
		Last Modified: Wed, 04 Nov 2026 17:56:29 GMT  
		Size: 262.7 KB (262695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53d25d2936ebab3f9951b9e7e0a2c51d87d02980c61d812a5f129bf7bc681ea3`  
		Last Modified: Wed, 04 Nov 2026 17:56:29 GMT  
		Size: 20.3 KB (20296 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11-builder` - linux; ppc64le

```console
$ docker pull caddy@sha256:2c6692c88ae9ce80f131b5d4b74388fef59f0562bf9ba63f48927d0deb672ff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81481471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c078bdbd49232982d7b0a5b520eb8ca7d0e2fa6f5c4413b231845c5ed69e91d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 13:35:51 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:41:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:41:36 GMT
COPY /target/ / # buildkit
# Thu, 22 Oct 2026 13:43:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 22 Oct 2026 13:43:20 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:55:21 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:55:30 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:55:30 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:55:30 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:55:30 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:55:30 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:55:42 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:55:48 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1039312999d7cc79e1a73e7d562cb99a4e1d9808a1c7eb990e7bd00db569593`  
		Last Modified: Thu, 22 Oct 2026 13:36:31 GMT  
		Size: 247.4 KB (247354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99280a61a753e565d841200e74a9ffba4717a286b10e4a5b0e0f4148164d619`  
		Last Modified: Tue, 20 Oct 2026 02:42:42 GMT  
		Size: 68.5 MB (68492171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d26cca5cf4e23e7a631853927e088cd119148d2149259c5d02e4358523c9f9b`  
		Last Modified: Thu, 22 Oct 2026 13:43:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ec1cdb0369df3ec046840060bcdbafe17a6d5d0b64286b96ff3bd86f4c36a9`  
		Last Modified: Wed, 04 Nov 2026 17:56:23 GMT  
		Size: 7.1 MB (7067825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a74bbbbe3cab47dc229b607b0ab407ed2ea0e57494a027de2a771709fc6e578`  
		Last Modified: Wed, 04 Nov 2026 17:56:23 GMT  
		Size: 1.9 MB (1852706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5d4efc145ed802ea281abacad7847207d1e5b29f7028adb36ed021ee7623cb`  
		Last Modified: Wed, 04 Nov 2026 17:56:24 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:7ef384c917d2c72247359c2f8206cce9da27e7a01410109a801e062512c81b73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 KB (282862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fffb55fa30667e00acb5dad7551df3b10c6165ff741c359a72ca9a1610782502`

```dockerfile
```

-	Layers:
	-	`sha256:b5e6a2af55077255e40063701decf51a2ebffc67802ef6533fd5e2e55d9084e2`  
		Last Modified: Wed, 04 Nov 2026 17:56:24 GMT  
		Size: 262.7 KB (262664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d07be2f615552682b5000418a0d635db93b098e2060fb882cff1d21ef7df550`  
		Last Modified: Wed, 04 Nov 2026 17:56:24 GMT  
		Size: 20.2 KB (20198 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11-builder` - linux; riscv64

```console
$ docker pull caddy@sha256:5976ed6ad86ce3fa234815ce06110972c027b5f3602c3b026c5de8d5e48789d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81675521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b0bf3a1751a3aeefba4002876c682d97f77e0c732a1b5df1ef55496ab6e0026`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 13:36:28 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:43:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:43:35 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 00:22:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 00:22:55 GMT
WORKDIR /go
# Thu, 05 Nov 2026 07:03:46 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 05 Nov 2026 07:03:47 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 07:03:47 GMT
ENV CADDY_VERSION=v2.11.8
# Thu, 05 Nov 2026 07:03:47 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 07:03:47 GMT
ENV XCADDY_SETCAP=1
# Thu, 05 Nov 2026 07:03:47 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 05 Nov 2026 07:03:48 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 05 Nov 2026 07:03:48 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0c6bbdd7e2de39b486fb00ad142f28331aaffeee541e676368c08a410f76ed`  
		Last Modified: Mon, 26 Oct 2026 13:37:55 GMT  
		Size: 244.9 KB (244881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb54614ae9ed635bfb8e27e661f01b863c8fcc98d1049b51549da2b2bf52a7a4`  
		Last Modified: Tue, 20 Oct 2026 02:50:40 GMT  
		Size: 69.2 MB (69170985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dad86abc0730a42f957fd3d2aeb23ea0616dea43d14b33d12b96325a36d169e`  
		Last Modified: Tue, 27 Oct 2026 00:24:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c4c16eb9680371fca8f637985610d3a4b85255941c76a98a2ea0dd04432c00b`  
		Last Modified: Thu, 05 Nov 2026 07:05:27 GMT  
		Size: 6.8 MB (6825625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f45a92b7c360dc9219503a83da9c3c705416b0b93da5f576141a4f54c00774`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 1.9 MB (1852791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2d08bd7441e433de00fd4eae87a8b3ff26f54839ffb155a092b95127a5dc51f`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:df2ff7bf921df9a16643efdb2163df724b2cecdb7b9d18dc62e40246d386c79e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 KB (282859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81fdef83eeef55f4039393b700e958a9ef945541926df8d9c7b36ecd394819dd`

```dockerfile
```

-	Layers:
	-	`sha256:71f67b9b9248518abcbb988b596d199d322073e385b35b7b3ef9573cce5637c3`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 262.7 KB (262660 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1db7972890027e7ce8cb45c48ea7206795733fc21a313202520668bae351437e`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 20.2 KB (20199 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11-builder` - linux; s390x

```console
$ docker pull caddy@sha256:7673aabded7251df3319d5c0ebeca77666e5d8efe0371ea7a2d8c5213b12479a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83120777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3bb20b8d4b4a40649130906bec7ebd5660dfafb0487e66c87e7e0600d727e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:41:23 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:41:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:41:05 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:41:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:41:33 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:54:32 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:54:32 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:54:32 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:54:32 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:54:32 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394b72af52beb97b1ac0b1a98b13629b3b0aee2321f877e115a82124b80d7793`  
		Last Modified: Wed, 21 Oct 2026 23:41:45 GMT  
		Size: 245.6 KB (245571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c0523718a973c87af9229ebd329dd6cf4e5d8ba37906c1e4c9083f5bb46d84`  
		Last Modified: Tue, 20 Oct 2026 02:41:29 GMT  
		Size: 70.3 MB (70281640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:096905f6e50b9f46f97862a2a89bf93646cfd1326c57bfde369c1e8b28b45e43`  
		Last Modified: Wed, 21 Oct 2026 23:41:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd451073c8291040e36d1ad69d5d1aff7fcbcdde6a619463318c669639663ca`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 6.9 MB (6929167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91773e053345d095de77ac8ee8097500d4e2adfb2d4e79185160197a7c95188`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 1.9 MB (1944097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983f6d28817b32472305d38546d4ad8c5039c0bb56072fefb0ed383da9cef71b`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11-builder` - unknown; unknown

```console
$ docker pull caddy@sha256:f96d9615c049ff203083b41f15e921e7cf3220baf4a9baacb89dd47e0dd2646f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 KB (283215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e23784b2c54a2206de5ede21d1d08d0c11dbcc9138f2d41fc8f0d6a821325d6`

```dockerfile
```

-	Layers:
	-	`sha256:20d26e6c47c81bb7d1f238d070f68b16820f4b39cf7838d591209a27b40a3ac5`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 263.1 KB (263086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b4602176494052efed8ad3b0302d9053e7abd5be5a0ecc43d8636d9b52799a5`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11-builder` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:322cf178420fc490995ab4926e551ded39c7741bafd40e52d8f37721a5af63d3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2512025216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:405652c8cb9a777e8aee873526e5de489b3584c99fe7a4d85fc6e4cc6c00bf0a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 23:01:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 23:01:50 GMT
ENV GIT_VERSION=2.56.0.4
# Tue, 27 Oct 2026 23:01:50 GMT
ENV GIT_TAG=v2.56.0.windows.4
# Tue, 27 Oct 2026 23:01:51 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.4/MinGit-2.56.0.4-64-bit.zip
# Tue, 27 Oct 2026 23:01:51 GMT
ENV GIT_DOWNLOAD_SHA256=e3bf78351fe777fba47ddee5950082f8a98bb0f02604fdc7ba3ee2cb68ffa877
# Tue, 27 Oct 2026 23:02:08 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:02:08 GMT
ENV GOPATH=C:\go
# Tue, 27 Oct 2026 23:02:13 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 27 Oct 2026 23:02:13 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 27 Oct 2026 23:03:36 GMT
RUN $url = 'https://dl.google.com/go/go1.27.3.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f26081f438319757f8a1b46d7d0b2c5ec7583d4038e485e0aa725cfde7885fff'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:03:37 GMT
WORKDIR C:\go
# Thu, 05 Nov 2026 18:52:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:52:42 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 18:52:44 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:52:46 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 18:54:15 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Thu, 05 Nov 2026 18:54:17 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9dc3ea73737b5e7988b67a3b7d66fb12d1c2d45ae0faa88815590457b0a29b`  
		Last Modified: Tue, 27 Oct 2026 23:03:53 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bca6fe69737ca73ad3f90994d40696ec38484b78dfb551c7453e8a9807b6d01`  
		Last Modified: Tue, 27 Oct 2026 23:03:53 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82709fc838d73d56ca04aa73f6f789b6386d035fb9349e1c9d228780049400c4`  
		Last Modified: Tue, 27 Oct 2026 23:03:52 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82212b5c849462e3dd0139e5a5b8d58d3290d92803198d5c1fee2a88cc24a5be`  
		Last Modified: Tue, 27 Oct 2026 23:03:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e0cc77e3f495c77875f1db941bab19c86844345c0256d4bf05597e900d69`  
		Last Modified: Tue, 27 Oct 2026 23:03:51 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3325ade1b95eef958b43223a8e2f930fb7a88598ff07289c108e40ea9568a3b`  
		Last Modified: Tue, 27 Oct 2026 23:03:56 GMT  
		Size: 43.3 MB (43340994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45beab588c2115a45d58cb6eab918d433478c7dbbef7d92f37cba8577cf68bd`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f4a352e310ffb8a93987326f53c0de896ff11e6a2ff1eea5ff3e7d53ecbdd0`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 342.2 KB (342171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82a5f4fcc0e72594b3ae2c9f480fa94be4c163c60eb901be1efe8af9a3b22da`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3514708ffcd88eb748540b2377d36f6f66979a9a404466596eef1f4ddc267a9f`  
		Last Modified: Tue, 27 Oct 2026 23:04:00 GMT  
		Size: 73.8 MB (73799496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff0d49c8c867b9582a5632680730d342eb19e9b2312e19c6d15dd7d0c6224a5`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9ab2e56e2d098ba7b923d3900c3a059128580601b8c4330b3ce30e9801c480`  
		Last Modified: Thu, 05 Nov 2026 18:54:29 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b8a891d239d53a8974688b221304c7560ebdbbfd82a019bd055f295d44192`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792e2e2b39b4dd9c9c9c571462238ef17d5af5ac4ddd4b5d66fd6fa8cfe2c4ee`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb594f57a5fb2306703fce5e22bcd0a0ccb5b0e92fe12f50d71de5b2da826c1e`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0850508e52ef599053526680e30927a065d297bd0fc01bcc6eb20f754de41af2`  
		Last Modified: Thu, 05 Nov 2026 18:54:29 GMT  
		Size: 2.5 MB (2476586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149a6383ffbf32a8756510d52ecb475ef4a6fb14b5a146d9165cae7ecc4944d3`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:2.11-builder` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:251630ed505d1bc71474d21c55de8c81013041f0be69b00734d6f10fc3af37a3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2346987143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b538f9c56cc6192b44467cf39f5699357058cab8013b2b91347260eaef074f10`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 23:01:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 23:01:55 GMT
ENV GIT_VERSION=2.56.0.4
# Tue, 27 Oct 2026 23:01:56 GMT
ENV GIT_TAG=v2.56.0.windows.4
# Tue, 27 Oct 2026 23:01:57 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.4/MinGit-2.56.0.4-64-bit.zip
# Tue, 27 Oct 2026 23:01:58 GMT
ENV GIT_DOWNLOAD_SHA256=e3bf78351fe777fba47ddee5950082f8a98bb0f02604fdc7ba3ee2cb68ffa877
# Tue, 27 Oct 2026 23:02:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:02:19 GMT
ENV GOPATH=C:\go
# Tue, 27 Oct 2026 23:02:25 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 27 Oct 2026 23:02:25 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 27 Oct 2026 23:03:54 GMT
RUN $url = 'https://dl.google.com/go/go1.27.3.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f26081f438319757f8a1b46d7d0b2c5ec7583d4038e485e0aa725cfde7885fff'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:03:55 GMT
WORKDIR C:\go
# Thu, 05 Nov 2026 18:52:29 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:52:33 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 18:52:35 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:52:36 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 18:53:59 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Thu, 05 Nov 2026 18:54:01 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f98ea005c6b5e82948bfd0d9f8a10a638f47353d2a860c1f04848b1fe63f43`  
		Last Modified: Tue, 27 Oct 2026 23:04:06 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25ff349fed69087dede49cbfb0d3b004befe6b14a59c473e56c8e2cccf4a6b4`  
		Last Modified: Tue, 27 Oct 2026 23:04:06 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8daa49ca7ead8b36f0b651f5788eead2db56caec3df7b94eb6f594cd3e5badb`  
		Last Modified: Tue, 27 Oct 2026 23:04:05 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32b0dbaa15dfd6332ead1255f233ea55cbb7a7d2eb216492a47bc4eb4f08a36`  
		Last Modified: Tue, 27 Oct 2026 23:04:04 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845ec009e41fbeeb45ebd214b6d358294dbf999e572d9d7ed78fb3f3f1b141a1`  
		Last Modified: Tue, 27 Oct 2026 23:04:04 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0343caa9e4c6abefa9caf25adbeacea608cbff97167723f99a282aa3a2d3c41c`  
		Last Modified: Tue, 27 Oct 2026 23:04:10 GMT  
		Size: 43.3 MB (43334640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6898c1b1554e9b4d9b0dab9c58c389f3f346f9f3d8be61f727d3dded97076b`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad6ffce0035c184d0f1cc69cc6eeee2960caf115514e65c99284f29a2362e3c`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 328.9 KB (328893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7eb5a2f945389244a435c579c2a21d1f289ebc2085d6ca51a23413dbb7345ff`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20140fb2422e642b34aa718958c5502a414c499b2fb93bff0ad64a135333051a`  
		Last Modified: Tue, 27 Oct 2026 23:04:14 GMT  
		Size: 73.8 MB (73788363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d46f6710058016f086fc453a4ff487f1ef0a8a5f2ed98c165d7be7df1a9daa`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97bd9afb309fbe0e00e3c3890bcb6b657012badb1ab77379d780d0f9516f4402`  
		Last Modified: Thu, 05 Nov 2026 18:54:19 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e418dd3b67b3ce1fde3dd9b4986f075bfdf19d21ac4739722823ca30f57ae692`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b96bd881305e184e63e771a5a35a07de64033d714d1f2f5fc3bbb36b516450`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11e7419554a1a0ed1cbe7f59c491e8a4b2219697a873b9ced64719df5a79466`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdc448824d456f3fddbdb0e5431171a1f7274d188b46463e05c83f183fd15c0`  
		Last Modified: Thu, 05 Nov 2026 18:54:20 GMT  
		Size: 2.5 MB (2461854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dead047b3a40bbbeb7dd37f709c20f5672f1fca49a8c9e3fb78ea309f92c26`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2.11-builder-alpine`

```console
$ docker pull caddy@sha256:e42a64b3bc70aa3a1387bde85b930e507a378fecae5852d5bfde9dcd37d0b999
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `caddy:2.11-builder-alpine` - linux; amd64

```console
$ docker pull caddy@sha256:f5ca6b3084eb14bd936970e95ad0b00d814b039b9263c3227cdead98c6b89a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83901648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73a4be9b1fc009db503df9d7fd20d8a5d059dacfea8514298d2d59698e0fd357`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:58:02 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 22:58:09 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 22:58:09 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 22:58:09 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 22:58:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:58:09 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 22:58:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 22:58:12 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:57:18 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:57:18 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:57:18 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:57:18 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:57:18 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:57:18 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:57:18 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:57:18 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c012d78a862fe59ae6789c91f982ea68a882c9c44bbde97013914458dcdd9c4c`  
		Last Modified: Wed, 21 Oct 2026 22:58:25 GMT  
		Size: 244.5 KB (244471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0bb27ae78502103ed383ed33346f88a83943fb7bd93977850d5890ee8fb3b`  
		Last Modified: Tue, 20 Oct 2026 02:42:46 GMT  
		Size: 71.2 MB (71150395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e3100880d834be60a9562375f4c5018b2cb26d64591bd0060aa3a80b935f43`  
		Last Modified: Wed, 21 Oct 2026 22:58:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f75821daa4e57f3cf136ac3698c24e27acc6148b904936fad0875779d9a7896`  
		Last Modified: Wed, 04 Nov 2026 17:57:27 GMT  
		Size: 6.6 MB (6643577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:363e2d59666e67f976bdd297efde475d864502c6df48318c8ec218b3c02f60b7`  
		Last Modified: Wed, 04 Nov 2026 17:57:27 GMT  
		Size: 2.0 MB (2009506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f753fcec1ce79dc0413a0a309b6fb2956d4eba7c0b69fa8bf2521ba976f6a891`  
		Last Modified: Wed, 04 Nov 2026 17:57:26 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:c6ff12d4b199ab8009031f6f52380f34dfe292ab0a3b4e94bf091954bf832fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.4 KB (283370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29d63d2129aa380ca65172aae435b595525aaf52718784904bea68b9dff8e02`

```dockerfile
```

-	Layers:
	-	`sha256:b43270beb5d9fa4753496c872822e2a9c7de255f3b67b18d19bdc2f7eb86e790`  
		Last Modified: Wed, 04 Nov 2026 17:57:26 GMT  
		Size: 263.2 KB (263241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c0cd564e6a1a4c550c2bb1412edd3214269f177e85a5dae8388f2fad4cbd5b2`  
		Last Modified: Wed, 04 Nov 2026 17:57:26 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11-builder-alpine` - linux; arm variant v6

```console
$ docker pull caddy@sha256:b568aab6f8b018ddb505fa6055c6e7c622f767a36976ba68cfab769be167e0c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81892741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83650bcf36d98ced23db81cb3f128c49e97039e39bcb4f25f0289082f037adcc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:29:36 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:29:45 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:29:45 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:29:45 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:29:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:29:45 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:29:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:29:48 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:56:04 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:56:05 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:56:05 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:05 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:56:05 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:56:05 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:56:05 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:56:05 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057399039eb243e7808b91993ba9f63d3e0da431e05f5bbb72f37e5dd6b080c8`  
		Last Modified: Wed, 21 Oct 2026 23:29:59 GMT  
		Size: 245.6 KB (245575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311ceebe23a2437e4f10eca55adfacd488c82ac6aa8e96dacaebe20785979cba`  
		Last Modified: Tue, 20 Oct 2026 02:42:15 GMT  
		Size: 69.7 MB (69655857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4270a94f0219df984116129a409fe43c3d2d9c5996177b591aca31e1f3615398`  
		Last Modified: Wed, 21 Oct 2026 23:29:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57981200b77c1ac92be88844e2b5d96ed3085b7d4bf3a2a65c38812afc5adaae`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 6.6 MB (6550958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7f91d9deb69265e264ce01570a2c8096325281fb63fae1d86d1f1c4b45c705d`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 1.9 MB (1881469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc603c44182b798efd59c2539361f0c2091b5cce17da95246a8317bd751bf59`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:ae2567192a55556ecfa6571bbf2b213ae00692d20a5adc60e9ef41d52be603fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 KB (20039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0e5d6b36579df986e3a4fbce904711cff41d948011bc50249655b1c0b53ff0c`

```dockerfile
```

-	Layers:
	-	`sha256:88d4f38776bbaa9941ccb45282129440b1ad886df732151a9b64dc6ebd5cf462`  
		Last Modified: Wed, 04 Nov 2026 17:56:09 GMT  
		Size: 20.0 KB (20039 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11-builder-alpine` - linux; arm variant v7

```console
$ docker pull caddy@sha256:dd6a43a6c388a1550850ce282e5f3380c65e6eb0c816c3bdd92d0bedee6d8747
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.0 MB (81040107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef03978689ceb0b7e301965ff96198caaf5b44eb2d860e1dd347b6a875c6f9d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:30:49 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:33:59 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:33:59 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:33:59 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:33:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:33:59 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:34:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:34:02 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:56:37 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:56:38 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:56:38 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:38 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:56:38 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:56:38 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:56:38 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:56:38 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ea789e2969e7e9134f029905c7800eb29baab37b23bce0b5c7b8842814015e`  
		Last Modified: Wed, 21 Oct 2026 23:30:58 GMT  
		Size: 244.5 KB (244518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae9b35601617bc051bb43546b04b850ce4f1eac0f66a3a5d94eff209388a0b2`  
		Last Modified: Tue, 20 Oct 2026 02:43:07 GMT  
		Size: 69.7 MB (69655805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d4e0aad963a6de3ba7f2ac6cad5cd64943f102880db12296ba798d90e05b19`  
		Last Modified: Wed, 21 Oct 2026 23:34:16 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddeac073f1ff9ce1762b297bdd4dc1735ce37ab24c5af711fdfd0907a0ad0ca7`  
		Last Modified: Wed, 04 Nov 2026 17:56:46 GMT  
		Size: 6.0 MB (5995495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a745b9350000bcd3caa8d30555052a24a52df1e4445ecf1552b74fb5e1766bf7`  
		Last Modified: Wed, 04 Nov 2026 17:56:46 GMT  
		Size: 1.9 MB (1877039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d9929a95fe998bd09e0fd1ea6e728e41de22218969a24a5a235eeb5021ed86a`  
		Last Modified: Wed, 04 Nov 2026 17:56:45 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:f534cd318dde50f4dfb5d7c4d09dd55993ee4e56051566e04943e6450c823aee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.9 KB (285887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:200aafce2fad433150b55aaf21e495b9fad99309cab50ff448dcf7c60eb473b0`

```dockerfile
```

-	Layers:
	-	`sha256:6a41681ca1d8c3bd081286d8a0bf3afb1164d71bbe0534f2703014ee8dc7b1a3`  
		Last Modified: Wed, 04 Nov 2026 17:56:45 GMT  
		Size: 265.6 KB (265633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a2331cc41bfa20b1f481c65211a111ffac4b73b9a3bc58775fa9bc905db1a98`  
		Last Modified: Wed, 04 Nov 2026 17:56:45 GMT  
		Size: 20.3 KB (20254 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11-builder-alpine` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:188269e13e55e4fd9b8d07c70a116b64de79d6cc8868cc508e60d079ab89b18b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80715823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a5a3c3741317bb370be72fb12c60d0becda282cf1878f8d6f36d74d0dc0fea`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:46 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:20:54 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:20:54 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:20:54 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:20:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:20:54 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:20:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:20:56 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:56:21 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:56:21 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:56:21 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:21 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:56:21 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:56:21 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:56:22 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:56:22 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcdc05aad5cf439d58eff6bbe6e136d87af146e3b7442a5c64928da3ae1b86a3`  
		Last Modified: Wed, 21 Oct 2026 23:21:11 GMT  
		Size: 246.9 KB (246920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e7dba5c30798b9d70d746d9fb1606b744e5c3baa8015b51dad60cea99c045b`  
		Last Modified: Tue, 20 Oct 2026 02:42:50 GMT  
		Size: 67.7 MB (67719732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070112d392529aede516cb12dd04bbbf175fcab48c54121d76e09a5043ce92a1`  
		Last Modified: Wed, 21 Oct 2026 23:21:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ebdeb09f3c924d39a56d696297e2d657a33871448b8e075942cf6a752f6c58c`  
		Last Modified: Wed, 04 Nov 2026 17:56:30 GMT  
		Size: 6.7 MB (6727138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39f58f80fb592545c17183ccbecd0b91355710c0665447e528d36424e942860`  
		Last Modified: Wed, 04 Nov 2026 17:56:30 GMT  
		Size: 1.8 MB (1830954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2689232fbef6373f21177d0f3d90d3882efce2c056f4a0a1a2f274c5940996b4`  
		Last Modified: Wed, 04 Nov 2026 17:56:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:ad0d33a228c686de25fba171bceb5c6af03099048487bdc6e3f6c1c83c1b5547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 KB (282991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31d63d5e32fc1cc2653faf3997b6b813beac19ed930b727da0d45d2425331cc`

```dockerfile
```

-	Layers:
	-	`sha256:5debd47c4c43686d18317b7954ead90bd0e141ca4dac0b9c3d62ebfc9c223937`  
		Last Modified: Wed, 04 Nov 2026 17:56:29 GMT  
		Size: 262.7 KB (262695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53d25d2936ebab3f9951b9e7e0a2c51d87d02980c61d812a5f129bf7bc681ea3`  
		Last Modified: Wed, 04 Nov 2026 17:56:29 GMT  
		Size: 20.3 KB (20296 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11-builder-alpine` - linux; ppc64le

```console
$ docker pull caddy@sha256:2c6692c88ae9ce80f131b5d4b74388fef59f0562bf9ba63f48927d0deb672ff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81481471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c078bdbd49232982d7b0a5b520eb8ca7d0e2fa6f5c4413b231845c5ed69e91d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 13:35:51 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:41:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:41:36 GMT
COPY /target/ / # buildkit
# Thu, 22 Oct 2026 13:43:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 22 Oct 2026 13:43:20 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:55:21 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:55:30 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:55:30 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:55:30 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:55:30 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:55:30 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:55:42 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:55:48 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1039312999d7cc79e1a73e7d562cb99a4e1d9808a1c7eb990e7bd00db569593`  
		Last Modified: Thu, 22 Oct 2026 13:36:31 GMT  
		Size: 247.4 KB (247354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99280a61a753e565d841200e74a9ffba4717a286b10e4a5b0e0f4148164d619`  
		Last Modified: Tue, 20 Oct 2026 02:42:42 GMT  
		Size: 68.5 MB (68492171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d26cca5cf4e23e7a631853927e088cd119148d2149259c5d02e4358523c9f9b`  
		Last Modified: Thu, 22 Oct 2026 13:43:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ec1cdb0369df3ec046840060bcdbafe17a6d5d0b64286b96ff3bd86f4c36a9`  
		Last Modified: Wed, 04 Nov 2026 17:56:23 GMT  
		Size: 7.1 MB (7067825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a74bbbbe3cab47dc229b607b0ab407ed2ea0e57494a027de2a771709fc6e578`  
		Last Modified: Wed, 04 Nov 2026 17:56:23 GMT  
		Size: 1.9 MB (1852706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5d4efc145ed802ea281abacad7847207d1e5b29f7028adb36ed021ee7623cb`  
		Last Modified: Wed, 04 Nov 2026 17:56:24 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:7ef384c917d2c72247359c2f8206cce9da27e7a01410109a801e062512c81b73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 KB (282862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fffb55fa30667e00acb5dad7551df3b10c6165ff741c359a72ca9a1610782502`

```dockerfile
```

-	Layers:
	-	`sha256:b5e6a2af55077255e40063701decf51a2ebffc67802ef6533fd5e2e55d9084e2`  
		Last Modified: Wed, 04 Nov 2026 17:56:24 GMT  
		Size: 262.7 KB (262664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d07be2f615552682b5000418a0d635db93b098e2060fb882cff1d21ef7df550`  
		Last Modified: Wed, 04 Nov 2026 17:56:24 GMT  
		Size: 20.2 KB (20198 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11-builder-alpine` - linux; riscv64

```console
$ docker pull caddy@sha256:5976ed6ad86ce3fa234815ce06110972c027b5f3602c3b026c5de8d5e48789d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81675521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b0bf3a1751a3aeefba4002876c682d97f77e0c732a1b5df1ef55496ab6e0026`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 13:36:28 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:43:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:43:35 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 00:22:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 00:22:55 GMT
WORKDIR /go
# Thu, 05 Nov 2026 07:03:46 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 05 Nov 2026 07:03:47 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 07:03:47 GMT
ENV CADDY_VERSION=v2.11.8
# Thu, 05 Nov 2026 07:03:47 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 07:03:47 GMT
ENV XCADDY_SETCAP=1
# Thu, 05 Nov 2026 07:03:47 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 05 Nov 2026 07:03:48 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 05 Nov 2026 07:03:48 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0c6bbdd7e2de39b486fb00ad142f28331aaffeee541e676368c08a410f76ed`  
		Last Modified: Mon, 26 Oct 2026 13:37:55 GMT  
		Size: 244.9 KB (244881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb54614ae9ed635bfb8e27e661f01b863c8fcc98d1049b51549da2b2bf52a7a4`  
		Last Modified: Tue, 20 Oct 2026 02:50:40 GMT  
		Size: 69.2 MB (69170985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dad86abc0730a42f957fd3d2aeb23ea0616dea43d14b33d12b96325a36d169e`  
		Last Modified: Tue, 27 Oct 2026 00:24:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c4c16eb9680371fca8f637985610d3a4b85255941c76a98a2ea0dd04432c00b`  
		Last Modified: Thu, 05 Nov 2026 07:05:27 GMT  
		Size: 6.8 MB (6825625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f45a92b7c360dc9219503a83da9c3c705416b0b93da5f576141a4f54c00774`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 1.9 MB (1852791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2d08bd7441e433de00fd4eae87a8b3ff26f54839ffb155a092b95127a5dc51f`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:df2ff7bf921df9a16643efdb2163df724b2cecdb7b9d18dc62e40246d386c79e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 KB (282859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81fdef83eeef55f4039393b700e958a9ef945541926df8d9c7b36ecd394819dd`

```dockerfile
```

-	Layers:
	-	`sha256:71f67b9b9248518abcbb988b596d199d322073e385b35b7b3ef9573cce5637c3`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 262.7 KB (262660 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1db7972890027e7ce8cb45c48ea7206795733fc21a313202520668bae351437e`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 20.2 KB (20199 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11-builder-alpine` - linux; s390x

```console
$ docker pull caddy@sha256:7673aabded7251df3319d5c0ebeca77666e5d8efe0371ea7a2d8c5213b12479a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83120777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3bb20b8d4b4a40649130906bec7ebd5660dfafb0487e66c87e7e0600d727e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:41:23 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:41:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:41:05 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:41:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:41:33 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:54:32 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:54:32 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:54:32 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:54:32 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:54:32 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394b72af52beb97b1ac0b1a98b13629b3b0aee2321f877e115a82124b80d7793`  
		Last Modified: Wed, 21 Oct 2026 23:41:45 GMT  
		Size: 245.6 KB (245571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c0523718a973c87af9229ebd329dd6cf4e5d8ba37906c1e4c9083f5bb46d84`  
		Last Modified: Tue, 20 Oct 2026 02:41:29 GMT  
		Size: 70.3 MB (70281640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:096905f6e50b9f46f97862a2a89bf93646cfd1326c57bfde369c1e8b28b45e43`  
		Last Modified: Wed, 21 Oct 2026 23:41:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd451073c8291040e36d1ad69d5d1aff7fcbcdde6a619463318c669639663ca`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 6.9 MB (6929167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91773e053345d095de77ac8ee8097500d4e2adfb2d4e79185160197a7c95188`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 1.9 MB (1944097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983f6d28817b32472305d38546d4ad8c5039c0bb56072fefb0ed383da9cef71b`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11-builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:f96d9615c049ff203083b41f15e921e7cf3220baf4a9baacb89dd47e0dd2646f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 KB (283215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e23784b2c54a2206de5ede21d1d08d0c11dbcc9138f2d41fc8f0d6a821325d6`

```dockerfile
```

-	Layers:
	-	`sha256:20d26e6c47c81bb7d1f238d070f68b16820f4b39cf7838d591209a27b40a3ac5`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 263.1 KB (263086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b4602176494052efed8ad3b0302d9053e7abd5be5a0ecc43d8636d9b52799a5`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json

## `caddy:2.11-builder-windowsservercore-ltsc2022`

```console
$ docker pull caddy@sha256:fd376832a45bde301952ad8538e4ced511ba4ccfde972c7012ec351c06758527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `caddy:2.11-builder-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:251630ed505d1bc71474d21c55de8c81013041f0be69b00734d6f10fc3af37a3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2346987143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b538f9c56cc6192b44467cf39f5699357058cab8013b2b91347260eaef074f10`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 23:01:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 23:01:55 GMT
ENV GIT_VERSION=2.56.0.4
# Tue, 27 Oct 2026 23:01:56 GMT
ENV GIT_TAG=v2.56.0.windows.4
# Tue, 27 Oct 2026 23:01:57 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.4/MinGit-2.56.0.4-64-bit.zip
# Tue, 27 Oct 2026 23:01:58 GMT
ENV GIT_DOWNLOAD_SHA256=e3bf78351fe777fba47ddee5950082f8a98bb0f02604fdc7ba3ee2cb68ffa877
# Tue, 27 Oct 2026 23:02:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:02:19 GMT
ENV GOPATH=C:\go
# Tue, 27 Oct 2026 23:02:25 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 27 Oct 2026 23:02:25 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 27 Oct 2026 23:03:54 GMT
RUN $url = 'https://dl.google.com/go/go1.27.3.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f26081f438319757f8a1b46d7d0b2c5ec7583d4038e485e0aa725cfde7885fff'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:03:55 GMT
WORKDIR C:\go
# Thu, 05 Nov 2026 18:52:29 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:52:33 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 18:52:35 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:52:36 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 18:53:59 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Thu, 05 Nov 2026 18:54:01 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f98ea005c6b5e82948bfd0d9f8a10a638f47353d2a860c1f04848b1fe63f43`  
		Last Modified: Tue, 27 Oct 2026 23:04:06 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25ff349fed69087dede49cbfb0d3b004befe6b14a59c473e56c8e2cccf4a6b4`  
		Last Modified: Tue, 27 Oct 2026 23:04:06 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8daa49ca7ead8b36f0b651f5788eead2db56caec3df7b94eb6f594cd3e5badb`  
		Last Modified: Tue, 27 Oct 2026 23:04:05 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32b0dbaa15dfd6332ead1255f233ea55cbb7a7d2eb216492a47bc4eb4f08a36`  
		Last Modified: Tue, 27 Oct 2026 23:04:04 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845ec009e41fbeeb45ebd214b6d358294dbf999e572d9d7ed78fb3f3f1b141a1`  
		Last Modified: Tue, 27 Oct 2026 23:04:04 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0343caa9e4c6abefa9caf25adbeacea608cbff97167723f99a282aa3a2d3c41c`  
		Last Modified: Tue, 27 Oct 2026 23:04:10 GMT  
		Size: 43.3 MB (43334640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6898c1b1554e9b4d9b0dab9c58c389f3f346f9f3d8be61f727d3dded97076b`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad6ffce0035c184d0f1cc69cc6eeee2960caf115514e65c99284f29a2362e3c`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 328.9 KB (328893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7eb5a2f945389244a435c579c2a21d1f289ebc2085d6ca51a23413dbb7345ff`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20140fb2422e642b34aa718958c5502a414c499b2fb93bff0ad64a135333051a`  
		Last Modified: Tue, 27 Oct 2026 23:04:14 GMT  
		Size: 73.8 MB (73788363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d46f6710058016f086fc453a4ff487f1ef0a8a5f2ed98c165d7be7df1a9daa`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97bd9afb309fbe0e00e3c3890bcb6b657012badb1ab77379d780d0f9516f4402`  
		Last Modified: Thu, 05 Nov 2026 18:54:19 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e418dd3b67b3ce1fde3dd9b4986f075bfdf19d21ac4739722823ca30f57ae692`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b96bd881305e184e63e771a5a35a07de64033d714d1f2f5fc3bbb36b516450`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11e7419554a1a0ed1cbe7f59c491e8a4b2219697a873b9ced64719df5a79466`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdc448824d456f3fddbdb0e5431171a1f7274d188b46463e05c83f183fd15c0`  
		Last Modified: Thu, 05 Nov 2026 18:54:20 GMT  
		Size: 2.5 MB (2461854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dead047b3a40bbbeb7dd37f709c20f5672f1fca49a8c9e3fb78ea309f92c26`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2.11-builder-windowsservercore-ltsc2025`

```console
$ docker pull caddy@sha256:941dd431e0b855f2ccdd530b0f60113a70531639c387fa4c6c3bf4efa158ba21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `caddy:2.11-builder-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:322cf178420fc490995ab4926e551ded39c7741bafd40e52d8f37721a5af63d3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2512025216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:405652c8cb9a777e8aee873526e5de489b3584c99fe7a4d85fc6e4cc6c00bf0a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 23:01:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 23:01:50 GMT
ENV GIT_VERSION=2.56.0.4
# Tue, 27 Oct 2026 23:01:50 GMT
ENV GIT_TAG=v2.56.0.windows.4
# Tue, 27 Oct 2026 23:01:51 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.4/MinGit-2.56.0.4-64-bit.zip
# Tue, 27 Oct 2026 23:01:51 GMT
ENV GIT_DOWNLOAD_SHA256=e3bf78351fe777fba47ddee5950082f8a98bb0f02604fdc7ba3ee2cb68ffa877
# Tue, 27 Oct 2026 23:02:08 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:02:08 GMT
ENV GOPATH=C:\go
# Tue, 27 Oct 2026 23:02:13 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 27 Oct 2026 23:02:13 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 27 Oct 2026 23:03:36 GMT
RUN $url = 'https://dl.google.com/go/go1.27.3.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f26081f438319757f8a1b46d7d0b2c5ec7583d4038e485e0aa725cfde7885fff'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:03:37 GMT
WORKDIR C:\go
# Thu, 05 Nov 2026 18:52:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:52:42 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 18:52:44 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:52:46 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 18:54:15 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Thu, 05 Nov 2026 18:54:17 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9dc3ea73737b5e7988b67a3b7d66fb12d1c2d45ae0faa88815590457b0a29b`  
		Last Modified: Tue, 27 Oct 2026 23:03:53 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bca6fe69737ca73ad3f90994d40696ec38484b78dfb551c7453e8a9807b6d01`  
		Last Modified: Tue, 27 Oct 2026 23:03:53 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82709fc838d73d56ca04aa73f6f789b6386d035fb9349e1c9d228780049400c4`  
		Last Modified: Tue, 27 Oct 2026 23:03:52 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82212b5c849462e3dd0139e5a5b8d58d3290d92803198d5c1fee2a88cc24a5be`  
		Last Modified: Tue, 27 Oct 2026 23:03:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e0cc77e3f495c77875f1db941bab19c86844345c0256d4bf05597e900d69`  
		Last Modified: Tue, 27 Oct 2026 23:03:51 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3325ade1b95eef958b43223a8e2f930fb7a88598ff07289c108e40ea9568a3b`  
		Last Modified: Tue, 27 Oct 2026 23:03:56 GMT  
		Size: 43.3 MB (43340994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45beab588c2115a45d58cb6eab918d433478c7dbbef7d92f37cba8577cf68bd`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f4a352e310ffb8a93987326f53c0de896ff11e6a2ff1eea5ff3e7d53ecbdd0`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 342.2 KB (342171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82a5f4fcc0e72594b3ae2c9f480fa94be4c163c60eb901be1efe8af9a3b22da`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3514708ffcd88eb748540b2377d36f6f66979a9a404466596eef1f4ddc267a9f`  
		Last Modified: Tue, 27 Oct 2026 23:04:00 GMT  
		Size: 73.8 MB (73799496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff0d49c8c867b9582a5632680730d342eb19e9b2312e19c6d15dd7d0c6224a5`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9ab2e56e2d098ba7b923d3900c3a059128580601b8c4330b3ce30e9801c480`  
		Last Modified: Thu, 05 Nov 2026 18:54:29 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b8a891d239d53a8974688b221304c7560ebdbbfd82a019bd055f295d44192`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792e2e2b39b4dd9c9c9c571462238ef17d5af5ac4ddd4b5d66fd6fa8cfe2c4ee`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb594f57a5fb2306703fce5e22bcd0a0ccb5b0e92fe12f50d71de5b2da826c1e`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0850508e52ef599053526680e30927a065d297bd0fc01bcc6eb20f754de41af2`  
		Last Modified: Thu, 05 Nov 2026 18:54:29 GMT  
		Size: 2.5 MB (2476586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149a6383ffbf32a8756510d52ecb475ef4a6fb14b5a146d9165cae7ecc4944d3`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2.11-nanoserver`

```console
$ docker pull caddy@sha256:69f081326e11d5de2bc6c36c49f7ff6ada1ca0d0bea17ecc5eeea8dd430beb68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `caddy:2.11-nanoserver` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:52c08ac30210f7dd3f8797086ed8ac9250a0bd2c1f819fce3ec17bb43b550405
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219049983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d510733a0955a2dba4581ac8a3dbe4fefbc470008b16142b7e3e5fd68585a5da`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Thu, 05 Nov 2026 19:10:17 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Thu, 05 Nov 2026 19:10:18 GMT
RUN cmd /S /C #(nop) COPY file:f6fd9f7c8bd53ad2dea712d2b3468beaa8adaf6a9b8689f2f467c74c0f14078e in c:\caddy.exe 
# Thu, 05 Nov 2026 19:10:25 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Thu, 05 Nov 2026 19:10:29 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Thu, 05 Nov 2026 19:10:30 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 19:10:30 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:10:34 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:10:35 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:10:35 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Thu, 05 Nov 2026 19:10:37 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Thu, 05 Nov 2026 19:10:41 GMT
RUN caddy version
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddb22bef6de03c70812651b09b9821db3663cf45ff609907d10b9223c206e91`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 70.2 KB (70167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6273d9e342a51812fe6a306da942b6b9dbe8ae64128c1178a19252af4436b594`  
		Last Modified: Thu, 05 Nov 2026 19:10:53 GMT  
		Size: 18.5 MB (18498144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e65ef40e0b391980a2212b18173e33196f175d022677d8bf80196a25a27764ed`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 286.7 KB (286666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc2e4903cde3fdce7a882b066fe815f3c9bd7723bb1476ea6679f6ecefb781`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 110.6 KB (110556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7331d4d3ee891076ae62d845a7e716f975c8a172163ddcacf7a86a214d95f06b`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9cef09dbb1fce3303467532de78e107af35c09effe992c0c5b3f75fb4241d03`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7edd05c17a313dafe0ddc9d3c214f97b11cb340eb9052a7ebd18e46081fe5645`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5d7a4be40b85550ab5f630d17e44de58f0a5aed45ab517e19bb00b9b0a8d69`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ce06190fbf60c8b77d7d8395c6989896257f9d10fba71bd66b6fe1601b8122`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a85c2a042f8a082426f33de5baf817710599a44f092127bea8884df81e3e31`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd21175cf9bb40435e4283e25efbd5f8de0fa6696a4a7dcc1e409b35f1cef5ad`  
		Last Modified: Thu, 05 Nov 2026 19:10:48 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29396bba1f2c855cfde8454974891af94bf1de63f44dad9188b8e07a4aa6312`  
		Last Modified: Thu, 05 Nov 2026 19:10:47 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78531b08c4180ca18873517da84cc773b54b5956abe1dc0cf4d8c94dd68cf57c`  
		Last Modified: Thu, 05 Nov 2026 19:10:47 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850a9a9b73ee169356776de2a8b429f6f1732c66db7a036ca95a5a9493792eab`  
		Last Modified: Thu, 05 Nov 2026 19:10:48 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8636cc7c7957d3ec336e4fbb74ed197ac2de19d4b42db105b7cd462d40d9faf`  
		Last Modified: Thu, 05 Nov 2026 19:10:47 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71abcd22f3b21f1e95a509b2fe5f71af0bb4d40addb2f7105de2d49737e39b95`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f1f2d196935066aa2ef719631b3b557d1ace896db7ed0d60d439d2360f557`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdf3a91e2c46286142913d3f7a62f79dfb0f164e0063e1e3a24ae938b92d6cb`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73cad6dc76af673edc78125074e804abc99510c3b6e31b79bc2d5cf55eb1624`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 110.0 KB (109952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d227e39196c67b43f84f423ddda30d3e817ff1b3a4053613285525b20cfcb3d`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:2.11-nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:56b01f793a8128ee887d3e64de342dd3f2000a638ac1b4e7db29f2eb4bcb6284
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (145040802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d6191e2fc28e32c185f501fbd9572ebcf4e2a14ad065271c3337800994d629c`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Thu, 05 Nov 2026 19:10:13 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Thu, 05 Nov 2026 19:10:14 GMT
RUN cmd /S /C #(nop) COPY file:f6fd9f7c8bd53ad2dea712d2b3468beaa8adaf6a9b8689f2f467c74c0f14078e in c:\caddy.exe 
# Thu, 05 Nov 2026 19:10:25 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Thu, 05 Nov 2026 19:10:29 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:10:37 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:10:38 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:10:39 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:10:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:10:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 05 Nov 2026 19:10:44 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Thu, 05 Nov 2026 19:10:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Thu, 05 Nov 2026 19:10:47 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Thu, 05 Nov 2026 19:10:53 GMT
RUN caddy version
# Thu, 05 Nov 2026 19:10:54 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e1d06ea3837094c8761c7a40f502ad3ad9c213d4b486704f0a133be3d23f36`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 65.7 KB (65722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02d611403e37ecc02486a51183dcf106fb194e74b539f53bc1a00f1bbef02d7`  
		Last Modified: Thu, 05 Nov 2026 19:11:05 GMT  
		Size: 18.5 MB (18498202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1a17f3d31316c91205b5a519e0fc13c47939d3cc80aae106bd10649a823c04`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 290.2 KB (290212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3248fc9eb8b3c5ca0a8c7d6e92613d1df59864d1fd999fd6918e7245f189c392`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 123.2 KB (123168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40617a87b67b23ff7cfbe9de77177d9d3c6cb4284f1e39fe4a10f6171ad1ac4c`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e53fdde1ce4c324048149b5a456caab36f2220fb554c3c224cb29e9e3fa33b`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db93c253cdba976c39879edf23f24ea82aa83905b876504043e6c3cc9de39beb`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8965ee7d0cd826aaf2b9bf9879787f2110e2e2dab8f1fedcc0e9a1a4908b3f`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c29573c1901e5ea02b5f9e28e88e7a22b70c0acf84c41f4df6c1e795786c1`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2452f6722465dd773bf66b1cd607629e8b0f1fa73e4fc9fc7850e361c34a6553`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffdfaa4722c6a480ef02a2b6d8b2febc1a780a6a9a5557bbb6d3ffeeddd3ea4`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1597c7620d13ea57db6902612b6262261a7472a43e6b51a415418f0948523908`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fca5741b400358f371bb2758d52b63990bf9fe6613de999ccccd67b9bae200`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad096f0eeb95189cb63225d7b5873ab5d1e783703e639614a5aad4b23b880f1c`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c0adb7da06b7e605d03e094aad1033bc43abb83e9b59ecbcd8168abf0baa00`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8fe49479fc270257c4ca6cd3ce110e48008b6c06b1238b4c37fee4a39bf7b1`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa9a4eb0fa03b7c97b076bbccb045c37ba876eb6562c74449bb13fd5c309eb9`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10f275be5ed1abde3b084de91ae3a4a44c3334c0d8434366c30c953ae63460d`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fba564c3db312cd1674228848c185b36885e03927345eb02c84fee49d9bd6d2`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 121.0 KB (120982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc99724b66359e0703518bd1f7fa181f2563be2605953b7c7bc6641b51624d1`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2.11-nanoserver-ltsc2022`

```console
$ docker pull caddy@sha256:d2d8348d9c32aa61453875bf150b1dafce34d416c9195267d80f4a6e9eaed07b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `caddy:2.11-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:56b01f793a8128ee887d3e64de342dd3f2000a638ac1b4e7db29f2eb4bcb6284
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (145040802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d6191e2fc28e32c185f501fbd9572ebcf4e2a14ad065271c3337800994d629c`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Thu, 05 Nov 2026 19:10:13 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Thu, 05 Nov 2026 19:10:14 GMT
RUN cmd /S /C #(nop) COPY file:f6fd9f7c8bd53ad2dea712d2b3468beaa8adaf6a9b8689f2f467c74c0f14078e in c:\caddy.exe 
# Thu, 05 Nov 2026 19:10:25 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Thu, 05 Nov 2026 19:10:29 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:10:37 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:10:38 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:10:39 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:10:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:10:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 05 Nov 2026 19:10:44 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Thu, 05 Nov 2026 19:10:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Thu, 05 Nov 2026 19:10:47 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Thu, 05 Nov 2026 19:10:53 GMT
RUN caddy version
# Thu, 05 Nov 2026 19:10:54 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e1d06ea3837094c8761c7a40f502ad3ad9c213d4b486704f0a133be3d23f36`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 65.7 KB (65722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02d611403e37ecc02486a51183dcf106fb194e74b539f53bc1a00f1bbef02d7`  
		Last Modified: Thu, 05 Nov 2026 19:11:05 GMT  
		Size: 18.5 MB (18498202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1a17f3d31316c91205b5a519e0fc13c47939d3cc80aae106bd10649a823c04`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 290.2 KB (290212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3248fc9eb8b3c5ca0a8c7d6e92613d1df59864d1fd999fd6918e7245f189c392`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 123.2 KB (123168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40617a87b67b23ff7cfbe9de77177d9d3c6cb4284f1e39fe4a10f6171ad1ac4c`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e53fdde1ce4c324048149b5a456caab36f2220fb554c3c224cb29e9e3fa33b`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db93c253cdba976c39879edf23f24ea82aa83905b876504043e6c3cc9de39beb`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8965ee7d0cd826aaf2b9bf9879787f2110e2e2dab8f1fedcc0e9a1a4908b3f`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c29573c1901e5ea02b5f9e28e88e7a22b70c0acf84c41f4df6c1e795786c1`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2452f6722465dd773bf66b1cd607629e8b0f1fa73e4fc9fc7850e361c34a6553`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffdfaa4722c6a480ef02a2b6d8b2febc1a780a6a9a5557bbb6d3ffeeddd3ea4`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1597c7620d13ea57db6902612b6262261a7472a43e6b51a415418f0948523908`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fca5741b400358f371bb2758d52b63990bf9fe6613de999ccccd67b9bae200`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad096f0eeb95189cb63225d7b5873ab5d1e783703e639614a5aad4b23b880f1c`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c0adb7da06b7e605d03e094aad1033bc43abb83e9b59ecbcd8168abf0baa00`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8fe49479fc270257c4ca6cd3ce110e48008b6c06b1238b4c37fee4a39bf7b1`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa9a4eb0fa03b7c97b076bbccb045c37ba876eb6562c74449bb13fd5c309eb9`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10f275be5ed1abde3b084de91ae3a4a44c3334c0d8434366c30c953ae63460d`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fba564c3db312cd1674228848c185b36885e03927345eb02c84fee49d9bd6d2`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 121.0 KB (120982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc99724b66359e0703518bd1f7fa181f2563be2605953b7c7bc6641b51624d1`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2.11-nanoserver-ltsc2025`

```console
$ docker pull caddy@sha256:f3a662bcf43bcc21cff24811fe7f0a70d762d6bacd747c83dae7a97d6f5115b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `caddy:2.11-nanoserver-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:52c08ac30210f7dd3f8797086ed8ac9250a0bd2c1f819fce3ec17bb43b550405
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219049983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d510733a0955a2dba4581ac8a3dbe4fefbc470008b16142b7e3e5fd68585a5da`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Thu, 05 Nov 2026 19:10:17 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Thu, 05 Nov 2026 19:10:18 GMT
RUN cmd /S /C #(nop) COPY file:f6fd9f7c8bd53ad2dea712d2b3468beaa8adaf6a9b8689f2f467c74c0f14078e in c:\caddy.exe 
# Thu, 05 Nov 2026 19:10:25 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Thu, 05 Nov 2026 19:10:29 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Thu, 05 Nov 2026 19:10:30 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 19:10:30 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:10:34 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:10:35 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:10:35 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Thu, 05 Nov 2026 19:10:37 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Thu, 05 Nov 2026 19:10:41 GMT
RUN caddy version
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddb22bef6de03c70812651b09b9821db3663cf45ff609907d10b9223c206e91`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 70.2 KB (70167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6273d9e342a51812fe6a306da942b6b9dbe8ae64128c1178a19252af4436b594`  
		Last Modified: Thu, 05 Nov 2026 19:10:53 GMT  
		Size: 18.5 MB (18498144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e65ef40e0b391980a2212b18173e33196f175d022677d8bf80196a25a27764ed`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 286.7 KB (286666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc2e4903cde3fdce7a882b066fe815f3c9bd7723bb1476ea6679f6ecefb781`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 110.6 KB (110556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7331d4d3ee891076ae62d845a7e716f975c8a172163ddcacf7a86a214d95f06b`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9cef09dbb1fce3303467532de78e107af35c09effe992c0c5b3f75fb4241d03`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7edd05c17a313dafe0ddc9d3c214f97b11cb340eb9052a7ebd18e46081fe5645`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5d7a4be40b85550ab5f630d17e44de58f0a5aed45ab517e19bb00b9b0a8d69`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ce06190fbf60c8b77d7d8395c6989896257f9d10fba71bd66b6fe1601b8122`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a85c2a042f8a082426f33de5baf817710599a44f092127bea8884df81e3e31`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd21175cf9bb40435e4283e25efbd5f8de0fa6696a4a7dcc1e409b35f1cef5ad`  
		Last Modified: Thu, 05 Nov 2026 19:10:48 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29396bba1f2c855cfde8454974891af94bf1de63f44dad9188b8e07a4aa6312`  
		Last Modified: Thu, 05 Nov 2026 19:10:47 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78531b08c4180ca18873517da84cc773b54b5956abe1dc0cf4d8c94dd68cf57c`  
		Last Modified: Thu, 05 Nov 2026 19:10:47 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850a9a9b73ee169356776de2a8b429f6f1732c66db7a036ca95a5a9493792eab`  
		Last Modified: Thu, 05 Nov 2026 19:10:48 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8636cc7c7957d3ec336e4fbb74ed197ac2de19d4b42db105b7cd462d40d9faf`  
		Last Modified: Thu, 05 Nov 2026 19:10:47 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71abcd22f3b21f1e95a509b2fe5f71af0bb4d40addb2f7105de2d49737e39b95`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f1f2d196935066aa2ef719631b3b557d1ace896db7ed0d60d439d2360f557`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdf3a91e2c46286142913d3f7a62f79dfb0f164e0063e1e3a24ae938b92d6cb`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73cad6dc76af673edc78125074e804abc99510c3b6e31b79bc2d5cf55eb1624`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 110.0 KB (109952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d227e39196c67b43f84f423ddda30d3e817ff1b3a4053613285525b20cfcb3d`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2.11-windowsservercore`

```console
$ docker pull caddy@sha256:dc5598fddf05d80360663cb0e872500af9db218dc9dd72a2313593e0129789ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `caddy:2.11-windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:95abf9d14aaade6d55fc1fe67837955424c407f7c42122cf56ec269df234b976
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411640909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab973cc14b9e0c52be1b72c2f49166655cfed54fcb528bb66f89be6dcdea52d`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Thu, 05 Nov 2026 18:48:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:50:14 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:50:15 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:31 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:31 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:32 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:35 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:38 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:41 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:42 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:50:58 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:50:58 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3105b031b17a07724dd061a02beeb8696051059e004ecd9ed26a9e17fa3cdc02`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6906576f53243cb11c77a99856afa7453fea514a6239d8daad6968e7a25cba`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 390.9 KB (390919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066b4e49953291e1e590b8dc069208ed71f03d794a65a73813cb94d3655ec8f6`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f696f899da47fb0fca096725494a65fa4db2ed97ad592f434625bbf012bf4ccf`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 18.8 MB (18842906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61509ec5d34e9f0c9171bdaa8e0f889d0ae0266be4be408c271535c594f26c1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad5baa2304ae76c673dfcc132b4d9f5ed56a9c843984069ec22db953f24e183`  
		Last Modified: Thu, 05 Nov 2026 18:51:07 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf73fb3dacde170edc236e1c1f5e252519e2bba968312caa5570f79dd63be52`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9609d2b97073146c6468eedb5f32415c8a4cea9ca99c0602ccec800de92daf`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f857ee3127ebcc1c023b71b6e00845ff2e591296da1c03b77239054ce73059c7`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492801772255ddb526037e2a61f6e3f699aa4bfd695d5d2e844f6b041120e3b4`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fc7a0cadb49e63446196633584282ca5d0c21670b9f6a1303cc898819a5939`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4934c1a327b2efa689cf58a31640d074993b68ea01d8a3dc6f84b7aba9f7c40b`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421fbfd0d299f828ca293b67045a58a1398a41a480f918db09529c7720ba005e`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6808f4fa8c3f137ea2fe98d8343b4cd850d351a6c24415d6c7af9087023ca853`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc9e06eb01a305ee8abe1f8ad9e360461382e96f40fe09fe66638366d2b3921`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4771a13f86c4e0005351f8cf24a7199b26f48a8aca82fa482712118a2bd1f006`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc5ee75a0594ffb8e38f738cf42f1829027f8569736758d0d7b97265642a34a`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1be9f4dc4e64883d35c8a23d7396f2e832c32ef0bdbbf4bbca5cc99be26a3cf`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e9fcd3b3e14a5fede69ab9fee080810c9d6869d863c0c40b8109dbeb33bc10`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 336.2 KB (336222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad69e21d7b060686c53a003a33e3f7b9f3bcf502846a49bb9ffaa3ecf4b55167`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:2.11-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:2cc1f16a110963701a69a8093e051d1e6a68775f92423e05076fa8ac137525c2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2246593231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81d2947c39b363c1833583c76c91cafe62b764e5397a4d58ebd31dee62c2460`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Thu, 05 Nov 2026 18:48:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:49:53 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:49:54 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:24 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:26 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:27 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:29 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:30 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:32 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:42 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:51:03 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:51:04 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a008cba775e8dd0fa98285e50e68016c6e59c9c7d78331b024d243c8028b4cbc`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2d491895f80263abfd15f22c5c30039fa3ebd8d83087a2433cb846961153e1`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 371.5 KB (371473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5358c2eea08f8a9d209da01918bf15f92d5f2604b8bd529de0691bbbaabe927`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f303a38c5095af4de86858b6f2fedefdb9854cd41e24cb7b7f6e0de3e51e36`  
		Last Modified: Thu, 05 Nov 2026 18:51:17 GMT  
		Size: 18.8 MB (18820643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e592ad193121b2d1f6737f2fc89e24d03e9d33d6cca8e7add2957ccf57b9c61`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25fe4e292b538b454f7496f886418773ff60ff66c6837656d45cc2eb319ad3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a510990588c53fcf965e7ef95cd6e4765af69ddff30a9b85537cd50c39eee3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66d18fd2f2ee4d3baba1e5f3770dbed152867afeb50caad16c8ef145e17a6a2`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c670bb7e8fef2b7d9e51de98054eedf8577c01c8dab3f5307e26ad849db0ab39`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500888919d78c692c88bcec1ff4727723df54e3e34385d05da99c27285ee455f`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cdcae9d52f42f49f9a70d23426fc1feceede855ea6a0748f5f8663a35be90a`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7210618d2f93291160433de49867d5821e996bd5f005cc6c2b36801e9820829d`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790aa499060b9807135ef195885142b4c146bb6b428a843e2d8f79e595bb15f3`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07378ecb425dbafad024761d9bb5f11c3102ab26215b09dd90548401cfdbffc`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bb0f5976c9b254675a71ddc0e556c3e8c57376ad629f3a9431fb344eb0ac46`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23012e55c65156794576b8d2534079d31f2adad56300fb59cdeec1f58391db4`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6049bd500c5b62b0a05932db59f93ba3b7324a26e40d0c7e0708070abf5a4da9`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e3314e91f873e91dae6f3f2edceadb9449a46ef807bb118819fe75d83c8bb1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265b4d1fd5b55896df277baa4c1db1204b11578f29e866d4ad6afb1bc93f976b`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 322.8 KB (322785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48a65dcbe82d2fa7112e338b77c64a167952bea5d360d7a0b3587b835dbb9d69`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2.11-windowsservercore-ltsc2022`

```console
$ docker pull caddy@sha256:2298da0168ddb976b485403648a9f5f585fdfa0de3b04b380f6490413f3f59c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `caddy:2.11-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:2cc1f16a110963701a69a8093e051d1e6a68775f92423e05076fa8ac137525c2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2246593231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81d2947c39b363c1833583c76c91cafe62b764e5397a4d58ebd31dee62c2460`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Thu, 05 Nov 2026 18:48:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:49:53 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:49:54 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:24 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:26 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:27 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:29 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:30 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:32 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:42 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:51:03 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:51:04 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a008cba775e8dd0fa98285e50e68016c6e59c9c7d78331b024d243c8028b4cbc`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2d491895f80263abfd15f22c5c30039fa3ebd8d83087a2433cb846961153e1`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 371.5 KB (371473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5358c2eea08f8a9d209da01918bf15f92d5f2604b8bd529de0691bbbaabe927`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f303a38c5095af4de86858b6f2fedefdb9854cd41e24cb7b7f6e0de3e51e36`  
		Last Modified: Thu, 05 Nov 2026 18:51:17 GMT  
		Size: 18.8 MB (18820643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e592ad193121b2d1f6737f2fc89e24d03e9d33d6cca8e7add2957ccf57b9c61`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25fe4e292b538b454f7496f886418773ff60ff66c6837656d45cc2eb319ad3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a510990588c53fcf965e7ef95cd6e4765af69ddff30a9b85537cd50c39eee3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66d18fd2f2ee4d3baba1e5f3770dbed152867afeb50caad16c8ef145e17a6a2`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c670bb7e8fef2b7d9e51de98054eedf8577c01c8dab3f5307e26ad849db0ab39`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500888919d78c692c88bcec1ff4727723df54e3e34385d05da99c27285ee455f`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cdcae9d52f42f49f9a70d23426fc1feceede855ea6a0748f5f8663a35be90a`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7210618d2f93291160433de49867d5821e996bd5f005cc6c2b36801e9820829d`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790aa499060b9807135ef195885142b4c146bb6b428a843e2d8f79e595bb15f3`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07378ecb425dbafad024761d9bb5f11c3102ab26215b09dd90548401cfdbffc`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bb0f5976c9b254675a71ddc0e556c3e8c57376ad629f3a9431fb344eb0ac46`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23012e55c65156794576b8d2534079d31f2adad56300fb59cdeec1f58391db4`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6049bd500c5b62b0a05932db59f93ba3b7324a26e40d0c7e0708070abf5a4da9`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e3314e91f873e91dae6f3f2edceadb9449a46ef807bb118819fe75d83c8bb1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265b4d1fd5b55896df277baa4c1db1204b11578f29e866d4ad6afb1bc93f976b`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 322.8 KB (322785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48a65dcbe82d2fa7112e338b77c64a167952bea5d360d7a0b3587b835dbb9d69`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2.11-windowsservercore-ltsc2025`

```console
$ docker pull caddy@sha256:4033b7b744da419c8d150dfdcdb3cef86e4c15f721b1d1b9c55708db2e447f40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `caddy:2.11-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:95abf9d14aaade6d55fc1fe67837955424c407f7c42122cf56ec269df234b976
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411640909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab973cc14b9e0c52be1b72c2f49166655cfed54fcb528bb66f89be6dcdea52d`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Thu, 05 Nov 2026 18:48:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:50:14 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:50:15 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:31 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:31 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:32 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:35 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:38 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:41 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:42 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:50:58 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:50:58 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3105b031b17a07724dd061a02beeb8696051059e004ecd9ed26a9e17fa3cdc02`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6906576f53243cb11c77a99856afa7453fea514a6239d8daad6968e7a25cba`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 390.9 KB (390919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066b4e49953291e1e590b8dc069208ed71f03d794a65a73813cb94d3655ec8f6`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f696f899da47fb0fca096725494a65fa4db2ed97ad592f434625bbf012bf4ccf`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 18.8 MB (18842906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61509ec5d34e9f0c9171bdaa8e0f889d0ae0266be4be408c271535c594f26c1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad5baa2304ae76c673dfcc132b4d9f5ed56a9c843984069ec22db953f24e183`  
		Last Modified: Thu, 05 Nov 2026 18:51:07 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf73fb3dacde170edc236e1c1f5e252519e2bba968312caa5570f79dd63be52`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9609d2b97073146c6468eedb5f32415c8a4cea9ca99c0602ccec800de92daf`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f857ee3127ebcc1c023b71b6e00845ff2e591296da1c03b77239054ce73059c7`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492801772255ddb526037e2a61f6e3f699aa4bfd695d5d2e844f6b041120e3b4`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fc7a0cadb49e63446196633584282ca5d0c21670b9f6a1303cc898819a5939`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4934c1a327b2efa689cf58a31640d074993b68ea01d8a3dc6f84b7aba9f7c40b`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421fbfd0d299f828ca293b67045a58a1398a41a480f918db09529c7720ba005e`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6808f4fa8c3f137ea2fe98d8343b4cd850d351a6c24415d6c7af9087023ca853`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc9e06eb01a305ee8abe1f8ad9e360461382e96f40fe09fe66638366d2b3921`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4771a13f86c4e0005351f8cf24a7199b26f48a8aca82fa482712118a2bd1f006`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc5ee75a0594ffb8e38f738cf42f1829027f8569736758d0d7b97265642a34a`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1be9f4dc4e64883d35c8a23d7396f2e832c32ef0bdbbf4bbca5cc99be26a3cf`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e9fcd3b3e14a5fede69ab9fee080810c9d6869d863c0c40b8109dbeb33bc10`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 336.2 KB (336222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad69e21d7b060686c53a003a33e3f7b9f3bcf502846a49bb9ffaa3ecf4b55167`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2.11.9`

```console
$ docker pull caddy@sha256:13d490f64f99ee3e3dcd828add6d3b822a916cdb3490d9d272a8d761678da624
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `caddy:2.11.9` - linux; amd64

```console
$ docker pull caddy@sha256:fc9cbc100585871d18d4e451cca7021785c90a7006087427ae5ceb3e4efe6424
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24793574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5813f7eb9b94fac4970f9f576695fe1ed1d53d41586fd3eaa350caf7c4627d9c`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:37:06 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Thu, 05 Nov 2026 19:37:07 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Thu, 05 Nov 2026 19:37:08 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 19:37:08 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='0e85544340290a16ce4bfb76fe7d65e9de1bf3a6e67f5ccfff30b30d27ea4c73e078077b7bf3e58ae60b6b12e44327705287059c775bca5782e8ee85ea7edd75' ;; 		armhf)   binArch='armv6'; checksum='bfd9b415660caccaf5efbba2a8828eb9e61e31609ee6a62d532e70ef1f419e2ba420fdfd1e16c13e4896c33557813f87fddc849de57400eac34c4635f413bc0c' ;; 		armv7)   binArch='armv7'; checksum='ea042518bfb5eec5070a3119430263ae920b2d1e878c733a80d3d0ced1168afe5816362f295de46915d651a67f31f4d8a67ac67326f507d90cda71274b8ee689' ;; 		aarch64) binArch='arm64'; checksum='9e5e76d7888542924de2c25353ae87c5f77e2a22c5b1198633cae13688922282e05383d142599205c88d8d80eee5e967d291214d7abce4835329a191b20dd6e0' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='9b95cfa058e9651c0738179c6c18d0a93eb9c491e5c9ed3d95f30b23e1c9324e739bbf91a3ac0ebf91aaff89e25de1cff22f127484be937c0089b079266cd37f' ;; 		riscv64) binArch='riscv64'; checksum='52c9750b091a297766f2faaa01955eb894b614f4b94a9a418632d67f65f942e5363681869de0a6434d87482ac611f5c228282c23c6a90349085bb17aa3eff686' ;; 		s390x)   binArch='s390x'; checksum='213186130eeab27bc8fff06f4a6cffb253b36f719166c6cb12c539b4432186d6f7938847547a4e5cf47b1525424fdc74813950f08b928f788b7402127eb30e6b' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Thu, 05 Nov 2026 19:37:08 GMT
ENV XDG_CONFIG_HOME=/config
# Thu, 05 Nov 2026 19:37:08 GMT
ENV XDG_DATA_HOME=/data
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[443/udp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[2019/tcp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
WORKDIR /srv
# Thu, 05 Nov 2026 19:37:08 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d6974dbf71e422d13654405f502ff60ea306943b999003c012ecc6dd93d317`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 2.8 MB (2798840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a802d3a0a957e15ac518be2f3f3e786b9965895265888c3390753c81d1c085`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 7.5 KB (7501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5000c332a1cc372a1a248c2923696c0bc7817d213f2db0f4161fc18a3fc17cd7`  
		Last Modified: Thu, 05 Nov 2026 19:37:16 GMT  
		Size: 18.1 MB (18133528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11.9` - unknown; unknown

```console
$ docker pull caddy@sha256:38891e0175dd27a9b2c2a9e7314b356b0477f0002302bbeb51ccc87491f83abf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.6 KB (334614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a48c1497cac67279989d2b2c55010f2ed2546887974c8dfeee774c8cb204f5d`

```dockerfile
```

-	Layers:
	-	`sha256:f4183d0ed1bf0fc5c8a612569bbfe4bd35053c401ddec3523acf17101a388fd5`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 316.2 KB (316187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed4aeb1ef3c37f8dd726324c7a8739e6a1dcf890a00af32bf17ea28558f0b0bb`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 18.4 KB (18427 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2.11.9` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:95abf9d14aaade6d55fc1fe67837955424c407f7c42122cf56ec269df234b976
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411640909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab973cc14b9e0c52be1b72c2f49166655cfed54fcb528bb66f89be6dcdea52d`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Thu, 05 Nov 2026 18:48:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:50:14 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:50:15 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:31 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:31 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:32 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:35 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:38 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:41 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:42 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:50:58 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:50:58 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3105b031b17a07724dd061a02beeb8696051059e004ecd9ed26a9e17fa3cdc02`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6906576f53243cb11c77a99856afa7453fea514a6239d8daad6968e7a25cba`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 390.9 KB (390919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066b4e49953291e1e590b8dc069208ed71f03d794a65a73813cb94d3655ec8f6`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f696f899da47fb0fca096725494a65fa4db2ed97ad592f434625bbf012bf4ccf`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 18.8 MB (18842906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61509ec5d34e9f0c9171bdaa8e0f889d0ae0266be4be408c271535c594f26c1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad5baa2304ae76c673dfcc132b4d9f5ed56a9c843984069ec22db953f24e183`  
		Last Modified: Thu, 05 Nov 2026 18:51:07 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf73fb3dacde170edc236e1c1f5e252519e2bba968312caa5570f79dd63be52`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9609d2b97073146c6468eedb5f32415c8a4cea9ca99c0602ccec800de92daf`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f857ee3127ebcc1c023b71b6e00845ff2e591296da1c03b77239054ce73059c7`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492801772255ddb526037e2a61f6e3f699aa4bfd695d5d2e844f6b041120e3b4`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fc7a0cadb49e63446196633584282ca5d0c21670b9f6a1303cc898819a5939`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4934c1a327b2efa689cf58a31640d074993b68ea01d8a3dc6f84b7aba9f7c40b`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421fbfd0d299f828ca293b67045a58a1398a41a480f918db09529c7720ba005e`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6808f4fa8c3f137ea2fe98d8343b4cd850d351a6c24415d6c7af9087023ca853`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc9e06eb01a305ee8abe1f8ad9e360461382e96f40fe09fe66638366d2b3921`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4771a13f86c4e0005351f8cf24a7199b26f48a8aca82fa482712118a2bd1f006`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc5ee75a0594ffb8e38f738cf42f1829027f8569736758d0d7b97265642a34a`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1be9f4dc4e64883d35c8a23d7396f2e832c32ef0bdbbf4bbca5cc99be26a3cf`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e9fcd3b3e14a5fede69ab9fee080810c9d6869d863c0c40b8109dbeb33bc10`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 336.2 KB (336222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad69e21d7b060686c53a003a33e3f7b9f3bcf502846a49bb9ffaa3ecf4b55167`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:2.11.9` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:2cc1f16a110963701a69a8093e051d1e6a68775f92423e05076fa8ac137525c2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2246593231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81d2947c39b363c1833583c76c91cafe62b764e5397a4d58ebd31dee62c2460`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Thu, 05 Nov 2026 18:48:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:49:53 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:49:54 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:24 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:26 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:27 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:29 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:30 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:32 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:42 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:51:03 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:51:04 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a008cba775e8dd0fa98285e50e68016c6e59c9c7d78331b024d243c8028b4cbc`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2d491895f80263abfd15f22c5c30039fa3ebd8d83087a2433cb846961153e1`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 371.5 KB (371473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5358c2eea08f8a9d209da01918bf15f92d5f2604b8bd529de0691bbbaabe927`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f303a38c5095af4de86858b6f2fedefdb9854cd41e24cb7b7f6e0de3e51e36`  
		Last Modified: Thu, 05 Nov 2026 18:51:17 GMT  
		Size: 18.8 MB (18820643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e592ad193121b2d1f6737f2fc89e24d03e9d33d6cca8e7add2957ccf57b9c61`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25fe4e292b538b454f7496f886418773ff60ff66c6837656d45cc2eb319ad3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a510990588c53fcf965e7ef95cd6e4765af69ddff30a9b85537cd50c39eee3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66d18fd2f2ee4d3baba1e5f3770dbed152867afeb50caad16c8ef145e17a6a2`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c670bb7e8fef2b7d9e51de98054eedf8577c01c8dab3f5307e26ad849db0ab39`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500888919d78c692c88bcec1ff4727723df54e3e34385d05da99c27285ee455f`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cdcae9d52f42f49f9a70d23426fc1feceede855ea6a0748f5f8663a35be90a`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7210618d2f93291160433de49867d5821e996bd5f005cc6c2b36801e9820829d`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790aa499060b9807135ef195885142b4c146bb6b428a843e2d8f79e595bb15f3`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07378ecb425dbafad024761d9bb5f11c3102ab26215b09dd90548401cfdbffc`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bb0f5976c9b254675a71ddc0e556c3e8c57376ad629f3a9431fb344eb0ac46`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23012e55c65156794576b8d2534079d31f2adad56300fb59cdeec1f58391db4`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6049bd500c5b62b0a05932db59f93ba3b7324a26e40d0c7e0708070abf5a4da9`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e3314e91f873e91dae6f3f2edceadb9449a46ef807bb118819fe75d83c8bb1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265b4d1fd5b55896df277baa4c1db1204b11578f29e866d4ad6afb1bc93f976b`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 322.8 KB (322785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48a65dcbe82d2fa7112e338b77c64a167952bea5d360d7a0b3587b835dbb9d69`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2.11.9-alpine`

```console
$ docker pull caddy@sha256:e8d293dca35c033c4eb958d77b9096098e34da2987da3954acc0028267c6cc9b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `caddy:2.11.9-alpine` - linux; amd64

```console
$ docker pull caddy@sha256:fc9cbc100585871d18d4e451cca7021785c90a7006087427ae5ceb3e4efe6424
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24793574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5813f7eb9b94fac4970f9f576695fe1ed1d53d41586fd3eaa350caf7c4627d9c`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:37:06 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Thu, 05 Nov 2026 19:37:07 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Thu, 05 Nov 2026 19:37:08 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 19:37:08 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='0e85544340290a16ce4bfb76fe7d65e9de1bf3a6e67f5ccfff30b30d27ea4c73e078077b7bf3e58ae60b6b12e44327705287059c775bca5782e8ee85ea7edd75' ;; 		armhf)   binArch='armv6'; checksum='bfd9b415660caccaf5efbba2a8828eb9e61e31609ee6a62d532e70ef1f419e2ba420fdfd1e16c13e4896c33557813f87fddc849de57400eac34c4635f413bc0c' ;; 		armv7)   binArch='armv7'; checksum='ea042518bfb5eec5070a3119430263ae920b2d1e878c733a80d3d0ced1168afe5816362f295de46915d651a67f31f4d8a67ac67326f507d90cda71274b8ee689' ;; 		aarch64) binArch='arm64'; checksum='9e5e76d7888542924de2c25353ae87c5f77e2a22c5b1198633cae13688922282e05383d142599205c88d8d80eee5e967d291214d7abce4835329a191b20dd6e0' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='9b95cfa058e9651c0738179c6c18d0a93eb9c491e5c9ed3d95f30b23e1c9324e739bbf91a3ac0ebf91aaff89e25de1cff22f127484be937c0089b079266cd37f' ;; 		riscv64) binArch='riscv64'; checksum='52c9750b091a297766f2faaa01955eb894b614f4b94a9a418632d67f65f942e5363681869de0a6434d87482ac611f5c228282c23c6a90349085bb17aa3eff686' ;; 		s390x)   binArch='s390x'; checksum='213186130eeab27bc8fff06f4a6cffb253b36f719166c6cb12c539b4432186d6f7938847547a4e5cf47b1525424fdc74813950f08b928f788b7402127eb30e6b' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Thu, 05 Nov 2026 19:37:08 GMT
ENV XDG_CONFIG_HOME=/config
# Thu, 05 Nov 2026 19:37:08 GMT
ENV XDG_DATA_HOME=/data
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[443/udp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[2019/tcp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
WORKDIR /srv
# Thu, 05 Nov 2026 19:37:08 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d6974dbf71e422d13654405f502ff60ea306943b999003c012ecc6dd93d317`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 2.8 MB (2798840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a802d3a0a957e15ac518be2f3f3e786b9965895265888c3390753c81d1c085`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 7.5 KB (7501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5000c332a1cc372a1a248c2923696c0bc7817d213f2db0f4161fc18a3fc17cd7`  
		Last Modified: Thu, 05 Nov 2026 19:37:16 GMT  
		Size: 18.1 MB (18133528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2.11.9-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:38891e0175dd27a9b2c2a9e7314b356b0477f0002302bbeb51ccc87491f83abf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.6 KB (334614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a48c1497cac67279989d2b2c55010f2ed2546887974c8dfeee774c8cb204f5d`

```dockerfile
```

-	Layers:
	-	`sha256:f4183d0ed1bf0fc5c8a612569bbfe4bd35053c401ddec3523acf17101a388fd5`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 316.2 KB (316187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed4aeb1ef3c37f8dd726324c7a8739e6a1dcf890a00af32bf17ea28558f0b0bb`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 18.4 KB (18427 bytes)  
		MIME: application/vnd.in-toto+json

## `caddy:2.11.9-builder`

```console
$ docker pull caddy@sha256:b5cf210885555bd4fe0bb0fa5ac775e8cacb152153c94080e47894eaea999709
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `caddy:2.11.9-builder` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:322cf178420fc490995ab4926e551ded39c7741bafd40e52d8f37721a5af63d3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2512025216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:405652c8cb9a777e8aee873526e5de489b3584c99fe7a4d85fc6e4cc6c00bf0a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 23:01:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 23:01:50 GMT
ENV GIT_VERSION=2.56.0.4
# Tue, 27 Oct 2026 23:01:50 GMT
ENV GIT_TAG=v2.56.0.windows.4
# Tue, 27 Oct 2026 23:01:51 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.4/MinGit-2.56.0.4-64-bit.zip
# Tue, 27 Oct 2026 23:01:51 GMT
ENV GIT_DOWNLOAD_SHA256=e3bf78351fe777fba47ddee5950082f8a98bb0f02604fdc7ba3ee2cb68ffa877
# Tue, 27 Oct 2026 23:02:08 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:02:08 GMT
ENV GOPATH=C:\go
# Tue, 27 Oct 2026 23:02:13 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 27 Oct 2026 23:02:13 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 27 Oct 2026 23:03:36 GMT
RUN $url = 'https://dl.google.com/go/go1.27.3.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f26081f438319757f8a1b46d7d0b2c5ec7583d4038e485e0aa725cfde7885fff'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:03:37 GMT
WORKDIR C:\go
# Thu, 05 Nov 2026 18:52:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:52:42 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 18:52:44 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:52:46 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 18:54:15 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Thu, 05 Nov 2026 18:54:17 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9dc3ea73737b5e7988b67a3b7d66fb12d1c2d45ae0faa88815590457b0a29b`  
		Last Modified: Tue, 27 Oct 2026 23:03:53 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bca6fe69737ca73ad3f90994d40696ec38484b78dfb551c7453e8a9807b6d01`  
		Last Modified: Tue, 27 Oct 2026 23:03:53 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82709fc838d73d56ca04aa73f6f789b6386d035fb9349e1c9d228780049400c4`  
		Last Modified: Tue, 27 Oct 2026 23:03:52 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82212b5c849462e3dd0139e5a5b8d58d3290d92803198d5c1fee2a88cc24a5be`  
		Last Modified: Tue, 27 Oct 2026 23:03:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e0cc77e3f495c77875f1db941bab19c86844345c0256d4bf05597e900d69`  
		Last Modified: Tue, 27 Oct 2026 23:03:51 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3325ade1b95eef958b43223a8e2f930fb7a88598ff07289c108e40ea9568a3b`  
		Last Modified: Tue, 27 Oct 2026 23:03:56 GMT  
		Size: 43.3 MB (43340994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45beab588c2115a45d58cb6eab918d433478c7dbbef7d92f37cba8577cf68bd`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f4a352e310ffb8a93987326f53c0de896ff11e6a2ff1eea5ff3e7d53ecbdd0`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 342.2 KB (342171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82a5f4fcc0e72594b3ae2c9f480fa94be4c163c60eb901be1efe8af9a3b22da`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3514708ffcd88eb748540b2377d36f6f66979a9a404466596eef1f4ddc267a9f`  
		Last Modified: Tue, 27 Oct 2026 23:04:00 GMT  
		Size: 73.8 MB (73799496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff0d49c8c867b9582a5632680730d342eb19e9b2312e19c6d15dd7d0c6224a5`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9ab2e56e2d098ba7b923d3900c3a059128580601b8c4330b3ce30e9801c480`  
		Last Modified: Thu, 05 Nov 2026 18:54:29 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b8a891d239d53a8974688b221304c7560ebdbbfd82a019bd055f295d44192`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792e2e2b39b4dd9c9c9c571462238ef17d5af5ac4ddd4b5d66fd6fa8cfe2c4ee`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb594f57a5fb2306703fce5e22bcd0a0ccb5b0e92fe12f50d71de5b2da826c1e`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0850508e52ef599053526680e30927a065d297bd0fc01bcc6eb20f754de41af2`  
		Last Modified: Thu, 05 Nov 2026 18:54:29 GMT  
		Size: 2.5 MB (2476586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149a6383ffbf32a8756510d52ecb475ef4a6fb14b5a146d9165cae7ecc4944d3`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:2.11.9-builder` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:251630ed505d1bc71474d21c55de8c81013041f0be69b00734d6f10fc3af37a3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2346987143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b538f9c56cc6192b44467cf39f5699357058cab8013b2b91347260eaef074f10`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 23:01:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 23:01:55 GMT
ENV GIT_VERSION=2.56.0.4
# Tue, 27 Oct 2026 23:01:56 GMT
ENV GIT_TAG=v2.56.0.windows.4
# Tue, 27 Oct 2026 23:01:57 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.4/MinGit-2.56.0.4-64-bit.zip
# Tue, 27 Oct 2026 23:01:58 GMT
ENV GIT_DOWNLOAD_SHA256=e3bf78351fe777fba47ddee5950082f8a98bb0f02604fdc7ba3ee2cb68ffa877
# Tue, 27 Oct 2026 23:02:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:02:19 GMT
ENV GOPATH=C:\go
# Tue, 27 Oct 2026 23:02:25 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 27 Oct 2026 23:02:25 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 27 Oct 2026 23:03:54 GMT
RUN $url = 'https://dl.google.com/go/go1.27.3.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f26081f438319757f8a1b46d7d0b2c5ec7583d4038e485e0aa725cfde7885fff'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:03:55 GMT
WORKDIR C:\go
# Thu, 05 Nov 2026 18:52:29 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:52:33 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 18:52:35 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:52:36 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 18:53:59 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Thu, 05 Nov 2026 18:54:01 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f98ea005c6b5e82948bfd0d9f8a10a638f47353d2a860c1f04848b1fe63f43`  
		Last Modified: Tue, 27 Oct 2026 23:04:06 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25ff349fed69087dede49cbfb0d3b004befe6b14a59c473e56c8e2cccf4a6b4`  
		Last Modified: Tue, 27 Oct 2026 23:04:06 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8daa49ca7ead8b36f0b651f5788eead2db56caec3df7b94eb6f594cd3e5badb`  
		Last Modified: Tue, 27 Oct 2026 23:04:05 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32b0dbaa15dfd6332ead1255f233ea55cbb7a7d2eb216492a47bc4eb4f08a36`  
		Last Modified: Tue, 27 Oct 2026 23:04:04 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845ec009e41fbeeb45ebd214b6d358294dbf999e572d9d7ed78fb3f3f1b141a1`  
		Last Modified: Tue, 27 Oct 2026 23:04:04 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0343caa9e4c6abefa9caf25adbeacea608cbff97167723f99a282aa3a2d3c41c`  
		Last Modified: Tue, 27 Oct 2026 23:04:10 GMT  
		Size: 43.3 MB (43334640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6898c1b1554e9b4d9b0dab9c58c389f3f346f9f3d8be61f727d3dded97076b`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad6ffce0035c184d0f1cc69cc6eeee2960caf115514e65c99284f29a2362e3c`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 328.9 KB (328893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7eb5a2f945389244a435c579c2a21d1f289ebc2085d6ca51a23413dbb7345ff`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20140fb2422e642b34aa718958c5502a414c499b2fb93bff0ad64a135333051a`  
		Last Modified: Tue, 27 Oct 2026 23:04:14 GMT  
		Size: 73.8 MB (73788363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d46f6710058016f086fc453a4ff487f1ef0a8a5f2ed98c165d7be7df1a9daa`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97bd9afb309fbe0e00e3c3890bcb6b657012badb1ab77379d780d0f9516f4402`  
		Last Modified: Thu, 05 Nov 2026 18:54:19 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e418dd3b67b3ce1fde3dd9b4986f075bfdf19d21ac4739722823ca30f57ae692`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b96bd881305e184e63e771a5a35a07de64033d714d1f2f5fc3bbb36b516450`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11e7419554a1a0ed1cbe7f59c491e8a4b2219697a873b9ced64719df5a79466`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdc448824d456f3fddbdb0e5431171a1f7274d188b46463e05c83f183fd15c0`  
		Last Modified: Thu, 05 Nov 2026 18:54:20 GMT  
		Size: 2.5 MB (2461854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dead047b3a40bbbeb7dd37f709c20f5672f1fca49a8c9e3fb78ea309f92c26`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2.11.9-builder-alpine`

```console
$ docker pull caddy@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `caddy:2.11.9-builder-windowsservercore-ltsc2022`

```console
$ docker pull caddy@sha256:fd376832a45bde301952ad8538e4ced511ba4ccfde972c7012ec351c06758527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `caddy:2.11.9-builder-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:251630ed505d1bc71474d21c55de8c81013041f0be69b00734d6f10fc3af37a3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2346987143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b538f9c56cc6192b44467cf39f5699357058cab8013b2b91347260eaef074f10`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 23:01:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 23:01:55 GMT
ENV GIT_VERSION=2.56.0.4
# Tue, 27 Oct 2026 23:01:56 GMT
ENV GIT_TAG=v2.56.0.windows.4
# Tue, 27 Oct 2026 23:01:57 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.4/MinGit-2.56.0.4-64-bit.zip
# Tue, 27 Oct 2026 23:01:58 GMT
ENV GIT_DOWNLOAD_SHA256=e3bf78351fe777fba47ddee5950082f8a98bb0f02604fdc7ba3ee2cb68ffa877
# Tue, 27 Oct 2026 23:02:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:02:19 GMT
ENV GOPATH=C:\go
# Tue, 27 Oct 2026 23:02:25 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 27 Oct 2026 23:02:25 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 27 Oct 2026 23:03:54 GMT
RUN $url = 'https://dl.google.com/go/go1.27.3.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f26081f438319757f8a1b46d7d0b2c5ec7583d4038e485e0aa725cfde7885fff'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:03:55 GMT
WORKDIR C:\go
# Thu, 05 Nov 2026 18:52:29 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:52:33 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 18:52:35 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:52:36 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 18:53:59 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Thu, 05 Nov 2026 18:54:01 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f98ea005c6b5e82948bfd0d9f8a10a638f47353d2a860c1f04848b1fe63f43`  
		Last Modified: Tue, 27 Oct 2026 23:04:06 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25ff349fed69087dede49cbfb0d3b004befe6b14a59c473e56c8e2cccf4a6b4`  
		Last Modified: Tue, 27 Oct 2026 23:04:06 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8daa49ca7ead8b36f0b651f5788eead2db56caec3df7b94eb6f594cd3e5badb`  
		Last Modified: Tue, 27 Oct 2026 23:04:05 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32b0dbaa15dfd6332ead1255f233ea55cbb7a7d2eb216492a47bc4eb4f08a36`  
		Last Modified: Tue, 27 Oct 2026 23:04:04 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845ec009e41fbeeb45ebd214b6d358294dbf999e572d9d7ed78fb3f3f1b141a1`  
		Last Modified: Tue, 27 Oct 2026 23:04:04 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0343caa9e4c6abefa9caf25adbeacea608cbff97167723f99a282aa3a2d3c41c`  
		Last Modified: Tue, 27 Oct 2026 23:04:10 GMT  
		Size: 43.3 MB (43334640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6898c1b1554e9b4d9b0dab9c58c389f3f346f9f3d8be61f727d3dded97076b`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad6ffce0035c184d0f1cc69cc6eeee2960caf115514e65c99284f29a2362e3c`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 328.9 KB (328893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7eb5a2f945389244a435c579c2a21d1f289ebc2085d6ca51a23413dbb7345ff`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20140fb2422e642b34aa718958c5502a414c499b2fb93bff0ad64a135333051a`  
		Last Modified: Tue, 27 Oct 2026 23:04:14 GMT  
		Size: 73.8 MB (73788363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d46f6710058016f086fc453a4ff487f1ef0a8a5f2ed98c165d7be7df1a9daa`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97bd9afb309fbe0e00e3c3890bcb6b657012badb1ab77379d780d0f9516f4402`  
		Last Modified: Thu, 05 Nov 2026 18:54:19 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e418dd3b67b3ce1fde3dd9b4986f075bfdf19d21ac4739722823ca30f57ae692`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b96bd881305e184e63e771a5a35a07de64033d714d1f2f5fc3bbb36b516450`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11e7419554a1a0ed1cbe7f59c491e8a4b2219697a873b9ced64719df5a79466`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdc448824d456f3fddbdb0e5431171a1f7274d188b46463e05c83f183fd15c0`  
		Last Modified: Thu, 05 Nov 2026 18:54:20 GMT  
		Size: 2.5 MB (2461854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dead047b3a40bbbeb7dd37f709c20f5672f1fca49a8c9e3fb78ea309f92c26`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2.11.9-builder-windowsservercore-ltsc2025`

```console
$ docker pull caddy@sha256:941dd431e0b855f2ccdd530b0f60113a70531639c387fa4c6c3bf4efa158ba21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `caddy:2.11.9-builder-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:322cf178420fc490995ab4926e551ded39c7741bafd40e52d8f37721a5af63d3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2512025216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:405652c8cb9a777e8aee873526e5de489b3584c99fe7a4d85fc6e4cc6c00bf0a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 23:01:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 23:01:50 GMT
ENV GIT_VERSION=2.56.0.4
# Tue, 27 Oct 2026 23:01:50 GMT
ENV GIT_TAG=v2.56.0.windows.4
# Tue, 27 Oct 2026 23:01:51 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.4/MinGit-2.56.0.4-64-bit.zip
# Tue, 27 Oct 2026 23:01:51 GMT
ENV GIT_DOWNLOAD_SHA256=e3bf78351fe777fba47ddee5950082f8a98bb0f02604fdc7ba3ee2cb68ffa877
# Tue, 27 Oct 2026 23:02:08 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:02:08 GMT
ENV GOPATH=C:\go
# Tue, 27 Oct 2026 23:02:13 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 27 Oct 2026 23:02:13 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 27 Oct 2026 23:03:36 GMT
RUN $url = 'https://dl.google.com/go/go1.27.3.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f26081f438319757f8a1b46d7d0b2c5ec7583d4038e485e0aa725cfde7885fff'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:03:37 GMT
WORKDIR C:\go
# Thu, 05 Nov 2026 18:52:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:52:42 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 18:52:44 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:52:46 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 18:54:15 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Thu, 05 Nov 2026 18:54:17 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9dc3ea73737b5e7988b67a3b7d66fb12d1c2d45ae0faa88815590457b0a29b`  
		Last Modified: Tue, 27 Oct 2026 23:03:53 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bca6fe69737ca73ad3f90994d40696ec38484b78dfb551c7453e8a9807b6d01`  
		Last Modified: Tue, 27 Oct 2026 23:03:53 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82709fc838d73d56ca04aa73f6f789b6386d035fb9349e1c9d228780049400c4`  
		Last Modified: Tue, 27 Oct 2026 23:03:52 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82212b5c849462e3dd0139e5a5b8d58d3290d92803198d5c1fee2a88cc24a5be`  
		Last Modified: Tue, 27 Oct 2026 23:03:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e0cc77e3f495c77875f1db941bab19c86844345c0256d4bf05597e900d69`  
		Last Modified: Tue, 27 Oct 2026 23:03:51 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3325ade1b95eef958b43223a8e2f930fb7a88598ff07289c108e40ea9568a3b`  
		Last Modified: Tue, 27 Oct 2026 23:03:56 GMT  
		Size: 43.3 MB (43340994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45beab588c2115a45d58cb6eab918d433478c7dbbef7d92f37cba8577cf68bd`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f4a352e310ffb8a93987326f53c0de896ff11e6a2ff1eea5ff3e7d53ecbdd0`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 342.2 KB (342171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82a5f4fcc0e72594b3ae2c9f480fa94be4c163c60eb901be1efe8af9a3b22da`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3514708ffcd88eb748540b2377d36f6f66979a9a404466596eef1f4ddc267a9f`  
		Last Modified: Tue, 27 Oct 2026 23:04:00 GMT  
		Size: 73.8 MB (73799496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff0d49c8c867b9582a5632680730d342eb19e9b2312e19c6d15dd7d0c6224a5`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9ab2e56e2d098ba7b923d3900c3a059128580601b8c4330b3ce30e9801c480`  
		Last Modified: Thu, 05 Nov 2026 18:54:29 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b8a891d239d53a8974688b221304c7560ebdbbfd82a019bd055f295d44192`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792e2e2b39b4dd9c9c9c571462238ef17d5af5ac4ddd4b5d66fd6fa8cfe2c4ee`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb594f57a5fb2306703fce5e22bcd0a0ccb5b0e92fe12f50d71de5b2da826c1e`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0850508e52ef599053526680e30927a065d297bd0fc01bcc6eb20f754de41af2`  
		Last Modified: Thu, 05 Nov 2026 18:54:29 GMT  
		Size: 2.5 MB (2476586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149a6383ffbf32a8756510d52ecb475ef4a6fb14b5a146d9165cae7ecc4944d3`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2.11.9-nanoserver`

```console
$ docker pull caddy@sha256:69f081326e11d5de2bc6c36c49f7ff6ada1ca0d0bea17ecc5eeea8dd430beb68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `caddy:2.11.9-nanoserver` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:52c08ac30210f7dd3f8797086ed8ac9250a0bd2c1f819fce3ec17bb43b550405
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219049983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d510733a0955a2dba4581ac8a3dbe4fefbc470008b16142b7e3e5fd68585a5da`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Thu, 05 Nov 2026 19:10:17 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Thu, 05 Nov 2026 19:10:18 GMT
RUN cmd /S /C #(nop) COPY file:f6fd9f7c8bd53ad2dea712d2b3468beaa8adaf6a9b8689f2f467c74c0f14078e in c:\caddy.exe 
# Thu, 05 Nov 2026 19:10:25 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Thu, 05 Nov 2026 19:10:29 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Thu, 05 Nov 2026 19:10:30 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 19:10:30 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:10:34 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:10:35 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:10:35 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Thu, 05 Nov 2026 19:10:37 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Thu, 05 Nov 2026 19:10:41 GMT
RUN caddy version
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddb22bef6de03c70812651b09b9821db3663cf45ff609907d10b9223c206e91`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 70.2 KB (70167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6273d9e342a51812fe6a306da942b6b9dbe8ae64128c1178a19252af4436b594`  
		Last Modified: Thu, 05 Nov 2026 19:10:53 GMT  
		Size: 18.5 MB (18498144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e65ef40e0b391980a2212b18173e33196f175d022677d8bf80196a25a27764ed`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 286.7 KB (286666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc2e4903cde3fdce7a882b066fe815f3c9bd7723bb1476ea6679f6ecefb781`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 110.6 KB (110556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7331d4d3ee891076ae62d845a7e716f975c8a172163ddcacf7a86a214d95f06b`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9cef09dbb1fce3303467532de78e107af35c09effe992c0c5b3f75fb4241d03`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7edd05c17a313dafe0ddc9d3c214f97b11cb340eb9052a7ebd18e46081fe5645`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5d7a4be40b85550ab5f630d17e44de58f0a5aed45ab517e19bb00b9b0a8d69`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ce06190fbf60c8b77d7d8395c6989896257f9d10fba71bd66b6fe1601b8122`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a85c2a042f8a082426f33de5baf817710599a44f092127bea8884df81e3e31`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd21175cf9bb40435e4283e25efbd5f8de0fa6696a4a7dcc1e409b35f1cef5ad`  
		Last Modified: Thu, 05 Nov 2026 19:10:48 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29396bba1f2c855cfde8454974891af94bf1de63f44dad9188b8e07a4aa6312`  
		Last Modified: Thu, 05 Nov 2026 19:10:47 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78531b08c4180ca18873517da84cc773b54b5956abe1dc0cf4d8c94dd68cf57c`  
		Last Modified: Thu, 05 Nov 2026 19:10:47 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850a9a9b73ee169356776de2a8b429f6f1732c66db7a036ca95a5a9493792eab`  
		Last Modified: Thu, 05 Nov 2026 19:10:48 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8636cc7c7957d3ec336e4fbb74ed197ac2de19d4b42db105b7cd462d40d9faf`  
		Last Modified: Thu, 05 Nov 2026 19:10:47 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71abcd22f3b21f1e95a509b2fe5f71af0bb4d40addb2f7105de2d49737e39b95`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f1f2d196935066aa2ef719631b3b557d1ace896db7ed0d60d439d2360f557`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdf3a91e2c46286142913d3f7a62f79dfb0f164e0063e1e3a24ae938b92d6cb`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73cad6dc76af673edc78125074e804abc99510c3b6e31b79bc2d5cf55eb1624`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 110.0 KB (109952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d227e39196c67b43f84f423ddda30d3e817ff1b3a4053613285525b20cfcb3d`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:2.11.9-nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:56b01f793a8128ee887d3e64de342dd3f2000a638ac1b4e7db29f2eb4bcb6284
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (145040802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d6191e2fc28e32c185f501fbd9572ebcf4e2a14ad065271c3337800994d629c`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Thu, 05 Nov 2026 19:10:13 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Thu, 05 Nov 2026 19:10:14 GMT
RUN cmd /S /C #(nop) COPY file:f6fd9f7c8bd53ad2dea712d2b3468beaa8adaf6a9b8689f2f467c74c0f14078e in c:\caddy.exe 
# Thu, 05 Nov 2026 19:10:25 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Thu, 05 Nov 2026 19:10:29 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:10:37 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:10:38 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:10:39 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:10:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:10:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 05 Nov 2026 19:10:44 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Thu, 05 Nov 2026 19:10:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Thu, 05 Nov 2026 19:10:47 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Thu, 05 Nov 2026 19:10:53 GMT
RUN caddy version
# Thu, 05 Nov 2026 19:10:54 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e1d06ea3837094c8761c7a40f502ad3ad9c213d4b486704f0a133be3d23f36`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 65.7 KB (65722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02d611403e37ecc02486a51183dcf106fb194e74b539f53bc1a00f1bbef02d7`  
		Last Modified: Thu, 05 Nov 2026 19:11:05 GMT  
		Size: 18.5 MB (18498202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1a17f3d31316c91205b5a519e0fc13c47939d3cc80aae106bd10649a823c04`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 290.2 KB (290212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3248fc9eb8b3c5ca0a8c7d6e92613d1df59864d1fd999fd6918e7245f189c392`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 123.2 KB (123168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40617a87b67b23ff7cfbe9de77177d9d3c6cb4284f1e39fe4a10f6171ad1ac4c`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e53fdde1ce4c324048149b5a456caab36f2220fb554c3c224cb29e9e3fa33b`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db93c253cdba976c39879edf23f24ea82aa83905b876504043e6c3cc9de39beb`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8965ee7d0cd826aaf2b9bf9879787f2110e2e2dab8f1fedcc0e9a1a4908b3f`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c29573c1901e5ea02b5f9e28e88e7a22b70c0acf84c41f4df6c1e795786c1`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2452f6722465dd773bf66b1cd607629e8b0f1fa73e4fc9fc7850e361c34a6553`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffdfaa4722c6a480ef02a2b6d8b2febc1a780a6a9a5557bbb6d3ffeeddd3ea4`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1597c7620d13ea57db6902612b6262261a7472a43e6b51a415418f0948523908`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fca5741b400358f371bb2758d52b63990bf9fe6613de999ccccd67b9bae200`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad096f0eeb95189cb63225d7b5873ab5d1e783703e639614a5aad4b23b880f1c`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c0adb7da06b7e605d03e094aad1033bc43abb83e9b59ecbcd8168abf0baa00`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8fe49479fc270257c4ca6cd3ce110e48008b6c06b1238b4c37fee4a39bf7b1`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa9a4eb0fa03b7c97b076bbccb045c37ba876eb6562c74449bb13fd5c309eb9`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10f275be5ed1abde3b084de91ae3a4a44c3334c0d8434366c30c953ae63460d`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fba564c3db312cd1674228848c185b36885e03927345eb02c84fee49d9bd6d2`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 121.0 KB (120982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc99724b66359e0703518bd1f7fa181f2563be2605953b7c7bc6641b51624d1`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2.11.9-nanoserver-ltsc2022`

```console
$ docker pull caddy@sha256:d2d8348d9c32aa61453875bf150b1dafce34d416c9195267d80f4a6e9eaed07b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `caddy:2.11.9-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:56b01f793a8128ee887d3e64de342dd3f2000a638ac1b4e7db29f2eb4bcb6284
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (145040802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d6191e2fc28e32c185f501fbd9572ebcf4e2a14ad065271c3337800994d629c`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Thu, 05 Nov 2026 19:10:13 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Thu, 05 Nov 2026 19:10:14 GMT
RUN cmd /S /C #(nop) COPY file:f6fd9f7c8bd53ad2dea712d2b3468beaa8adaf6a9b8689f2f467c74c0f14078e in c:\caddy.exe 
# Thu, 05 Nov 2026 19:10:25 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Thu, 05 Nov 2026 19:10:29 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:10:37 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:10:38 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:10:39 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:10:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:10:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 05 Nov 2026 19:10:44 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Thu, 05 Nov 2026 19:10:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Thu, 05 Nov 2026 19:10:47 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Thu, 05 Nov 2026 19:10:53 GMT
RUN caddy version
# Thu, 05 Nov 2026 19:10:54 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e1d06ea3837094c8761c7a40f502ad3ad9c213d4b486704f0a133be3d23f36`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 65.7 KB (65722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02d611403e37ecc02486a51183dcf106fb194e74b539f53bc1a00f1bbef02d7`  
		Last Modified: Thu, 05 Nov 2026 19:11:05 GMT  
		Size: 18.5 MB (18498202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1a17f3d31316c91205b5a519e0fc13c47939d3cc80aae106bd10649a823c04`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 290.2 KB (290212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3248fc9eb8b3c5ca0a8c7d6e92613d1df59864d1fd999fd6918e7245f189c392`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 123.2 KB (123168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40617a87b67b23ff7cfbe9de77177d9d3c6cb4284f1e39fe4a10f6171ad1ac4c`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e53fdde1ce4c324048149b5a456caab36f2220fb554c3c224cb29e9e3fa33b`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db93c253cdba976c39879edf23f24ea82aa83905b876504043e6c3cc9de39beb`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8965ee7d0cd826aaf2b9bf9879787f2110e2e2dab8f1fedcc0e9a1a4908b3f`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c29573c1901e5ea02b5f9e28e88e7a22b70c0acf84c41f4df6c1e795786c1`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2452f6722465dd773bf66b1cd607629e8b0f1fa73e4fc9fc7850e361c34a6553`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffdfaa4722c6a480ef02a2b6d8b2febc1a780a6a9a5557bbb6d3ffeeddd3ea4`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1597c7620d13ea57db6902612b6262261a7472a43e6b51a415418f0948523908`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fca5741b400358f371bb2758d52b63990bf9fe6613de999ccccd67b9bae200`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad096f0eeb95189cb63225d7b5873ab5d1e783703e639614a5aad4b23b880f1c`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c0adb7da06b7e605d03e094aad1033bc43abb83e9b59ecbcd8168abf0baa00`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8fe49479fc270257c4ca6cd3ce110e48008b6c06b1238b4c37fee4a39bf7b1`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa9a4eb0fa03b7c97b076bbccb045c37ba876eb6562c74449bb13fd5c309eb9`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10f275be5ed1abde3b084de91ae3a4a44c3334c0d8434366c30c953ae63460d`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fba564c3db312cd1674228848c185b36885e03927345eb02c84fee49d9bd6d2`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 121.0 KB (120982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc99724b66359e0703518bd1f7fa181f2563be2605953b7c7bc6641b51624d1`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2.11.9-nanoserver-ltsc2025`

```console
$ docker pull caddy@sha256:f3a662bcf43bcc21cff24811fe7f0a70d762d6bacd747c83dae7a97d6f5115b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `caddy:2.11.9-nanoserver-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:52c08ac30210f7dd3f8797086ed8ac9250a0bd2c1f819fce3ec17bb43b550405
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219049983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d510733a0955a2dba4581ac8a3dbe4fefbc470008b16142b7e3e5fd68585a5da`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Thu, 05 Nov 2026 19:10:17 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Thu, 05 Nov 2026 19:10:18 GMT
RUN cmd /S /C #(nop) COPY file:f6fd9f7c8bd53ad2dea712d2b3468beaa8adaf6a9b8689f2f467c74c0f14078e in c:\caddy.exe 
# Thu, 05 Nov 2026 19:10:25 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Thu, 05 Nov 2026 19:10:29 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Thu, 05 Nov 2026 19:10:30 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 19:10:30 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:10:34 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:10:35 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:10:35 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Thu, 05 Nov 2026 19:10:37 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Thu, 05 Nov 2026 19:10:41 GMT
RUN caddy version
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddb22bef6de03c70812651b09b9821db3663cf45ff609907d10b9223c206e91`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 70.2 KB (70167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6273d9e342a51812fe6a306da942b6b9dbe8ae64128c1178a19252af4436b594`  
		Last Modified: Thu, 05 Nov 2026 19:10:53 GMT  
		Size: 18.5 MB (18498144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e65ef40e0b391980a2212b18173e33196f175d022677d8bf80196a25a27764ed`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 286.7 KB (286666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc2e4903cde3fdce7a882b066fe815f3c9bd7723bb1476ea6679f6ecefb781`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 110.6 KB (110556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7331d4d3ee891076ae62d845a7e716f975c8a172163ddcacf7a86a214d95f06b`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9cef09dbb1fce3303467532de78e107af35c09effe992c0c5b3f75fb4241d03`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7edd05c17a313dafe0ddc9d3c214f97b11cb340eb9052a7ebd18e46081fe5645`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5d7a4be40b85550ab5f630d17e44de58f0a5aed45ab517e19bb00b9b0a8d69`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ce06190fbf60c8b77d7d8395c6989896257f9d10fba71bd66b6fe1601b8122`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a85c2a042f8a082426f33de5baf817710599a44f092127bea8884df81e3e31`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd21175cf9bb40435e4283e25efbd5f8de0fa6696a4a7dcc1e409b35f1cef5ad`  
		Last Modified: Thu, 05 Nov 2026 19:10:48 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29396bba1f2c855cfde8454974891af94bf1de63f44dad9188b8e07a4aa6312`  
		Last Modified: Thu, 05 Nov 2026 19:10:47 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78531b08c4180ca18873517da84cc773b54b5956abe1dc0cf4d8c94dd68cf57c`  
		Last Modified: Thu, 05 Nov 2026 19:10:47 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850a9a9b73ee169356776de2a8b429f6f1732c66db7a036ca95a5a9493792eab`  
		Last Modified: Thu, 05 Nov 2026 19:10:48 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8636cc7c7957d3ec336e4fbb74ed197ac2de19d4b42db105b7cd462d40d9faf`  
		Last Modified: Thu, 05 Nov 2026 19:10:47 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71abcd22f3b21f1e95a509b2fe5f71af0bb4d40addb2f7105de2d49737e39b95`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f1f2d196935066aa2ef719631b3b557d1ace896db7ed0d60d439d2360f557`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdf3a91e2c46286142913d3f7a62f79dfb0f164e0063e1e3a24ae938b92d6cb`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73cad6dc76af673edc78125074e804abc99510c3b6e31b79bc2d5cf55eb1624`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 110.0 KB (109952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d227e39196c67b43f84f423ddda30d3e817ff1b3a4053613285525b20cfcb3d`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2.11.9-windowsservercore`

```console
$ docker pull caddy@sha256:dc5598fddf05d80360663cb0e872500af9db218dc9dd72a2313593e0129789ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `caddy:2.11.9-windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:95abf9d14aaade6d55fc1fe67837955424c407f7c42122cf56ec269df234b976
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411640909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab973cc14b9e0c52be1b72c2f49166655cfed54fcb528bb66f89be6dcdea52d`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Thu, 05 Nov 2026 18:48:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:50:14 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:50:15 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:31 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:31 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:32 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:35 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:38 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:41 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:42 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:50:58 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:50:58 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3105b031b17a07724dd061a02beeb8696051059e004ecd9ed26a9e17fa3cdc02`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6906576f53243cb11c77a99856afa7453fea514a6239d8daad6968e7a25cba`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 390.9 KB (390919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066b4e49953291e1e590b8dc069208ed71f03d794a65a73813cb94d3655ec8f6`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f696f899da47fb0fca096725494a65fa4db2ed97ad592f434625bbf012bf4ccf`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 18.8 MB (18842906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61509ec5d34e9f0c9171bdaa8e0f889d0ae0266be4be408c271535c594f26c1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad5baa2304ae76c673dfcc132b4d9f5ed56a9c843984069ec22db953f24e183`  
		Last Modified: Thu, 05 Nov 2026 18:51:07 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf73fb3dacde170edc236e1c1f5e252519e2bba968312caa5570f79dd63be52`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9609d2b97073146c6468eedb5f32415c8a4cea9ca99c0602ccec800de92daf`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f857ee3127ebcc1c023b71b6e00845ff2e591296da1c03b77239054ce73059c7`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492801772255ddb526037e2a61f6e3f699aa4bfd695d5d2e844f6b041120e3b4`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fc7a0cadb49e63446196633584282ca5d0c21670b9f6a1303cc898819a5939`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4934c1a327b2efa689cf58a31640d074993b68ea01d8a3dc6f84b7aba9f7c40b`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421fbfd0d299f828ca293b67045a58a1398a41a480f918db09529c7720ba005e`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6808f4fa8c3f137ea2fe98d8343b4cd850d351a6c24415d6c7af9087023ca853`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc9e06eb01a305ee8abe1f8ad9e360461382e96f40fe09fe66638366d2b3921`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4771a13f86c4e0005351f8cf24a7199b26f48a8aca82fa482712118a2bd1f006`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc5ee75a0594ffb8e38f738cf42f1829027f8569736758d0d7b97265642a34a`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1be9f4dc4e64883d35c8a23d7396f2e832c32ef0bdbbf4bbca5cc99be26a3cf`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e9fcd3b3e14a5fede69ab9fee080810c9d6869d863c0c40b8109dbeb33bc10`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 336.2 KB (336222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad69e21d7b060686c53a003a33e3f7b9f3bcf502846a49bb9ffaa3ecf4b55167`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:2.11.9-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:2cc1f16a110963701a69a8093e051d1e6a68775f92423e05076fa8ac137525c2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2246593231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81d2947c39b363c1833583c76c91cafe62b764e5397a4d58ebd31dee62c2460`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Thu, 05 Nov 2026 18:48:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:49:53 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:49:54 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:24 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:26 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:27 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:29 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:30 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:32 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:42 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:51:03 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:51:04 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a008cba775e8dd0fa98285e50e68016c6e59c9c7d78331b024d243c8028b4cbc`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2d491895f80263abfd15f22c5c30039fa3ebd8d83087a2433cb846961153e1`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 371.5 KB (371473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5358c2eea08f8a9d209da01918bf15f92d5f2604b8bd529de0691bbbaabe927`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f303a38c5095af4de86858b6f2fedefdb9854cd41e24cb7b7f6e0de3e51e36`  
		Last Modified: Thu, 05 Nov 2026 18:51:17 GMT  
		Size: 18.8 MB (18820643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e592ad193121b2d1f6737f2fc89e24d03e9d33d6cca8e7add2957ccf57b9c61`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25fe4e292b538b454f7496f886418773ff60ff66c6837656d45cc2eb319ad3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a510990588c53fcf965e7ef95cd6e4765af69ddff30a9b85537cd50c39eee3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66d18fd2f2ee4d3baba1e5f3770dbed152867afeb50caad16c8ef145e17a6a2`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c670bb7e8fef2b7d9e51de98054eedf8577c01c8dab3f5307e26ad849db0ab39`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500888919d78c692c88bcec1ff4727723df54e3e34385d05da99c27285ee455f`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cdcae9d52f42f49f9a70d23426fc1feceede855ea6a0748f5f8663a35be90a`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7210618d2f93291160433de49867d5821e996bd5f005cc6c2b36801e9820829d`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790aa499060b9807135ef195885142b4c146bb6b428a843e2d8f79e595bb15f3`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07378ecb425dbafad024761d9bb5f11c3102ab26215b09dd90548401cfdbffc`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bb0f5976c9b254675a71ddc0e556c3e8c57376ad629f3a9431fb344eb0ac46`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23012e55c65156794576b8d2534079d31f2adad56300fb59cdeec1f58391db4`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6049bd500c5b62b0a05932db59f93ba3b7324a26e40d0c7e0708070abf5a4da9`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e3314e91f873e91dae6f3f2edceadb9449a46ef807bb118819fe75d83c8bb1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265b4d1fd5b55896df277baa4c1db1204b11578f29e866d4ad6afb1bc93f976b`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 322.8 KB (322785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48a65dcbe82d2fa7112e338b77c64a167952bea5d360d7a0b3587b835dbb9d69`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2.11.9-windowsservercore-ltsc2022`

```console
$ docker pull caddy@sha256:2298da0168ddb976b485403648a9f5f585fdfa0de3b04b380f6490413f3f59c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `caddy:2.11.9-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:2cc1f16a110963701a69a8093e051d1e6a68775f92423e05076fa8ac137525c2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2246593231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81d2947c39b363c1833583c76c91cafe62b764e5397a4d58ebd31dee62c2460`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Thu, 05 Nov 2026 18:48:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:49:53 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:49:54 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:24 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:26 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:27 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:29 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:30 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:32 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:42 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:51:03 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:51:04 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a008cba775e8dd0fa98285e50e68016c6e59c9c7d78331b024d243c8028b4cbc`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2d491895f80263abfd15f22c5c30039fa3ebd8d83087a2433cb846961153e1`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 371.5 KB (371473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5358c2eea08f8a9d209da01918bf15f92d5f2604b8bd529de0691bbbaabe927`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f303a38c5095af4de86858b6f2fedefdb9854cd41e24cb7b7f6e0de3e51e36`  
		Last Modified: Thu, 05 Nov 2026 18:51:17 GMT  
		Size: 18.8 MB (18820643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e592ad193121b2d1f6737f2fc89e24d03e9d33d6cca8e7add2957ccf57b9c61`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25fe4e292b538b454f7496f886418773ff60ff66c6837656d45cc2eb319ad3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a510990588c53fcf965e7ef95cd6e4765af69ddff30a9b85537cd50c39eee3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66d18fd2f2ee4d3baba1e5f3770dbed152867afeb50caad16c8ef145e17a6a2`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c670bb7e8fef2b7d9e51de98054eedf8577c01c8dab3f5307e26ad849db0ab39`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500888919d78c692c88bcec1ff4727723df54e3e34385d05da99c27285ee455f`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cdcae9d52f42f49f9a70d23426fc1feceede855ea6a0748f5f8663a35be90a`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7210618d2f93291160433de49867d5821e996bd5f005cc6c2b36801e9820829d`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790aa499060b9807135ef195885142b4c146bb6b428a843e2d8f79e595bb15f3`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07378ecb425dbafad024761d9bb5f11c3102ab26215b09dd90548401cfdbffc`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bb0f5976c9b254675a71ddc0e556c3e8c57376ad629f3a9431fb344eb0ac46`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23012e55c65156794576b8d2534079d31f2adad56300fb59cdeec1f58391db4`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6049bd500c5b62b0a05932db59f93ba3b7324a26e40d0c7e0708070abf5a4da9`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e3314e91f873e91dae6f3f2edceadb9449a46ef807bb118819fe75d83c8bb1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265b4d1fd5b55896df277baa4c1db1204b11578f29e866d4ad6afb1bc93f976b`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 322.8 KB (322785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48a65dcbe82d2fa7112e338b77c64a167952bea5d360d7a0b3587b835dbb9d69`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:2.11.9-windowsservercore-ltsc2025`

```console
$ docker pull caddy@sha256:4033b7b744da419c8d150dfdcdb3cef86e4c15f721b1d1b9c55708db2e447f40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `caddy:2.11.9-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:95abf9d14aaade6d55fc1fe67837955424c407f7c42122cf56ec269df234b976
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411640909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab973cc14b9e0c52be1b72c2f49166655cfed54fcb528bb66f89be6dcdea52d`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Thu, 05 Nov 2026 18:48:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:50:14 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:50:15 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:31 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:31 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:32 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:35 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:38 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:41 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:42 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:50:58 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:50:58 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3105b031b17a07724dd061a02beeb8696051059e004ecd9ed26a9e17fa3cdc02`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6906576f53243cb11c77a99856afa7453fea514a6239d8daad6968e7a25cba`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 390.9 KB (390919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066b4e49953291e1e590b8dc069208ed71f03d794a65a73813cb94d3655ec8f6`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f696f899da47fb0fca096725494a65fa4db2ed97ad592f434625bbf012bf4ccf`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 18.8 MB (18842906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61509ec5d34e9f0c9171bdaa8e0f889d0ae0266be4be408c271535c594f26c1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad5baa2304ae76c673dfcc132b4d9f5ed56a9c843984069ec22db953f24e183`  
		Last Modified: Thu, 05 Nov 2026 18:51:07 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf73fb3dacde170edc236e1c1f5e252519e2bba968312caa5570f79dd63be52`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9609d2b97073146c6468eedb5f32415c8a4cea9ca99c0602ccec800de92daf`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f857ee3127ebcc1c023b71b6e00845ff2e591296da1c03b77239054ce73059c7`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492801772255ddb526037e2a61f6e3f699aa4bfd695d5d2e844f6b041120e3b4`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fc7a0cadb49e63446196633584282ca5d0c21670b9f6a1303cc898819a5939`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4934c1a327b2efa689cf58a31640d074993b68ea01d8a3dc6f84b7aba9f7c40b`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421fbfd0d299f828ca293b67045a58a1398a41a480f918db09529c7720ba005e`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6808f4fa8c3f137ea2fe98d8343b4cd850d351a6c24415d6c7af9087023ca853`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc9e06eb01a305ee8abe1f8ad9e360461382e96f40fe09fe66638366d2b3921`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4771a13f86c4e0005351f8cf24a7199b26f48a8aca82fa482712118a2bd1f006`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc5ee75a0594ffb8e38f738cf42f1829027f8569736758d0d7b97265642a34a`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1be9f4dc4e64883d35c8a23d7396f2e832c32ef0bdbbf4bbca5cc99be26a3cf`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e9fcd3b3e14a5fede69ab9fee080810c9d6869d863c0c40b8109dbeb33bc10`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 336.2 KB (336222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad69e21d7b060686c53a003a33e3f7b9f3bcf502846a49bb9ffaa3ecf4b55167`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:alpine`

```console
$ docker pull caddy@sha256:8652f54d3ef21e120f78f3c6b396bcf7d3fc8f999cece30cd35490430da89430
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `caddy:alpine` - linux; amd64

```console
$ docker pull caddy@sha256:fc9cbc100585871d18d4e451cca7021785c90a7006087427ae5ceb3e4efe6424
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24793574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5813f7eb9b94fac4970f9f576695fe1ed1d53d41586fd3eaa350caf7c4627d9c`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:37:06 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Thu, 05 Nov 2026 19:37:07 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Thu, 05 Nov 2026 19:37:08 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 19:37:08 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='0e85544340290a16ce4bfb76fe7d65e9de1bf3a6e67f5ccfff30b30d27ea4c73e078077b7bf3e58ae60b6b12e44327705287059c775bca5782e8ee85ea7edd75' ;; 		armhf)   binArch='armv6'; checksum='bfd9b415660caccaf5efbba2a8828eb9e61e31609ee6a62d532e70ef1f419e2ba420fdfd1e16c13e4896c33557813f87fddc849de57400eac34c4635f413bc0c' ;; 		armv7)   binArch='armv7'; checksum='ea042518bfb5eec5070a3119430263ae920b2d1e878c733a80d3d0ced1168afe5816362f295de46915d651a67f31f4d8a67ac67326f507d90cda71274b8ee689' ;; 		aarch64) binArch='arm64'; checksum='9e5e76d7888542924de2c25353ae87c5f77e2a22c5b1198633cae13688922282e05383d142599205c88d8d80eee5e967d291214d7abce4835329a191b20dd6e0' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='9b95cfa058e9651c0738179c6c18d0a93eb9c491e5c9ed3d95f30b23e1c9324e739bbf91a3ac0ebf91aaff89e25de1cff22f127484be937c0089b079266cd37f' ;; 		riscv64) binArch='riscv64'; checksum='52c9750b091a297766f2faaa01955eb894b614f4b94a9a418632d67f65f942e5363681869de0a6434d87482ac611f5c228282c23c6a90349085bb17aa3eff686' ;; 		s390x)   binArch='s390x'; checksum='213186130eeab27bc8fff06f4a6cffb253b36f719166c6cb12c539b4432186d6f7938847547a4e5cf47b1525424fdc74813950f08b928f788b7402127eb30e6b' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Thu, 05 Nov 2026 19:37:08 GMT
ENV XDG_CONFIG_HOME=/config
# Thu, 05 Nov 2026 19:37:08 GMT
ENV XDG_DATA_HOME=/data
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[443/udp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[2019/tcp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
WORKDIR /srv
# Thu, 05 Nov 2026 19:37:08 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d6974dbf71e422d13654405f502ff60ea306943b999003c012ecc6dd93d317`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 2.8 MB (2798840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a802d3a0a957e15ac518be2f3f3e786b9965895265888c3390753c81d1c085`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 7.5 KB (7501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5000c332a1cc372a1a248c2923696c0bc7817d213f2db0f4161fc18a3fc17cd7`  
		Last Modified: Thu, 05 Nov 2026 19:37:16 GMT  
		Size: 18.1 MB (18133528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:38891e0175dd27a9b2c2a9e7314b356b0477f0002302bbeb51ccc87491f83abf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.6 KB (334614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a48c1497cac67279989d2b2c55010f2ed2546887974c8dfeee774c8cb204f5d`

```dockerfile
```

-	Layers:
	-	`sha256:f4183d0ed1bf0fc5c8a612569bbfe4bd35053c401ddec3523acf17101a388fd5`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 316.2 KB (316187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed4aeb1ef3c37f8dd726324c7a8739e6a1dcf890a00af32bf17ea28558f0b0bb`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 18.4 KB (18427 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:alpine` - linux; arm variant v6

```console
$ docker pull caddy@sha256:2ff7d8bd4c710ca24cee8553653e81236fdff5eac3258b319d1f3a8c9c90e1b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23531358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46e92b0833bac59556797e076e62d1e55e29d47edd40f1d1127b2837556d4529`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:55:45 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:55:45 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:55:47 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:55:47 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:55:47 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:55:47 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:55:47 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:55:47 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:55:47 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:55:47 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:55:47 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:55:47 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ff5ed468f4efb91ff9789ce83f3ddf01ffd2fb0b6fc960f72960fd6491b771`  
		Last Modified: Wed, 04 Nov 2026 17:55:53 GMT  
		Size: 2.7 MB (2723763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6987a10766febd34eccb10c8cfd6ed45b4dbc7543f2f279c007430465248cd5e`  
		Last Modified: Wed, 04 Nov 2026 17:55:52 GMT  
		Size: 7.5 KB (7498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d2de185c946d96bd1f952450842f74c1e1456eaaed32c45e2c2453477d635a`  
		Last Modified: Wed, 04 Nov 2026 17:55:53 GMT  
		Size: 17.2 MB (17241774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:b4d1fa4fd97be630b03ed7777f8d64b950b535a23568ba53ea68c9c4e8b4b533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 KB (18352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36929c847918c1d3bcc1a0a94c3670d9ca097bba6ff84631b35b6cc94d226189`

```dockerfile
```

-	Layers:
	-	`sha256:2685aa767d9f0cc12f38fe5b24dd8fb7d6aa4fd629476527c5fb5f9839998455`  
		Last Modified: Wed, 04 Nov 2026 17:55:52 GMT  
		Size: 18.4 KB (18352 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:alpine` - linux; arm variant v7

```console
$ docker pull caddy@sha256:6071525234f574e3000519dde9d25abfd4c089236956a24f2e0984b0cfa0695d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23092436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b321be350ac394b2b447774810803eba1fdaf731137388ea78e0494454a523`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:56:00 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:56:01 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:56:03 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:03 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:56:03 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:56:03 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:56:03 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afc8c568af13a7e8edac14d90a6dc6b10c007b4c156e7169017c0dc3f3a98faf`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 2.6 MB (2596752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27dff964349b9f016fff9f0a401da75a95f9e4fce26ac4bfa94bb9c1dc6afb16`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 7.5 KB (7499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3faea2288b2bcf4c48c14e2a5fed69d4aa014fe1a3fc1806b8eb10f663b045a2`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 17.2 MB (17221493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:bafe8101cc3628601a617b071b54dc33b676af3be1d88a0f1bad4b4c01436638
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.2 KB (334172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:469cbdf0a43a3b348b602651aa2aa2460c545e0a527950248c722eba4c1e6fac`

```dockerfile
```

-	Layers:
	-	`sha256:0b8e772e6707b2c953c84db65f6fc0c700d43d80350eac9883d213585e518be7`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 315.6 KB (315605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21e8a360f5a935352045f20a4c4a2253e333180b840eeaafe42be297baf42274`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 18.6 KB (18567 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:alpine` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:d48486623b1522f9e6d0fd0407e2929eb66bf2cc5bfbf71c2d89611d6fd24c35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23504341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a73eea10ae6ad4918f4dcbaf33fac04a70713c92d1f191eac79c3c5114eb55`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:56:01 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:56:02 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:56:03 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:03 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:56:03 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:56:03 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:56:03 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873b94e511f0ec80ec6cce86c968b610d228a774642b83f1a326d66ee6ae3aa8`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 2.8 MB (2814373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6d1df8fdd49da33b1d28007fdd1b07e242c84c67de3a92c2b7c7e9b847ef08d`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 7.5 KB (7499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8c8f8ce0e89504c960b22c3185bfb6e05eee0d897d84cfd010a12c70854ab9`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 16.5 MB (16491949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:10730ad845a1ca6297f672954ed94457459be6e4ff5f8b68e775baa4f75fbb9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.3 KB (334252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93401ef29b5158eba16ec2ba44339cea6bdbaa7055e899b5a5c96b2e88cf290a`

```dockerfile
```

-	Layers:
	-	`sha256:c6400d8de2626b662e1e17c25df8375093495be746b3bbb65131e69fa1d9db9d`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 315.6 KB (315641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3a7e9f8ef8acc4ede2bdc6185b5ac8c1b482add58b99147135f950c3cf22e80`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 18.6 KB (18611 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:alpine` - linux; ppc64le

```console
$ docker pull caddy@sha256:ff88079998a1d0ba6f228c328559d4e62ba3e23af23e03b07a03c26a76e564cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23289477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5c541ac1e43db67305c3cdca64c7fb798ca25eb4dd6f4035bd72ea6a1a0f8e6`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:54:56 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:55:21 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:55:33 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:55:33 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:55:33 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:55:33 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:55:33 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:55:33 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:55:33 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:55:33 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:55:44 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:55:44 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4802e0decc07b315032252b6be29a6e3794399b42e3d4217eb2e19810c3174`  
		Last Modified: Wed, 04 Nov 2026 17:56:17 GMT  
		Size: 2.9 MB (2932250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad41792dfa73ceb9d83ad15b8ab9cc0b2be12338d4a1e9d082b7bf78ef8fade3`  
		Last Modified: Wed, 04 Nov 2026 17:56:18 GMT  
		Size: 7.5 KB (7503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40aa986fbe3a1df875e66d40afcb7c0845e6d3af591ce6999bb3661561c10657`  
		Last Modified: Wed, 04 Nov 2026 17:56:19 GMT  
		Size: 16.5 MB (16528870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:c20b862368bf90b1e3fa1587d2c114a4941eb3c1675fe097d251307148ab490a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.1 KB (334095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:199a982489ac400a96711f5035dc7ec32172db2c39b9769e2e3651849822dc84`

```dockerfile
```

-	Layers:
	-	`sha256:3146ebe2743ac7948ef787e58eba77453e7e520d64bb62dea3f5d92a536dcc73`  
		Last Modified: Wed, 04 Nov 2026 17:56:17 GMT  
		Size: 315.6 KB (315594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:758b0113ca1d278b827b18662633a6cdcf77d0203e6604905e9f5c7d1e526c8a`  
		Last Modified: Wed, 04 Nov 2026 17:56:17 GMT  
		Size: 18.5 KB (18501 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:alpine` - linux; riscv64

```console
$ docker pull caddy@sha256:77a5533e54c81871e933687658b5d6a44265e75bae69bb6375a91383c1ffb76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23763391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877017629382ecdaf48df46afb54ec03844ec812855b044082cd22e0bb863afb`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 07:00:19 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Thu, 05 Nov 2026 07:00:21 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Thu, 05 Nov 2026 07:00:27 GMT
ENV CADDY_VERSION=v2.11.8
# Thu, 05 Nov 2026 07:00:27 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Thu, 05 Nov 2026 07:00:27 GMT
ENV XDG_CONFIG_HOME=/config
# Thu, 05 Nov 2026 07:00:27 GMT
ENV XDG_DATA_HOME=/data
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 07:00:27 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 07:00:27 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:00:27 GMT
EXPOSE map[443/udp:{}]
# Thu, 05 Nov 2026 07:00:27 GMT
EXPOSE map[2019/tcp:{}]
# Thu, 05 Nov 2026 07:00:28 GMT
WORKDIR /srv
# Thu, 05 Nov 2026 07:00:28 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b243dd3f78be3ff66be2edf51b3320f33932a2643de0382aabcc7451cc1d102`  
		Last Modified: Thu, 05 Nov 2026 07:01:29 GMT  
		Size: 2.9 MB (2930615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc3453e8adac8cf5a49ad6b057cb143688903d1c8637e7239f90f6dad8301b2f`  
		Last Modified: Thu, 05 Nov 2026 07:01:29 GMT  
		Size: 7.5 KB (7502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f9223ac75c6a1a12d29241638f981c0cb6eff5ecc027e6e6483675e06634f8a`  
		Last Modified: Thu, 05 Nov 2026 07:01:32 GMT  
		Size: 17.2 MB (17244595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:bbfe7db37148fedff73b048d06c8d440079103765bb26d8d3ff88f40adac4283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.1 KB (334091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7763aa7321cac96f9bc28cad61a3a46cfb05081f242f50e940de633852e6fb6b`

```dockerfile
```

-	Layers:
	-	`sha256:663bafd8bcb8c99e0a08a065c8d4e75b18baa3431df39812e3b0d9a81350d38f`  
		Last Modified: Thu, 05 Nov 2026 07:01:29 GMT  
		Size: 315.6 KB (315590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37596a9fbfe0de52e041917bd80b035bf70c1e11ce758b6784fe5e5796dd5316`  
		Last Modified: Thu, 05 Nov 2026 07:01:29 GMT  
		Size: 18.5 KB (18501 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:alpine` - linux; s390x

```console
$ docker pull caddy@sha256:6df2d88e242bbc40dbaae102045f3537c9d988c37f0e9f32ec5a59eb7822423b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24136179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a0ff7d133cc4fa4c0e464d8126567e1ebf625068c1141d62bf5f1fe880db72`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:54:31 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:54:33 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:54:33 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:54:33 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:54:33 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:54:33 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:54:33 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:54:33 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:54:33 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:54:33 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:54:33 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3160eca0d674aa6dbbfbfce3c9df7ef11c85e6f658ace8c027ebd1cdfc53b99f`  
		Last Modified: Wed, 04 Nov 2026 17:54:44 GMT  
		Size: 2.9 MB (2914741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b8a8eb35c9fb4d61cdc88a7ac4008899c342f64f54f2efbaaba9233e84204c5`  
		Last Modified: Wed, 04 Nov 2026 17:54:44 GMT  
		Size: 7.5 KB (7502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd224a2dd4702f0fd00b7dcac7d191597019c51cd31aaf6b5b3027d03d3c2ca`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 17.5 MB (17494194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:c921ef6152f997e93b113fa249d92639e3052271393487a1d21d132010d8296f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 KB (333964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c8c7ccc5c9c0fcfb60339b5665c7ff2f5622c8631d90cc253054a58282eb578`

```dockerfile
```

-	Layers:
	-	`sha256:cea63384879323dcf292cc0507cda1a549a1e9c4a2ef78fb2184459fdc48e811`  
		Last Modified: Wed, 04 Nov 2026 17:54:44 GMT  
		Size: 315.5 KB (315536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de008cdae2ba256db19a07f3b77749db37b6707673cab309b7506175ed0f3d70`  
		Last Modified: Wed, 04 Nov 2026 17:54:44 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

## `caddy:builder`

```console
$ docker pull caddy@sha256:3d2f0c4c322bbb420a70d02b775e79d3f837fe1fecea937d7536e4f5e8e1ede7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
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
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `caddy:builder` - linux; amd64

```console
$ docker pull caddy@sha256:f5ca6b3084eb14bd936970e95ad0b00d814b039b9263c3227cdead98c6b89a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83901648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73a4be9b1fc009db503df9d7fd20d8a5d059dacfea8514298d2d59698e0fd357`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:58:02 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 22:58:09 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 22:58:09 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 22:58:09 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 22:58:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:58:09 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 22:58:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 22:58:12 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:57:18 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:57:18 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:57:18 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:57:18 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:57:18 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:57:18 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:57:18 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:57:18 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c012d78a862fe59ae6789c91f982ea68a882c9c44bbde97013914458dcdd9c4c`  
		Last Modified: Wed, 21 Oct 2026 22:58:25 GMT  
		Size: 244.5 KB (244471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0bb27ae78502103ed383ed33346f88a83943fb7bd93977850d5890ee8fb3b`  
		Last Modified: Tue, 20 Oct 2026 02:42:46 GMT  
		Size: 71.2 MB (71150395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e3100880d834be60a9562375f4c5018b2cb26d64591bd0060aa3a80b935f43`  
		Last Modified: Wed, 21 Oct 2026 22:58:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f75821daa4e57f3cf136ac3698c24e27acc6148b904936fad0875779d9a7896`  
		Last Modified: Wed, 04 Nov 2026 17:57:27 GMT  
		Size: 6.6 MB (6643577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:363e2d59666e67f976bdd297efde475d864502c6df48318c8ec218b3c02f60b7`  
		Last Modified: Wed, 04 Nov 2026 17:57:27 GMT  
		Size: 2.0 MB (2009506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f753fcec1ce79dc0413a0a309b6fb2956d4eba7c0b69fa8bf2521ba976f6a891`  
		Last Modified: Wed, 04 Nov 2026 17:57:26 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder` - unknown; unknown

```console
$ docker pull caddy@sha256:c6ff12d4b199ab8009031f6f52380f34dfe292ab0a3b4e94bf091954bf832fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.4 KB (283370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29d63d2129aa380ca65172aae435b595525aaf52718784904bea68b9dff8e02`

```dockerfile
```

-	Layers:
	-	`sha256:b43270beb5d9fa4753496c872822e2a9c7de255f3b67b18d19bdc2f7eb86e790`  
		Last Modified: Wed, 04 Nov 2026 17:57:26 GMT  
		Size: 263.2 KB (263241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c0cd564e6a1a4c550c2bb1412edd3214269f177e85a5dae8388f2fad4cbd5b2`  
		Last Modified: Wed, 04 Nov 2026 17:57:26 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder` - linux; arm variant v6

```console
$ docker pull caddy@sha256:b568aab6f8b018ddb505fa6055c6e7c622f767a36976ba68cfab769be167e0c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81892741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83650bcf36d98ced23db81cb3f128c49e97039e39bcb4f25f0289082f037adcc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:29:36 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:29:45 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:29:45 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:29:45 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:29:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:29:45 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:29:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:29:48 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:56:04 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:56:05 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:56:05 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:05 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:56:05 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:56:05 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:56:05 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:56:05 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057399039eb243e7808b91993ba9f63d3e0da431e05f5bbb72f37e5dd6b080c8`  
		Last Modified: Wed, 21 Oct 2026 23:29:59 GMT  
		Size: 245.6 KB (245575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311ceebe23a2437e4f10eca55adfacd488c82ac6aa8e96dacaebe20785979cba`  
		Last Modified: Tue, 20 Oct 2026 02:42:15 GMT  
		Size: 69.7 MB (69655857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4270a94f0219df984116129a409fe43c3d2d9c5996177b591aca31e1f3615398`  
		Last Modified: Wed, 21 Oct 2026 23:29:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57981200b77c1ac92be88844e2b5d96ed3085b7d4bf3a2a65c38812afc5adaae`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 6.6 MB (6550958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7f91d9deb69265e264ce01570a2c8096325281fb63fae1d86d1f1c4b45c705d`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 1.9 MB (1881469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc603c44182b798efd59c2539361f0c2091b5cce17da95246a8317bd751bf59`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder` - unknown; unknown

```console
$ docker pull caddy@sha256:ae2567192a55556ecfa6571bbf2b213ae00692d20a5adc60e9ef41d52be603fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 KB (20039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0e5d6b36579df986e3a4fbce904711cff41d948011bc50249655b1c0b53ff0c`

```dockerfile
```

-	Layers:
	-	`sha256:88d4f38776bbaa9941ccb45282129440b1ad886df732151a9b64dc6ebd5cf462`  
		Last Modified: Wed, 04 Nov 2026 17:56:09 GMT  
		Size: 20.0 KB (20039 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder` - linux; arm variant v7

```console
$ docker pull caddy@sha256:dd6a43a6c388a1550850ce282e5f3380c65e6eb0c816c3bdd92d0bedee6d8747
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.0 MB (81040107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef03978689ceb0b7e301965ff96198caaf5b44eb2d860e1dd347b6a875c6f9d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:30:49 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:33:59 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:33:59 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:33:59 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:33:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:33:59 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:34:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:34:02 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:56:37 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:56:38 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:56:38 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:38 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:56:38 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:56:38 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:56:38 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:56:38 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ea789e2969e7e9134f029905c7800eb29baab37b23bce0b5c7b8842814015e`  
		Last Modified: Wed, 21 Oct 2026 23:30:58 GMT  
		Size: 244.5 KB (244518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae9b35601617bc051bb43546b04b850ce4f1eac0f66a3a5d94eff209388a0b2`  
		Last Modified: Tue, 20 Oct 2026 02:43:07 GMT  
		Size: 69.7 MB (69655805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d4e0aad963a6de3ba7f2ac6cad5cd64943f102880db12296ba798d90e05b19`  
		Last Modified: Wed, 21 Oct 2026 23:34:16 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddeac073f1ff9ce1762b297bdd4dc1735ce37ab24c5af711fdfd0907a0ad0ca7`  
		Last Modified: Wed, 04 Nov 2026 17:56:46 GMT  
		Size: 6.0 MB (5995495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a745b9350000bcd3caa8d30555052a24a52df1e4445ecf1552b74fb5e1766bf7`  
		Last Modified: Wed, 04 Nov 2026 17:56:46 GMT  
		Size: 1.9 MB (1877039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d9929a95fe998bd09e0fd1ea6e728e41de22218969a24a5a235eeb5021ed86a`  
		Last Modified: Wed, 04 Nov 2026 17:56:45 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder` - unknown; unknown

```console
$ docker pull caddy@sha256:f534cd318dde50f4dfb5d7c4d09dd55993ee4e56051566e04943e6450c823aee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.9 KB (285887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:200aafce2fad433150b55aaf21e495b9fad99309cab50ff448dcf7c60eb473b0`

```dockerfile
```

-	Layers:
	-	`sha256:6a41681ca1d8c3bd081286d8a0bf3afb1164d71bbe0534f2703014ee8dc7b1a3`  
		Last Modified: Wed, 04 Nov 2026 17:56:45 GMT  
		Size: 265.6 KB (265633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a2331cc41bfa20b1f481c65211a111ffac4b73b9a3bc58775fa9bc905db1a98`  
		Last Modified: Wed, 04 Nov 2026 17:56:45 GMT  
		Size: 20.3 KB (20254 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:188269e13e55e4fd9b8d07c70a116b64de79d6cc8868cc508e60d079ab89b18b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80715823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a5a3c3741317bb370be72fb12c60d0becda282cf1878f8d6f36d74d0dc0fea`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:46 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:20:54 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:20:54 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:20:54 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:20:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:20:54 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:20:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:20:56 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:56:21 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:56:21 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:56:21 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:21 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:56:21 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:56:21 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:56:22 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:56:22 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcdc05aad5cf439d58eff6bbe6e136d87af146e3b7442a5c64928da3ae1b86a3`  
		Last Modified: Wed, 21 Oct 2026 23:21:11 GMT  
		Size: 246.9 KB (246920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e7dba5c30798b9d70d746d9fb1606b744e5c3baa8015b51dad60cea99c045b`  
		Last Modified: Tue, 20 Oct 2026 02:42:50 GMT  
		Size: 67.7 MB (67719732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070112d392529aede516cb12dd04bbbf175fcab48c54121d76e09a5043ce92a1`  
		Last Modified: Wed, 21 Oct 2026 23:21:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ebdeb09f3c924d39a56d696297e2d657a33871448b8e075942cf6a752f6c58c`  
		Last Modified: Wed, 04 Nov 2026 17:56:30 GMT  
		Size: 6.7 MB (6727138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39f58f80fb592545c17183ccbecd0b91355710c0665447e528d36424e942860`  
		Last Modified: Wed, 04 Nov 2026 17:56:30 GMT  
		Size: 1.8 MB (1830954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2689232fbef6373f21177d0f3d90d3882efce2c056f4a0a1a2f274c5940996b4`  
		Last Modified: Wed, 04 Nov 2026 17:56:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder` - unknown; unknown

```console
$ docker pull caddy@sha256:ad0d33a228c686de25fba171bceb5c6af03099048487bdc6e3f6c1c83c1b5547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 KB (282991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31d63d5e32fc1cc2653faf3997b6b813beac19ed930b727da0d45d2425331cc`

```dockerfile
```

-	Layers:
	-	`sha256:5debd47c4c43686d18317b7954ead90bd0e141ca4dac0b9c3d62ebfc9c223937`  
		Last Modified: Wed, 04 Nov 2026 17:56:29 GMT  
		Size: 262.7 KB (262695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53d25d2936ebab3f9951b9e7e0a2c51d87d02980c61d812a5f129bf7bc681ea3`  
		Last Modified: Wed, 04 Nov 2026 17:56:29 GMT  
		Size: 20.3 KB (20296 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder` - linux; ppc64le

```console
$ docker pull caddy@sha256:2c6692c88ae9ce80f131b5d4b74388fef59f0562bf9ba63f48927d0deb672ff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81481471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c078bdbd49232982d7b0a5b520eb8ca7d0e2fa6f5c4413b231845c5ed69e91d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 13:35:51 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:41:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:41:36 GMT
COPY /target/ / # buildkit
# Thu, 22 Oct 2026 13:43:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 22 Oct 2026 13:43:20 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:55:21 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:55:30 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:55:30 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:55:30 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:55:30 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:55:30 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:55:42 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:55:48 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1039312999d7cc79e1a73e7d562cb99a4e1d9808a1c7eb990e7bd00db569593`  
		Last Modified: Thu, 22 Oct 2026 13:36:31 GMT  
		Size: 247.4 KB (247354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99280a61a753e565d841200e74a9ffba4717a286b10e4a5b0e0f4148164d619`  
		Last Modified: Tue, 20 Oct 2026 02:42:42 GMT  
		Size: 68.5 MB (68492171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d26cca5cf4e23e7a631853927e088cd119148d2149259c5d02e4358523c9f9b`  
		Last Modified: Thu, 22 Oct 2026 13:43:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ec1cdb0369df3ec046840060bcdbafe17a6d5d0b64286b96ff3bd86f4c36a9`  
		Last Modified: Wed, 04 Nov 2026 17:56:23 GMT  
		Size: 7.1 MB (7067825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a74bbbbe3cab47dc229b607b0ab407ed2ea0e57494a027de2a771709fc6e578`  
		Last Modified: Wed, 04 Nov 2026 17:56:23 GMT  
		Size: 1.9 MB (1852706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5d4efc145ed802ea281abacad7847207d1e5b29f7028adb36ed021ee7623cb`  
		Last Modified: Wed, 04 Nov 2026 17:56:24 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder` - unknown; unknown

```console
$ docker pull caddy@sha256:7ef384c917d2c72247359c2f8206cce9da27e7a01410109a801e062512c81b73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 KB (282862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fffb55fa30667e00acb5dad7551df3b10c6165ff741c359a72ca9a1610782502`

```dockerfile
```

-	Layers:
	-	`sha256:b5e6a2af55077255e40063701decf51a2ebffc67802ef6533fd5e2e55d9084e2`  
		Last Modified: Wed, 04 Nov 2026 17:56:24 GMT  
		Size: 262.7 KB (262664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d07be2f615552682b5000418a0d635db93b098e2060fb882cff1d21ef7df550`  
		Last Modified: Wed, 04 Nov 2026 17:56:24 GMT  
		Size: 20.2 KB (20198 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder` - linux; riscv64

```console
$ docker pull caddy@sha256:5976ed6ad86ce3fa234815ce06110972c027b5f3602c3b026c5de8d5e48789d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81675521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b0bf3a1751a3aeefba4002876c682d97f77e0c732a1b5df1ef55496ab6e0026`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 13:36:28 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:43:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:43:35 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 00:22:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 00:22:55 GMT
WORKDIR /go
# Thu, 05 Nov 2026 07:03:46 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 05 Nov 2026 07:03:47 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 07:03:47 GMT
ENV CADDY_VERSION=v2.11.8
# Thu, 05 Nov 2026 07:03:47 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 07:03:47 GMT
ENV XCADDY_SETCAP=1
# Thu, 05 Nov 2026 07:03:47 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 05 Nov 2026 07:03:48 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 05 Nov 2026 07:03:48 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0c6bbdd7e2de39b486fb00ad142f28331aaffeee541e676368c08a410f76ed`  
		Last Modified: Mon, 26 Oct 2026 13:37:55 GMT  
		Size: 244.9 KB (244881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb54614ae9ed635bfb8e27e661f01b863c8fcc98d1049b51549da2b2bf52a7a4`  
		Last Modified: Tue, 20 Oct 2026 02:50:40 GMT  
		Size: 69.2 MB (69170985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dad86abc0730a42f957fd3d2aeb23ea0616dea43d14b33d12b96325a36d169e`  
		Last Modified: Tue, 27 Oct 2026 00:24:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c4c16eb9680371fca8f637985610d3a4b85255941c76a98a2ea0dd04432c00b`  
		Last Modified: Thu, 05 Nov 2026 07:05:27 GMT  
		Size: 6.8 MB (6825625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f45a92b7c360dc9219503a83da9c3c705416b0b93da5f576141a4f54c00774`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 1.9 MB (1852791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2d08bd7441e433de00fd4eae87a8b3ff26f54839ffb155a092b95127a5dc51f`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder` - unknown; unknown

```console
$ docker pull caddy@sha256:df2ff7bf921df9a16643efdb2163df724b2cecdb7b9d18dc62e40246d386c79e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 KB (282859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81fdef83eeef55f4039393b700e958a9ef945541926df8d9c7b36ecd394819dd`

```dockerfile
```

-	Layers:
	-	`sha256:71f67b9b9248518abcbb988b596d199d322073e385b35b7b3ef9573cce5637c3`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 262.7 KB (262660 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1db7972890027e7ce8cb45c48ea7206795733fc21a313202520668bae351437e`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 20.2 KB (20199 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder` - linux; s390x

```console
$ docker pull caddy@sha256:7673aabded7251df3319d5c0ebeca77666e5d8efe0371ea7a2d8c5213b12479a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83120777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3bb20b8d4b4a40649130906bec7ebd5660dfafb0487e66c87e7e0600d727e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:41:23 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:41:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:41:05 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:41:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:41:33 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:54:32 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:54:32 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:54:32 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:54:32 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:54:32 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394b72af52beb97b1ac0b1a98b13629b3b0aee2321f877e115a82124b80d7793`  
		Last Modified: Wed, 21 Oct 2026 23:41:45 GMT  
		Size: 245.6 KB (245571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c0523718a973c87af9229ebd329dd6cf4e5d8ba37906c1e4c9083f5bb46d84`  
		Last Modified: Tue, 20 Oct 2026 02:41:29 GMT  
		Size: 70.3 MB (70281640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:096905f6e50b9f46f97862a2a89bf93646cfd1326c57bfde369c1e8b28b45e43`  
		Last Modified: Wed, 21 Oct 2026 23:41:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd451073c8291040e36d1ad69d5d1aff7fcbcdde6a619463318c669639663ca`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 6.9 MB (6929167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91773e053345d095de77ac8ee8097500d4e2adfb2d4e79185160197a7c95188`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 1.9 MB (1944097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983f6d28817b32472305d38546d4ad8c5039c0bb56072fefb0ed383da9cef71b`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder` - unknown; unknown

```console
$ docker pull caddy@sha256:f96d9615c049ff203083b41f15e921e7cf3220baf4a9baacb89dd47e0dd2646f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 KB (283215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e23784b2c54a2206de5ede21d1d08d0c11dbcc9138f2d41fc8f0d6a821325d6`

```dockerfile
```

-	Layers:
	-	`sha256:20d26e6c47c81bb7d1f238d070f68b16820f4b39cf7838d591209a27b40a3ac5`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 263.1 KB (263086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b4602176494052efed8ad3b0302d9053e7abd5be5a0ecc43d8636d9b52799a5`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:322cf178420fc490995ab4926e551ded39c7741bafd40e52d8f37721a5af63d3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2512025216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:405652c8cb9a777e8aee873526e5de489b3584c99fe7a4d85fc6e4cc6c00bf0a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 23:01:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 23:01:50 GMT
ENV GIT_VERSION=2.56.0.4
# Tue, 27 Oct 2026 23:01:50 GMT
ENV GIT_TAG=v2.56.0.windows.4
# Tue, 27 Oct 2026 23:01:51 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.4/MinGit-2.56.0.4-64-bit.zip
# Tue, 27 Oct 2026 23:01:51 GMT
ENV GIT_DOWNLOAD_SHA256=e3bf78351fe777fba47ddee5950082f8a98bb0f02604fdc7ba3ee2cb68ffa877
# Tue, 27 Oct 2026 23:02:08 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:02:08 GMT
ENV GOPATH=C:\go
# Tue, 27 Oct 2026 23:02:13 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 27 Oct 2026 23:02:13 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 27 Oct 2026 23:03:36 GMT
RUN $url = 'https://dl.google.com/go/go1.27.3.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f26081f438319757f8a1b46d7d0b2c5ec7583d4038e485e0aa725cfde7885fff'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:03:37 GMT
WORKDIR C:\go
# Thu, 05 Nov 2026 18:52:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:52:42 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 18:52:44 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:52:46 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 18:54:15 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Thu, 05 Nov 2026 18:54:17 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9dc3ea73737b5e7988b67a3b7d66fb12d1c2d45ae0faa88815590457b0a29b`  
		Last Modified: Tue, 27 Oct 2026 23:03:53 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bca6fe69737ca73ad3f90994d40696ec38484b78dfb551c7453e8a9807b6d01`  
		Last Modified: Tue, 27 Oct 2026 23:03:53 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82709fc838d73d56ca04aa73f6f789b6386d035fb9349e1c9d228780049400c4`  
		Last Modified: Tue, 27 Oct 2026 23:03:52 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82212b5c849462e3dd0139e5a5b8d58d3290d92803198d5c1fee2a88cc24a5be`  
		Last Modified: Tue, 27 Oct 2026 23:03:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e0cc77e3f495c77875f1db941bab19c86844345c0256d4bf05597e900d69`  
		Last Modified: Tue, 27 Oct 2026 23:03:51 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3325ade1b95eef958b43223a8e2f930fb7a88598ff07289c108e40ea9568a3b`  
		Last Modified: Tue, 27 Oct 2026 23:03:56 GMT  
		Size: 43.3 MB (43340994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45beab588c2115a45d58cb6eab918d433478c7dbbef7d92f37cba8577cf68bd`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f4a352e310ffb8a93987326f53c0de896ff11e6a2ff1eea5ff3e7d53ecbdd0`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 342.2 KB (342171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82a5f4fcc0e72594b3ae2c9f480fa94be4c163c60eb901be1efe8af9a3b22da`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3514708ffcd88eb748540b2377d36f6f66979a9a404466596eef1f4ddc267a9f`  
		Last Modified: Tue, 27 Oct 2026 23:04:00 GMT  
		Size: 73.8 MB (73799496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff0d49c8c867b9582a5632680730d342eb19e9b2312e19c6d15dd7d0c6224a5`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9ab2e56e2d098ba7b923d3900c3a059128580601b8c4330b3ce30e9801c480`  
		Last Modified: Thu, 05 Nov 2026 18:54:29 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b8a891d239d53a8974688b221304c7560ebdbbfd82a019bd055f295d44192`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792e2e2b39b4dd9c9c9c571462238ef17d5af5ac4ddd4b5d66fd6fa8cfe2c4ee`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb594f57a5fb2306703fce5e22bcd0a0ccb5b0e92fe12f50d71de5b2da826c1e`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0850508e52ef599053526680e30927a065d297bd0fc01bcc6eb20f754de41af2`  
		Last Modified: Thu, 05 Nov 2026 18:54:29 GMT  
		Size: 2.5 MB (2476586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149a6383ffbf32a8756510d52ecb475ef4a6fb14b5a146d9165cae7ecc4944d3`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:builder` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:251630ed505d1bc71474d21c55de8c81013041f0be69b00734d6f10fc3af37a3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2346987143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b538f9c56cc6192b44467cf39f5699357058cab8013b2b91347260eaef074f10`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 23:01:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 23:01:55 GMT
ENV GIT_VERSION=2.56.0.4
# Tue, 27 Oct 2026 23:01:56 GMT
ENV GIT_TAG=v2.56.0.windows.4
# Tue, 27 Oct 2026 23:01:57 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.4/MinGit-2.56.0.4-64-bit.zip
# Tue, 27 Oct 2026 23:01:58 GMT
ENV GIT_DOWNLOAD_SHA256=e3bf78351fe777fba47ddee5950082f8a98bb0f02604fdc7ba3ee2cb68ffa877
# Tue, 27 Oct 2026 23:02:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:02:19 GMT
ENV GOPATH=C:\go
# Tue, 27 Oct 2026 23:02:25 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 27 Oct 2026 23:02:25 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 27 Oct 2026 23:03:54 GMT
RUN $url = 'https://dl.google.com/go/go1.27.3.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f26081f438319757f8a1b46d7d0b2c5ec7583d4038e485e0aa725cfde7885fff'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:03:55 GMT
WORKDIR C:\go
# Thu, 05 Nov 2026 18:52:29 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:52:33 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 18:52:35 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:52:36 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 18:53:59 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Thu, 05 Nov 2026 18:54:01 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f98ea005c6b5e82948bfd0d9f8a10a638f47353d2a860c1f04848b1fe63f43`  
		Last Modified: Tue, 27 Oct 2026 23:04:06 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25ff349fed69087dede49cbfb0d3b004befe6b14a59c473e56c8e2cccf4a6b4`  
		Last Modified: Tue, 27 Oct 2026 23:04:06 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8daa49ca7ead8b36f0b651f5788eead2db56caec3df7b94eb6f594cd3e5badb`  
		Last Modified: Tue, 27 Oct 2026 23:04:05 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32b0dbaa15dfd6332ead1255f233ea55cbb7a7d2eb216492a47bc4eb4f08a36`  
		Last Modified: Tue, 27 Oct 2026 23:04:04 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845ec009e41fbeeb45ebd214b6d358294dbf999e572d9d7ed78fb3f3f1b141a1`  
		Last Modified: Tue, 27 Oct 2026 23:04:04 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0343caa9e4c6abefa9caf25adbeacea608cbff97167723f99a282aa3a2d3c41c`  
		Last Modified: Tue, 27 Oct 2026 23:04:10 GMT  
		Size: 43.3 MB (43334640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6898c1b1554e9b4d9b0dab9c58c389f3f346f9f3d8be61f727d3dded97076b`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad6ffce0035c184d0f1cc69cc6eeee2960caf115514e65c99284f29a2362e3c`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 328.9 KB (328893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7eb5a2f945389244a435c579c2a21d1f289ebc2085d6ca51a23413dbb7345ff`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20140fb2422e642b34aa718958c5502a414c499b2fb93bff0ad64a135333051a`  
		Last Modified: Tue, 27 Oct 2026 23:04:14 GMT  
		Size: 73.8 MB (73788363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d46f6710058016f086fc453a4ff487f1ef0a8a5f2ed98c165d7be7df1a9daa`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97bd9afb309fbe0e00e3c3890bcb6b657012badb1ab77379d780d0f9516f4402`  
		Last Modified: Thu, 05 Nov 2026 18:54:19 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e418dd3b67b3ce1fde3dd9b4986f075bfdf19d21ac4739722823ca30f57ae692`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b96bd881305e184e63e771a5a35a07de64033d714d1f2f5fc3bbb36b516450`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11e7419554a1a0ed1cbe7f59c491e8a4b2219697a873b9ced64719df5a79466`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdc448824d456f3fddbdb0e5431171a1f7274d188b46463e05c83f183fd15c0`  
		Last Modified: Thu, 05 Nov 2026 18:54:20 GMT  
		Size: 2.5 MB (2461854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dead047b3a40bbbeb7dd37f709c20f5672f1fca49a8c9e3fb78ea309f92c26`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:builder-alpine`

```console
$ docker pull caddy@sha256:e42a64b3bc70aa3a1387bde85b930e507a378fecae5852d5bfde9dcd37d0b999
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `caddy:builder-alpine` - linux; amd64

```console
$ docker pull caddy@sha256:f5ca6b3084eb14bd936970e95ad0b00d814b039b9263c3227cdead98c6b89a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83901648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73a4be9b1fc009db503df9d7fd20d8a5d059dacfea8514298d2d59698e0fd357`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:58:02 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 22:58:09 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 22:58:09 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 22:58:09 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 22:58:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:58:09 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 22:58:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 22:58:12 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:57:18 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:57:18 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:57:18 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:57:18 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:57:18 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:57:18 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:57:18 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:57:18 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c012d78a862fe59ae6789c91f982ea68a882c9c44bbde97013914458dcdd9c4c`  
		Last Modified: Wed, 21 Oct 2026 22:58:25 GMT  
		Size: 244.5 KB (244471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0bb27ae78502103ed383ed33346f88a83943fb7bd93977850d5890ee8fb3b`  
		Last Modified: Tue, 20 Oct 2026 02:42:46 GMT  
		Size: 71.2 MB (71150395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e3100880d834be60a9562375f4c5018b2cb26d64591bd0060aa3a80b935f43`  
		Last Modified: Wed, 21 Oct 2026 22:58:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f75821daa4e57f3cf136ac3698c24e27acc6148b904936fad0875779d9a7896`  
		Last Modified: Wed, 04 Nov 2026 17:57:27 GMT  
		Size: 6.6 MB (6643577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:363e2d59666e67f976bdd297efde475d864502c6df48318c8ec218b3c02f60b7`  
		Last Modified: Wed, 04 Nov 2026 17:57:27 GMT  
		Size: 2.0 MB (2009506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f753fcec1ce79dc0413a0a309b6fb2956d4eba7c0b69fa8bf2521ba976f6a891`  
		Last Modified: Wed, 04 Nov 2026 17:57:26 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:c6ff12d4b199ab8009031f6f52380f34dfe292ab0a3b4e94bf091954bf832fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.4 KB (283370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29d63d2129aa380ca65172aae435b595525aaf52718784904bea68b9dff8e02`

```dockerfile
```

-	Layers:
	-	`sha256:b43270beb5d9fa4753496c872822e2a9c7de255f3b67b18d19bdc2f7eb86e790`  
		Last Modified: Wed, 04 Nov 2026 17:57:26 GMT  
		Size: 263.2 KB (263241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c0cd564e6a1a4c550c2bb1412edd3214269f177e85a5dae8388f2fad4cbd5b2`  
		Last Modified: Wed, 04 Nov 2026 17:57:26 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder-alpine` - linux; arm variant v6

```console
$ docker pull caddy@sha256:b568aab6f8b018ddb505fa6055c6e7c622f767a36976ba68cfab769be167e0c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81892741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83650bcf36d98ced23db81cb3f128c49e97039e39bcb4f25f0289082f037adcc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:29:36 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:29:45 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:29:45 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:29:45 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:29:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:29:45 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:29:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:29:48 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:56:04 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:56:05 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:56:05 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:05 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:56:05 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:56:05 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:56:05 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:56:05 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057399039eb243e7808b91993ba9f63d3e0da431e05f5bbb72f37e5dd6b080c8`  
		Last Modified: Wed, 21 Oct 2026 23:29:59 GMT  
		Size: 245.6 KB (245575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311ceebe23a2437e4f10eca55adfacd488c82ac6aa8e96dacaebe20785979cba`  
		Last Modified: Tue, 20 Oct 2026 02:42:15 GMT  
		Size: 69.7 MB (69655857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4270a94f0219df984116129a409fe43c3d2d9c5996177b591aca31e1f3615398`  
		Last Modified: Wed, 21 Oct 2026 23:29:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57981200b77c1ac92be88844e2b5d96ed3085b7d4bf3a2a65c38812afc5adaae`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 6.6 MB (6550958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7f91d9deb69265e264ce01570a2c8096325281fb63fae1d86d1f1c4b45c705d`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 1.9 MB (1881469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc603c44182b798efd59c2539361f0c2091b5cce17da95246a8317bd751bf59`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:ae2567192a55556ecfa6571bbf2b213ae00692d20a5adc60e9ef41d52be603fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 KB (20039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0e5d6b36579df986e3a4fbce904711cff41d948011bc50249655b1c0b53ff0c`

```dockerfile
```

-	Layers:
	-	`sha256:88d4f38776bbaa9941ccb45282129440b1ad886df732151a9b64dc6ebd5cf462`  
		Last Modified: Wed, 04 Nov 2026 17:56:09 GMT  
		Size: 20.0 KB (20039 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder-alpine` - linux; arm variant v7

```console
$ docker pull caddy@sha256:dd6a43a6c388a1550850ce282e5f3380c65e6eb0c816c3bdd92d0bedee6d8747
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.0 MB (81040107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef03978689ceb0b7e301965ff96198caaf5b44eb2d860e1dd347b6a875c6f9d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:30:49 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:33:59 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:33:59 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:33:59 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:33:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:33:59 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:34:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:34:02 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:56:37 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:56:38 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:56:38 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:38 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:56:38 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:56:38 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:56:38 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:56:38 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ea789e2969e7e9134f029905c7800eb29baab37b23bce0b5c7b8842814015e`  
		Last Modified: Wed, 21 Oct 2026 23:30:58 GMT  
		Size: 244.5 KB (244518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae9b35601617bc051bb43546b04b850ce4f1eac0f66a3a5d94eff209388a0b2`  
		Last Modified: Tue, 20 Oct 2026 02:43:07 GMT  
		Size: 69.7 MB (69655805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d4e0aad963a6de3ba7f2ac6cad5cd64943f102880db12296ba798d90e05b19`  
		Last Modified: Wed, 21 Oct 2026 23:34:16 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddeac073f1ff9ce1762b297bdd4dc1735ce37ab24c5af711fdfd0907a0ad0ca7`  
		Last Modified: Wed, 04 Nov 2026 17:56:46 GMT  
		Size: 6.0 MB (5995495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a745b9350000bcd3caa8d30555052a24a52df1e4445ecf1552b74fb5e1766bf7`  
		Last Modified: Wed, 04 Nov 2026 17:56:46 GMT  
		Size: 1.9 MB (1877039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d9929a95fe998bd09e0fd1ea6e728e41de22218969a24a5a235eeb5021ed86a`  
		Last Modified: Wed, 04 Nov 2026 17:56:45 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:f534cd318dde50f4dfb5d7c4d09dd55993ee4e56051566e04943e6450c823aee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.9 KB (285887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:200aafce2fad433150b55aaf21e495b9fad99309cab50ff448dcf7c60eb473b0`

```dockerfile
```

-	Layers:
	-	`sha256:6a41681ca1d8c3bd081286d8a0bf3afb1164d71bbe0534f2703014ee8dc7b1a3`  
		Last Modified: Wed, 04 Nov 2026 17:56:45 GMT  
		Size: 265.6 KB (265633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a2331cc41bfa20b1f481c65211a111ffac4b73b9a3bc58775fa9bc905db1a98`  
		Last Modified: Wed, 04 Nov 2026 17:56:45 GMT  
		Size: 20.3 KB (20254 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder-alpine` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:188269e13e55e4fd9b8d07c70a116b64de79d6cc8868cc508e60d079ab89b18b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80715823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a5a3c3741317bb370be72fb12c60d0becda282cf1878f8d6f36d74d0dc0fea`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:46 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:20:54 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:20:54 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:20:54 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:20:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:20:54 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:20:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:20:56 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:56:21 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:56:21 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:56:21 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:21 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:56:21 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:56:21 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:56:22 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:56:22 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcdc05aad5cf439d58eff6bbe6e136d87af146e3b7442a5c64928da3ae1b86a3`  
		Last Modified: Wed, 21 Oct 2026 23:21:11 GMT  
		Size: 246.9 KB (246920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e7dba5c30798b9d70d746d9fb1606b744e5c3baa8015b51dad60cea99c045b`  
		Last Modified: Tue, 20 Oct 2026 02:42:50 GMT  
		Size: 67.7 MB (67719732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070112d392529aede516cb12dd04bbbf175fcab48c54121d76e09a5043ce92a1`  
		Last Modified: Wed, 21 Oct 2026 23:21:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ebdeb09f3c924d39a56d696297e2d657a33871448b8e075942cf6a752f6c58c`  
		Last Modified: Wed, 04 Nov 2026 17:56:30 GMT  
		Size: 6.7 MB (6727138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39f58f80fb592545c17183ccbecd0b91355710c0665447e528d36424e942860`  
		Last Modified: Wed, 04 Nov 2026 17:56:30 GMT  
		Size: 1.8 MB (1830954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2689232fbef6373f21177d0f3d90d3882efce2c056f4a0a1a2f274c5940996b4`  
		Last Modified: Wed, 04 Nov 2026 17:56:29 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:ad0d33a228c686de25fba171bceb5c6af03099048487bdc6e3f6c1c83c1b5547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 KB (282991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31d63d5e32fc1cc2653faf3997b6b813beac19ed930b727da0d45d2425331cc`

```dockerfile
```

-	Layers:
	-	`sha256:5debd47c4c43686d18317b7954ead90bd0e141ca4dac0b9c3d62ebfc9c223937`  
		Last Modified: Wed, 04 Nov 2026 17:56:29 GMT  
		Size: 262.7 KB (262695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53d25d2936ebab3f9951b9e7e0a2c51d87d02980c61d812a5f129bf7bc681ea3`  
		Last Modified: Wed, 04 Nov 2026 17:56:29 GMT  
		Size: 20.3 KB (20296 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder-alpine` - linux; ppc64le

```console
$ docker pull caddy@sha256:2c6692c88ae9ce80f131b5d4b74388fef59f0562bf9ba63f48927d0deb672ff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81481471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c078bdbd49232982d7b0a5b520eb8ca7d0e2fa6f5c4413b231845c5ed69e91d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 13:35:51 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:41:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:41:36 GMT
COPY /target/ / # buildkit
# Thu, 22 Oct 2026 13:43:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 22 Oct 2026 13:43:20 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:55:21 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:55:30 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:55:30 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:55:30 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:55:30 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:55:30 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:55:42 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:55:48 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1039312999d7cc79e1a73e7d562cb99a4e1d9808a1c7eb990e7bd00db569593`  
		Last Modified: Thu, 22 Oct 2026 13:36:31 GMT  
		Size: 247.4 KB (247354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99280a61a753e565d841200e74a9ffba4717a286b10e4a5b0e0f4148164d619`  
		Last Modified: Tue, 20 Oct 2026 02:42:42 GMT  
		Size: 68.5 MB (68492171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d26cca5cf4e23e7a631853927e088cd119148d2149259c5d02e4358523c9f9b`  
		Last Modified: Thu, 22 Oct 2026 13:43:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ec1cdb0369df3ec046840060bcdbafe17a6d5d0b64286b96ff3bd86f4c36a9`  
		Last Modified: Wed, 04 Nov 2026 17:56:23 GMT  
		Size: 7.1 MB (7067825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a74bbbbe3cab47dc229b607b0ab407ed2ea0e57494a027de2a771709fc6e578`  
		Last Modified: Wed, 04 Nov 2026 17:56:23 GMT  
		Size: 1.9 MB (1852706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5d4efc145ed802ea281abacad7847207d1e5b29f7028adb36ed021ee7623cb`  
		Last Modified: Wed, 04 Nov 2026 17:56:24 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:7ef384c917d2c72247359c2f8206cce9da27e7a01410109a801e062512c81b73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 KB (282862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fffb55fa30667e00acb5dad7551df3b10c6165ff741c359a72ca9a1610782502`

```dockerfile
```

-	Layers:
	-	`sha256:b5e6a2af55077255e40063701decf51a2ebffc67802ef6533fd5e2e55d9084e2`  
		Last Modified: Wed, 04 Nov 2026 17:56:24 GMT  
		Size: 262.7 KB (262664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d07be2f615552682b5000418a0d635db93b098e2060fb882cff1d21ef7df550`  
		Last Modified: Wed, 04 Nov 2026 17:56:24 GMT  
		Size: 20.2 KB (20198 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder-alpine` - linux; riscv64

```console
$ docker pull caddy@sha256:5976ed6ad86ce3fa234815ce06110972c027b5f3602c3b026c5de8d5e48789d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81675521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b0bf3a1751a3aeefba4002876c682d97f77e0c732a1b5df1ef55496ab6e0026`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 13:36:28 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:43:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:43:35 GMT
COPY /target/ / # buildkit
# Tue, 27 Oct 2026 00:22:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 00:22:55 GMT
WORKDIR /go
# Thu, 05 Nov 2026 07:03:46 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 05 Nov 2026 07:03:47 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 07:03:47 GMT
ENV CADDY_VERSION=v2.11.8
# Thu, 05 Nov 2026 07:03:47 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 07:03:47 GMT
ENV XCADDY_SETCAP=1
# Thu, 05 Nov 2026 07:03:47 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 05 Nov 2026 07:03:48 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 05 Nov 2026 07:03:48 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0c6bbdd7e2de39b486fb00ad142f28331aaffeee541e676368c08a410f76ed`  
		Last Modified: Mon, 26 Oct 2026 13:37:55 GMT  
		Size: 244.9 KB (244881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb54614ae9ed635bfb8e27e661f01b863c8fcc98d1049b51549da2b2bf52a7a4`  
		Last Modified: Tue, 20 Oct 2026 02:50:40 GMT  
		Size: 69.2 MB (69170985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dad86abc0730a42f957fd3d2aeb23ea0616dea43d14b33d12b96325a36d169e`  
		Last Modified: Tue, 27 Oct 2026 00:24:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c4c16eb9680371fca8f637985610d3a4b85255941c76a98a2ea0dd04432c00b`  
		Last Modified: Thu, 05 Nov 2026 07:05:27 GMT  
		Size: 6.8 MB (6825625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f45a92b7c360dc9219503a83da9c3c705416b0b93da5f576141a4f54c00774`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 1.9 MB (1852791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2d08bd7441e433de00fd4eae87a8b3ff26f54839ffb155a092b95127a5dc51f`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:df2ff7bf921df9a16643efdb2163df724b2cecdb7b9d18dc62e40246d386c79e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 KB (282859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81fdef83eeef55f4039393b700e958a9ef945541926df8d9c7b36ecd394819dd`

```dockerfile
```

-	Layers:
	-	`sha256:71f67b9b9248518abcbb988b596d199d322073e385b35b7b3ef9573cce5637c3`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 262.7 KB (262660 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1db7972890027e7ce8cb45c48ea7206795733fc21a313202520668bae351437e`  
		Last Modified: Thu, 05 Nov 2026 07:05:26 GMT  
		Size: 20.2 KB (20199 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder-alpine` - linux; s390x

```console
$ docker pull caddy@sha256:7673aabded7251df3319d5c0ebeca77666e5d8efe0371ea7a2d8c5213b12479a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83120777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3bb20b8d4b4a40649130906bec7ebd5660dfafb0487e66c87e7e0600d727e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:41:23 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:41:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:41:05 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:41:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:41:33 GMT
WORKDIR /go
# Wed, 04 Nov 2026 17:54:32 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 04 Nov 2026 17:54:32 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:54:32 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 04 Nov 2026 17:54:32 GMT
ENV XCADDY_SETCAP=1
# Wed, 04 Nov 2026 17:54:32 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='99fd895a7b7799b18c43ea0915777d8701aaab2a010035b23495c28b4ae429edccd70adb9a01106180f8d9333d9b5df41e74f9702ce0e1cffcf8840698a9ab93' ;; 		armhf)   binArch='armv6'; checksum='3192d057f144a226423d80444b4358006046d91ef47966880ed8f73cea2606d84bda99ea76bc340a9868f970ee7234f3fb423fb18cefa572423266baf3ef9f37' ;; 		armv7)   binArch='armv7'; checksum='adffd88ebe54574e42e652de5bc32c64e38bf002fc95216b1f29cb9ea9d3e46c7b8f78a3ea1c723f6918d124a788c3ebb21d36cb5b98cce79bf315a9019ec209' ;; 		aarch64) binArch='arm64'; checksum='b4d52ad6db4184fa5366ef225d24b8340a47fc1924d250b329d3b95f416a0b14e16d72cf71f04f57046e8a26bad2b697ac14c833fc5f5607b9e1c838b9898520' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='13e2f9271866246bca51a5584a3dc489d7950f0d1fecb6d48a557aba144430273f2cb63ea924e5d63a734a725eaa2c70da892637ea67f2fe26e1eef06e934767' ;; 		riscv64) binArch='riscv64'; checksum='7eda807310da91db126a078cc04a5e174ed42105fc032a162794a6fb1ce03464c5bdbe1d4f62189453e73c0ed8f3a36bc146fec63dc882775ddc50f0fea412f0' ;; 		s390x)   binArch='s390x'; checksum='1fbd02d9ffec6e244bf20668658d62fe6fc90ed77cffc3b84e70a927f6fd0d1e1b225e8c8e14faa280956b1517a333f7b7a32fad580c7ce507a1d357b6d8fb53' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394b72af52beb97b1ac0b1a98b13629b3b0aee2321f877e115a82124b80d7793`  
		Last Modified: Wed, 21 Oct 2026 23:41:45 GMT  
		Size: 245.6 KB (245571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c0523718a973c87af9229ebd329dd6cf4e5d8ba37906c1e4c9083f5bb46d84`  
		Last Modified: Tue, 20 Oct 2026 02:41:29 GMT  
		Size: 70.3 MB (70281640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:096905f6e50b9f46f97862a2a89bf93646cfd1326c57bfde369c1e8b28b45e43`  
		Last Modified: Wed, 21 Oct 2026 23:41:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd451073c8291040e36d1ad69d5d1aff7fcbcdde6a619463318c669639663ca`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 6.9 MB (6929167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91773e053345d095de77ac8ee8097500d4e2adfb2d4e79185160197a7c95188`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 1.9 MB (1944097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983f6d28817b32472305d38546d4ad8c5039c0bb56072fefb0ed383da9cef71b`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:f96d9615c049ff203083b41f15e921e7cf3220baf4a9baacb89dd47e0dd2646f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 KB (283215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e23784b2c54a2206de5ede21d1d08d0c11dbcc9138f2d41fc8f0d6a821325d6`

```dockerfile
```

-	Layers:
	-	`sha256:20d26e6c47c81bb7d1f238d070f68b16820f4b39cf7838d591209a27b40a3ac5`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 263.1 KB (263086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b4602176494052efed8ad3b0302d9053e7abd5be5a0ecc43d8636d9b52799a5`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json

## `caddy:builder-windowsservercore-ltsc2022`

```console
$ docker pull caddy@sha256:fd376832a45bde301952ad8538e4ced511ba4ccfde972c7012ec351c06758527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `caddy:builder-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:251630ed505d1bc71474d21c55de8c81013041f0be69b00734d6f10fc3af37a3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2346987143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b538f9c56cc6192b44467cf39f5699357058cab8013b2b91347260eaef074f10`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 23:01:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 23:01:55 GMT
ENV GIT_VERSION=2.56.0.4
# Tue, 27 Oct 2026 23:01:56 GMT
ENV GIT_TAG=v2.56.0.windows.4
# Tue, 27 Oct 2026 23:01:57 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.4/MinGit-2.56.0.4-64-bit.zip
# Tue, 27 Oct 2026 23:01:58 GMT
ENV GIT_DOWNLOAD_SHA256=e3bf78351fe777fba47ddee5950082f8a98bb0f02604fdc7ba3ee2cb68ffa877
# Tue, 27 Oct 2026 23:02:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:02:19 GMT
ENV GOPATH=C:\go
# Tue, 27 Oct 2026 23:02:25 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 27 Oct 2026 23:02:25 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 27 Oct 2026 23:03:54 GMT
RUN $url = 'https://dl.google.com/go/go1.27.3.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f26081f438319757f8a1b46d7d0b2c5ec7583d4038e485e0aa725cfde7885fff'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:03:55 GMT
WORKDIR C:\go
# Thu, 05 Nov 2026 18:52:29 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:52:33 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 18:52:35 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:52:36 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 18:53:59 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Thu, 05 Nov 2026 18:54:01 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f98ea005c6b5e82948bfd0d9f8a10a638f47353d2a860c1f04848b1fe63f43`  
		Last Modified: Tue, 27 Oct 2026 23:04:06 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25ff349fed69087dede49cbfb0d3b004befe6b14a59c473e56c8e2cccf4a6b4`  
		Last Modified: Tue, 27 Oct 2026 23:04:06 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8daa49ca7ead8b36f0b651f5788eead2db56caec3df7b94eb6f594cd3e5badb`  
		Last Modified: Tue, 27 Oct 2026 23:04:05 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32b0dbaa15dfd6332ead1255f233ea55cbb7a7d2eb216492a47bc4eb4f08a36`  
		Last Modified: Tue, 27 Oct 2026 23:04:04 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845ec009e41fbeeb45ebd214b6d358294dbf999e572d9d7ed78fb3f3f1b141a1`  
		Last Modified: Tue, 27 Oct 2026 23:04:04 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0343caa9e4c6abefa9caf25adbeacea608cbff97167723f99a282aa3a2d3c41c`  
		Last Modified: Tue, 27 Oct 2026 23:04:10 GMT  
		Size: 43.3 MB (43334640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6898c1b1554e9b4d9b0dab9c58c389f3f346f9f3d8be61f727d3dded97076b`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad6ffce0035c184d0f1cc69cc6eeee2960caf115514e65c99284f29a2362e3c`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 328.9 KB (328893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7eb5a2f945389244a435c579c2a21d1f289ebc2085d6ca51a23413dbb7345ff`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20140fb2422e642b34aa718958c5502a414c499b2fb93bff0ad64a135333051a`  
		Last Modified: Tue, 27 Oct 2026 23:04:14 GMT  
		Size: 73.8 MB (73788363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d46f6710058016f086fc453a4ff487f1ef0a8a5f2ed98c165d7be7df1a9daa`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97bd9afb309fbe0e00e3c3890bcb6b657012badb1ab77379d780d0f9516f4402`  
		Last Modified: Thu, 05 Nov 2026 18:54:19 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e418dd3b67b3ce1fde3dd9b4986f075bfdf19d21ac4739722823ca30f57ae692`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b96bd881305e184e63e771a5a35a07de64033d714d1f2f5fc3bbb36b516450`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11e7419554a1a0ed1cbe7f59c491e8a4b2219697a873b9ced64719df5a79466`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdc448824d456f3fddbdb0e5431171a1f7274d188b46463e05c83f183fd15c0`  
		Last Modified: Thu, 05 Nov 2026 18:54:20 GMT  
		Size: 2.5 MB (2461854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dead047b3a40bbbeb7dd37f709c20f5672f1fca49a8c9e3fb78ea309f92c26`  
		Last Modified: Thu, 05 Nov 2026 18:54:18 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:builder-windowsservercore-ltsc2025`

```console
$ docker pull caddy@sha256:941dd431e0b855f2ccdd530b0f60113a70531639c387fa4c6c3bf4efa158ba21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `caddy:builder-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:322cf178420fc490995ab4926e551ded39c7741bafd40e52d8f37721a5af63d3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2512025216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:405652c8cb9a777e8aee873526e5de489b3584c99fe7a4d85fc6e4cc6c00bf0a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 23:01:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 23:01:50 GMT
ENV GIT_VERSION=2.56.0.4
# Tue, 27 Oct 2026 23:01:50 GMT
ENV GIT_TAG=v2.56.0.windows.4
# Tue, 27 Oct 2026 23:01:51 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.4/MinGit-2.56.0.4-64-bit.zip
# Tue, 27 Oct 2026 23:01:51 GMT
ENV GIT_DOWNLOAD_SHA256=e3bf78351fe777fba47ddee5950082f8a98bb0f02604fdc7ba3ee2cb68ffa877
# Tue, 27 Oct 2026 23:02:08 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:02:08 GMT
ENV GOPATH=C:\go
# Tue, 27 Oct 2026 23:02:13 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 27 Oct 2026 23:02:13 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 27 Oct 2026 23:03:36 GMT
RUN $url = 'https://dl.google.com/go/go1.27.3.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f26081f438319757f8a1b46d7d0b2c5ec7583d4038e485e0aa725cfde7885fff'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:03:37 GMT
WORKDIR C:\go
# Thu, 05 Nov 2026 18:52:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:52:42 GMT
ENV XCADDY_VERSION=v0.4.7
# Thu, 05 Nov 2026 18:52:44 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:52:46 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 05 Nov 2026 18:54:15 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Thu, 05 Nov 2026 18:54:17 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9dc3ea73737b5e7988b67a3b7d66fb12d1c2d45ae0faa88815590457b0a29b`  
		Last Modified: Tue, 27 Oct 2026 23:03:53 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bca6fe69737ca73ad3f90994d40696ec38484b78dfb551c7453e8a9807b6d01`  
		Last Modified: Tue, 27 Oct 2026 23:03:53 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82709fc838d73d56ca04aa73f6f789b6386d035fb9349e1c9d228780049400c4`  
		Last Modified: Tue, 27 Oct 2026 23:03:52 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82212b5c849462e3dd0139e5a5b8d58d3290d92803198d5c1fee2a88cc24a5be`  
		Last Modified: Tue, 27 Oct 2026 23:03:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e0cc77e3f495c77875f1db941bab19c86844345c0256d4bf05597e900d69`  
		Last Modified: Tue, 27 Oct 2026 23:03:51 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3325ade1b95eef958b43223a8e2f930fb7a88598ff07289c108e40ea9568a3b`  
		Last Modified: Tue, 27 Oct 2026 23:03:56 GMT  
		Size: 43.3 MB (43340994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45beab588c2115a45d58cb6eab918d433478c7dbbef7d92f37cba8577cf68bd`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f4a352e310ffb8a93987326f53c0de896ff11e6a2ff1eea5ff3e7d53ecbdd0`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 342.2 KB (342171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82a5f4fcc0e72594b3ae2c9f480fa94be4c163c60eb901be1efe8af9a3b22da`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3514708ffcd88eb748540b2377d36f6f66979a9a404466596eef1f4ddc267a9f`  
		Last Modified: Tue, 27 Oct 2026 23:04:00 GMT  
		Size: 73.8 MB (73799496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff0d49c8c867b9582a5632680730d342eb19e9b2312e19c6d15dd7d0c6224a5`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9ab2e56e2d098ba7b923d3900c3a059128580601b8c4330b3ce30e9801c480`  
		Last Modified: Thu, 05 Nov 2026 18:54:29 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65b8a891d239d53a8974688b221304c7560ebdbbfd82a019bd055f295d44192`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792e2e2b39b4dd9c9c9c571462238ef17d5af5ac4ddd4b5d66fd6fa8cfe2c4ee`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb594f57a5fb2306703fce5e22bcd0a0ccb5b0e92fe12f50d71de5b2da826c1e`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0850508e52ef599053526680e30927a065d297bd0fc01bcc6eb20f754de41af2`  
		Last Modified: Thu, 05 Nov 2026 18:54:29 GMT  
		Size: 2.5 MB (2476586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149a6383ffbf32a8756510d52ecb475ef4a6fb14b5a146d9165cae7ecc4944d3`  
		Last Modified: Thu, 05 Nov 2026 18:54:28 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:latest`

```console
$ docker pull caddy@sha256:dee6bce21b6c3d17c78805046901f9558f0bcfe9d3853f26ab7eb5cf06021ba4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
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
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `caddy:latest` - linux; amd64

```console
$ docker pull caddy@sha256:fc9cbc100585871d18d4e451cca7021785c90a7006087427ae5ceb3e4efe6424
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24793574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5813f7eb9b94fac4970f9f576695fe1ed1d53d41586fd3eaa350caf7c4627d9c`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:37:06 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Thu, 05 Nov 2026 19:37:07 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Thu, 05 Nov 2026 19:37:08 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 19:37:08 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='0e85544340290a16ce4bfb76fe7d65e9de1bf3a6e67f5ccfff30b30d27ea4c73e078077b7bf3e58ae60b6b12e44327705287059c775bca5782e8ee85ea7edd75' ;; 		armhf)   binArch='armv6'; checksum='bfd9b415660caccaf5efbba2a8828eb9e61e31609ee6a62d532e70ef1f419e2ba420fdfd1e16c13e4896c33557813f87fddc849de57400eac34c4635f413bc0c' ;; 		armv7)   binArch='armv7'; checksum='ea042518bfb5eec5070a3119430263ae920b2d1e878c733a80d3d0ced1168afe5816362f295de46915d651a67f31f4d8a67ac67326f507d90cda71274b8ee689' ;; 		aarch64) binArch='arm64'; checksum='9e5e76d7888542924de2c25353ae87c5f77e2a22c5b1198633cae13688922282e05383d142599205c88d8d80eee5e967d291214d7abce4835329a191b20dd6e0' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='9b95cfa058e9651c0738179c6c18d0a93eb9c491e5c9ed3d95f30b23e1c9324e739bbf91a3ac0ebf91aaff89e25de1cff22f127484be937c0089b079266cd37f' ;; 		riscv64) binArch='riscv64'; checksum='52c9750b091a297766f2faaa01955eb894b614f4b94a9a418632d67f65f942e5363681869de0a6434d87482ac611f5c228282c23c6a90349085bb17aa3eff686' ;; 		s390x)   binArch='s390x'; checksum='213186130eeab27bc8fff06f4a6cffb253b36f719166c6cb12c539b4432186d6f7938847547a4e5cf47b1525424fdc74813950f08b928f788b7402127eb30e6b' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Thu, 05 Nov 2026 19:37:08 GMT
ENV XDG_CONFIG_HOME=/config
# Thu, 05 Nov 2026 19:37:08 GMT
ENV XDG_DATA_HOME=/data
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:37:08 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[443/udp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
EXPOSE map[2019/tcp:{}]
# Thu, 05 Nov 2026 19:37:08 GMT
WORKDIR /srv
# Thu, 05 Nov 2026 19:37:08 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d6974dbf71e422d13654405f502ff60ea306943b999003c012ecc6dd93d317`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 2.8 MB (2798840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a802d3a0a957e15ac518be2f3f3e786b9965895265888c3390753c81d1c085`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 7.5 KB (7501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5000c332a1cc372a1a248c2923696c0bc7817d213f2db0f4161fc18a3fc17cd7`  
		Last Modified: Thu, 05 Nov 2026 19:37:16 GMT  
		Size: 18.1 MB (18133528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:latest` - unknown; unknown

```console
$ docker pull caddy@sha256:38891e0175dd27a9b2c2a9e7314b356b0477f0002302bbeb51ccc87491f83abf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.6 KB (334614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a48c1497cac67279989d2b2c55010f2ed2546887974c8dfeee774c8cb204f5d`

```dockerfile
```

-	Layers:
	-	`sha256:f4183d0ed1bf0fc5c8a612569bbfe4bd35053c401ddec3523acf17101a388fd5`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 316.2 KB (316187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed4aeb1ef3c37f8dd726324c7a8739e6a1dcf890a00af32bf17ea28558f0b0bb`  
		Last Modified: Thu, 05 Nov 2026 19:37:15 GMT  
		Size: 18.4 KB (18427 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:latest` - linux; arm variant v6

```console
$ docker pull caddy@sha256:2ff7d8bd4c710ca24cee8553653e81236fdff5eac3258b319d1f3a8c9c90e1b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23531358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46e92b0833bac59556797e076e62d1e55e29d47edd40f1d1127b2837556d4529`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:55:45 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:55:45 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:55:47 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:55:47 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:55:47 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:55:47 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:55:47 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:55:47 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:55:47 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:55:47 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:55:47 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:55:47 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:55:47 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ff5ed468f4efb91ff9789ce83f3ddf01ffd2fb0b6fc960f72960fd6491b771`  
		Last Modified: Wed, 04 Nov 2026 17:55:53 GMT  
		Size: 2.7 MB (2723763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6987a10766febd34eccb10c8cfd6ed45b4dbc7543f2f279c007430465248cd5e`  
		Last Modified: Wed, 04 Nov 2026 17:55:52 GMT  
		Size: 7.5 KB (7498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d2de185c946d96bd1f952450842f74c1e1456eaaed32c45e2c2453477d635a`  
		Last Modified: Wed, 04 Nov 2026 17:55:53 GMT  
		Size: 17.2 MB (17241774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:latest` - unknown; unknown

```console
$ docker pull caddy@sha256:b4d1fa4fd97be630b03ed7777f8d64b950b535a23568ba53ea68c9c4e8b4b533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 KB (18352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36929c847918c1d3bcc1a0a94c3670d9ca097bba6ff84631b35b6cc94d226189`

```dockerfile
```

-	Layers:
	-	`sha256:2685aa767d9f0cc12f38fe5b24dd8fb7d6aa4fd629476527c5fb5f9839998455`  
		Last Modified: Wed, 04 Nov 2026 17:55:52 GMT  
		Size: 18.4 KB (18352 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:latest` - linux; arm variant v7

```console
$ docker pull caddy@sha256:6071525234f574e3000519dde9d25abfd4c089236956a24f2e0984b0cfa0695d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23092436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b321be350ac394b2b447774810803eba1fdaf731137388ea78e0494454a523`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:56:00 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:56:01 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:56:03 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:03 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:56:03 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:56:03 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:56:03 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afc8c568af13a7e8edac14d90a6dc6b10c007b4c156e7169017c0dc3f3a98faf`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 2.6 MB (2596752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27dff964349b9f016fff9f0a401da75a95f9e4fce26ac4bfa94bb9c1dc6afb16`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 7.5 KB (7499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3faea2288b2bcf4c48c14e2a5fed69d4aa014fe1a3fc1806b8eb10f663b045a2`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 17.2 MB (17221493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:latest` - unknown; unknown

```console
$ docker pull caddy@sha256:bafe8101cc3628601a617b071b54dc33b676af3be1d88a0f1bad4b4c01436638
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.2 KB (334172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:469cbdf0a43a3b348b602651aa2aa2460c545e0a527950248c722eba4c1e6fac`

```dockerfile
```

-	Layers:
	-	`sha256:0b8e772e6707b2c953c84db65f6fc0c700d43d80350eac9883d213585e518be7`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 315.6 KB (315605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21e8a360f5a935352045f20a4c4a2253e333180b840eeaafe42be297baf42274`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 18.6 KB (18567 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:latest` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:d48486623b1522f9e6d0fd0407e2929eb66bf2cc5bfbf71c2d89611d6fd24c35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23504341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a73eea10ae6ad4918f4dcbaf33fac04a70713c92d1f191eac79c3c5114eb55`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:56:01 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:56:02 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:56:03 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:56:03 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:56:03 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:56:03 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:56:03 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:56:03 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:56:03 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873b94e511f0ec80ec6cce86c968b610d228a774642b83f1a326d66ee6ae3aa8`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 2.8 MB (2814373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6d1df8fdd49da33b1d28007fdd1b07e242c84c67de3a92c2b7c7e9b847ef08d`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 7.5 KB (7499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8c8f8ce0e89504c960b22c3185bfb6e05eee0d897d84cfd010a12c70854ab9`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 16.5 MB (16491949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:latest` - unknown; unknown

```console
$ docker pull caddy@sha256:10730ad845a1ca6297f672954ed94457459be6e4ff5f8b68e775baa4f75fbb9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.3 KB (334252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93401ef29b5158eba16ec2ba44339cea6bdbaa7055e899b5a5c96b2e88cf290a`

```dockerfile
```

-	Layers:
	-	`sha256:c6400d8de2626b662e1e17c25df8375093495be746b3bbb65131e69fa1d9db9d`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 315.6 KB (315641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3a7e9f8ef8acc4ede2bdc6185b5ac8c1b482add58b99147135f950c3cf22e80`  
		Last Modified: Wed, 04 Nov 2026 17:56:10 GMT  
		Size: 18.6 KB (18611 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:latest` - linux; ppc64le

```console
$ docker pull caddy@sha256:ff88079998a1d0ba6f228c328559d4e62ba3e23af23e03b07a03c26a76e564cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23289477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5c541ac1e43db67305c3cdca64c7fb798ca25eb4dd6f4035bd72ea6a1a0f8e6`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:54:56 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:55:21 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:55:33 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:55:33 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:55:33 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:55:33 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:55:33 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:55:33 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:55:33 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:55:33 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:55:33 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:55:44 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:55:44 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4802e0decc07b315032252b6be29a6e3794399b42e3d4217eb2e19810c3174`  
		Last Modified: Wed, 04 Nov 2026 17:56:17 GMT  
		Size: 2.9 MB (2932250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad41792dfa73ceb9d83ad15b8ab9cc0b2be12338d4a1e9d082b7bf78ef8fade3`  
		Last Modified: Wed, 04 Nov 2026 17:56:18 GMT  
		Size: 7.5 KB (7503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40aa986fbe3a1df875e66d40afcb7c0845e6d3af591ce6999bb3661561c10657`  
		Last Modified: Wed, 04 Nov 2026 17:56:19 GMT  
		Size: 16.5 MB (16528870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:latest` - unknown; unknown

```console
$ docker pull caddy@sha256:c20b862368bf90b1e3fa1587d2c114a4941eb3c1675fe097d251307148ab490a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.1 KB (334095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:199a982489ac400a96711f5035dc7ec32172db2c39b9769e2e3651849822dc84`

```dockerfile
```

-	Layers:
	-	`sha256:3146ebe2743ac7948ef787e58eba77453e7e520d64bb62dea3f5d92a536dcc73`  
		Last Modified: Wed, 04 Nov 2026 17:56:17 GMT  
		Size: 315.6 KB (315594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:758b0113ca1d278b827b18662633a6cdcf77d0203e6604905e9f5c7d1e526c8a`  
		Last Modified: Wed, 04 Nov 2026 17:56:17 GMT  
		Size: 18.5 KB (18501 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:latest` - linux; riscv64

```console
$ docker pull caddy@sha256:77a5533e54c81871e933687658b5d6a44265e75bae69bb6375a91383c1ffb76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23763391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877017629382ecdaf48df46afb54ec03844ec812855b044082cd22e0bb863afb`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 07:00:19 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Thu, 05 Nov 2026 07:00:21 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Thu, 05 Nov 2026 07:00:27 GMT
ENV CADDY_VERSION=v2.11.8
# Thu, 05 Nov 2026 07:00:27 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Thu, 05 Nov 2026 07:00:27 GMT
ENV XDG_CONFIG_HOME=/config
# Thu, 05 Nov 2026 07:00:27 GMT
ENV XDG_DATA_HOME=/data
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 07:00:27 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 07:00:27 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 07:00:27 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 07:00:27 GMT
EXPOSE map[443/udp:{}]
# Thu, 05 Nov 2026 07:00:27 GMT
EXPOSE map[2019/tcp:{}]
# Thu, 05 Nov 2026 07:00:28 GMT
WORKDIR /srv
# Thu, 05 Nov 2026 07:00:28 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b243dd3f78be3ff66be2edf51b3320f33932a2643de0382aabcc7451cc1d102`  
		Last Modified: Thu, 05 Nov 2026 07:01:29 GMT  
		Size: 2.9 MB (2930615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc3453e8adac8cf5a49ad6b057cb143688903d1c8637e7239f90f6dad8301b2f`  
		Last Modified: Thu, 05 Nov 2026 07:01:29 GMT  
		Size: 7.5 KB (7502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f9223ac75c6a1a12d29241638f981c0cb6eff5ecc027e6e6483675e06634f8a`  
		Last Modified: Thu, 05 Nov 2026 07:01:32 GMT  
		Size: 17.2 MB (17244595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:latest` - unknown; unknown

```console
$ docker pull caddy@sha256:bbfe7db37148fedff73b048d06c8d440079103765bb26d8d3ff88f40adac4283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.1 KB (334091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7763aa7321cac96f9bc28cad61a3a46cfb05081f242f50e940de633852e6fb6b`

```dockerfile
```

-	Layers:
	-	`sha256:663bafd8bcb8c99e0a08a065c8d4e75b18baa3431df39812e3b0d9a81350d38f`  
		Last Modified: Thu, 05 Nov 2026 07:01:29 GMT  
		Size: 315.6 KB (315590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37596a9fbfe0de52e041917bd80b035bf70c1e11ce758b6784fe5e5796dd5316`  
		Last Modified: Thu, 05 Nov 2026 07:01:29 GMT  
		Size: 18.5 KB (18501 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:latest` - linux; s390x

```console
$ docker pull caddy@sha256:6df2d88e242bbc40dbaae102045f3537c9d988c37f0e9f32ec5a59eb7822423b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24136179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a0ff7d133cc4fa4c0e464d8126567e1ebf625068c1141d62bf5f1fe880db72`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:54:31 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:54:32 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:54:33 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:54:33 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:54:33 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:54:33 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:54:33 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:54:33 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:54:33 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:54:33 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:54:33 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:54:33 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:54:33 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3160eca0d674aa6dbbfbfce3c9df7ef11c85e6f658ace8c027ebd1cdfc53b99f`  
		Last Modified: Wed, 04 Nov 2026 17:54:44 GMT  
		Size: 2.9 MB (2914741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b8a8eb35c9fb4d61cdc88a7ac4008899c342f64f54f2efbaaba9233e84204c5`  
		Last Modified: Wed, 04 Nov 2026 17:54:44 GMT  
		Size: 7.5 KB (7502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd224a2dd4702f0fd00b7dcac7d191597019c51cd31aaf6b5b3027d03d3c2ca`  
		Last Modified: Wed, 04 Nov 2026 17:54:45 GMT  
		Size: 17.5 MB (17494194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:latest` - unknown; unknown

```console
$ docker pull caddy@sha256:c921ef6152f997e93b113fa249d92639e3052271393487a1d21d132010d8296f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 KB (333964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c8c7ccc5c9c0fcfb60339b5665c7ff2f5622c8631d90cc253054a58282eb578`

```dockerfile
```

-	Layers:
	-	`sha256:cea63384879323dcf292cc0507cda1a549a1e9c4a2ef78fb2184459fdc48e811`  
		Last Modified: Wed, 04 Nov 2026 17:54:44 GMT  
		Size: 315.5 KB (315536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de008cdae2ba256db19a07f3b77749db37b6707673cab309b7506175ed0f3d70`  
		Last Modified: Wed, 04 Nov 2026 17:54:44 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:latest` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:95abf9d14aaade6d55fc1fe67837955424c407f7c42122cf56ec269df234b976
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411640909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab973cc14b9e0c52be1b72c2f49166655cfed54fcb528bb66f89be6dcdea52d`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Thu, 05 Nov 2026 18:48:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:50:14 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:50:15 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:31 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:31 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:32 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:35 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:38 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:41 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:42 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:50:58 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:50:58 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3105b031b17a07724dd061a02beeb8696051059e004ecd9ed26a9e17fa3cdc02`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6906576f53243cb11c77a99856afa7453fea514a6239d8daad6968e7a25cba`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 390.9 KB (390919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066b4e49953291e1e590b8dc069208ed71f03d794a65a73813cb94d3655ec8f6`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f696f899da47fb0fca096725494a65fa4db2ed97ad592f434625bbf012bf4ccf`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 18.8 MB (18842906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61509ec5d34e9f0c9171bdaa8e0f889d0ae0266be4be408c271535c594f26c1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad5baa2304ae76c673dfcc132b4d9f5ed56a9c843984069ec22db953f24e183`  
		Last Modified: Thu, 05 Nov 2026 18:51:07 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf73fb3dacde170edc236e1c1f5e252519e2bba968312caa5570f79dd63be52`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9609d2b97073146c6468eedb5f32415c8a4cea9ca99c0602ccec800de92daf`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f857ee3127ebcc1c023b71b6e00845ff2e591296da1c03b77239054ce73059c7`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492801772255ddb526037e2a61f6e3f699aa4bfd695d5d2e844f6b041120e3b4`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fc7a0cadb49e63446196633584282ca5d0c21670b9f6a1303cc898819a5939`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4934c1a327b2efa689cf58a31640d074993b68ea01d8a3dc6f84b7aba9f7c40b`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421fbfd0d299f828ca293b67045a58a1398a41a480f918db09529c7720ba005e`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6808f4fa8c3f137ea2fe98d8343b4cd850d351a6c24415d6c7af9087023ca853`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc9e06eb01a305ee8abe1f8ad9e360461382e96f40fe09fe66638366d2b3921`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4771a13f86c4e0005351f8cf24a7199b26f48a8aca82fa482712118a2bd1f006`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc5ee75a0594ffb8e38f738cf42f1829027f8569736758d0d7b97265642a34a`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1be9f4dc4e64883d35c8a23d7396f2e832c32ef0bdbbf4bbca5cc99be26a3cf`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e9fcd3b3e14a5fede69ab9fee080810c9d6869d863c0c40b8109dbeb33bc10`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 336.2 KB (336222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad69e21d7b060686c53a003a33e3f7b9f3bcf502846a49bb9ffaa3ecf4b55167`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:latest` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:2cc1f16a110963701a69a8093e051d1e6a68775f92423e05076fa8ac137525c2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2246593231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81d2947c39b363c1833583c76c91cafe62b764e5397a4d58ebd31dee62c2460`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Thu, 05 Nov 2026 18:48:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:49:53 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:49:54 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:24 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:26 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:27 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:29 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:30 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:32 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:42 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:51:03 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:51:04 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a008cba775e8dd0fa98285e50e68016c6e59c9c7d78331b024d243c8028b4cbc`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2d491895f80263abfd15f22c5c30039fa3ebd8d83087a2433cb846961153e1`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 371.5 KB (371473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5358c2eea08f8a9d209da01918bf15f92d5f2604b8bd529de0691bbbaabe927`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f303a38c5095af4de86858b6f2fedefdb9854cd41e24cb7b7f6e0de3e51e36`  
		Last Modified: Thu, 05 Nov 2026 18:51:17 GMT  
		Size: 18.8 MB (18820643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e592ad193121b2d1f6737f2fc89e24d03e9d33d6cca8e7add2957ccf57b9c61`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25fe4e292b538b454f7496f886418773ff60ff66c6837656d45cc2eb319ad3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a510990588c53fcf965e7ef95cd6e4765af69ddff30a9b85537cd50c39eee3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66d18fd2f2ee4d3baba1e5f3770dbed152867afeb50caad16c8ef145e17a6a2`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c670bb7e8fef2b7d9e51de98054eedf8577c01c8dab3f5307e26ad849db0ab39`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500888919d78c692c88bcec1ff4727723df54e3e34385d05da99c27285ee455f`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cdcae9d52f42f49f9a70d23426fc1feceede855ea6a0748f5f8663a35be90a`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7210618d2f93291160433de49867d5821e996bd5f005cc6c2b36801e9820829d`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790aa499060b9807135ef195885142b4c146bb6b428a843e2d8f79e595bb15f3`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07378ecb425dbafad024761d9bb5f11c3102ab26215b09dd90548401cfdbffc`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bb0f5976c9b254675a71ddc0e556c3e8c57376ad629f3a9431fb344eb0ac46`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23012e55c65156794576b8d2534079d31f2adad56300fb59cdeec1f58391db4`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6049bd500c5b62b0a05932db59f93ba3b7324a26e40d0c7e0708070abf5a4da9`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e3314e91f873e91dae6f3f2edceadb9449a46ef807bb118819fe75d83c8bb1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265b4d1fd5b55896df277baa4c1db1204b11578f29e866d4ad6afb1bc93f976b`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 322.8 KB (322785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48a65dcbe82d2fa7112e338b77c64a167952bea5d360d7a0b3587b835dbb9d69`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:nanoserver`

```console
$ docker pull caddy@sha256:69f081326e11d5de2bc6c36c49f7ff6ada1ca0d0bea17ecc5eeea8dd430beb68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `caddy:nanoserver` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:52c08ac30210f7dd3f8797086ed8ac9250a0bd2c1f819fce3ec17bb43b550405
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219049983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d510733a0955a2dba4581ac8a3dbe4fefbc470008b16142b7e3e5fd68585a5da`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Thu, 05 Nov 2026 19:10:17 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Thu, 05 Nov 2026 19:10:18 GMT
RUN cmd /S /C #(nop) COPY file:f6fd9f7c8bd53ad2dea712d2b3468beaa8adaf6a9b8689f2f467c74c0f14078e in c:\caddy.exe 
# Thu, 05 Nov 2026 19:10:25 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Thu, 05 Nov 2026 19:10:29 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Thu, 05 Nov 2026 19:10:30 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 19:10:30 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:10:34 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:10:35 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:10:35 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Thu, 05 Nov 2026 19:10:37 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Thu, 05 Nov 2026 19:10:41 GMT
RUN caddy version
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddb22bef6de03c70812651b09b9821db3663cf45ff609907d10b9223c206e91`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 70.2 KB (70167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6273d9e342a51812fe6a306da942b6b9dbe8ae64128c1178a19252af4436b594`  
		Last Modified: Thu, 05 Nov 2026 19:10:53 GMT  
		Size: 18.5 MB (18498144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e65ef40e0b391980a2212b18173e33196f175d022677d8bf80196a25a27764ed`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 286.7 KB (286666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc2e4903cde3fdce7a882b066fe815f3c9bd7723bb1476ea6679f6ecefb781`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 110.6 KB (110556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7331d4d3ee891076ae62d845a7e716f975c8a172163ddcacf7a86a214d95f06b`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9cef09dbb1fce3303467532de78e107af35c09effe992c0c5b3f75fb4241d03`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7edd05c17a313dafe0ddc9d3c214f97b11cb340eb9052a7ebd18e46081fe5645`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5d7a4be40b85550ab5f630d17e44de58f0a5aed45ab517e19bb00b9b0a8d69`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ce06190fbf60c8b77d7d8395c6989896257f9d10fba71bd66b6fe1601b8122`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a85c2a042f8a082426f33de5baf817710599a44f092127bea8884df81e3e31`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd21175cf9bb40435e4283e25efbd5f8de0fa6696a4a7dcc1e409b35f1cef5ad`  
		Last Modified: Thu, 05 Nov 2026 19:10:48 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29396bba1f2c855cfde8454974891af94bf1de63f44dad9188b8e07a4aa6312`  
		Last Modified: Thu, 05 Nov 2026 19:10:47 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78531b08c4180ca18873517da84cc773b54b5956abe1dc0cf4d8c94dd68cf57c`  
		Last Modified: Thu, 05 Nov 2026 19:10:47 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850a9a9b73ee169356776de2a8b429f6f1732c66db7a036ca95a5a9493792eab`  
		Last Modified: Thu, 05 Nov 2026 19:10:48 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8636cc7c7957d3ec336e4fbb74ed197ac2de19d4b42db105b7cd462d40d9faf`  
		Last Modified: Thu, 05 Nov 2026 19:10:47 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71abcd22f3b21f1e95a509b2fe5f71af0bb4d40addb2f7105de2d49737e39b95`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f1f2d196935066aa2ef719631b3b557d1ace896db7ed0d60d439d2360f557`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdf3a91e2c46286142913d3f7a62f79dfb0f164e0063e1e3a24ae938b92d6cb`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73cad6dc76af673edc78125074e804abc99510c3b6e31b79bc2d5cf55eb1624`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 110.0 KB (109952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d227e39196c67b43f84f423ddda30d3e817ff1b3a4053613285525b20cfcb3d`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:56b01f793a8128ee887d3e64de342dd3f2000a638ac1b4e7db29f2eb4bcb6284
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (145040802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d6191e2fc28e32c185f501fbd9572ebcf4e2a14ad065271c3337800994d629c`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Thu, 05 Nov 2026 19:10:13 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Thu, 05 Nov 2026 19:10:14 GMT
RUN cmd /S /C #(nop) COPY file:f6fd9f7c8bd53ad2dea712d2b3468beaa8adaf6a9b8689f2f467c74c0f14078e in c:\caddy.exe 
# Thu, 05 Nov 2026 19:10:25 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Thu, 05 Nov 2026 19:10:29 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:10:37 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:10:38 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:10:39 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:10:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:10:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 05 Nov 2026 19:10:44 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Thu, 05 Nov 2026 19:10:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Thu, 05 Nov 2026 19:10:47 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Thu, 05 Nov 2026 19:10:53 GMT
RUN caddy version
# Thu, 05 Nov 2026 19:10:54 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e1d06ea3837094c8761c7a40f502ad3ad9c213d4b486704f0a133be3d23f36`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 65.7 KB (65722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02d611403e37ecc02486a51183dcf106fb194e74b539f53bc1a00f1bbef02d7`  
		Last Modified: Thu, 05 Nov 2026 19:11:05 GMT  
		Size: 18.5 MB (18498202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1a17f3d31316c91205b5a519e0fc13c47939d3cc80aae106bd10649a823c04`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 290.2 KB (290212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3248fc9eb8b3c5ca0a8c7d6e92613d1df59864d1fd999fd6918e7245f189c392`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 123.2 KB (123168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40617a87b67b23ff7cfbe9de77177d9d3c6cb4284f1e39fe4a10f6171ad1ac4c`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e53fdde1ce4c324048149b5a456caab36f2220fb554c3c224cb29e9e3fa33b`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db93c253cdba976c39879edf23f24ea82aa83905b876504043e6c3cc9de39beb`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8965ee7d0cd826aaf2b9bf9879787f2110e2e2dab8f1fedcc0e9a1a4908b3f`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c29573c1901e5ea02b5f9e28e88e7a22b70c0acf84c41f4df6c1e795786c1`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2452f6722465dd773bf66b1cd607629e8b0f1fa73e4fc9fc7850e361c34a6553`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffdfaa4722c6a480ef02a2b6d8b2febc1a780a6a9a5557bbb6d3ffeeddd3ea4`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1597c7620d13ea57db6902612b6262261a7472a43e6b51a415418f0948523908`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fca5741b400358f371bb2758d52b63990bf9fe6613de999ccccd67b9bae200`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad096f0eeb95189cb63225d7b5873ab5d1e783703e639614a5aad4b23b880f1c`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c0adb7da06b7e605d03e094aad1033bc43abb83e9b59ecbcd8168abf0baa00`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8fe49479fc270257c4ca6cd3ce110e48008b6c06b1238b4c37fee4a39bf7b1`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa9a4eb0fa03b7c97b076bbccb045c37ba876eb6562c74449bb13fd5c309eb9`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10f275be5ed1abde3b084de91ae3a4a44c3334c0d8434366c30c953ae63460d`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fba564c3db312cd1674228848c185b36885e03927345eb02c84fee49d9bd6d2`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 121.0 KB (120982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc99724b66359e0703518bd1f7fa181f2563be2605953b7c7bc6641b51624d1`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:nanoserver-ltsc2022`

```console
$ docker pull caddy@sha256:d2d8348d9c32aa61453875bf150b1dafce34d416c9195267d80f4a6e9eaed07b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `caddy:nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:56b01f793a8128ee887d3e64de342dd3f2000a638ac1b4e7db29f2eb4bcb6284
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (145040802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d6191e2fc28e32c185f501fbd9572ebcf4e2a14ad065271c3337800994d629c`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Thu, 05 Nov 2026 19:10:13 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Thu, 05 Nov 2026 19:10:14 GMT
RUN cmd /S /C #(nop) COPY file:f6fd9f7c8bd53ad2dea712d2b3468beaa8adaf6a9b8689f2f467c74c0f14078e in c:\caddy.exe 
# Thu, 05 Nov 2026 19:10:25 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Thu, 05 Nov 2026 19:10:29 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:10:37 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:10:38 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:10:39 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:10:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:10:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 05 Nov 2026 19:10:44 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Thu, 05 Nov 2026 19:10:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Thu, 05 Nov 2026 19:10:47 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Thu, 05 Nov 2026 19:10:53 GMT
RUN caddy version
# Thu, 05 Nov 2026 19:10:54 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e1d06ea3837094c8761c7a40f502ad3ad9c213d4b486704f0a133be3d23f36`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 65.7 KB (65722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02d611403e37ecc02486a51183dcf106fb194e74b539f53bc1a00f1bbef02d7`  
		Last Modified: Thu, 05 Nov 2026 19:11:05 GMT  
		Size: 18.5 MB (18498202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1a17f3d31316c91205b5a519e0fc13c47939d3cc80aae106bd10649a823c04`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 290.2 KB (290212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3248fc9eb8b3c5ca0a8c7d6e92613d1df59864d1fd999fd6918e7245f189c392`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 123.2 KB (123168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40617a87b67b23ff7cfbe9de77177d9d3c6cb4284f1e39fe4a10f6171ad1ac4c`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e53fdde1ce4c324048149b5a456caab36f2220fb554c3c224cb29e9e3fa33b`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db93c253cdba976c39879edf23f24ea82aa83905b876504043e6c3cc9de39beb`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8965ee7d0cd826aaf2b9bf9879787f2110e2e2dab8f1fedcc0e9a1a4908b3f`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c29573c1901e5ea02b5f9e28e88e7a22b70c0acf84c41f4df6c1e795786c1`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2452f6722465dd773bf66b1cd607629e8b0f1fa73e4fc9fc7850e361c34a6553`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffdfaa4722c6a480ef02a2b6d8b2febc1a780a6a9a5557bbb6d3ffeeddd3ea4`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1597c7620d13ea57db6902612b6262261a7472a43e6b51a415418f0948523908`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fca5741b400358f371bb2758d52b63990bf9fe6613de999ccccd67b9bae200`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad096f0eeb95189cb63225d7b5873ab5d1e783703e639614a5aad4b23b880f1c`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c0adb7da06b7e605d03e094aad1033bc43abb83e9b59ecbcd8168abf0baa00`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8fe49479fc270257c4ca6cd3ce110e48008b6c06b1238b4c37fee4a39bf7b1`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa9a4eb0fa03b7c97b076bbccb045c37ba876eb6562c74449bb13fd5c309eb9`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10f275be5ed1abde3b084de91ae3a4a44c3334c0d8434366c30c953ae63460d`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fba564c3db312cd1674228848c185b36885e03927345eb02c84fee49d9bd6d2`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 121.0 KB (120982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc99724b66359e0703518bd1f7fa181f2563be2605953b7c7bc6641b51624d1`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:nanoserver-ltsc2025`

```console
$ docker pull caddy@sha256:f3a662bcf43bcc21cff24811fe7f0a70d762d6bacd747c83dae7a97d6f5115b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `caddy:nanoserver-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:52c08ac30210f7dd3f8797086ed8ac9250a0bd2c1f819fce3ec17bb43b550405
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219049983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d510733a0955a2dba4581ac8a3dbe4fefbc470008b16142b7e3e5fd68585a5da`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Thu, 05 Nov 2026 19:10:17 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Thu, 05 Nov 2026 19:10:18 GMT
RUN cmd /S /C #(nop) COPY file:f6fd9f7c8bd53ad2dea712d2b3468beaa8adaf6a9b8689f2f467c74c0f14078e in c:\caddy.exe 
# Thu, 05 Nov 2026 19:10:25 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Thu, 05 Nov 2026 19:10:29 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Thu, 05 Nov 2026 19:10:30 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 19:10:30 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:10:34 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:10:35 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:10:35 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Thu, 05 Nov 2026 19:10:37 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Thu, 05 Nov 2026 19:10:41 GMT
RUN caddy version
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddb22bef6de03c70812651b09b9821db3663cf45ff609907d10b9223c206e91`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 70.2 KB (70167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6273d9e342a51812fe6a306da942b6b9dbe8ae64128c1178a19252af4436b594`  
		Last Modified: Thu, 05 Nov 2026 19:10:53 GMT  
		Size: 18.5 MB (18498144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e65ef40e0b391980a2212b18173e33196f175d022677d8bf80196a25a27764ed`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 286.7 KB (286666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc2e4903cde3fdce7a882b066fe815f3c9bd7723bb1476ea6679f6ecefb781`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 110.6 KB (110556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7331d4d3ee891076ae62d845a7e716f975c8a172163ddcacf7a86a214d95f06b`  
		Last Modified: Thu, 05 Nov 2026 19:10:51 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9cef09dbb1fce3303467532de78e107af35c09effe992c0c5b3f75fb4241d03`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7edd05c17a313dafe0ddc9d3c214f97b11cb340eb9052a7ebd18e46081fe5645`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5d7a4be40b85550ab5f630d17e44de58f0a5aed45ab517e19bb00b9b0a8d69`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ce06190fbf60c8b77d7d8395c6989896257f9d10fba71bd66b6fe1601b8122`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a85c2a042f8a082426f33de5baf817710599a44f092127bea8884df81e3e31`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd21175cf9bb40435e4283e25efbd5f8de0fa6696a4a7dcc1e409b35f1cef5ad`  
		Last Modified: Thu, 05 Nov 2026 19:10:48 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29396bba1f2c855cfde8454974891af94bf1de63f44dad9188b8e07a4aa6312`  
		Last Modified: Thu, 05 Nov 2026 19:10:47 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78531b08c4180ca18873517da84cc773b54b5956abe1dc0cf4d8c94dd68cf57c`  
		Last Modified: Thu, 05 Nov 2026 19:10:47 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850a9a9b73ee169356776de2a8b429f6f1732c66db7a036ca95a5a9493792eab`  
		Last Modified: Thu, 05 Nov 2026 19:10:48 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8636cc7c7957d3ec336e4fbb74ed197ac2de19d4b42db105b7cd462d40d9faf`  
		Last Modified: Thu, 05 Nov 2026 19:10:47 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71abcd22f3b21f1e95a509b2fe5f71af0bb4d40addb2f7105de2d49737e39b95`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f1f2d196935066aa2ef719631b3b557d1ace896db7ed0d60d439d2360f557`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdf3a91e2c46286142913d3f7a62f79dfb0f164e0063e1e3a24ae938b92d6cb`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73cad6dc76af673edc78125074e804abc99510c3b6e31b79bc2d5cf55eb1624`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 110.0 KB (109952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d227e39196c67b43f84f423ddda30d3e817ff1b3a4053613285525b20cfcb3d`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:windowsservercore`

```console
$ docker pull caddy@sha256:dc5598fddf05d80360663cb0e872500af9db218dc9dd72a2313593e0129789ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `caddy:windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:95abf9d14aaade6d55fc1fe67837955424c407f7c42122cf56ec269df234b976
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411640909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab973cc14b9e0c52be1b72c2f49166655cfed54fcb528bb66f89be6dcdea52d`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Thu, 05 Nov 2026 18:48:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:50:14 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:50:15 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:31 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:31 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:32 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:35 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:38 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:41 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:42 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:50:58 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:50:58 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3105b031b17a07724dd061a02beeb8696051059e004ecd9ed26a9e17fa3cdc02`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6906576f53243cb11c77a99856afa7453fea514a6239d8daad6968e7a25cba`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 390.9 KB (390919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066b4e49953291e1e590b8dc069208ed71f03d794a65a73813cb94d3655ec8f6`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f696f899da47fb0fca096725494a65fa4db2ed97ad592f434625bbf012bf4ccf`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 18.8 MB (18842906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61509ec5d34e9f0c9171bdaa8e0f889d0ae0266be4be408c271535c594f26c1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad5baa2304ae76c673dfcc132b4d9f5ed56a9c843984069ec22db953f24e183`  
		Last Modified: Thu, 05 Nov 2026 18:51:07 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf73fb3dacde170edc236e1c1f5e252519e2bba968312caa5570f79dd63be52`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9609d2b97073146c6468eedb5f32415c8a4cea9ca99c0602ccec800de92daf`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f857ee3127ebcc1c023b71b6e00845ff2e591296da1c03b77239054ce73059c7`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492801772255ddb526037e2a61f6e3f699aa4bfd695d5d2e844f6b041120e3b4`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fc7a0cadb49e63446196633584282ca5d0c21670b9f6a1303cc898819a5939`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4934c1a327b2efa689cf58a31640d074993b68ea01d8a3dc6f84b7aba9f7c40b`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421fbfd0d299f828ca293b67045a58a1398a41a480f918db09529c7720ba005e`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6808f4fa8c3f137ea2fe98d8343b4cd850d351a6c24415d6c7af9087023ca853`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc9e06eb01a305ee8abe1f8ad9e360461382e96f40fe09fe66638366d2b3921`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4771a13f86c4e0005351f8cf24a7199b26f48a8aca82fa482712118a2bd1f006`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc5ee75a0594ffb8e38f738cf42f1829027f8569736758d0d7b97265642a34a`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1be9f4dc4e64883d35c8a23d7396f2e832c32ef0bdbbf4bbca5cc99be26a3cf`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e9fcd3b3e14a5fede69ab9fee080810c9d6869d863c0c40b8109dbeb33bc10`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 336.2 KB (336222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad69e21d7b060686c53a003a33e3f7b9f3bcf502846a49bb9ffaa3ecf4b55167`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:2cc1f16a110963701a69a8093e051d1e6a68775f92423e05076fa8ac137525c2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2246593231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81d2947c39b363c1833583c76c91cafe62b764e5397a4d58ebd31dee62c2460`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Thu, 05 Nov 2026 18:48:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:49:53 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:49:54 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:24 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:26 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:27 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:29 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:30 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:32 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:42 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:51:03 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:51:04 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a008cba775e8dd0fa98285e50e68016c6e59c9c7d78331b024d243c8028b4cbc`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2d491895f80263abfd15f22c5c30039fa3ebd8d83087a2433cb846961153e1`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 371.5 KB (371473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5358c2eea08f8a9d209da01918bf15f92d5f2604b8bd529de0691bbbaabe927`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f303a38c5095af4de86858b6f2fedefdb9854cd41e24cb7b7f6e0de3e51e36`  
		Last Modified: Thu, 05 Nov 2026 18:51:17 GMT  
		Size: 18.8 MB (18820643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e592ad193121b2d1f6737f2fc89e24d03e9d33d6cca8e7add2957ccf57b9c61`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25fe4e292b538b454f7496f886418773ff60ff66c6837656d45cc2eb319ad3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a510990588c53fcf965e7ef95cd6e4765af69ddff30a9b85537cd50c39eee3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66d18fd2f2ee4d3baba1e5f3770dbed152867afeb50caad16c8ef145e17a6a2`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c670bb7e8fef2b7d9e51de98054eedf8577c01c8dab3f5307e26ad849db0ab39`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500888919d78c692c88bcec1ff4727723df54e3e34385d05da99c27285ee455f`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cdcae9d52f42f49f9a70d23426fc1feceede855ea6a0748f5f8663a35be90a`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7210618d2f93291160433de49867d5821e996bd5f005cc6c2b36801e9820829d`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790aa499060b9807135ef195885142b4c146bb6b428a843e2d8f79e595bb15f3`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07378ecb425dbafad024761d9bb5f11c3102ab26215b09dd90548401cfdbffc`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bb0f5976c9b254675a71ddc0e556c3e8c57376ad629f3a9431fb344eb0ac46`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23012e55c65156794576b8d2534079d31f2adad56300fb59cdeec1f58391db4`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6049bd500c5b62b0a05932db59f93ba3b7324a26e40d0c7e0708070abf5a4da9`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e3314e91f873e91dae6f3f2edceadb9449a46ef807bb118819fe75d83c8bb1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265b4d1fd5b55896df277baa4c1db1204b11578f29e866d4ad6afb1bc93f976b`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 322.8 KB (322785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48a65dcbe82d2fa7112e338b77c64a167952bea5d360d7a0b3587b835dbb9d69`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:windowsservercore-ltsc2022`

```console
$ docker pull caddy@sha256:2298da0168ddb976b485403648a9f5f585fdfa0de3b04b380f6490413f3f59c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `caddy:windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:2cc1f16a110963701a69a8093e051d1e6a68775f92423e05076fa8ac137525c2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2246593231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81d2947c39b363c1833583c76c91cafe62b764e5397a4d58ebd31dee62c2460`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Thu, 05 Nov 2026 18:48:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:49:53 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:49:54 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:24 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:26 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:27 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:29 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:30 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:32 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:42 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:51:03 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:51:04 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a008cba775e8dd0fa98285e50e68016c6e59c9c7d78331b024d243c8028b4cbc`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2d491895f80263abfd15f22c5c30039fa3ebd8d83087a2433cb846961153e1`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 371.5 KB (371473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5358c2eea08f8a9d209da01918bf15f92d5f2604b8bd529de0691bbbaabe927`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f303a38c5095af4de86858b6f2fedefdb9854cd41e24cb7b7f6e0de3e51e36`  
		Last Modified: Thu, 05 Nov 2026 18:51:17 GMT  
		Size: 18.8 MB (18820643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e592ad193121b2d1f6737f2fc89e24d03e9d33d6cca8e7add2957ccf57b9c61`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25fe4e292b538b454f7496f886418773ff60ff66c6837656d45cc2eb319ad3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a510990588c53fcf965e7ef95cd6e4765af69ddff30a9b85537cd50c39eee3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66d18fd2f2ee4d3baba1e5f3770dbed152867afeb50caad16c8ef145e17a6a2`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c670bb7e8fef2b7d9e51de98054eedf8577c01c8dab3f5307e26ad849db0ab39`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500888919d78c692c88bcec1ff4727723df54e3e34385d05da99c27285ee455f`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cdcae9d52f42f49f9a70d23426fc1feceede855ea6a0748f5f8663a35be90a`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7210618d2f93291160433de49867d5821e996bd5f005cc6c2b36801e9820829d`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790aa499060b9807135ef195885142b4c146bb6b428a843e2d8f79e595bb15f3`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07378ecb425dbafad024761d9bb5f11c3102ab26215b09dd90548401cfdbffc`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bb0f5976c9b254675a71ddc0e556c3e8c57376ad629f3a9431fb344eb0ac46`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23012e55c65156794576b8d2534079d31f2adad56300fb59cdeec1f58391db4`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6049bd500c5b62b0a05932db59f93ba3b7324a26e40d0c7e0708070abf5a4da9`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e3314e91f873e91dae6f3f2edceadb9449a46ef807bb118819fe75d83c8bb1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265b4d1fd5b55896df277baa4c1db1204b11578f29e866d4ad6afb1bc93f976b`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 322.8 KB (322785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48a65dcbe82d2fa7112e338b77c64a167952bea5d360d7a0b3587b835dbb9d69`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `caddy:windowsservercore-ltsc2025`

```console
$ docker pull caddy@sha256:4033b7b744da419c8d150dfdcdb3cef86e4c15f721b1d1b9c55708db2e447f40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `caddy:windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:95abf9d14aaade6d55fc1fe67837955424c407f7c42122cf56ec269df234b976
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411640909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab973cc14b9e0c52be1b72c2f49166655cfed54fcb528bb66f89be6dcdea52d`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Thu, 05 Nov 2026 18:48:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:50:14 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:50:15 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:31 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:31 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:32 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:35 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:38 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:41 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:42 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:50:58 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:50:58 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3105b031b17a07724dd061a02beeb8696051059e004ecd9ed26a9e17fa3cdc02`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6906576f53243cb11c77a99856afa7453fea514a6239d8daad6968e7a25cba`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 390.9 KB (390919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066b4e49953291e1e590b8dc069208ed71f03d794a65a73813cb94d3655ec8f6`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f696f899da47fb0fca096725494a65fa4db2ed97ad592f434625bbf012bf4ccf`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 18.8 MB (18842906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61509ec5d34e9f0c9171bdaa8e0f889d0ae0266be4be408c271535c594f26c1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad5baa2304ae76c673dfcc132b4d9f5ed56a9c843984069ec22db953f24e183`  
		Last Modified: Thu, 05 Nov 2026 18:51:07 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf73fb3dacde170edc236e1c1f5e252519e2bba968312caa5570f79dd63be52`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9609d2b97073146c6468eedb5f32415c8a4cea9ca99c0602ccec800de92daf`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f857ee3127ebcc1c023b71b6e00845ff2e591296da1c03b77239054ce73059c7`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492801772255ddb526037e2a61f6e3f699aa4bfd695d5d2e844f6b041120e3b4`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fc7a0cadb49e63446196633584282ca5d0c21670b9f6a1303cc898819a5939`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4934c1a327b2efa689cf58a31640d074993b68ea01d8a3dc6f84b7aba9f7c40b`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421fbfd0d299f828ca293b67045a58a1398a41a480f918db09529c7720ba005e`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6808f4fa8c3f137ea2fe98d8343b4cd850d351a6c24415d6c7af9087023ca853`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc9e06eb01a305ee8abe1f8ad9e360461382e96f40fe09fe66638366d2b3921`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4771a13f86c4e0005351f8cf24a7199b26f48a8aca82fa482712118a2bd1f006`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc5ee75a0594ffb8e38f738cf42f1829027f8569736758d0d7b97265642a34a`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1be9f4dc4e64883d35c8a23d7396f2e832c32ef0bdbbf4bbca5cc99be26a3cf`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e9fcd3b3e14a5fede69ab9fee080810c9d6869d863c0c40b8109dbeb33bc10`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 336.2 KB (336222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad69e21d7b060686c53a003a33e3f7b9f3bcf502846a49bb9ffaa3ecf4b55167`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
