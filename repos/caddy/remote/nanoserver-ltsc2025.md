## `caddy:nanoserver-ltsc2025`

```console
$ docker pull caddy@sha256:4219bb259a6ff29c7c4d63d4a97ca8a137de454d16c4ef3b2682e2a0c904102d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `caddy:nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull caddy@sha256:d90e59842349a3b6cec205abb9323c9dc3dc57c48c3eb38551dde954a8275273
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215621412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b82811e84d27cf8f7f9267d0916219bacccbc82da1734bb7be449deed62fa9`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Wed, 12 Aug 2026 18:23:16 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Wed, 12 Aug 2026 18:23:21 GMT
RUN cmd /S /C #(nop) COPY file:7d2f419889d1c745e8d01a18ec688d43a6c8f6363f61c1964c7e88fd70b1b987 in c:\caddy.exe 
# Wed, 12 Aug 2026 18:23:24 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Wed, 12 Aug 2026 18:23:27 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Wed, 12 Aug 2026 18:23:27 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Wed, 12 Aug 2026 18:23:28 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Wed, 12 Aug 2026 18:23:28 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.4
# Wed, 12 Aug 2026 18:23:29 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Wed, 12 Aug 2026 18:23:29 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 12 Aug 2026 18:23:30 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 12 Aug 2026 18:23:31 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 12 Aug 2026 18:23:31 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 12 Aug 2026 18:23:32 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 12 Aug 2026 18:23:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 12 Aug 2026 18:23:33 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 12 Aug 2026 18:23:34 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Wed, 12 Aug 2026 18:23:34 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Wed, 12 Aug 2026 18:23:35 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Wed, 12 Aug 2026 18:23:38 GMT
RUN caddy version
# Wed, 12 Aug 2026 18:23:38 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8faa65c7f59dbf67aa80cefe722c10d8b436c28da46522fce00e732a21e46e81`  
		Last Modified: Wed, 12 Aug 2026 18:23:48 GMT  
		Size: 75.6 KB (75629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41bd47e21b851fd4ab5b7ec3449c56ee0fe54fa080e965bb246538915bf27a66`  
		Last Modified: Wed, 12 Aug 2026 18:23:50 GMT  
		Size: 17.6 MB (17619935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365b24439d5d1d26cd56aff36bbdbb3a885d9b99567269663045d36ea0908fb2`  
		Last Modified: Wed, 12 Aug 2026 18:23:47 GMT  
		Size: 222.6 KB (222558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a0b0b4d9ccb2a34509d4bae5866c6a686aeba8d8a9828da4a7fb4e8c039551`  
		Last Modified: Wed, 12 Aug 2026 18:23:48 GMT  
		Size: 103.9 KB (103928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336185c3d77638d3e9843d59875b0f3d44ad0ef62e132adc22e35ef05d7a7099`  
		Last Modified: Wed, 12 Aug 2026 18:23:47 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec89bac40302706b4c4be08ccc20678748da0f4544b4edce2febb18a290a990`  
		Last Modified: Wed, 12 Aug 2026 18:23:46 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ae3ee33ce9240578dd0a036a30c7d217a6c04236f1239b1166c4cca51dfc7b5`  
		Last Modified: Wed, 12 Aug 2026 18:23:46 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859ac7cf559a47de35845288eb9411107ed2b4a8678e5cf9558d4e1a3e677f73`  
		Last Modified: Wed, 12 Aug 2026 18:23:46 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87dbaf0f55df21e59fb9b0850111a10d8f609cf0f524af4729ceda701d366dc3`  
		Last Modified: Wed, 12 Aug 2026 18:23:46 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1043eec5f69d3205f006e6413324aa4857dd90a95bd8eada6ff2e92eab375a`  
		Last Modified: Wed, 12 Aug 2026 18:23:46 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfb9a840435984b18f6a186f26468cddfe0cc3b4c2697eb619c57b2fee3ce483`  
		Last Modified: Wed, 12 Aug 2026 18:23:44 GMT  
		Size: 1.1 KB (1056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6dd38c455b189e876cfb4104b91b2ed1c862dc2ac7d1da585be6add957146a`  
		Last Modified: Wed, 12 Aug 2026 18:23:44 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3299818377a2997ad3336e9294121fd2d9c9a18028ce228b0b44ceabc298fa`  
		Last Modified: Wed, 12 Aug 2026 18:23:44 GMT  
		Size: 1.1 KB (1051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b40883383794d59c4b05cf15cd1df27c4a9a11a5cb77b0952aa0bf7a153545`  
		Last Modified: Wed, 12 Aug 2026 18:23:44 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a01bc9e527d096f1f280a59bd9b4b9138e98d56290c18bd71abe6dffe86eb1a`  
		Last Modified: Wed, 12 Aug 2026 18:23:44 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7970fe138d9cbcb07eb3b08a77428678704887a4fc9d55e40d3a60a4d0f37d52`  
		Last Modified: Wed, 12 Aug 2026 18:23:42 GMT  
		Size: 1.0 KB (1026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4213c2b0c16222e93220b16b5bd78cd9584cc3855a66f08cd0439af0858d87`  
		Last Modified: Wed, 12 Aug 2026 18:23:42 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ae23aa94693213c2ee90224990d8576abdabbbcdb4239b7daef0ec8c321e5e`  
		Last Modified: Wed, 12 Aug 2026 18:23:42 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60843621e686fdfb34049d0bf92e7611f2d649290ef6ef65bc9037a23e93d50e`  
		Last Modified: Wed, 12 Aug 2026 18:23:42 GMT  
		Size: 101.6 KB (101625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b1b1feda93b9257d1e751c6cd5ca404a5dfa00f1a304f3a3dd45febf8ab530`  
		Last Modified: Wed, 12 Aug 2026 18:23:42 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
