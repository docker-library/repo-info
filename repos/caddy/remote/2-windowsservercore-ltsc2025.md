## `caddy:2-windowsservercore-ltsc2025`

```console
$ docker pull caddy@sha256:5849e6ab8a742221996b83820d9ebf28cc5a467f06530a3aef225e80ca20c360
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `caddy:2-windowsservercore-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull caddy@sha256:3e0dd0d28c67b4ab74bd5c0fbef670b4fdf4f690bdbb79d85579270f001fc3b1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2426651626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d350e00b38122b4a9a200b895766e401a3759339a33205278dbe0d556f4710d`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Wed, 11 Nov 2026 23:09:50 GMT
RUN Install update 10.0.26100.33828
# Mon, 16 Nov 2026 19:53:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:08:21 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Mon, 16 Nov 2026 20:08:22 GMT
ENV CADDY_VERSION=v2.11.9
# Mon, 16 Nov 2026 20:08:29 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Mon, 16 Nov 2026 20:08:30 GMT
ENV XDG_CONFIG_HOME=c:/config
# Mon, 16 Nov 2026 20:08:30 GMT
ENV XDG_DATA_HOME=c:/data
# Mon, 16 Nov 2026 20:08:31 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Mon, 16 Nov 2026 20:08:32 GMT
LABEL org.opencontainers.image.title=Caddy
# Mon, 16 Nov 2026 20:08:33 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Mon, 16 Nov 2026 20:08:33 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Mon, 16 Nov 2026 20:08:34 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Mon, 16 Nov 2026 20:08:34 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Mon, 16 Nov 2026 20:08:35 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Mon, 16 Nov 2026 20:08:36 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Mon, 16 Nov 2026 20:08:37 GMT
EXPOSE 80
# Mon, 16 Nov 2026 20:08:38 GMT
EXPOSE 443
# Mon, 16 Nov 2026 20:08:39 GMT
EXPOSE 443/udp
# Mon, 16 Nov 2026 20:08:39 GMT
EXPOSE 2019
# Mon, 16 Nov 2026 20:08:44 GMT
RUN caddy version
# Mon, 16 Nov 2026 20:08:44 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9defc15cca887258ad49b1f75aa00c54b7a6a070717bc0cd09bcae97046b4b3c`  
		Last Modified: Fri, 13 Nov 2026 18:53:03 GMT  
		Size: 884.0 MB (884008369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258b8ca421c56b5c9c99b175da794c28dc2695af7af6c8065e63deab793a98d2`  
		Last Modified: Mon, 16 Nov 2026 19:54:22 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba0ff885de524d9701d3fc9879b13c6fab215e18398ea094c46fac84942285`  
		Last Modified: Mon, 16 Nov 2026 20:08:54 GMT  
		Size: 364.2 KB (364170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b27cf029ed05cd79ddc526ea0bbb6c9f96ea1e7a943f43a3e7f6c4a90cdd53`  
		Last Modified: Mon, 16 Nov 2026 20:08:53 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f54c204dddb8d9c7a1e36a8b59aaa76461cf4964c21070809c989d9f2db257`  
		Last Modified: Mon, 16 Nov 2026 20:08:56 GMT  
		Size: 18.9 MB (18851146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7148a7f1ec91508da60b5251d57297b47be804c4b0c3491c4ea317172bfa55`  
		Last Modified: Mon, 16 Nov 2026 20:08:53 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490901219310a571553c6229e3bc83a304ab369c89fc6e86e4e6b8b274a73c58`  
		Last Modified: Mon, 16 Nov 2026 20:08:52 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1c5754ca535aabd9c8d4031fecf0159ad7c64569b83b3920f92b6a96640b14`  
		Last Modified: Mon, 16 Nov 2026 20:08:51 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ef6b61994e6fa004676473c27d9168a4012c57977c3d4c9a465c5895ad4d05`  
		Last Modified: Mon, 16 Nov 2026 20:08:51 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f78aed945ea15f021f9a2cf9d8ddf5676a88486e4bf5bb1c0e7d40192762b4e`  
		Last Modified: Mon, 16 Nov 2026 20:08:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589eba3fb66da9e1c9e09a5739c0bbf4e185aa248fe000b684a7cc3223a895a5`  
		Last Modified: Mon, 16 Nov 2026 20:08:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e22d55499fcb27794bf341f22924635003aff1d8eaad1cab41f751de2c39b72`  
		Last Modified: Mon, 16 Nov 2026 20:08:50 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f949fc3eb6bffd1ecef1547c1e100c9e4e17b9ac0c291b67131bda5e8c4141`  
		Last Modified: Mon, 16 Nov 2026 20:08:50 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74477c3f6309d051c0614b30a530bd1ba0a336c04cdee0815e6d6adca16c8fa`  
		Last Modified: Mon, 16 Nov 2026 20:08:50 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de77080f44b4c9a60a7d8fb1f59e5048e329f15c266823080b4518e2ae50f641`  
		Last Modified: Mon, 16 Nov 2026 20:08:50 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12851ac6a3d34ff7396681747f5f35052252c02645f78fcd305608a03b5f359`  
		Last Modified: Mon, 16 Nov 2026 20:08:50 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e764ee3d5d895ab04a380b6a011e6da929fde7f2ad3d96a9942ea2a804c9266a`  
		Last Modified: Mon, 16 Nov 2026 20:08:48 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df9a33ebe30248a694097eb98344cde45f8a2b5944d7cde8a9821b2abb070e8d`  
		Last Modified: Mon, 16 Nov 2026 20:08:48 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8040804e7e15f3ea31c2eb12af66ae1c6b276ceb457f6b0273d2f1e2b89d13`  
		Last Modified: Mon, 16 Nov 2026 20:08:48 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a704a0b7b86862563f4fcdaec0f5401ea8ac621fe67d1b927662eb14352ed74`  
		Last Modified: Mon, 16 Nov 2026 20:08:48 GMT  
		Size: 346.8 KB (346835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e05fe9a83a0d51484029ce874618e1f5804ff61a30b4362880668cddc8e67f`  
		Last Modified: Mon, 16 Nov 2026 20:08:48 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
