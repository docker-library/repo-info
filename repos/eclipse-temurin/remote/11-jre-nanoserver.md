## `eclipse-temurin:11-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:861cd2a3e01cf397b01e7fa0640d0c68fbc866dc232da9ca5b95b85e4b66ce58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `eclipse-temurin:11-jre-nanoserver` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:55ebb75296047a3b3d2de21f4d760920b7e542d364a52948c0ec1253d3f5edc3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.6 MB (241558708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d8f51f9ada17ad9c85fa1cc2674055271f20c25d2d12ed15384fb328e1e847f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Fri, 25 Sep 2026 22:56:27 GMT
SHELL [cmd /s /c]
# Fri, 25 Sep 2026 22:56:28 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:56:28 GMT
ENV JAVA_HOME=C:\openjdk-11
# Fri, 25 Sep 2026 22:56:28 GMT
USER ContainerAdministrator
# Fri, 25 Sep 2026 22:56:38 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 25 Sep 2026 22:56:39 GMT
USER ContainerUser
# Fri, 25 Sep 2026 22:56:48 GMT
COPY dir:932951a7f9cc979d426261013a8e7d4b19921ca73270e018152705df3374f84b in C:\openjdk-11 
# Fri, 25 Sep 2026 22:56:52 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7913f40ea1c6bb2cb9b9a92bf93550fb4d611333a774a6d9e242699c44b119`  
		Last Modified: Fri, 25 Sep 2026 22:56:58 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297208b5ef54c812fb40ade80260a35b3727e8e05a8888bc9a090403a081594d`  
		Last Modified: Fri, 25 Sep 2026 22:56:58 GMT  
		Size: 1.1 KB (1053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e8a4f8768da93ad177ed81b116af65d04c00ef2d6c871ab34e7cfd4ef432ae`  
		Last Modified: Fri, 25 Sep 2026 22:56:57 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cfbbf0b039c3f526435eae56e2fc8120d82cea778044321e934182c0a38bb`  
		Last Modified: Fri, 25 Sep 2026 22:56:56 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f484d56df40384cab47d148bf2861e8dc725ac1f51ad59d1dab76412277376`  
		Last Modified: Fri, 25 Sep 2026 22:56:56 GMT  
		Size: 70.0 KB (69950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02311467ef2d78feb5bf105dcb3262d9f66b2a09bd78f1ec761551babf0aba4f`  
		Last Modified: Fri, 25 Sep 2026 22:56:56 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014732deb264c642934c5004f55dd293bf4308d88afb00c90b5a08f0d6c4130f`  
		Last Modified: Fri, 25 Sep 2026 22:57:01 GMT  
		Size: 43.7 MB (43721105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395bec679d152c841a2257ff629ad236a9e9bf053ea75fd5bd5389b293d42bd8`  
		Last Modified: Fri, 25 Sep 2026 22:56:56 GMT  
		Size: 111.9 KB (111947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
