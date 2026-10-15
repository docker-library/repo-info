## `traefik:v2-windowsservercore-ltsc2025`

```console
$ docker pull traefik@sha256:9ed7940f7e884c178fd0cc9e59e47281253eda799988e1f164fd15c9d2ac6a8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `traefik:v2-windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull traefik@sha256:92f6cb91e19b65ee3dba4a7d7649afd7f9de0dacf7417898cbe890d6ce3e3c8d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2443688898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afbde0d84bccd11e0ac17c59bf3af67af781b9d88a07ef2aadfc3127a2549061`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Thu, 15 Oct 2026 19:18:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Oct 2026 19:19:56 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.11.59/traefik_v2.11.59_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Thu, 15 Oct 2026 19:19:57 GMT
EXPOSE 80
# Thu, 15 Oct 2026 19:19:58 GMT
ENTRYPOINT ["/traefik"]
# Thu, 15 Oct 2026 19:19:59 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.59 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de09dde7ca4708855666339386e5d34b12d46098a0875e234eb9beb0f2ea0ee4`  
		Last Modified: Thu, 15 Oct 2026 19:20:04 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1c37c37aa6b516106d1cb72b43532254f9f5d9b5e5c27788ea6fb16fb32c6d`  
		Last Modified: Thu, 15 Oct 2026 19:20:47 GMT  
		Size: 51.7 MB (51689478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f84f91ff8894595a32cde73f17bae639f455ac839f04665fb65ea1c4b7a8a97`  
		Last Modified: Thu, 15 Oct 2026 19:20:04 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e891b598f4c907b6c787a1d9ea3b7a10b078656f065ef6b3f0dda6812e87b14b`  
		Last Modified: Thu, 15 Oct 2026 19:20:04 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41636a86e7dce498768080479c58838e2ab434ca2fe606610c36e3c7eb5cdb05`  
		Last Modified: Thu, 15 Oct 2026 19:20:04 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
