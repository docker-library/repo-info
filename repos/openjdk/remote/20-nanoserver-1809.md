## `openjdk:20-nanoserver-1809`

```console
$ docker pull openjdk@sha256:1aa76388ab1cb1332e5bf5c839789d28c4b67d7e4024f97a9be3f1065d8c2a88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `openjdk:20-nanoserver-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull openjdk@sha256:066eea9fb5dd3635ae559b989f4782e89e8d2514ea4a3540dd905b0142c1f4a9
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.6 MB (303612797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4b122d5a74f7809b9d8fb3d90fc36394e70f04428149dc443ee54e3424b23fa`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:45:31 GMT
SHELL [cmd /s /c]
# Thu, 12 Jan 2023 05:15:32 GMT
ENV JAVA_HOME=C:\openjdk-20
# Thu, 12 Jan 2023 05:15:33 GMT
USER ContainerAdministrator
# Thu, 12 Jan 2023 05:15:42 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Thu, 12 Jan 2023 05:15:43 GMT
USER ContainerUser
# Fri, 20 Jan 2023 22:24:19 GMT
ENV JAVA_VERSION=20-ea+32
# Fri, 20 Jan 2023 22:24:36 GMT
COPY dir:229281111aedb20f4a89aa490c2bd7678b868abd395974a9f912905341e20726 in C:\openjdk-20 
# Fri, 20 Jan 2023 22:25:29 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Fri, 20 Jan 2023 22:25:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e58f9ad3b15a2a4882ab0a845e8e619cc8c3c411ddbe8b50046c1618a95c1397`  
		Last Modified: Thu, 12 Jan 2023 02:40:44 GMT  
		Size: 106.7 MB (106666138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea67a6bd980bdee35399883e5abcc31c738b338ad384b2f92d91a15cf09d9df`  
		Last Modified: Thu, 12 Jan 2023 02:40:16 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96518e54215f38193b505640cdb2fef097c5741e65b4b97bba8f867e243d032`  
		Last Modified: Thu, 12 Jan 2023 05:25:44 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d63c92ba435f57ba529ea551f43866f6d4eba3a81d296b0fb044c740f2ee807`  
		Last Modified: Thu, 12 Jan 2023 05:25:44 GMT  
		Size: 1.0 KB (1025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b356ba1f31bf25142c630cbcb07b081461c3f630e690d98dc24ae4786a9ef7a`  
		Last Modified: Thu, 12 Jan 2023 05:25:44 GMT  
		Size: 70.5 KB (70518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638383fe215678a48f17d26ca2a40f4c79f0e0929d53790d7d9d5d1d73cdb9cb`  
		Last Modified: Thu, 12 Jan 2023 05:25:42 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e864dc1bd84afbc9cd1704c19ec7f8c049a7ecc904de579be47594cbb92af6`  
		Last Modified: Sat, 21 Jan 2023 02:22:34 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163fe78d2cd8d225d39e30064a92bd63869623e1669c3a3c8f679628ebb8f792`  
		Last Modified: Sat, 21 Jan 2023 02:22:56 GMT  
		Size: 193.1 MB (193065502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f736f565410185186c8317efa7ce6fb875ca2d393226a4f40ba1a97519f6824`  
		Last Modified: Sat, 21 Jan 2023 02:22:35 GMT  
		Size: 3.8 MB (3803925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94f708017957bafe42b5f3ea0e506415c1c5ab2c9ae9ca274a87c16eb99423a`  
		Last Modified: Sat, 21 Jan 2023 02:22:33 GMT  
		Size: 1.1 KB (1127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
