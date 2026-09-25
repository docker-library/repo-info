## `eclipse-temurin:25-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:9f4266d25e0ff1ffc7e8063ac0b7700975b96c9f1b3b33fb528a9260daee17ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `eclipse-temurin:25-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:1cbc1745479fbff89b6fc050023247ca423cc658e0569a81f1b6f0f98773da7d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256468275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58396f14d0f88cd4718bbd6db63880e2bb98d401d3228594636c4fb8d0962cf9`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Fri, 25 Sep 2026 22:56:42 GMT
SHELL [cmd /s /c]
# Fri, 25 Sep 2026 22:56:43 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 25 Sep 2026 22:56:43 GMT
ENV JAVA_HOME=C:\openjdk-25
# Fri, 25 Sep 2026 22:56:43 GMT
USER ContainerAdministrator
# Fri, 25 Sep 2026 22:56:48 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 25 Sep 2026 22:56:49 GMT
USER ContainerUser
# Fri, 25 Sep 2026 22:57:05 GMT
COPY dir:e6fb6e72dfa50a86a9603b5161e44fc0821c11b0c9bbfbf0f54596221e079f55 in C:\openjdk-25 
# Fri, 25 Sep 2026 22:57:09 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad09115c97d1e5a989448be2b02c5c3ef306c0664bdcaa6cc4cef23e0dce5f80`  
		Last Modified: Fri, 25 Sep 2026 22:57:15 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf838d5fdaf1a3f979b64d0e963067a8dec93b50a3cc6e9be1e7de1b3ac9d9c`  
		Last Modified: Fri, 25 Sep 2026 22:57:14 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e81b756b6e65540ac328399be511b25cdab47e307f160d040c9c6a24218802`  
		Last Modified: Fri, 25 Sep 2026 22:57:15 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3604b7466be3c35a09ce6adc5ba3ea6aa8498ed5ecb0ded7df2f47dd13210d05`  
		Last Modified: Fri, 25 Sep 2026 22:57:13 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f5deba90ea6b5176710a6aa1ebfea3f31bd85b79d9a97158965cb3c203bf97`  
		Last Modified: Fri, 25 Sep 2026 22:57:13 GMT  
		Size: 71.4 KB (71438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b12b7b53e6d7e373d13cc4136200aa14db3f69c2c667d414241a216e4c5e60`  
		Last Modified: Fri, 25 Sep 2026 22:57:13 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54908675ba1d14af3818c6853fcb3fc595c8ebc0cfb2de7b3e38e4ea75d1b86`  
		Last Modified: Fri, 25 Sep 2026 22:57:20 GMT  
		Size: 58.6 MB (58629526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b26dd7bbf55437dafeeb96153b554d93626f6ebb028954fe03463c316cb08c`  
		Last Modified: Fri, 25 Sep 2026 22:57:13 GMT  
		Size: 111.6 KB (111602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
