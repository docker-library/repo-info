## `traefik:banon-windowsservercore-1809`

```console
$ docker pull traefik@sha256:2b14ba08c70fd47f61e6e7518fa6f1013798ae435fae7c1644b27945bb351612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `traefik:banon-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull traefik@sha256:040fca3db9c4936ecdb9886cb291198efe1d09eb78845022a638cb084c9e17e1
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1743664682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba1457523905e2b9ae708c017365282c216ce2417276e501b7e6e7029f73488`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 08:10:27 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.9.6/traefik_v2.9.6_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Thu, 12 Jan 2023 08:10:28 GMT
EXPOSE 80
# Thu, 12 Jan 2023 08:10:29 GMT
ENTRYPOINT ["/traefik"]
# Thu, 12 Jan 2023 08:10:30 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.9.6 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454c8a6194acc4d17a157715403fc33ff856eb4ad4874df8fd4de382652f0fc7`  
		Last Modified: Thu, 12 Jan 2023 08:12:17 GMT  
		Size: 35.7 MB (35715041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4ba8ec90cb406b2d65f60f16b45509d83c04814448c04eeefd62ac9b9114b2`  
		Last Modified: Thu, 12 Jan 2023 08:12:08 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d898b90e636483d425c9b0c1010e849de4625c55576ebd018383ff0d1ebb2a5e`  
		Last Modified: Thu, 12 Jan 2023 08:12:08 GMT  
		Size: 1.4 KB (1416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6be478c07d4d001922313eb48012cebedde0f85d16048e3d2910c2688bb246`  
		Last Modified: Thu, 12 Jan 2023 08:12:08 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
