## `caddy:nanoserver-ltsc2025`

```console
$ docker pull caddy@sha256:1280153d255f8a67bd8feadf942e575df6f415b49ed3554be5e11ca8b0cbb21c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `caddy:nanoserver-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull caddy@sha256:f55f3a21bb9f3efa8c13a86aea6f8e4bb96ebbb6ed674727d5fbb787a6e737cc
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219339083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27f8b23be7e80db2781d4f7a456db003181a0e6705c54f6cc6f78882d99e5e55`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 11 Nov 2026 22:43:48 GMT
RUN Apply image 10.0.26100.33828
# Mon, 16 Nov 2026 20:45:51 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Mon, 16 Nov 2026 20:45:52 GMT
RUN cmd /S /C #(nop) COPY file:f6fd9f7c8bd53ad2dea712d2b3468beaa8adaf6a9b8689f2f467c74c0f14078e in c:\caddy.exe 
# Mon, 16 Nov 2026 20:45:56 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Mon, 16 Nov 2026 20:45:59 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Mon, 16 Nov 2026 20:45:59 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Mon, 16 Nov 2026 20:45:59 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Mon, 16 Nov 2026 20:46:00 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.9
# Mon, 16 Nov 2026 20:46:01 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Mon, 16 Nov 2026 20:46:01 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Mon, 16 Nov 2026 20:46:02 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Mon, 16 Nov 2026 20:46:03 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Mon, 16 Nov 2026 20:46:04 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Mon, 16 Nov 2026 20:46:04 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Mon, 16 Nov 2026 20:46:05 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Mon, 16 Nov 2026 20:46:05 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Mon, 16 Nov 2026 20:46:06 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Mon, 16 Nov 2026 20:46:06 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Mon, 16 Nov 2026 20:46:07 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Mon, 16 Nov 2026 20:46:09 GMT
RUN caddy version
# Mon, 16 Nov 2026 20:46:10 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:6ba6a8d6630dc641648821a651879fd111e21b736d72f09f1eabafe7a0e18a9a`  
		Last Modified: Fri, 13 Nov 2026 21:31:52 GMT  
		Size: 200.2 MB (200239817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7c749b8a8f0063b8f4adb5ef2005694dfd8abc44ec2d8b8fba38a5bf9380f1`  
		Last Modified: Mon, 16 Nov 2026 20:46:19 GMT  
		Size: 71.5 KB (71483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0ea7103a105e5aa7a393bf1c32aefc485454c68dca715f43cb70116a543c28`  
		Last Modified: Mon, 16 Nov 2026 20:46:21 GMT  
		Size: 18.5 MB (18498161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bd1d276adda171a3094c6d232def062beb85435ee72af980460a9c0eb3914a`  
		Last Modified: Mon, 16 Nov 2026 20:46:19 GMT  
		Size: 291.3 KB (291286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb57681ec182e6c980a843ac724ef84bfa2c29f4c26c020dfb98b1fdfcd6b8cd`  
		Last Modified: Mon, 16 Nov 2026 20:46:19 GMT  
		Size: 111.3 KB (111268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8466a8db84c2705bc8aa28bdb526104ad01874c9e3730de98617e5d4c059c416`  
		Last Modified: Mon, 16 Nov 2026 20:46:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72f705799793b1f8d032b229087082e4db5b6fe27f42745f4e570ac02704c71`  
		Last Modified: Mon, 16 Nov 2026 20:46:17 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf674763ce7317b2788700764b3049937d8b4eee47bdb3d6f811eca7d3d1ab13`  
		Last Modified: Mon, 16 Nov 2026 20:46:17 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d0f6f936b43880cd026cf0491a9898b9d4ceadc3d82943f7a817c18831cca6`  
		Last Modified: Mon, 16 Nov 2026 20:46:17 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067b6b255ceccae4f47492405c7b2ec8802caa1862fff03e6e26270a5609d544`  
		Last Modified: Mon, 16 Nov 2026 20:46:17 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fddb42406532974b2ef349ee937160a897acd702951126c368f6bc34e5f95581`  
		Last Modified: Mon, 16 Nov 2026 20:46:17 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117a155b4fa0feb4395c18557ce80a90b1e69bb2206499b4430dd46c226aa32e`  
		Last Modified: Mon, 16 Nov 2026 20:46:16 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0123d73e9cb9609ad7129904bca2ec8a1f4c076f4ce3c565487af81c90857227`  
		Last Modified: Mon, 16 Nov 2026 20:46:16 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:991517821b7e52311a0d3932d916d5660393b535be8dd3ca0337d0a1a1e41afe`  
		Last Modified: Mon, 16 Nov 2026 20:46:16 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6230cd607cbc2fcde0817f8547baf4f4707099c07a02e33c8a830fdecd14db8`  
		Last Modified: Mon, 16 Nov 2026 20:46:15 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6205adf93ff72b4bc4111742aaf777836aaff9c2aacda1595b44dcd9f5f09559`  
		Last Modified: Mon, 16 Nov 2026 20:46:15 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4096665c6f579db5778168eee3616ef9a1cfcdca0d3583d867cb93ac8918c0`  
		Last Modified: Mon, 16 Nov 2026 20:46:14 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f07e99ebad67cf4f53d9c0ce2a6346a7aa4d92db2cc087ced1126d33b7d492`  
		Last Modified: Mon, 16 Nov 2026 20:46:14 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859a988d8a1abee19e6afd596d69fc4d21e994642ce9d339df4cb7578a9b4a46`  
		Last Modified: Mon, 16 Nov 2026 20:46:14 GMT  
		Size: 1.1 KB (1051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c5780113e81b2679c8ace6fd82d1f01b87980785ee1c8f21adeadfbcf1daec`  
		Last Modified: Mon, 16 Nov 2026 20:46:14 GMT  
		Size: 111.5 KB (111510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560b0cc3e3d153c26cd772d61bf3a5142f7c0e34ff217f287e1440b0401d4758`  
		Last Modified: Mon, 16 Nov 2026 20:46:14 GMT  
		Size: 1.1 KB (1053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
