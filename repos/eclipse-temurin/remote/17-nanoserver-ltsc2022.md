## `eclipse-temurin:17-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:f5c8bbf3a35738b0c80d0a01fc7417011e7e2521d635eb41db00935a30cf6ecc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:17-nanoserver-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:5d60f15d827cf5f728a7f98ae486e61738257a10721aa7e347664c28f4b60730
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.4 MB (314443267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80462edfca37ad8b94b111650a8e5bc4253d0a58936260dca5ab736552f71901`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Thu, 12 Nov 2026 02:20:28 GMT
RUN Apply image 10.0.20348.5873
# Fri, 20 Nov 2026 18:10:20 GMT
SHELL [cmd /s /c]
# Fri, 20 Nov 2026 18:22:48 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 18:22:49 GMT
ENV JAVA_HOME=C:\openjdk-17
# Fri, 20 Nov 2026 18:22:49 GMT
USER ContainerAdministrator
# Fri, 20 Nov 2026 18:22:51 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 20 Nov 2026 18:22:52 GMT
USER ContainerUser
# Fri, 20 Nov 2026 18:23:24 GMT
COPY dir:ce4f5a82791b09892736751511ac6b2ba1bbd40df1da7006682a8c44df702997 in C:\openjdk-17 
# Fri, 20 Nov 2026 18:23:28 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Fri, 20 Nov 2026 18:23:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:533f90db12914056d2c2d338afdeb6ce815e38f2a5fdf28be8b9614e39964ffc`  
		Last Modified: Fri, 13 Nov 2026 18:24:32 GMT  
		Size: 126.3 MB (126273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49de5f5aa142fea536ab3110c5115f1b2a5fe9d51b9a2fa678f8d922c846ca0d`  
		Last Modified: Fri, 20 Nov 2026 18:11:49 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818dbfdaaba317aa4199a32729e793f6bc3277b04cf3e0c451bcadb30a941291`  
		Last Modified: Fri, 20 Nov 2026 18:23:36 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7484f6f1e27510307f8ac3d5f5c38c43ce9e515ef39e3c5fc394d4af131830ba`  
		Last Modified: Fri, 20 Nov 2026 18:23:36 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5163af114f3d695a56746573263a4c66ba3ee23d43d2a774ec9165d759fd344`  
		Last Modified: Fri, 20 Nov 2026 18:23:36 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051af3160b2cd8576d06b2d2b904b8d42a722bbc1bb995f782d586a8b288a1b8`  
		Last Modified: Fri, 20 Nov 2026 18:23:34 GMT  
		Size: 77.1 KB (77079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0b427220e27979db437023c6371d4fe720414982abae8352086f7b6bd00ce3`  
		Last Modified: Fri, 20 Nov 2026 18:23:34 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8db06a19e52914200d40d11ed855a4b34508d7629bc5b804235764ebe9ca3e`  
		Last Modified: Fri, 20 Nov 2026 18:23:45 GMT  
		Size: 188.0 MB (187978344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e78c2b1f05db3bf08f62f9b56227b66596ade541372929ec27aebebc2f1577`  
		Last Modified: Fri, 20 Nov 2026 18:23:35 GMT  
		Size: 107.6 KB (107555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df7d0ecadb941114193e2b5757db7243054bb01af9690befe12130054f644c0`  
		Last Modified: Fri, 20 Nov 2026 18:23:34 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
