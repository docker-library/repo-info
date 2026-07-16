## `traefik:3-windowsservercore-ltsc2025`

```console
$ docker pull traefik@sha256:4f5a8989c090560cfbbd93b7d57a91f838c6202759e278eb54d0308b5e606c8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `traefik:3-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull traefik@sha256:78dabf78c65ce2b761bf81216d88aa0b90dd672b6d2efa5175467811f295455a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2406322811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05ca0900dff3fee96e55ac7447b36286262eda1003346dbe2eaebaeda9067c90`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:03:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:04:51 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.7.8/traefik_v3.7.8_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Wed, 15 Jul 2026 23:04:52 GMT
EXPOSE 80
# Wed, 15 Jul 2026 23:04:53 GMT
ENTRYPOINT ["/traefik"]
# Wed, 15 Jul 2026 23:04:53 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.8 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:94a345378c49701925e0441013ac8e3604f1d23325e4b27ff041dd323f8b280b`  
		Last Modified: Wed, 15 Jul 2026 23:04:58 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d96958d3f911137dc9f0ad71598885d546889ce1939161a0721e35c64e79c42`  
		Last Modified: Wed, 15 Jul 2026 23:05:04 GMT  
		Size: 51.3 MB (51309355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068e6e5f1e2553c62d2858b58aefc803534a264e31a4e6711c6c3e44d1cc74a7`  
		Last Modified: Wed, 15 Jul 2026 23:04:57 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2898e38903f696874f407fe497ccee733e3204e3117a4c5e62ebe057febe198e`  
		Last Modified: Wed, 15 Jul 2026 23:04:57 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeecdbead260caf5dc9843f0e172dab1a0af01e8193bb84cda316193fe1fc54c`  
		Last Modified: Wed, 15 Jul 2026 23:04:57 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
