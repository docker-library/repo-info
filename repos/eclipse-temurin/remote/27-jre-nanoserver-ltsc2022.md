## `eclipse-temurin:27-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:67078a969a1308966b9a051126efc0280618b09db386485790d5eb8d39e2290d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `eclipse-temurin:27-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull eclipse-temurin@sha256:b3444260416da21062011c409fd82e44c5c962248d32c9005c1a9adda27178c8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.8 MB (185780639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2239d052f4f8ad73d065a103dd77a712e389458ef81587a8fbc311087736afd`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:43:42 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:44:55 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Wed, 11 Nov 2026 22:44:55 GMT
ENV JAVA_HOME=C:\openjdk-27
# Wed, 11 Nov 2026 22:44:56 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:44:58 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:44:58 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:45:02 GMT
COPY dir:1d0776a6b2568151a4602a459dbb61f4638ffe7f56044e9eca31eeb2125da56f in C:\openjdk-27 
# Wed, 11 Nov 2026 22:45:05 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d8a22be6069c48b9bf50bf3fed614d1ace8dc4dc32b57f1182f4b9d8f61ecf7`  
		Last Modified: Wed, 11 Nov 2026 22:43:59 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57daa6c528368aa44c4a0c50f1a217e25c147e8e8e4d1d349b95e5c18486455`  
		Last Modified: Wed, 11 Nov 2026 22:45:11 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2919b524a6fff544fdd601ff42138b183f2c27a6c129287a62b76049ce59f1c7`  
		Last Modified: Wed, 11 Nov 2026 22:45:11 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26556ebdc895b2eef77e185d7bcd0f1fb6c801f1c838884b3f8a619881f0616e`  
		Last Modified: Wed, 11 Nov 2026 22:45:09 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4acae7175a100e085f7a0bd9a01e0352ed1c57468f9af16f502e2dd80393c5c`  
		Last Modified: Wed, 11 Nov 2026 22:45:09 GMT  
		Size: 77.5 KB (77461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f2111812788a8af58d00a6c9af27e59e71b22cc89b4f9cc80ae457393d6193`  
		Last Modified: Wed, 11 Nov 2026 22:45:09 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701a5a83ef556345c4322b5fcdb94a2554f589fde22a031a83a3cb47de524c25`  
		Last Modified: Wed, 11 Nov 2026 22:45:17 GMT  
		Size: 59.3 MB (59321943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e185ef54b2ded8b92d3a10c44f74cbdf0f5ce4f99b03449f28bca7f25518e8d`  
		Last Modified: Wed, 11 Nov 2026 22:45:09 GMT  
		Size: 90.9 KB (90920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
