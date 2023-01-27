## `openjdk:21-ea-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:9efd1bd3cf99f9bf68be6775b6bc0e1e3eed8211dce10d8604ee32dcc79dfe30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `openjdk:21-ea-jdk-nanoserver` - windows version 10.0.17763.3887; amd64

```console
$ docker pull openjdk@sha256:c605b6fb6c3f7069a8dca55bcb98542fd44cb1a23433f52a46d4a32815594946
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.5 MB (304513832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04cb6284391c30de2945e756fb1ce8c2afa6d7a5d7d0aa7d75b139652f68be24`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:45:31 GMT
SHELL [cmd /s /c]
# Thu, 12 Jan 2023 05:11:18 GMT
ENV JAVA_HOME=C:\openjdk-21
# Thu, 12 Jan 2023 05:11:19 GMT
USER ContainerAdministrator
# Thu, 12 Jan 2023 05:11:34 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Thu, 12 Jan 2023 05:11:35 GMT
USER ContainerUser
# Fri, 20 Jan 2023 22:19:52 GMT
ENV JAVA_VERSION=21-ea+6
# Fri, 20 Jan 2023 22:20:13 GMT
COPY dir:8662ca92bb2569e57a286bd678a64bd07004970b5fce243dea0fceb4cdcb66ca in C:\openjdk-21 
# Fri, 20 Jan 2023 22:21:05 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Fri, 20 Jan 2023 22:21:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e58f9ad3b15a2a4882ab0a845e8e619cc8c3c411ddbe8b50046c1618a95c1397`  
		Last Modified: Thu, 12 Jan 2023 02:40:44 GMT  
		Size: 106.7 MB (106666138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea67a6bd980bdee35399883e5abcc31c738b338ad384b2f92d91a15cf09d9df`  
		Last Modified: Thu, 12 Jan 2023 02:40:16 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c10d054b2ffa414ee6a75be646bd3ee1ea6bd5a11e2400c757afeb68d8c6d4`  
		Last Modified: Thu, 12 Jan 2023 05:23:44 GMT  
		Size: 1.1 KB (1121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e99b18c6e5f683aa5e6fa7ad7ce124fabae3b048287a183a71a7dc15df8ef6a`  
		Last Modified: Thu, 12 Jan 2023 05:23:44 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6700bb1c6480ee456d21843fdd01e9a05b05ea2d8ac6f54cbd75acbaafe6ab52`  
		Last Modified: Thu, 12 Jan 2023 05:23:44 GMT  
		Size: 69.3 KB (69271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fc3250a046295f3386717ccc0548a5954c2c32fb3c4bbbc83dc8fdd13e1c27`  
		Last Modified: Thu, 12 Jan 2023 05:23:42 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d31d69dd00ad3831a754249cd6f34e0eaa14a58077ebf64d4723aca6206c87`  
		Last Modified: Sat, 21 Jan 2023 02:20:34 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3404b0517faec82a88d06c5be8b59287f3c266d32407c2199a647b816874d76`  
		Last Modified: Sat, 21 Jan 2023 02:20:56 GMT  
		Size: 194.0 MB (193992486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d238248979cac68ce6f7c6af7b9e04004617d2fd788dfc63472e5ea43975767`  
		Last Modified: Sat, 21 Jan 2023 02:20:34 GMT  
		Size: 3.8 MB (3779044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494106b011772375a4030ac2405102bac696819a8293a547b164010586340e1e`  
		Last Modified: Sat, 21 Jan 2023 02:20:33 GMT  
		Size: 1.1 KB (1137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
