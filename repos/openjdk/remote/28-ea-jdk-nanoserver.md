## `openjdk:28-ea-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:965a241532a4a4bbab1501449daa1c7064fe8a92dec24c06daee8cfd50776a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `openjdk:28-ea-jdk-nanoserver` - windows version 10.0.26100.33438; amd64

```console
$ docker pull openjdk@sha256:1ad627a5557bb406ab1247773c473dcd321c9f42d95d9810e2a10399f0719c3c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.9 MB (436937655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65a79d4bb0b6d3c3aede624c315ecab1a701eeb80b3c940c30a18bfdd06e9dff`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Wed, 09 Sep 2026 23:22:43 GMT
SHELL [cmd /s /c]
# Wed, 09 Sep 2026 23:25:28 GMT
ENV JAVA_HOME=C:\openjdk-28
# Wed, 09 Sep 2026 23:25:29 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:25:30 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Wed, 09 Sep 2026 23:25:31 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:25:32 GMT
ENV JAVA_VERSION=28-ea+14
# Wed, 09 Sep 2026 23:26:15 GMT
COPY dir:4738696310eaa291f8bef5368f765ccbf284679c8f1e9e590a7700e40797f549 in C:\openjdk-28 
# Wed, 09 Sep 2026 23:26:20 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Wed, 09 Sep 2026 23:26:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab53c7008b343c971bca6865144e9cf92150fc336a4eb083601bf2ef7f6a6c4`  
		Last Modified: Wed, 09 Sep 2026 23:23:21 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f2a0ccfd1f6a211c2449e149064cbcfa79eb90c910c891e21131fe01e8cb3c4`  
		Last Modified: Wed, 09 Sep 2026 23:26:26 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45365c5e232f08328dd9e7c1cf763066e10f6753bd75c701bfc2a7ab41c8e578`  
		Last Modified: Wed, 09 Sep 2026 23:26:26 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fa1cff889804c9d5dec999a3aa6f21e540843fb478af9d0aa8b04cb5d7ed43`  
		Last Modified: Wed, 09 Sep 2026 23:26:26 GMT  
		Size: 71.9 KB (71913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0509557bf160b8ccdb91fd2b9e042ca9ba280349c907376ac26427ae42220d9f`  
		Last Modified: Wed, 09 Sep 2026 23:26:25 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3bb37a1d77285dc300c074beebb71713bb5d0ce8cb064cb1556ba99e09dba57`  
		Last Modified: Wed, 09 Sep 2026 23:26:25 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0bc71466f8cb60679c1eb76b93fb167c752c6f79fea20087434e2d65a864bd`  
		Last Modified: Wed, 09 Sep 2026 23:26:42 GMT  
		Size: 239.1 MB (239096507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d08bdf45e997af7e643f4e143d8aef22331a79fa0953bb2ce54ccdbcad50eea1`  
		Last Modified: Wed, 09 Sep 2026 23:26:25 GMT  
		Size: 112.5 KB (112509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42114cc2adaff3a9c30820956c877c73ec67454b0c2c74163e1d5a7a2c635fb`  
		Last Modified: Wed, 09 Sep 2026 23:26:25 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-jdk-nanoserver` - windows version 10.0.20348.5622; amd64

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
