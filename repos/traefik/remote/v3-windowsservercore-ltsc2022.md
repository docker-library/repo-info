## `traefik:v3-windowsservercore-ltsc2022`

```console
$ docker pull traefik@sha256:58f1cd650999158c186e97d75b7aa81ce89ac5e344b8a62d4dec1adc046f9176
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `traefik:v3-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull traefik@sha256:73e85c382a20d78429a88b82f68ba9ab7442a7b756d910a9671b1129ebfaad79
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2279160418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b12562a2ce10d8c0bbc34150e3cc2efa1b2aca1b41a7be91e7b6060b8f8fcb1`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 10 Nov 2026 23:18:05 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 10 Nov 2026 23:39:58 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.7.18/traefik_v3.7.18_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Tue, 10 Nov 2026 23:39:59 GMT
EXPOSE 80
# Tue, 10 Nov 2026 23:40:00 GMT
ENTRYPOINT ["/traefik"]
# Tue, 10 Nov 2026 23:40:00 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.18 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:883c8d10764cd7b5dff7be3431b9a803be8ace04221f8dd88db963d201e88de8`  
		Last Modified: Tue, 10 Nov 2026 23:22:10 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de753cacab7cbf96f27fb5fd1a171c9bcfb6f0a3c80665f9ae8a195b3d41f56b`  
		Last Modified: Tue, 10 Nov 2026 23:40:14 GMT  
		Size: 52.1 MB (52099011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25bea207e3fd1d8e55bb2a49a5a2ccdbaafb343d0eaa0c81f3ad09ec8f8aa692`  
		Last Modified: Tue, 10 Nov 2026 23:40:06 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176f52ad6a3a500cb337c1fdd4734d05570baf6d59376de814eb8d5a9b24782c`  
		Last Modified: Tue, 10 Nov 2026 23:40:06 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84bc69cb3288eca73bc02fb29ea065553468c74a6245a5c863a3b00bb60e620`  
		Last Modified: Tue, 10 Nov 2026 23:40:06 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
