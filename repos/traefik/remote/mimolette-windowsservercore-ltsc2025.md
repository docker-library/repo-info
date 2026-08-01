## `traefik:mimolette-windowsservercore-ltsc2025`

```console
$ docker pull traefik@sha256:829fc30adadccf3ce98019c260bbc7e3bad99f329e1439cdb36bd51528e62841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `traefik:mimolette-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull traefik@sha256:85abfd34ec488cae265c024b06b3e146d2ab1681d42e1934c43b5f5e210501b7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2406421821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e50c7ada9fa200f82f70af38280c07560b568326074f32a2920d33c412e800a`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Fri, 31 Jul 2026 21:16:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Jul 2026 21:17:19 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.11.54/traefik_v2.11.54_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Fri, 31 Jul 2026 21:17:20 GMT
EXPOSE 80
# Fri, 31 Jul 2026 21:17:21 GMT
ENTRYPOINT ["/traefik"]
# Fri, 31 Jul 2026 21:17:22 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.54 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:507607215ea75fc6b499c19f7e112116c248a7f7569aff78038ac813bbcb894c`  
		Last Modified: Fri, 31 Jul 2026 21:17:26 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07dd403c8dc69141d801ba65e2e1bea2c011b524bc0596967b1f0f9839ee121d`  
		Last Modified: Fri, 31 Jul 2026 21:17:33 GMT  
		Size: 51.4 MB (51408411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a8d9319da04646a323594e8d3e1e9c608faa1d3de7fc80383d25b387a89add`  
		Last Modified: Fri, 31 Jul 2026 21:17:26 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401181d92e4e7d07ff6c899f75c8567ef52a4de736ffb9f7746355631c7dfe48`  
		Last Modified: Fri, 31 Jul 2026 21:17:26 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9921c9b06d2dcec3a7b494064566960171d7effcce92f3ee6c27b200eb89df`  
		Last Modified: Fri, 31 Jul 2026 21:17:26 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
