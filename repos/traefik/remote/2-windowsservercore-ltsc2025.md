## `traefik:2-windowsservercore-ltsc2025`

```console
$ docker pull traefik@sha256:22da4cd29b5e31166c6f050f16eab98a05f81681216064957cd95529950d376e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.32995; amd64

### `traefik:2-windowsservercore-ltsc2025` - windows version 10.0.26100.32995; amd64

```console
$ docker pull traefik@sha256:7db15db52e0609262929cd01b62de8fab680e08b195a22c63474058c527b9c66
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2330195989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a37f4fa72867b29ca86c4c351639c06cd4f01b8cc01796f71f13c7d74fb9db7`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 07 Jun 2026 07:36:39 GMT
RUN Install update 10.0.26100.32995
# Wed, 08 Jul 2026 17:16:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 08 Jul 2026 17:17:57 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.11.52/traefik_v2.11.52_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Wed, 08 Jul 2026 17:17:59 GMT
EXPOSE 80
# Wed, 08 Jul 2026 17:18:00 GMT
ENTRYPOINT ["/traefik"]
# Wed, 08 Jul 2026 17:18:01 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.52 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee71d57b2226db82d002abc39a97b7dd144f007db435566364a0285bf115b83`  
		Last Modified: Tue, 09 Jun 2026 18:08:12 GMT  
		Size: 756.1 MB (756083682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a331389217d313cfff346a631ccc0e01c35401f3578945dd67c3807dfeaf1d`  
		Last Modified: Wed, 08 Jul 2026 17:18:06 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f46c47d33d22340738606e8b6081f0997f61dbe9e3b96a57b33084022a9485`  
		Last Modified: Wed, 08 Jul 2026 17:18:28 GMT  
		Size: 51.0 MB (51047864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88c4bd7ce06e20d8c720d8c0a2861356bf9bea3c8683b6a3c9449e9cc7cc3247`  
		Last Modified: Wed, 08 Jul 2026 17:18:06 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ed512a080943593e8430dfd4535ca85326282ef409e40e839fee2f19564b42`  
		Last Modified: Wed, 08 Jul 2026 17:18:06 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b40b04b3bd2b45a2daa2c3c135fbdb1480901d07fb542b07dd5f2de58776044`  
		Last Modified: Wed, 08 Jul 2026 17:18:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
