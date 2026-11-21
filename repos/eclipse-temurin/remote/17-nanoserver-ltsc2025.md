## `eclipse-temurin:17-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:68400b2f79d071d457099feab69fe5a12dbb4c4312dd7a068f7b509d9a13d75c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `eclipse-temurin:17-nanoserver-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull eclipse-temurin@sha256:011a3eb9eec57173fe9dfa892ec1e1039d5bd20f1b9c798fd034f144ba7ad0a9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.4 MB (388409554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:217bdf7eca76e43761e252a505b33ff481a6e455e80ea3f7c74dee76bb038236`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Wed, 11 Nov 2026 22:43:48 GMT
RUN Apply image 10.0.26100.33828
# Fri, 20 Nov 2026 18:10:28 GMT
SHELL [cmd /s /c]
# Fri, 20 Nov 2026 18:22:32 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 18:22:33 GMT
ENV JAVA_HOME=C:\openjdk-17
# Fri, 20 Nov 2026 18:22:33 GMT
USER ContainerAdministrator
# Fri, 20 Nov 2026 18:22:35 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 20 Nov 2026 18:22:36 GMT
USER ContainerUser
# Fri, 20 Nov 2026 18:22:47 GMT
COPY dir:ce4f5a82791b09892736751511ac6b2ba1bbd40df1da7006682a8c44df702997 in C:\openjdk-17 
# Fri, 20 Nov 2026 18:22:51 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Fri, 20 Nov 2026 18:22:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6ba6a8d6630dc641648821a651879fd111e21b736d72f09f1eabafe7a0e18a9a`  
		Last Modified: Fri, 13 Nov 2026 21:31:52 GMT  
		Size: 200.2 MB (200239817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be59e155a02bff1c293234bb649f7935b6b5e5c92c9b1828fbcd0ff9a76cc56`  
		Last Modified: Fri, 20 Nov 2026 18:11:07 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b1a8104ae2e7f6bf938fd6a4187364b91f8425498da5e3d36e30b3d69181db`  
		Last Modified: Fri, 20 Nov 2026 18:22:57 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714dbd3549b7fb85fae641aedd4a85fc6425dcdd674dfc0a7bfc8035b5f180e5`  
		Last Modified: Fri, 20 Nov 2026 18:22:57 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cbce8083a48af8e49760a14c1ffb6ba8f7d8fc9e158e640ff2b32b8f58cdf7`  
		Last Modified: Fri, 20 Nov 2026 18:22:57 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c639da17e8a9979e165b176538213c3efda47f63bd061fb1e518637a3c99999`  
		Last Modified: Fri, 20 Nov 2026 18:22:55 GMT  
		Size: 73.0 KB (72992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c0d6f388ad5d21860e09c603b8d0c2fac0a5f0358a809e02934522166d630d`  
		Last Modified: Fri, 20 Nov 2026 18:22:55 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8bb43bcfc28a34b89ebdba0463f04d4a7020ac79f825a019f1f82dfaf52301a`  
		Last Modified: Fri, 20 Nov 2026 18:23:06 GMT  
		Size: 188.0 MB (187978222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ecd52d902e31b1663c8bd6aaa0c18783ea3d9d235cdbeae5f6da3f1175832d`  
		Last Modified: Fri, 20 Nov 2026 18:22:55 GMT  
		Size: 112.3 KB (112306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e2712b0b558f5c1a85fda6b08b6a6452788e9e3a6ba1b6f5d26644c3e20150`  
		Last Modified: Fri, 20 Nov 2026 18:22:55 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
