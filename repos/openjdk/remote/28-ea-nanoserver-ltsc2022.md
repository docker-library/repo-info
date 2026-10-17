## `openjdk:28-ea-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:b3cb3b90a1877329ddb474ddd417c8a5a59a54f107af2262842f9553231cfae0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `openjdk:28-ea-nanoserver-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull openjdk@sha256:6cae530f6085703886783c17d82fe0a7c54beb9dc9b2696f2b930eadac8a7581
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.4 MB (365406402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cb4990d82c418f09e389c24e6346530e93d794e09540fdf8ac3787fb5a4e43c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Fri, 16 Oct 2026 21:08:57 GMT
SHELL [cmd /s /c]
# Fri, 16 Oct 2026 21:08:58 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 16 Oct 2026 21:08:59 GMT
USER ContainerAdministrator
# Fri, 16 Oct 2026 21:09:11 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Fri, 16 Oct 2026 21:09:11 GMT
USER ContainerUser
# Fri, 16 Oct 2026 21:09:13 GMT
ENV JAVA_VERSION=28-ea+20
# Fri, 16 Oct 2026 21:10:51 GMT
COPY dir:4bba7de6503d0e36d90ffb0add4842884075965796326edf4413e7dd76b26d67 in C:\openjdk-28 
# Fri, 16 Oct 2026 21:10:57 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Fri, 16 Oct 2026 21:10:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eea3c46cff2783086bed52b9e53374f8195c6857f82eef4fe63d23028ea7b8c`  
		Last Modified: Fri, 16 Oct 2026 21:11:17 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3644c1c897b29f6452cbe5b3c2b278ca24b6b9990b2892b2dc54ca07cb959cf3`  
		Last Modified: Fri, 16 Oct 2026 21:11:17 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf565c357577ddd2d4cf6f88bf1e9b58a9ec13a0837b56dfd235cd63ae117881`  
		Last Modified: Fri, 16 Oct 2026 21:11:17 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89d1750cc25e040d6b123190547f0662fa578b1a9f86c5b41adb795b486e09b`  
		Last Modified: Fri, 16 Oct 2026 21:11:17 GMT  
		Size: 87.4 KB (87389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0b3bf3541f3e6bda37e32a3b5b70805606624d96846931c15289e8064c2524`  
		Last Modified: Fri, 16 Oct 2026 21:11:15 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f3a82ba72c4bc7034c508af10d74d54064b19b335e718b03ec756499ecae88`  
		Last Modified: Fri, 16 Oct 2026 21:11:15 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09f75eda572ee02a4c92720a09d322a470417a84312135d1205bc5ae11c92ba`  
		Last Modified: Fri, 16 Oct 2026 21:11:32 GMT  
		Size: 239.4 MB (239423830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bad5bfcd2523222eae28707262ca2b5eb5de3530fd4e56b98a4ff7203ed0691`  
		Last Modified: Fri, 16 Oct 2026 21:11:16 GMT  
		Size: 92.8 KB (92792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0245cb7039b79ccd152694a87f45157b0606c9cc3b1bd984643d9a9d80f3a4bd`  
		Last Modified: Fri, 16 Oct 2026 21:11:15 GMT  
		Size: 1.1 KB (1089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
