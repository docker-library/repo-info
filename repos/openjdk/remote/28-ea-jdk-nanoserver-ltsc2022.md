## `openjdk:28-ea-jdk-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:2beecffed4f76874fdb29c832c3ab27b7dc40fe1d41f3ef9a41234ef9ddff03c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `openjdk:28-ea-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull openjdk@sha256:7c4ed365e9f9da2fad95487efae508f885f4cdb1319b38b2ea30a3d8e5ab7a50
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.3 MB (365344423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:828b75c363f88edf74d44bcb31610b622951965bb924f194a76ac464b14c5418`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:18:43 GMT
SHELL [cmd /s /c]
# Wed, 14 Oct 2026 00:27:40 GMT
ENV JAVA_HOME=C:\openjdk-28
# Wed, 14 Oct 2026 00:27:41 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:27:42 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Wed, 14 Oct 2026 00:27:43 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:27:43 GMT
ENV JAVA_VERSION=28-ea+19
# Wed, 14 Oct 2026 00:27:52 GMT
COPY dir:c208d4ddb823c6de37c796046bc4c0d90d3d226ecf0b2aab672eaf34a98fea52 in C:\openjdk-28 
# Wed, 14 Oct 2026 00:28:00 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Wed, 14 Oct 2026 00:28:00 GMT
CMD ["jshell"]
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
	-	`sha256:c694a07a95b37463231853a402f3bd9320a44f0da1ae1ffddfae47b7d32754b4`  
		Last Modified: Wed, 14 Oct 2026 00:28:05 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56763792f524024de555a11d5df8177e5a97cf02df0754b3fc40137008cfea33`  
		Last Modified: Wed, 14 Oct 2026 00:28:05 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c941d5d6bc228ed22994cc63b43efd98ca02de10b55a25175b42adac20f121`  
		Last Modified: Wed, 14 Oct 2026 00:28:05 GMT  
		Size: 85.7 KB (85713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddce9d90acdd5999ca29966e5d64aa88d176bbe0dce4f28b1fd9a29962536cb`  
		Last Modified: Wed, 14 Oct 2026 00:28:04 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e979475d65dadcbad13f5e562d9bc46d3eb5290f81c7f45ee94f6d9e4b8d3ef5`  
		Last Modified: Wed, 14 Oct 2026 00:28:04 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1743c60aafc30cefe2b1e16b0c9e73e52d9b0d483f4768e898ec8bcae60de9`  
		Last Modified: Wed, 14 Oct 2026 00:28:19 GMT  
		Size: 239.3 MB (239347830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc26eb211cf78bd2005e2df4c752cc771e902a5a4111500639fee8fe73dd4dd8`  
		Last Modified: Wed, 14 Oct 2026 00:28:04 GMT  
		Size: 108.5 KB (108526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3fde1bee777bbcd738889616ee32f128699913c3c4cef1e28d6d9aed4bd3d7`  
		Last Modified: Wed, 14 Oct 2026 00:28:04 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
