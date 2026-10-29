## `eclipse-temurin:21-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:ed1cce045d3d66ec58b0b7883f7e6671d46203ba50a96e0b7a0a7f90b626e3ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:21-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:f911573fe3c9badf127d370d2f2e23a853e1ffc64cb67cf4f92e05f53429b214
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.3 MB (175292879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40a1fbe3c343f292988bdff0351b95702953d5a5a0bc3b0083cccbfd1cedf346`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Thu, 29 Oct 2026 19:48:12 GMT
SHELL [cmd /s /c]
# Thu, 29 Oct 2026 19:48:13 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:48:13 GMT
ENV JAVA_HOME=C:\openjdk-21
# Thu, 29 Oct 2026 19:48:14 GMT
USER ContainerAdministrator
# Thu, 29 Oct 2026 19:48:24 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Thu, 29 Oct 2026 19:48:24 GMT
USER ContainerUser
# Thu, 29 Oct 2026 19:48:46 GMT
COPY dir:0a790f654228b0909cb063fcccd1cf031298e492a3665cc86d7fcfc2d95ab288 in C:\openjdk-21 
# Thu, 29 Oct 2026 19:48:51 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1390048678f9657b4636eb43fa60f4121fbd7919e0a1ec22b9454e227fa54d8`  
		Last Modified: Thu, 29 Oct 2026 19:48:56 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d028e1b1b83b4dde14b08940da1054172c230fe6040943cdd4a7932044bf91`  
		Last Modified: Thu, 29 Oct 2026 19:48:56 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8431339891984e61465aa26dc68d7060fb3c093a6892aca2645458b029b54a0a`  
		Last Modified: Thu, 29 Oct 2026 19:48:56 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87752e6d273901e5a6e73a052375ff8f9f09cf1565865d9d6a5badf527aec304`  
		Last Modified: Thu, 29 Oct 2026 19:48:55 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f30c53aa4b70f0a061dbdfcd05f69439298ee1c0cb52c9287a984f943cf9484`  
		Last Modified: Thu, 29 Oct 2026 19:48:55 GMT  
		Size: 87.6 KB (87573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d0ce9ade8d568ad96001cc47e82e9c08f92da8445445e0b0a8cba62c5932d0`  
		Last Modified: Thu, 29 Oct 2026 19:48:55 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73df3494f5e6b18406e5f3e52d4c0674e438fc5239e78819f86cc77873a4273`  
		Last Modified: Thu, 29 Oct 2026 19:49:00 GMT  
		Size: 49.2 MB (49179732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c6db191a9c94b8283a002fedbb8e214b0d90bfe98cfc67526ce865b1bd9462`  
		Last Modified: Thu, 29 Oct 2026 19:48:55 GMT  
		Size: 93.6 KB (93602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
