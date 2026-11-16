## `traefik:2-windowsservercore-ltsc2022`

```console
$ docker pull traefik@sha256:c41b012e5198fb814548436e8dab09884cf21521129b7a84ba8699c8136a6c0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `traefik:2-windowsservercore-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull traefik@sha256:dae3957ef01278851d03f6d9b0536b924172e5f2840c26937a219974ba2ecb5e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2297411590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dd3738028cafbbad3ff1275769d7368bedff0f64cc81b96245aa5e002486b44`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Mon, 16 Nov 2026 19:53:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:04:07 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.11.63/traefik_v2.11.63_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Mon, 16 Nov 2026 20:04:08 GMT
EXPOSE 80
# Mon, 16 Nov 2026 20:04:09 GMT
ENTRYPOINT ["/traefik"]
# Mon, 16 Nov 2026 20:04:09 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.63 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514cbd3dfae445158cf4fa5649b0749cf2aab51510ffee9cbb4a56b3d3adc7d4`  
		Last Modified: Fri, 13 Nov 2026 18:51:30 GMT  
		Size: 757.1 MB (757071602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb796c9fd9167fa251bc6d58fbbe9ecb07bee68bdaf647d671e695124d8401a1`  
		Last Modified: Mon, 16 Nov 2026 19:55:16 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d4f4732af5842f60958be3d6738d3fe36a91a200ebf09088f44d08296ba88b2`  
		Last Modified: Mon, 16 Nov 2026 20:04:20 GMT  
		Size: 51.3 MB (51315611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f2408880684f005c195396aa5d22f396b70c06cd5403e17ed3700577673be7`  
		Last Modified: Mon, 16 Nov 2026 20:04:13 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07bf9c7c0b710a6c6ee6323fde3ce236435dc66884bc1087b5f863f2867090b`  
		Last Modified: Mon, 16 Nov 2026 20:04:13 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9680a05da4acab1071aa5c4c7713308a05b67d2a321b747b2318b483dc0a751`  
		Last Modified: Mon, 16 Nov 2026 20:04:13 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
