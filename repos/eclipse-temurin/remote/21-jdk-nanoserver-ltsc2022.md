## `eclipse-temurin:21-jdk-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:0006ec23e50fde355690cb9175c642683c8766cd97068f7c897bf48e3899171c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:21-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:8441332c829bbbeaf3b54047611d9722cb363d55e1e803c18f903af437392e5b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.3 MB (326323343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25052f939b6749443696570c40aa1ff8796c081527a093d8a9d499da31241c52`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Fri, 21 Aug 2026 18:25:41 GMT
SHELL [cmd /s /c]
# Fri, 21 Aug 2026 18:37:12 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:37:12 GMT
ENV JAVA_HOME=C:\openjdk-21
# Fri, 21 Aug 2026 18:37:13 GMT
USER ContainerAdministrator
# Fri, 21 Aug 2026 18:37:15 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 21 Aug 2026 18:37:15 GMT
USER ContainerUser
# Fri, 21 Aug 2026 18:37:26 GMT
COPY dir:0834ce0442693c0f1f088bdbe5aa2e6929b552bb7d2fb8becac9a5b90ee9dea0 in C:\openjdk-21 
# Fri, 21 Aug 2026 18:37:30 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Fri, 21 Aug 2026 18:37:31 GMT
CMD ["jshell"]
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
	-	`sha256:3707c272a8e5dc920f5915b86c0d1f376b40a65d9f49010e194aaa500ae26966`  
		Last Modified: Fri, 21 Aug 2026 18:37:36 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c74688e60ac94e9c3bf36596a3b4ca9c67dee74afbde49f892d21b2078e7d4`  
		Last Modified: Fri, 21 Aug 2026 18:37:36 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0432c85333f81535a71bffcba37bc13cd22c8e6ec70023b404a290e87c96e572`  
		Last Modified: Fri, 21 Aug 2026 18:37:36 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38afe2469390a6dc2c044d133a24cbd6750bca71e4bcf2e19b3f2720d9132128`  
		Last Modified: Fri, 21 Aug 2026 18:37:35 GMT  
		Size: 77.2 KB (77221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28f85f07dfc85184a41ff2ad030a33931da922b49c15edd8709dae724137e5c`  
		Last Modified: Fri, 21 Aug 2026 18:37:35 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c73be15578e666f89af9363501091ccf7b3b30a2d8e20d34d99f17a4d3ccc7d`  
		Last Modified: Fri, 21 Aug 2026 18:37:46 GMT  
		Size: 201.9 MB (201874876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc03beee02746026275f5cb30217dabbb3b742247e8d50f383fef0247fac8a02`  
		Last Modified: Fri, 21 Aug 2026 18:37:35 GMT  
		Size: 106.9 KB (106940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c624ef5f781ebe70aa27b94d4169f31bf30ac1125006ef58aba516ba2e9cd5cb`  
		Last Modified: Fri, 21 Aug 2026 18:37:35 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
