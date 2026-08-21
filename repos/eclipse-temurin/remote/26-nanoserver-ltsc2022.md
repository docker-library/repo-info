## `eclipse-temurin:26-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:eb0840140d8094d0d3dd9dfdea797778d1b001a2253009894c2c8f115ec66617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:26-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:79175c40dd080bf97a872c7950d7ebbad9450649a0459bf1b2f4db4a9c008fb7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265765888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b070fadf786fbf138022e8bbc5e1023b44b64a77cfb65e038b12cc87034c2fe3`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Fri, 21 Aug 2026 18:35:48 GMT
SHELL [cmd /s /c]
# Fri, 21 Aug 2026 18:38:10 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Fri, 21 Aug 2026 18:38:10 GMT
ENV JAVA_HOME=C:\openjdk-26
# Fri, 21 Aug 2026 18:38:11 GMT
USER ContainerAdministrator
# Fri, 21 Aug 2026 18:38:12 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 21 Aug 2026 18:38:13 GMT
USER ContainerUser
# Fri, 21 Aug 2026 18:38:30 GMT
COPY dir:41be7f046b6b23393a5a8f45ec96dd32a1839da8d4fa6cfdff0b408563d7d9a9 in C:\openjdk-26 
# Fri, 21 Aug 2026 18:38:34 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Fri, 21 Aug 2026 18:38:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f459426bce9b11f0fdd7188adcf536f7f83b7d387d61808eb4517c9e48324ee8`  
		Last Modified: Fri, 21 Aug 2026 18:36:18 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7853ddbc83e9c9b149c20029b35e0672f452ce0f94402dff519c23279067193`  
		Last Modified: Fri, 21 Aug 2026 18:38:41 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9f382ddbeef13b1d90efb4c9833dffabe1ef4a157d6bf29e46b83d52eeff7c`  
		Last Modified: Fri, 21 Aug 2026 18:38:41 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bc644f629dedf37d8b0953d7cf8a566354ac6bd87a383b79fb1ceac9fa37eb`  
		Last Modified: Fri, 21 Aug 2026 18:38:41 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b795e97d4c8ad32b4f154d36d0a6ef4724399bac14d61e79bcaeca63dcc2880`  
		Last Modified: Fri, 21 Aug 2026 18:38:39 GMT  
		Size: 75.5 KB (75484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468d3828b2294d44f0794a0c15069fa9de66243dd02559de2565f95af9429cf5`  
		Last Modified: Fri, 21 Aug 2026 18:38:39 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e167c56fad2ab31f04f5ce49897edfb1b3b1ae7ae62e71ca5f248d0cdbd10936`  
		Last Modified: Fri, 21 Aug 2026 18:38:51 GMT  
		Size: 141.3 MB (141317705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0dd86f518ac09db93d60e72f130aed813d6d5245d942d3ced9f7a7cfe4369d`  
		Last Modified: Fri, 21 Aug 2026 18:38:39 GMT  
		Size: 108.4 KB (108411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbc34a453d5a58a0b92a563e55ed45769627b31a960b08d8e820c9946eab04c`  
		Last Modified: Fri, 21 Aug 2026 18:38:39 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
