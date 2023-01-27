## `eclipse-temurin:17-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:451b18e9212ecb48cd74bca03b64a473d9d97278039bebd5c969a091f059a849
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.20348.1487; amd64
	-	windows version 10.0.17763.3887; amd64

### `eclipse-temurin:17-jre-nanoserver` - windows version 10.0.20348.1487; amd64

```console
$ docker pull eclipse-temurin@sha256:994b9073ead44f8bf55046e1dff2bff1ccbc9a787415c3a8a369681ad3bae949
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.5 MB (165546500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b59bb5892ec9ab5896707d665a300be05fb6f14884ea64bd43cecf8bc85f5bf5`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Fri, 06 Jan 2023 23:36:49 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 02:19:48 GMT
SHELL [cmd /s /c]
# Tue, 24 Jan 2023 18:37:38 GMT
ENV JAVA_VERSION=jdk-17.0.6+10
# Tue, 24 Jan 2023 18:37:38 GMT
ENV JAVA_HOME=C:\openjdk-17
# Tue, 24 Jan 2023 18:37:39 GMT
USER ContainerAdministrator
# Tue, 24 Jan 2023 18:37:52 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 24 Jan 2023 18:37:53 GMT
USER ContainerUser
# Tue, 24 Jan 2023 18:39:01 GMT
COPY dir:bfcbd3aaadac52e2fbf5597edb59a69874950e88ce16232f7581c0ac600a935c in C:\openjdk-17 
# Tue, 24 Jan 2023 18:39:22 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:83e9437e818022c1c28f0e07002dd46995c8614e62b9366138fa23b94f43d9ad`  
		Last Modified: Thu, 12 Jan 2023 02:51:06 GMT  
		Size: 122.1 MB (122099566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbebbf572ebe7984b715b8dfe99bc1273403a831c0079b95afa12162b7266f16`  
		Last Modified: Thu, 12 Jan 2023 02:50:38 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b520cecbb420f61e384ae5be97e6a6d1d2e9616383c4ae84ed031a7e69a752be`  
		Last Modified: Tue, 24 Jan 2023 21:29:57 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbf7c6a46260f30bc9cd214511eae5e1cd7ac2291752f80bc06f7b17078bffd`  
		Last Modified: Tue, 24 Jan 2023 21:29:57 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1d0799fe5f54037562a62acdf09e6c934d82422a845f245bd204f5935c0c32`  
		Last Modified: Tue, 24 Jan 2023 21:29:57 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1d58d09abfc2b5ebd9d3e0fee874b8e7791901ba3ffe350160ef0f77387035`  
		Last Modified: Tue, 24 Jan 2023 21:29:55 GMT  
		Size: 86.9 KB (86911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a36ba65b36e70a4f1dfbcb10f37d8b3752fede363c9d67653b96a2566ac245f2`  
		Last Modified: Tue, 24 Jan 2023 21:29:55 GMT  
		Size: 1.1 KB (1131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5b50eb244d418190762159b65ac53c2f27fd28cd37a3391a301ffd935ce897`  
		Last Modified: Tue, 24 Jan 2023 21:30:38 GMT  
		Size: 43.3 MB (43295746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50330f19d45df922916c68228a8b4342b735e45a3dbcc90dc5d506c50b19c141`  
		Last Modified: Tue, 24 Jan 2023 21:30:28 GMT  
		Size: 58.5 KB (58456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:17-jre-nanoserver` - windows version 10.0.17763.3887; amd64

```console
$ docker pull eclipse-temurin@sha256:1612c1864fec954cc81ecf4c67d75ea64679d8c019f0ea5f0af756f1ac5fc523
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153037701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751a96f650adbb3b3204d0164b7aeb3d26f12963b85a032fd762fd1c923e439e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:45:31 GMT
SHELL [cmd /s /c]
# Tue, 24 Jan 2023 18:29:45 GMT
ENV JAVA_VERSION=jdk-17.0.6+10
# Tue, 24 Jan 2023 18:29:46 GMT
ENV JAVA_HOME=C:\openjdk-17
# Tue, 24 Jan 2023 18:29:46 GMT
USER ContainerAdministrator
# Tue, 24 Jan 2023 18:29:57 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 24 Jan 2023 18:29:58 GMT
USER ContainerUser
# Tue, 24 Jan 2023 18:33:51 GMT
COPY dir:bfcbd3aaadac52e2fbf5597edb59a69874950e88ce16232f7581c0ac600a935c in C:\openjdk-17 
# Tue, 24 Jan 2023 18:34:10 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
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
	-	`sha256:998c9e2cb093caeb0607abf9b9de72ed4ef6564255a70887a16d3f7eb6f03b4a`  
		Last Modified: Tue, 24 Jan 2023 21:27:26 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590513e126a10ba2742725bb14efbe3e9a79bbcc795ca88017bdff264f4869ff`  
		Last Modified: Tue, 24 Jan 2023 21:27:26 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9637023f8f79eda1d4ff5a0686321506ba62e1a054f1db727eceff066bc515`  
		Last Modified: Tue, 24 Jan 2023 21:27:26 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb6570dac232e6ab563c36d3e3060e8d0ad9244107002a26a1fca9ece22b1c4`  
		Last Modified: Tue, 24 Jan 2023 21:27:24 GMT  
		Size: 71.7 KB (71661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cdada2ee0d288d7c26bda6ceffc41c94c1b0f242cf1bc0ee7e020b7cd6949a`  
		Last Modified: Tue, 24 Jan 2023 21:27:24 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e1afa8da404e3a84172b7793463fa8b11a96bfb68335dae85a9b807ff5a977`  
		Last Modified: Tue, 24 Jan 2023 21:28:48 GMT  
		Size: 43.3 MB (43289037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517a543aa314c242fb268fee9ca65d19db1612c270656eb88c86865cd9a2750a`  
		Last Modified: Tue, 24 Jan 2023 21:28:39 GMT  
		Size: 3.0 MB (3005122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
