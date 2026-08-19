## `traefik:3-windowsservercore-ltsc2025`

```console
$ docker pull traefik@sha256:b92f94ca1ca4701b44c937f4e25afb45108c665c608cea7aa874cabe1b6d373d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `traefik:3-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull traefik@sha256:248da0d210dfdc9ac2c7c972a2e6f0983bb7bfe51870bf6a34d238cd109dbf3d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2492660889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f0f203e18cdc1362c21228afe330e82185fcead0c3a41781a9f7905bc68916`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 19 Aug 2026 17:26:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 19 Aug 2026 17:28:06 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.7.11/traefik_v3.7.11_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Wed, 19 Aug 2026 17:28:07 GMT
EXPOSE 80
# Wed, 19 Aug 2026 17:28:08 GMT
ENTRYPOINT ["/traefik"]
# Wed, 19 Aug 2026 17:28:08 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfb9bae8e3c8099019d716033cd9d10c43c1e8509fdf2686f933756c7883d3c`  
		Last Modified: Wed, 19 Aug 2026 17:28:21 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe685777eff42b52579e3ad084b7d007dcdd5ac235f66d23fb1b2d56f549d68`  
		Last Modified: Wed, 19 Aug 2026 17:28:28 GMT  
		Size: 51.9 MB (51870260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad322cf552bea21ddf6a2cb66cd6f3407ff4e22fb5b93e79ca2822df69b42f5c`  
		Last Modified: Wed, 19 Aug 2026 17:28:21 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83935e5ce0809422c4af23bcbeb1c289eb7e187c117f8ce0e7e1fcef48ee8436`  
		Last Modified: Wed, 19 Aug 2026 17:28:21 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df674b38c42521c595644e1a196a803b790bc2d601a4224deed0886cb28c661`  
		Last Modified: Wed, 19 Aug 2026 17:28:21 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
