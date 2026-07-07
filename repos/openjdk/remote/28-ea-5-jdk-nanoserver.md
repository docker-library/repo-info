## `openjdk:28-ea-5-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:eea6d1fe6226e240b8358be085450bfe7ccf1ac259084d7b4f27a5372fd6e92b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.32995; amd64
	-	windows version 10.0.20348.5256; amd64

### `openjdk:28-ea-5-jdk-nanoserver` - windows version 10.0.26100.32995; amd64

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

### `openjdk:28-ea-5-jdk-nanoserver` - windows version 10.0.20348.5256; amd64

```console
$ docker pull openjdk@sha256:f6071e9f0a28455144d66e0b83194529dc0fea03ce1e274a0aeafa2b6b997ec0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.2 MB (348245331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aefb98ec6a8614e8f5385c024b376a37c65ad554006dadd65ac37338a9c49034`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 07 Jun 2026 06:26:15 GMT
RUN Apply image 10.0.20348.5256
# Mon, 06 Jul 2026 23:23:14 GMT
SHELL [cmd /s /c]
# Mon, 06 Jul 2026 23:23:16 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 06 Jul 2026 23:23:17 GMT
USER ContainerAdministrator
# Mon, 06 Jul 2026 23:23:28 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Mon, 06 Jul 2026 23:23:29 GMT
USER ContainerUser
# Mon, 06 Jul 2026 23:23:30 GMT
ENV JAVA_VERSION=28-ea+5
# Mon, 06 Jul 2026 23:24:16 GMT
COPY dir:e5b2237dfa360781817e18fb651223e837ad761876a7e025be128425a273e372 in C:\openjdk-28 
# Mon, 06 Jul 2026 23:24:21 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Mon, 06 Jul 2026 23:24:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8fc8662767a8f63038f8f45ce82f52438fd89b4444ed43648c9e6a7f06330686`  
		Last Modified: Tue, 09 Jun 2026 17:48:06 GMT  
		Size: 124.0 MB (123997505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e717445f93f7f991bca3754ffb2126588a5c24e1f090bafc0fa6e01c8fcb37b`  
		Last Modified: Mon, 06 Jul 2026 23:24:32 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5229c849f4cd0b4506af9ecd654e11bc33cc99625479401c3d3857a9594aacd0`  
		Last Modified: Mon, 06 Jul 2026 23:24:32 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a694f2fbb31034f80f58f8bc284d1fedefb911183b3d09cce6bb330ebfdbfaa8`  
		Last Modified: Mon, 06 Jul 2026 23:24:32 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431d8031335df58bba4ded4c10ba760c78cabfcbcf2a0ad1f04875f7da915181`  
		Last Modified: Mon, 06 Jul 2026 23:24:32 GMT  
		Size: 71.1 KB (71107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823e8e7eedca3ba4e8bf40e49dea1929838579f06b85fbdd58dde2b39d6019f7`  
		Last Modified: Mon, 06 Jul 2026 23:24:30 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd84f1758db484ca8322904d8d445625a09e631a1cc6bbad64f4aa9b7228424`  
		Last Modified: Mon, 06 Jul 2026 23:24:30 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3058052ad8d2d5d78aa5d18cba3552f6c972e2692e2b2a818ca77979e49caae4`  
		Last Modified: Mon, 06 Jul 2026 23:24:46 GMT  
		Size: 224.1 MB (224063372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6f324618d39d1f7bad1a980c4a01db6d1a298531ceb9f427515d611794f56f`  
		Last Modified: Mon, 06 Jul 2026 23:24:30 GMT  
		Size: 106.9 KB (106925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855baabbb7097d0ce17f53d1197388fe6f209cafa8f6574a5da35ca6b94f059d`  
		Last Modified: Mon, 06 Jul 2026 23:24:30 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
