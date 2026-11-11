## `eclipse-temurin:8u512-b09-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:96f71930f4caea63be2a79135e5dc14d0cce6e26aa0f5b171391eeca9e77ed0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `eclipse-temurin:8u512-b09-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull eclipse-temurin@sha256:9cb148cf255aa0ed41171cd47e811176eabc39d71690e1dd48d201dcaf5d1a13
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240431284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0866c3b7e63877bd9ccfb4d25140e613d75aa1719e95b22146f05c910e0f14e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 13:08:00 GMT
RUN Apply image 10.0.26100.33822
# Wed, 11 Nov 2026 22:45:52 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:45:53 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Wed, 11 Nov 2026 22:45:54 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 11 Nov 2026 22:45:54 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:46:01 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:46:01 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:46:13 GMT
COPY dir:1d5679204bdcff12726574c811d8243612c83f060c92df7e82dd41929c00caa1 in C:\openjdk-8 
# Wed, 11 Nov 2026 22:46:18 GMT
RUN echo Verifying install ...     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:8395a5062b63680acee7661df668d9bf81cca0fdec76ab1b29afd6ab290bf2c0`  
		Last Modified: Tue, 10 Nov 2026 23:37:33 GMT  
		Size: 200.2 MB (200242324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a15bf2f2e4766a96d23b53bbfb3974074b7fae9fcaab2fc124c81d3059ef86`  
		Last Modified: Wed, 11 Nov 2026 22:46:24 GMT  
		Size: 1.1 KB (1097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa547b2c100e2cae21fba2eee76adb489f47194965c25ae3373322427fd4637`  
		Last Modified: Wed, 11 Nov 2026 22:46:24 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f08a6cfdc6c53d65cc8567865abfddfeb5306d892aa1267f7d2e8ecc636956`  
		Last Modified: Wed, 11 Nov 2026 22:46:24 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea080031c3ec1f84d18c683921ea2c72581d7247389abd4d97d163d129110f3`  
		Last Modified: Wed, 11 Nov 2026 22:46:22 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f999eb6b4df148eb914b69bd6e2af8a8b707e6c41978c4ed3540d15a4a90c2`  
		Last Modified: Wed, 11 Nov 2026 22:46:22 GMT  
		Size: 71.8 KB (71790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edf6f06d3dfc347a775f9c6f901912b08f82a4c4a3706c500cc27a21b186120`  
		Last Modified: Wed, 11 Nov 2026 22:46:22 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e87cacb4d86cddba7fb5b0ee437b49d4bdff6749bd8f845c6a6301765e3cbbc`  
		Last Modified: Wed, 11 Nov 2026 22:46:26 GMT  
		Size: 40.0 MB (39999286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd1381525fb2bdd4c635d513fe27077d28b64b55c2913ca5ad2b63d72bb6038`  
		Last Modified: Wed, 11 Nov 2026 22:46:22 GMT  
		Size: 112.7 KB (112698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
