## `traefik:v3-windowsservercore-ltsc2022`

```console
$ docker pull traefik@sha256:a406896b203bf37f4236094193f176e65f4f890e641e37be82147102f1490e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `traefik:v3-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull traefik@sha256:02a801d6373c3eeaa6af8c352d67fac141383ae689e22ae0bc2758c2ce098d6a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2271687622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a071d302b95becda3dd354907a53c61f744aef88f6379e49bed244fc317eb9de`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Tue, 06 Oct 2026 17:50:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 06 Oct 2026 17:52:50 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.7.14/traefik_v3.7.14_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Tue, 06 Oct 2026 17:52:52 GMT
EXPOSE 80
# Tue, 06 Oct 2026 17:52:54 GMT
ENTRYPOINT ["/traefik"]
# Tue, 06 Oct 2026 17:52:55 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.14 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a757d2a96e378c16e77ac00db059c71d922722ba3633ab3d550e085ff2eabe6`  
		Last Modified: Tue, 06 Oct 2026 17:53:00 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4481e4e8955f343f034e36cbfb5d6cf9f0bbe874c9b6a6b71767479b4cd703c`  
		Last Modified: Tue, 06 Oct 2026 17:53:41 GMT  
		Size: 52.2 MB (52193687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fddf3a63b8fbc455acf6219c5e96e772c5c3dc70ddf6a9a3dccc3b5541be57e5`  
		Last Modified: Tue, 06 Oct 2026 17:53:00 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c4c5bf75f109602c69222670638e6fec0939f3929b873652f5530022bd06fb`  
		Last Modified: Tue, 06 Oct 2026 17:53:00 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e916a9da51520de9e2308b7774006882da6048a1cb400422b1cde432a5f0004`  
		Last Modified: Tue, 06 Oct 2026 17:53:00 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
