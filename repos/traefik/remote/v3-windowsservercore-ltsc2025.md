## `traefik:v3-windowsservercore-ltsc2025`

```console
$ docker pull traefik@sha256:1c94705a968125bd86b99ba1de5653d2057c8247eadcd72c9a2ac0ae652143be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `traefik:v3-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull traefik@sha256:8a668d13e294654903464e18a94624fbacb2ab765c8f5248619bc6265360295a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2492829443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e53f8d5a4d581827656c31782e80de5755672a8242e22c6b11023d3eb49199`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Fri, 04 Sep 2026 19:16:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 Sep 2026 19:18:10 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.7.13/traefik_v3.7.13_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Fri, 04 Sep 2026 19:18:11 GMT
EXPOSE 80
# Fri, 04 Sep 2026 19:18:12 GMT
ENTRYPOINT ["/traefik"]
# Fri, 04 Sep 2026 19:18:12 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.13 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:dd5a88d66abfa2d8387b7a2afb5325804e105ea6e1a2a382a6e891eee9184a8a`  
		Last Modified: Fri, 04 Sep 2026 19:18:29 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7986fd499a06202163bfe65fb174c7b015cb87274d96d107309dd8e96e565e`  
		Last Modified: Fri, 04 Sep 2026 19:18:37 GMT  
		Size: 52.0 MB (52038828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23cf2536759c89c4191f54fd1c9b2198c71b64ee36f4f5b2fddd2558aa7f34cd`  
		Last Modified: Fri, 04 Sep 2026 19:18:29 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42eda5450cc7eb119a14811e659636ce77e207f2c8140c4160983e6323ee0487`  
		Last Modified: Fri, 04 Sep 2026 19:18:29 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5473b4314ac430ae6d7b0d1ba79a7bd81497524d5899a0f1df58ba92dc4ad1f0`  
		Last Modified: Fri, 04 Sep 2026 19:18:29 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
