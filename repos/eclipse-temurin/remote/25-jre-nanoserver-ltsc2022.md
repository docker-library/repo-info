## `eclipse-temurin:25-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:14aa543eccbcc75cefbcb50a7bf9a328445ac6896d488dc21cf9840a896ed978
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `eclipse-temurin:25-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull eclipse-temurin@sha256:6fd20b250ca50a3c2be7ef9c0b648e366cc89693d6f794f757a4e8365ae0bc6c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185199560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0294fa518275a2653fd6343e9a4acfff67aea0d5d4c1b566f012ef07f5e38496`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:43:39 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:44:41 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Wed, 11 Nov 2026 22:44:41 GMT
ENV JAVA_HOME=C:\openjdk-25
# Wed, 11 Nov 2026 22:44:41 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:44:43 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:44:43 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:44:47 GMT
COPY dir:15a6112ae90293e4cdecb6b550af3ac2909637d63cef8f8a0f8f1e8fcf140aa2 in C:\openjdk-25 
# Wed, 11 Nov 2026 22:44:50 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168e4ac91186ffdab90f27cd5b5d2f3e2478a6860a1f9c23b5177a7ffe6713b8`  
		Last Modified: Wed, 11 Nov 2026 22:44:08 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc3445ed1ccc5354fabeb4303311018dfef81ed9be2fb265ab79a496d27826e`  
		Last Modified: Wed, 11 Nov 2026 22:44:55 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f5d697a8cf0229c28f69a1c77d01232b872c76adacd7dda191fdcc50e315a5`  
		Last Modified: Wed, 11 Nov 2026 22:44:55 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd36157bbc2136079668ded401330464b4c9647f670cb498e35a7f40382903e9`  
		Last Modified: Wed, 11 Nov 2026 22:44:54 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a6373ec62ea4d224c677cb8e841767d91de672c59087631d845afb6b7f85f1`  
		Last Modified: Wed, 11 Nov 2026 22:44:54 GMT  
		Size: 78.7 KB (78747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5e40bc78598a2e22892d5cff12232bc00ee906b7a79ad9e3f8b71ab3d965ce`  
		Last Modified: Wed, 11 Nov 2026 22:44:54 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c2e2db0fcf841101e5823daba5bb0eebf571bbd1a8c0b929e0b142d60ae616`  
		Last Modified: Wed, 11 Nov 2026 22:45:01 GMT  
		Size: 58.7 MB (58738496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2af51b9c27336e4f7c2ceffb7608587913bd0e4cf5e6591cc9236218d94a84`  
		Last Modified: Wed, 11 Nov 2026 22:44:54 GMT  
		Size: 92.0 KB (91999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
