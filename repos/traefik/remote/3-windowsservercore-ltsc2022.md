## `traefik:3-windowsservercore-ltsc2022`

```console
$ docker pull traefik@sha256:8117e55693d83ceeae79eec57ad3294b2a374e173c69384e84d61312cd003c29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `traefik:3-windowsservercore-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull traefik@sha256:595aa7bd72d026d3f89e04dee0b3d63a1e4e2cc5cc44a2bb710d55bf5f0350f1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2298215567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:284f1aa25bd9ea23866a20e624e19f8de1cce23198d0cb18e652a5c8441b1909`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Mon, 16 Nov 2026 19:53:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:03:30 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.7.19/traefik_v3.7.19_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Mon, 16 Nov 2026 20:03:31 GMT
EXPOSE 80
# Mon, 16 Nov 2026 20:03:32 GMT
ENTRYPOINT ["/traefik"]
# Mon, 16 Nov 2026 20:03:32 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.19 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:2925365ece6061a75f51fa9860238a65bc428347d080614c36982e9de90b1bd5`  
		Last Modified: Mon, 16 Nov 2026 20:03:43 GMT  
		Size: 52.1 MB (52119680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071ffe7157d666575854a33d2898609ad08d69c5c0052a81a9100128c3ffd66c`  
		Last Modified: Mon, 16 Nov 2026 20:03:36 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97779d2eb9e29058e61179109e97dd55cbd3bbd6899767c657d04dac661a1e74`  
		Last Modified: Mon, 16 Nov 2026 20:03:36 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc8e0faaef118b0044627163962820db9f398a3a9ba4d398984502a1a0194f2`  
		Last Modified: Mon, 16 Nov 2026 20:03:36 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
