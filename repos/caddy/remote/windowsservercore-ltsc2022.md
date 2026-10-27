## `caddy:windowsservercore-ltsc2022`

```console
$ docker pull caddy@sha256:9da2283f04311e114cd0b26ecf069a11ba3655b979c456185810e26641490770
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `caddy:windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:4d79be504a4de266d8a021799801eab693a55dd5a8968da65b82c31359014ea6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2246723818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69eab80942bd2ebfd9ec867a53d5a2b54ff0234c610725f99ec3f7efc444b882`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 18:16:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 18:16:54 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Tue, 27 Oct 2026 18:16:55 GMT
ENV CADDY_VERSION=v2.11.7
# Tue, 27 Oct 2026 18:17:05 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.7/caddy_2.11.7_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('c308154504e53755958ffc62d8a2657ab17eefd6dd25c45dbb2c3d93d29519971f77ca652f7d0f2bcb7f980b9ba3822478865e29969d0272d7613550a43152b1')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Tue, 27 Oct 2026 18:17:06 GMT
ENV XDG_CONFIG_HOME=c:/config
# Tue, 27 Oct 2026 18:17:07 GMT
ENV XDG_DATA_HOME=c:/data
# Tue, 27 Oct 2026 18:17:07 GMT
LABEL org.opencontainers.image.version=v2.11.7
# Tue, 27 Oct 2026 18:17:08 GMT
LABEL org.opencontainers.image.title=Caddy
# Tue, 27 Oct 2026 18:17:09 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Tue, 27 Oct 2026 18:17:11 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Tue, 27 Oct 2026 18:17:11 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Tue, 27 Oct 2026 18:17:12 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Tue, 27 Oct 2026 18:17:13 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Tue, 27 Oct 2026 18:17:15 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Tue, 27 Oct 2026 18:17:16 GMT
EXPOSE 80
# Tue, 27 Oct 2026 18:17:16 GMT
EXPOSE 443
# Tue, 27 Oct 2026 18:17:17 GMT
EXPOSE 443/udp
# Tue, 27 Oct 2026 18:17:17 GMT
EXPOSE 2019
# Tue, 27 Oct 2026 18:17:23 GMT
RUN caddy version
# Tue, 27 Oct 2026 18:17:23 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552111f973026933ab25cd31b2bedfdeb835e52abb64c70d588bc129a13662b6`  
		Last Modified: Tue, 27 Oct 2026 18:17:33 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a473e0a7818b71ac2bbae8203d01c8610a2a1af789689e390596da6a4332c9`  
		Last Modified: Tue, 27 Oct 2026 18:17:33 GMT  
		Size: 357.8 KB (357774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25eb38834526d8c476586ec8c4261dc4abe2706275278c9971673fa67f8db41`  
		Last Modified: Tue, 27 Oct 2026 18:17:33 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965a6d2c5cb57e69e8599c504c310cf6aaef1398621fe3ca4aecf86ccd67ccf7`  
		Last Modified: Tue, 27 Oct 2026 18:17:35 GMT  
		Size: 18.9 MB (18944348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f66962baee25d849511d629119bf900a0456570f9c0afd737d586a64db6f8df`  
		Last Modified: Tue, 27 Oct 2026 18:17:32 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e3c7e262ca589d2b949780f477ace0b7004bb2142ffdaf1180dd8f8d845ad2`  
		Last Modified: Tue, 27 Oct 2026 18:17:31 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5372be094599674b9b7d5e577624924bb615b374572f398127fff8d1d5df031`  
		Last Modified: Tue, 27 Oct 2026 18:17:31 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8237e31dcba5744a40a14578fccc7088a224d71069d70f10f9489c0d3e52174`  
		Last Modified: Tue, 27 Oct 2026 18:17:31 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e29d53cab28f2090a12ed19130315e4c54a3fe4e8ee04229597353c459a81d8`  
		Last Modified: Tue, 27 Oct 2026 18:17:31 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9e0eb82d36771c8f5e8cb5a8a078f82698cd7c9af05c97a30fd40e2774937c`  
		Last Modified: Tue, 27 Oct 2026 18:17:31 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7b1816a6461dcfc206fbdd3f7da0a4775f528c8c83dddff91de674b8b6ffba`  
		Last Modified: Tue, 27 Oct 2026 18:17:29 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50cf5469781a2896e0a4f91c51c2af7426e455328eec0ce0b8ebf61c119928e`  
		Last Modified: Tue, 27 Oct 2026 18:17:29 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5803c4ee9787990ad46e47dee68956cd3dd0bc81471b71e740b416eb29818d3e`  
		Last Modified: Tue, 27 Oct 2026 18:17:29 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd76eb7ced4064d43d2d6aa8ec29ec23c71461aa5931f8a596b97bfd20c786aa`  
		Last Modified: Tue, 27 Oct 2026 18:17:29 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927ce55866239d764fe29531b4b8f72fff908d45dcfcdf85ea1d7576c279768c`  
		Last Modified: Tue, 27 Oct 2026 18:17:29 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861a90608d09a0df0fb349950f525ef1311d1a233d86d3414d84eaa5d1e50ae4`  
		Last Modified: Tue, 27 Oct 2026 18:17:28 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3ffada64f27797730a033273de3f331b6e0e7ffac155751909831c63ad10`  
		Last Modified: Tue, 27 Oct 2026 18:17:28 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c487a1387d276b450ec16f21a2fd30307e94cd473dcd5db0448175dd4398e6`  
		Last Modified: Tue, 27 Oct 2026 18:17:28 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5280727c28534fe8808f80d1ab318641e6ae51cef31bcf25b40658729954dc1`  
		Last Modified: Tue, 27 Oct 2026 18:17:28 GMT  
		Size: 343.2 KB (343234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab8632ccf94dc11c61eee018b10b67beaac735838967243949732b4909949d40`  
		Last Modified: Tue, 27 Oct 2026 18:17:28 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
