## `traefik:v3-windowsservercore-ltsc2025`

```console
$ docker pull traefik@sha256:fd5973eda81435dd3e2806b56597adb72591a09ed19b26790b875b485179a391
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `traefik:v3-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull traefik@sha256:e00d1bdca5ba5135e835374d3f6258599e91a7e75aeb95515e633ca4f5df675d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2509646927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0ac231ab7c00fdb11e29529fdf88d50e0a36139a673df7d531588f149d15ad`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:33:42 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.7.13/traefik_v3.7.13_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Wed, 09 Sep 2026 22:33:44 GMT
EXPOSE 80
# Wed, 09 Sep 2026 22:33:44 GMT
ENTRYPOINT ["/traefik"]
# Wed, 09 Sep 2026 22:33:45 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.13 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dc355f42a5bb10dbce669ddc6a18064a7c4dc378168c05587facc071708ea7`  
		Last Modified: Wed, 09 Sep 2026 22:33:55 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9f56460c58517a36ca172d7e800c2ae1728f110f2be109121b01f2e1716819`  
		Last Modified: Wed, 09 Sep 2026 22:34:20 GMT  
		Size: 52.0 MB (52012132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef1a2eee72366d6a75bf12f95431f804375bbc4ae758226b2979139b88d9ec2`  
		Last Modified: Wed, 09 Sep 2026 22:33:55 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c32a27d9dfda4badedca4e1ffe69eec6da32c7e9f9c7e6f050862144b905bc`  
		Last Modified: Wed, 09 Sep 2026 22:33:55 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9557e7b006e0abb3d6f01b392ddead37f0f095597d1eb92a209f4360e90dd50d`  
		Last Modified: Wed, 09 Sep 2026 22:33:55 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
