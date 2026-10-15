## `traefik:mimolette-windowsservercore-ltsc2022`

```console
$ docker pull traefik@sha256:007251ba5e125637bcf8db0acf10c12fefd475598e65cad3f3f8a67349b0f3d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `traefik:mimolette-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull traefik@sha256:7c032a2ce092b766acec1fcbf96c4188bb4fce8533f93865bfac95adcd61cf25
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2277968164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9b6928583302b05cb925b583d7031f387f1ce167cad78564560bae450da8662`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Thu, 15 Oct 2026 19:20:05 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Oct 2026 19:43:25 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.11.59/traefik_v2.11.59_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Thu, 15 Oct 2026 19:43:26 GMT
EXPOSE 80
# Thu, 15 Oct 2026 19:43:27 GMT
ENTRYPOINT ["/traefik"]
# Thu, 15 Oct 2026 19:43:29 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.59 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:daf2622527b621d875046c00f44f9d2ba85e755934ce43e88fb30763cb6c4f95`  
		Last Modified: Thu, 15 Oct 2026 19:43:33 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea94924a67d870150ad6ef4d5031c7eafd1cf0cc200d4d6f363827395ef1ad8`  
		Last Modified: Thu, 15 Oct 2026 19:43:39 GMT  
		Size: 51.7 MB (51677403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e922fe6fc206a9c04e8e2d86237c1663eb71d7ba3e89cd06551abecd5d3766`  
		Last Modified: Thu, 15 Oct 2026 19:43:33 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ee00c884ed22d0826b4931d261f0085117c2a2769dd2dc4c845a80abf046f2`  
		Last Modified: Thu, 15 Oct 2026 19:43:33 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a5cf0908df4b17f2c3039751d2ba0c93bd969fa34e6f55f62975a7327e6078`  
		Last Modified: Thu, 15 Oct 2026 19:43:33 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
