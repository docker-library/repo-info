## `openjdk:28-ea-6-jdk-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:231257c7263c4fbfd3aa9cfc3f411ce732230ab17fd25a0f9988eb543d5b5a39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `openjdk:28-ea-6-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull openjdk@sha256:88356069fa9613901d97c3bcade39a62814e1160b5758160352db2f7bb59be02
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.4 MB (348357906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25802e5b2cb2e17eb9d69e5a11f2fa529cf1552851a24a2f424fd46195ddcb27`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:52:07 GMT
SHELL [cmd /s /c]
# Thu, 16 Jul 2026 00:08:36 GMT
ENV JAVA_HOME=C:\openjdk-28
# Thu, 16 Jul 2026 00:08:36 GMT
USER ContainerAdministrator
# Thu, 16 Jul 2026 00:08:38 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Thu, 16 Jul 2026 00:08:38 GMT
USER ContainerUser
# Thu, 16 Jul 2026 00:08:38 GMT
ENV JAVA_VERSION=28-ea+6
# Thu, 16 Jul 2026 00:08:58 GMT
COPY dir:3e5a4f6eb880dd82d06d57e8551c032af1385b632bb66c65dd911af65bfb3b33 in C:\openjdk-28 
# Thu, 16 Jul 2026 00:09:03 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Thu, 16 Jul 2026 00:09:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106eb036a9ddc83031e7411c015ebd48a0cb4a1f5c72217a59a5db8232e1dc0d`  
		Last Modified: Wed, 15 Jul 2026 23:52:42 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2196d45d9a2c83c8b2c540a601f62a6f48eb206dcd3970220b600bf0646a6cd`  
		Last Modified: Thu, 16 Jul 2026 00:09:09 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b3770607c6e5149b19b29d1fac0b08cd0d207ab28a4c36e353bdb2d6fc1188`  
		Last Modified: Thu, 16 Jul 2026 00:09:09 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37e4026193f626fecb5b240b0a69ea39a2014f7be8c4670f3e781051daf84f4`  
		Last Modified: Thu, 16 Jul 2026 00:09:09 GMT  
		Size: 75.8 KB (75835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dbedfc9eb4228d429f7074b81d77919d57521e7e37499e6685b4d6c9c9415cb`  
		Last Modified: Thu, 16 Jul 2026 00:09:07 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2110e745e9c0b337f1db89496b1b3ae4aa153e86084a1992c7630fb11b3a64d9`  
		Last Modified: Thu, 16 Jul 2026 00:09:07 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e6934452234c9985fde494039415ccce93b1dabd52ef6cbab54fe951362ddb`  
		Last Modified: Thu, 16 Jul 2026 00:09:21 GMT  
		Size: 224.1 MB (224062187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9176b1f32ab78169d85ad41834a11f530a3e10c5d432b1568de6ed421f1db8be`  
		Last Modified: Thu, 16 Jul 2026 00:09:08 GMT  
		Size: 110.4 KB (110373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f49e71b53254ec8483b99a1364b9b7140ff48c4c6930ebec2a947734a82cd4a`  
		Last Modified: Thu, 16 Jul 2026 00:09:07 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
