## `traefik:v3-windowsservercore-ltsc2022`

```console
$ docker pull traefik@sha256:a2d370795829fe804cc5b49279b2990d6c58613ebcc0775fd9ca1409f0a2acbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `traefik:v3-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull traefik@sha256:4d64cca983e939205931cc7e2f9131d4e52fbe412f02d1b2594e608c7019dc2c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2278464193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c30eb100854bdfa35d9853f927aa03fcff53e16b85af3a662f7173246e7247b`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:04:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:05:14 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.7.14/traefik_v3.7.14_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Tue, 13 Oct 2026 23:05:15 GMT
EXPOSE 80
# Tue, 13 Oct 2026 23:05:16 GMT
ENTRYPOINT ["/traefik"]
# Tue, 13 Oct 2026 23:05:17 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.14 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246502be7d4b35cc9966cb89e4faff6bfd2db7799d901f7a25dbe5410d0fb91a`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937e2c51fb26f10f21dfa3294b07b1d121304ae6055161f89c0fe8ded98de3f0`  
		Last Modified: Tue, 13 Oct 2026 23:05:28 GMT  
		Size: 52.2 MB (52173520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00965d37098f51978b3a80c48e7ee68bd18e13fe945ad4249023ec7ddec5cfda`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a76d62e5d19dd4195fe5d56992d3081fb2d70527ded32add86d3550411eaa8f`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b4c6c11f43c4556ae696031d6ceef603f7f3e6a960a3f89fdcb6cb11e1d50a`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
