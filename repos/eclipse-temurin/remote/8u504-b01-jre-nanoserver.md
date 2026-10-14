## `eclipse-temurin:8u504-b01-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:f5e5ad0c13cf581263c415be6b2903ac0e0288d7b8b306101e1abd3dd54d77c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `eclipse-temurin:8u504-b01-jre-nanoserver` - windows version 10.0.26100.33650; amd64

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

### `eclipse-temurin:8u504-b01-jre-nanoserver` - windows version 10.0.20348.5761; amd64

```console
$ docker pull eclipse-temurin@sha256:7d988df12f3738a9deca585e63fa6f0715cb8d0136fbc2134cf4e25a44396ae7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.0 MB (165963917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88c9757d5e0063726b0c1cc1a054f42c3412c8bdd5865d325b667a8d10806cb8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:18:43 GMT
SHELL [cmd /s /c]
# Wed, 14 Oct 2026 00:18:44 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Wed, 14 Oct 2026 00:18:44 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 14 Oct 2026 00:18:44 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:18:47 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 14 Oct 2026 00:18:47 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:18:53 GMT
COPY dir:4c224d29a15b9aa56e23d2c02151956e155dad58f1ab34146433be40e9a5d364 in C:\openjdk-8 
# Wed, 14 Oct 2026 00:18:57 GMT
RUN echo Verifying install ...     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0f5c5f98a3747c8ab49ec9bf77d485d4cb9cc0b5022f437ebd7cb6eb5d2537`  
		Last Modified: Wed, 14 Oct 2026 00:19:03 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b60d5c50a3505548f33401461cfeba1316cdf090e91dadb522bb006269ab7229`  
		Last Modified: Wed, 14 Oct 2026 00:19:03 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509645b81c9858cd0a1fb0dc039da588e14a78215b04d534852eaa930ec373ad`  
		Last Modified: Wed, 14 Oct 2026 00:19:03 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487ac752edbb01efb0ec07893fde7b8a09ce9f04cd4159cc62954c832755f419`  
		Last Modified: Wed, 14 Oct 2026 00:19:02 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe19eb6cb66023b1e1cf198931aaaab4af90ed4372a804220561979a8ad8709`  
		Last Modified: Wed, 14 Oct 2026 00:19:02 GMT  
		Size: 75.7 KB (75749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508da985e9c730f33ae0ad00890a9140c5f8cee32f811d34d85e3eee67a58651`  
		Last Modified: Wed, 14 Oct 2026 00:19:02 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2529093f5d725e345f63ac98fe61a21fafa16f4d59f5473957801b159e996fe`  
		Last Modified: Wed, 14 Oct 2026 00:19:05 GMT  
		Size: 40.0 MB (39979713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708ae36f43b399ff75ba810c7bbe7513708ba26de961ed91343c6d8b7b82e4e8`  
		Last Modified: Wed, 14 Oct 2026 00:19:02 GMT  
		Size: 107.1 KB (107125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
