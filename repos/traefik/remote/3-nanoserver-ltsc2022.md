## `traefik:3-nanoserver-ltsc2022`

```console
$ docker pull traefik@sha256:9d486424c8307d0564449dfacfc809f571b39e5b50e28b05de3886b9e0253e94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `traefik:3-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull traefik@sha256:a148a305c41f74b4d63a45c29de79859baede08328e48a6e33c027137e5e2818
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175563680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2bcd855aed8e2fb1b76eab2b5b4435b2eeaab6014d8eda28dae8b3107980965`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 19 Aug 2026 17:49:16 GMT
RUN cmd /S /C #(nop) COPY file:31fe5ef3afbb68880c8f0561c6766bcc8ccc398a1e81390f4d1fcf56062b5d64 in \ 
# Wed, 19 Aug 2026 17:49:18 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 19 Aug 2026 17:49:18 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 19 Aug 2026 17:49:19 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.11 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc0f388dfe41179924a7d77bfcea5278652b57b7cddb29107a4b8dc5e9b5b17`  
		Last Modified: Wed, 19 Aug 2026 17:49:30 GMT  
		Size: 51.3 MB (51302608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50309c8bb5c807bd53df7508ef0859f176d411110ddc4763820870e5ed3736ae`  
		Last Modified: Wed, 19 Aug 2026 17:49:23 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed27abd115cd9c50fa386da19cb1c9f63bbe97e99dffa0a7002a9d06336e55c`  
		Last Modified: Wed, 19 Aug 2026 17:49:23 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7dba76524dc16b1a92faaaa9a7e4a9765213369a008c4239fd55a15fad67a4`  
		Last Modified: Wed, 19 Aug 2026 17:49:23 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
