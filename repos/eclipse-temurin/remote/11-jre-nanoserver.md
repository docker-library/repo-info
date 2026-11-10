## `eclipse-temurin:11-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:87f571ab73c56c0a69bccc155c9afa204ddf066fb9369aabf50fb65f04c34739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:11-jre-nanoserver` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:40575ca63463f6e4a4acb8cb3acc8b59b71b1da909385e17e4b6fbd0a5464e42
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243892761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fdd60b99416898cc0cada419a13739ed47df4cc7d920781b9b9b0b8204260e7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Mon, 09 Nov 2026 23:48:48 GMT
SHELL [cmd /s /c]
# Mon, 09 Nov 2026 23:50:52 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Mon, 09 Nov 2026 23:50:52 GMT
ENV JAVA_HOME=C:\openjdk-11
# Mon, 09 Nov 2026 23:50:52 GMT
USER ContainerAdministrator
# Mon, 09 Nov 2026 23:50:54 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 09 Nov 2026 23:50:54 GMT
USER ContainerUser
# Mon, 09 Nov 2026 23:51:04 GMT
COPY dir:93737fc4001a1f9c02514d128bafe582bbc15be9632d55eacb345ae32db307ef in C:\openjdk-11 
# Mon, 09 Nov 2026 23:51:07 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d907715dd9aa034d99f7982c280b1ad8eb432f572db73aeed605d64af47528db`  
		Last Modified: Mon, 09 Nov 2026 23:49:45 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b16871acbb0f0a6e5cd82df0888d1164907cb175d2820bca84ecc63509cc19`  
		Last Modified: Mon, 09 Nov 2026 23:51:13 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21061df772f145fc2bbbcf73929176249fb0c61700fba22983e811a08c76cd6`  
		Last Modified: Mon, 09 Nov 2026 23:51:13 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c68e11dd750b9cf8e902c99d0ceb0bfdac4c29370679be99ff524157b888b86`  
		Last Modified: Mon, 09 Nov 2026 23:51:11 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:140a4866933ccc0b6c90b3103fff8433d515ae13ba2c5095335d6b7e554bc1b2`  
		Last Modified: Mon, 09 Nov 2026 23:51:11 GMT  
		Size: 73.0 KB (72996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8f4c2c5216166cc1c63a4f82e60df327b29deac68dad854a875236227e16f3`  
		Last Modified: Mon, 09 Nov 2026 23:51:11 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab0d079d851b394924403465427b99860d4d02705ede9e3076b9c6a3c486d3b`  
		Last Modified: Mon, 09 Nov 2026 23:51:16 GMT  
		Size: 43.7 MB (43743411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876ca33be18e26dae6b42f1fbb9dc8f8d68f550ec5e4305b7fb5a52ca89a45b2`  
		Last Modified: Mon, 09 Nov 2026 23:51:11 GMT  
		Size: 112.1 KB (112054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:11-jre-nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:93770e168cc5ecb87ae2f03c822299f250e7bd32f15bfaa86442fba3fa5379f3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.9 MB (169860535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f37f8c4727501bac53cbdb756d2293b4494e65bee13cb7f87ae915b93dc9a46e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Mon, 09 Nov 2026 23:48:44 GMT
SHELL [cmd /s /c]
# Mon, 09 Nov 2026 23:53:15 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Mon, 09 Nov 2026 23:53:15 GMT
ENV JAVA_HOME=C:\openjdk-11
# Mon, 09 Nov 2026 23:53:16 GMT
USER ContainerAdministrator
# Mon, 09 Nov 2026 23:53:17 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 09 Nov 2026 23:53:17 GMT
USER ContainerUser
# Mon, 09 Nov 2026 23:53:25 GMT
COPY dir:93737fc4001a1f9c02514d128bafe582bbc15be9632d55eacb345ae32db307ef in C:\openjdk-11 
# Mon, 09 Nov 2026 23:53:28 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b3aa508ed803c4f60dedceb59dc65a815ce47222e478babf1e2f63ada1be25`  
		Last Modified: Mon, 09 Nov 2026 23:50:18 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97982139115642189ccf17ce240c0fc177c51ed7d66db5bce87abad1196a806a`  
		Last Modified: Mon, 09 Nov 2026 23:53:34 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72f557a89db86cac8336f840a5d45c6d5aca4facb229075a1836a1e52689bbd`  
		Last Modified: Mon, 09 Nov 2026 23:53:34 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375b3917596d3bae6d3c04b6a6f34e52fa99dbf7a11ef6db0e5e59db80253207`  
		Last Modified: Mon, 09 Nov 2026 23:53:32 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75447942c94ba06df205b3b816f23e05b85d082ca3c49feeeeb0cdfdc7e0a13`  
		Last Modified: Mon, 09 Nov 2026 23:53:33 GMT  
		Size: 76.8 KB (76796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841f83bc890c7e5b496e8ce91c18c6817fe4cd626a8c3272d762aab9177f0cdb`  
		Last Modified: Mon, 09 Nov 2026 23:53:33 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdc2c93ad8e3f061356e539191a9a701e34304464cfe5219e7148f66072e9c1`  
		Last Modified: Mon, 09 Nov 2026 23:53:37 GMT  
		Size: 43.7 MB (43743442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c287360de4d8116a79acce95219518dd83aa6e7f7bd3728fd10bfe2e9b9bad1c`  
		Last Modified: Mon, 09 Nov 2026 23:53:33 GMT  
		Size: 108.3 KB (108286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
