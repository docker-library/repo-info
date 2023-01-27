## `eclipse-temurin:8-jdk-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:28b5075d8e372b240d1a58947a96a7f47d19159fe028786b1aa2668526cd058e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.20348.1487; amd64
	-	windows version 10.0.17763.3887; amd64

### `eclipse-temurin:8-jdk-nanoserver` - windows version 10.0.20348.1487; amd64

```console
$ docker pull eclipse-temurin@sha256:3dde8c8cf513c4df6cf818b101905c410894e63f076f084c9587fb613985c017
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223652141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a54eb5b07f33d7d7a09e84882e392001b6818b42540f066ece05237700545e58`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Fri, 06 Jan 2023 23:36:49 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 02:19:48 GMT
SHELL [cmd /s /c]
# Wed, 25 Jan 2023 19:36:41 GMT
ENV JAVA_VERSION=jdk8u362-b09
# Wed, 25 Jan 2023 19:36:42 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 25 Jan 2023 19:36:43 GMT
USER ContainerAdministrator
# Wed, 25 Jan 2023 19:37:01 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 25 Jan 2023 19:37:01 GMT
USER ContainerUser
# Wed, 25 Jan 2023 19:37:16 GMT
COPY dir:8214f6b15a617bff549fa1e8e973ad9cf58dcd41804c9c4d00b4aebf5303ecc4 in C:\openjdk-8 
# Wed, 25 Jan 2023 19:37:51 GMT
RUN echo Verifying install ...     && echo javac -version && javac -version     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:83e9437e818022c1c28f0e07002dd46995c8614e62b9366138fa23b94f43d9ad`  
		Last Modified: Thu, 12 Jan 2023 02:51:06 GMT  
		Size: 122.1 MB (122099566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbebbf572ebe7984b715b8dfe99bc1273403a831c0079b95afa12162b7266f16`  
		Last Modified: Thu, 12 Jan 2023 02:50:38 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97ab9c3d89c94bcdd3a9f3ea6fa887a81528bbc896d64630e7e4a3d3ecb5d41`  
		Last Modified: Wed, 25 Jan 2023 19:49:18 GMT  
		Size: 1.1 KB (1139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e22b42465b215575fb4efa00bcc80b5d4b9e2d1ba14f1b5abc8555e246571f0`  
		Last Modified: Wed, 25 Jan 2023 19:49:18 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1598438261eb439df8fb74c6baab3dcc5c2ab56ffc1001823aaa8939e4cb7c9f`  
		Last Modified: Wed, 25 Jan 2023 19:49:16 GMT  
		Size: 1.1 KB (1130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0826278f368221a550932d158823438a582e368eba615841b5db54de1acb97c`  
		Last Modified: Wed, 25 Jan 2023 19:49:16 GMT  
		Size: 87.7 KB (87678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701fd830b62dbc2889981922bbd82573c23efb0257bfd6faf81e928edf86bc78`  
		Last Modified: Wed, 25 Jan 2023 19:49:16 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5888cf9514044df7f49fd83799a53256ad2a6c6a71b85c486d7cd1a80ee8120e`  
		Last Modified: Wed, 25 Jan 2023 19:49:30 GMT  
		Size: 101.4 MB (101400924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ccf2442d4dbee4d555dd466868ef724604f535fb285a95d36695e9b94394df`  
		Last Modified: Wed, 25 Jan 2023 19:49:16 GMT  
		Size: 58.2 KB (58226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:8-jdk-nanoserver` - windows version 10.0.17763.3887; amd64

```console
$ docker pull eclipse-temurin@sha256:8d7cf425c1b44aaec97b82466d7b219912134fe4bb4a08558834e5529ea2d1a1
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.2 MB (208204386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b34eece99cbad0f01155e5e3a52e20162c358b180ff6b0dec14080dbcc273ae`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:45:31 GMT
SHELL [cmd /s /c]
# Wed, 25 Jan 2023 19:20:19 GMT
ENV JAVA_VERSION=jdk8u362-b09
# Wed, 25 Jan 2023 19:20:20 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 25 Jan 2023 19:20:20 GMT
USER ContainerAdministrator
# Wed, 25 Jan 2023 19:20:42 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 25 Jan 2023 19:20:43 GMT
USER ContainerUser
# Wed, 25 Jan 2023 19:20:56 GMT
COPY dir:8214f6b15a617bff549fa1e8e973ad9cf58dcd41804c9c4d00b4aebf5303ecc4 in C:\openjdk-8 
# Wed, 25 Jan 2023 19:21:22 GMT
RUN echo Verifying install ...     && echo javac -version && javac -version     && echo java -version && java -version     && echo Complete.
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
	-	`sha256:e7ee09079770b055eabaded6edf485641252eba6e5f6ade178c45cc22433e8a3`  
		Last Modified: Wed, 25 Jan 2023 19:44:43 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b784529d70a2d371f68b069932db7b61ea947a7269c3c534d6128ed79133eee6`  
		Last Modified: Wed, 25 Jan 2023 19:44:42 GMT  
		Size: 1.0 KB (1020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a8ba53bab042592a876f52c837a592e544703d9892c461ea1e191afc152804`  
		Last Modified: Wed, 25 Jan 2023 19:44:41 GMT  
		Size: 1.1 KB (1052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579c35c633833bf4a49673155645bffc64f1baacf78307a46d5e7aeaccfb6a06`  
		Last Modified: Wed, 25 Jan 2023 19:44:41 GMT  
		Size: 78.4 KB (78358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72416a584c29eaa32514de9d17704fbdcb1f34fb77fcb92696ed6a984792d2eb`  
		Last Modified: Wed, 25 Jan 2023 19:44:40 GMT  
		Size: 1.0 KB (1028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6895041bfb308bec0bd641cca27a029af8b2c17fba49cfe655779789944f93`  
		Last Modified: Wed, 25 Jan 2023 19:44:58 GMT  
		Size: 101.4 MB (101396211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d757a7c0ea4d1536a4f206771dd87f00fc0a07db824930ffbbf619487320497e`  
		Last Modified: Wed, 25 Jan 2023 19:44:41 GMT  
		Size: 58.3 KB (58346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
