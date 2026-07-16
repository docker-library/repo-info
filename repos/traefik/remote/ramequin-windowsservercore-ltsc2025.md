## `traefik:ramequin-windowsservercore-ltsc2025`

```console
$ docker pull traefik@sha256:108f1f2a9234d902d804d92f536c7b065e1d8048fd7f1eb8297b602ad457cbd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `traefik:ramequin-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull traefik@sha256:deda0919cef49198204ea75d1816ee4e9233dca024ccbd527056c2ecc7971766
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2406528758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44602d1ff73c2732919326b67421fdebc0cf682c8791d07c6035e5793d67e490`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:57:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:58:30 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.6.23/traefik_v3.6.23_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Wed, 15 Jul 2026 23:58:31 GMT
EXPOSE 80
# Wed, 15 Jul 2026 23:58:32 GMT
ENTRYPOINT ["/traefik"]
# Wed, 15 Jul 2026 23:58:32 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.6.23 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbe3ffff7d7461a2709bde9ec0ce1473b34f881aeea0dcee0f37e5497cd6764`  
		Last Modified: Wed, 15 Jul 2026 23:58:39 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05957b8e11aad666b125077a244c2612c58aa87e8410a370cd0d58085c599c28`  
		Last Modified: Wed, 15 Jul 2026 23:58:46 GMT  
		Size: 51.5 MB (51515365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f5878851fb8114305eefc9757612af715628a67e6bf6a9552c2dfee0a7c98a4`  
		Last Modified: Wed, 15 Jul 2026 23:58:39 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb1902c7e17ed9e7a5d6418097cf3dca974e26bb5e3bbd679966a7ae2120ef2`  
		Last Modified: Wed, 15 Jul 2026 23:58:39 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787b4c19fad369dd4931267aa4961d6f6a5516f54f909ef0061303e5f1734389`  
		Last Modified: Wed, 15 Jul 2026 23:58:39 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
