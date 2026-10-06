## `traefik:2-windowsservercore-ltsc2025`

```console
$ docker pull traefik@sha256:66b20238fc277836189355319ed9923e03256a24c9a2feca4eb332317bfb1831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `traefik:2-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull traefik@sha256:0c2a1a110643c93132c336fb2c90d31a7b95b11583351570bd1f922d49e1d772
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2509346828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03f89cfac26dc1e6ea1f9f21297006cae2f734ada0ef03881b014c2d780db26d`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Tue, 06 Oct 2026 17:52:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 06 Oct 2026 17:52:45 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.11.58/traefik_v2.11.58_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Tue, 06 Oct 2026 17:52:46 GMT
EXPOSE 80
# Tue, 06 Oct 2026 17:52:47 GMT
ENTRYPOINT ["/traefik"]
# Tue, 06 Oct 2026 17:52:47 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.58 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ea231231408a01468e997bfac0fb68dd19213e4e215938916636e9aee80ea0`  
		Last Modified: Tue, 06 Oct 2026 17:52:55 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9436f44955e2d43a7f71e1a922ce51be3a786e7cf9e3846192dfb4a8f2aaab22`  
		Last Modified: Tue, 06 Oct 2026 17:53:02 GMT  
		Size: 51.7 MB (51712021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db1ca8f232c5aff34f07dacd1830e1ef6ed49672c6ff2e0370b668282a548f4`  
		Last Modified: Tue, 06 Oct 2026 17:52:55 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0deeedf7244fe2c71e0c80b37a069153076431261905fbd372a29432faa1cd1`  
		Last Modified: Tue, 06 Oct 2026 17:52:55 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b1d5183693e401e9e47a8a3920940028ccc4f69473346b6a0b808cb3c2f3ec`  
		Last Modified: Tue, 06 Oct 2026 17:52:55 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
