## `traefik:2-windowsservercore-ltsc2022`

```console
$ docker pull traefik@sha256:49e5750243dacd7b4d87c012bfaa67cccdfbc8ecc0d7abcb7a32bfabdbc696e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `traefik:2-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull traefik@sha256:36796fbc048850a6b461ae2a701715fd858bf3b0c534d9ee16330ac198d40dc5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2271182317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f07a8ddce0a9f7ab6328f68be509f13f06218480ef13777d29e07aae9f21a468`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Tue, 06 Oct 2026 17:51:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 06 Oct 2026 17:52:55 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.11.58/traefik_v2.11.58_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Tue, 06 Oct 2026 17:52:56 GMT
EXPOSE 80
# Tue, 06 Oct 2026 17:52:57 GMT
ENTRYPOINT ["/traefik"]
# Tue, 06 Oct 2026 17:52:58 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.58 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:3bc3dddc2f0d300887a332b7b6418e49fd4eccc4c2ef471b3e446d565dbdc92d`  
		Last Modified: Tue, 06 Oct 2026 17:53:03 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72882acfd82db7664f3cb38f8680b03e664605f9d9cbf28f9c6b2d61ada2e1a`  
		Last Modified: Tue, 06 Oct 2026 17:53:38 GMT  
		Size: 51.7 MB (51688345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101901a79fdeb3075a7cc73b63f5a37be26cff1da3057dff71423be37add15db`  
		Last Modified: Tue, 06 Oct 2026 17:53:03 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef75e13d96cfb4f98e7d8a9007237f251140f6b1ebc80e59aec2e7f274c790d4`  
		Last Modified: Tue, 06 Oct 2026 17:53:03 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6739cfec5a7bfee958c1d41b4837453a561c0bd51951a39c7bfb81bd05c17b6f`  
		Last Modified: Tue, 06 Oct 2026 17:53:03 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
