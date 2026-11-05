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
