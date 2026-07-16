## `eclipse-temurin:21-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:f88a369208111cb423b8e66a80c5bf568c9a7da8f18f7a699cd16eadc3e154cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `eclipse-temurin:21-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull eclipse-temurin@sha256:192fb8e5a4bf8d0ac7e945f8114864ae0dfbfa9c40899b1eb04491f9ed445e0f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.4 MB (173356316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7eff2543fb5556eae7011284af2d1b268708fe6d335683fb42aec51c5eb9c3c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:52:34 GMT
SHELL [cmd /s /c]
# Wed, 15 Jul 2026 23:53:25 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Wed, 15 Jul 2026 23:53:25 GMT
ENV JAVA_HOME=C:\openjdk-21
# Wed, 15 Jul 2026 23:53:25 GMT
USER ContainerAdministrator
# Wed, 15 Jul 2026 23:53:27 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 15 Jul 2026 23:53:27 GMT
USER ContainerUser
# Wed, 15 Jul 2026 23:53:30 GMT
COPY dir:4940aac187beb0c950977243d0b1d703fc0231f7cabe77dd307cf1e9c831ffc7 in C:\openjdk-21 
# Wed, 15 Jul 2026 23:53:33 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0017bba38d18c186be699523bba85321db7186b5fa610c29f8eb3519bf78c0f7`  
		Last Modified: Wed, 15 Jul 2026 23:52:55 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ed193017bf80bb9e7efde7c19407587ad174ef711e10c3b2fa6852f66827f5`  
		Last Modified: Wed, 15 Jul 2026 23:53:39 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe024aa1e150596884689edbec5868595d0ba3bd3f86314d96a6a7a86fc97ae`  
		Last Modified: Wed, 15 Jul 2026 23:53:39 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9749dd03846434a56388b5ca896316e0a0d1164f70566ee8da47aca3464719fa`  
		Last Modified: Wed, 15 Jul 2026 23:53:38 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4efbc839fae131e9a8e4f8bc7fc5f0812b97c4e6a467861103594b727977da`  
		Last Modified: Wed, 15 Jul 2026 23:53:38 GMT  
		Size: 76.9 KB (76861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a2c437dd0810860330e091e3324a773944ac2de4c162f2310287444355e3c3`  
		Last Modified: Wed, 15 Jul 2026 23:53:38 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d9e7e2c8915adbdb1634acfe81c695aeccc09c739c2831a63505ef301f4708`  
		Last Modified: Wed, 15 Jul 2026 23:53:43 GMT  
		Size: 49.1 MB (49082860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529fc17b0ee7a81b2911985af07dd52f90ecb26b3c1f66ef183ca37062ded250`  
		Last Modified: Wed, 15 Jul 2026 23:53:38 GMT  
		Size: 88.2 KB (88150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
