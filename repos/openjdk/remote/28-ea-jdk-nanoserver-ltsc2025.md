## `openjdk:28-ea-jdk-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:288df571633f0047022ffad93720293b7b8b2e76c205a1d1906a487331e849b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.32995; amd64

### `openjdk:28-ea-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.32995; amd64

```console
$ docker pull openjdk@sha256:c1618f5e15a5278b09a79879687745628eac5345e241608bbd90c5bdb24b0c80
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.9 MB (420899764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:942d192ea5862a894331ef6adb70772337b5b3a11982eb46e0ebf302078541da`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 07 Jun 2026 07:06:15 GMT
RUN Apply image 10.0.26100.32995
# Mon, 06 Jul 2026 22:14:21 GMT
SHELL [cmd /s /c]
# Mon, 06 Jul 2026 22:14:21 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 06 Jul 2026 22:14:21 GMT
USER ContainerAdministrator
# Mon, 06 Jul 2026 22:14:27 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Mon, 06 Jul 2026 22:14:28 GMT
USER ContainerUser
# Mon, 06 Jul 2026 22:14:28 GMT
ENV JAVA_VERSION=28-ea+5
# Mon, 06 Jul 2026 22:14:49 GMT
COPY dir:e5b2237dfa360781817e18fb651223e837ad761876a7e025be128425a273e372 in C:\openjdk-28 
# Mon, 06 Jul 2026 22:14:55 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Mon, 06 Jul 2026 22:14:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:64f5cd94d3bcd0fae94830b1fad0f8b3dc33677f8d7dc15c5219b56fe2a6584e`  
		Last Modified: Tue, 09 Jun 2026 22:11:30 GMT  
		Size: 196.7 MB (196668131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ceb1162348bc833a2ae9894362a0e3da7062f2a1e906f1132a6c5b01d1f647`  
		Last Modified: Mon, 06 Jul 2026 22:15:01 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723c47d714ea1aeb7d936af1df9e39ca8fd554a946e754559793aaabbf43d2e6`  
		Last Modified: Mon, 06 Jul 2026 22:15:01 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dfdf36c39e4768fee2649baba548605fa6f06a883aa346bc4fd3fb5234fb4e`  
		Last Modified: Mon, 06 Jul 2026 22:15:01 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cce034b58c2bfa2d4a82282bc3fda46fa4458168a22347b2cde27918273c61d5`  
		Last Modified: Mon, 06 Jul 2026 22:15:01 GMT  
		Size: 69.9 KB (69859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1772f473668e13ceaffd65e3de262206148e222968cc0ef51557800eefa2a02d`  
		Last Modified: Mon, 06 Jul 2026 22:14:59 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b1b26fec4b99c4fe0cb29cb8c2973a041d007f4e8fb979a3f3366dca90af51b`  
		Last Modified: Mon, 06 Jul 2026 22:14:59 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f33f6996e18187afb7e510874c0406ce1e291a21006f8f4d82a5c58214ffc59`  
		Last Modified: Mon, 06 Jul 2026 22:15:15 GMT  
		Size: 224.1 MB (224063522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67df1ece16d97d8cd0819c8990c87afd6d8faec3d20ebfd985082a1c0abd7db5`  
		Last Modified: Mon, 06 Jul 2026 22:14:59 GMT  
		Size: 92.1 KB (92053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94fee88e577b706fb091b11801d805e16a261052c3d3fe5ef3cc7c5784f5e07e`  
		Last Modified: Mon, 06 Jul 2026 22:14:59 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
