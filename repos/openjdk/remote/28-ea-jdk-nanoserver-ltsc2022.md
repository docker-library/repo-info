## `openjdk:28-ea-jdk-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:47e4e1564e8eb77a9fae63eb4475bc5f3fa7252b58919364cc9660421577aa79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `openjdk:28-ea-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull openjdk@sha256:16ecae5cdbe8a0a6a1f4ed90b3fa2b00e690823a73ae95f3b011bbe0e60c6917
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.2 MB (364155124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e512aedc6b25c53f68661fda9a76d166ed1402052d7a1ae6999b14d1dbe7a1b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Fri, 18 Sep 2026 23:49:40 GMT
SHELL [cmd /s /c]
# Fri, 18 Sep 2026 23:49:42 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 18 Sep 2026 23:49:43 GMT
USER ContainerAdministrator
# Fri, 18 Sep 2026 23:49:58 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Fri, 18 Sep 2026 23:49:58 GMT
USER ContainerUser
# Fri, 18 Sep 2026 23:49:59 GMT
ENV JAVA_VERSION=28-ea+16
# Fri, 18 Sep 2026 23:51:37 GMT
COPY dir:51c64424afb4f45f7d86d3317fba018c6781d00e41327c893ad0f784c873179d in C:\openjdk-28 
# Fri, 18 Sep 2026 23:51:46 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Fri, 18 Sep 2026 23:51:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce016d8591c99cbafc62b24b31a6c96d31acf90ab79173453f7170e61737f5bb`  
		Last Modified: Fri, 18 Sep 2026 23:51:57 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793db1d66a8ca3d572060d24fff61445b23e76494f9577e8e17bf889787abd00`  
		Last Modified: Fri, 18 Sep 2026 23:51:57 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdcd93c9f0de3fab133f98221b899003d9b25948a1e87511fdd2d666c4b2dcb7`  
		Last Modified: Fri, 18 Sep 2026 23:51:57 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005a7df75b8133be8b016e3d834bb2224eca6391bbc1a7162eba78344006bbf7`  
		Last Modified: Fri, 18 Sep 2026 23:51:57 GMT  
		Size: 84.1 KB (84079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3cae99f437428a83798648213bdac5ccafe269975d8cc804c6750f7fe55686`  
		Last Modified: Fri, 18 Sep 2026 23:51:55 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7badc56a17d54bc56b3639fde3ed05f54fe1fa6c171e63b4eab5cb9dc7f7ff5`  
		Last Modified: Fri, 18 Sep 2026 23:51:55 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd02f9ca2904474c3856f73380050d34b53451d60b77b5c5f3a58de41d835a45`  
		Last Modified: Fri, 18 Sep 2026 23:52:11 GMT  
		Size: 239.3 MB (239301630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327da3278743a6b022226959d1f3861fad8b37496d5e25036ed13e85ce666723`  
		Last Modified: Fri, 18 Sep 2026 23:51:55 GMT  
		Size: 125.7 KB (125668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ac03ffdc600e03e33c9dcb3cdb0592fc762fadbf5b44c6c8ef9078b9451273`  
		Last Modified: Fri, 18 Sep 2026 23:51:55 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
