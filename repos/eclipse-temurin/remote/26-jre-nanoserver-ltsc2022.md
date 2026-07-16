## `eclipse-temurin:26-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:47cc5519101f8498eee49806f60746241afcb264dcf0c42f4459808e20ece31a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `eclipse-temurin:26-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull eclipse-temurin@sha256:5034e8710beb5a8b6539f2b190bc805496b62ba650bb9aa6888df5002f103596
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.5 MB (184502212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b6e6ff2d5336434c03009e8dfef49cc892077520bc1386d4081858b5eeeee38`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:53:16 GMT
SHELL [cmd /s /c]
# Wed, 15 Jul 2026 23:53:58 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Wed, 15 Jul 2026 23:53:58 GMT
ENV JAVA_HOME=C:\openjdk-26
# Wed, 15 Jul 2026 23:53:58 GMT
USER ContainerAdministrator
# Wed, 15 Jul 2026 23:54:00 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 15 Jul 2026 23:54:00 GMT
USER ContainerUser
# Wed, 15 Jul 2026 23:54:03 GMT
COPY dir:1edec5af9445e163af5cd51feafb262ed7498368c1981b477e0c90d82a11e11a in C:\openjdk-26 
# Wed, 15 Jul 2026 23:54:06 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32d50ac99702729c222bf4061dbe849d1d440195ca91b4e5f016f53596be35e`  
		Last Modified: Wed, 15 Jul 2026 23:53:30 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9988593ddca771398591a182d58e6ff50e5bdb89acc9c59c8a1c8abdd1a565a2`  
		Last Modified: Wed, 15 Jul 2026 23:54:12 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4035549f68ea3f954971e64e4f82defa028bc886d63c2b0f624dceba03516568`  
		Last Modified: Wed, 15 Jul 2026 23:54:11 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0738a6ac37a67ee321250310c831d7cc4bf7c151f92302160a48e3f2aa2f12e9`  
		Last Modified: Wed, 15 Jul 2026 23:54:10 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abca6a066e31298f5af45c5d08ad0c9cb114351f492a0aa4a1fe1ba015cc9912`  
		Last Modified: Wed, 15 Jul 2026 23:54:10 GMT  
		Size: 77.3 KB (77304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48cab9c76529570d6c42c7a3036410a9294febfe350a8e2fbe912eebc11e945d`  
		Last Modified: Wed, 15 Jul 2026 23:54:10 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363b7532904eaa72f11007a4ef8717183d22de490e03f0e95ff4a6e1b19c243a`  
		Last Modified: Wed, 15 Jul 2026 23:54:17 GMT  
		Size: 60.2 MB (60225690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c7531f9ea91d16ca21bd61e04b20c2356576424742ebdc9f2991dced8a8f9b`  
		Last Modified: Wed, 15 Jul 2026 23:54:10 GMT  
		Size: 90.8 KB (90799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
