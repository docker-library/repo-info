## `traefik:langres-windowsservercore-ltsc2022`

```console
$ docker pull traefik@sha256:362c63a661959ae2c6b6ab17e4fc01ccf9d3ce6dda9c3f7f6221f6d71d3c3617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `traefik:langres-windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull traefik@sha256:6608531aa52b1f0a3c7059066d03ae4c98abc943df7fb5ecc0f29ef1266d96d0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2298472156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab55feae4d4bc9894b8503a72324ab107757c1f0f1be3007c2199aef049edcc2`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Fri, 13 Nov 2026 18:58:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Nov 2026 19:01:19 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.7.19/traefik_v3.7.19_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Fri, 13 Nov 2026 19:01:21 GMT
EXPOSE 80
# Fri, 13 Nov 2026 19:01:23 GMT
ENTRYPOINT ["/traefik"]
# Fri, 13 Nov 2026 19:01:24 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.19 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7fe4d2320bbe3eb22234d8235d01aed2186e1a03716eadffcac75635983fb9`  
		Last Modified: Fri, 13 Nov 2026 19:01:28 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a71a4dad0cc2a49634f7e8ac43c3f4b0993d5d2d2c8c209ace53a6669eca9e4a`  
		Last Modified: Fri, 13 Nov 2026 19:02:20 GMT  
		Size: 52.1 MB (52119147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d9643769467ac90ee3c4d71fb41c819ccb462a753ae97238f11f3cc35a2d87`  
		Last Modified: Fri, 13 Nov 2026 19:01:28 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1e3e40efa4964fe915897e5c122082535e42b9395e55e008fc5bd0a06ab92e`  
		Last Modified: Fri, 13 Nov 2026 19:01:28 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f5492ab3554f88264c27c2f7f01b63f816615adb0d94f3887961faf3d769a2`  
		Last Modified: Fri, 13 Nov 2026 19:01:28 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
