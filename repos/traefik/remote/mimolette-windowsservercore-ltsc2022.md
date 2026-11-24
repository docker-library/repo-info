## `traefik:mimolette-windowsservercore-ltsc2022`

```console
$ docker pull traefik@sha256:06d56784d6513e235dd17426c47e7260fc6145ac2b049f3a02fa63c18e482b46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `traefik:mimolette-windowsservercore-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull traefik@sha256:92142cdc8545cee64d458789b48eafb9c4b2abeb51fde70d43e8f526ead73b29
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2297438978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae2e26ddd540a9f313ad43edb5d9134958843b8b0103d908bd3524a8047d974`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Mon, 23 Nov 2026 19:48:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 23 Nov 2026 19:50:19 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.11.64/traefik_v2.11.64_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Mon, 23 Nov 2026 19:50:21 GMT
EXPOSE 80
# Mon, 23 Nov 2026 19:50:23 GMT
ENTRYPOINT ["/traefik"]
# Mon, 23 Nov 2026 19:50:25 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.64 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514cbd3dfae445158cf4fa5649b0749cf2aab51510ffee9cbb4a56b3d3adc7d4`  
		Last Modified: Fri, 13 Nov 2026 18:51:30 GMT  
		Size: 757.1 MB (757071602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a22ff54a1e204ab8aeadbeefb3867a389819b0d453e76a736eb67d9026ce0a4`  
		Last Modified: Mon, 23 Nov 2026 19:50:30 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a8b338380e2d3083978b712fc60c5b10754a3b56cf8002455e9749a1d6aee3`  
		Last Modified: Mon, 23 Nov 2026 19:51:14 GMT  
		Size: 51.3 MB (51343012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b585cbe5408eee049bb2b8dd996ff8c0d2339a2c0d6d9eaad2483599b0ec2a`  
		Last Modified: Mon, 23 Nov 2026 19:50:30 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4357ac07e7194f3673f93b27ad366911e77f4120fe9ff04108132f427a1ad041`  
		Last Modified: Mon, 23 Nov 2026 19:50:30 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b7e24dd5762498a52edc43c061524dee6cbe2fb6bdab1786a7c3fc1ae5c50b`  
		Last Modified: Mon, 23 Nov 2026 19:50:30 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
