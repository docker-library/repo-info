## `caddy:2-alpine`

```console
$ docker pull caddy@sha256:881bbc60f9986d5ab8e7cfd6cf7e4ef3c9c0439fef2429d035d065577882f028
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
$ docker pull caddy@sha256:86d4376ad067063d998533bf06e0c78b97cc8d99cd7cc66f84393165a95a65ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24835849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0a314e87ee77965b977aca1699c2888aac0847287a7c0400d2bcbddde9e526`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 18:17:30 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Fri, 02 Oct 2026 18:17:31 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Fri, 02 Oct 2026 18:17:32 GMT
ENV CADDY_VERSION=v2.11.6
# Fri, 02 Oct 2026 18:17:32 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='422771007d505ea97efd1177a4905b2c1a471cd426668f2ace3bcda3d8e30b11f9b1610bfb02c6ad60f2a795f56124f2f5eec6409c17d5a0dd4c21a11375fb94' ;; 		armhf)   binArch='armv6'; checksum='c120f071720e1b5581386e840dc7b78ddd5fbae12f36cbe01ee7f5af776e2fbc8b7f69e2731023efa1ed740aaf5309f66743f4be2fc386b8cea640c9ad6dd708' ;; 		armv7)   binArch='armv7'; checksum='c9ed41fd5944604bc0ef184cdfbef47d9c2405869feadb1ae218d9c916a270e915c92aebcb98d6bcf49a5d66a3d47703103ee801d3d429a8694b086b975814d6' ;; 		aarch64) binArch='arm64'; checksum='bd228ea44b6b95720a0c2d7b62886e99cb4a0b05356fe6e058c4a155618c913377b18e686839ae7fcc6c2c05aea2d549fa91f25aa3ef8d43cdead117259577ed' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='acc236010e39f5ec0ff973eee4d6bfce4efa6c3c5bbd1de357e85ecd0aa0468998a17980efbefe7643b8d1368c5bd85a555524b0c12c3ba3c16d5f527294b68c' ;; 		riscv64) binArch='riscv64'; checksum='56afa5cff92dc9c99f138c2cb8557a83b9049d2e09cbb36023c77b9b71e913a9acd8e74e48a7ce482b21dc2aba8d6b373e94bb24e86717d3e720b1cd3d13379c' ;; 		s390x)   binArch='s390x'; checksum='fd2db1d4f325102029ebc4b6ead4ddf669daf4efea2628dab7623b071a953f69b26806b441e6555494130d45dc54cbaec53c2f6b45a30fa7a66d4250925d8663' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.6/caddy_2.11.6_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+ep /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Fri, 02 Oct 2026 18:17:32 GMT
ENV XDG_CONFIG_HOME=/config
# Fri, 02 Oct 2026 18:17:32 GMT
ENV XDG_DATA_HOME=/data
# Fri, 02 Oct 2026 18:17:32 GMT
LABEL org.opencontainers.image.version=v2.11.6
# Fri, 02 Oct 2026 18:17:32 GMT
LABEL org.opencontainers.image.title=Caddy
# Fri, 02 Oct 2026 18:17:32 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Fri, 02 Oct 2026 18:17:32 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Fri, 02 Oct 2026 18:17:32 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Fri, 02 Oct 2026 18:17:32 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Fri, 02 Oct 2026 18:17:32 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 02 Oct 2026 18:17:32 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Fri, 02 Oct 2026 18:17:32 GMT
EXPOSE map[80/tcp:{}]
# Fri, 02 Oct 2026 18:17:32 GMT
EXPOSE map[443/tcp:{}]
# Fri, 02 Oct 2026 18:17:32 GMT
EXPOSE map[443/udp:{}]
# Fri, 02 Oct 2026 18:17:32 GMT
EXPOSE map[2019/tcp:{}]
# Fri, 02 Oct 2026 18:17:32 GMT
WORKDIR /srv
# Fri, 02 Oct 2026 18:17:32 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb6e2df487623b77d3cb65f05e9dc682f797f41ff30b4d58eb3e30239e054c50`  
		Last Modified: Fri, 02 Oct 2026 18:17:39 GMT  
		Size: 2.8 MB (2784578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:882432e45530bf9add33f78b6636f9eef8d0f414701edb422717690248e5f7d5`  
		Last Modified: Fri, 02 Oct 2026 18:17:39 GMT  
		Size: 7.5 KB (7502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3b366d4b7ca0e9c541d948d870373f70a166149f94f057ed6bb37115560827`  
		Last Modified: Fri, 02 Oct 2026 18:17:39 GMT  
		Size: 18.2 MB (18195230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:21c66c2bfa8d67be5fc741ec8ef6bea197e55b184f5ef39a6ff74f85909898f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.8 KB (335759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d33ddd2da6c92da643df577f27c70fe0f041ae12b934f161cad4addc5061c4f8`

```dockerfile
```

-	Layers:
	-	`sha256:4bc0e32a308a4d35b9c085023d84acc20b33e9aac84290cb0a7d58763334ba5b`  
		Last Modified: Fri, 02 Oct 2026 18:17:39 GMT  
		Size: 317.3 KB (317329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c763f0c45ebee2a8b3645e9a9896f5f9fd15b037ed0ac05a37abbc156845aba`  
		Last Modified: Fri, 02 Oct 2026 18:17:39 GMT  
		Size: 18.4 KB (18430 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-alpine` - linux; arm variant v6

```console
$ docker pull caddy@sha256:f0e94934c9d7c189f39bfb6a39afab153d0726274908cbb533cd131007d606ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23532874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa5a8139f5009a427e98bedf3700c7938b62bc3ec455b52cb76953e977ec947`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 18:16:00 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Fri, 02 Oct 2026 18:16:01 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Fri, 02 Oct 2026 18:16:02 GMT
ENV CADDY_VERSION=v2.11.6
# Fri, 02 Oct 2026 18:16:02 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='422771007d505ea97efd1177a4905b2c1a471cd426668f2ace3bcda3d8e30b11f9b1610bfb02c6ad60f2a795f56124f2f5eec6409c17d5a0dd4c21a11375fb94' ;; 		armhf)   binArch='armv6'; checksum='c120f071720e1b5581386e840dc7b78ddd5fbae12f36cbe01ee7f5af776e2fbc8b7f69e2731023efa1ed740aaf5309f66743f4be2fc386b8cea640c9ad6dd708' ;; 		armv7)   binArch='armv7'; checksum='c9ed41fd5944604bc0ef184cdfbef47d9c2405869feadb1ae218d9c916a270e915c92aebcb98d6bcf49a5d66a3d47703103ee801d3d429a8694b086b975814d6' ;; 		aarch64) binArch='arm64'; checksum='bd228ea44b6b95720a0c2d7b62886e99cb4a0b05356fe6e058c4a155618c913377b18e686839ae7fcc6c2c05aea2d549fa91f25aa3ef8d43cdead117259577ed' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='acc236010e39f5ec0ff973eee4d6bfce4efa6c3c5bbd1de357e85ecd0aa0468998a17980efbefe7643b8d1368c5bd85a555524b0c12c3ba3c16d5f527294b68c' ;; 		riscv64) binArch='riscv64'; checksum='56afa5cff92dc9c99f138c2cb8557a83b9049d2e09cbb36023c77b9b71e913a9acd8e74e48a7ce482b21dc2aba8d6b373e94bb24e86717d3e720b1cd3d13379c' ;; 		s390x)   binArch='s390x'; checksum='fd2db1d4f325102029ebc4b6ead4ddf669daf4efea2628dab7623b071a953f69b26806b441e6555494130d45dc54cbaec53c2f6b45a30fa7a66d4250925d8663' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.6/caddy_2.11.6_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+ep /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Fri, 02 Oct 2026 18:16:02 GMT
ENV XDG_CONFIG_HOME=/config
# Fri, 02 Oct 2026 18:16:02 GMT
ENV XDG_DATA_HOME=/data
# Fri, 02 Oct 2026 18:16:02 GMT
LABEL org.opencontainers.image.version=v2.11.6
# Fri, 02 Oct 2026 18:16:02 GMT
LABEL org.opencontainers.image.title=Caddy
# Fri, 02 Oct 2026 18:16:02 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Fri, 02 Oct 2026 18:16:02 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Fri, 02 Oct 2026 18:16:02 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Fri, 02 Oct 2026 18:16:02 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Fri, 02 Oct 2026 18:16:02 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 02 Oct 2026 18:16:02 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Fri, 02 Oct 2026 18:16:02 GMT
EXPOSE map[80/tcp:{}]
# Fri, 02 Oct 2026 18:16:02 GMT
EXPOSE map[443/tcp:{}]
# Fri, 02 Oct 2026 18:16:02 GMT
EXPOSE map[443/udp:{}]
# Fri, 02 Oct 2026 18:16:02 GMT
EXPOSE map[2019/tcp:{}]
# Fri, 02 Oct 2026 18:16:02 GMT
WORKDIR /srv
# Fri, 02 Oct 2026 18:16:02 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0a7c4aa88ee35e668e46c707fdcaa6acac828e0bd38024e33385aaab8e0826`  
		Last Modified: Fri, 02 Oct 2026 18:16:08 GMT  
		Size: 2.7 MB (2714048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:257e6e2e3c27b5e344b9278399eb1423294cab65ce96d7ed167189a01f2147f5`  
		Last Modified: Fri, 02 Oct 2026 18:16:08 GMT  
		Size: 7.5 KB (7501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb62354734cc2462bc9524e0ecf91b2d88c171a48bfaefe88d36444055128a1d`  
		Last Modified: Fri, 02 Oct 2026 18:16:09 GMT  
		Size: 17.3 MB (17256367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:1882456ea60202c8442149d504b6c7e8c12caa96349df885a9ada5459932c10f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 KB (18352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c963f5f704bd0ba666b18d7bf6f6ad7cd8ea37c7e42376779f43b80df3bfc609`

```dockerfile
```

-	Layers:
	-	`sha256:60d4b94069fb888adc7ca159f1f12aa7cdf75204fe32cd4818a945a7626e593b`  
		Last Modified: Fri, 02 Oct 2026 18:16:08 GMT  
		Size: 18.4 KB (18352 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-alpine` - linux; arm variant v7

```console
$ docker pull caddy@sha256:99df8df0286bc9174512d9887f221a0353e17ccb900f40dc5ee5fb891c69c48d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23093537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a337f483e172365bc0fb909b41cfcd09f00dc4f16e8179e44c778a516a569f4e`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 18:15:27 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Fri, 02 Oct 2026 18:15:28 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Fri, 02 Oct 2026 18:15:29 GMT
ENV CADDY_VERSION=v2.11.6
# Fri, 02 Oct 2026 18:15:29 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='422771007d505ea97efd1177a4905b2c1a471cd426668f2ace3bcda3d8e30b11f9b1610bfb02c6ad60f2a795f56124f2f5eec6409c17d5a0dd4c21a11375fb94' ;; 		armhf)   binArch='armv6'; checksum='c120f071720e1b5581386e840dc7b78ddd5fbae12f36cbe01ee7f5af776e2fbc8b7f69e2731023efa1ed740aaf5309f66743f4be2fc386b8cea640c9ad6dd708' ;; 		armv7)   binArch='armv7'; checksum='c9ed41fd5944604bc0ef184cdfbef47d9c2405869feadb1ae218d9c916a270e915c92aebcb98d6bcf49a5d66a3d47703103ee801d3d429a8694b086b975814d6' ;; 		aarch64) binArch='arm64'; checksum='bd228ea44b6b95720a0c2d7b62886e99cb4a0b05356fe6e058c4a155618c913377b18e686839ae7fcc6c2c05aea2d549fa91f25aa3ef8d43cdead117259577ed' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='acc236010e39f5ec0ff973eee4d6bfce4efa6c3c5bbd1de357e85ecd0aa0468998a17980efbefe7643b8d1368c5bd85a555524b0c12c3ba3c16d5f527294b68c' ;; 		riscv64) binArch='riscv64'; checksum='56afa5cff92dc9c99f138c2cb8557a83b9049d2e09cbb36023c77b9b71e913a9acd8e74e48a7ce482b21dc2aba8d6b373e94bb24e86717d3e720b1cd3d13379c' ;; 		s390x)   binArch='s390x'; checksum='fd2db1d4f325102029ebc4b6ead4ddf669daf4efea2628dab7623b071a953f69b26806b441e6555494130d45dc54cbaec53c2f6b45a30fa7a66d4250925d8663' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.6/caddy_2.11.6_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+ep /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Fri, 02 Oct 2026 18:15:29 GMT
ENV XDG_CONFIG_HOME=/config
# Fri, 02 Oct 2026 18:15:29 GMT
ENV XDG_DATA_HOME=/data
# Fri, 02 Oct 2026 18:15:29 GMT
LABEL org.opencontainers.image.version=v2.11.6
# Fri, 02 Oct 2026 18:15:29 GMT
LABEL org.opencontainers.image.title=Caddy
# Fri, 02 Oct 2026 18:15:29 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Fri, 02 Oct 2026 18:15:29 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Fri, 02 Oct 2026 18:15:29 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Fri, 02 Oct 2026 18:15:29 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Fri, 02 Oct 2026 18:15:29 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 02 Oct 2026 18:15:29 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Fri, 02 Oct 2026 18:15:29 GMT
EXPOSE map[80/tcp:{}]
# Fri, 02 Oct 2026 18:15:29 GMT
EXPOSE map[443/tcp:{}]
# Fri, 02 Oct 2026 18:15:29 GMT
EXPOSE map[443/udp:{}]
# Fri, 02 Oct 2026 18:15:29 GMT
EXPOSE map[2019/tcp:{}]
# Fri, 02 Oct 2026 18:15:29 GMT
WORKDIR /srv
# Fri, 02 Oct 2026 18:15:29 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be683eb9b51d08ee566fc5456178792b9a4ad84641e57e31c545ebdd7e20c9e`  
		Last Modified: Fri, 02 Oct 2026 18:15:37 GMT  
		Size: 2.6 MB (2585445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9c723798046d92654035e99ef18c8c2bf6c05ac3669e65f62bc643fef1ef126`  
		Last Modified: Fri, 02 Oct 2026 18:15:36 GMT  
		Size: 7.5 KB (7502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26d888490f6561bd08f66e319a343eb49d30da8008b01d14812845fceb55bd9f`  
		Last Modified: Fri, 02 Oct 2026 18:15:37 GMT  
		Size: 17.2 MB (17237645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:544428115d5fa77f12723436479747b57ece6692e781bb8fabc8a48d077de3bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.3 KB (335315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c0c2819b499af14068900a05a97ef4c1e89598a61ed459b9b3405931948082d`

```dockerfile
```

-	Layers:
	-	`sha256:d8180e0b33ca0617d6680bddeff2436f3dd5311927b5483e4575854b1ad77ee6`  
		Last Modified: Fri, 02 Oct 2026 18:15:36 GMT  
		Size: 316.7 KB (316747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e2ae36e022500416a4d7f45a27d391431e970bdd5faa1007dbbfd23bfd0430b`  
		Last Modified: Fri, 02 Oct 2026 18:15:37 GMT  
		Size: 18.6 KB (18568 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-alpine` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:ed9acd2f75ce6cd125d05a1c9f625fdc47bc979d10a1da1ba9363d0d2c9f9f2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23602189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9c844672e8ec6ed6fcde3f46bd28c1aaf46180eb68591713ed88b893e3d11e0`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 18:16:41 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
ENV CADDY_VERSION=v2.11.6
# Fri, 02 Oct 2026 18:16:42 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='422771007d505ea97efd1177a4905b2c1a471cd426668f2ace3bcda3d8e30b11f9b1610bfb02c6ad60f2a795f56124f2f5eec6409c17d5a0dd4c21a11375fb94' ;; 		armhf)   binArch='armv6'; checksum='c120f071720e1b5581386e840dc7b78ddd5fbae12f36cbe01ee7f5af776e2fbc8b7f69e2731023efa1ed740aaf5309f66743f4be2fc386b8cea640c9ad6dd708' ;; 		armv7)   binArch='armv7'; checksum='c9ed41fd5944604bc0ef184cdfbef47d9c2405869feadb1ae218d9c916a270e915c92aebcb98d6bcf49a5d66a3d47703103ee801d3d429a8694b086b975814d6' ;; 		aarch64) binArch='arm64'; checksum='bd228ea44b6b95720a0c2d7b62886e99cb4a0b05356fe6e058c4a155618c913377b18e686839ae7fcc6c2c05aea2d549fa91f25aa3ef8d43cdead117259577ed' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='acc236010e39f5ec0ff973eee4d6bfce4efa6c3c5bbd1de357e85ecd0aa0468998a17980efbefe7643b8d1368c5bd85a555524b0c12c3ba3c16d5f527294b68c' ;; 		riscv64) binArch='riscv64'; checksum='56afa5cff92dc9c99f138c2cb8557a83b9049d2e09cbb36023c77b9b71e913a9acd8e74e48a7ce482b21dc2aba8d6b373e94bb24e86717d3e720b1cd3d13379c' ;; 		s390x)   binArch='s390x'; checksum='fd2db1d4f325102029ebc4b6ead4ddf669daf4efea2628dab7623b071a953f69b26806b441e6555494130d45dc54cbaec53c2f6b45a30fa7a66d4250925d8663' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.6/caddy_2.11.6_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+ep /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
ENV XDG_CONFIG_HOME=/config
# Fri, 02 Oct 2026 18:16:42 GMT
ENV XDG_DATA_HOME=/data
# Fri, 02 Oct 2026 18:16:42 GMT
LABEL org.opencontainers.image.version=v2.11.6
# Fri, 02 Oct 2026 18:16:42 GMT
LABEL org.opencontainers.image.title=Caddy
# Fri, 02 Oct 2026 18:16:42 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Fri, 02 Oct 2026 18:16:42 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Fri, 02 Oct 2026 18:16:42 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Fri, 02 Oct 2026 18:16:42 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Fri, 02 Oct 2026 18:16:42 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 02 Oct 2026 18:16:42 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Fri, 02 Oct 2026 18:16:42 GMT
EXPOSE map[80/tcp:{}]
# Fri, 02 Oct 2026 18:16:42 GMT
EXPOSE map[443/tcp:{}]
# Fri, 02 Oct 2026 18:16:42 GMT
EXPOSE map[443/udp:{}]
# Fri, 02 Oct 2026 18:16:42 GMT
EXPOSE map[2019/tcp:{}]
# Fri, 02 Oct 2026 18:16:43 GMT
WORKDIR /srv
# Fri, 02 Oct 2026 18:16:43 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:812ff83d0a6656551e712f0baa807476a380d27f0fc4fc5e0f1c4869bb19d75a`  
		Last Modified: Fri, 02 Oct 2026 18:16:50 GMT  
		Size: 2.8 MB (2803336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32abeda06a83fa1fd911d2910612c8f3d51b8c82481f42429ca4b71a10c154a5`  
		Last Modified: Fri, 02 Oct 2026 18:16:49 GMT  
		Size: 7.5 KB (7503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c3adfc76404d31d5bb8e9a878355cc050f607ecf04f20e54bc29c1af8ee34b`  
		Last Modified: Fri, 02 Oct 2026 18:16:50 GMT  
		Size: 16.6 MB (16605262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:df207cc1c7cd38a3d77ad93dd75f24060fa25f661a0e1249bd5871d9c9971e75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.4 KB (335395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abd358d432ba2724bb300f5bf3875baf006583bfe9a6b394ba4270ec265b5909`

```dockerfile
```

-	Layers:
	-	`sha256:32f469eef1aeb4e702fd47e3e1ea32a84ad419d80e4fcf867db1154de386fdb3`  
		Last Modified: Fri, 02 Oct 2026 18:16:50 GMT  
		Size: 316.8 KB (316783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bb7c36a66581e16a152d1d4e95309c195e180062f6438925ee450bfb11b55d5`  
		Last Modified: Fri, 02 Oct 2026 18:16:49 GMT  
		Size: 18.6 KB (18612 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-alpine` - linux; ppc64le

```console
$ docker pull caddy@sha256:09d0c5ce17d387647c91303f0a02101b9b91c6fa3cb3a08422316965be82977a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23356323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5489e6d1755282fb74b88069cacccc5d919f0e8dc6c1b318cd4ae368c20da85`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 18:21:54 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Fri, 02 Oct 2026 18:21:55 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Fri, 02 Oct 2026 18:21:57 GMT
ENV CADDY_VERSION=v2.11.6
# Fri, 02 Oct 2026 18:21:57 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='422771007d505ea97efd1177a4905b2c1a471cd426668f2ace3bcda3d8e30b11f9b1610bfb02c6ad60f2a795f56124f2f5eec6409c17d5a0dd4c21a11375fb94' ;; 		armhf)   binArch='armv6'; checksum='c120f071720e1b5581386e840dc7b78ddd5fbae12f36cbe01ee7f5af776e2fbc8b7f69e2731023efa1ed740aaf5309f66743f4be2fc386b8cea640c9ad6dd708' ;; 		armv7)   binArch='armv7'; checksum='c9ed41fd5944604bc0ef184cdfbef47d9c2405869feadb1ae218d9c916a270e915c92aebcb98d6bcf49a5d66a3d47703103ee801d3d429a8694b086b975814d6' ;; 		aarch64) binArch='arm64'; checksum='bd228ea44b6b95720a0c2d7b62886e99cb4a0b05356fe6e058c4a155618c913377b18e686839ae7fcc6c2c05aea2d549fa91f25aa3ef8d43cdead117259577ed' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='acc236010e39f5ec0ff973eee4d6bfce4efa6c3c5bbd1de357e85ecd0aa0468998a17980efbefe7643b8d1368c5bd85a555524b0c12c3ba3c16d5f527294b68c' ;; 		riscv64) binArch='riscv64'; checksum='56afa5cff92dc9c99f138c2cb8557a83b9049d2e09cbb36023c77b9b71e913a9acd8e74e48a7ce482b21dc2aba8d6b373e94bb24e86717d3e720b1cd3d13379c' ;; 		s390x)   binArch='s390x'; checksum='fd2db1d4f325102029ebc4b6ead4ddf669daf4efea2628dab7623b071a953f69b26806b441e6555494130d45dc54cbaec53c2f6b45a30fa7a66d4250925d8663' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.6/caddy_2.11.6_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+ep /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Fri, 02 Oct 2026 18:21:57 GMT
ENV XDG_CONFIG_HOME=/config
# Fri, 02 Oct 2026 18:21:57 GMT
ENV XDG_DATA_HOME=/data
# Fri, 02 Oct 2026 18:21:57 GMT
LABEL org.opencontainers.image.version=v2.11.6
# Fri, 02 Oct 2026 18:21:57 GMT
LABEL org.opencontainers.image.title=Caddy
# Fri, 02 Oct 2026 18:21:57 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Fri, 02 Oct 2026 18:21:57 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Fri, 02 Oct 2026 18:21:57 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Fri, 02 Oct 2026 18:21:57 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Fri, 02 Oct 2026 18:21:57 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 02 Oct 2026 18:21:57 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Fri, 02 Oct 2026 18:21:57 GMT
EXPOSE map[80/tcp:{}]
# Fri, 02 Oct 2026 18:21:57 GMT
EXPOSE map[443/tcp:{}]
# Fri, 02 Oct 2026 18:21:57 GMT
EXPOSE map[443/udp:{}]
# Fri, 02 Oct 2026 18:21:57 GMT
EXPOSE map[2019/tcp:{}]
# Fri, 02 Oct 2026 18:21:58 GMT
WORKDIR /srv
# Fri, 02 Oct 2026 18:21:58 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05236ebcd2e98cade418f40d576a71dcefdc935f7ad32941013c93117f6854c9`  
		Last Modified: Fri, 02 Oct 2026 18:22:10 GMT  
		Size: 2.9 MB (2923657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39cd70b613c7ff06bdf628f91839a8f63fc603f161b6900d8a6ec94e7acff188`  
		Last Modified: Fri, 02 Oct 2026 18:22:10 GMT  
		Size: 7.5 KB (7502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d65de9eb0edb45f778178c58a15b9cb4815467e37c1f1901d7fa499a768309b`  
		Last Modified: Fri, 02 Oct 2026 18:22:11 GMT  
		Size: 16.6 MB (16610363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:aeb86bfa10bc221138723741ed2178b452991e6196714b735a80337b6f0999bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.2 KB (335237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce27f8f0341037126a41cda292dd1eb6e6fe25f36b14202acecfd617879a675a`

```dockerfile
```

-	Layers:
	-	`sha256:91b121fbabd4745b7a6f9992552b258efd274c799f285b5e316760d0d3a7bc8e`  
		Last Modified: Fri, 02 Oct 2026 18:22:10 GMT  
		Size: 316.7 KB (316736 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5dda2d45ee3dc6b15a5a493f19d62232cb147aa9fa1241dff668190f494f318e`  
		Last Modified: Fri, 02 Oct 2026 18:22:10 GMT  
		Size: 18.5 KB (18501 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-alpine` - linux; riscv64

```console
$ docker pull caddy@sha256:b356ee502eb423860921da17887f1a80d29e8043c9184ff92a986d7bf476d110
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22799466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46d20574930cde3d5341ff05753d1d91aa40848db9ad6c99a92611de931f3d8c`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 04:19:16 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 23 Sep 2026 04:19:18 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 23 Sep 2026 04:19:24 GMT
ENV CADDY_VERSION=v2.11.4
# Wed, 23 Sep 2026 04:19:24 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='8220d1f013b6f27510247b2360c9e0ca9f018feebd82515f07635318b34ff9777ccc8fd0b6e6f2486ce3a33fe389fbb7db12d05baa474f4587509fb4f5ebf1c9' ;; 		armhf)   binArch='armv6'; checksum='d4300f3e0d9af290bebd65721edb145025db680e6a7e6ad2ed917bf8c9d6e72abe788f720cdf046fe210ca1b43f9a7ddcda07a634296d3012527299ab78cc3ed' ;; 		armv7)   binArch='armv7'; checksum='081959488f0d0da2725aea2d01330bc1501b3e52c1147b6c9da1da007524890ceba6845415355ba8f97aa29535e6f37521da1d7f10c5c63c55bb86c5d9f51bfb' ;; 		aarch64) binArch='arm64'; checksum='d5a7c423853c24a799765e0e8210d5c7c22a8f56ed37a3cae2fb9f58be138853c02b4efd6b59d576e6d8c7c0d30b9c1592deeaa6a536ff69bcca23b8c1ea709c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='74b11a1f098517be7e6b11c7f7da6b5a0be9a18634f9a575c5ba6f5518a1bcbe4fe903f6c32a6d7ba47464fcaf12fde95e5f301cd829c4f41633484b0a4f817a' ;; 		riscv64) binArch='riscv64'; checksum='05187bfc217a67ab32bbb0ebb9bd27ccbac0f80e41ad47dba272d10c34b1bf00f67a57ba05230eefa791898b2e2f40158631d81c3639cb514d59ac6d4976b044' ;; 		s390x)   binArch='s390x'; checksum='fc2cd4294bf43e6645ee639532361c8e432a2cc7639134cfa0f0c44724146f4d9a278542ed56399e53aaac857b767d26ae748e754a790d106dd192c4c91c09f5' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.4/caddy_2.11.4_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+ep /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 23 Sep 2026 04:19:24 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 23 Sep 2026 04:19:24 GMT
ENV XDG_DATA_HOME=/data
# Wed, 23 Sep 2026 04:19:24 GMT
LABEL org.opencontainers.image.version=v2.11.4
# Wed, 23 Sep 2026 04:19:24 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 23 Sep 2026 04:19:24 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 23 Sep 2026 04:19:24 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 23 Sep 2026 04:19:24 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 23 Sep 2026 04:19:24 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 23 Sep 2026 04:19:24 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 23 Sep 2026 04:19:24 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 23 Sep 2026 04:19:24 GMT
EXPOSE map[80/tcp:{}]
# Wed, 23 Sep 2026 04:19:24 GMT
EXPOSE map[443/tcp:{}]
# Wed, 23 Sep 2026 04:19:24 GMT
EXPOSE map[443/udp:{}]
# Wed, 23 Sep 2026 04:19:24 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 23 Sep 2026 04:19:24 GMT
WORKDIR /srv
# Wed, 23 Sep 2026 04:19:24 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112392424d6635cd7bb288cda3544adf865573daff7b373347e21bab4e769be3`  
		Last Modified: Wed, 23 Sep 2026 04:20:15 GMT  
		Size: 2.9 MB (2919880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:207c6cb9fe2d1bd4cb5399782279f561714dcaeb21371764592afef33a539552`  
		Last Modified: Wed, 23 Sep 2026 04:20:14 GMT  
		Size: 7.5 KB (7506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243e79cef447a1f5159729dfeeecbe8394890e6f0153ecb7e8b08521071bab92`  
		Last Modified: Wed, 23 Sep 2026 04:20:17 GMT  
		Size: 16.3 MB (16295727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:b438a360e2ae5b0e8284988cf021ca54e9c69c55d2ccbddbc9cd5688d7fb6279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.7 KB (333660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a827e4a74b9fbd1feaaa297dbb9744e646ce4f6086206d769cfc476483d17d5c`

```dockerfile
```

-	Layers:
	-	`sha256:c32867a5cb5aa523e89c72ca78debfa213341e63cedfa2f62cd27c2315f0418e`  
		Last Modified: Wed, 23 Sep 2026 04:20:14 GMT  
		Size: 315.2 KB (315158 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:841dbe6078ef7069244e8235c2e4a58e2b2cbab09ca370ab6f8f27bf9f96ae29`  
		Last Modified: Wed, 23 Sep 2026 04:20:14 GMT  
		Size: 18.5 KB (18502 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-alpine` - linux; s390x

```console
$ docker pull caddy@sha256:27e879566d260f932fc2a729d9451367901bbc081f1bce5b409e020eff23609a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24212372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbb7dfd287ebb047d2696c2ff7465b3b80fc793c2199b63f1caae3e6215f49c3`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 18:18:30 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Fri, 02 Oct 2026 18:18:31 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Fri, 02 Oct 2026 18:18:35 GMT
ENV CADDY_VERSION=v2.11.6
# Fri, 02 Oct 2026 18:18:35 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='422771007d505ea97efd1177a4905b2c1a471cd426668f2ace3bcda3d8e30b11f9b1610bfb02c6ad60f2a795f56124f2f5eec6409c17d5a0dd4c21a11375fb94' ;; 		armhf)   binArch='armv6'; checksum='c120f071720e1b5581386e840dc7b78ddd5fbae12f36cbe01ee7f5af776e2fbc8b7f69e2731023efa1ed740aaf5309f66743f4be2fc386b8cea640c9ad6dd708' ;; 		armv7)   binArch='armv7'; checksum='c9ed41fd5944604bc0ef184cdfbef47d9c2405869feadb1ae218d9c916a270e915c92aebcb98d6bcf49a5d66a3d47703103ee801d3d429a8694b086b975814d6' ;; 		aarch64) binArch='arm64'; checksum='bd228ea44b6b95720a0c2d7b62886e99cb4a0b05356fe6e058c4a155618c913377b18e686839ae7fcc6c2c05aea2d549fa91f25aa3ef8d43cdead117259577ed' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='acc236010e39f5ec0ff973eee4d6bfce4efa6c3c5bbd1de357e85ecd0aa0468998a17980efbefe7643b8d1368c5bd85a555524b0c12c3ba3c16d5f527294b68c' ;; 		riscv64) binArch='riscv64'; checksum='56afa5cff92dc9c99f138c2cb8557a83b9049d2e09cbb36023c77b9b71e913a9acd8e74e48a7ce482b21dc2aba8d6b373e94bb24e86717d3e720b1cd3d13379c' ;; 		s390x)   binArch='s390x'; checksum='fd2db1d4f325102029ebc4b6ead4ddf669daf4efea2628dab7623b071a953f69b26806b441e6555494130d45dc54cbaec53c2f6b45a30fa7a66d4250925d8663' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.6/caddy_2.11.6_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+ep /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Fri, 02 Oct 2026 18:18:35 GMT
ENV XDG_CONFIG_HOME=/config
# Fri, 02 Oct 2026 18:18:35 GMT
ENV XDG_DATA_HOME=/data
# Fri, 02 Oct 2026 18:18:35 GMT
LABEL org.opencontainers.image.version=v2.11.6
# Fri, 02 Oct 2026 18:18:35 GMT
LABEL org.opencontainers.image.title=Caddy
# Fri, 02 Oct 2026 18:18:35 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Fri, 02 Oct 2026 18:18:35 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Fri, 02 Oct 2026 18:18:35 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Fri, 02 Oct 2026 18:18:35 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Fri, 02 Oct 2026 18:18:35 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 02 Oct 2026 18:18:35 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Fri, 02 Oct 2026 18:18:35 GMT
EXPOSE map[80/tcp:{}]
# Fri, 02 Oct 2026 18:18:35 GMT
EXPOSE map[443/tcp:{}]
# Fri, 02 Oct 2026 18:18:35 GMT
EXPOSE map[443/udp:{}]
# Fri, 02 Oct 2026 18:18:35 GMT
EXPOSE map[2019/tcp:{}]
# Fri, 02 Oct 2026 18:18:36 GMT
WORKDIR /srv
# Fri, 02 Oct 2026 18:18:36 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e0c42a7ffa8a56dc954187eb7ad5161ee57efc08d3f3b061e81cd27c2c1efd6`  
		Last Modified: Fri, 02 Oct 2026 18:19:04 GMT  
		Size: 2.9 MB (2909780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35ffbce14a68abc464d1637f17ec26330b8cca2cfa5438a979caf935ac0d9167`  
		Last Modified: Fri, 02 Oct 2026 18:19:03 GMT  
		Size: 7.5 KB (7501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85da14c198ceda033242a7b2842815754a06dbdc0d0e8d50abab459b5b2c3e05`  
		Last Modified: Fri, 02 Oct 2026 18:19:05 GMT  
		Size: 17.6 MB (17581804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:8ac7681dbb32feb3b843d6caba07381d1de194f334dbcb495224d6b7ec46a830
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.1 KB (335108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abccfb80f6ca9dc6801162ae0efcb202f9e0c8acdae06aa7f33e916f576910cb`

```dockerfile
```

-	Layers:
	-	`sha256:b03bdab7d3343301e6bcaf20342c4b4dab53e6c2779f0ca1306cd2f2e1fa2ba2`  
		Last Modified: Fri, 02 Oct 2026 18:19:04 GMT  
		Size: 316.7 KB (316678 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3647ed6a5c45b0390787a20d1617dd540e1edc0b425fe32c135fa68f781fd28e`  
		Last Modified: Fri, 02 Oct 2026 18:19:03 GMT  
		Size: 18.4 KB (18430 bytes)  
		MIME: application/vnd.in-toto+json
