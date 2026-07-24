## `traefik:v2-windowsservercore-ltsc2022`

```console
$ docker pull traefik@sha256:d395bf244b118a4d3930a760ac3ee8c6ab3ee0a235f0bec1e663c673dfef7bc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `traefik:v2-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull traefik@sha256:22153da7726671b997273b7fcfc9977b3a05609b6fd2aac18e5565eeaa7af3d9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2208733142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:239f247a0e13cfe08bfbcef21765fadb3db89114b99eb8a5d3059744f0deb0c7`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Fri, 24 Jul 2026 20:00:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 24 Jul 2026 20:18:06 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.11.53/traefik_v2.11.53_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Fri, 24 Jul 2026 20:18:07 GMT
EXPOSE 80
# Fri, 24 Jul 2026 20:18:08 GMT
ENTRYPOINT ["/traefik"]
# Fri, 24 Jul 2026 20:18:08 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.53 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:e82d2aea56aaf0efb5b47f2f3bce7d5e8d0b5149ec3c46a011b7f73510074e20`  
		Last Modified: Fri, 24 Jul 2026 20:18:18 GMT  
		Size: 51.2 MB (51174826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b4e9c91d56b12cde052f86fcdc670de7ea7651a7a47a343170f4845b3acc44`  
		Last Modified: Fri, 24 Jul 2026 20:18:12 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e923e89243dce0baeb5b2506d3cf5532ad0470eff0ab9bd495bf57b46e84bcc6`  
		Last Modified: Fri, 24 Jul 2026 20:18:12 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd475cf6df32fb1b72491826b417b3a852b06583e54ccffe864eb39941bdc5d9`  
		Last Modified: Fri, 24 Jul 2026 20:18:12 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
