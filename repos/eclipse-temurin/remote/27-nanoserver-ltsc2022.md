## `eclipse-temurin:27-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:8b71b755aaf8ae567994d916fe7505360e70fd218159f8d36aeed4b98dec086c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `eclipse-temurin:27-nanoserver-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull eclipse-temurin@sha256:f95561af8da70467f98983f8ebf7168fe39909223878f7dba5fff97a17c00703
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265703487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb1dcb388e39f61bd03143fd70037be4cb1410c17627897ae63b12f93cdfbeb3`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:18:24 GMT
SHELL [cmd /s /c]
# Wed, 14 Oct 2026 00:20:52 GMT
ENV JAVA_VERSION=jdk-27+35
# Wed, 14 Oct 2026 00:20:52 GMT
ENV JAVA_HOME=C:\openjdk-27
# Wed, 14 Oct 2026 00:20:53 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:20:55 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 14 Oct 2026 00:20:55 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:21:18 GMT
COPY dir:a598b5fc3a93568869369eaabdea66c3c2b0ecde9417552cff3c1df8963b51f7 in C:\openjdk-27 
# Wed, 14 Oct 2026 00:21:22 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 14 Oct 2026 00:21:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fd6a1b6f3ff80e2df31e6dcd4c68da49d79c93834f2d34f03f2009647a2a52`  
		Last Modified: Wed, 14 Oct 2026 00:18:56 GMT  
		Size: 1.0 KB (1029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dbe4c6a00421e575ca2d1fdc8093f9f7ba323f66bf54cbe4461185c677686d9`  
		Last Modified: Wed, 14 Oct 2026 00:21:28 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bd03ac8f58257732a344d5ad32c1e79261afff7ca0ac129271c44f5e35b8a4`  
		Last Modified: Wed, 14 Oct 2026 00:21:28 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19567e9deaf31aef4e6a0a03a3d3ead96709271c43cf7b0f94e9ee3c5dc3b848`  
		Last Modified: Wed, 14 Oct 2026 00:21:27 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c2edef205012da49bb63930747e8d2bd7751711765ffabf458bed10f595740`  
		Last Modified: Wed, 14 Oct 2026 00:21:26 GMT  
		Size: 77.3 KB (77273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56cad321122338b3e06272876873ea76524506554fa10d5f3448d32cbe15a904`  
		Last Modified: Wed, 14 Oct 2026 00:21:26 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f8876cf212088660f19d0737e353c39ef12e33bfc5458ce8b557f2ed36df11`  
		Last Modified: Wed, 14 Oct 2026 00:21:37 GMT  
		Size: 139.7 MB (139716305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd33bb28f74c6a5746a3828d807e8ed5f57f68e12f884abe6b6761d2f9a34f`  
		Last Modified: Wed, 14 Oct 2026 00:21:26 GMT  
		Size: 107.6 KB (107566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2e54c9dd9c3711e4e0e2a5ba43823b1dfc8ea9d27c4ca402cb9d47136f8025`  
		Last Modified: Wed, 14 Oct 2026 00:21:26 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
