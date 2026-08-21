## `eclipse-temurin:11-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:0ecac41b665d7428a36a6bdc65fdfd6c939153bfacef87a56aa70b2fbc7d62d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:11-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:85567026dfba514568d5f4f5d47724de3f1274b89091023091e3480575916ed9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.2 MB (319216348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4a3e2fb227931f4f98a291da95d5782d45516de41cac75afc455d24464d98b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Fri, 21 Aug 2026 18:25:41 GMT
SHELL [cmd /s /c]
# Fri, 21 Aug 2026 18:35:41 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 18:35:42 GMT
ENV JAVA_HOME=C:\openjdk-11
# Fri, 21 Aug 2026 18:35:42 GMT
USER ContainerAdministrator
# Fri, 21 Aug 2026 18:35:44 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 21 Aug 2026 18:35:44 GMT
USER ContainerUser
# Fri, 21 Aug 2026 18:36:00 GMT
COPY dir:5ff188efaadde1fc6eeed6540b26284c62d353d715b239adcd53bf550ccdbc2b in C:\openjdk-11 
# Fri, 21 Aug 2026 18:36:04 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Fri, 21 Aug 2026 18:36:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861c1724d049b9ebbb8c4cd96e2fa05394f418ceb5daaa237cc9c3a15477229a`  
		Last Modified: Fri, 21 Aug 2026 18:26:44 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32afb5952a7e8c4a031c211b84ee21aee804d852bb267af57aea0a14df9c0269`  
		Last Modified: Fri, 21 Aug 2026 18:36:10 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88c006cafbd2ccf177c9c9a28f8284dae049bcfc42bdec573b5e11067613320b`  
		Last Modified: Fri, 21 Aug 2026 18:36:10 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63102e5156fe0cd4d94b6641f8c971f61804f4055bf7d1ca03a15af9f42997cc`  
		Last Modified: Fri, 21 Aug 2026 18:36:10 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed2353cede1783b77654db36a57e72451d9e7237c41e56dcb6e96da7f6cc923`  
		Last Modified: Fri, 21 Aug 2026 18:36:08 GMT  
		Size: 79.3 KB (79338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f11f1a0e21d73174e3d110a58504db3d7e85509f2431aded2d6e4704a27404b`  
		Last Modified: Fri, 21 Aug 2026 18:36:08 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8bc91f4812f5faa3b8cd6920ca3c6602efeda0efdd7c5af4566942aff1b79c8`  
		Last Modified: Fri, 21 Aug 2026 18:36:19 GMT  
		Size: 194.8 MB (194765831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e9a9625559de80c9be2a95adcfaecedfc0424931a8cd79e24603b1fd50a1e8`  
		Last Modified: Fri, 21 Aug 2026 18:36:09 GMT  
		Size: 106.9 KB (106888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f386dd76b108db7f5c9801125ba891f8198283c98523b686b422c4ca42239a08`  
		Last Modified: Fri, 21 Aug 2026 18:36:08 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
