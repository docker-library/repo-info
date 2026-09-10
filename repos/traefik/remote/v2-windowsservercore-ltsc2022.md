## `traefik:v2-windowsservercore-ltsc2022`

```console
$ docker pull traefik@sha256:a3014e913cd9423daeac2d9714d75a9e22073c32346ce94a1c0926d13abb4a3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `traefik:v2-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull traefik@sha256:240e08cb35e8e04142a2d2cb0620c3677ec16b8b4c4ac2f61ed0f3036c72341b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2271114179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9b795d07c46b45087f9ce54b1375d632f1ec43f8547b4d2e967ae41376e1675`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:45:04 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.11.57/traefik_v2.11.57_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Wed, 09 Sep 2026 22:45:05 GMT
EXPOSE 80
# Wed, 09 Sep 2026 22:45:06 GMT
ENTRYPOINT ["/traefik"]
# Wed, 09 Sep 2026 22:45:06 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.57 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:9c2b454245496d177f49bf752d1b43585fa7e5486969ff0620b6d71bd6f0a77e`  
		Last Modified: Wed, 09 Sep 2026 22:34:10 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862417b6353d40facf2cb1d77ea4e267b6c41a34753fbd1826309fd9f42d2fe6`  
		Last Modified: Wed, 09 Sep 2026 22:45:29 GMT  
		Size: 51.6 MB (51620157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d97ca6ff105502b32572e470f98b5a9f31136a1dce0a4428f62af39276c56f`  
		Last Modified: Wed, 09 Sep 2026 22:45:10 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6423a0707818d90d23eff2d583c039fa4111a3225f31f5465ad1b2ab97c15a1a`  
		Last Modified: Wed, 09 Sep 2026 22:45:10 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6eef8eb6dd7295cc6fb83d82b247e257403f6942a65fdfae89b324892af7bca`  
		Last Modified: Wed, 09 Sep 2026 22:45:10 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
