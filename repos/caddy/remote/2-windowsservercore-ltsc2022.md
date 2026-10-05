## `caddy:2-windowsservercore-ltsc2022`

```console
$ docker pull caddy@sha256:7d45e8c943e48b89aa48947aa0ada6a613082074f1bf4fd631197767deae0f6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `caddy:2-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull caddy@sha256:9300e3a3c983e0cfc6feb1dd7464de7c0d19bd8eff85235eb2b8cd369a35fb93
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2239125448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aa83c768968fbf0ea637242f5cda5964016d1de3544708cb98a1b7a3ff977c0`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 05 Oct 2026 18:51:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 05 Oct 2026 18:52:44 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Mon, 05 Oct 2026 18:52:44 GMT
ENV CADDY_VERSION=v2.11.7
# Mon, 05 Oct 2026 18:52:57 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.7/caddy_2.11.7_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('c308154504e53755958ffc62d8a2657ab17eefd6dd25c45dbb2c3d93d29519971f77ca652f7d0f2bcb7f980b9ba3822478865e29969d0272d7613550a43152b1')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Mon, 05 Oct 2026 18:52:58 GMT
ENV XDG_CONFIG_HOME=c:/config
# Mon, 05 Oct 2026 18:53:00 GMT
ENV XDG_DATA_HOME=c:/data
# Mon, 05 Oct 2026 18:53:01 GMT
LABEL org.opencontainers.image.version=v2.11.7
# Mon, 05 Oct 2026 18:53:02 GMT
LABEL org.opencontainers.image.title=Caddy
# Mon, 05 Oct 2026 18:53:04 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Mon, 05 Oct 2026 18:53:06 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Mon, 05 Oct 2026 18:53:07 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Mon, 05 Oct 2026 18:53:08 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Mon, 05 Oct 2026 18:53:09 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Mon, 05 Oct 2026 18:53:09 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Mon, 05 Oct 2026 18:53:10 GMT
EXPOSE 80
# Mon, 05 Oct 2026 18:53:10 GMT
EXPOSE 443
# Mon, 05 Oct 2026 18:53:11 GMT
EXPOSE 443/udp
# Mon, 05 Oct 2026 18:53:12 GMT
EXPOSE 2019
# Mon, 05 Oct 2026 18:53:28 GMT
RUN caddy version
# Mon, 05 Oct 2026 18:53:28 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
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
	-	`sha256:0574d80fe87ec04951234e940c77de85ebdd1910b4d8bfd75807b51bc8521979`  
		Last Modified: Mon, 05 Oct 2026 18:53:38 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebcd7d4d5d15aa9b89363a2a574e9015814394c7aea6f7d46974c868ea0e4008`  
		Last Modified: Mon, 05 Oct 2026 18:53:38 GMT  
		Size: 373.5 KB (373456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a68c47f31e077eae0a37297445131cc8dee00e3c6b24e2a27194f3f76307451d`  
		Last Modified: Mon, 05 Oct 2026 18:53:37 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62678ceaa027a4ec1d440bab0d444dc1b54b24f2d20a3eeca4c151d6a0feb243`  
		Last Modified: Mon, 05 Oct 2026 18:53:41 GMT  
		Size: 18.9 MB (18918075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0803f82d4617a654f838bb2f9ff9235f07306f4a69241ed94c37deb349ad04`  
		Last Modified: Mon, 05 Oct 2026 18:53:37 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73f2514f191335f650bceb5c1579b832b48eb55812326f732c561377f921bc2`  
		Last Modified: Mon, 05 Oct 2026 18:53:36 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b1fa403f9e6e663535664111b226382d612a8b31656ebceb14eb1c887a63cd`  
		Last Modified: Mon, 05 Oct 2026 18:53:36 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9d1bea996ae49990e7b857cec242ab5c59f8072bf308e4086ccb3ae74bf420`  
		Last Modified: Mon, 05 Oct 2026 18:53:36 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2998fb2f310e14781d0e201272c0576f3c6ce91398652e84a8302185224f77c1`  
		Last Modified: Mon, 05 Oct 2026 18:53:36 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0222551454809fea3752ff3cf20bf48337ac2ecca8ab71f7aed81048ac4cca3d`  
		Last Modified: Mon, 05 Oct 2026 18:53:36 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc4da8aa467579aad75c13209f14cd51f066cc37ec8d9bcc8eb8f197f5c3859`  
		Last Modified: Mon, 05 Oct 2026 18:53:34 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b15ff014174cc3f3e5965facb18ca7f0552331a634f7dd24ade01fedc1cacb9b`  
		Last Modified: Mon, 05 Oct 2026 18:53:34 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428813eac533e28e0900e2a321df46090253f937de6cafc577c7050826393aef`  
		Last Modified: Mon, 05 Oct 2026 18:53:34 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeb14e210c41445b76e43cfc2a5533e601b5c63eaea0a79c5403ddc6b02ab22`  
		Last Modified: Mon, 05 Oct 2026 18:53:34 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61603dfff9d8281d589ee390002da4bebd860c865fe75934fd17a62169f7b20`  
		Last Modified: Mon, 05 Oct 2026 18:53:34 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f6ce574796bcb0d7a04e743979e443ef51b9d50f83c5bcee498507eaa4840b`  
		Last Modified: Mon, 05 Oct 2026 18:53:33 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c474fc58ba28c1c69ea8f05e11099c96df79cd7fe5e9a50ce2ff728013883d`  
		Last Modified: Mon, 05 Oct 2026 18:53:33 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2126eb5a9de7b454e06f0100afb96b32a8425151cf9d555e11e7a5a22ef91cd2`  
		Last Modified: Mon, 05 Oct 2026 18:53:33 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab4f88f0b9f27e06534d5486d2583e4ec99abc593ca54e2310b2241dbd8218a`  
		Last Modified: Mon, 05 Oct 2026 18:53:33 GMT  
		Size: 323.0 KB (322963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e11c74cc304a3e442d74c27fd580abefb932874e43f037216534af6aafecba`  
		Last Modified: Mon, 05 Oct 2026 18:53:33 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
