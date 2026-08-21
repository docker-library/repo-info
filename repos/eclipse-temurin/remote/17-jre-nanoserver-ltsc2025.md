## `eclipse-temurin:17-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:c08808cab54222e70ed9f27dc98298184bd4f460dc51fd4ff70d3a142ba98e24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:17-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:daccc415806fc3c98f1299cc210a5b2eb64cfd478bb3849068cc211a4bfd3c93
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241512140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4382b956fb250d486c317455a339bcc1e5ebcf724e5b2ab5e4c54c87ec9347e8`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Fri, 21 Aug 2026 18:35:41 GMT
SHELL [cmd /s /c]
# Fri, 21 Aug 2026 18:49:56 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:49:57 GMT
ENV JAVA_HOME=C:\openjdk-17
# Fri, 21 Aug 2026 18:49:57 GMT
USER ContainerAdministrator
# Fri, 21 Aug 2026 18:49:58 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 21 Aug 2026 18:49:59 GMT
USER ContainerUser
# Fri, 21 Aug 2026 18:50:05 GMT
COPY dir:c7bf190121f912a89fd430dfa5b910ef4f4e58e423a49a810e3a7594bfc919b0 in C:\openjdk-17 
# Fri, 21 Aug 2026 18:50:09 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3344968ae60c85d2f27e40b1caf9a69e716e8c375cdf2acf54adf133d097b816`  
		Last Modified: Fri, 21 Aug 2026 18:36:12 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a119f8218b405613233399d4c5808e3195ced17e6e6ee501c546bf7df3b4a4`  
		Last Modified: Fri, 21 Aug 2026 18:50:15 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c94640ac019c2ab15689805adbc190c53fac4dc5d4fe5e5cc091b6cdca1a6e4`  
		Last Modified: Fri, 21 Aug 2026 18:50:15 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd93abe0b9be47be06ad0b6b811bf496a9d2992264ea2a170d9b4a3fb93a6f73`  
		Last Modified: Fri, 21 Aug 2026 18:50:13 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc0507f298df640bc4c92917f6e75514029a7eeda367633ad49410781630599`  
		Last Modified: Fri, 21 Aug 2026 18:50:13 GMT  
		Size: 73.5 KB (73450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef518324e2336cdc26a032a6b77bb9aee1227e9f14172ad98c1865e36fb0ef97`  
		Last Modified: Fri, 21 Aug 2026 18:50:13 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa131b4af611cce494b5e1522570982a49f85e89b7dcb02992c73690952bb9e6`  
		Last Modified: Fri, 21 Aug 2026 18:50:18 GMT  
		Size: 43.8 MB (43839597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f692d5bd6c12915e22d1270f2fca3719c5632b940478b73f9dabddd6e140fd58`  
		Last Modified: Fri, 21 Aug 2026 18:50:13 GMT  
		Size: 111.7 KB (111696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
