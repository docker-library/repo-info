## `eclipse-temurin:8-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:b3d45100794fb48a4086323c1e3a7cbedb85e7427752ab8428a7e0bbf5a66ff4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `eclipse-temurin:8-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull eclipse-temurin@sha256:6a7e74f02090c274d5421d1f6e50279b22fdb7a3df0b89cd2f2cc1e9222d9d31
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.0 MB (240039367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0234493c545eb800a38ddbc2343a2fefb40f8fdf4a593a21df435d9ea5925604`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 00:37:58 GMT
RUN Apply image 10.0.26100.33650
# Wed, 14 Oct 2026 00:18:32 GMT
SHELL [cmd /s /c]
# Wed, 14 Oct 2026 00:18:33 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Wed, 14 Oct 2026 00:18:34 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 14 Oct 2026 00:18:34 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:18:45 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 14 Oct 2026 00:18:46 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:18:57 GMT
COPY dir:4c224d29a15b9aa56e23d2c02151956e155dad58f1ab34146433be40e9a5d364 in C:\openjdk-8 
# Wed, 14 Oct 2026 00:19:05 GMT
RUN echo Verifying install ...     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:fc75d5d958abc5a2294f36186f7c93790e84f49e7d31c08dfc8446cb7703df87`  
		Last Modified: Tue, 13 Oct 2026 22:26:06 GMT  
		Size: 199.9 MB (199871136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c626dfd8942c7742138cc7303da552dee260d179626be047dc5d90862fdbe5`  
		Last Modified: Wed, 14 Oct 2026 00:19:11 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de95821c563b09305f576ca725f7c0c9b93021f9e3b5c8bb73541ca5696ec44`  
		Last Modified: Wed, 14 Oct 2026 00:19:11 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bd5a5672b4edd693a855ace1175ff0dfacff91c70b3bccef20182fbe8078f5`  
		Last Modified: Wed, 14 Oct 2026 00:19:11 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7878e6a7a3654118881f5cfe1b097cd94b6f47a427c76815f35e735fc8d7cf65`  
		Last Modified: Wed, 14 Oct 2026 00:19:09 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed0bfe52a73490cb4a3bab5af47d6fb5afc76305c8bcb405471ed7815ece855`  
		Last Modified: Wed, 14 Oct 2026 00:19:10 GMT  
		Size: 70.8 KB (70760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a066eda9a6817cce26f4544ac53ad26a79809af21adf436aa826a3dc798d890f`  
		Last Modified: Wed, 14 Oct 2026 00:19:09 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e3fddc0281dd4bf83253d20e194b83474b2ea22292d6cff2ceb306a88810e6`  
		Last Modified: Wed, 14 Oct 2026 00:19:13 GMT  
		Size: 40.0 MB (39979522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93f61698532d0ad1dc761acc12f93c349ae32cafead016f9d0719d0f037a5c6`  
		Last Modified: Wed, 14 Oct 2026 00:19:10 GMT  
		Size: 112.8 KB (112768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
