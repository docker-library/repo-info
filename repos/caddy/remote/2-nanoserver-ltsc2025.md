## `caddy:2-nanoserver-ltsc2025`

```console
$ docker pull caddy@sha256:ed0ec9277a70b7c14fbd5a2aef5a7563f6ccf1e03d30a74a759c08c17bdef05d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `caddy:2-nanoserver-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull caddy@sha256:bbea7b1924204bc90433b4240834a5b2a9e523fc195a55a7b404c3727969d908
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.7 MB (216746526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd5fd33fc8c081f4ec3e85fdb741d4efd72741064d298c9ee04c26aa61dcce5d`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Fri, 02 Oct 2026 19:01:53 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Fri, 02 Oct 2026 19:01:57 GMT
RUN cmd /S /C #(nop) COPY file:0c8870ed2271e7485f4580b02d6e58902cfc9a754b99ec32c5019c9223eba7ab in c:\caddy.exe 
# Fri, 02 Oct 2026 19:02:04 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Fri, 02 Oct 2026 19:02:08 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Fri, 02 Oct 2026 19:02:09 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Fri, 02 Oct 2026 19:02:09 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Fri, 02 Oct 2026 19:02:10 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.6
# Fri, 02 Oct 2026 19:02:11 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Fri, 02 Oct 2026 19:02:12 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Fri, 02 Oct 2026 19:02:12 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Fri, 02 Oct 2026 19:02:13 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Fri, 02 Oct 2026 19:02:14 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Fri, 02 Oct 2026 19:02:15 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 02 Oct 2026 19:02:15 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Fri, 02 Oct 2026 19:02:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Fri, 02 Oct 2026 19:02:17 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Fri, 02 Oct 2026 19:02:19 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Fri, 02 Oct 2026 19:02:20 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Fri, 02 Oct 2026 19:02:23 GMT
RUN caddy version
# Fri, 02 Oct 2026 19:02:24 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23017a637a6bb95af8375012023b78f7037e616f2a5d997554253583f4673002`  
		Last Modified: Fri, 02 Oct 2026 19:02:33 GMT  
		Size: 70.1 KB (70084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e353a8754306583e861120b8ee2df3fc00c2c5acc8428abed04878389fd7751e`  
		Last Modified: Fri, 02 Oct 2026 19:02:35 GMT  
		Size: 18.6 MB (18563453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e14b5d46625054cc341176319baf6d3a2053e81f3de2c5fd4a064a9fec41ad`  
		Last Modified: Fri, 02 Oct 2026 19:02:33 GMT  
		Size: 244.1 KB (244096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40893bf416653d1d650a63841293c9e0eefd32766f0aa559494271147e38b59`  
		Last Modified: Fri, 02 Oct 2026 19:02:33 GMT  
		Size: 101.5 KB (101548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1be5178677ba3c1047154aa62db8b1194e358caac648d8eea0fe5ea6c45e55`  
		Last Modified: Fri, 02 Oct 2026 19:02:33 GMT  
		Size: 1.1 KB (1057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464545ab92f2e3e3d4c0fff46c9acdfbb51146b5086c5fad209bea7c1f082c1d`  
		Last Modified: Fri, 02 Oct 2026 19:02:31 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5e50ec54968412fd61caff4629d2673a36d369012bbdbf8d2c1c11a17b10b0`  
		Last Modified: Fri, 02 Oct 2026 19:02:31 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45697c74052a22dcbf891f8af9ea69f39ee3bb75c49130173790b74068d23048`  
		Last Modified: Fri, 02 Oct 2026 19:02:31 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f8ae3fb5565f4f821e12175b7f9743ad45b5c8019aee8d56d4191e1549b4880`  
		Last Modified: Fri, 02 Oct 2026 19:02:31 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c0558a41a2367f264f3abba25965e5458786330a4b643ecd50a51807a07635f`  
		Last Modified: Fri, 02 Oct 2026 19:02:31 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a287eed89202eeee531371269e64b0e72a534fd875d7c44f34abdb9c0a1d4a`  
		Last Modified: Fri, 02 Oct 2026 19:02:30 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0523d32c366bd90b04b7f7bebc4c11c87ac03ab12943929aa391e1893b798c6`  
		Last Modified: Fri, 02 Oct 2026 19:02:30 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9adde38e6cc87a54581b583e48b237f626ae334b7eef036ccd9f0a8e0e0e47a6`  
		Last Modified: Fri, 02 Oct 2026 19:02:29 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc98466764db51849c5c2324b35a5a0b36134d08f3b7aa281a2a429df2111785`  
		Last Modified: Fri, 02 Oct 2026 19:02:29 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6deb32cace94e19368ed184479381bdef29e9cd097a03260c37199cb59c5caf0`  
		Last Modified: Fri, 02 Oct 2026 19:02:29 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293cf36c0ce9d51a647a007e2f8d1a6ca1da8cf04c7f2e8587daa9753a99e1f5`  
		Last Modified: Fri, 02 Oct 2026 19:02:28 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4698646425ad56485644bfee3a7e4f63540fd295b6b4604380bd7166cd67db6d`  
		Last Modified: Fri, 02 Oct 2026 19:02:28 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a545e358d804e19336375a8f4358fb1b64a92e5906c4ceb556d7bdb23bbedd`  
		Last Modified: Fri, 02 Oct 2026 19:02:28 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3db5b947294fdf018509aba7f833765ca23dfa15a431066e486e9c015e7558`  
		Last Modified: Fri, 02 Oct 2026 19:02:28 GMT  
		Size: 101.3 KB (101277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dbe87d9d2361fd213ae602bb90f0e4634e156a823bf77447afafd02955d7161`  
		Last Modified: Fri, 02 Oct 2026 19:02:28 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
