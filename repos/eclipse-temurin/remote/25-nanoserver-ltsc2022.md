## `eclipse-temurin:25-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:e8dcefd5771c0a3951050baf270dc0551b3dd14db0ae28435f454f1bc6e9662e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:25-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:c12c45b8b3fa24720b41c667bfe04d0160e92e6b1157b9794c67fb4838b3bb42
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.5 MB (262501694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0069ed24863cf9e50b69d8cb0a282b0fdab2efb8a331a342a4bc7d1dfe9c578a`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Fri, 21 Aug 2026 18:35:48 GMT
SHELL [cmd /s /c]
# Fri, 21 Aug 2026 18:50:19 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:50:19 GMT
ENV JAVA_HOME=C:\openjdk-25
# Fri, 21 Aug 2026 18:50:20 GMT
USER ContainerAdministrator
# Fri, 21 Aug 2026 18:50:22 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 21 Aug 2026 18:50:22 GMT
USER ContainerUser
# Fri, 21 Aug 2026 18:50:46 GMT
COPY dir:f49f99ba2301be176534e3be9f0bbf4d2f5ec76969021dab07ed45ef4d729348 in C:\openjdk-25 
# Fri, 21 Aug 2026 18:50:49 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Fri, 21 Aug 2026 18:50:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f459426bce9b11f0fdd7188adcf536f7f83b7d387d61808eb4517c9e48324ee8`  
		Last Modified: Fri, 21 Aug 2026 18:36:18 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19216e8c82cf1f9a5cf7d645844180c3292f3e42726884d7c5e0b7890ba7d9e5`  
		Last Modified: Fri, 21 Aug 2026 18:50:55 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1fdbfc129a8427658a2e1ffe373ee37861461d9fa5c751e6fe16634ec55677a`  
		Last Modified: Fri, 21 Aug 2026 18:50:55 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19efe930e7635722d8b85e207f5a5b62620e1b9d5b1704828cf7491b4260564`  
		Last Modified: Fri, 21 Aug 2026 18:50:55 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3382e55d18fefe016138370b5bf70a6aa358ed74f3fd8351454331531df33e15`  
		Last Modified: Fri, 21 Aug 2026 18:50:54 GMT  
		Size: 79.1 KB (79057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a379b2bcc0a2dbaf9933b8234974f65fc8367fb710c8f5842988157bd1337687`  
		Last Modified: Fri, 21 Aug 2026 18:50:54 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077a1727f0589716f9e6bc214701fd0ced532df90055e44c152ded99ab58e09a`  
		Last Modified: Fri, 21 Aug 2026 18:51:05 GMT  
		Size: 138.1 MB (138051060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee0b0660264ec3383a88b395dde315e17d30ae118952a4c7a3e34d69d59536f`  
		Last Modified: Fri, 21 Aug 2026 18:50:54 GMT  
		Size: 107.3 KB (107303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88df2c91089d36ddfb091183060d8c9fdf43036a34239eee3b2f2a09e58672a`  
		Last Modified: Fri, 21 Aug 2026 18:50:54 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
