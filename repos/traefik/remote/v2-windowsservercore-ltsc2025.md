## `traefik:v2-windowsservercore-ltsc2025`

```console
$ docker pull traefik@sha256:c144385715ac18002274f3f9616a10691f8bd1bbc5d937925c42a3ecd28b075b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `traefik:v2-windowsservercore-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull traefik@sha256:a6c4f343c8fc1ab6822e027f1b5bbf0fe99bb5d26afe8080fa3c5c6b82951f7a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2458393351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192fbff0437108d99f2497853e466f819498bdbbf37576d66cd75d3bc7ac8a94`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Wed, 11 Nov 2026 23:09:50 GMT
RUN Install update 10.0.26100.33828
# Mon, 16 Nov 2026 19:54:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 19:55:11 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.11.63/traefik_v2.11.63_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Mon, 16 Nov 2026 19:55:12 GMT
EXPOSE 80
# Mon, 16 Nov 2026 19:55:13 GMT
ENTRYPOINT ["/traefik"]
# Mon, 16 Nov 2026 19:55:14 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.63 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9defc15cca887258ad49b1f75aa00c54b7a6a070717bc0cd09bcae97046b4b3c`  
		Last Modified: Fri, 13 Nov 2026 18:53:03 GMT  
		Size: 884.0 MB (884008369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461877c72c63214024e305a95a116295484c62d2c3d46a7707f665457f5fa160`  
		Last Modified: Mon, 16 Nov 2026 19:55:18 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ff0dd9dc6fa8be83c5b01639f604366926f060487ed992334b9e0db52ab7c8`  
		Last Modified: Mon, 16 Nov 2026 19:55:24 GMT  
		Size: 51.3 MB (51320555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d27401d8d68cdc5f993665a62884572d11b9c7858e2ef6e7ce73f9d6bd3f540`  
		Last Modified: Mon, 16 Nov 2026 19:55:18 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffb186d3ef3ddd184213efc0b429355d780575ef7df287a04e1f53e21dd00d9`  
		Last Modified: Mon, 16 Nov 2026 19:55:18 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069b8578a191c8724d60903894e27575678b54db22c70f56d12fbbe86081485a`  
		Last Modified: Mon, 16 Nov 2026 19:55:18 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
