## `traefik:windowsservercore-ltsc2025`

```console
$ docker pull traefik@sha256:b3243882306b71064885d32a01c8e312aba11e52103cce199d0fc9377a108214
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `traefik:windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull traefik@sha256:857e997c6eeea7e2fee3630b243bc8a3ac957d67d8728b5d8877ccc3a2d78269
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2444177371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2108e702c9eee23d3258da650935262fac7b6455d6a74530eca6f58767c7c86a`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:02:51 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.7.14/traefik_v3.7.14_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Tue, 13 Oct 2026 23:02:52 GMT
EXPOSE 80
# Tue, 13 Oct 2026 23:02:53 GMT
ENTRYPOINT ["/traefik"]
# Tue, 13 Oct 2026 23:02:54 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.14 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:bf39e60944db4928aeaddd1e865feeb88a17ac78dd2f58977e95354ea160ec74`  
		Last Modified: Tue, 13 Oct 2026 23:02:58 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c9642f168616cbbacb61e0fe6a98658ca947bc57e6b79724c66af1b5f12944`  
		Last Modified: Tue, 13 Oct 2026 23:03:05 GMT  
		Size: 52.2 MB (52177887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10af3f573c55786595768c1f824f65b09e9def3df09d2412d90a826cb7e9108f`  
		Last Modified: Tue, 13 Oct 2026 23:02:58 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2eccb079c616d195af61e7199d6fb158fd417f56ed5e79b0b86e480dae8bab3`  
		Last Modified: Tue, 13 Oct 2026 23:02:58 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f3607f3122b9b68c90394f355338263c437f53c6dd272dff6e3889c044133a`  
		Last Modified: Tue, 13 Oct 2026 23:02:58 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
