## `eclipse-temurin:17-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:1bfddcafc3acd0d63e9e01d21c932519e837678c0508ca9a2e087641ac3a8f77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `eclipse-temurin:17-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33822; amd64

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
