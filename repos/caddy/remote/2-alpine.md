## `caddy:2-alpine`

```console
$ docker pull caddy@sha256:70b3180738b46cd88e49b300d790ae448a0aca3f58edef0f000bb57d619a9ab3
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
$ docker pull caddy@sha256:84202bd39c87ddba4611c3c85e7cb9c96d529bd536acf96a6d66cee4057fe8a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24793039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:857143cd0ed55376842e88df6b4a68f9b3babd8f56ee9e070bf08b23e91fd6bc`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 04 Nov 2026 17:56:58 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 04 Nov 2026 17:56:59 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 04 Nov 2026 17:57:00 GMT
ENV CADDY_VERSION=v2.11.8
# Wed, 04 Nov 2026 17:57:00 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='c863699eee84c6b410573de2ec67af81d07eb054f9020bb98f3c6cb256fea4be2fd1acfbd39110c649c3338282593bba3d3ed6424d91b7f5675e8b877a8999e9' ;; 		armhf)   binArch='armv6'; checksum='92f8653268e3eb412bdf57211b1c4c153f20da44f56f4bed73b3009b7fc288ea098f104fe55ade7226eee9bc53d4628c8e53e96fef06b10004a9a3489333a7f1' ;; 		armv7)   binArch='armv7'; checksum='e9b6f8aa0fa9b12ee7b875b5105ee4835d1c7d83ea574583d54150e340b757d4cb78157e32215dc7a820f60ecd8507cd3b2169e81e79c09954f3b91ae59c2b6e' ;; 		aarch64) binArch='arm64'; checksum='6a285426268c8f987e0c459f61dc5af3c25e663955c0e4dddc6e187722b7cdd15e4233ff0e570a4ee17b3c68d59e2a61ce96d2f6be55ea58eead6a334859557c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='a037e51b3a7d2f4f97a19e1df8e284b7f850773dfffebd80c3aede45b29f82c6b82ba9604a258e0ac9af77b7185b1ce7819bc7033e35339f6b830d80f4761096' ;; 		riscv64) binArch='riscv64'; checksum='5b90fc0b8a509a7320375e03203b70e454488cbefc7e46acc7d877fe1635b1753ee0b33516fd3bb4c46b5c33d7976ceb38ed42b1470112efdfe0c9479b10458a' ;; 		s390x)   binArch='s390x'; checksum='ed65138dffbc9c1437d399e7b7c5b277c1b6eb909cb61a0b1f5f2cda32ec95ecf52c2a510cb9f068bb23b242cdd9809f019cbb59e8a78a77d630e35160c49514' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.8/caddy_2.11.8_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+p /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 04 Nov 2026 17:57:00 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 04 Nov 2026 17:57:00 GMT
ENV XDG_DATA_HOME=/data
# Wed, 04 Nov 2026 17:57:00 GMT
LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 17:57:00 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 17:57:00 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 17:57:00 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 17:57:00 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 17:57:00 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 17:57:00 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 17:57:00 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 17:57:00 GMT
EXPOSE map[80/tcp:{}]
# Wed, 04 Nov 2026 17:57:00 GMT
EXPOSE map[443/tcp:{}]
# Wed, 04 Nov 2026 17:57:00 GMT
EXPOSE map[443/udp:{}]
# Wed, 04 Nov 2026 17:57:00 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 04 Nov 2026 17:57:00 GMT
WORKDIR /srv
# Wed, 04 Nov 2026 17:57:00 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90be89c63fc619f75d2182eb8091fd180b2b8c8656c17beacf90f3705c4530aa`  
		Last Modified: Wed, 04 Nov 2026 17:57:07 GMT  
		Size: 2.8 MB (2798868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b795f17779615215a4389aac5f27930ee8a77055dd72d5cf35c07d8df177b9`  
		Last Modified: Wed, 04 Nov 2026 17:57:07 GMT  
		Size: 7.5 KB (7498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ac66d3236c3a3bedcc96a67cb135ca72e13adf9d35232cb318565e98d34dae5`  
		Last Modified: Wed, 04 Nov 2026 17:57:08 GMT  
		Size: 18.1 MB (18133532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:e02e87ce47d4b3f84b915dd985c5978ef1b1776c0fed5e43d2aa74a5375e0a11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.6 KB (334616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12779b9cbebd3c5d124175cd884e10d72d3968593577936f7ac0b6c96e371d5c`

```dockerfile
```

-	Layers:
	-	`sha256:339a61710a7696883df9fc1e25dbe868ad10f437eeb7b839841b80104ef01a84`  
		Last Modified: Wed, 04 Nov 2026 17:57:07 GMT  
		Size: 316.2 KB (316187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d977a735b2a0e80308751410e3263927f54f710fc0f5b66e30a0bef1fb202044`  
		Last Modified: Wed, 04 Nov 2026 17:57:07 GMT  
		Size: 18.4 KB (18429 bytes)  
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
$ docker pull caddy@sha256:78e55014b85bc1bff3b9082f8a91bf86bbd5ddbc38c5f0b2a7e1d59aeddd4726
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23721182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d78628c88943ce067fd43d0d5593bb0b6664c03b7a6c49d8d85eaf01330711`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Fri, 23 Oct 2026 04:55:52 GMT
ADD alpine-minirootfs-3.23.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:55:52 GMT
CMD ["/bin/sh"]
# Fri, 30 Oct 2026 08:47:25 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Fri, 30 Oct 2026 08:47:27 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Fri, 30 Oct 2026 08:47:33 GMT
ENV CADDY_VERSION=v2.11.7
# Fri, 30 Oct 2026 08:47:33 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='a7a433a1b133efc3c8d10eb0b99d52a24b5ef5c322dc77f5282182b1c0402139ab83f3a99f0c52409df77d20123fb0b523edad8a66d8f5e49136197bf61ef0e7' ;; 		armhf)   binArch='armv6'; checksum='139d7eb079be6b9fcdb2b707424e3c0c4f20f522c4f156fd27fdd05d6eaebf8c8f966104d24adfc3a5b8982626cebbec84f1c3c1b7a68edb1693e64e9708c22b' ;; 		armv7)   binArch='armv7'; checksum='6eb3894f9a215f75f3ec50e627c34b2cd6fb81d10ec7838f27c30dcf417b810f618136b507766bc17e7400a5c0f4fa6001bb062ebb7a401ee63505012615825e' ;; 		aarch64) binArch='arm64'; checksum='3db36ba90c7a6e8dda40ee3dd71fa08844c76b5fb08f61b31e5e78d2ed38e71c51dc7baed875e50d1ca1279196e84302967237386ae87c91ae9f2aaceada682e' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='1d7ca41bbcfa14048cf07f1fc5215ff7d85afb61d7f2b34e4d5b72fd3047bf3fcfb4721a4da35f640cdd949ac5ce6844a2e4371939fad6100d8c537ea15a3d55' ;; 		riscv64) binArch='riscv64'; checksum='f72d9be744675c3566f5a17a6d4b1c56e6e20d1e190b06f6f5332223048ac1c73222dc8b4b941bd8afc915f1442727c81dc19176bbcb5bfae81cb47680ae98b4' ;; 		s390x)   binArch='s390x'; checksum='dff058c9cadbdd9ab56b545900bc02327c39f54b0075707ee500755be26d416eaf8361033c929db679cd71c1687d337905047f95d3e0cd183006661778aedc3d' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.7/caddy_2.11.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+ep /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Fri, 30 Oct 2026 08:47:33 GMT
ENV XDG_CONFIG_HOME=/config
# Fri, 30 Oct 2026 08:47:33 GMT
ENV XDG_DATA_HOME=/data
# Fri, 30 Oct 2026 08:47:33 GMT
LABEL org.opencontainers.image.version=v2.11.7
# Fri, 30 Oct 2026 08:47:33 GMT
LABEL org.opencontainers.image.title=Caddy
# Fri, 30 Oct 2026 08:47:33 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Fri, 30 Oct 2026 08:47:33 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Fri, 30 Oct 2026 08:47:33 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Fri, 30 Oct 2026 08:47:33 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Fri, 30 Oct 2026 08:47:33 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 30 Oct 2026 08:47:33 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Fri, 30 Oct 2026 08:47:33 GMT
EXPOSE map[80/tcp:{}]
# Fri, 30 Oct 2026 08:47:33 GMT
EXPOSE map[443/tcp:{}]
# Fri, 30 Oct 2026 08:47:33 GMT
EXPOSE map[443/udp:{}]
# Fri, 30 Oct 2026 08:47:33 GMT
EXPOSE map[2019/tcp:{}]
# Fri, 30 Oct 2026 08:47:33 GMT
WORKDIR /srv
# Fri, 30 Oct 2026 08:47:33 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:d03de878707a9da693ddc1eddbe1328c578f016182f72385d87f3b4b40158d37`  
		Last Modified: Fri, 23 Oct 2026 04:56:27 GMT  
		Size: 3.6 MB (3579612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cee3c3751d5a8eb663e0586502f44339a04f7f2d6b1386f446193bf50be0531`  
		Last Modified: Fri, 30 Oct 2026 08:48:25 GMT  
		Size: 2.9 MB (2920412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0a122e6722ce299e83b76237f7eb835142192b9c241da5f11e03470a48e1fad`  
		Last Modified: Fri, 30 Oct 2026 08:48:24 GMT  
		Size: 7.5 KB (7506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56018f7a636ea45d6e82348cbb537f70b936ff7b5ac6819dd98e070cc8e8fb0e`  
		Last Modified: Fri, 30 Oct 2026 08:48:27 GMT  
		Size: 17.2 MB (17213620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:e117c82419e0c44c95f6527a8ea0212dcc37b50fd251fd4943fc21fd6d81a08f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.1 KB (334095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48e049d6fde3436dfdc9d139a60d9cef9ad7705e2f0d363241d947dc16b2a8d4`

```dockerfile
```

-	Layers:
	-	`sha256:d36ccf5e3167c4e9b9fa449e65d9dd4dd6239a568543049d01cdf952d9cd0130`  
		Last Modified: Fri, 30 Oct 2026 08:48:24 GMT  
		Size: 315.6 KB (315594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a80ab0b967e8814ffcd518ddf071d516cb7e21519804190d3764c00b96528ae3`  
		Last Modified: Fri, 30 Oct 2026 08:48:24 GMT  
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
