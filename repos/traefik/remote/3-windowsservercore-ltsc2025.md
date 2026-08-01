## `traefik:3-windowsservercore-ltsc2025`

```console
$ docker pull traefik@sha256:ccce4dee3b8974cd308f52d040d16667f60f9c8ba6e78fc362bdaefececea2c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `traefik:3-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull traefik@sha256:abf9cc62effc63dfce48ff06f9f8155ab6252d7dfb11a1ff015045b5e2b06c51
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2406622696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75d1ecfa1e97177ec543fc7482ef2f63448b133efb8429dc668c3d2765dd658d`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Fri, 31 Jul 2026 21:05:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Jul 2026 21:06:30 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.7.10/traefik_v3.7.10_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Fri, 31 Jul 2026 21:06:31 GMT
EXPOSE 80
# Fri, 31 Jul 2026 21:06:32 GMT
ENTRYPOINT ["/traefik"]
# Fri, 31 Jul 2026 21:06:33 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.10 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae9dbff0f9a07b230d1f533d101aab3447610e35f85aef6b0b6f4ab73ed9688`  
		Last Modified: Fri, 31 Jul 2026 21:06:45 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28f466f45271350df31a778cc1d62c263b5f63fa39ccdbff86f4bd07183313d`  
		Last Modified: Fri, 31 Jul 2026 21:06:52 GMT  
		Size: 51.6 MB (51609280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8865c53550ea0bb60b61eb1fc0411ba3a7225212fc1b0fd38135b5d0ab729bf7`  
		Last Modified: Fri, 31 Jul 2026 21:06:45 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505523adc069e04ea19032db22941201be365a4a16b0ab702099e1090eb00613`  
		Last Modified: Fri, 31 Jul 2026 21:06:45 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069039570e374af4a6ad7108ccc984137703b67be5ed8d16456a92836e4d8475`  
		Last Modified: Fri, 31 Jul 2026 21:06:45 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
