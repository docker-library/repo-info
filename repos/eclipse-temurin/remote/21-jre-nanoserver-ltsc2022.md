## `eclipse-temurin:21-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:89d69ba0271396707510e17134a83bb8b281a231364f302095f052835b5b8de4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:21-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:88a835a190586662c10f2d3dd4d43236a9686d633d61e09fd4a3cdb83f6da7b7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173911772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b76a05be264acaa1364b8f841538f7498fc5de72e7ad8c5684ac7c650f0340dd`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:21:05 GMT
SHELL [cmd /s /c]
# Wed, 09 Sep 2026 23:21:59 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 09 Sep 2026 23:22:00 GMT
ENV JAVA_HOME=C:\openjdk-21
# Wed, 09 Sep 2026 23:22:00 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:22:02 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 09 Sep 2026 23:22:02 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:22:06 GMT
COPY dir:7f097d9731ad3c3f64258598b28d2d6a941ac14ae3e6473eb79dbe2c247b7b11 in C:\openjdk-21 
# Wed, 09 Sep 2026 23:22:10 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b2874531c88df1f3a842e90d4915d11093a8baeeb3b7d31d5b1b16aa9c7bbf`  
		Last Modified: Wed, 09 Sep 2026 23:21:27 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9e1b03965e1e42d801cc5a1e4f6742fadae6105555cd3f86cb3a665d02839c`  
		Last Modified: Wed, 09 Sep 2026 23:22:15 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3141249d718802673aa4179e5c3decc807c79e28f16f74036967e1065135b8e5`  
		Last Modified: Wed, 09 Sep 2026 23:22:15 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135a97dce3b496579af876b0d0873ac0fd9d75253fda80c6d99214dad13e4048`  
		Last Modified: Wed, 09 Sep 2026 23:22:13 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b831e1588a12dcb430a5f00c0082d04ade52d47c51d560c44543338f817ee805`  
		Last Modified: Wed, 09 Sep 2026 23:22:13 GMT  
		Size: 86.9 KB (86930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e2145a923c00eaaf82663bf2644b1bba56fd2c9360c6a9efb4a45b4ef61056`  
		Last Modified: Wed, 09 Sep 2026 23:22:13 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f62d488bc99512507c6d8c2fc12662dfc6456e5a4ff2b21f74d2db2064d76d7d`  
		Last Modified: Wed, 09 Sep 2026 23:22:19 GMT  
		Size: 49.1 MB (49083093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbbf12e2b0afb4f1415cddf367218492d5a4d7f88d4a011024463229a8d0b22e`  
		Last Modified: Wed, 09 Sep 2026 23:22:14 GMT  
		Size: 99.0 KB (99044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
