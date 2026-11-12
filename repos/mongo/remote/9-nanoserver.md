## `mongo:9-nanoserver`

```console
$ docker pull mongo@sha256:790b2e627b90273b6e296effb3ceeb1c026b733b5435f10f85480a7c3c9384da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `mongo:9-nanoserver` - windows version 10.0.20348.5870; amd64

```console
$ docker pull mongo@sha256:9f2f00f501e790f9cc780fce233164d0dfd94f771b32630e84aa428ac61a525c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1124978295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:249692b3f312b785197d3ec29617353228e598a7eb9627e2ba5100bc43be1c25`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:46:09 GMT
SHELL [cmd /S /C]
# Wed, 11 Nov 2026 22:46:10 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:46:12 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 11 Nov 2026 22:46:13 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:46:15 GMT
COPY multi:edf1670f741f0c0f034ec218dc51015484becee19afd9d4d712d1a864fd379ff in C:\Windows\System32\ 
# Wed, 11 Nov 2026 22:46:16 GMT
ENV MONGO_VERSION=9.0.8
# Wed, 11 Nov 2026 22:47:09 GMT
COPY dir:9bc1904d537e514c20bd4f66cb1975c6ee62eab1c5b32d134d5f778e74cc7052 in C:\mongodb 
# Wed, 11 Nov 2026 22:47:39 GMT
RUN mongod --version
# Wed, 11 Nov 2026 22:47:40 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 11 Nov 2026 22:47:40 GMT
EXPOSE 27017
# Wed, 11 Nov 2026 22:47:41 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513801ef4c2e7d0307d59ebb8109855311a30666e07ca35bf90141d9d477ed89`  
		Last Modified: Wed, 11 Nov 2026 22:47:59 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d33e6b72e99f9bd40cafca9bc4e77782097602c743db078a9a694c97a8b14e7`  
		Last Modified: Wed, 11 Nov 2026 22:47:59 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5558d278c15ca2e75a1388e05ad2b6452cd5e1c217ac290590f32dff612b6caa`  
		Last Modified: Wed, 11 Nov 2026 22:47:57 GMT  
		Size: 78.6 KB (78580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd152fbb0476c3401732d5198e9713492b63e8dca4b0ffaed7ccc6cb6394d65`  
		Last Modified: Wed, 11 Nov 2026 22:47:57 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99dd1aa2d945fdeb5fcddc4ebee7d3bb919179e305f18131a5b67f73a96d406`  
		Last Modified: Wed, 11 Nov 2026 22:47:58 GMT  
		Size: 300.4 KB (300360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3abe8ab96845ce4604a169f334f28bf0a0518650dcae7aa72a00189ac35fa0e`  
		Last Modified: Wed, 11 Nov 2026 22:47:57 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa039a14d5f180a694a9e88c7ebf9da5959f39f8b190f0ef7a3fad4c76ffcab2`  
		Last Modified: Wed, 11 Nov 2026 22:49:11 GMT  
		Size: 998.2 MB (998218671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532bab200a660f95bdc0d6da6e3928b3561b98e8b923f53d4fd0a3f7c2107c6a`  
		Last Modified: Wed, 11 Nov 2026 22:47:56 GMT  
		Size: 88.3 KB (88255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a21af24cc9d2779b85ee34595abc75d4bf39e343fbf3ae7a5e9f18aba9291b`  
		Last Modified: Wed, 11 Nov 2026 22:47:56 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88874e957bd9135666d5c1f1365c56504cba772c59e4cc4ed5590da908d059e`  
		Last Modified: Wed, 11 Nov 2026 22:47:56 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc967775673dcd946c7746af09cc9af84344f1aa0fa68843df95a6a5f5afd4db`  
		Last Modified: Wed, 11 Nov 2026 22:47:56 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
