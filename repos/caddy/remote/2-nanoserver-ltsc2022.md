## `caddy:2-nanoserver-ltsc2022`

```console
$ docker pull caddy@sha256:9f19b861331c450f6c3e788f5ddddb2a3b3e4cb3a7603434ece82891a4d80149
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `caddy:2-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull caddy@sha256:8fa765c7afedd3794639edb74fbe956121ab921927809db435f341b4900a41e6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.3 MB (142281383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2664ab4d7a861610f2ad8ceebea043a6a163cd06786388e1332d7bf24d4cc3dd`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Thu, 16 Jul 2026 00:08:36 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Thu, 16 Jul 2026 00:08:46 GMT
RUN cmd /S /C #(nop) COPY file:7d2f419889d1c745e8d01a18ec688d43a6c8f6363f61c1964c7e88fd70b1b987 in c:\caddy.exe 
# Thu, 16 Jul 2026 00:08:50 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Thu, 16 Jul 2026 00:08:53 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Thu, 16 Jul 2026 00:08:53 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Thu, 16 Jul 2026 00:08:54 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Thu, 16 Jul 2026 00:08:54 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.4
# Thu, 16 Jul 2026 00:08:55 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Thu, 16 Jul 2026 00:08:57 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 16 Jul 2026 00:08:58 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 16 Jul 2026 00:08:59 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 16 Jul 2026 00:09:00 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 16 Jul 2026 00:09:01 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 16 Jul 2026 00:09:02 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 16 Jul 2026 00:09:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 16 Jul 2026 00:09:04 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Thu, 16 Jul 2026 00:09:05 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Thu, 16 Jul 2026 00:09:05 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Thu, 16 Jul 2026 00:09:09 GMT
RUN caddy version
# Thu, 16 Jul 2026 00:09:10 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:632ad35b65f9ec7de8cb3a2d05dc8ede6e95ef0f443665455f2d793560a3bfe4`  
		Last Modified: Thu, 16 Jul 2026 00:09:20 GMT  
		Size: 75.7 KB (75693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c22293dc1782c141349fe76690fc8e1d22b2c379de7075fe76c5a617190e9d`  
		Last Modified: Thu, 16 Jul 2026 00:09:22 GMT  
		Size: 17.6 MB (17619906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0961a295d3e23c5614951920ec38880202c831e94e2ec9b90b28ea69ea71115e`  
		Last Modified: Thu, 16 Jul 2026 00:09:20 GMT  
		Size: 213.2 KB (213229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631c0f7979e7049e14a1ccb0045bde9936ec72209a02498e29c858f89c618ef1`  
		Last Modified: Thu, 16 Jul 2026 00:09:20 GMT  
		Size: 126.3 KB (126254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3395bed0f6e31cd90b8ec726f96566f0e3e0c4c3e612f015fd8d8e34f8c5c707`  
		Last Modified: Thu, 16 Jul 2026 00:09:19 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb07e617e5a53e56728944c39f660cec0578c4dd9308f4a5a8db2057bb9f6b5f`  
		Last Modified: Thu, 16 Jul 2026 00:09:18 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6b2b4e6acf2b30d40e69acb339e17e73dc112e45cb73928cf4a2d9dc597260d`  
		Last Modified: Thu, 16 Jul 2026 00:09:18 GMT  
		Size: 1.0 KB (1019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0777926e1bc64b5f7251e2dea2441ce2547017c1a5b6f054a3f047548acdb451`  
		Last Modified: Thu, 16 Jul 2026 00:09:18 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a921859345af52718712fcd2dcc75b4661385105edde5c0e508476a3e9233f`  
		Last Modified: Thu, 16 Jul 2026 00:09:18 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee90cee8dfccad427b8fac6c3978450e84c86be5447c76cec50461d806ed3e2c`  
		Last Modified: Thu, 16 Jul 2026 00:09:18 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f3f91448d9e0a6412a26f25bc0a2331696600e2ee796a317f9ad88a8383e65`  
		Last Modified: Thu, 16 Jul 2026 00:09:16 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ab014c3320fb138784e28e6517ec287ad0c9001eb3a02937de7b243535be73`  
		Last Modified: Thu, 16 Jul 2026 00:09:16 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a739b50ef4bb82317de35b77e31b3cdaa44e4dfda0233c8b697209e9c18b9dd9`  
		Last Modified: Thu, 16 Jul 2026 00:09:16 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2ebe43e91dc27c65431cccd5b353388d2c36c97f0849d3c2b1addabe58457a`  
		Last Modified: Thu, 16 Jul 2026 00:09:16 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6a9b2d2ce414366ea599bdd1e3265bab68b7bc7cdced6f20b839d8c4783e7f`  
		Last Modified: Thu, 16 Jul 2026 00:09:16 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192a8b33847bda0bd686d1f012e57cf397a74a4a9f03ddd5d423f14b8fd85175`  
		Last Modified: Thu, 16 Jul 2026 00:09:14 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa32371bf25f3f3e7e1ecc2cfea7763434481061c20c362ee36277341401e04`  
		Last Modified: Thu, 16 Jul 2026 00:09:15 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053e78c2eb7466a815b3e78c292364e108fec09ff327cb7da9d78b72ccce5064`  
		Last Modified: Thu, 16 Jul 2026 00:09:14 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511ded6912819d1c744d721a2b20d650f6c650bbfe18657e0a6830db371fb82f`  
		Last Modified: Thu, 16 Jul 2026 00:09:15 GMT  
		Size: 127.4 KB (127387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe947546f2646f722b339b0f1b58f5b418b1d9a524a4885f642acf765b699879`  
		Last Modified: Thu, 16 Jul 2026 00:09:14 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
