## `traefik:salers-windowsservercore-ltsc2025`

```console
$ docker pull traefik@sha256:d788f0f369f789c9ce815fc0307f2593fe88efe27481b8d1b7c2ae441a2c0bf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `traefik:salers-windowsservercore-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull traefik@sha256:93f787312ba9003c6179ba110b3ae2d06f9597101862890ef6daf945200f1144
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2468263923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e14300a2976981f1d8a26bf61a055f9b826f862b87fd81b7a9251a80d5e82de`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Wed, 11 Nov 2026 23:09:50 GMT
RUN Install update 10.0.26100.33828
# Mon, 23 Nov 2026 19:38:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 23 Nov 2026 19:40:09 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v3.8.0/traefik_v3.8.0_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Mon, 23 Nov 2026 19:40:09 GMT
EXPOSE 80
# Mon, 23 Nov 2026 19:40:10 GMT
ENTRYPOINT ["/traefik"]
# Mon, 23 Nov 2026 19:40:11 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.8.0 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9defc15cca887258ad49b1f75aa00c54b7a6a070717bc0cd09bcae97046b4b3c`  
		Last Modified: Fri, 13 Nov 2026 18:53:03 GMT  
		Size: 884.0 MB (884008369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e96725b9e2c405e100c1377465d14618bec93128f29e4baf21c03e75ffe04a`  
		Last Modified: Mon, 23 Nov 2026 19:40:19 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f9cfefcb6785fd82206cb4d4b7695fdf9274a91c6a7a16a6c02aebd1caab86`  
		Last Modified: Mon, 23 Nov 2026 19:40:27 GMT  
		Size: 61.2 MB (61191057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3565df846e45b12677657c0e8eb40c7b8f557767d62459b0fdfa792dbc0f9b`  
		Last Modified: Mon, 23 Nov 2026 19:40:19 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d6fb36d1f47a0de359d7853671a860fd7f41e24834cfe9683b6a365ab6fbe3`  
		Last Modified: Mon, 23 Nov 2026 19:40:19 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58ea07153a5186c9f021a6bca7db9d1c9fc8e5a84d4fd5f1a0df78a65f8272e`  
		Last Modified: Mon, 23 Nov 2026 19:40:19 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
