## `mongo:9-nanoserver-ltsc2022`

```console
$ docker pull mongo@sha256:edfc34e14b90d8526bed0093585b51462c16db96e75a6a356045c0348462240d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `mongo:9-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull mongo@sha256:ca8fc3f77b50e1fd5bbc63e8a859ffb370689f4925a493272493c9995da86b57
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1120834146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0584eba7d51f482abf6f21841546a8cefa67680875ee096a25abf8a7aab31274`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 19:13:29 GMT
SHELL [cmd /S /C]
# Tue, 27 Oct 2026 19:13:32 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 19:13:40 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Tue, 27 Oct 2026 19:13:40 GMT
USER ContainerUser
# Tue, 27 Oct 2026 19:13:42 GMT
COPY multi:edf1670f741f0c0f034ec218dc51015484becee19afd9d4d712d1a864fd379ff in C:\Windows\System32\ 
# Tue, 27 Oct 2026 19:13:44 GMT
ENV MONGO_VERSION=9.0.4
# Tue, 27 Oct 2026 19:14:30 GMT
COPY dir:a07a97571b0bd15501aedf51995d7eadf7160d2abf744aa54db18d2af736a165 in C:\mongodb 
# Tue, 27 Oct 2026 19:15:02 GMT
RUN mongod --version
# Tue, 27 Oct 2026 19:15:02 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 27 Oct 2026 19:15:03 GMT
EXPOSE 27017
# Tue, 27 Oct 2026 19:15:03 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630442b11d2137049de1cdb74db437fb9e7ba301db7f6013cfd9452214bc3934`  
		Last Modified: Tue, 27 Oct 2026 19:15:13 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b68ce122d3d57ea1268b89c5c92546f14598f006dea8b8659805327319c86fc`  
		Last Modified: Tue, 27 Oct 2026 19:15:12 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a9cb2e715358ff58f1afd938c6cbb8fc1c48bdef9e3de18e34a39bd8c0448e`  
		Last Modified: Tue, 27 Oct 2026 19:15:11 GMT  
		Size: 85.7 KB (85658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bbc271ad80834f9b5b598f91bbcf24a2b7327f03379b8254a938ee993f0f4f7`  
		Last Modified: Tue, 27 Oct 2026 19:15:11 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cce612acb51decf64f97dda7d4eb0dfb3370404a77697c0b947e6acaecd43a99`  
		Last Modified: Tue, 27 Oct 2026 19:15:11 GMT  
		Size: 300.4 KB (300370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d80742e56483f4bd7e9755d53250cb0a7a1a4a83f1d99bfeabee065fe5a98c`  
		Last Modified: Tue, 27 Oct 2026 19:15:11 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e149cf2205843255a815533434871919d5157e91fcdfe3595402b19c49a801`  
		Last Modified: Tue, 27 Oct 2026 19:16:21 GMT  
		Size: 994.4 MB (994426331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7892b91f85bb138d6fa95ee39a7a36684121e575f09a3224501ede86257ba9cf`  
		Last Modified: Tue, 27 Oct 2026 19:15:09 GMT  
		Size: 87.6 KB (87646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d999d4268440764566a0de85c45342e9088f26032c9ae3ca0dcd50ec0c53bb`  
		Last Modified: Tue, 27 Oct 2026 19:15:09 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ceb32d7379dbf134e099b7e73c11cbf60479fb54c5e3cb053f91823eb47caa7`  
		Last Modified: Tue, 27 Oct 2026 19:15:09 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:183d311bb6802fbc0a3f8b4ccc3389f20f3f8d4f4ff9086f2491ee9c645ec540`  
		Last Modified: Tue, 27 Oct 2026 19:15:09 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
