## `caddy:nanoserver-ltsc2025`

```console
$ docker pull caddy@sha256:2cf20450b8bbf247d22afdef1e6aae5e49e146b7a2b940d0dfecb0129f96b467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `caddy:nanoserver-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:454491d9853869531e2397123a4e42ca700ced704a085fcfb8ee907c7023a322
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219136499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cbf11dc6fd7495b53ff22e2a2ba8484f7c626b88a483f194e1bd94562b39c45`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Tue, 27 Oct 2026 18:41:52 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Tue, 27 Oct 2026 18:41:53 GMT
RUN cmd /S /C #(nop) COPY file:2fab63207e84eabfeab5300594bf0a3c4d7447a47dd347816cf69fd217a97a57 in c:\caddy.exe 
# Tue, 27 Oct 2026 18:41:57 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Tue, 27 Oct 2026 18:42:00 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Tue, 27 Oct 2026 18:42:00 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Tue, 27 Oct 2026 18:42:01 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Tue, 27 Oct 2026 18:42:01 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.7
# Tue, 27 Oct 2026 18:42:02 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Tue, 27 Oct 2026 18:42:02 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Tue, 27 Oct 2026 18:42:03 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Tue, 27 Oct 2026 18:42:03 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Tue, 27 Oct 2026 18:42:04 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Tue, 27 Oct 2026 18:42:04 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Tue, 27 Oct 2026 18:42:05 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Tue, 27 Oct 2026 18:42:06 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 27 Oct 2026 18:42:06 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Tue, 27 Oct 2026 18:42:07 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Tue, 27 Oct 2026 18:42:07 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Tue, 27 Oct 2026 18:42:10 GMT
RUN caddy version
# Tue, 27 Oct 2026 18:42:11 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6f0a0f73d17f8c3aa2b68741ad155c9d86540ea341720d6a50f686b02a87ff`  
		Last Modified: Tue, 27 Oct 2026 18:42:20 GMT  
		Size: 72.1 KB (72123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fae29c411bb0cb704186818b434534fa8c0aff8a0e4a2a0606a3b6781b7420`  
		Last Modified: Tue, 27 Oct 2026 18:42:22 GMT  
		Size: 18.6 MB (18597218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e65792e80b7cdd89dfa4793fb021151595df20014a6a0f42520f8d2b12efc06`  
		Last Modified: Tue, 27 Oct 2026 18:42:20 GMT  
		Size: 267.9 KB (267875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ebc2595051566c5895a299ea5e697579dd4138affdb9d027c9795cd29d57e20`  
		Last Modified: Tue, 27 Oct 2026 18:42:20 GMT  
		Size: 110.9 KB (110926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd47fea6ba059e86094f15ddfdb5b02108b8324b0049bae374d64e7dcad0fff4`  
		Last Modified: Tue, 27 Oct 2026 18:42:20 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b8072f23d865950c941a6c6e6283a25f12a75036d705efa8606a679e44a087`  
		Last Modified: Tue, 27 Oct 2026 18:42:18 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0e5a909e44dacfb3caa929190add15f4d3f6b8e182cbf749b2e8aa02f1f5e6`  
		Last Modified: Tue, 27 Oct 2026 18:42:18 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c357b9626c559d2c1c3763f23a23470f43829664e6218447ff53fdcd82caa8`  
		Last Modified: Tue, 27 Oct 2026 18:42:18 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb004483f103812f1d79ae5c805968a9549a11f53747c8320581417491c16966`  
		Last Modified: Tue, 27 Oct 2026 18:42:18 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11abfc251535eecc694a5f4c89596a169d984c5e42e29c9a3791bab34422d07e`  
		Last Modified: Tue, 27 Oct 2026 18:42:18 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8a87b5f9a905a201ab30d9086c8a4c0ec324a94bbdc1239b01ae7ba752b2db`  
		Last Modified: Tue, 27 Oct 2026 18:42:17 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b019e2f6bb7fb9b71a293622f8827a010640ba5ec2705e6e31f083a7e98912de`  
		Last Modified: Tue, 27 Oct 2026 18:42:17 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce915b7a5fc77dff6aabf7dd54ea1b0d1448b390ed7b9f910974a958d8b559eb`  
		Last Modified: Tue, 27 Oct 2026 18:42:16 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09df608b56e6486215be4c8c862adb59749e7704cd88b5f99209a3b38d92e626`  
		Last Modified: Tue, 27 Oct 2026 18:42:16 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa053dd6316feac1b86a5aa723051baf0ef62c2531c0252c3b125348dff198a6`  
		Last Modified: Tue, 27 Oct 2026 18:42:16 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f813551bcf0390dd4d49b2a6ace887086d881605a4f042b90c02412ae2d5265a`  
		Last Modified: Tue, 27 Oct 2026 18:42:15 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d822afefc50610ad05c2af9406ada90f7a0c952f016584837d1c601c552a636`  
		Last Modified: Tue, 27 Oct 2026 18:42:15 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb0e8c510e0f6741943754ca51962f4fd61c2633dc91e582051201d039421b1`  
		Last Modified: Tue, 27 Oct 2026 18:42:15 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f7eea395ebbed24e9cd2585ecd9bad9f7e2264fb70f733e2dbde2f17339004b`  
		Last Modified: Tue, 27 Oct 2026 18:42:15 GMT  
		Size: 113.7 KB (113723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29266b0a3a5453957409cdcba90efd2418ded11fd67f61be394021a63485d95e`  
		Last Modified: Tue, 27 Oct 2026 18:42:15 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
