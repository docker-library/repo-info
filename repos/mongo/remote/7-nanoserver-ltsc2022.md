## `mongo:7-nanoserver-ltsc2022`

```console
$ docker pull mongo@sha256:1bf7e6d637bb991a498fa1afc7e625c19c9bc3464a5d5ab0404a72d682fd3440
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `mongo:7-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull mongo@sha256:afb7e398920d533e139f44fb9f67869797e5f6197be95d0e5f517e6ded4b5f0d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **750.7 MB (750731622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd27881ed5331e7f3e0d68fb124e2aab29e40f755ea681977a78febf8863654f`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 19:17:26 GMT
SHELL [cmd /S /C]
# Tue, 27 Oct 2026 19:17:28 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 19:17:34 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Tue, 27 Oct 2026 19:17:34 GMT
USER ContainerUser
# Tue, 27 Oct 2026 19:17:36 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Tue, 27 Oct 2026 19:17:37 GMT
ENV MONGO_VERSION=7.0.45
# Tue, 27 Oct 2026 19:18:06 GMT
COPY dir:cfe1deecaca9e42e2e5b9030e32d8321e55c89ba272933ee620b19fa5a0029e1 in C:\mongodb 
# Tue, 27 Oct 2026 19:18:25 GMT
RUN mongod --version
# Tue, 27 Oct 2026 19:18:25 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 27 Oct 2026 19:18:26 GMT
EXPOSE 27017
# Tue, 27 Oct 2026 19:18:26 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0c10a5c262415e021433f1ddd3bef0e2820f67397e3d18f9f7dba881bba3c7`  
		Last Modified: Tue, 27 Oct 2026 19:18:34 GMT  
		Size: 1.1 KB (1096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0647f29e5b69602504bb0b1315503218fd1adafcb55a17208f5b0c222972fd02`  
		Last Modified: Tue, 27 Oct 2026 19:18:34 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b989ebb769995cedb4bb1afb704452ffd7000e1553a103f96963c0411be2fa`  
		Last Modified: Tue, 27 Oct 2026 19:18:32 GMT  
		Size: 79.3 KB (79344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b53dacf120bfadb10ce1b3bd6c2d22c78c3118f82a696b56158d33f4afb238aa`  
		Last Modified: Tue, 27 Oct 2026 19:18:32 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7f1c111a10f7018b94354b0bf1034f83ee6555912144bf94693aa92f7d1fe4`  
		Last Modified: Tue, 27 Oct 2026 19:18:32 GMT  
		Size: 275.2 KB (275199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281772b8bce7e9248ec3f53b1d2257ea798f1f4dfb03804e11606fc861efb3c2`  
		Last Modified: Tue, 27 Oct 2026 19:18:32 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852b044f12d101a65df8ca994065fc9c6b95c5b96461cdee03373d44f4d647f5`  
		Last Modified: Tue, 27 Oct 2026 19:19:20 GMT  
		Size: 624.4 MB (624357916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51335e0bb60b19cfa5aaa6545347b8c82a0ff81b6f210523800bdfde44458cc0`  
		Last Modified: Tue, 27 Oct 2026 19:18:31 GMT  
		Size: 85.0 KB (85027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c90373e7d94d89d1f57bee2db40e1b25795ae754a7645d70f5774e429e74e3f`  
		Last Modified: Tue, 27 Oct 2026 19:18:30 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4611da8ea5a64c986169890a4a6f9d2e1e4623aaca77a112b168d4776e3220f2`  
		Last Modified: Tue, 27 Oct 2026 19:18:30 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b60bdeb07a1d83a20e745f9924b2df5ff8a830d9447ab0aa3a3a5bacd239e2f0`  
		Last Modified: Tue, 27 Oct 2026 19:18:30 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
