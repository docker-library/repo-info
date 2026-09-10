## `openjdk:28-ea-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:f924c526eb5c2baea1877f3e58292b3d9689fb9330244d8b72e914fe318340bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `openjdk:28-ea-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull openjdk@sha256:66f6daa8dccabd777be56f09a5c2fca0487b57fa94b8a002ff693d3d3937388d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.9 MB (363924649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91611fcd39603424463270a07f02b59555fff3bec4a2eb29c7d7e82da064e07e`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:20:54 GMT
SHELL [cmd /s /c]
# Wed, 09 Sep 2026 23:26:08 GMT
ENV JAVA_HOME=C:\openjdk-28
# Wed, 09 Sep 2026 23:26:09 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:26:10 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Wed, 09 Sep 2026 23:26:11 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:26:11 GMT
ENV JAVA_VERSION=28-ea+14
# Wed, 09 Sep 2026 23:26:39 GMT
COPY dir:4738696310eaa291f8bef5368f765ccbf284679c8f1e9e590a7700e40797f549 in C:\openjdk-28 
# Wed, 09 Sep 2026 23:26:44 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Wed, 09 Sep 2026 23:26:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc280a6510bdc979b34bd6dcd8e970e856a223ec67daa4122864e326854eff4`  
		Last Modified: Wed, 09 Sep 2026 23:21:08 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c10677ee17f37274dfa2c605e531392b59a8f5cc535566856129846e66d537`  
		Last Modified: Wed, 09 Sep 2026 23:26:50 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f172f8a84d874a386409b32d068e90af8ad416e3976ac5ad637c526429df67`  
		Last Modified: Wed, 09 Sep 2026 23:26:50 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b69e4249e2fc16f68f73d1b3ab43fa79ebb7242532ecc20b1ec3fcadda8d188`  
		Last Modified: Wed, 09 Sep 2026 23:26:50 GMT  
		Size: 77.3 KB (77307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b6c5921ec37c584eb52f97eadbf99d01c36e2bf382a5970a19ccfbbcda5e1f3`  
		Last Modified: Wed, 09 Sep 2026 23:26:48 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733af4d6085ecfb8082dd885d593a850c64f440caa3f45ccb3dd9a12b9eb8ee1`  
		Last Modified: Wed, 09 Sep 2026 23:26:48 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a9275d4a54f1412564ea8dee3925e8cbd042a29c667483bfb87f24adaaaa56`  
		Last Modified: Wed, 09 Sep 2026 23:27:05 GMT  
		Size: 239.1 MB (239096375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67061edc1907b167e95e9f43fe1e2d4dfa025b2ddc333ae4a8ad034203d846bb`  
		Last Modified: Wed, 09 Sep 2026 23:26:48 GMT  
		Size: 107.2 KB (107179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e1c401dbc9ced3a7df2d35ed82a9560e6b0855976b8ebc91bedf52ba602a05`  
		Last Modified: Wed, 09 Sep 2026 23:26:48 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
