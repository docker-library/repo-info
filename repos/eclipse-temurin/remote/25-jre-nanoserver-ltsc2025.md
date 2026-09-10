## `eclipse-temurin:25-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:0b8fa3cc4bd9887dd58e9f4ed736f66d51d867e52a3d7d465ed40d9b4e61ff4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `eclipse-temurin:25-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:186c8192dcb7683561492bba9a6cef4e0df268855a99a1d03b2d6341198472bb
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256462011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07354bc5fe92f20086a2a3517e7ce491dc01ad43edda6284cd033120f22d8ad9`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Wed, 09 Sep 2026 23:24:11 GMT
SHELL [cmd /s /c]
# Wed, 09 Sep 2026 23:24:12 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Wed, 09 Sep 2026 23:24:12 GMT
ENV JAVA_HOME=C:\openjdk-25
# Wed, 09 Sep 2026 23:24:13 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:24:15 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 09 Sep 2026 23:24:15 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:24:35 GMT
COPY dir:ce1ecffaedce91d5c2314508cf903f98090db1180f9359bfd2dcf99410a1765d in C:\openjdk-25 
# Wed, 09 Sep 2026 23:24:39 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552a2d9a4edb2736cdfc59cc5d5d24934f6d5b113f36784dd23ae314c10039b3`  
		Last Modified: Wed, 09 Sep 2026 23:24:44 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58a427fefeebfe56acd26f6c38fa2edde38c05698cba0276c22b9b29dc623d1`  
		Last Modified: Wed, 09 Sep 2026 23:24:44 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e661b8c2602ce9de8ecb706dd000ec350b02975a907f0e4a4149abbba26ff7ae`  
		Last Modified: Wed, 09 Sep 2026 23:24:44 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23f63539d2ba31e6cb55d8acb95177a902e0f11d52133e8df019f88fd75f567`  
		Last Modified: Wed, 09 Sep 2026 23:24:42 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e42b32fa2048a8b64ec9a3c6b2525778702bd3ef8f7452dd56521a18be8f48f`  
		Last Modified: Wed, 09 Sep 2026 23:24:42 GMT  
		Size: 73.5 KB (73503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb3e0013584fcabd55bf36c3246dcf63adc1381ee1a2c5083458bf288262624`  
		Last Modified: Wed, 09 Sep 2026 23:24:42 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f96ef3da84697528ff1a93d55daedc29fc0eb1f2820fa1a12cbfd77aee11a2`  
		Last Modified: Wed, 09 Sep 2026 23:24:50 GMT  
		Size: 58.6 MB (58620684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a1e8570d40eebeba56b7cb691d0b1018ef97110fad80adda6a87bb82ebc737`  
		Last Modified: Wed, 09 Sep 2026 23:24:43 GMT  
		Size: 112.1 KB (112098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
