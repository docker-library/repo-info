## `eclipse-temurin:26-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:a09b60d59e38c721805329106837b370b9b7fa5983bf9f4925d3b37a3b56c472
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:26-jre-nanoserver` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:bbc1a5098a181f4c50d765f56700616e3213439ebc8345fde298784bb3b3401f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.9 MB (257905428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cc09fcf48316288e92054d2c53ed18813d2e911f16aafe52a2799a25a413ba2`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Fri, 21 Aug 2026 18:50:22 GMT
SHELL [cmd /s /c]
# Fri, 21 Aug 2026 18:50:23 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Fri, 21 Aug 2026 18:50:24 GMT
ENV JAVA_HOME=C:\openjdk-26
# Fri, 21 Aug 2026 18:50:25 GMT
USER ContainerAdministrator
# Fri, 21 Aug 2026 18:50:35 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 21 Aug 2026 18:50:35 GMT
USER ContainerUser
# Fri, 21 Aug 2026 18:50:55 GMT
COPY dir:75cac0e3d3f7e04546a46f2d73944f1fd04849a83636454c9d766ff12f7bd02c in C:\openjdk-26 
# Fri, 21 Aug 2026 18:51:01 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e9788f1e961a3d22a5eab66bc103d129d7ba1089d74c10ca2c3c90d990b33c`  
		Last Modified: Fri, 21 Aug 2026 18:51:07 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace24e228eb43c20afbc31b2f7586fde043f9c9a45495cab60970e3651d31cdd`  
		Last Modified: Fri, 21 Aug 2026 18:51:07 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093bcefb38f65fd6ad35b69065b33cbb102210c380b365a0c0a60bfb5b7d46a2`  
		Last Modified: Fri, 21 Aug 2026 18:51:07 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eaa40624857731ac90724fc49393c6a70fed279c974628f9af86c7137510158`  
		Last Modified: Fri, 21 Aug 2026 18:51:05 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839742b1d051e5fe03939dca22245bddddecbdcef7f2573e1fbee1a002a0e038`  
		Last Modified: Fri, 21 Aug 2026 18:51:05 GMT  
		Size: 70.7 KB (70742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb9e1d5e994ab1a6627a830dabdc326d3fcca8053b89361316ba269ed5088ce`  
		Last Modified: Fri, 21 Aug 2026 18:51:05 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a55c1feb2335ea360b0b8803b6fe049a87e75f733be783a9f843d659266696f`  
		Last Modified: Fri, 21 Aug 2026 18:51:13 GMT  
		Size: 60.2 MB (60244734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9211fc56293567b5efe2f4e9cf3bb2095515ffcf7e3fbd4f5b3f47fbe102a8aa`  
		Last Modified: Fri, 21 Aug 2026 18:51:05 GMT  
		Size: 102.6 KB (102555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:26-jre-nanoserver` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:75221772889964b59cd175659f903f9b94c1b2f7d78cbc653d1bb68abeb88c72
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184675870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3205f12bee64d20b1d3a631ee0f88d027a0c27a86111da58d7ca219d32f58f8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Fri, 21 Aug 2026 18:25:41 GMT
SHELL [cmd /s /c]
# Fri, 21 Aug 2026 18:38:02 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Fri, 21 Aug 2026 18:38:02 GMT
ENV JAVA_HOME=C:\openjdk-26
# Fri, 21 Aug 2026 18:38:02 GMT
USER ContainerAdministrator
# Fri, 21 Aug 2026 18:38:04 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 21 Aug 2026 18:38:05 GMT
USER ContainerUser
# Fri, 21 Aug 2026 18:38:09 GMT
COPY dir:75cac0e3d3f7e04546a46f2d73944f1fd04849a83636454c9d766ff12f7bd02c in C:\openjdk-26 
# Fri, 21 Aug 2026 18:38:12 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861c1724d049b9ebbb8c4cd96e2fa05394f418ceb5daaa237cc9c3a15477229a`  
		Last Modified: Fri, 21 Aug 2026 18:26:44 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42398e31bd9a631193750f6c9d6c79e45b11914e7c7e20dc27f8351677248897`  
		Last Modified: Fri, 21 Aug 2026 18:38:17 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0812c8800ff1f0d8e75c80df1ed26e5e830953911b88a918dc96fa8bc2162c`  
		Last Modified: Fri, 21 Aug 2026 18:38:17 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f444a89b03a5d3e08d803c8fb2c0c175ac990caea21d0cd11b4a202c47909b4`  
		Last Modified: Fri, 21 Aug 2026 18:38:16 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514ba4dfd5caca41bbb9e2e5a77600a004d66edcdc5c063b365eb20e3b04951d`  
		Last Modified: Fri, 21 Aug 2026 18:38:16 GMT  
		Size: 77.4 KB (77441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d16c8b856ccf5c006aaaeb515a82cd75b45dc003304512ba6664a5d9563a5ff`  
		Last Modified: Fri, 21 Aug 2026 18:38:16 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5fc5ba467b99d3d903533672905dba68f5b8562fffe893e9b6090914a0c091f`  
		Last Modified: Fri, 21 Aug 2026 18:38:23 GMT  
		Size: 60.2 MB (60244902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3013e3400be95f43ccdfd7cfa2ae4191b73cbe5b2a0b949767c43077ef892ef5`  
		Last Modified: Fri, 21 Aug 2026 18:38:16 GMT  
		Size: 90.3 KB (90288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
