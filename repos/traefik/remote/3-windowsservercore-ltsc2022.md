## `traefik:3-windowsservercore-ltsc2022`

```console
$ docker pull traefik@sha256:23aa955ef49239445413c6fe55b73850323b308753ddddbfec3cb5d23a097c1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `traefik:3-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull traefik@sha256:f0c094a0b8507e358f3519baeb1fc970f7824cc4544d8eeca6f161fd08818d05
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2235880319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04aef16cbf8d9cd06a9d8d64adb3ccb77af668d85270f69db69be93f50dc1dce`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 26 Aug 2026 17:48:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 26 Aug 2026 17:50:17 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.7.12/traefik_v3.7.12_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Wed, 26 Aug 2026 17:50:19 GMT
EXPOSE 80
# Wed, 26 Aug 2026 17:50:20 GMT
ENTRYPOINT ["/traefik"]
# Wed, 26 Aug 2026 17:50:21 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.12 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9475c5db86c04262c355e2c456c016375cce6c1fe16ea88fb3235e8f05690684`  
		Last Modified: Wed, 26 Aug 2026 17:50:35 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7751ad29c0f7aade70468f34712a00a20127a9de7e95c1d661b6a1abab6e088`  
		Last Modified: Wed, 26 Aug 2026 17:50:41 GMT  
		Size: 51.9 MB (51877653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0499deb0b52730c52bd6f743a45fb264aaf0aad72c0b8e2241b0cf5d8444fc13`  
		Last Modified: Wed, 26 Aug 2026 17:50:35 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe580b6471510b012272bedb133e65ab32fb2e26b097f5272a447962712f64e`  
		Last Modified: Wed, 26 Aug 2026 17:50:35 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d16225f0a5bc4af4646b6e5c639edc69da49ccc2895d3ba54e88b5fa866653`  
		Last Modified: Wed, 26 Aug 2026 17:50:35 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
