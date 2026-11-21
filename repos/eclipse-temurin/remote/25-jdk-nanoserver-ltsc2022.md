## `eclipse-temurin:25-jdk-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:a6faded720748d5b30d3ab92fe6f19d5eb248cad90bf6ce6f42ef02da86f654c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:25-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:f9aa4f18bfde798e88144da8c8e46aea560b1322083852c46ffca55784a71545
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 MB (264630286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e70dfff347953cfa6bab46a41d92e3e1f6c02911402b5529f916151c51f15b2a`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Thu, 12 Nov 2026 02:20:28 GMT
RUN Apply image 10.0.20348.5873
# Fri, 20 Nov 2026 18:10:20 GMT
SHELL [cmd /s /c]
# Fri, 20 Nov 2026 18:10:21 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 18:10:21 GMT
ENV JAVA_HOME=C:\openjdk-25
# Fri, 20 Nov 2026 18:10:22 GMT
USER ContainerAdministrator
# Fri, 20 Nov 2026 18:10:35 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 20 Nov 2026 18:10:36 GMT
USER ContainerUser
# Fri, 20 Nov 2026 18:11:39 GMT
COPY dir:49028415edc5a0751f2cddd13f228d889916ebf69085ab65d7b60cd3dfcd8476 in C:\openjdk-25 
# Fri, 20 Nov 2026 18:11:44 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Fri, 20 Nov 2026 18:11:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:533f90db12914056d2c2d338afdeb6ce815e38f2a5fdf28be8b9614e39964ffc`  
		Last Modified: Fri, 13 Nov 2026 18:24:32 GMT  
		Size: 126.3 MB (126273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49de5f5aa142fea536ab3110c5115f1b2a5fe9d51b9a2fa678f8d922c846ca0d`  
		Last Modified: Fri, 20 Nov 2026 18:11:49 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085ae205d4433d6877bd38ba3da38f458a8ee5c923424e3af99446c73483f9b1`  
		Last Modified: Fri, 20 Nov 2026 18:11:49 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31f15133e5373e6648c29f26a89b3198c81622929fac2c8370122c4c38710de`  
		Last Modified: Fri, 20 Nov 2026 18:11:50 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb51abc2d1b8367ce3681b174d9cb52940e2106974e08ae64d7512453b9236c1`  
		Last Modified: Fri, 20 Nov 2026 18:11:49 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:829dab38e488fd65b97221236b7926f7eaf924bd530dccb38e88b7ee267f7c8a`  
		Last Modified: Fri, 20 Nov 2026 18:11:48 GMT  
		Size: 70.7 KB (70725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f082a8679796cc721a2fbbf212f725fd14f19bd7f28f0e4064badce6c7f6a6`  
		Last Modified: Fri, 20 Nov 2026 18:11:48 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3fc206421d19aedf7f96486d45c0ebef74798d16dcf4edd57896010c57f273`  
		Last Modified: Fri, 20 Nov 2026 18:11:58 GMT  
		Size: 138.2 MB (138182342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7391354934a26f4102607678dd1251bb07e1088274c747d0e633ae62a6cb1156`  
		Last Modified: Fri, 20 Nov 2026 18:11:48 GMT  
		Size: 96.9 KB (96886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090a28c283fa1a8c5bce739904759dfe5447a59b60e0ac5463768125f276c3ed`  
		Last Modified: Fri, 20 Nov 2026 18:11:48 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
