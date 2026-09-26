## `eclipse-temurin:21-jdk-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:57182446c54fb0184266256332035eb48466268d613f487adb1ce9d340b27e18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:21-jdk-nanoserver` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:8d5a2d7e34cf872cc85abc1dae6164e2cae24fccc322a52d9f3599b04dacfbbb
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.7 MB (399714386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1c523c5ffe43edba9f73aaff465b5f37cd686db89560a28b1b409f532997328`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Fri, 25 Sep 2026 22:56:44 GMT
SHELL [cmd /s /c]
# Fri, 25 Sep 2026 22:56:45 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:56:45 GMT
ENV JAVA_HOME=C:\openjdk-21
# Fri, 25 Sep 2026 22:56:46 GMT
USER ContainerAdministrator
# Fri, 25 Sep 2026 22:56:50 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 25 Sep 2026 22:56:50 GMT
USER ContainerUser
# Fri, 25 Sep 2026 22:57:13 GMT
COPY dir:a6e369a550f6c35be174f5086a2da4e5b27cbca4abe58d0c11b678536d0a440d in C:\openjdk-21 
# Fri, 25 Sep 2026 22:57:19 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Fri, 25 Sep 2026 22:57:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fdcf50c9b42c78811edb94972823302935b571f0812d07c018999c3142b333f`  
		Last Modified: Fri, 25 Sep 2026 22:57:24 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d7521148c9e459611be4f628642c1db353fe3878f31e3ef3f68fa0bcfebc23`  
		Last Modified: Fri, 25 Sep 2026 22:57:24 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf2933d264858c2cd65acdc5c586a3a65ad6988c6f97621f38ad78176a0c234`  
		Last Modified: Fri, 25 Sep 2026 22:57:24 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1cb8725e7c5364c376d39557db7bd77fd0b300bd3d4b230273b8e16e72c358`  
		Last Modified: Fri, 25 Sep 2026 22:57:24 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4bd2d67769f478a50771487b0ca9076900078c00cb58952996af210eba41c4`  
		Last Modified: Fri, 25 Sep 2026 22:57:23 GMT  
		Size: 69.6 KB (69635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716ebd66bab799762e4cbd03efe78bf63ed7e1178992e1089e5ac886ee234fcb`  
		Last Modified: Fri, 25 Sep 2026 22:57:23 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec2e531af1c1ff1ff80e9d85d8109d9427ba44ffa6945c06b507321dffa250b`  
		Last Modified: Fri, 25 Sep 2026 22:57:34 GMT  
		Size: 201.9 MB (201876201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73f57841863e949779c38ced299469ef01fb9c7ee4e527bf748b8f5031fbb3e`  
		Last Modified: Fri, 25 Sep 2026 22:57:23 GMT  
		Size: 111.8 KB (111756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af765fafbbb846f5a54d10bbf658e66a2deba0276e11f5e13436a38567ba9be9`  
		Last Modified: Fri, 25 Sep 2026 22:57:23 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:21-jdk-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:bf7e01724e396e55c4dc5ce61dcce6121e4b6d9bf616c0228db4bb472f194b0b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.7 MB (326704918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e07fb28ad48c5f61f1dde4e5cc874d45606bd46e03ab1cfccecc52512f1ad3d`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Fri, 25 Sep 2026 23:13:58 GMT
SHELL [cmd /s /c]
# Fri, 25 Sep 2026 23:15:36 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 23:15:36 GMT
ENV JAVA_HOME=C:\openjdk-21
# Fri, 25 Sep 2026 23:15:37 GMT
USER ContainerAdministrator
# Fri, 25 Sep 2026 23:15:38 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 25 Sep 2026 23:15:39 GMT
USER ContainerUser
# Fri, 25 Sep 2026 23:16:01 GMT
COPY dir:a6e369a550f6c35be174f5086a2da4e5b27cbca4abe58d0c11b678536d0a440d in C:\openjdk-21 
# Fri, 25 Sep 2026 23:16:05 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Fri, 25 Sep 2026 23:16:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f860267c810d0a5816ddc86484c903cef847600eeb57713760eddb28f377fc8`  
		Last Modified: Fri, 25 Sep 2026 23:14:29 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a5751582c76b582bb5f1473cedcb54d1d7347379ed6851b374b0c4e1860eb39`  
		Last Modified: Fri, 25 Sep 2026 23:16:11 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbe0bab81237050e6c4bc1952da9735b8e561560a1c3e6b6c06c99b3a6b64874`  
		Last Modified: Fri, 25 Sep 2026 23:16:11 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78f1989b7fa08372cc1f28b27f9338022dbcaba7287de71219b8d317d240dac`  
		Last Modified: Fri, 25 Sep 2026 23:16:11 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b4929f525f171a96cbd2b746033dd55a3e50e6149479f460cb6899d39088bc`  
		Last Modified: Fri, 25 Sep 2026 23:16:10 GMT  
		Size: 77.5 KB (77492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e5046254ab31c4838508f4ca849ac0776f7a00d2b9697232b469efb6f69834`  
		Last Modified: Fri, 25 Sep 2026 23:16:10 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f596c6fd3591c7439e0aaaf912bcfa71914d95f4ea5580dab64ffaf3a1a0ae50`  
		Last Modified: Fri, 25 Sep 2026 23:16:22 GMT  
		Size: 201.9 MB (201876492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8a584db7cd259ccaa0fa75aec6486b8d25c2e9a9d58a7d05e26d11280feda6`  
		Last Modified: Fri, 25 Sep 2026 23:16:10 GMT  
		Size: 107.2 KB (107194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb30284b7eee81eeb924c4145cb2f162925b480db52fc1ec7a38465be6bc2f3`  
		Last Modified: Fri, 25 Sep 2026 23:16:10 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
