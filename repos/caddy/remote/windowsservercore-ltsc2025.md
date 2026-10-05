## `caddy:windowsservercore-ltsc2025`

```console
$ docker pull caddy@sha256:efa2c1fe068ab9b977883c8c129cc2ab19f69e8ae335a305621ce13f3713c884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `caddy:windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull caddy@sha256:c8eed2363029de14167408a9ca76f7f5f96fb74173c9400e3bdbb974f508547f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2477340805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20065127586b32a279f8a111b5c2c50d383ebc5af1086266fa1c5fe7dd7166a9`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Mon, 05 Oct 2026 18:46:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 05 Oct 2026 18:48:12 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Mon, 05 Oct 2026 18:48:12 GMT
ENV CADDY_VERSION=v2.11.7
# Mon, 05 Oct 2026 18:48:29 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.7/caddy_2.11.7_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('c308154504e53755958ffc62d8a2657ab17eefd6dd25c45dbb2c3d93d29519971f77ca652f7d0f2bcb7f980b9ba3822478865e29969d0272d7613550a43152b1')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Mon, 05 Oct 2026 18:48:30 GMT
ENV XDG_CONFIG_HOME=c:/config
# Mon, 05 Oct 2026 18:48:30 GMT
ENV XDG_DATA_HOME=c:/data
# Mon, 05 Oct 2026 18:48:31 GMT
LABEL org.opencontainers.image.version=v2.11.7
# Mon, 05 Oct 2026 18:48:32 GMT
LABEL org.opencontainers.image.title=Caddy
# Mon, 05 Oct 2026 18:48:32 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Mon, 05 Oct 2026 18:48:34 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Mon, 05 Oct 2026 18:48:34 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Mon, 05 Oct 2026 18:48:34 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Mon, 05 Oct 2026 18:48:35 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Mon, 05 Oct 2026 18:48:36 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Mon, 05 Oct 2026 18:48:36 GMT
EXPOSE 80
# Mon, 05 Oct 2026 18:48:38 GMT
EXPOSE 443
# Mon, 05 Oct 2026 18:48:39 GMT
EXPOSE 443/udp
# Mon, 05 Oct 2026 18:48:40 GMT
EXPOSE 2019
# Mon, 05 Oct 2026 18:48:57 GMT
RUN caddy version
# Mon, 05 Oct 2026 18:48:57 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485902b58278c569162bbaf2a94365e37c53eeec79141e6fa4ade81be15002d7`  
		Last Modified: Mon, 05 Oct 2026 18:49:07 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65e7a92673623df6a57f73ca1868ba94649bef9eef2db4aac5618366dd830ff`  
		Last Modified: Mon, 05 Oct 2026 18:49:08 GMT  
		Size: 399.8 KB (399759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf969b5d622c5c55052df9c4459747024034ea26bae0eec4f89f078316337d0f`  
		Last Modified: Mon, 05 Oct 2026 18:49:07 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d6417fe3b213d2990eae37da6a628a0bf2c97983cffcf6a7352e31e23e30f1`  
		Last Modified: Mon, 05 Oct 2026 18:49:10 GMT  
		Size: 18.9 MB (18945845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f30400bf87ad6b7a272d3ad7f193257bf10655ea61f4b90658139f18cb9f427`  
		Last Modified: Mon, 05 Oct 2026 18:49:07 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44db36f77356af68d70afbbc18196407b169ed49fb805ef842252b1de0e57cbd`  
		Last Modified: Mon, 05 Oct 2026 18:49:05 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e15d420c2402ab72cdb78b83cb0a2192381414cb7322dc78b7a5388c07c7bce`  
		Last Modified: Mon, 05 Oct 2026 18:49:05 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777f897d05bd995e1cba922c683fe1d0c2a623803846b18ff66800b300fad54a`  
		Last Modified: Mon, 05 Oct 2026 18:49:05 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07600ea904b1ae437768b0459c0a82bb5908116f6448cdff367505095f83dee1`  
		Last Modified: Mon, 05 Oct 2026 18:49:05 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3948f333aca61a22de73b0c4ae6b95e6111a4446bc9e0329ce08e04a8222f65`  
		Last Modified: Mon, 05 Oct 2026 18:49:05 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ef8f7467cccef707d0f52b300349a1cfdd658a124aa2003960617077f76ad3`  
		Last Modified: Mon, 05 Oct 2026 18:49:04 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77234412032248665b3ca2cf953290f0f2c3c1b3a3b96a240575e38c211d260c`  
		Last Modified: Mon, 05 Oct 2026 18:49:04 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e439be2f760972221728eea6f48376a3f17382a9b88236d100a1451e367ff4`  
		Last Modified: Mon, 05 Oct 2026 18:49:04 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f3f8b2f1787e1dd40abd3f67eebd938fb691d48bd02851f21e1f3248a47ace`  
		Last Modified: Mon, 05 Oct 2026 18:49:04 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:588b1be146aa32e8b90045cb33c3d6822d6db9f3dcca4a05a6627fdcbb487939`  
		Last Modified: Mon, 05 Oct 2026 18:49:04 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767f94313ca461cb6eb21ad2dce5528fc48cbcc0206d628dc55ae9136494cc78`  
		Last Modified: Mon, 05 Oct 2026 18:49:02 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf88c41e6bdbefcaf335f3b62cbf98f8d260c6f3f00faf7e7a4b1b2cfa7c1004`  
		Last Modified: Mon, 05 Oct 2026 18:49:02 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25751634890ff0a064d860ad6265d78673ef6d105d1f256da98c5c4b862ef1f5`  
		Last Modified: Mon, 05 Oct 2026 18:49:02 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8fb2709b9e175b30a9d82a1c974be3b7b2caeb0cd7eafbc0684efd4bcbd39f1`  
		Last Modified: Mon, 05 Oct 2026 18:49:02 GMT  
		Size: 343.8 KB (343810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2850a817ccbe480a8b82b9cf0e4aad4535e703586b6a1884240ccc1356270ece`  
		Last Modified: Mon, 05 Oct 2026 18:49:02 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
