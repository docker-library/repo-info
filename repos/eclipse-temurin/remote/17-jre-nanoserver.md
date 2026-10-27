## `eclipse-temurin:17-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:1489bf74335d01d3c5ddc7fb1c4875fb14147aca848fcb12bc5cf7882f611930
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:17-jre-nanoserver` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:db9a0844c07239ae5287b90516f5d4fccd04c06645c5987dd0081654aebb4fbe
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (243969291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b8e16e6789fe73ec51b7c68568c4c90da2fee0b615b4e5a9707317ed18486b6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Tue, 27 Oct 2026 18:39:55 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:39:56 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 27 Oct 2026 18:39:57 GMT
ENV JAVA_HOME=C:\openjdk-17
# Tue, 27 Oct 2026 18:39:57 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:40:03 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:40:04 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:40:15 GMT
COPY dir:7fd41a3f65b8842d11d246cf9e17233e030c47f44036c1610eefa6c2f73af9e7 in C:\openjdk-17 
# Tue, 27 Oct 2026 18:40:18 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e14dee33a011422588846c3292e6a03a12626a7fc36bd86d3849d5da810a22d`  
		Last Modified: Tue, 27 Oct 2026 18:40:24 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcad72ae9bdafa821388a321bcdd238d8ae8e291baa4c2d1b92f04ed8feb562a`  
		Last Modified: Tue, 27 Oct 2026 18:40:24 GMT  
		Size: 1.0 KB (1030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a36be9a841275e51d98f71279ee98dfb87168dbeffb1f4ba2b847b15686a4e`  
		Last Modified: Tue, 27 Oct 2026 18:40:24 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843cbca2c4f6c5276a8fc33fe07bf1dd2f0aee6662d44b24c9295bbf13c3348f`  
		Last Modified: Tue, 27 Oct 2026 18:40:22 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d214a47743a63790644376490da14daee2810cc802efda4583e8ca2ad013a4`  
		Last Modified: Tue, 27 Oct 2026 18:40:22 GMT  
		Size: 71.5 KB (71511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f6172abc82679aebe45935ac9f5ce9935cc82316981d7da10df301810cdae61`  
		Last Modified: Tue, 27 Oct 2026 18:40:22 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714d48ecf3fa559068f70dda985a119d1d31bdc0fbd7631148e608bcf2d05fb2`  
		Last Modified: Tue, 27 Oct 2026 18:40:27 GMT  
		Size: 43.8 MB (43840299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee62c1197791293cfd3bf38fb09a6313310be18d96c8ee3e036ac8217c56d47`  
		Last Modified: Tue, 27 Oct 2026 18:40:22 GMT  
		Size: 93.2 KB (93236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:17-jre-nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:c64e4c5ff277d9865ab94ff85118df1336ec49a390f8f37cc8943bb1affc478a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.9 MB (169940154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f02418d0bbbd8f1ee61040e9e5f3794074b4591b81f3b1b299610d7325ef9d9`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:33:48 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:34:28 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 27 Oct 2026 18:34:28 GMT
ENV JAVA_HOME=C:\openjdk-17
# Tue, 27 Oct 2026 18:34:28 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:34:30 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:34:31 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:34:34 GMT
COPY dir:7fd41a3f65b8842d11d246cf9e17233e030c47f44036c1610eefa6c2f73af9e7 in C:\openjdk-17 
# Tue, 27 Oct 2026 18:34:37 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb37bd91727a9a2ea13e79ebf86b464297e4edfb0c8e4fb3a09fe9ab893db69`  
		Last Modified: Tue, 27 Oct 2026 18:34:04 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c34d070ec34453d00f5d5627f1406e80a1b470b81d377a5a50ceab00c3f3a6e`  
		Last Modified: Tue, 27 Oct 2026 18:34:42 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19ae72093bcae8444e20bb2e316c01a3cfa5de3f648a8541a6cd3819b0e5e1b`  
		Last Modified: Tue, 27 Oct 2026 18:34:42 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864596974aa18b70cb52be7cb73a982e513e973b09289041ab67d04f21d59315`  
		Last Modified: Tue, 27 Oct 2026 18:34:40 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cedf9b75472a11cb2f2ac110e80d830cab695c1cf9d39fe3abbe6763e907f1d`  
		Last Modified: Tue, 27 Oct 2026 18:34:40 GMT  
		Size: 77.2 KB (77248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543f6d7582043d532e11b35eda13923428a0ec302e6085dda45bc9b4cad77adf`  
		Last Modified: Tue, 27 Oct 2026 18:34:40 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983da1abca55d1f6e3e2265c5f77e75e41aee5c3fca8b38f4dbfa1496cac0c02`  
		Last Modified: Tue, 27 Oct 2026 18:34:45 GMT  
		Size: 43.8 MB (43840402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b9bd16e3f2ac04988f91eac2300e6643dda43806bdc40cc3c8b4afeae78f7c`  
		Last Modified: Tue, 27 Oct 2026 18:34:40 GMT  
		Size: 90.5 KB (90516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
