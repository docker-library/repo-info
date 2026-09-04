## `traefik:nanoserver-ltsc2022`

```console
$ docker pull traefik@sha256:f8c40ace8b09749ebf27e250c6e45918478960811055befb91d1e8bf55dad80b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `traefik:nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull traefik@sha256:6f32fb1dc36e35a3cdb8782bf22418c5b3a6a62d1497dbca19f6ecd56e057c0e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.7 MB (175728330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ca7f4ba53e043086a7e2ca4b0819aeb841d74c49af0d6298f77e3746c700e02`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Fri, 04 Sep 2026 21:00:03 GMT
RUN cmd /S /C #(nop) COPY file:8ed617e0ac7b0df278f34a43db303a825a1bc5e254c80178691dd46b1a41cb8b in \ 
# Fri, 04 Sep 2026 21:00:06 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Fri, 04 Sep 2026 21:00:07 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Fri, 04 Sep 2026 21:00:08 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.13 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c805f5314469ac393eaa79798813e222f93738c23ea8bfda31d3afcd4c3adc42`  
		Last Modified: Fri, 04 Sep 2026 21:00:20 GMT  
		Size: 51.5 MB (51467210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fc976d5cd0026d66041def157853f59b56c2e45e55048490f545767a8a0dd0`  
		Last Modified: Fri, 04 Sep 2026 21:00:13 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50bdf025152b5da757a505fafdd005b1911a5aa5b940a90cc0f59c71da09e5c4`  
		Last Modified: Fri, 04 Sep 2026 21:00:13 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5028bbbae73db56313167129a817d6f67216a0b6af0f3b1ac0112bcc7b35b06c`  
		Last Modified: Fri, 04 Sep 2026 21:00:13 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
