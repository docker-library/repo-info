## `eclipse-temurin:21-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:64f6cf9213c9f5ba1a77d5f9e1846befef70515c60fb2ed8489589eb9860538e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `eclipse-temurin:21-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull eclipse-temurin@sha256:f920199a637396ee3698155b2f2237e8321f5693eb91ffbfc02fbb5c40ea47f5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.6 MB (249586382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11195af8aa3e385272e963b01d79005eaab336abec4c923ed483eccd0a277473`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 13:08:00 GMT
RUN Apply image 10.0.26100.33822
# Wed, 11 Nov 2026 22:46:38 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:46:39 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 22:46:39 GMT
ENV JAVA_HOME=C:\openjdk-21
# Wed, 11 Nov 2026 22:46:40 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:46:42 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:46:42 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:46:59 GMT
COPY dir:0a790f654228b0909cb063fcccd1cf031298e492a3665cc86d7fcfc2d95ab288 in C:\openjdk-21 
# Wed, 11 Nov 2026 22:47:02 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:8395a5062b63680acee7661df668d9bf81cca0fdec76ab1b29afd6ab290bf2c0`  
		Last Modified: Tue, 10 Nov 2026 23:37:33 GMT  
		Size: 200.2 MB (200242324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c138abe35d4545438627cf8779593ae31341e91ec4a929e4f46baa543eb220e2`  
		Last Modified: Wed, 11 Nov 2026 22:47:08 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9710a4b88a668664e4dfa7ccff0df66b9a2db8789e9174c9318f2f92ac1ab3f`  
		Last Modified: Wed, 11 Nov 2026 22:47:08 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308d8df4ed3cc7e4cec9b75034687485663ee6b2577575093dbd4db2ff4c2379`  
		Last Modified: Wed, 11 Nov 2026 22:47:08 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd60e4a414180c31f70d24a1c6042c43171e4f51aacd4d8cb0a31668af27eff`  
		Last Modified: Wed, 11 Nov 2026 22:47:06 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bebdfd7d43ead79ddba3b77be89f862e10d36a0f2c4661878b132db32a69c57`  
		Last Modified: Wed, 11 Nov 2026 22:47:06 GMT  
		Size: 73.5 KB (73475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9f0810429831e396dbdee079c168cb7398802fe75baee437b2139936dd77b6`  
		Last Modified: Wed, 11 Nov 2026 22:47:06 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e65b9a0e95e51af90a41a9d3d5aa3b6793d893e1b91b10fbd6044fa22b0b4511`  
		Last Modified: Wed, 11 Nov 2026 22:47:12 GMT  
		Size: 49.2 MB (49179731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6ed11daded3ac8f66f848783993bbd9f8b8376f08667e214cb456c85bacb13`  
		Last Modified: Wed, 11 Nov 2026 22:47:06 GMT  
		Size: 85.7 KB (85669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
