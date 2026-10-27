## `traefik:mimolette-windowsservercore-ltsc2022`

```console
$ docker pull traefik@sha256:7a029c186d3646c4285dfa613d0a9f69725f9b86f93f7c394e860fe82fe83391
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `traefik:mimolette-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull traefik@sha256:4c294a9b9900d5b5655399259561ce9a5b3a74d92086e12f7b0a2639fa1a16ab
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2278753638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a76e00e358a236b7bff5a943a89df8954423a43b4cfc08ddaf0894981d5c5e5c`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:49:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 18:00:38 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.11.60/traefik_v2.11.60_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Tue, 27 Oct 2026 18:00:39 GMT
EXPOSE 80
# Tue, 27 Oct 2026 18:00:40 GMT
ENTRYPOINT ["/traefik"]
# Tue, 27 Oct 2026 18:00:40 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.60 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:578554637062e77bb1ecb2ef376ce01bd36311579fe4538bfabdccb9b18d5abf`  
		Last Modified: Tue, 27 Oct 2026 17:51:10 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0366567b68e92312be1a61b1d9aff34095d885114824adfd4ca241196feadbcb`  
		Last Modified: Tue, 27 Oct 2026 18:00:52 GMT  
		Size: 51.7 MB (51692254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:326819b87983912b3c1107ea32f3c8ca2c7b7b3705c6a53dff5fcee7af497e2a`  
		Last Modified: Tue, 27 Oct 2026 18:00:45 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfdb92eb4df40af7ff24c006e875cb245e0148681dbfd5e1707132bb06c7223`  
		Last Modified: Tue, 27 Oct 2026 18:00:45 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f62b476ab4ee217824be5c16ead55dd967e0cd83404d8248a5c9f74b36eb8f29`  
		Last Modified: Tue, 27 Oct 2026 18:00:45 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
