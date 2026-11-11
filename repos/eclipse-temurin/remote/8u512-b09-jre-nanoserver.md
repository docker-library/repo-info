## `eclipse-temurin:8u512-b09-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:d3bc74fa96cc7bb56efaa68268eaf336cfcebf412940f20180e9cb05bef214bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33822; amd64
	-	windows version 10.0.20348.5870; amd64

### `eclipse-temurin:8u512-b09-jre-nanoserver` - windows version 10.0.26100.33822; amd64

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

### `eclipse-temurin:8u512-b09-jre-nanoserver` - windows version 10.0.20348.5870; amd64

```console
$ docker pull eclipse-temurin@sha256:959b503a66b040dafb8d8457322501ee7f4b5ec15e184c9b63e95cac13ac6002
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.5 MB (166460860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e3dd2cd03af3af2628734b793ed57f2df23694a46cb4a74c50f2cdd3f262461`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:43:42 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:43:43 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Wed, 11 Nov 2026 22:43:43 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 11 Nov 2026 22:43:43 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:43:48 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:43:48 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:43:51 GMT
COPY dir:1d5679204bdcff12726574c811d8243612c83f060c92df7e82dd41929c00caa1 in C:\openjdk-8 
# Wed, 11 Nov 2026 22:43:54 GMT
RUN echo Verifying install ...     && echo java -version && java -version     && echo Complete.
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
	-	`sha256:2f8e931869dc6a99a3e04ba4ac2ae647d0395704af1e6cc0d26f88bfd4395ec4`  
		Last Modified: Wed, 11 Nov 2026 22:43:59 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60480160c6b02c812fedc8ffeaa43f6682bf49fe78e275042c74581010ba8b86`  
		Last Modified: Wed, 11 Nov 2026 22:43:59 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0849300a2b14d2e9f4e09d8130f05ff6c9ee37369b82ad9109b9c69bdd819fba`  
		Last Modified: Wed, 11 Nov 2026 22:43:58 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ec151dba9b35635ab147a63c79c16325db83f68884dd80725e80a64295e35a`  
		Last Modified: Wed, 11 Nov 2026 22:43:58 GMT  
		Size: 84.4 KB (84373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6599de559180e29ad65ed83c26f581f56588f805aa7ee82729330c0e0209017`  
		Last Modified: Wed, 11 Nov 2026 22:43:58 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d28f23ac258f7ba3c0b3a440d15e3d790ce4ca7acf3484121bdfcb0e5cb593a`  
		Last Modified: Wed, 11 Nov 2026 22:44:01 GMT  
		Size: 40.0 MB (39999247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1db8b6262a2a561c772ccddffc2cadc194b66050f66553b138725bd227dfaf`  
		Last Modified: Wed, 11 Nov 2026 22:43:58 GMT  
		Size: 86.9 KB (86885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
