## `traefik:v3-windowsservercore-ltsc2025`

```console
$ docker pull traefik@sha256:dbf4680db20eda801d33033e1d070799d5d0e7a878b7cc216e3e55d78f7ec139
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `traefik:v3-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull traefik@sha256:e599ede5884a129c10e7603bfca43419c71673bc5b58f1e77ebf544036d1895b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2406358692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cecfa5fe46ee7bf587bc7598bea5afc072b212e4e38033b2fa7ff2b498c46428`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Fri, 24 Jul 2026 19:36:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 24 Jul 2026 19:38:05 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.7.9/traefik_v3.7.9_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Fri, 24 Jul 2026 19:38:07 GMT
EXPOSE 80
# Fri, 24 Jul 2026 19:38:08 GMT
ENTRYPOINT ["/traefik"]
# Fri, 24 Jul 2026 19:38:09 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.9 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:4575776be872459bb0592178461c94b9e69f5eaf3d69839330e017a9254409fa`  
		Last Modified: Fri, 24 Jul 2026 19:38:21 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62dd5262bf97e741cc6e56ae2b3e5727750a8d5ed673f99bd3e50cd29a39ffa`  
		Last Modified: Fri, 24 Jul 2026 19:38:28 GMT  
		Size: 51.3 MB (51345325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8b53e1f746b3458da435b459f560119399184cf1e27989228cfc1f4d0c226`  
		Last Modified: Fri, 24 Jul 2026 19:38:21 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d1b7928e046a9647ba4dd5cc2313342317553e02ec694a68285fd580185281`  
		Last Modified: Fri, 24 Jul 2026 19:38:21 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4337e1249a0ed2ce934aebff30b510e467e3ecda002a3cee63470025c0989c5e`  
		Last Modified: Fri, 24 Jul 2026 19:38:21 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
