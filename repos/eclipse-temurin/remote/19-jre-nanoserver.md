## `eclipse-temurin:19-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:656c8e5517534672ad0c2b5390da9872158d84766f072978513580a73c1987b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.20348.1487; amd64
	-	windows version 10.0.17763.3887; amd64

### `eclipse-temurin:19-jre-nanoserver` - windows version 10.0.20348.1487; amd64

```console
$ docker pull eclipse-temurin@sha256:87f5458398b1269874f469515d57e7ad1a20a9e084a6322cbfeb83e5c4b656fd
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167397117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a26fb181845417ed790b3cdd3748d896635b0214867155c68fdc3b52b378855`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Fri, 06 Jan 2023 23:36:49 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 02:19:48 GMT
SHELL [cmd /s /c]
# Wed, 25 Jan 2023 19:39:22 GMT
ENV JAVA_VERSION=jdk-19.0.2+7
# Wed, 25 Jan 2023 19:39:23 GMT
ENV JAVA_HOME=C:\openjdk-19
# Wed, 25 Jan 2023 19:39:24 GMT
USER ContainerAdministrator
# Wed, 25 Jan 2023 19:39:38 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 25 Jan 2023 19:39:39 GMT
USER ContainerUser
# Wed, 25 Jan 2023 19:40:48 GMT
COPY dir:904161e5243ae36448a284ab932eb54925cce61a8b841396759eee721890e3f8 in C:\openjdk-19 
# Wed, 25 Jan 2023 19:41:12 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
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
	-	`sha256:bc8c5c16cd65b217276a0998fede9dae429cb0e71f2d808979e0c1e3f47b5761`  
		Last Modified: Wed, 25 Jan 2023 19:50:04 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395dfe8afbc45ba2eec3be3a7fe626ed743baea1e20fe334d809c542e06932e0`  
		Last Modified: Wed, 25 Jan 2023 19:50:04 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395235b943d4f68c3aabf58c1516dcc101a6b27a11986783f14961858321b16f`  
		Last Modified: Wed, 25 Jan 2023 19:50:04 GMT  
		Size: 1.1 KB (1142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7598f9d8795b91b3391d700891dd834f7a448fdf36bfbcf3214db6566466d2`  
		Last Modified: Wed, 25 Jan 2023 19:50:02 GMT  
		Size: 84.8 KB (84819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da29c2c5cf0f9b1ba9ff6d01e75ab6769c5633b757dc6e307d399072d3775ce`  
		Last Modified: Wed, 25 Jan 2023 19:50:02 GMT  
		Size: 1.1 KB (1142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49523e1347ccb63f5aaeca315eeedf13e6ea43af59e79abfac73a378f4b8ca3`  
		Last Modified: Wed, 25 Jan 2023 19:50:47 GMT  
		Size: 45.1 MB (45144166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f009c76e98993651c4c43a72846f79133673cf99220501991baeea39b1f246ea`  
		Last Modified: Wed, 25 Jan 2023 19:50:36 GMT  
		Size: 62.8 KB (62789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:19-jre-nanoserver` - windows version 10.0.17763.3887; amd64

```console
$ docker pull eclipse-temurin@sha256:1fae1599873af0d7fd1bf5f972b32cf760e2c9f0c8f276791342811dec804dd6
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.0 MB (154953685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0da52c58238459534db41b7cfae6438434b45ca1443e87ddf904fd355afaa29e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:45:31 GMT
SHELL [cmd /s /c]
# Wed, 25 Jan 2023 19:31:13 GMT
ENV JAVA_VERSION=jdk-19.0.2+7
# Wed, 25 Jan 2023 19:31:14 GMT
ENV JAVA_HOME=C:\openjdk-19
# Wed, 25 Jan 2023 19:31:15 GMT
USER ContainerAdministrator
# Wed, 25 Jan 2023 19:31:26 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 25 Jan 2023 19:31:27 GMT
USER ContainerUser
# Wed, 25 Jan 2023 19:36:09 GMT
COPY dir:904161e5243ae36448a284ab932eb54925cce61a8b841396759eee721890e3f8 in C:\openjdk-19 
# Wed, 25 Jan 2023 19:36:31 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
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
	-	`sha256:252b36fa4e2a05c79142be9f67c2af64b3abf3f98ab329ca0a25fce950a1a6c9`  
		Last Modified: Wed, 25 Jan 2023 19:47:43 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37375f8c13ccf8fb7da257ce1ff1bee2cf44e6a1a0f8b92b3bf39e9b58798828`  
		Last Modified: Wed, 25 Jan 2023 19:47:43 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1dbe9a3173116874f03b155a05a1bd4c2735ee719aa09238a2649cb7bdad6ac`  
		Last Modified: Wed, 25 Jan 2023 19:47:43 GMT  
		Size: 1.1 KB (1122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5761b874ef22a2217f66d4139cc2c9534141559dd08f28c7d816265710ae7e`  
		Last Modified: Wed, 25 Jan 2023 19:47:41 GMT  
		Size: 77.6 KB (77609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f289eac0052969d9a59e00936476673e758cf44bb2b6489e7b91acb34efa261`  
		Last Modified: Wed, 25 Jan 2023 19:47:41 GMT  
		Size: 1.1 KB (1130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2352ef0d3001676915101271073f2539f905d30dbb8ea96a18ce641a1042396`  
		Last Modified: Wed, 25 Jan 2023 19:49:08 GMT  
		Size: 45.1 MB (45143085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40bb2fe1552515bd7eed836d3ecc6e7edd18901b9f6666735de90eddbc62eb5e`  
		Last Modified: Wed, 25 Jan 2023 19:49:00 GMT  
		Size: 3.1 MB (3061123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
