## `caddy:windowsservercore-ltsc2022`

```console
$ docker pull caddy@sha256:98133770e151cbb807b715c69046163447aed55bbd36918305cfbd8ecbc40ff9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `caddy:windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull caddy@sha256:65899104b5fd7bcc8f8af8d16ac2c31af0682be5cd0070dc0c3329526f3d7d59
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2238170537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:762588b9e7dd898c3b860de0909b80016c88c63e5cf62624bc043430878730d4`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:45:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:52:16 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Wed, 09 Sep 2026 22:52:17 GMT
ENV CADDY_VERSION=v2.11.4
# Wed, 09 Sep 2026 22:52:25 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.4/caddy_2.11.4_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('cd5ccfd86a4b40732cf715890d0dca5bf3f63adefec5a7914de85adf240c60ce7e5d2791631b88ef9758e46b23bb1730e020b9c5d696889740b284ffd4788e35')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Wed, 09 Sep 2026 22:52:26 GMT
ENV XDG_CONFIG_HOME=c:/config
# Wed, 09 Sep 2026 22:52:26 GMT
ENV XDG_DATA_HOME=c:/data
# Wed, 09 Sep 2026 22:52:27 GMT
LABEL org.opencontainers.image.version=v2.11.4
# Wed, 09 Sep 2026 22:52:28 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 09 Sep 2026 22:52:29 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 09 Sep 2026 22:52:30 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 09 Sep 2026 22:52:31 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 09 Sep 2026 22:52:32 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 09 Sep 2026 22:52:33 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 09 Sep 2026 22:52:34 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 09 Sep 2026 22:52:35 GMT
EXPOSE 80
# Wed, 09 Sep 2026 22:52:36 GMT
EXPOSE 443
# Wed, 09 Sep 2026 22:52:37 GMT
EXPOSE 443/udp
# Wed, 09 Sep 2026 22:52:39 GMT
EXPOSE 2019
# Wed, 09 Sep 2026 22:52:45 GMT
RUN caddy version
# Wed, 09 Sep 2026 22:52:46 GMT
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
	-	`sha256:b68a4effca28d16bcb5099d80abf377f9661f7d87ac3775bee9e2c6cb8c24867`  
		Last Modified: Wed, 09 Sep 2026 22:46:10 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b363d8f829e744da6d9a5210267891abd6a144ebecb2f62b4ba4fd9eb86ee8c3`  
		Last Modified: Wed, 09 Sep 2026 22:52:55 GMT  
		Size: 354.8 KB (354752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc0b2d577cf4ad7d1ad5ce243e2042ffd7d7515b53437515a0f31abc6c19a63`  
		Last Modified: Wed, 09 Sep 2026 22:52:55 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35adb45c9d1068db3edaccf2ef44fa23f601d668097b02536cb80dc7f7ad126f`  
		Last Modified: Wed, 09 Sep 2026 22:52:57 GMT  
		Size: 18.0 MB (17962519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b366350bd880cb5e61ad9517211b363b509c45628f12ee8e84c34551f74ef3`  
		Last Modified: Wed, 09 Sep 2026 22:52:55 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f452e1828d9b594afb6246d80a700d3e6478064a3f7d5692d9b0c02e7a363b8e`  
		Last Modified: Wed, 09 Sep 2026 22:52:53 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139605ff4c189488845df395e30ae36c31eb0c1d5540e0fc7d10d9ec46dcceda`  
		Last Modified: Wed, 09 Sep 2026 22:52:53 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279a48ee6ca71e84587e16d2e706bb6adce1f33a491de9b7d963c3bb8408e328`  
		Last Modified: Wed, 09 Sep 2026 22:52:53 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb675316b678e0354fbf6fca44e5d9ea0d15d2b5d7aad83d8978a342a634701`  
		Last Modified: Wed, 09 Sep 2026 22:52:53 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:202a2bba0b9ac7eeaeabeb55fc836ec16901c5783661ee5096de82014dc013aa`  
		Last Modified: Wed, 09 Sep 2026 22:52:53 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce6f202997576a83775816ff4bf3af61f0058c78fd9d758b26021e10d0f0eaf`  
		Last Modified: Wed, 09 Sep 2026 22:52:52 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad187f971b784b7cbb5b4e22f9ab6cbcc75280a74733757c37744c96eb637ae`  
		Last Modified: Wed, 09 Sep 2026 22:52:52 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f57ce921ecd0a8245d68ece207761d7f82a2d9083f7121358ea8715a56c265`  
		Last Modified: Wed, 09 Sep 2026 22:52:52 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78350ff866550acd7fd49d53bffc00ee2d6e7c5bd980bd585e42d70d7186ae65`  
		Last Modified: Wed, 09 Sep 2026 22:52:52 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382a5b2dd878bbed082b8ac1ee43215db49c6cd530e3698b9892e8fe5d8ebcaa`  
		Last Modified: Wed, 09 Sep 2026 22:52:52 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d00fbab6319e00ad464112da6abde1902dcda1ec1b04a54a3773446911aafb`  
		Last Modified: Wed, 09 Sep 2026 22:52:50 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a531c44bb3e5e7606d29c9b1fba44c43d1561cb454125156922a568954817b`  
		Last Modified: Wed, 09 Sep 2026 22:52:50 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7422bbc413d636d875377e783cda8ae066b19bd33fcf2f909514334fb6dcc233`  
		Last Modified: Wed, 09 Sep 2026 22:52:50 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a388ae177adf6cac8ea8b62523439437e9e28574a737ed552e79f503fa68a54b`  
		Last Modified: Wed, 09 Sep 2026 22:52:50 GMT  
		Size: 342.3 KB (342253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b543ff01c34920bdfe1334290ef06509b72a48d0cc771ed7a9e95cc16306479`  
		Last Modified: Wed, 09 Sep 2026 22:52:50 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
