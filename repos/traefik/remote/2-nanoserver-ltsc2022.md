## `traefik:2-nanoserver-ltsc2022`

```console
$ docker pull traefik@sha256:54026611fe9682a11723d5fa28ad0eb1cd7d69f740dbd3b19a9fbbbdf7cfc5c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `traefik:2-nanoserver-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull traefik@sha256:eb0b3f90fa9f5747d2fa1427b52f4a4717c4f6c9baca82efc06e1903d8987af9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176993387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd0062d44244ed972230fe0b347440b6a055211524e81a7c11459a1802de543d`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:18:08 GMT
RUN cmd /S /C #(nop) COPY file:b58aabc5746729d9c90d9280da76bc863b52f1aa850d6e2369b3320f577763e8 in \ 
# Wed, 14 Oct 2026 00:18:10 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 14 Oct 2026 00:18:11 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 14 Oct 2026 00:18:11 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.58 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bd6a244aaffb1e4b3ccddfe16b9afba63394e7d0d36cdbc13b950746487940`  
		Last Modified: Wed, 14 Oct 2026 00:18:21 GMT  
		Size: 51.2 MB (51194197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0289830b583e90251e5eeee5ca1748803f0d3fde7fe4bb10de1f738d6e532b60`  
		Last Modified: Wed, 14 Oct 2026 00:18:15 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347f1685066dc3c55c40be4b97dbc5255806fd690601d7bc767373af8d97d0ae`  
		Last Modified: Wed, 14 Oct 2026 00:18:15 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee61e5873b35d7e05a3987e84b3d2121e78ba633d2c9309c65f31ca5be0cabd2`  
		Last Modified: Wed, 14 Oct 2026 00:18:15 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
