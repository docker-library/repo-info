## `eclipse-temurin:17-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:da0a9db5737b56a9bc4b20d3a82a116ddbdb3bb0ba4a5e40b2d271b0306b8ec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:17-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:78649f7de3a2b69595bdb49fa512b49392931ebacc650a87f86814e67d4cd8ff
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.7 MB (168650809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5e3b87469dc5b47459523c1ecce8464a84734aec8637bea942747c56bb16dcc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Fri, 25 Sep 2026 23:14:01 GMT
SHELL [cmd /s /c]
# Fri, 25 Sep 2026 23:15:23 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 23:15:23 GMT
ENV JAVA_HOME=C:\openjdk-17
# Fri, 25 Sep 2026 23:15:23 GMT
USER ContainerAdministrator
# Fri, 25 Sep 2026 23:15:25 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 25 Sep 2026 23:15:25 GMT
USER ContainerUser
# Fri, 25 Sep 2026 23:15:47 GMT
COPY dir:7fd41a3f65b8842d11d246cf9e17233e030c47f44036c1610eefa6c2f73af9e7 in C:\openjdk-17 
# Fri, 25 Sep 2026 23:15:49 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13d8d1710806d7ca2f602406cdf5b8435b4b3cd1558d8c9b11949960cf3f6c10`  
		Last Modified: Fri, 25 Sep 2026 23:14:49 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d19e68cd6279865fd16ce97e7bf15b7d9ea281f35ecc251691e75f4a60527f`  
		Last Modified: Fri, 25 Sep 2026 23:15:55 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488d8c72e0f21810e19b07bcf741ea3e4d0a98883d0fe6c093eb89df7d964304`  
		Last Modified: Fri, 25 Sep 2026 23:15:55 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4875854f0f1e10dd79a4b84e3c7ec34d2cb4bc8f7d92a833a8d461cf81cf90`  
		Last Modified: Fri, 25 Sep 2026 23:15:53 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afe625d8aa979a12f12782314a968557ae84b16bff2f47f0d8bbaf096163216`  
		Last Modified: Fri, 25 Sep 2026 23:15:53 GMT  
		Size: 77.2 KB (77231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e89fe6b5adbe58f03fa6a7d6263856b2b9eb4094aef3854f6e79a26f2a0e44c`  
		Last Modified: Fri, 25 Sep 2026 23:15:53 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27441a1ed24bf8e2fa74bb02e37b79417d7c10733c9439b23a6ed9c83c3493ff`  
		Last Modified: Fri, 25 Sep 2026 23:15:59 GMT  
		Size: 43.8 MB (43840303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13385a1b2b9e9fd7e0f8bed361d0a138413e01156365b8ac8a6936b51c32a3f4`  
		Last Modified: Fri, 25 Sep 2026 23:15:53 GMT  
		Size: 90.5 KB (90521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
