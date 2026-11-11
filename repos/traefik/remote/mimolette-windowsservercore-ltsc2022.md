## `traefik:mimolette-windowsservercore-ltsc2022`

```console
$ docker pull traefik@sha256:94c5f675d073da64f335b6530edd208af5db169b8e22bbc3abfde96cc90c3447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `traefik:mimolette-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull traefik@sha256:04424ef93b73fa17d139a5681ed2da134fc979bb1a54bdb1581a9b492c684192
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2278376906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2e48a4b354b0175b435fcf49a38de26f62def1cb852cce4fb17abe0e89203f2`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 10 Nov 2026 23:18:05 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 10 Nov 2026 23:40:41 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.11.62/traefik_v2.11.62_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Tue, 10 Nov 2026 23:40:42 GMT
EXPOSE 80
# Tue, 10 Nov 2026 23:40:42 GMT
ENTRYPOINT ["/traefik"]
# Tue, 10 Nov 2026 23:40:43 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.62 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:883c8d10764cd7b5dff7be3431b9a803be8ace04221f8dd88db963d201e88de8`  
		Last Modified: Tue, 10 Nov 2026 23:22:10 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7999ea59269f137f931e22d49216049e92e2e3ac51dca1c2064c7508804f5a0c`  
		Last Modified: Tue, 10 Nov 2026 23:40:54 GMT  
		Size: 51.3 MB (51315491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a965fd77d3ac4f38a8864ab0b36125a5892de7f1ded17e01e40fde6098b95033`  
		Last Modified: Tue, 10 Nov 2026 23:40:47 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392cbf16a155f41d27d6ad46edc7359c5d62caa27512a85851940a85a098e17b`  
		Last Modified: Tue, 10 Nov 2026 23:40:47 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5305b7202d6daa951ae29e9175d8ce03d2ed4c317f63e2df2ce833a7f4745b9f`  
		Last Modified: Tue, 10 Nov 2026 23:40:47 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
