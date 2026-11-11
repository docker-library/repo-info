## `traefik:salers-windowsservercore-ltsc2022`

```console
$ docker pull traefik@sha256:c0177e299b600d3e08595e84d5ebcd60583ba87c2269b888608afae5a64477af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `traefik:salers-windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull traefik@sha256:80581ca0fd0f337df67feff4d8d7602a61587c8b6723d86cfb642fa4a59f4648
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2299494912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5efc89a5732b6226d97403f75b9e78bfcfe589e41f50e6d3f296316138a3f7b8`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 21:46:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 22:03:59 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.8.0-rc.2/traefik_v3.8.0-rc.2_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Wed, 11 Nov 2026 22:04:00 GMT
EXPOSE 80
# Wed, 11 Nov 2026 22:04:01 GMT
ENTRYPOINT ["/traefik"]
# Wed, 11 Nov 2026 22:04:02 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.8.0-rc.2 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:3f6bb1dc16f371997c336e92ee761f9edcdbcf95b66ad066bcf91c5ffc952956`  
		Last Modified: Wed, 11 Nov 2026 21:49:08 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528a700ed079f57841741f29e89b2dfad79f55dd5651f3bdf6533e25622fabab`  
		Last Modified: Wed, 11 Nov 2026 22:04:14 GMT  
		Size: 53.1 MB (53141957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97aeee78d883eeb25bd541e8e817de9c211714a17439c27acf21207fd5841088`  
		Last Modified: Wed, 11 Nov 2026 22:04:07 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18864cfe9ac9abb458c8b91d884eb983fbda15dd5084e39fd64e70e6ea90904b`  
		Last Modified: Wed, 11 Nov 2026 22:04:07 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd04dc0965b183486c1690ee0eb18653c13b56a9c1ca43bd9bed760b0cb6590`  
		Last Modified: Wed, 11 Nov 2026 22:04:07 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
