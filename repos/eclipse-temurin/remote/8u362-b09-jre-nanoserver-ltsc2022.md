## `eclipse-temurin:8u362-b09-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:e004c5504a76961029aa82223a4bdca7713335c7dabd4b01f5d71f74096bd084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.1487; amd64

### `eclipse-temurin:8u362-b09-jre-nanoserver-ltsc2022` - windows version 10.0.20348.1487; amd64

```console
$ docker pull eclipse-temurin@sha256:d87cf58750007d3d0fae548c997872f1ab9539f89fe8eea54b5eb3f5ab84ed85
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.2 MB (162181869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aadcdc00ed8dd0004d416edbfdf9e91efd7012e7df6236079d3f9a1b9acab5a1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Fri, 06 Jan 2023 23:36:49 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 02:19:48 GMT
SHELL [cmd /s /c]
# Wed, 25 Jan 2023 19:36:41 GMT
ENV JAVA_VERSION=jdk8u362-b09
# Wed, 25 Jan 2023 19:36:42 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 25 Jan 2023 19:36:43 GMT
USER ContainerAdministrator
# Wed, 25 Jan 2023 19:37:01 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 25 Jan 2023 19:37:01 GMT
USER ContainerUser
# Wed, 25 Jan 2023 19:38:25 GMT
COPY dir:dcd2674e91fb412db18990a7004f7a484148b702bd6de08f5ae3a3d6f6a3f6f8 in C:\openjdk-8 
# Wed, 25 Jan 2023 19:38:44 GMT
RUN echo Verifying install ...     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:83e9437e818022c1c28f0e07002dd46995c8614e62b9366138fa23b94f43d9ad`  
		Last Modified: Thu, 12 Jan 2023 02:51:06 GMT  
		Size: 122.1 MB (122099566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbebbf572ebe7984b715b8dfe99bc1273403a831c0079b95afa12162b7266f16`  
		Last Modified: Thu, 12 Jan 2023 02:50:38 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97ab9c3d89c94bcdd3a9f3ea6fa887a81528bbc896d64630e7e4a3d3ecb5d41`  
		Last Modified: Wed, 25 Jan 2023 19:49:18 GMT  
		Size: 1.1 KB (1139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e22b42465b215575fb4efa00bcc80b5d4b9e2d1ba14f1b5abc8555e246571f0`  
		Last Modified: Wed, 25 Jan 2023 19:49:18 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1598438261eb439df8fb74c6baab3dcc5c2ab56ffc1001823aaa8939e4cb7c9f`  
		Last Modified: Wed, 25 Jan 2023 19:49:16 GMT  
		Size: 1.1 KB (1130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0826278f368221a550932d158823438a582e368eba615841b5db54de1acb97c`  
		Last Modified: Wed, 25 Jan 2023 19:49:16 GMT  
		Size: 87.7 KB (87678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701fd830b62dbc2889981922bbd82573c23efb0257bfd6faf81e928edf86bc78`  
		Last Modified: Wed, 25 Jan 2023 19:49:16 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1339e057f1cb051c26c0dd0c9828e2a3d98a347c5bc0ed1d5d9876503908e33`  
		Last Modified: Wed, 25 Jan 2023 19:49:50 GMT  
		Size: 39.9 MB (39930446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01643769edb08154f3e09c3615c28903c1dd5ce2d47ff92641b2721434545b2`  
		Last Modified: Wed, 25 Jan 2023 19:49:41 GMT  
		Size: 58.4 KB (58432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
