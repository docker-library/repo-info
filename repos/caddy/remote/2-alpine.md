## `caddy:2-alpine`

```console
$ docker pull caddy@sha256:ae5e525ca6773b0a4ce579c774cb39b3147e1576084139229517bdbcfe3ed812
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
$ docker pull caddy@sha256:212f01d1a8a6ff8d848e22ddc91d43cdcef8f5b8e7d18594aa85a30115ca41ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23532911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a54869734a59eb6140c1c0e1686989169883d135bae700f099485ad567d44fd`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:41:28 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Thu, 05 Nov 2026 19:41:28 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Thu, 05 Nov 2026 19:41:30 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 19:41:30 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='0e85544340290a16ce4bfb76fe7d65e9de1bf3a6e67f5ccfff30b30d27ea4c73e078077b7bf3e58ae60b6b12e44327705287059c775bca5782e8ee85ea7edd75' ;; 		armhf)   binArch='armv6'; checksum='bfd9b415660caccaf5efbba2a8828eb9e61e31609ee6a62d532e70ef1f419e2ba420fdfd1e16c13e4896c33557813f87fddc849de57400eac34c4635f413bc0c' ;; 		armv7)   binArch='armv7'; checksum='ea042518bfb5eec5070a3119430263ae920b2d1e878c733a80d3d0ced1168afe5816362f295de46915d651a67f31f4d8a67ac67326f507d90cda71274b8ee689' ;; 		aarch64) binArch='arm64'; checksum='9e5e76d7888542924de2c25353ae87c5f77e2a22c5b1198633cae13688922282e05383d142599205c88d8d80eee5e967d291214d7abce4835329a191b20dd6e0' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='9b95cfa058e9651c0738179c6c18d0a93eb9c491e5c9ed3d95f30b23e1c9324e739bbf91a3ac0ebf91aaff89e25de1cff22f127484be937c0089b079266cd37f' ;; 		riscv64) binArch='riscv64'; checksum='52c9750b091a297766f2faaa01955eb894b614f4b94a9a418632d67f65f942e5363681869de0a6434d87482ac611f5c228282c23c6a90349085bb17aa3eff686' ;; 		s390x)   binArch='s390x'; checksum='213186130eeab27bc8fff06f4a6cffb253b36f719166c6cb12c539b4432186d6f7938847547a4e5cf47b1525424fdc74813950f08b928f788b7402127eb30e6b' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Thu, 05 Nov 2026 19:41:30 GMT
ENV XDG_CONFIG_HOME=/config
# Thu, 05 Nov 2026 19:41:30 GMT
ENV XDG_DATA_HOME=/data
# Thu, 05 Nov 2026 19:41:30 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:41:30 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:41:30 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:41:30 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:41:30 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:41:30 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:41:30 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:41:30 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:41:30 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 19:41:30 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 19:41:30 GMT
EXPOSE map[443/udp:{}]
# Thu, 05 Nov 2026 19:41:30 GMT
EXPOSE map[2019/tcp:{}]
# Thu, 05 Nov 2026 19:41:30 GMT
WORKDIR /srv
# Thu, 05 Nov 2026 19:41:30 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b032c41a3f37c20bfbbc5c02d80ac1d74846dcca8292944f71ffc3e571d74039`  
		Last Modified: Thu, 05 Nov 2026 19:41:36 GMT  
		Size: 2.7 MB (2723792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad9547352a067c36add6f0267fe01a01d5a7272d184cec563e5b391ba81d6b5a`  
		Last Modified: Thu, 05 Nov 2026 19:41:36 GMT  
		Size: 7.5 KB (7497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41347bcfb960525416b4aa5dc92ed5a6642a8b4f1fc88681b7ae5672c39c796d`  
		Last Modified: Thu, 05 Nov 2026 19:41:36 GMT  
		Size: 17.2 MB (17243189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:672af181d37f6b649753d980faf7e6d8a2e8a739d6e441ddc962381c37be9779
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 KB (18352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de2ca18e608ca50b5e8690c26e3fd4c6f7f258b1afd34d32a7f3c24e5bbe7691`

```dockerfile
```

-	Layers:
	-	`sha256:4c979094997c0847f42a662c996716270eb21bc75bf49ffb6b214092aa22d878`  
		Last Modified: Thu, 05 Nov 2026 19:41:36 GMT  
		Size: 18.4 KB (18352 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-alpine` - linux; arm variant v7

```console
$ docker pull caddy@sha256:cd089201b7f688bdf591b1b4294dfa387e5a3a044b57865b56216c061e6fda3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23095171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0136f3837b1859a48381caaa7a6f53f2da85b25b1adfeaf7cef6708408714f42`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:50:36 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Thu, 05 Nov 2026 19:50:37 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Thu, 05 Nov 2026 19:50:38 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 19:50:38 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='0e85544340290a16ce4bfb76fe7d65e9de1bf3a6e67f5ccfff30b30d27ea4c73e078077b7bf3e58ae60b6b12e44327705287059c775bca5782e8ee85ea7edd75' ;; 		armhf)   binArch='armv6'; checksum='bfd9b415660caccaf5efbba2a8828eb9e61e31609ee6a62d532e70ef1f419e2ba420fdfd1e16c13e4896c33557813f87fddc849de57400eac34c4635f413bc0c' ;; 		armv7)   binArch='armv7'; checksum='ea042518bfb5eec5070a3119430263ae920b2d1e878c733a80d3d0ced1168afe5816362f295de46915d651a67f31f4d8a67ac67326f507d90cda71274b8ee689' ;; 		aarch64) binArch='arm64'; checksum='9e5e76d7888542924de2c25353ae87c5f77e2a22c5b1198633cae13688922282e05383d142599205c88d8d80eee5e967d291214d7abce4835329a191b20dd6e0' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='9b95cfa058e9651c0738179c6c18d0a93eb9c491e5c9ed3d95f30b23e1c9324e739bbf91a3ac0ebf91aaff89e25de1cff22f127484be937c0089b079266cd37f' ;; 		riscv64) binArch='riscv64'; checksum='52c9750b091a297766f2faaa01955eb894b614f4b94a9a418632d67f65f942e5363681869de0a6434d87482ac611f5c228282c23c6a90349085bb17aa3eff686' ;; 		s390x)   binArch='s390x'; checksum='213186130eeab27bc8fff06f4a6cffb253b36f719166c6cb12c539b4432186d6f7938847547a4e5cf47b1525424fdc74813950f08b928f788b7402127eb30e6b' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Thu, 05 Nov 2026 19:50:38 GMT
ENV XDG_CONFIG_HOME=/config
# Thu, 05 Nov 2026 19:50:38 GMT
ENV XDG_DATA_HOME=/data
# Thu, 05 Nov 2026 19:50:38 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:50:38 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:50:38 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:50:38 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:50:38 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:50:38 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:50:38 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:50:38 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:50:38 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 19:50:38 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 19:50:38 GMT
EXPOSE map[443/udp:{}]
# Thu, 05 Nov 2026 19:50:38 GMT
EXPOSE map[2019/tcp:{}]
# Thu, 05 Nov 2026 19:50:38 GMT
WORKDIR /srv
# Thu, 05 Nov 2026 19:50:38 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a166a66fdc739206063f62e681970e08ba059fa3163fa262b70fb81fcfe4761`  
		Last Modified: Thu, 05 Nov 2026 19:50:45 GMT  
		Size: 2.6 MB (2596789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ec4c244040dd0e735cb528353cba336a6ceef0f3241442c54d044a2f1197b0`  
		Last Modified: Thu, 05 Nov 2026 19:50:45 GMT  
		Size: 7.5 KB (7501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9550363f7cbbd45d15eafb78902a00fa7d74873beaac1f9c1985d37e20ae766`  
		Last Modified: Thu, 05 Nov 2026 19:50:46 GMT  
		Size: 17.2 MB (17223116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:cdad65debfa201ba12eac0f452aad5497e2596a5c9d6a298ff6d70a834c9dcc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.2 KB (334170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ccd8525f6d8eb6e2b42fa5108df775493bf1b8dbcdeab8bfa8738822b2564fb`

```dockerfile
```

-	Layers:
	-	`sha256:778f6cc2977df769e3835bc1e2fd1d41441671a6ada992c9cc767484ea3f918b`  
		Last Modified: Thu, 05 Nov 2026 19:50:45 GMT  
		Size: 315.6 KB (315605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66ed8d131b04dbd685453c1abcce6f93735705155d2d367a83622a865fdce656`  
		Last Modified: Thu, 05 Nov 2026 19:50:45 GMT  
		Size: 18.6 KB (18565 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-alpine` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:9ee998103a2bc0d4392bbe9738b4069da1562d6920b3cd8088cfd098a8270120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23506604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e5bf6e6409f03049c41cf4b4c29fbd27b21c8551a900bdbceef3c3a5890b9df`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:40:31 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Thu, 05 Nov 2026 19:40:32 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Thu, 05 Nov 2026 19:40:33 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 19:40:33 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='0e85544340290a16ce4bfb76fe7d65e9de1bf3a6e67f5ccfff30b30d27ea4c73e078077b7bf3e58ae60b6b12e44327705287059c775bca5782e8ee85ea7edd75' ;; 		armhf)   binArch='armv6'; checksum='bfd9b415660caccaf5efbba2a8828eb9e61e31609ee6a62d532e70ef1f419e2ba420fdfd1e16c13e4896c33557813f87fddc849de57400eac34c4635f413bc0c' ;; 		armv7)   binArch='armv7'; checksum='ea042518bfb5eec5070a3119430263ae920b2d1e878c733a80d3d0ced1168afe5816362f295de46915d651a67f31f4d8a67ac67326f507d90cda71274b8ee689' ;; 		aarch64) binArch='arm64'; checksum='9e5e76d7888542924de2c25353ae87c5f77e2a22c5b1198633cae13688922282e05383d142599205c88d8d80eee5e967d291214d7abce4835329a191b20dd6e0' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='9b95cfa058e9651c0738179c6c18d0a93eb9c491e5c9ed3d95f30b23e1c9324e739bbf91a3ac0ebf91aaff89e25de1cff22f127484be937c0089b079266cd37f' ;; 		riscv64) binArch='riscv64'; checksum='52c9750b091a297766f2faaa01955eb894b614f4b94a9a418632d67f65f942e5363681869de0a6434d87482ac611f5c228282c23c6a90349085bb17aa3eff686' ;; 		s390x)   binArch='s390x'; checksum='213186130eeab27bc8fff06f4a6cffb253b36f719166c6cb12c539b4432186d6f7938847547a4e5cf47b1525424fdc74813950f08b928f788b7402127eb30e6b' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Thu, 05 Nov 2026 19:40:33 GMT
ENV XDG_CONFIG_HOME=/config
# Thu, 05 Nov 2026 19:40:33 GMT
ENV XDG_DATA_HOME=/data
# Thu, 05 Nov 2026 19:40:33 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:40:33 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:40:33 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:40:33 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:40:33 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:40:33 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:40:33 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:40:33 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:40:33 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 19:40:33 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 19:40:33 GMT
EXPOSE map[443/udp:{}]
# Thu, 05 Nov 2026 19:40:33 GMT
EXPOSE map[2019/tcp:{}]
# Thu, 05 Nov 2026 19:40:33 GMT
WORKDIR /srv
# Thu, 05 Nov 2026 19:40:33 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e497759aee7d9c950b851bea6e1d811959081c4a4b3cf5f39a93d29116fc15`  
		Last Modified: Thu, 05 Nov 2026 19:40:40 GMT  
		Size: 2.8 MB (2814386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020ddb702a1f9fc85a74366f5fd4a440005584a112914474e7407f8f648ec0ce`  
		Last Modified: Thu, 05 Nov 2026 19:40:39 GMT  
		Size: 7.5 KB (7502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d01380b75b6b6cab3c9576b3e6b5f55a8fb00a4d253f0850a2813b9f5c463537`  
		Last Modified: Thu, 05 Nov 2026 19:40:40 GMT  
		Size: 16.5 MB (16494089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:5c48a4d71b017c280e7abe835f5061dc2e5810e9acda233cbf8ea8ee9140c430
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.3 KB (334251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5417f3f26c9b7aa20c12f4afcc5379faed6bb44e1e75938e8be61ab7bcef182e`

```dockerfile
```

-	Layers:
	-	`sha256:f16e2332dea40ed100dbf0dd2e463e1d81c4f223782921abdc7d59ced61466b4`  
		Last Modified: Thu, 05 Nov 2026 19:40:39 GMT  
		Size: 315.6 KB (315641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44b8117ba1513a48392bc77a4f637e4cd7a8fbe58d071a54706fa392be767e68`  
		Last Modified: Thu, 05 Nov 2026 19:40:39 GMT  
		Size: 18.6 KB (18610 bytes)  
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
$ docker pull caddy@sha256:5af946f6ff07e72b22b7cfffea4a7a6afb954fd4f336cdc1a33787b4b39ed9c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24140243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59b48dda171b09b0cc36e1572b2b49a7407e7b90c06e3fe9bfbe9f644575be83`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 22:06:49 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Thu, 05 Nov 2026 22:06:50 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Thu, 05 Nov 2026 22:06:52 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 22:06:52 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='0e85544340290a16ce4bfb76fe7d65e9de1bf3a6e67f5ccfff30b30d27ea4c73e078077b7bf3e58ae60b6b12e44327705287059c775bca5782e8ee85ea7edd75' ;; 		armhf)   binArch='armv6'; checksum='bfd9b415660caccaf5efbba2a8828eb9e61e31609ee6a62d532e70ef1f419e2ba420fdfd1e16c13e4896c33557813f87fddc849de57400eac34c4635f413bc0c' ;; 		armv7)   binArch='armv7'; checksum='ea042518bfb5eec5070a3119430263ae920b2d1e878c733a80d3d0ced1168afe5816362f295de46915d651a67f31f4d8a67ac67326f507d90cda71274b8ee689' ;; 		aarch64) binArch='arm64'; checksum='9e5e76d7888542924de2c25353ae87c5f77e2a22c5b1198633cae13688922282e05383d142599205c88d8d80eee5e967d291214d7abce4835329a191b20dd6e0' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='9b95cfa058e9651c0738179c6c18d0a93eb9c491e5c9ed3d95f30b23e1c9324e739bbf91a3ac0ebf91aaff89e25de1cff22f127484be937c0089b079266cd37f' ;; 		riscv64) binArch='riscv64'; checksum='52c9750b091a297766f2faaa01955eb894b614f4b94a9a418632d67f65f942e5363681869de0a6434d87482ac611f5c228282c23c6a90349085bb17aa3eff686' ;; 		s390x)   binArch='s390x'; checksum='213186130eeab27bc8fff06f4a6cffb253b36f719166c6cb12c539b4432186d6f7938847547a4e5cf47b1525424fdc74813950f08b928f788b7402127eb30e6b' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Thu, 05 Nov 2026 22:06:52 GMT
ENV XDG_CONFIG_HOME=/config
# Thu, 05 Nov 2026 22:06:52 GMT
ENV XDG_DATA_HOME=/data
# Thu, 05 Nov 2026 22:06:52 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 22:06:52 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 22:06:52 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 22:06:52 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 22:06:52 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 22:06:52 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 22:06:52 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 22:06:52 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 22:06:52 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 22:06:52 GMT
EXPOSE map[443/tcp:{}]
# Thu, 05 Nov 2026 22:06:52 GMT
EXPOSE map[443/udp:{}]
# Thu, 05 Nov 2026 22:06:52 GMT
EXPOSE map[2019/tcp:{}]
# Thu, 05 Nov 2026 22:06:52 GMT
WORKDIR /srv
# Thu, 05 Nov 2026 22:06:52 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a7317850de71a4bee83a440da46045fb0169d5a53e057b0e5738a911ae16fb6`  
		Last Modified: Thu, 05 Nov 2026 22:07:09 GMT  
		Size: 2.9 MB (2914747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4fddf90ed6794e3e3d7e752840ab797e4285b80a717adca8e45060eb88cfff`  
		Last Modified: Thu, 05 Nov 2026 22:07:08 GMT  
		Size: 7.5 KB (7498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd8c25af912dae30e47d635bdeaf62ce6f311eb6e5134afe3ef90c2f7f12f258`  
		Last Modified: Thu, 05 Nov 2026 22:07:09 GMT  
		Size: 17.5 MB (17497296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:dea9f745c1354f8ad1c7593c72de63700980e2b1acf07e5130f9314e01a3d360
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 KB (333965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b13d0bb414fec56163915afb908023bc7984abc8462236c55a404c8cc82d960d`

```dockerfile
```

-	Layers:
	-	`sha256:da468b3c9bbafabaaf66f6ab27a9319035394fc6a054004219c1a004d5a9919c`  
		Last Modified: Thu, 05 Nov 2026 22:07:08 GMT  
		Size: 315.5 KB (315536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da51a89a0d36e11c1c6c23d1da6e8063d8955c7a9610a15f9346e76e455dfd8b`  
		Last Modified: Thu, 05 Nov 2026 22:07:08 GMT  
		Size: 18.4 KB (18429 bytes)  
		MIME: application/vnd.in-toto+json
