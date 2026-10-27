## `mongo:8-nanoserver`

```console
$ docker pull mongo@sha256:174663e91e7ac723c6843f846cc9b36865fa1b83028a3313ba84bac38e3eca29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `mongo:8-nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull mongo@sha256:d8c62965ea75212c951df14b206fc238c70f0426f0039c4b2dd7f0f67f284490
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1047837134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4a7a1dfe252a361c435b58567e68158386bde5643bbf28b350e25fea9832ca5`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 19:17:10 GMT
SHELL [cmd /S /C]
# Tue, 27 Oct 2026 19:17:11 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 19:17:18 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Tue, 27 Oct 2026 19:17:19 GMT
USER ContainerUser
# Tue, 27 Oct 2026 19:17:20 GMT
COPY multi:edf1670f741f0c0f034ec218dc51015484becee19afd9d4d712d1a864fd379ff in C:\Windows\System32\ 
# Tue, 27 Oct 2026 19:17:21 GMT
ENV MONGO_VERSION=8.3.13
# Tue, 27 Oct 2026 19:18:05 GMT
COPY dir:113a8183b00fc10e1f2ab56d58707d655a7149f4906fe68a8b488343412b0e98 in C:\mongodb 
# Tue, 27 Oct 2026 19:18:36 GMT
RUN mongod --version
# Tue, 27 Oct 2026 19:18:36 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 27 Oct 2026 19:18:37 GMT
EXPOSE 27017
# Tue, 27 Oct 2026 19:18:37 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c361b4b77c0e5ba24488cc73a0f6d02167786aefbffd2814e5d5c730eb61b69e`  
		Last Modified: Tue, 27 Oct 2026 19:18:50 GMT  
		Size: 1.1 KB (1095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec9c670a290370d43bb9955d453b10ebbd4b105a978060ae7e546439cc6a2ed`  
		Last Modified: Tue, 27 Oct 2026 19:18:50 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256ac310e3d6ea67f727837d687665f65d96b14dfdb2424e53aecc69ca9940de`  
		Last Modified: Tue, 27 Oct 2026 19:18:48 GMT  
		Size: 73.6 KB (73627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6ee12c2bd0e0dfd3850fd37535d26fb2eb4fff00a0b7e1315a979d598fb7a5`  
		Last Modified: Tue, 27 Oct 2026 19:18:48 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e475c88239b29dd1e861840c25e8845d27f2ea5ba26e5c7006eab5302dcc7790`  
		Last Modified: Tue, 27 Oct 2026 19:18:48 GMT  
		Size: 300.4 KB (300400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d58b4f4c66cdd2a8544b6d454d00f2d143c25d11b14be60af3e24ff45029c6`  
		Last Modified: Tue, 27 Oct 2026 19:18:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec94a40d73bbf3d3cc2499159b59f3e82cb9a05810064cf66b4560c450e2a58a`  
		Last Modified: Tue, 27 Oct 2026 19:19:56 GMT  
		Size: 921.4 MB (921440475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8062d615f843dee153377c99e6abd9bc233d1ee4a95af6d84c7947469de75dec`  
		Last Modified: Tue, 27 Oct 2026 19:18:46 GMT  
		Size: 88.4 KB (88406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d77b93763a40ab70318b68e2550c62c23cf4e4269692ccc5e29de44e2fb1d`  
		Last Modified: Tue, 27 Oct 2026 19:18:46 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bea216d0151e4f1193902b11e023676e1ffde1ff791a2ef869f9a6b9dddb8b`  
		Last Modified: Tue, 27 Oct 2026 19:18:46 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebed7fef10aae37993c2d93b1b9a08ea5350c12ed42c12a0da5397e35f94742`  
		Last Modified: Tue, 27 Oct 2026 19:18:46 GMT  
		Size: 1.1 KB (1091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
