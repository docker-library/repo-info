## `traefik:v3-windowsservercore-ltsc2025`

```console
$ docker pull traefik@sha256:38b3233ec37f5e5c3e02a975bee4cb01e9714acea316ffc6f8e5b17ae3d2f1bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `traefik:v3-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull traefik@sha256:9e6fdca7fb950d2c0e9ed3cedf9e7862802d9959118453f41752d74e055e90e5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2492696342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2b743cae6d6ec351d9378fddc08c591592ba49ec5bce0b2ad07de8da5991996`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 26 Aug 2026 17:40:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 26 Aug 2026 17:42:09 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.7.12/traefik_v3.7.12_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Wed, 26 Aug 2026 17:42:11 GMT
EXPOSE 80
# Wed, 26 Aug 2026 17:42:12 GMT
ENTRYPOINT ["/traefik"]
# Wed, 26 Aug 2026 17:42:13 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d463d1627953f6755f410b81498d66b60f3be4ce84c549182bf47c8c4fbf67fb`  
		Last Modified: Wed, 26 Aug 2026 17:42:28 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b87732668d5cf3e4c82251268a220e43b4d45c4936abedcb7ecc36909022c83`  
		Last Modified: Wed, 26 Aug 2026 17:42:35 GMT  
		Size: 51.9 MB (51905748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df57ecd141a53ed78d7e5ba1c7239f06d7b8c4ead74eece490edf33c4b4b677b`  
		Last Modified: Wed, 26 Aug 2026 17:42:28 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff2379290fda03b2d8b01215b0491e240c85dfc63b979061f5caf3c8caac347`  
		Last Modified: Wed, 26 Aug 2026 17:42:28 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a710d9bbb232a7d22167ab2ae986363013779bf9d679b7f43fc3ae878c62a3d4`  
		Last Modified: Wed, 26 Aug 2026 17:42:28 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
