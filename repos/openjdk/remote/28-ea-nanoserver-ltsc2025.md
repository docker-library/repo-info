## `openjdk:28-ea-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:69caadd48ef84ae28f0e54f3b9f6fde39bf7f47fc9c9c057072d8d6a47494b16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `openjdk:28-ea-nanoserver-ltsc2025` - windows version 10.0.26100.33438; amd64

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
