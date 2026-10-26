## `openjdk:28-ea-21-jdk-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:6423424247628b3ab64567df3dec7f3a44842b43675d57f91059395fa3b30dda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `openjdk:28-ea-21-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull openjdk@sha256:ab170dfd0c3dc986fda098b4192c645e0288f160991ac114e89624fbf460d501
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.6 MB (439600688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bb41fdd48147034043a1fec13f9d67f8698f5e4565af749a2079b9212d1537c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 00:37:58 GMT
RUN Apply image 10.0.26100.33650
# Mon, 26 Oct 2026 17:47:21 GMT
SHELL [cmd /s /c]
# Mon, 26 Oct 2026 17:47:21 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 26 Oct 2026 17:47:21 GMT
USER ContainerAdministrator
# Mon, 26 Oct 2026 17:47:35 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Mon, 26 Oct 2026 17:47:35 GMT
USER ContainerUser
# Mon, 26 Oct 2026 17:47:36 GMT
ENV JAVA_VERSION=28-ea+21
# Mon, 26 Oct 2026 17:48:17 GMT
COPY dir:24d8bbfd6877380a565c0b7368b2b02fad8c7eb0eceb426a35d8fc2a14429cc2 in C:\openjdk-28 
# Mon, 26 Oct 2026 17:48:24 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Mon, 26 Oct 2026 17:48:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fc75d5d958abc5a2294f36186f7c93790e84f49e7d31c08dfc8446cb7703df87`  
		Last Modified: Tue, 13 Oct 2026 22:26:06 GMT  
		Size: 199.9 MB (199871136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08eaf9b091bd3e68451c8fd39e2e6d579a0da6be5005184dd748720fa0fe218`  
		Last Modified: Mon, 26 Oct 2026 17:48:30 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366f21b817e4f18865e3e2d8eb9b0d3155ce03f956a6d217856c691e4599ab84`  
		Last Modified: Mon, 26 Oct 2026 17:48:30 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a75e1c3d5cd0aa8f7c7f4968da88dd3f470ca354f142fe5fb9706d58c118ff1`  
		Last Modified: Mon, 26 Oct 2026 17:48:30 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca18ce7df316c3590ac2e3533daf9497894185885f576bf521ccffdf0fe3765`  
		Last Modified: Mon, 26 Oct 2026 17:48:30 GMT  
		Size: 71.7 KB (71656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649a523b50ea647f77ac60640af916194588fb58040e646ccbb4176556739a5e`  
		Last Modified: Mon, 26 Oct 2026 17:48:28 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6cbe5f32037f2fa9fde8d3d03a15389b014e383bc98b8377ce52bb9a8e2434`  
		Last Modified: Mon, 26 Oct 2026 17:48:28 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266912d4afa21119776acb60eeb39cd1848970c0c9c718755f01a7cc99c47932`  
		Last Modified: Mon, 26 Oct 2026 17:48:43 GMT  
		Size: 239.6 MB (239559725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d013ccea2b6b259b2c424eb702ca051efdeec9b87bb95a76c38dd3432290f95`  
		Last Modified: Mon, 26 Oct 2026 17:48:28 GMT  
		Size: 91.9 KB (91909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e38e427b6538beaa2a27cad1112cf1afa81b92e61b0843aa4f3a4b626b285f7`  
		Last Modified: Mon, 26 Oct 2026 17:48:28 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
