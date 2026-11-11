## `eclipse-temurin:25-jdk-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:63db3bdd811f77616f1a53473bb9b58ffe5c4ee5753e90af7bd25d557d6317c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `eclipse-temurin:25-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull eclipse-temurin@sha256:7f5200d8cab5a2257dcf148d19162c3db64ebd000a91a9577a316fd1fba2e582
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 MB (264632411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7ffa1ce744faa3aeb0c8fb741b2f29b3fdd5cf1941994b1faffcfaeaec5f780`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:43:51 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:44:28 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Wed, 11 Nov 2026 22:44:29 GMT
ENV JAVA_HOME=C:\openjdk-25
# Wed, 11 Nov 2026 22:44:29 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:44:31 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:44:31 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:44:39 GMT
COPY dir:9c7b029cf2183851d3f474a2d1015eb9053ddae126bc2cf1988c88dca705e51e in C:\openjdk-25 
# Wed, 11 Nov 2026 22:44:43 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 11 Nov 2026 22:44:43 GMT
CMD ["jshell"]
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
	-	`sha256:3c696d6db62fe0ef97945744dcfe36aef12b79553d0dc5cf194a1c64aed9a052`  
		Last Modified: Wed, 11 Nov 2026 22:44:49 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6333d6d460e1f354554ab29d9f2ac860ce8a0dde24bd829430d420395f7465`  
		Last Modified: Wed, 11 Nov 2026 22:44:49 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979ef8b66d08db9285d941ed5bab2258441c9059873211d4fd80bac0a40d6227`  
		Last Modified: Wed, 11 Nov 2026 22:44:49 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e24f2d3078a34715f36743b9ba405722401dfa6c6eaacd9e54308c76278c65a`  
		Last Modified: Wed, 11 Nov 2026 22:44:47 GMT  
		Size: 78.3 KB (78300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4e9885701b2dad4e15db763babbf7a5a881921f03968e28ebdd752476219bd`  
		Last Modified: Wed, 11 Nov 2026 22:44:47 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada6c7a962451248c0209b412110d5c249fe4d8d9c07a5bcef90fdd88c647acb`  
		Last Modified: Wed, 11 Nov 2026 22:44:58 GMT  
		Size: 138.2 MB (138155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c2bcc34d7004db71718f36b7f182ebde431da313959e5f9ae965676de5552f`  
		Last Modified: Wed, 11 Nov 2026 22:44:47 GMT  
		Size: 107.6 KB (107607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7197421a100bf000119f87d5d8a51edb3a5a1ba8add51be234b4fd60447635`  
		Last Modified: Wed, 11 Nov 2026 22:44:47 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
