## `eclipse-temurin:21-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:2030bec391fd5137328f53e50d9f3f4368ef7f2b40d01446c238f66de0d88e5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `eclipse-temurin:21-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull eclipse-temurin@sha256:4aa1874c23ef9f0d2d9b6fcf4878eb618fb643ed45eee96efedff0d2c0a93410
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.1 MB (249135558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:305a158c999796455e9ede476a8f5784bf9b1a7303ae34d88912ee49329d2ec6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 00:37:58 GMT
RUN Apply image 10.0.26100.33650
# Wed, 14 Oct 2026 00:17:57 GMT
SHELL [cmd /s /c]
# Wed, 14 Oct 2026 00:17:57 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Wed, 14 Oct 2026 00:17:58 GMT
ENV JAVA_HOME=C:\openjdk-21
# Wed, 14 Oct 2026 00:17:58 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:18:04 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 14 Oct 2026 00:18:04 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:18:14 GMT
COPY dir:430c09910c856671a7a4bc2d7f37f53b3c92c6e330587a4d530316a31249e48c in C:\openjdk-21 
# Wed, 14 Oct 2026 00:18:19 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:fc75d5d958abc5a2294f36186f7c93790e84f49e7d31c08dfc8446cb7703df87`  
		Last Modified: Tue, 13 Oct 2026 22:26:06 GMT  
		Size: 199.9 MB (199871136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a61f1004ed0441227f77c195822ae2c4189dbdc7037ad2ef3ca5b719d03c6c2`  
		Last Modified: Wed, 14 Oct 2026 00:18:24 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1cb7e77a88c4319d08ec69291fee30e48ead0d8ca812dc9f614f7599cf2677`  
		Last Modified: Wed, 14 Oct 2026 00:18:24 GMT  
		Size: 1.1 KB (1051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b9efb7f7addd131c1eafa180d8adbb383460cdedbcde097b08aad1b33a81179`  
		Last Modified: Wed, 14 Oct 2026 00:18:24 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9085d15ee8c96641fdbb4a0f4af9469d08520e5a6606e078e6fc2dd4dfb3782b`  
		Last Modified: Wed, 14 Oct 2026 00:18:23 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4282a1f7dc19bb135ef8a52813d9e6024a12b0fa6ee6e93b4afdfd6246df1a8d`  
		Last Modified: Wed, 14 Oct 2026 00:18:23 GMT  
		Size: 70.7 KB (70673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d822aaab5611ee1002d5b89f4fce062de739afd440ec55482c5e1f4d6f29a86`  
		Last Modified: Wed, 14 Oct 2026 00:18:23 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33aea4caae44a997855772c393b4a61d7e06c4bd87b854445aa055a305972fcd`  
		Last Modified: Wed, 14 Oct 2026 00:18:29 GMT  
		Size: 49.1 MB (49085730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a83bc4bfa6a920ca5621c5352ccc922ce1edff1ca65632ead0a58107559e4f6e`  
		Last Modified: Wed, 14 Oct 2026 00:18:23 GMT  
		Size: 102.8 KB (102827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
