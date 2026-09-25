## `eclipse-temurin:8u504-b01-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:983a77a4de889d48220864382dc233ac57c9be3a7c71e3835ab26445c838508e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `eclipse-temurin:8u504-b01-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33438; amd64

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
