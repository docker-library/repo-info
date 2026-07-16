## `openjdk:27-ea-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:4f78ed7b6eee337191da9c9e9cd370b68bd4bb63923f9de6b69e35887e62aca1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `openjdk:27-ea-nanoserver-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:b2bbeae9eb97b2ef9e2a36daffdae0e5c717748ff1eb40ce5b9907135eb6e51f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.5 MB (420521184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5110e6aedcb7ec5b19922940d0ccabb4b1e25adfe04cbbb49595b2fcdf7ce077`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 22:36:05 GMT
RUN Apply image 10.0.26100.33158
# Wed, 15 Jul 2026 23:57:07 GMT
SHELL [cmd /s /c]
# Wed, 15 Jul 2026 23:57:08 GMT
ENV JAVA_HOME=C:\openjdk-27
# Wed, 15 Jul 2026 23:57:08 GMT
USER ContainerAdministrator
# Wed, 15 Jul 2026 23:57:15 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Wed, 15 Jul 2026 23:57:16 GMT
USER ContainerUser
# Wed, 15 Jul 2026 23:57:16 GMT
ENV JAVA_VERSION=27-ea+30
# Wed, 15 Jul 2026 23:57:46 GMT
COPY dir:9c05a27038ce29679908b9e4f8e42ea1ba5c3566b9603f40bec0382cb1f736a4 in C:\openjdk-27 
# Wed, 15 Jul 2026 23:57:52 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Wed, 15 Jul 2026 23:57:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c708af2a3c15a47de0b81ec88fc0213adfa0065399e8b4600eb3474f44fcbc9c`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 197.2 MB (197219393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57025ac4eaf0720225682dd0a032efc6e2d6e1e8c5a6d3e5aa40960095d1bd7`  
		Last Modified: Wed, 15 Jul 2026 23:57:59 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7cf8d58e8da68c6e6bc9ab77e079bcaa393ad79889e99cc550c07ed8d7de86`  
		Last Modified: Wed, 15 Jul 2026 23:57:58 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5481129afd016ee41e371ab4f44562f33a8e10cccd886487e718f728a834f7`  
		Last Modified: Wed, 15 Jul 2026 23:57:58 GMT  
		Size: 1.1 KB (1052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e2209339019f6b683e488e7841e00c2c084155d01084f247cfff1d5796a8d8`  
		Last Modified: Wed, 15 Jul 2026 23:57:58 GMT  
		Size: 71.5 KB (71546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b979cfdccd2ec8faa674226a2f026dbbcc9e3c36329b5a26e6232577c869601a`  
		Last Modified: Wed, 15 Jul 2026 23:57:57 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4877c6df6defb167c5e48aca44cfa4dfcb56ca2ca0a5ad3125e128f8cc25d456`  
		Last Modified: Wed, 15 Jul 2026 23:57:57 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509865a3a94a2b4b548a49cea159265d4d88c6149d4b39b38f543efca4069478`  
		Last Modified: Wed, 15 Jul 2026 23:58:10 GMT  
		Size: 223.1 MB (223121590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d27213355ff15bdb1d469c30b40ee7cb99cac744885542258fbce1ca5c0d3d5`  
		Last Modified: Wed, 15 Jul 2026 23:57:57 GMT  
		Size: 102.4 KB (102433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2d25744de423967e0a28c3348bf9cd66be9d2eba67df210e59e676cde0a15b`  
		Last Modified: Wed, 15 Jul 2026 23:57:57 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
