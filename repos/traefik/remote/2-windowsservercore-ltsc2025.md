## `traefik:2-windowsservercore-ltsc2025`

```console
$ docker pull traefik@sha256:66fa619481d8f652faf92539a786cc27ec3df23148f99233a17b07e2f91fd0ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `traefik:2-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull traefik@sha256:a9e4a43d280f2475edc576784e72599ffe166078aa28bb28a4a9f65e15896939
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2443360474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3feb51fb6f953c760f837635be88bb6e426d611839ae568f6e952d27ac2b5151`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Fri, 30 Oct 2026 20:33:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 30 Oct 2026 20:36:38 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.11.61/traefik_v2.11.61_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Fri, 30 Oct 2026 20:36:40 GMT
EXPOSE 80
# Fri, 30 Oct 2026 20:36:41 GMT
ENTRYPOINT ["/traefik"]
# Fri, 30 Oct 2026 20:36:41 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.61 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:c50f9b69615f7c2a5f61b2b3a02b7b32bb870f4e0c17ae981661d2dfb6619d4e`  
		Last Modified: Fri, 30 Oct 2026 20:36:56 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31606c03b8e71cb749ee06efa01ddadd4cc540bd7db32b3475dff9666832d17f`  
		Last Modified: Fri, 30 Oct 2026 20:37:40 GMT  
		Size: 51.3 MB (51306250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e3050df3cb82fd2d7ab8fcd2abdeeacd1998da5d5b65d10f8df6d29e14cc7b`  
		Last Modified: Fri, 30 Oct 2026 20:36:56 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761d213e73c97cd613f3edd4e03077972ce6423b4ae4414c9bc9cdc965de6a26`  
		Last Modified: Fri, 30 Oct 2026 20:36:56 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1736cd76c9dd6b7846bc4e7e0a246f18b72aba8062206406aadd1b851184b107`  
		Last Modified: Fri, 30 Oct 2026 20:36:56 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
