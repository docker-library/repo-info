## `traefik:v3-windowsservercore-ltsc2022`

```console
$ docker pull traefik@sha256:cc70c31512ac41e1bbdaeae2427ff0b3e9caa56a20897ee0176113afd3e550b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `traefik:v3-windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull traefik@sha256:476a08491212311ee6bf64562e36834146251c845355bbfd8a7f43ccb4fc88db
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2298432342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38ca01ec157538091b2d147aa59a0d0c2e390df80c9b25e0725e3828f10165d4`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 21:50:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 22:04:21 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.7.18/traefik_v3.7.18_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Wed, 11 Nov 2026 22:04:22 GMT
EXPOSE 80
# Wed, 11 Nov 2026 22:04:22 GMT
ENTRYPOINT ["/traefik"]
# Wed, 11 Nov 2026 22:04:23 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.18 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:3e4ef424dfaba895bf0c6c2b9e302375628dafa983e3fd708e8b0acb5b57e943`  
		Last Modified: Wed, 11 Nov 2026 21:52:23 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f01907772621a0d693af3e2e6ea1c02ba65cfe28b8703099cd739281432184`  
		Last Modified: Wed, 11 Nov 2026 22:04:38 GMT  
		Size: 52.1 MB (52079282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70167bd3a3ba3747c809cd9af108903b16108eb97384db593173c7cdac9157c`  
		Last Modified: Wed, 11 Nov 2026 22:04:26 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12b3876020815cec1e8a1d5c5d0c65e2a9e5591998e4e5830b90dfddb2f827b`  
		Last Modified: Wed, 11 Nov 2026 22:04:26 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb35175e492760ff82dd744bfb610a0416fcc135c6e1f729e48b94b5b32853a6`  
		Last Modified: Wed, 11 Nov 2026 22:04:27 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
