## `traefik:3-windowsservercore-ltsc2022`

```console
$ docker pull traefik@sha256:f915cf6bf628132571fcfc48f8e8b1d033bc98e763b05f1907b2e8ac0f42604d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `traefik:3-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull traefik@sha256:de99992fbf912e92d22a31419c7726598a4079f11af215ee3454993cdf1da84e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2209009968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba87a9ce7b60c35378bf70abcaa6d02939f0e2ed9beb3f86044e872262b0a993`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Fri, 24 Jul 2026 20:00:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 24 Jul 2026 20:02:13 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.7.9/traefik_v3.7.9_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Fri, 24 Jul 2026 20:02:15 GMT
EXPOSE 80
# Fri, 24 Jul 2026 20:02:16 GMT
ENTRYPOINT ["/traefik"]
# Fri, 24 Jul 2026 20:02:16 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.9 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfbe37835248d3d63c58a52fc9c2782f09edc0bc64fde110a5f3c219e5c74272`  
		Last Modified: Fri, 24 Jul 2026 20:02:32 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8cde9d2477c1394427d3a23e6edf08459e3b1201bc96c321a3e7314880116f5`  
		Last Modified: Fri, 24 Jul 2026 20:02:38 GMT  
		Size: 51.5 MB (51451617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75423e4773277488e83df1458cf47afec5b10cab05479a306409282091e865ea`  
		Last Modified: Fri, 24 Jul 2026 20:02:32 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf276f98dd536dfb2009a18e75475c05730cc81b96dd8fc505d744d534aae12`  
		Last Modified: Fri, 24 Jul 2026 20:02:32 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a531419ca0eb7f0286d153a5f7cedf5c852657190b47b600f94d06bb54540d85`  
		Last Modified: Fri, 24 Jul 2026 20:02:32 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
