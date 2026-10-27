## `traefik:windowsservercore-ltsc2025`

```console
$ docker pull traefik@sha256:a7a04e190e4368a4c5679b1903fd3b469c14261e7476fc87232438fdc7ad34e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `traefik:windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull traefik@sha256:aaec5d2518b21e66b7d872ef6991a3a784c5955d5ab2a227a7452ca217979d22
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2444252193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954c1e44ed8170f35dc87def6dafdce889254a81d8e926e75e45324fe2ae50c5`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 17:49:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 17:49:36 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.7.16/traefik_v3.7.16_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Tue, 27 Oct 2026 17:49:38 GMT
EXPOSE 80
# Tue, 27 Oct 2026 17:49:38 GMT
ENTRYPOINT ["/traefik"]
# Tue, 27 Oct 2026 17:49:40 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.16 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4cc14c0d313a53039a0a6a49e50b2d7e3ae6260f2e4c81084cf67c62debb53d`  
		Last Modified: Tue, 27 Oct 2026 17:49:44 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ef054960413f47a8ab2105c0943baa26af27c021faeb57933e5a9f939f8942`  
		Last Modified: Tue, 27 Oct 2026 17:49:52 GMT  
		Size: 52.2 MB (52197931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac3f556659a920578761e6935ec4272fecbb0a18a08d5133eae589c344d1667`  
		Last Modified: Tue, 27 Oct 2026 17:49:44 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3acd7cd12ea9b97b7cc30cf75713c46eab63868dcc624cf6f2dd5216682c380`  
		Last Modified: Tue, 27 Oct 2026 17:49:44 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4917822a7c4e1cab1898aa634d071286c84e6b39af9fe7efce6f6a4e7004e19d`  
		Last Modified: Tue, 27 Oct 2026 17:49:44 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
