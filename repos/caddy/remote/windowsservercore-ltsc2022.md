## `caddy:windowsservercore-ltsc2022`

```console
$ docker pull caddy@sha256:295c528352f940db117eb69cc65a3c485fc1bf041c57fab39c4f11435db1ceba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `caddy:windowsservercore-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull caddy@sha256:166ed6c94d1b1204a448f1254b7d68284a000cd8aa8a1993fcae364c7e5e426b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2265657943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55cda777b63ea1e5860711bc2993b221a9ebe2180f50d48c3cef9d0559d33891`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Mon, 16 Nov 2026 20:05:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:12:37 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Mon, 16 Nov 2026 20:12:37 GMT
ENV CADDY_VERSION=v2.11.9
# Mon, 16 Nov 2026 20:12:46 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Mon, 16 Nov 2026 20:12:47 GMT
ENV XDG_CONFIG_HOME=c:/config
# Mon, 16 Nov 2026 20:12:48 GMT
ENV XDG_DATA_HOME=c:/data
# Mon, 16 Nov 2026 20:12:49 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Mon, 16 Nov 2026 20:12:50 GMT
LABEL org.opencontainers.image.title=Caddy
# Mon, 16 Nov 2026 20:12:52 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Mon, 16 Nov 2026 20:12:53 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Mon, 16 Nov 2026 20:12:53 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Mon, 16 Nov 2026 20:12:54 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Mon, 16 Nov 2026 20:12:55 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Mon, 16 Nov 2026 20:12:56 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Mon, 16 Nov 2026 20:12:57 GMT
EXPOSE 80
# Mon, 16 Nov 2026 20:12:58 GMT
EXPOSE 443
# Mon, 16 Nov 2026 20:12:59 GMT
EXPOSE 443/udp
# Mon, 16 Nov 2026 20:13:00 GMT
EXPOSE 2019
# Mon, 16 Nov 2026 20:13:05 GMT
RUN caddy version
# Mon, 16 Nov 2026 20:13:06 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514cbd3dfae445158cf4fa5649b0749cf2aab51510ffee9cbb4a56b3d3adc7d4`  
		Last Modified: Fri, 13 Nov 2026 18:51:30 GMT  
		Size: 757.1 MB (757071602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12fa12ece3b64d9b69d321155154c85a858619f98380712b1629e6c1e867b94`  
		Last Modified: Mon, 16 Nov 2026 20:05:49 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c680bdf82e29b45045c550882b9f5eb100c807a8f25077dcedc08f3a61e48eba`  
		Last Modified: Mon, 16 Nov 2026 20:13:15 GMT  
		Size: 359.1 KB (359080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2ce574857c4b202385fbad17fddf7282c913a6d2fa432c81642163cb110fea`  
		Last Modified: Mon, 16 Nov 2026 20:13:15 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b6bf06cc08edf4487ceba74281a4ed007effc352675047d165951869a68fb4`  
		Last Modified: Mon, 16 Nov 2026 20:13:17 GMT  
		Size: 18.8 MB (18842642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888316bd0cdaaffb2e2dddcb6fb3774d4e7aef66fc21e3c5ac6d8e4a50f2d398`  
		Last Modified: Mon, 16 Nov 2026 20:13:15 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec613fa8948a73591c298d45d8affcc197d30818e055d2604be4296cbb60a435`  
		Last Modified: Mon, 16 Nov 2026 20:13:13 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a155e4318d518addffefbfb2d41eea1d8857c9a4065fd57019b4aab09cda70`  
		Last Modified: Mon, 16 Nov 2026 20:13:13 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587f0f3dd2d13595e11ecde1de5aaa5890abd0f3e27c028197c307a980c6400d`  
		Last Modified: Mon, 16 Nov 2026 20:13:13 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ecde4d2b565643ec31d94f54398c48b4ee1deabd25303453129137a376d378`  
		Last Modified: Mon, 16 Nov 2026 20:13:13 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1384eff59af439c98af5b9715a05270f5ddb979e04a0e9d76fe66cbf97982ba2`  
		Last Modified: Mon, 16 Nov 2026 20:13:13 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027375bb65c1e61b5cfc141760cdbf7523745e00f3a4c9ea710fab8d68b41537`  
		Last Modified: Mon, 16 Nov 2026 20:13:12 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da81b0e7ecf576898e1609ff531cef133693d68b042db799087928d42b80e576`  
		Last Modified: Mon, 16 Nov 2026 20:13:12 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e867d0efaf171ef1edc631d6286a1ebde7fb448b3ab8b3c9ef621e1cf1b46ba1`  
		Last Modified: Mon, 16 Nov 2026 20:13:12 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe83c4c7a12b3c517262e607b56f82e1e94548193735839fc92a107e09ed20a`  
		Last Modified: Mon, 16 Nov 2026 20:13:12 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d3c734b167542d290262483717bddb4a2f3e660521bc042d4e78e40a0591be`  
		Last Modified: Mon, 16 Nov 2026 20:13:12 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b679082fb78383f2524e4eea571bd30f320cd0875872602083d07630578e6eeb`  
		Last Modified: Mon, 16 Nov 2026 20:13:10 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b46b0adcef2450096ed14a6015a8412f0001385ae47d81daac195061716fcc`  
		Last Modified: Mon, 16 Nov 2026 20:13:10 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6842eff08b74accf943a0e642a804c832f065ba56c23a50d24afd77356e128d8`  
		Last Modified: Mon, 16 Nov 2026 20:13:10 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a3b40c0697fa91bd24c00075fcb1b11c20ebd1cd6688ca5147bdc82305b0c1`  
		Last Modified: Mon, 16 Nov 2026 20:13:10 GMT  
		Size: 343.3 KB (343251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf8d19e9bfb5c097c269e247d560f310d0d2476bd47d76d4ea0a5a70c57d0046`  
		Last Modified: Mon, 16 Nov 2026 20:13:10 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
