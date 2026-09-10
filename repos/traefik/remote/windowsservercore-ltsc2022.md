## `traefik:windowsservercore-ltsc2022`

```console
$ docker pull traefik@sha256:fadbae6b8f93332fb894741050d64c553de0b83156ee8b5c9dfc5104f4425d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `traefik:windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull traefik@sha256:5b809176b07a1e2f464d91ebfa5c4b590bcbb0dbbb479e5f94c344f2e10c2ba7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2271482585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7386853b8336a901e62a3e1056fbb43e4e8ef6a81e5ed1fea86615ffeba9a3cc`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:35:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:36:19 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.7.13/traefik_v3.7.13_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Wed, 09 Sep 2026 22:36:19 GMT
EXPOSE 80
# Wed, 09 Sep 2026 22:36:20 GMT
ENTRYPOINT ["/traefik"]
# Wed, 09 Sep 2026 22:36:21 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.13 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390c3dd940ecf265b861931ae3dc9b5172a4e1d3a6a62ef3d59a7d2e3180d1a9`  
		Last Modified: Wed, 09 Sep 2026 22:36:30 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a9833916da1347070fb9223b0077c6b266395bddd1c9c9211cda355d76dc84c`  
		Last Modified: Wed, 09 Sep 2026 22:36:53 GMT  
		Size: 52.0 MB (51988619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704294c60e40cdaa74c1575638ea35305321b90d9ba8ae3eea120a72d2e4a8aa`  
		Last Modified: Wed, 09 Sep 2026 22:36:30 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e82dbb40288c273b15970dfd6b6cf74238ad2127d4410b23f357290d29714e4`  
		Last Modified: Wed, 09 Sep 2026 22:36:30 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df56470d2518f9c5b621484d40b88685ee3ec6b11cd41ac2094b69dd22db7af5`  
		Last Modified: Wed, 09 Sep 2026 22:36:30 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
