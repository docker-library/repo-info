## `traefik:v2-windowsservercore-ltsc2025`

```console
$ docker pull traefik@sha256:67aea56c1574e067f1a38d8feeee482b400d06f0139a0f8d328a98814000e7ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `traefik:v2-windowsservercore-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull traefik@sha256:b1b05f7fb992865d9b01fdb028b95f39060fbbd9850e2f3c66e94aa806801f83
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2458679690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e4aca495ad6efc268f84d795d12ac92ad8c6fc709d3b58e31e77cb95db8c503`
-	Entrypoint: `["\/traefik"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Fri, 13 Nov 2026 19:05:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 13 Nov 2026 19:08:33 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/traefik/traefik/releases/download/v2.11.63/traefik_v2.11.63_windows_amd64.zip"         -OutFile "/traefik.zip";     Expand-Archive -Path "/traefik.zip" -DestinationPath "/" -Force;     Remove-Item "/traefik.zip" -Force
# Fri, 13 Nov 2026 19:08:34 GMT
EXPOSE 80
# Fri, 13 Nov 2026 19:08:35 GMT
ENTRYPOINT ["/traefik"]
# Fri, 13 Nov 2026 19:08:36 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.63 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01aa8c296f8ae8139a1d427afdba7dbdd8dc375687e3ae8dc46c1975fbab554`  
		Last Modified: Tue, 10 Nov 2026 19:11:08 GMT  
		Size: 884.3 MB (884271544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbf96f6339af982e9a25aabeff34b091f83bf9d33fb905fd454cff92d431b99`  
		Last Modified: Fri, 13 Nov 2026 19:08:42 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54085680f21e13807df166306f1241128bcf4f6fbebc507598cc659ab021715d`  
		Last Modified: Fri, 13 Nov 2026 19:09:33 GMT  
		Size: 51.3 MB (51343686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3eadbfe5af97bae1cd2b1bbd036f13e4c72fdf31ef29e53949b235904c8427`  
		Last Modified: Fri, 13 Nov 2026 19:08:42 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37ed41367627c16a736ae357b658c7a047d556d97504e0092ae7ef0d5685db1`  
		Last Modified: Fri, 13 Nov 2026 19:08:42 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89550c153b4140501ed45f036824bde725c5750fefd753b6a24e105f5135056c`  
		Last Modified: Fri, 13 Nov 2026 19:08:43 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
