## `eclipse-temurin:11-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:a2dad404d96580e3ee9d28e4a50b863a9a1138e07d5aa24a69dc551c48f2d5d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `eclipse-temurin:11-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull eclipse-temurin@sha256:6db0c24c485a12307c5e43f9b9c260964038f6a79775aa6b2a7af118c9f7f014
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.7 MB (169693707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36220b586be43ce3dabba18257b250572934e2c329c2c6014bc20f617f9bdaba`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:19:20 GMT
SHELL [cmd /s /c]
# Wed, 14 Oct 2026 00:19:21 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Wed, 14 Oct 2026 00:19:21 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 14 Oct 2026 00:19:21 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:19:25 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 14 Oct 2026 00:19:25 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:19:43 GMT
COPY dir:932951a7f9cc979d426261013a8e7d4b19921ca73270e018152705df3374f84b in C:\openjdk-11 
# Wed, 14 Oct 2026 00:19:46 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5492d011d39c3f8870675121404da30e1c686947fec06ae84ac86852e80e81d6`  
		Last Modified: Wed, 14 Oct 2026 00:19:52 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d2b8bb3eb3da0c61d14bcddc5eac4acdb3f9ce0ac2961f26749074142f09e0`  
		Last Modified: Wed, 14 Oct 2026 00:19:52 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e977c5403beb10a6221ef9dace02e1f4ce7cacc865fb378248416f759ac2ef4`  
		Last Modified: Wed, 14 Oct 2026 00:19:52 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3dbaa43d6a24a77e7fa9957a6f67fc1920d1d52369bdbf59db8618e883e6c6e`  
		Last Modified: Wed, 14 Oct 2026 00:19:51 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d755af146ed5e43e8ecd013e3acbbe046e8d7d75ab75891a641dc7f0e50fabce`  
		Last Modified: Wed, 14 Oct 2026 00:19:51 GMT  
		Size: 85.8 KB (85777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42cf8a6347b3b54bb151ddb8cee24a2b7023c27f2522b607cb0574786afd898`  
		Last Modified: Wed, 14 Oct 2026 00:19:51 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3c683b9d934dad0aa62b27781b547bfe963e5af080afcb6932387f80d071bb`  
		Last Modified: Wed, 14 Oct 2026 00:19:55 GMT  
		Size: 43.7 MB (43721123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530b93b586d7824e2726e17ee42364474126f1287a6adf85e49794644d8f9ec6`  
		Last Modified: Wed, 14 Oct 2026 00:19:51 GMT  
		Size: 85.5 KB (85500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
