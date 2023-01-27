## `caddy:windowsservercore-1809`

```console
$ docker pull caddy@sha256:b524434116b210d8aea9ae942feec6b4228aebe725904a7fbefb46d8b75e68c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `caddy:windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull caddy@sha256:53a427a9f3b96cbd58dfbe5a209afb9c891f83b457e3287b85ebdd9acc23d572
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1723597778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29c43c6d0193b51e8acae2f1b1bf490bdc56339b69645046655b6614c6009434`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 05:30:49 GMT
RUN [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;     mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/8c5fc6fc265c5d8557f17a18b778c398a2c6f27b/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/8c5fc6fc265c5d8557f17a18b778c398a2c6f27b/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 12 Jan 2023 05:30:49 GMT
ENV CADDY_VERSION=v2.6.2
# Thu, 12 Jan 2023 05:31:26 GMT
RUN [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.6.2/caddy_2.6.2_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('1454eb2de857fa091a00e62199bb5ea7840210a90a9b04f626f0cf3688cdf69ea736b497e3b8ac0f1b40bb9aba416bfa9e4eb9c33be166665ee0ce02a26cfd98')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 12 Jan 2023 05:31:27 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 12 Jan 2023 05:31:28 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 12 Jan 2023 05:31:29 GMT
LABEL org.opencontainers.image.version=v2.6.2
# Thu, 12 Jan 2023 05:31:30 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 12 Jan 2023 05:31:31 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 12 Jan 2023 05:31:32 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 12 Jan 2023 05:31:33 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 12 Jan 2023 05:31:34 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 12 Jan 2023 05:31:35 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 12 Jan 2023 05:31:36 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 12 Jan 2023 05:31:37 GMT
EXPOSE 80
# Thu, 12 Jan 2023 05:31:38 GMT
EXPOSE 443
# Thu, 12 Jan 2023 05:31:39 GMT
EXPOSE 443/udp
# Thu, 12 Jan 2023 05:31:40 GMT
EXPOSE 2019
# Thu, 12 Jan 2023 05:31:57 GMT
RUN caddy version
# Thu, 12 Jan 2023 05:31:57 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867301f48ff67b12f8cc36349e00c5ad9f1f931198a555342992c7d25a65e58b`  
		Last Modified: Thu, 12 Jan 2023 05:36:06 GMT  
		Size: 377.7 KB (377737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71054a160867a3aa953423f7a17c30f540b886758b294a18fdc2a2e80f6d322e`  
		Last Modified: Thu, 12 Jan 2023 05:36:06 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254eefb09e0b23d2b343e47e26ea3dece47e38193337dcd640415fb9d99e2384`  
		Last Modified: Thu, 12 Jan 2023 05:36:12 GMT  
		Size: 15.0 MB (14951236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2a95898b64256687520fadf06759be7bacedabb571b85e0a99a850ecb0653b`  
		Last Modified: Thu, 12 Jan 2023 05:36:06 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fabb0dcbe7fc76dcfb7e24433cae69416d9c03ed09d9a4b04c259fc8beaf70c`  
		Last Modified: Thu, 12 Jan 2023 05:36:05 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0069fcde5c83f0ba4115163d1f71b6462ec6ecd6eb88ee0e0d1da49a3448218`  
		Last Modified: Thu, 12 Jan 2023 05:36:04 GMT  
		Size: 1.4 KB (1403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427fad52066fac2b1d8c60f391238ece19925f6d42044bd55a05ae27d0c677ab`  
		Last Modified: Thu, 12 Jan 2023 05:36:04 GMT  
		Size: 1.4 KB (1381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1e49d5e159cdb6c4d77214277aac046de5f54c7424ffacc7b121a73655a836`  
		Last Modified: Thu, 12 Jan 2023 05:36:04 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f71f1d8fafafbbf0ee6813b885fc04c8ee5c7b2b41e1a3172387bbb0180ce3c`  
		Last Modified: Thu, 12 Jan 2023 05:36:04 GMT  
		Size: 1.4 KB (1407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01c525fadcf9b761b02817a6df34004a433618f2adbc23987e842bc04d388a1`  
		Last Modified: Thu, 12 Jan 2023 05:36:03 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68151d600e01cefbea3c5970de929d72de1824e80d73ff91b8aa1add3f983fb9`  
		Last Modified: Thu, 12 Jan 2023 05:36:02 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a40f0d29f25b0cd7c729b228c390cfdba33c5545fa3dd4de31817dc4d851a97`  
		Last Modified: Thu, 12 Jan 2023 05:36:02 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8540eca1608a18d4200695f1e28827465e753b3c13ba870456ea34cf4f2e153`  
		Last Modified: Thu, 12 Jan 2023 05:36:02 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8844f191fee6ece4e4f90828d38953f8a5d8f90d6d7b7cd79399bf6087f4807f`  
		Last Modified: Thu, 12 Jan 2023 05:36:02 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a1e27ac3f677959055d66d26f9b8db5c6ee14aff49d19f5e5ff8398fcad1d0`  
		Last Modified: Thu, 12 Jan 2023 05:36:00 GMT  
		Size: 1.4 KB (1414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fe3455be19d09d0e4d33b15b115b41214bcc60c0f7c9578e201dcf7f612f47`  
		Last Modified: Thu, 12 Jan 2023 05:36:00 GMT  
		Size: 1.4 KB (1416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28b4df60397e51139f3451b060d2e12c962ed2fdfc9fb216da5fdb1e8a9fd7f`  
		Last Modified: Thu, 12 Jan 2023 05:36:00 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5783de975699e48b6e09ba951d7f1b194c2e4c009b8e343e3086533e1a3990`  
		Last Modified: Thu, 12 Jan 2023 05:36:01 GMT  
		Size: 301.0 KB (301003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dff97691b5418a2d4165b056755581cd3587506ad5638ada4f006d4d0148018`  
		Last Modified: Thu, 12 Jan 2023 05:36:00 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
