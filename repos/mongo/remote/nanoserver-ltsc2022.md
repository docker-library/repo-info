## `mongo:nanoserver-ltsc2022`

```console
$ docker pull mongo@sha256:cee5a10f999686671377d32ee6d39a30a24f6b44849f791eb7a2d5e9e28b620b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.1487; amd64

### `mongo:nanoserver-ltsc2022` - windows version 10.0.20348.1487; amd64

```console
$ docker pull mongo@sha256:3c2d6a1f61b27a24a69f7ba990e42d0407cadbd1f828e6f044f1eef36f2ede8d
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **634.8 MB (634803201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f3c76839a791289ac620e38ae7d8ce592c23a4e822cfe545736a63059e66e09`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Fri, 06 Jan 2023 23:36:49 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 03:07:34 GMT
SHELL [cmd /S /C]
# Thu, 12 Jan 2023 04:07:43 GMT
USER ContainerAdministrator
# Thu, 12 Jan 2023 04:08:26 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Thu, 12 Jan 2023 04:08:27 GMT
USER ContainerUser
# Thu, 12 Jan 2023 04:08:28 GMT
COPY multi:4abffac378fdd7fd5082d54935b2f9dc2024a93fc9837ae8701ac6e024ef02ee in C:\Windows\System32\ 
# Thu, 26 Jan 2023 01:21:43 GMT
ENV MONGO_VERSION=6.0.4
# Thu, 26 Jan 2023 01:22:31 GMT
COPY dir:68661c9bc66199176f558318104ff5aa0937d5a9cd22b931af66fda7826a6f78 in C:\mongodb 
# Thu, 26 Jan 2023 01:22:53 GMT
RUN mongod --version
# Thu, 26 Jan 2023 01:22:54 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 26 Jan 2023 01:22:55 GMT
EXPOSE 27017
# Thu, 26 Jan 2023 01:22:56 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:83e9437e818022c1c28f0e07002dd46995c8614e62b9366138fa23b94f43d9ad`  
		Last Modified: Thu, 12 Jan 2023 02:51:06 GMT  
		Size: 122.1 MB (122099566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e0e139d1c09b743fda52fd8a19bdc3c829ac2aed829d2e16beec0fbbd5dd5d`  
		Last Modified: Thu, 12 Jan 2023 03:48:59 GMT  
		Size: 1.1 KB (1121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f52222b54787457572d99db7ae10e4c9512dafbe7ba244b0969616e6ac8be1`  
		Last Modified: Thu, 12 Jan 2023 04:40:59 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22763c78aa844e4b52e36432c545ee28797056da12caa5444e6d4a90bef22859`  
		Last Modified: Thu, 12 Jan 2023 04:40:58 GMT  
		Size: 96.5 KB (96468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e4a405601da327afce0142718dcaeaa3dbb5563a90b9abaaeff0770d008467`  
		Last Modified: Thu, 12 Jan 2023 04:40:58 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f9d04bb2d3ad2dae68778ea67f3f38c0df1ce7f74005997a797635eee7435b`  
		Last Modified: Thu, 12 Jan 2023 04:40:58 GMT  
		Size: 267.2 KB (267183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7181bf642c98fea3f000aea168fba51bc689aa85341f8035445d58c00af48d4`  
		Last Modified: Thu, 26 Jan 2023 01:31:06 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e9c7d84a8aa3184d13fc85529142ebac73588b8234e98965ec71ffbc3de7f3`  
		Last Modified: Thu, 26 Jan 2023 01:32:32 GMT  
		Size: 512.3 MB (512272715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9a3a5e2a2f7b7b4b4a6bcc8d5f9c207704f25fcd7ab5d67e3634e4c8a5b4e0`  
		Last Modified: Thu, 26 Jan 2023 01:31:04 GMT  
		Size: 59.2 KB (59189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686f24184589af18ef0930e5c9446f8955ff18bb959c39bd22e3c117484b1e4f`  
		Last Modified: Thu, 26 Jan 2023 01:31:04 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d09e23daaab34a47d57965664d41cc2e182ece6c15d184b02c6de3122c813be`  
		Last Modified: Thu, 26 Jan 2023 01:31:03 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ebccc47bc294d18c0163c9b8e7d7506f05ae1110ac3eae15b457a9e5b8d0ae`  
		Last Modified: Thu, 26 Jan 2023 01:31:04 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
