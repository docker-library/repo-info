## `eclipse-temurin:8-jre-nanoserver-1809`

```console
$ docker pull eclipse-temurin@sha256:1a458e17e6af1260cf2125572acc4653176715c3763bc15b17fb2a1942ee5b3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `eclipse-temurin:8-jre-nanoserver-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull eclipse-temurin@sha256:683d63d226d3dd21d8093c9d1e5c69c8499731ab105aec4f21aa4b4721c711a0
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.7 MB (146745355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b025910ba0168694b19ac671d5c9f1c3b66c8f8b453de4225e3e73ef558ea3bd`
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
# Wed, 25 Jan 2023 19:24:33 GMT
COPY dir:dcd2674e91fb412db18990a7004f7a484148b702bd6de08f5ae3a3d6f6a3f6f8 in C:\openjdk-8 
# Wed, 25 Jan 2023 19:25:18 GMT
RUN echo Verifying install ...     && echo java -version && java -version     && echo Complete.
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
	-	`sha256:5c24de76a094542ac3151db7b82a502a7d8bcf18452ee8e6d0d9ddc19d013ea0`  
		Last Modified: Wed, 25 Jan 2023 19:45:51 GMT  
		Size: 39.9 MB (39929126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d240a847e733206a469bb7097e06cb5e88eb93e6e8338d4772a402dd8cfe80b`  
		Last Modified: Wed, 25 Jan 2023 19:45:44 GMT  
		Size: 66.4 KB (66400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
