## `traefik:windowsservercore-ltsc2025`

```console
$ docker pull traefik@sha256:7273fece7c92c3b3061790b50d0d571aabad49d2e2d07ac40daab7123747ff40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `traefik:windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull traefik@sha256:373bef9e41d52ec65f9517073e7a174b091fb8fe541e0de77c5b397822914816
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2444171136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88c7ac43e2d8fae250367869cacddef96f75a889b86be41971274fceacfc6723`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 10 Nov 2026 23:43:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 10 Nov 2026 23:44:54 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.7.18/traefik_v3.7.18_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Tue, 10 Nov 2026 23:44:55 GMT
EXPOSE 80
# Tue, 10 Nov 2026 23:44:55 GMT
ENTRYPOINT ["/traefik"]
# Tue, 10 Nov 2026 23:44:56 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.18 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc51cd14ae91479865a5a5ed73013deb6d21e976fea1525ccd7a9889c1ff93b`  
		Last Modified: Tue, 10 Nov 2026 23:45:01 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888849a3e141fe6d7cb40cc546630790f8749f7bd2430daeb23daed287b9717d`  
		Last Modified: Tue, 10 Nov 2026 23:45:08 GMT  
		Size: 52.1 MB (52116965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa0a5fc5be561e5c986eeb1e2bd4be763e0d6f7e36b229171a5d1eab4eeb485`  
		Last Modified: Tue, 10 Nov 2026 23:45:01 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ff8caaf7222abeb5a19005c0f916ba55e5f94a763fc8727b53ccd22d689f0e`  
		Last Modified: Tue, 10 Nov 2026 23:45:01 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d1bc68e621ac769d6960fe57a86dd2f415ee197b484041feaf9b6af48b6325`  
		Last Modified: Tue, 10 Nov 2026 23:45:01 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
