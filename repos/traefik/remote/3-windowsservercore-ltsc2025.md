## `traefik:3-windowsservercore-ltsc2025`

```console
$ docker pull traefik@sha256:0d7a1f13868911210429df93b1056092282f8388ba2498bddbd1c87ea80ee111
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `traefik:3-windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull traefik@sha256:414e5cbf205367668a01aa04ccad457ff308abb9cc6cef4e23ef70084aeb4054
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2444195483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:276f72d21f90ae076ee57ea0ac0503f9750c211c8b5364f79d4639cbb96c50df`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Thu, 15 Oct 2026 19:17:42 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 15 Oct 2026 19:19:56 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.7.15/traefik_v3.7.15_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Thu, 15 Oct 2026 19:19:57 GMT
EXPOSE 80
# Thu, 15 Oct 2026 19:19:58 GMT
ENTRYPOINT ["/traefik"]
# Thu, 15 Oct 2026 19:19:59 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.15 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d711e7a65f1a267f3e89fbba695ace799103f41f194f001375973744247ea7`  
		Last Modified: Thu, 15 Oct 2026 19:20:10 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a4b6fe7181d5bb455504b5eed9d6a8b8f7394750c5364d0f527253023b8040d`  
		Last Modified: Thu, 15 Oct 2026 19:20:47 GMT  
		Size: 52.2 MB (52196058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b4670503b7b2c1f6626afcefb5b5bd441bc9d870927a03bb34d10aeb7efb4d`  
		Last Modified: Thu, 15 Oct 2026 19:20:10 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3b1f3ab80b5538fc3a3f7aaa654f247da9374440725e248a4aa98c85002c4a`  
		Last Modified: Thu, 15 Oct 2026 19:20:10 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae7bc557a618f21c5c637713d3be7637a5570a758319cd9e8c20825fc33d86b`  
		Last Modified: Thu, 15 Oct 2026 19:20:10 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
