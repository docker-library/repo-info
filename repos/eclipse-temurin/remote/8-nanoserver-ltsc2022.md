## `eclipse-temurin:8-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:5b34c2123f9b0c7b125efedd012597c12f74112b1282c45a5d86a4c70a7dcfee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:8-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:ab4f9ee9bc294516b7eea458c35771741fa9b1e5e36facd07b3bae43b1863382
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.7 MB (226731402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95a7c17213b0a0a091a8e9faca8c39549a9247686a658dd3cd95fe8b78872cc4`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:19:54 GMT
SHELL [cmd /s /c]
# Wed, 09 Sep 2026 23:19:55 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 09 Sep 2026 23:19:55 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 09 Sep 2026 23:19:56 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:19:58 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 09 Sep 2026 23:19:58 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:20:32 GMT
COPY dir:0a490e4334c64d82455cb318fdd0eca19d90157486e844899949930d816ec5a5 in C:\openjdk-8 
# Wed, 09 Sep 2026 23:20:34 GMT
RUN echo Verifying install ...     && echo javac -version && javac -version     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f41f13db96ed47ab59a1acb3cb1962aab56b9629768aa120e57d2f8053204b`  
		Last Modified: Wed, 09 Sep 2026 23:20:43 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e449683b97b585a55333004ec5d91d97004f52d165da1530a828b176e8f5d9`  
		Last Modified: Wed, 09 Sep 2026 23:20:42 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa99b36b9b791f65ffc3876dee2843fc519812a24ea3171d3b644a216805390`  
		Last Modified: Wed, 09 Sep 2026 23:20:42 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12e279dbdf7759dab758747e62fa959a1b810e4324c6172754bb1aaaee5428c`  
		Last Modified: Wed, 09 Sep 2026 23:20:41 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e12a7d713952528805630588fed9b1ba1e5a023d7896ed2546993f021e9f40`  
		Last Modified: Wed, 09 Sep 2026 23:20:41 GMT  
		Size: 75.4 KB (75436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2196dcf16001f65ff1d3a74e63306c0cba0a938fe61be1177f27dc6bac12d64e`  
		Last Modified: Wed, 09 Sep 2026 23:20:41 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b28f0d830a4730763ae6531b9f57d04ebf3357d72604954cf853b01f93c86c`  
		Last Modified: Wed, 09 Sep 2026 23:20:47 GMT  
		Size: 101.9 MB (101912643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f361abcc789701c71ca535c3018820f4c2d63a72a11bcce6c51e983fad90d47a`  
		Last Modified: Wed, 09 Sep 2026 23:20:41 GMT  
		Size: 100.6 KB (100585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
