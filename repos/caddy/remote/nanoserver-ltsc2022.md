## `caddy:nanoserver-ltsc2022`

```console
$ docker pull caddy@sha256:7e387c66bd616b3c63aab2fd030c37a3b014b63782a1d38ae335ff6dbdab37fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `caddy:nanoserver-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull caddy@sha256:4145c84377de27a6eb2237f753fe23990618888eba9a65433083880bd74fa8e6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145387678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c1f7869c5ec7d316ba40e2b34ffa609602ed838cc754667dcf022388f94261b`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:58:21 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Wed, 11 Nov 2026 22:58:25 GMT
RUN cmd /S /C #(nop) COPY file:f6fd9f7c8bd53ad2dea712d2b3468beaa8adaf6a9b8689f2f467c74c0f14078e in c:\caddy.exe 
# Wed, 11 Nov 2026 22:58:27 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Wed, 11 Nov 2026 22:58:29 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Wed, 11 Nov 2026 22:58:30 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Wed, 11 Nov 2026 22:58:30 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Wed, 11 Nov 2026 22:58:31 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.9
# Wed, 11 Nov 2026 22:58:31 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Wed, 11 Nov 2026 22:58:31 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 11 Nov 2026 22:58:32 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 11 Nov 2026 22:58:32 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 11 Nov 2026 22:58:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 11 Nov 2026 22:58:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 11 Nov 2026 22:58:34 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 11 Nov 2026 22:58:34 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 11 Nov 2026 22:58:35 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Wed, 11 Nov 2026 22:58:35 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Wed, 11 Nov 2026 22:58:36 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Wed, 11 Nov 2026 22:58:38 GMT
RUN caddy version
# Wed, 11 Nov 2026 22:58:39 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36681d4726338f513c7167fb2482f30676c027c9a47181a41e7d3c7f3c47fcb4`  
		Last Modified: Wed, 11 Nov 2026 22:58:48 GMT  
		Size: 77.3 KB (77266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee2de7c8d18ec7543c75640ea845e01f21992fabf38babdefc04d73c725fb83`  
		Last Modified: Wed, 11 Nov 2026 22:58:50 GMT  
		Size: 18.5 MB (18498173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7915827f20bc75d22f0e5135f334030ea98a6eec4103a146d68426d4e9d16952`  
		Last Modified: Wed, 11 Nov 2026 22:58:48 GMT  
		Size: 288.1 KB (288121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660e08873e0e2bae206da33892ffd693fe7670f78825b5fe84060f0dcfd6d0cd`  
		Last Modified: Wed, 11 Nov 2026 22:58:48 GMT  
		Size: 112.6 KB (112607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26928e43c84c7128e4679f76cb6f0f316d397b2daeb52fc536794991df20b27e`  
		Last Modified: Wed, 11 Nov 2026 22:58:48 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61abf09cdd2963f170515093bc8b258c912e23a887a4aec229c782c784b3bf7`  
		Last Modified: Wed, 11 Nov 2026 22:58:46 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d1eba57af43f48992d6699fc2651130b73932ec40c9317ebb6a85c3dd1bdfd`  
		Last Modified: Wed, 11 Nov 2026 22:58:46 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5fe694c60ba3a41ddd70434ca9818eb095140d0e68dd78d33cfb07686baac65`  
		Last Modified: Wed, 11 Nov 2026 22:58:46 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128440e62aead504dd38cd8cea2567769f4f291f3fd415156c449d34babf7f80`  
		Last Modified: Wed, 11 Nov 2026 22:58:46 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d85dfbf48cb8f4c8aba40fe874a169d00539f78433bb7ee2ed2f49f01b2327`  
		Last Modified: Wed, 11 Nov 2026 22:58:46 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95eac0b5c08d311e9aee48d27eb29147f7246511609b9ad8b8d12b9042bce324`  
		Last Modified: Wed, 11 Nov 2026 22:58:45 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3cc9a622e21ac9e0e8f1cfca061e041c5516873589e27f2fe4dc2d7b9bb7650`  
		Last Modified: Wed, 11 Nov 2026 22:58:45 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5307369e23d42bc90ec4a9cbcd9082b255ac8cc961b4806837563378d9104e5c`  
		Last Modified: Wed, 11 Nov 2026 22:58:45 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43bc2448d30565a152d221423507b584ca5f7a0562b78570b4a3254de825db09`  
		Last Modified: Wed, 11 Nov 2026 22:58:44 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7696237162421f2b6c6896ba5a85a8a1a10e1b8102ff4c14838c7c1858086a9`  
		Last Modified: Wed, 11 Nov 2026 22:58:44 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776ae3937ae92a42de289fb1a20f76a98e9cf890c05ab706237cfa58cb308fb4`  
		Last Modified: Wed, 11 Nov 2026 22:58:43 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df64a0a94ebceb8034783529996429755dc946b203dcfe181896d86f52d90f01`  
		Last Modified: Wed, 11 Nov 2026 22:58:43 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89595585d5b6245a8c729b166ee6c0beb6867ead8fe9cf4268fa682ca812e861`  
		Last Modified: Wed, 11 Nov 2026 22:58:43 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c183cdce585e6b6fe855bf16d3d70c8db250c017d62b59a8e14bf01e5991426`  
		Last Modified: Wed, 11 Nov 2026 22:58:43 GMT  
		Size: 110.7 KB (110656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97042b58254093d33e04f0296e0265b5aac68d1c75bef7661e4496163f64fde3`  
		Last Modified: Wed, 11 Nov 2026 22:58:43 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
