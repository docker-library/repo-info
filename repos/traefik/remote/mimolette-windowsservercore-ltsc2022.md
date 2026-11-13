## `traefik:mimolette-windowsservercore-ltsc2022`

```console
$ docker pull traefik@sha256:f4527f814c77a34d6bb71a406a1be0a200c3135f3a13e5997d89537790180c92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `traefik:mimolette-windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull traefik@sha256:ea426df648ef2102e26ab3d058e6a8f7c9d4df647bdfd05536b89f214eeabaf7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2297667925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac6652691999e4aba4933c0213c5ca2325a36e5d07269fcdc0a7cb737a694999`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Fri, 13 Nov 2026 19:06:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Nov 2026 19:08:40 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.11.63/traefik_v2.11.63_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Fri, 13 Nov 2026 19:08:41 GMT
EXPOSE 80
# Fri, 13 Nov 2026 19:08:43 GMT
ENTRYPOINT ["/traefik"]
# Fri, 13 Nov 2026 19:08:44 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.63 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:9bc11776a036f3d542d38b085d035f3a27eb51e3b320fbc514413c4beb70b4b4`  
		Last Modified: Fri, 13 Nov 2026 19:08:49 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b85867bab6f5b360d58495245afd1b06df9993aff415e73434aef583d434cf`  
		Last Modified: Fri, 13 Nov 2026 19:09:38 GMT  
		Size: 51.3 MB (51314925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870498ea541ea00cc8686a9c521d995f13e046273004c151b19391bdc42cf354`  
		Last Modified: Fri, 13 Nov 2026 19:08:49 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ceef0f737849c4c699ea45bc68f2de4be56b591dc4a313615861a7fb8c3b04`  
		Last Modified: Fri, 13 Nov 2026 19:08:49 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce2a297b368dc30d529a8131dc39063000cd18e30a5e22cc271184ab1f5b046`  
		Last Modified: Fri, 13 Nov 2026 19:08:49 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
