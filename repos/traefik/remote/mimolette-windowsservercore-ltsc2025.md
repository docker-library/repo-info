## `traefik:mimolette-windowsservercore-ltsc2025`

```console
$ docker pull traefik@sha256:ade6748de35df687c1e8189a96d8ea6edab912afc8f500389d07a682998315d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `traefik:mimolette-windowsservercore-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull traefik@sha256:f0b10b674c343cd1afca5736333aa1f755f04f60df3cd538222ab1247bce2d9b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2458657046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:193f38c83c5d620dc992b14eba940d994bc7c8df57c4c71d03618246397b2b5e`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Wed, 11 Nov 2026 21:51:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 21:52:08 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.11.62/traefik_v2.11.62_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Wed, 11 Nov 2026 21:52:09 GMT
EXPOSE 80
# Wed, 11 Nov 2026 21:52:10 GMT
ENTRYPOINT ["/traefik"]
# Wed, 11 Nov 2026 21:52:10 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.62 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01aa8c296f8ae8139a1d427afdba7dbdd8dc375687e3ae8dc46c1975fbab554`  
		Last Modified: Tue, 10 Nov 2026 19:11:08 GMT  
		Size: 884.3 MB (884271544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee124fcf06ce994877ef03c64e2c448fe5d4ce41e5657d61415da28c839b8dd`  
		Last Modified: Wed, 11 Nov 2026 21:52:14 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85222f6b779e16e0c496e2d9fffa9b5c1bd0456c99e6b067d7b97acd2d18d3c1`  
		Last Modified: Wed, 11 Nov 2026 21:52:21 GMT  
		Size: 51.3 MB (51321038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f84dc02a4e4aac0ef75be605a7970e08f6323eb55dedb5c20378ed53324c9eb`  
		Last Modified: Wed, 11 Nov 2026 21:52:14 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938eeb4edb80ad895ae188bfe0643df75854fcac3e3b83a8232bcf0a356eb4f9`  
		Last Modified: Wed, 11 Nov 2026 21:52:14 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf535f81f4bef8f52c861649bbb068a408562d862fdc3a954292612b7b037aa2`  
		Last Modified: Wed, 11 Nov 2026 21:52:14 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
