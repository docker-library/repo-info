## `mongo:nanoserver-ltsc2022`

```console
$ docker pull mongo@sha256:f297978b4f2136590f8d1d15a62782aefde8eb13dc9543710d631aadc94f9cb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `mongo:nanoserver-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull mongo@sha256:b3fdb11b7da14683ad8d1461e05992c17aa4451ab15120e8490bf62dac64e1d2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1124966398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03d209a9f37f289b7b4a81da9f3045507bdd10bb2f1f91f20dc1e519e619a0a9`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Thu, 12 Nov 2026 02:20:28 GMT
RUN Apply image 10.0.20348.5873
# Mon, 16 Nov 2026 21:08:10 GMT
SHELL [cmd /S /C]
# Mon, 16 Nov 2026 21:08:11 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 21:08:12 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Mon, 16 Nov 2026 21:08:13 GMT
USER ContainerUser
# Mon, 16 Nov 2026 21:08:14 GMT
COPY multi:edf1670f741f0c0f034ec218dc51015484becee19afd9d4d712d1a864fd379ff in C:\Windows\System32\ 
# Mon, 16 Nov 2026 21:08:14 GMT
ENV MONGO_VERSION=9.0.8
# Mon, 16 Nov 2026 21:09:04 GMT
COPY dir:9bc1904d537e514c20bd4f66cb1975c6ee62eab1c5b32d134d5f778e74cc7052 in C:\mongodb 
# Mon, 16 Nov 2026 21:09:34 GMT
RUN mongod --version
# Mon, 16 Nov 2026 21:09:34 GMT
VOLUME [C:\data\db C:\data\configdb]
# Mon, 16 Nov 2026 21:09:34 GMT
EXPOSE 27017
# Mon, 16 Nov 2026 21:09:35 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:533f90db12914056d2c2d338afdeb6ce815e38f2a5fdf28be8b9614e39964ffc`  
		Last Modified: Fri, 13 Nov 2026 18:24:32 GMT  
		Size: 126.3 MB (126273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7743b8aa33607d3fc93e6c7e30544c34bd48e0a4542e558b946784991d6c3f6c`  
		Last Modified: Mon, 16 Nov 2026 21:09:43 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caebee66321f4fc6e31edf30003f8205ded38a56044af39971c531e3bd239786`  
		Last Modified: Mon, 16 Nov 2026 21:09:43 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c639fcdd3c12128cd26133bd75877ad0afd33366a7c31e501df1f601ca6ab632`  
		Last Modified: Mon, 16 Nov 2026 21:09:42 GMT  
		Size: 76.8 KB (76811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ffc70a4341819299c4e2cdda8c67ed2847cdb35c14338cf293fb6d864e1246a`  
		Last Modified: Mon, 16 Nov 2026 21:09:41 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad915db0925d4c40fe7a905a0ffeb6a148ddb348fe63439edc73b77a6bd7e77f`  
		Last Modified: Mon, 16 Nov 2026 21:09:41 GMT  
		Size: 300.4 KB (300390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f2dfee30a13c8204fa978d88a05f9e40422d949f014f5bef3f93b5b8316b2c`  
		Last Modified: Mon, 16 Nov 2026 21:09:41 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f6336ebe87ad458c016ba95fb11affec3b089b01a761d3f69b61c7eef78ba3`  
		Last Modified: Mon, 16 Nov 2026 21:10:54 GMT  
		Size: 998.2 MB (998218596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a43412086d274746cc3ee014d71734d1cebaa7e30b565a4d6f6ba0fe8bfb9c2`  
		Last Modified: Mon, 16 Nov 2026 21:09:40 GMT  
		Size: 89.2 KB (89222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15eaa2339af1ba1a0378e22ca8fc94ea91efa802ed9fdc217ec47c17403660b1`  
		Last Modified: Mon, 16 Nov 2026 21:09:39 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:846aad0bd83e86992377b802c814a0e84c8cecbfef6d06f9ad59a91a619aa050`  
		Last Modified: Mon, 16 Nov 2026 21:09:39 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffdd5b7fb60b051d6973db409e39ebaf8c2b03a2ffda0aa8856d8916ddb380c8`  
		Last Modified: Mon, 16 Nov 2026 21:09:40 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
