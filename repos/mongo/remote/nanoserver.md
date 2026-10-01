## `mongo:nanoserver`

```console
$ docker pull mongo@sha256:4207906436c3ddbbfc479d387d6b1cd77b1cb941894c94045a4a72ab42bd1677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `mongo:nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull mongo@sha256:adf392478003a45efe091e112e70b238cb1c4ccbedca57b137d78df37535de66
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1118450976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44ffa358e97a86757af7f1d38ed3b7b29f7d96667253cadc62b9fed546394238`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 30 Sep 2026 23:49:39 GMT
SHELL [cmd /S /C]
# Wed, 30 Sep 2026 23:49:39 GMT
USER ContainerAdministrator
# Wed, 30 Sep 2026 23:49:48 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 30 Sep 2026 23:49:49 GMT
USER ContainerUser
# Wed, 30 Sep 2026 23:49:50 GMT
COPY multi:edf1670f741f0c0f034ec218dc51015484becee19afd9d4d712d1a864fd379ff in C:\Windows\System32\ 
# Wed, 30 Sep 2026 23:49:51 GMT
ENV MONGO_VERSION=9.0.2
# Wed, 30 Sep 2026 23:50:41 GMT
COPY dir:b00aa0c5672503eb1fcaef193d190c1a29ce89aab61334649303fef8291e30bd in C:\mongodb 
# Wed, 30 Sep 2026 23:51:12 GMT
RUN mongod --version
# Wed, 30 Sep 2026 23:51:12 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 30 Sep 2026 23:51:13 GMT
EXPOSE 27017
# Wed, 30 Sep 2026 23:51:13 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c479c40b3001a75c9139aa6196307aac49f0af6fd4a56e23d89f2f4ab16d25`  
		Last Modified: Wed, 30 Sep 2026 23:51:20 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3987db75614103f606f90a1f524888ae5cb66280ce2296f68aa8fe185a46eef`  
		Last Modified: Wed, 30 Sep 2026 23:51:20 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26844c4bfa1bcd48d7f10c7e7057d14f330dc761328481aa09064c3be1934de7`  
		Last Modified: Wed, 30 Sep 2026 23:51:19 GMT  
		Size: 85.1 KB (85095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d356770aa6ccdfa5e1b918be01a8a48f2392781486206550488a0cedc5bbb3`  
		Last Modified: Wed, 30 Sep 2026 23:51:19 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e293a5ef04c14827a809d6e59dcdf88eb5578bfbe169a7342d3cccb9ef20c5a8`  
		Last Modified: Wed, 30 Sep 2026 23:51:19 GMT  
		Size: 300.4 KB (300367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fee385c1b5248c4c813492ac5f7a208f67a592757a8db93bd0ac3d67e303d9a`  
		Last Modified: Wed, 30 Sep 2026 23:51:19 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d0467b44043da9279deeb2e2fca2a3169a0e417a41b1a3d81d2bb746766e07`  
		Last Modified: Wed, 30 Sep 2026 23:52:32 GMT  
		Size: 993.3 MB (993336808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4f2705e77e4d125228b9294c9533d1faba3b94b668d1e46b7a0eab6d665f59`  
		Last Modified: Wed, 30 Sep 2026 23:51:17 GMT  
		Size: 83.9 KB (83877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17cc13de258da41f527f8a9ed6b2783958466e2dbcfba4fb454ce5c94042dadb`  
		Last Modified: Wed, 30 Sep 2026 23:51:17 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528c5dba12f8882b70e1f4662ddd8567cfc9388714754a668e28ce257591ecf8`  
		Last Modified: Wed, 30 Sep 2026 23:51:17 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c44cd970f53693048e3c2f8c22d9442966d6bf7c11753960022058c4d52e12f2`  
		Last Modified: Wed, 30 Sep 2026 23:51:17 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
