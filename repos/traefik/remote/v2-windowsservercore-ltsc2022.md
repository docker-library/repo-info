## `traefik:v2-windowsservercore-ltsc2022`

```console
$ docker pull traefik@sha256:07e8f9ce9ad6f2a99765362e02625d29e2233858c774c5af2340556773adf37f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `traefik:v2-windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull traefik@sha256:8d58355a64798d4978158bc6bd00e6581653fe137ba2673435e42b7ebbd62b5f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2297661065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59a37f4ef17840329f98633c6c620e8900288c6f5260a390173171ce4c41b2ba`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 21:51:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 22:04:26 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.11.62/traefik_v2.11.62_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Wed, 11 Nov 2026 22:04:27 GMT
EXPOSE 80
# Wed, 11 Nov 2026 22:04:28 GMT
ENTRYPOINT ["/traefik"]
# Wed, 11 Nov 2026 22:04:28 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.62 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:59f4d5422eed2c478715bb4732415753d4fe16fb151638b8a66d61f84668b2e1`  
		Last Modified: Wed, 11 Nov 2026 21:55:04 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ac836baf02c256716ef2da329f4ea51269cb54e12b1605f7fe88a04735347a`  
		Last Modified: Wed, 11 Nov 2026 22:05:02 GMT  
		Size: 51.3 MB (51308013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d090f48d41b475684439d44bbf3032f07bf2fb751fe9914f30649583bf9311a5`  
		Last Modified: Wed, 11 Nov 2026 22:04:32 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b70ebac083f4323d8bdd4fc9889887198e8b5b4072e3dca9fbea098d8ca55b`  
		Last Modified: Wed, 11 Nov 2026 22:04:32 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95b5744daab9ec367b6ead8b9a14c8e1acdf48e7ec76391b83f7c9cdc865fe7`  
		Last Modified: Wed, 11 Nov 2026 22:04:32 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
