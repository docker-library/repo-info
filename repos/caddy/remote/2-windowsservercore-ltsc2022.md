## `caddy:2-windowsservercore-ltsc2022`

```console
$ docker pull caddy@sha256:18590fd066ec2322201b400e81ebaa367088968cf7c9b1204fc276b208b0dd9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `caddy:2-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull caddy@sha256:385b2bfefcfa10a9ef428bb03af262386cb8aecffaefcf68888cd5d41f984824
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2176394374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9af6fbacad05ef275f51df76e87bb01d14dff584a32c5284132d454196bf0ea9`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:38:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:38:56 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Wed, 15 Jul 2026 23:38:57 GMT
ENV CADDY_VERSION=v2.11.4
# Wed, 15 Jul 2026 23:39:04 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.4/caddy_2.11.4_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('cd5ccfd86a4b40732cf715890d0dca5bf3f63adefec5a7914de85adf240c60ce7e5d2791631b88ef9758e46b23bb1730e020b9c5d696889740b284ffd4788e35')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Wed, 15 Jul 2026 23:39:06 GMT
ENV XDG_CONFIG_HOME=c:/config
# Wed, 15 Jul 2026 23:39:06 GMT
ENV XDG_DATA_HOME=c:/data
# Wed, 15 Jul 2026 23:39:07 GMT
LABEL org.opencontainers.image.version=v2.11.4
# Wed, 15 Jul 2026 23:39:07 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 15 Jul 2026 23:39:08 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 15 Jul 2026 23:39:08 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 15 Jul 2026 23:39:09 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 15 Jul 2026 23:39:09 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 15 Jul 2026 23:39:10 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 15 Jul 2026 23:39:11 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 15 Jul 2026 23:39:12 GMT
EXPOSE 80
# Wed, 15 Jul 2026 23:39:12 GMT
EXPOSE 443
# Wed, 15 Jul 2026 23:39:12 GMT
EXPOSE 443/udp
# Wed, 15 Jul 2026 23:39:13 GMT
EXPOSE 2019
# Wed, 15 Jul 2026 23:39:20 GMT
RUN caddy version
# Wed, 15 Jul 2026 23:39:21 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994cede515cc4c582c17da43dcaa795da3cf61d077ceb3d6fb375312a1065825`  
		Last Modified: Wed, 15 Jul 2026 23:39:30 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cbcf8d9513bc7b3c24e2f06141ea809013cd3c5087f80be789f3c6101ed7d70`  
		Last Modified: Wed, 15 Jul 2026 23:39:30 GMT  
		Size: 495.5 KB (495542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac370edba374eeb83e0386ea30e4694a2141f6b03c5ebca253f79dee37cdf2a1`  
		Last Modified: Wed, 15 Jul 2026 23:39:30 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57f4d6a36aef79705dccef133c75b80f2cb8d3b207b2cb62bfa4bea19496e3e4`  
		Last Modified: Wed, 15 Jul 2026 23:39:32 GMT  
		Size: 18.0 MB (17970435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dafb4bb46f12f01487742caf4cfdf5813f8495f566c538bf896d3f8738e2502`  
		Last Modified: Wed, 15 Jul 2026 23:39:30 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6891b681242e21348a610a57bd45ef67e804586c86a87a1f4d2d82e2c8d51994`  
		Last Modified: Wed, 15 Jul 2026 23:39:29 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56362fa8d83b8ef25abb7be47f3db24952bfd543ce383c9e8d456f842f3fae7`  
		Last Modified: Wed, 15 Jul 2026 23:39:29 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9fcd39a68734f5cc7303d5464c7e5c9d958373ee5b7074be90470d1d219cfb7`  
		Last Modified: Wed, 15 Jul 2026 23:39:28 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a6304830dc332e4dd04e4ce6153b08bde22d7d25f35730000b763c7c50a0c6`  
		Last Modified: Wed, 15 Jul 2026 23:39:28 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495dae0a26c2076589b75983e6df40d6523ffed4fad526e7e8bcca508bf0e524`  
		Last Modified: Wed, 15 Jul 2026 23:39:28 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4059f702d1e6cbe4c5509e5e0be8f640e8cd1b816c488313efe11fb3e8502d2`  
		Last Modified: Wed, 15 Jul 2026 23:39:27 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2f6ab1033a1fe4b6e320c45153c0ec82fbad976c969e3168bff8a6d520e318`  
		Last Modified: Wed, 15 Jul 2026 23:39:27 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a82bbaf7be1b047b20e4c5345792d0998a7f05580c2f8343f99986627878010`  
		Last Modified: Wed, 15 Jul 2026 23:39:27 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c32c3e780a50bdee92017a11aa61e3744a1ea33d9cbbfa8b6b521a1d278c3c7`  
		Last Modified: Wed, 15 Jul 2026 23:39:27 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:321d7e45c161d5d74e6c413d7c1630337632b72c08683b6b25d1876b4b6ca346`  
		Last Modified: Wed, 15 Jul 2026 23:39:27 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62684acc2c43b521d13659ef67fa0947169c5a004b98b5f1118cf561589764c3`  
		Last Modified: Wed, 15 Jul 2026 23:39:25 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc776a9e71282521ecac38b9b48bc904c310c82e60e0b4687551a1ac6e72a2f0`  
		Last Modified: Wed, 15 Jul 2026 23:39:25 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152649c21d73fa876a7ca8f1a9efab9b2bb465316b47385d96f4d7e6968f10c9`  
		Last Modified: Wed, 15 Jul 2026 23:39:25 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252fdb9cdbb3139dabe98ecd37a304db165e1b949a78c0bface23e2b0771bfcf`  
		Last Modified: Wed, 15 Jul 2026 23:39:25 GMT  
		Size: 353.0 KB (353010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a4c7fb8defc9943c0bc42eee0c00cf411d1aff711d07e3547d158fb1f33be80`  
		Last Modified: Wed, 15 Jul 2026 23:39:25 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
