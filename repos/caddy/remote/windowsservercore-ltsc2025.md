## `caddy:windowsservercore-ltsc2025`

```console
$ docker pull caddy@sha256:cbab47bfc991e4c2d81c9685235f9d09d4cefe106d3f02c0f23f5675e02c095d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `caddy:windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:4f89bc0bd6d941ed140398625405472b17ac05858883a0395fd6de93ede3c60a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411742218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de65fb11a27194d335d9de22d635fc7cecd897d255bbdc1355de96f55d7c19d`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 17:49:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 18:01:53 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Tue, 27 Oct 2026 18:01:54 GMT
ENV CADDY_VERSION=v2.11.7
# Tue, 27 Oct 2026 18:02:02 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.7/caddy_2.11.7_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('c308154504e53755958ffc62d8a2657ab17eefd6dd25c45dbb2c3d93d29519971f77ca652f7d0f2bcb7f980b9ba3822478865e29969d0272d7613550a43152b1')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Tue, 27 Oct 2026 18:02:02 GMT
ENV XDG_CONFIG_HOME=c:/config
# Tue, 27 Oct 2026 18:02:03 GMT
ENV XDG_DATA_HOME=c:/data
# Tue, 27 Oct 2026 18:02:04 GMT
LABEL org.opencontainers.image.version=v2.11.7
# Tue, 27 Oct 2026 18:02:04 GMT
LABEL org.opencontainers.image.title=Caddy
# Tue, 27 Oct 2026 18:02:05 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Tue, 27 Oct 2026 18:02:05 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Tue, 27 Oct 2026 18:02:06 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Tue, 27 Oct 2026 18:02:07 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Tue, 27 Oct 2026 18:02:07 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Tue, 27 Oct 2026 18:02:08 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Tue, 27 Oct 2026 18:02:08 GMT
EXPOSE 80
# Tue, 27 Oct 2026 18:02:09 GMT
EXPOSE 443
# Tue, 27 Oct 2026 18:02:10 GMT
EXPOSE 443/udp
# Tue, 27 Oct 2026 18:02:11 GMT
EXPOSE 2019
# Tue, 27 Oct 2026 18:02:16 GMT
RUN caddy version
# Tue, 27 Oct 2026 18:02:18 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4cc14c0d313a53039a0a6a49e50b2d7e3ae6260f2e4c81084cf67c62debb53d`  
		Last Modified: Tue, 27 Oct 2026 17:49:44 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d715cc07c3109010fe25d17644a404fd71d3ecafcc594a4f73e9d52336ed35d`  
		Last Modified: Tue, 27 Oct 2026 18:02:28 GMT  
		Size: 369.9 KB (369920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8294267b4f6ff294f19d46f72a8b95e803e0a14656924e9db86db11a730e9415`  
		Last Modified: Tue, 27 Oct 2026 18:02:28 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26d827a1d7850888a7db0327879be0a4bf60e0bfc8b17c200a9607dd0c55a81`  
		Last Modified: Tue, 27 Oct 2026 18:02:30 GMT  
		Size: 19.0 MB (18951792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e43d6637d7bc8853e485a9778c086e8ec6711e3daa0d39d5fc647dd8ffb408e`  
		Last Modified: Tue, 27 Oct 2026 18:02:27 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ac6760d0a5c525535a860510adccad228d86f344a16b48e3b2c609d0e6f246`  
		Last Modified: Tue, 27 Oct 2026 18:02:26 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81bee55da392b222e374d91d4c8b3874a1751309197c3002c7508d0a672ff8f9`  
		Last Modified: Tue, 27 Oct 2026 18:02:26 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e524fe0616958ef74c776ee486b715d1ae9f82c9d9cc1cc180be61cd92fd84f9`  
		Last Modified: Tue, 27 Oct 2026 18:02:26 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e100d0758d5e203d4897627560820fb6c340c9edf5e2c0e6fb5289310de08b`  
		Last Modified: Tue, 27 Oct 2026 18:02:26 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fe2189a717b40184aeb20e6763c9b43b32c8c2d31684236347dfa66f772ff3`  
		Last Modified: Tue, 27 Oct 2026 18:02:26 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c069685fed7e9d0cb486798454c4d5730275baeaaf0a904543ff79f404775cc`  
		Last Modified: Tue, 27 Oct 2026 18:02:24 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89e8796799c73d970a6765f17062a9540b16855d7be204a826bac7567090adb`  
		Last Modified: Tue, 27 Oct 2026 18:02:24 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29627e08773c76d619ef13c0cd2c7a63a93c4ee25c4b39b636b9d4b6ad9e9e69`  
		Last Modified: Tue, 27 Oct 2026 18:02:24 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea196810d15710edd708e0608bff472ecb47c59cdc9365afdfa318c1132c799`  
		Last Modified: Tue, 27 Oct 2026 18:02:24 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa76134ed52e450eb1ecfed16562f87453be920153e11dcc95a855b3b3f359d1`  
		Last Modified: Tue, 27 Oct 2026 18:02:24 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e79db724e057bc313d29771227964fa98c855975c6858bfd60ade7cc0a132969`  
		Last Modified: Tue, 27 Oct 2026 18:02:22 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b89aaa8f837744f096d1ec5303677ad936cfa222d870fddd4db5b19a4f76ec`  
		Last Modified: Tue, 27 Oct 2026 18:02:22 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfef248e970a6efc820f7117f6af8c87028241e18cd5af60e983f2bead9fbc22`  
		Last Modified: Tue, 27 Oct 2026 18:02:22 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b950e67c90116c60dc6c715e1ba3151b773f285cd6fdaaaf9655263be1bb3616`  
		Last Modified: Tue, 27 Oct 2026 18:02:22 GMT  
		Size: 349.7 KB (349730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a3b85def96f2c4103c2c1a56d5c5d5aa6996ca0218ac76993dc25b0600b13f5`  
		Last Modified: Tue, 27 Oct 2026 18:02:22 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
