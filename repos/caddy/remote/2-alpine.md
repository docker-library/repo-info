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
