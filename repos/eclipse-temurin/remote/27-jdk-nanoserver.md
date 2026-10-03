## `eclipse-temurin:27-jdk-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:f4a3a8c9c6bde55150f2130ec36a7ca817f1173f355b4249d75b47905d776f68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:27-jdk-nanoserver` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:1530f4407bd296dabba3ec35c0a7b74ed31ae6c0f32c69dd7550d7e5c0585375
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.6 MB (337557947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c55349cd6f880395a220241aa2761faa8b8dfb0aed54289e6f80bdcceef1c40`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Sat, 03 Oct 2026 00:45:07 GMT
SHELL [cmd /s /c]
# Sat, 03 Oct 2026 01:08:25 GMT
ENV JAVA_VERSION=jdk-27+35
# Sat, 03 Oct 2026 01:08:26 GMT
ENV JAVA_HOME=C:\openjdk-27
# Sat, 03 Oct 2026 01:08:27 GMT
USER ContainerAdministrator
# Sat, 03 Oct 2026 01:08:30 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Sat, 03 Oct 2026 01:08:30 GMT
USER ContainerUser
# Sat, 03 Oct 2026 01:09:01 GMT
COPY dir:a598b5fc3a93568869369eaabdea66c3c2b0ecde9417552cff3c1df8963b51f7 in C:\openjdk-27 
# Sat, 03 Oct 2026 01:09:05 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Sat, 03 Oct 2026 01:09:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb79bf3ea54b51a7f89973eded683025736ee114799233b7b50be97dd89d7451`  
		Last Modified: Sat, 03 Oct 2026 00:47:05 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4f632992c006197cf1e3a60d64fd54b14b073ea95b073cb8b117b9653e6f11`  
		Last Modified: Sat, 03 Oct 2026 01:09:14 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81bc994c84d61002493bfbbb78a0d2ed845d093db6d804f9c783b6da45a8f02a`  
		Last Modified: Sat, 03 Oct 2026 01:09:14 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c37e3b2f0f4f20bb16b691cf7543278341ae9b27d3360dab3017c1c778ab1eb`  
		Last Modified: Sat, 03 Oct 2026 01:09:14 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9a252f5e4925fe0d5d5b97df1d2fa7a4a93dd07b37503a601da11182380c2f`  
		Last Modified: Sat, 03 Oct 2026 01:09:13 GMT  
		Size: 72.1 KB (72142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f21801ffe5c89ad423ad54abc97926abeac4f13de10b3496a41fd7e3b313ae8`  
		Last Modified: Sat, 03 Oct 2026 01:09:12 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c1639dacc8f507a84b030737aa7e7c89a1886b9131a0ac5ea25615740ca61e`  
		Last Modified: Sat, 03 Oct 2026 01:09:24 GMT  
		Size: 139.7 MB (139716476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dad6263e81ea1ea94223b976cbece9adfb9c8fd3a5bef5e4665a534721bc7c7`  
		Last Modified: Sat, 03 Oct 2026 01:09:13 GMT  
		Size: 112.6 KB (112564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670cf22606cc3d529c4b2a4bdb76f770eb487d86ed89bc21e6f973cb863e5056`  
		Last Modified: Sat, 03 Oct 2026 01:09:13 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:27-jdk-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:6952144f15c0b6e5b8f449a423334f868281e8f591657d60a80cc7ef6c2df364
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.5 MB (264538221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2adad97b882ee1c73e9c1716e5102795618cc8ed50c8e0ff017ae7e4ad0eb0c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Sat, 03 Oct 2026 01:08:15 GMT
SHELL [cmd /s /c]
# Sat, 03 Oct 2026 01:08:16 GMT
ENV JAVA_VERSION=jdk-27+35
# Sat, 03 Oct 2026 01:08:16 GMT
ENV JAVA_HOME=C:\openjdk-27
# Sat, 03 Oct 2026 01:08:17 GMT
USER ContainerAdministrator
# Sat, 03 Oct 2026 01:08:28 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Sat, 03 Oct 2026 01:08:28 GMT
USER ContainerUser
# Sat, 03 Oct 2026 01:09:01 GMT
COPY dir:a598b5fc3a93568869369eaabdea66c3c2b0ecde9417552cff3c1df8963b51f7 in C:\openjdk-27 
# Sat, 03 Oct 2026 01:09:05 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Sat, 03 Oct 2026 01:09:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6078d2221d30a73e888e5e4465330851a2ab63a631e7e827c6d675f1256d665e`  
		Last Modified: Sat, 03 Oct 2026 01:09:13 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afdf231543ae86564c553482f2ae6dbaea17c1f3a84fce73aa6a91cfd4fb7cb4`  
		Last Modified: Sat, 03 Oct 2026 01:09:13 GMT  
		Size: 1.0 KB (1030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:282de4c7abeec4a42300046f43a528f20eb071418df9ed404ff61f81a21dbdb1`  
		Last Modified: Sat, 03 Oct 2026 01:09:13 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19423acb12468825fe5f810bcf7475529f67184c21427d721121f9a291ca2c6a`  
		Last Modified: Sat, 03 Oct 2026 01:09:13 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf41106202cb29c0c1a8ee290f69cfbc5c90c85447ef688601f86aa538efd1b`  
		Last Modified: Sat, 03 Oct 2026 01:09:11 GMT  
		Size: 81.5 KB (81550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc4b4b29ca36b1007d0c09d8c23094eb65baeb2d3e0546b8f0b96c1000eeb30`  
		Last Modified: Sat, 03 Oct 2026 01:09:11 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f62753debee2751c6f4ce6fb6060f83dd8a0cef86b034ce4e7e50117002cc2`  
		Last Modified: Sat, 03 Oct 2026 01:09:22 GMT  
		Size: 139.7 MB (139716155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764bf63c618d4a9cef398e5bfab09bc745d135c154d0374a9e4b985a038ade2d`  
		Last Modified: Sat, 03 Oct 2026 01:09:11 GMT  
		Size: 96.8 KB (96821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a09ee6a5379f8f28d74c394d51c1bd7d573a438081f2f0161f988b2d1ca996f`  
		Last Modified: Sat, 03 Oct 2026 01:09:11 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
