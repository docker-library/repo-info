## `traefik:2-windowsservercore-ltsc2022`

```console
$ docker pull traefik@sha256:b20a67e1a41b76fa404c2e68533608ecf6037ec7c9e5b93c89182bda3c7408a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `traefik:2-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull traefik@sha256:4ead4822ad57c53b36266bb8898fa16636fabe8f0b64586f9691bf221a997c78
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2277963285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:702e99c4561741648c1a90726258353c1d6fbcd312298cc58a5e41df7353cd29`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:04:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:05:10 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.11.58/traefik_v2.11.58_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Tue, 13 Oct 2026 23:05:11 GMT
EXPOSE 80
# Tue, 13 Oct 2026 23:05:12 GMT
ENTRYPOINT ["/traefik"]
# Tue, 13 Oct 2026 23:05:12 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.58 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45948b04c5b4dfbd2341aa92d334d0e6aaf55f76599b30b82dc07df3dc2c934`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5069ea879e9ba45a8f5ecbd0e901fbcb80be0ff159ea18b65dab3c39828b064`  
		Last Modified: Tue, 13 Oct 2026 23:05:23 GMT  
		Size: 51.7 MB (51672582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55bfb53000f6ee456a2498598f2c9ff85fb101f81fe97b8797a07954125aa43`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0540d6352ba6199d46adef426a1852af8127b6c7ea4f2f7ebab3eb45d0176c`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd6d8fb85b42971584b4feb4a4bb6c8d0e0e99aa231f8ed3cad9a5cef51693d`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
