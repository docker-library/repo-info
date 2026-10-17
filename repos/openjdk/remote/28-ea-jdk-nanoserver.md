## `openjdk:28-ea-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:bffec7d214a7589729daf85e4f83f498866be4332c803d6ad94d23f39a4bcc82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `openjdk:28-ea-jdk-nanoserver` - windows version 10.0.26100.33650; amd64

```console
$ docker pull openjdk@sha256:686392e9a057ba6ea4c634ba3e05bfa55c87b5c677e83d50feedcdb533a55ea8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.5 MB (439477386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe646f463cb7d44f8fcb993c8f8a6b2acb2409825627ed582d025e1c1b93af5`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 00:37:58 GMT
RUN Apply image 10.0.26100.33650
# Fri, 16 Oct 2026 21:08:51 GMT
SHELL [cmd /s /c]
# Fri, 16 Oct 2026 21:08:52 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 16 Oct 2026 21:08:52 GMT
USER ContainerAdministrator
# Fri, 16 Oct 2026 21:09:05 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Fri, 16 Oct 2026 21:09:05 GMT
USER ContainerUser
# Fri, 16 Oct 2026 21:09:06 GMT
ENV JAVA_VERSION=28-ea+20
# Fri, 16 Oct 2026 21:10:09 GMT
COPY dir:4bba7de6503d0e36d90ffb0add4842884075965796326edf4413e7dd76b26d67 in C:\openjdk-28 
# Fri, 16 Oct 2026 21:10:18 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Fri, 16 Oct 2026 21:10:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fc75d5d958abc5a2294f36186f7c93790e84f49e7d31c08dfc8446cb7703df87`  
		Last Modified: Tue, 13 Oct 2026 22:26:06 GMT  
		Size: 199.9 MB (199871136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472c4c5e519a520bf207322ce3a2ec82e18862d1ef6290182bc1f0b5f69770e8`  
		Last Modified: Fri, 16 Oct 2026 21:10:25 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:533fdc2ded2dc3a57a0d5d945ad95dfc3a02ffdc1924190b2ace86fd652a599b`  
		Last Modified: Fri, 16 Oct 2026 21:10:25 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d34247edf6f14b634b1cf3f237da05ef7df9d2e67ecb46bff20280d87d49b91`  
		Last Modified: Fri, 16 Oct 2026 21:10:24 GMT  
		Size: 1.1 KB (1053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde0136e582939ab0289b3ff1ec04cc32e9ae1ecce27a2ef540d22852cd33d57`  
		Last Modified: Fri, 16 Oct 2026 21:10:25 GMT  
		Size: 79.4 KB (79398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91151d357bfa717e524c198472b5042d73dea220bb4adc14379ee3911e167489`  
		Last Modified: Fri, 16 Oct 2026 21:10:23 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e4788b140d94cab044dc545b3c756744baa53f30e544ebcfa0387ba0f2cd3f`  
		Last Modified: Fri, 16 Oct 2026 21:10:23 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab373beb562326aeeeda767334731f48828190a914de9b0126d96c953fb72c0`  
		Last Modified: Fri, 16 Oct 2026 21:10:40 GMT  
		Size: 239.4 MB (239423874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87cbe09379d35051b716c783e5fd1a5bef0e229d90589a581d5077bc8529990`  
		Last Modified: Fri, 16 Oct 2026 21:10:23 GMT  
		Size: 96.8 KB (96787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a7b414f270ec36f989856fdd401573db69bb767954ede79786cf1d4dc4773d`  
		Last Modified: Fri, 16 Oct 2026 21:10:23 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-jdk-nanoserver` - windows version 10.0.20348.5761; amd64

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
