## `eclipse-temurin:8-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:2ce4cb1642a53b54486b068e56e0d183f554f79055286507e64759bbab28f52b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:8-jre-nanoserver` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:ed2de0831f0563bb0e8fbc91baa76320dab52f68e8c7b7226ae28f0f2736625a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.8 MB (237789290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65063b150e4d8494fedff10360b475f7338da4c0b4c2da5f3c0c9688246c4c59`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Fri, 25 Sep 2026 22:56:33 GMT
SHELL [cmd /s /c]
# Fri, 25 Sep 2026 22:56:34 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:56:34 GMT
ENV JAVA_HOME=C:\openjdk-8
# Fri, 25 Sep 2026 22:56:35 GMT
USER ContainerAdministrator
# Fri, 25 Sep 2026 22:56:41 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 25 Sep 2026 22:56:42 GMT
USER ContainerUser
# Fri, 25 Sep 2026 22:56:50 GMT
COPY dir:4c224d29a15b9aa56e23d2c02151956e155dad58f1ab34146433be40e9a5d364 in C:\openjdk-8 
# Fri, 25 Sep 2026 22:56:53 GMT
RUN echo Verifying install ...     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7125c9586bd9284aa07ca5716d96ab6a79b3838f750bfc9dc96a86b2634dd798`  
		Last Modified: Fri, 25 Sep 2026 22:56:58 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75add4e57f884dbcdcb6159a65b0df8157a385ab6e9440e07ac5fb8d319a30eb`  
		Last Modified: Fri, 25 Sep 2026 22:56:58 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa81444def3ad0a0931f43613dcb01a004892d3283013c646e57345052bf94e2`  
		Last Modified: Fri, 25 Sep 2026 22:56:58 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3f9be92fd44dd4382a3dae09a271bd75afc585c77bdc7f74c76d001aab5008`  
		Last Modified: Fri, 25 Sep 2026 22:56:57 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75129ce53087dfac69535fcb10c85a17ce4eb5a04f2ee3ca96bd491f90c9ae5f`  
		Last Modified: Fri, 25 Sep 2026 22:56:57 GMT  
		Size: 70.3 KB (70299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279e16f2016917f6eb88365ed9043d610af2c01dd211689487ff4df061235f10`  
		Last Modified: Fri, 25 Sep 2026 22:56:57 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0a9876166978b99e71d8acf027faeb7ef2cd32e2db2dfa0e40307e6c6a0d0f`  
		Last Modified: Fri, 25 Sep 2026 22:57:01 GMT  
		Size: 40.0 MB (39980025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9bcb3c34329bb2a4d63e5490724bda0c85a500b80aa81795e3077178eb2f56`  
		Last Modified: Fri, 25 Sep 2026 22:56:57 GMT  
		Size: 83.3 KB (83268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:8-jre-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:463eb47fa9da3fc05fd4beb8e6011e5cf15d5b11e927441f69da8889df6424a5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.8 MB (164797616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d443f4ecf338a022cba012b1f8650704d409985090d20e3c32c69db44215473`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Fri, 25 Sep 2026 23:13:58 GMT
SHELL [cmd /s /c]
# Fri, 25 Sep 2026 23:13:58 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 23:13:59 GMT
ENV JAVA_HOME=C:\openjdk-8
# Fri, 25 Sep 2026 23:13:59 GMT
USER ContainerAdministrator
# Fri, 25 Sep 2026 23:14:08 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 25 Sep 2026 23:14:08 GMT
USER ContainerUser
# Fri, 25 Sep 2026 23:14:20 GMT
COPY dir:4c224d29a15b9aa56e23d2c02151956e155dad58f1ab34146433be40e9a5d364 in C:\openjdk-8 
# Fri, 25 Sep 2026 23:14:24 GMT
RUN echo Verifying install ...     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f860267c810d0a5816ddc86484c903cef847600eeb57713760eddb28f377fc8`  
		Last Modified: Fri, 25 Sep 2026 23:14:29 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d4b55ad953d704bdaae4e30b1250834ea3e8e269e029a2963a76188fe6ae80`  
		Last Modified: Fri, 25 Sep 2026 23:14:29 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce132d2770805ac534679575ff28d1a5dff3a1e36a149f6aad6ae5a352aab04`  
		Last Modified: Fri, 25 Sep 2026 23:14:29 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0aa3201a1b67f76485694b3d9635affebe5bc56815f9aa1b301d500278376e5`  
		Last Modified: Fri, 25 Sep 2026 23:14:27 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c517f98194dbb6525b70d2766975db925c42140354f4c5f5f92821a882aefcf`  
		Last Modified: Fri, 25 Sep 2026 23:14:27 GMT  
		Size: 79.7 KB (79714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07703c918ce079c8b5aef024274200151edb1ffe99275815f1362a8c8ba53bcd`  
		Last Modified: Fri, 25 Sep 2026 23:14:27 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f0053b51d035c646df7f54b1ee55605e7699e7fbf70b16cff5a3939c5f8c3f`  
		Last Modified: Fri, 25 Sep 2026 23:14:31 GMT  
		Size: 40.0 MB (39979763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0cd034db95625d4368144f86a3591d632e3d323b3232a06a81f4d1e70de4d2`  
		Last Modified: Fri, 25 Sep 2026 23:14:27 GMT  
		Size: 95.4 KB (95436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
