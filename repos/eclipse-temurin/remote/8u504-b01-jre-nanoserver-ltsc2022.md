## `eclipse-temurin:8u504-b01-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:044ae539a8883eda6936cec8c671c222279ce0573b3882092eaa5db6abda2c01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `eclipse-temurin:8u504-b01-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5761; amd64

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
