## `caddy:2-windowsservercore-ltsc2022`

```console
$ docker pull caddy@sha256:74ef6d091223bed90c94dae2afc39edb509495da01cf588ed4f4a6a233691022
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `caddy:2-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull caddy@sha256:12402c2e1df6e2411e91de53e3deae8a3d2f08b7e83f54a022c19343cc9727d6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2239160659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5a8e9ee5f4e2f1c6e2b9b6344186dc7fde9a5807a0f2b2e38882b5c7edb6f95`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Fri, 02 Oct 2026 18:40:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 02 Oct 2026 18:41:57 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Fri, 02 Oct 2026 18:41:57 GMT
ENV CADDY_VERSION=v2.11.6
# Fri, 02 Oct 2026 18:42:08 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.6/caddy_2.11.6_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('e2626405400f15131886a6dc03883962bdc960fdcb1cdd0882f28af8821c9b370c83fdc60cb8a4deaf27008166f0e080cc7208e699dc0ce15a534ae75cf53d93')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Fri, 02 Oct 2026 18:42:10 GMT
ENV XDG_CONFIG_HOME=c:/config
# Fri, 02 Oct 2026 18:42:11 GMT
ENV XDG_DATA_HOME=c:/data
# Fri, 02 Oct 2026 18:42:13 GMT
LABEL org.opencontainers.image.version=v2.11.6
# Fri, 02 Oct 2026 18:42:15 GMT
LABEL org.opencontainers.image.title=Caddy
# Fri, 02 Oct 2026 18:42:17 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Fri, 02 Oct 2026 18:42:19 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Fri, 02 Oct 2026 18:42:19 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Fri, 02 Oct 2026 18:42:20 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Fri, 02 Oct 2026 18:42:21 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 02 Oct 2026 18:42:22 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Fri, 02 Oct 2026 18:42:24 GMT
EXPOSE 80
# Fri, 02 Oct 2026 18:42:25 GMT
EXPOSE 443
# Fri, 02 Oct 2026 18:42:26 GMT
EXPOSE 443/udp
# Fri, 02 Oct 2026 18:42:26 GMT
EXPOSE 2019
# Fri, 02 Oct 2026 18:42:42 GMT
RUN caddy version
# Fri, 02 Oct 2026 18:42:43 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fdd2d345f00d445a4ff1d544df4cb605bdb6200f9a44981e62aac46be08174a`  
		Last Modified: Fri, 02 Oct 2026 18:42:53 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b0449f5a48f13e7eca74231369511b8b24fe10a0298978cdf030ee77075d7ee`  
		Last Modified: Fri, 02 Oct 2026 18:42:53 GMT  
		Size: 372.8 KB (372808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbae1874c7c480e2922042d31fa52d0cbd8e09ad7c77300be0d68ca0b1df4d91`  
		Last Modified: Fri, 02 Oct 2026 18:42:52 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94e24a1100eb9f91b24f9c4404186d21ab8a1fca9fbca0f325bc33e5647fbb7`  
		Last Modified: Fri, 02 Oct 2026 18:42:55 GMT  
		Size: 18.9 MB (18918889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aacd51a23f40cd1fa98368529b7fb570129b9ed687d4683fbedaf6d111889f7`  
		Last Modified: Fri, 02 Oct 2026 18:42:52 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f344a02e16468c9be9f97ed1ca867f06853502749f58098d9cca8bc540e2b383`  
		Last Modified: Fri, 02 Oct 2026 18:42:51 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e6df6968b6fee50b56ca87f198a8f1161954c9f9d0c8e8a9d0de5df3fc7c3b4`  
		Last Modified: Fri, 02 Oct 2026 18:42:51 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5c1b7ffde1d5228ee06871129bfe926bac48be7f10f9582dc28fc4e9016737`  
		Last Modified: Fri, 02 Oct 2026 18:42:51 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8e4f6c89e8b4b2e5026b8c3def6180d7ecfed276e342c3b906f55908d33427`  
		Last Modified: Fri, 02 Oct 2026 18:42:51 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2788fe7831477004653e7c042d87ff893bf5caf81e9ed930760a8ce0bcbc4b4c`  
		Last Modified: Fri, 02 Oct 2026 18:42:51 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca071fbf6048c66f042fce2f598f64ad5ded6cab6577fdce93e724cdaa0fddc`  
		Last Modified: Fri, 02 Oct 2026 18:42:49 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44553082a97c75f313cf23c3ab213cf4bc7a9c645ee27ed9b88b1d31c88ae24`  
		Last Modified: Fri, 02 Oct 2026 18:42:49 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1499c1dbf9e16ae2a419a606e2684911e7c63dfbd3ba8f11197ff733a81012cf`  
		Last Modified: Fri, 02 Oct 2026 18:42:49 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea500f5ed0a00a3ea84f4cca462af3459fd32b78d476f1660d4d6a6a407826`  
		Last Modified: Fri, 02 Oct 2026 18:42:49 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b97fc7ad5f020b3b97943ae2f8c72af7f8e81f05803b14412467666807cf338`  
		Last Modified: Fri, 02 Oct 2026 18:42:49 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65d5ff0fc7c9adb317c8db60753bb8597a7f9aad95f406bb5d213cd329e7db3`  
		Last Modified: Fri, 02 Oct 2026 18:42:48 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b032ef0668a6163289c457d4f0694169b1def4dcc9ffcdf754f41858ea0970a`  
		Last Modified: Fri, 02 Oct 2026 18:42:48 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff76a64b90bf6744258f9862c64736d4e9f1d46ab09ffaa5951fe804d9e8ffd9`  
		Last Modified: Fri, 02 Oct 2026 18:42:48 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3711c2239fbf385099196e86f5ae01065b31240dbeb8f8928ba7956bab6e5929`  
		Last Modified: Fri, 02 Oct 2026 18:42:48 GMT  
		Size: 358.1 KB (358056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaf787f278b15a2bbb2cda2d88d41c620c7bebc37b455c678c5c0ffab2162da`  
		Last Modified: Fri, 02 Oct 2026 18:42:48 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
