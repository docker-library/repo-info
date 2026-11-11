## `eclipse-temurin:17-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:c7db45c670fdc0f38f1a742a2902a93ab1d949865cedd0c2af4d2c62a1c86082
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33822; amd64
	-	windows version 10.0.20348.5870; amd64

### `eclipse-temurin:17-jre-nanoserver` - windows version 10.0.26100.33822; amd64

```console
$ docker pull eclipse-temurin@sha256:59cc823dc9a44054b0fbc34e0182ce2d20c329e9a5b3c66d0878ca565e120532
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.4 MB (244357461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:203a12909d4724d911cd8694f42a028bff4445a2b4948f6824cb6823f6d57ca3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 13:08:00 GMT
RUN Apply image 10.0.26100.33822
# Wed, 11 Nov 2026 22:46:34 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:46:35 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 22:46:35 GMT
ENV JAVA_HOME=C:\openjdk-17
# Wed, 11 Nov 2026 22:46:35 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:46:41 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:46:42 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:46:52 GMT
COPY dir:fe16e239a1cfb8e15b42e2adfbd36810f92b5ff8a1df876112d880bf633c6974 in C:\openjdk-17 
# Wed, 11 Nov 2026 22:46:56 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:8395a5062b63680acee7661df668d9bf81cca0fdec76ab1b29afd6ab290bf2c0`  
		Last Modified: Tue, 10 Nov 2026 23:37:33 GMT  
		Size: 200.2 MB (200242324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894a9ba90ce4f2eec9950e57b07e9c70dd11e83b283c54f7a4f51ddf578a89d2`  
		Last Modified: Wed, 11 Nov 2026 22:47:02 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a7fc1c80b848d1c93e237d6d79e78ffe30750c1624e0c51ec340c55949299a1`  
		Last Modified: Wed, 11 Nov 2026 22:47:02 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c725d52d351564674a4db96e245ce63036d52b181bf147c36c52e2b5fa76f1f6`  
		Last Modified: Wed, 11 Nov 2026 22:47:02 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147c978e456b65ea1afbf26c232814a7628cdd70f7fa8d492c22f6c5f1af5f9c`  
		Last Modified: Wed, 11 Nov 2026 22:47:00 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783dee5a685234423b6f047d4657ad5c96be8fc29db49562cebafd6e2523e490`  
		Last Modified: Wed, 11 Nov 2026 22:47:00 GMT  
		Size: 72.0 KB (71982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9937663319a2187e18b9b33fb9cfb8603eb47d3555fceac45b8cd873391dd3`  
		Last Modified: Wed, 11 Nov 2026 22:47:00 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce85c06f2235950d3b7609e866acd09d5d863a5b3103b41df260fcd526726a2a`  
		Last Modified: Wed, 11 Nov 2026 22:47:05 GMT  
		Size: 43.9 MB (43926100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7bfa827e7f9c4b4c96c291632fa0a3dae863ee09de7ab313db45ecb72c0d15`  
		Last Modified: Wed, 11 Nov 2026 22:47:00 GMT  
		Size: 111.9 KB (111886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:17-jre-nanoserver` - windows version 10.0.20348.5870; amd64

```console
$ docker pull eclipse-temurin@sha256:a21301a5441cc53e8b415665f357e232aa8b70d09f1c87308efffbebe0e1a35b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.4 MB (170384263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c734eed63720d9e18aa6e9408a7091c9bab8d696db0b1dbf31c7500dad590ed5`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:43:51 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:43:51 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 22:43:52 GMT
ENV JAVA_HOME=C:\openjdk-17
# Wed, 11 Nov 2026 22:43:52 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:43:54 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:43:54 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:44:00 GMT
COPY dir:fe16e239a1cfb8e15b42e2adfbd36810f92b5ff8a1df876112d880bf633c6974 in C:\openjdk-17 
# Wed, 11 Nov 2026 22:44:03 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134996ef170d7adcae77d0b44e656f113793f04747a935c8da35b78907cd06b1`  
		Last Modified: Wed, 11 Nov 2026 22:44:08 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97dcf302c11cb4dfab734659ccad327d35cb6ed15389488b2411071fe7c0bc23`  
		Last Modified: Wed, 11 Nov 2026 22:44:08 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39521f1cb8915c9d923022fac837a1874af556c36f934db59e720dda4174d3b9`  
		Last Modified: Wed, 11 Nov 2026 22:44:08 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b657ec3acc4589a2e39659cfd89c28a18b4c8ec279e7c2d61e6cb7b4cad25c`  
		Last Modified: Wed, 11 Nov 2026 22:44:07 GMT  
		Size: 1.1 KB (1085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ecc102fc02f18bdc72d5284260826b0ce416b688180709d3492b1013fcf5f`  
		Last Modified: Wed, 11 Nov 2026 22:44:07 GMT  
		Size: 77.2 KB (77199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984a56af1742d6700bf59138351eb13c3d337a365b1cf25ccf993ba26a279c66`  
		Last Modified: Wed, 11 Nov 2026 22:44:07 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39f2551d23aa3aaa1dd009199e07ca52e8771bf9b3458e02fc32487bc0feb10`  
		Last Modified: Wed, 11 Nov 2026 22:44:12 GMT  
		Size: 43.9 MB (43926116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4419993933714010c9eb6694b4a40d4e28632b1903d160c4ad6f6df9255d0125`  
		Last Modified: Wed, 11 Nov 2026 22:44:07 GMT  
		Size: 90.6 KB (90619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
