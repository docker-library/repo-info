## `eclipse-temurin:21-jdk-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:e910186220d93a907ec82ba13f4c2f17f21d9f0fd53e259b5ddb50acfaf4ddcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `eclipse-temurin:21-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull eclipse-temurin@sha256:3652c12a845488b54b28f3921416f5d0e31fcfb014c1c0dd05630838a123017d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.7 MB (402671850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0200e596d4768416d94461a70b89267a785c82a6d22e11ddc0038aeb36c99b94`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Wed, 11 Nov 2026 22:43:48 GMT
RUN Apply image 10.0.26100.33828
# Fri, 20 Nov 2026 18:10:28 GMT
SHELL [cmd /s /c]
# Fri, 20 Nov 2026 18:23:19 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 18:23:20 GMT
ENV JAVA_HOME=C:\openjdk-21
# Fri, 20 Nov 2026 18:23:20 GMT
USER ContainerAdministrator
# Fri, 20 Nov 2026 18:23:22 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 20 Nov 2026 18:23:22 GMT
USER ContainerUser
# Fri, 20 Nov 2026 18:23:34 GMT
COPY dir:8d8c3d3e7104bf534f1d71b0f54aee8421122fdb6bdcc0228e5c60177d5ab117 in C:\openjdk-21 
# Fri, 20 Nov 2026 18:23:38 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Fri, 20 Nov 2026 18:23:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6ba6a8d6630dc641648821a651879fd111e21b736d72f09f1eabafe7a0e18a9a`  
		Last Modified: Fri, 13 Nov 2026 21:31:52 GMT  
		Size: 200.2 MB (200239817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4a1b03cc17a55620ef0e29b2eafc14f2d9d621a609da1ac9be81a4c0895af3`  
		Last Modified: Fri, 20 Nov 2026 18:11:01 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24930a9dfb7e5c51db4ecbbdce2170808f3752b0db8b7c9cc0e1cb3d723bd18`  
		Last Modified: Fri, 20 Nov 2026 18:23:44 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a45c3f5c6c662c9bc33b190a24da4ab8fe27452948a5f517ab421c9cd9b9f6`  
		Last Modified: Fri, 20 Nov 2026 18:23:44 GMT  
		Size: 1.0 KB (1030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0723bd54b9a29063f5a9ba16a8672750058707a3694baf33cc634ab21c4a20`  
		Last Modified: Fri, 20 Nov 2026 18:23:44 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d897f3d66abc404a22cfdfc509829f5065a415ad00350df5f8665572c1cc7cb8`  
		Last Modified: Fri, 20 Nov 2026 18:23:43 GMT  
		Size: 72.7 KB (72715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e991fa041abe142740335357041670c9bcb8c3563aad03248a0869f8a1d168`  
		Last Modified: Fri, 20 Nov 2026 18:23:43 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0058fef518872b57812f277093ea4d767e78859b9620cf421b54a193240efb1`  
		Last Modified: Fri, 20 Nov 2026 18:23:55 GMT  
		Size: 202.2 MB (202249383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd1fb5744ebffd43e7433a3eaa1b1ff1f805cd2430f022736458899596f038a`  
		Last Modified: Fri, 20 Nov 2026 18:23:43 GMT  
		Size: 103.7 KB (103697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39bcb7ec16776d8b602832537110424e050eacdcba39e4be39beae85a581906a`  
		Last Modified: Fri, 20 Nov 2026 18:23:43 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
