## `caddy:2-nanoserver-ltsc2022`

```console
$ docker pull caddy@sha256:63d31b3cf911d362e0b517780695cc2e7771f84a9327de01df30b8e9ed0ced6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `caddy:2-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull caddy@sha256:970ab83620a13680a7ecaba1f94a8a2719b2e49b5027c19b96c67e78e86a5e98
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.8 MB (143801259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd29baae163b7b402c2c777e6ba4209174ad91a42adf7b3365aed517518c422a`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Mon, 05 Oct 2026 20:13:24 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Mon, 05 Oct 2026 20:13:43 GMT
RUN cmd /S /C #(nop) COPY file:2fab63207e84eabfeab5300594bf0a3c4d7447a47dd347816cf69fd217a97a57 in c:\caddy.exe 
# Mon, 05 Oct 2026 20:13:53 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Mon, 05 Oct 2026 20:13:57 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Mon, 05 Oct 2026 20:13:59 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Mon, 05 Oct 2026 20:14:00 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Mon, 05 Oct 2026 20:14:02 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.7
# Mon, 05 Oct 2026 20:14:04 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Mon, 05 Oct 2026 20:14:05 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Mon, 05 Oct 2026 20:14:07 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Mon, 05 Oct 2026 20:14:09 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Mon, 05 Oct 2026 20:14:10 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Mon, 05 Oct 2026 20:14:11 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Mon, 05 Oct 2026 20:14:12 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Mon, 05 Oct 2026 20:14:14 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Mon, 05 Oct 2026 20:14:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Mon, 05 Oct 2026 20:14:17 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Mon, 05 Oct 2026 20:14:18 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Mon, 05 Oct 2026 20:14:33 GMT
RUN caddy version
# Mon, 05 Oct 2026 20:14:34 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec7eb9b33659abaeafd902f2e873b3b1cbede50d4f7777c29134f2d07f9f48d`  
		Last Modified: Mon, 05 Oct 2026 20:14:43 GMT  
		Size: 76.2 KB (76233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff68b2704b2e3e8b7bcb66f5c012292c729e9c0baf625ebba937a8a0cb82dc3`  
		Last Modified: Mon, 05 Oct 2026 20:14:46 GMT  
		Size: 18.6 MB (18597145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2274f759f500b80e2f4d427aa489923653654a2d65e77d738a57096bf65ba6ad`  
		Last Modified: Mon, 05 Oct 2026 20:14:43 GMT  
		Size: 255.0 KB (254997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4490dd6f32ed893cdd0b845e4b89d8e513b9f921fdd37a232a0e00661f1f89e3`  
		Last Modified: Mon, 05 Oct 2026 20:14:43 GMT  
		Size: 109.6 KB (109607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66962628a6b1d97ebc99ad985a85a3573fb0de9d1722c07b0e87a1b3999ba8cf`  
		Last Modified: Mon, 05 Oct 2026 20:14:43 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996a65dd9d50887cf427555db534481e95bf02dcb794f7519ba45391f974f5e0`  
		Last Modified: Mon, 05 Oct 2026 20:14:42 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f1e24305ae7bc082807282ac06d83853e7cc8a929b5657a3f72312a6f5c6ca`  
		Last Modified: Mon, 05 Oct 2026 20:14:42 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a50b2591805baf9d900b3424c358624a4694ed53b8bf33f1db5dfe52f7d7e5d5`  
		Last Modified: Mon, 05 Oct 2026 20:14:42 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8eb572c7178a01912a8c74c1d4277435cd68f08ad458e674a11ad41392921a3`  
		Last Modified: Mon, 05 Oct 2026 20:14:42 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10545990da12eefe1a1272cfb8aee10945d4d1874c7d97670bf3a90d650802b1`  
		Last Modified: Mon, 05 Oct 2026 20:14:42 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113271d2fc1b67f74a5889d22e2946ea628321e7dec02f8119359a527e3f7540`  
		Last Modified: Mon, 05 Oct 2026 20:14:40 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809fe83b27657285e2ded3040f5cdf60742a317799df32465f5305276fef0b5b`  
		Last Modified: Mon, 05 Oct 2026 20:14:40 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f17212796feba78b8739c73858670eb700752ad041a49f97adbcabd75ef818`  
		Last Modified: Mon, 05 Oct 2026 20:14:40 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e14f2cf992f8268967f4e1a53c2cac478e9a5d2ea6deefb9c929ac7f336738`  
		Last Modified: Mon, 05 Oct 2026 20:14:40 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2a1816ee833937365aa123ff39e0f26c3d80912efb47582efc09398b34d549`  
		Last Modified: Mon, 05 Oct 2026 20:14:40 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab321c3961f298a87bd3363fc5584f18531931f6e01ee08804f130ff62da85f`  
		Last Modified: Mon, 05 Oct 2026 20:14:38 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78702aab548f51327e14641e13bb10448cdb624334f6a23bae91b7d44c8adb9b`  
		Last Modified: Mon, 05 Oct 2026 20:14:38 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1c50731368b9f0f86bee534e25a205f26a19e4a05a1d1941778d5c5aea9afd`  
		Last Modified: Mon, 05 Oct 2026 20:14:38 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a58b970cc4e014637aa5a60c5c9a0a772a4b2c3ef51611b6acc97690005bf0`  
		Last Modified: Mon, 05 Oct 2026 20:14:38 GMT  
		Size: 110.0 KB (110025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16dda253aff55d7085a0b0eab98a5db84f800b98525a8ee3034188c53672fdb9`  
		Last Modified: Mon, 05 Oct 2026 20:14:38 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
