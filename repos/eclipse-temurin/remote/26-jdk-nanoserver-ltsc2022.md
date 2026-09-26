## `eclipse-temurin:26-jdk-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:a4b60a310f646c79c2a174008ce4960534a954f67e20791244a37807bc8a88f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:26-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:4b3ae859e30e5fb766b892d51fd2abf291cb4b76a7554dd29ce9665ab683981e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266149838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4daa60388e121cea1822ccade4971f571f8ff134a656add6a21f1dc566621296`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Fri, 25 Sep 2026 23:13:58 GMT
SHELL [cmd /s /c]
# Fri, 25 Sep 2026 23:16:38 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 25 Sep 2026 23:16:38 GMT
ENV JAVA_HOME=C:\openjdk-26
# Fri, 25 Sep 2026 23:16:39 GMT
USER ContainerAdministrator
# Fri, 25 Sep 2026 23:16:40 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 25 Sep 2026 23:16:41 GMT
USER ContainerUser
# Fri, 25 Sep 2026 23:16:49 GMT
COPY dir:ccd67fcf3d45d4940fbcca3f3b377600053cf61ab5c19e3266e53dfa5c18d33b in C:\openjdk-26 
# Fri, 25 Sep 2026 23:16:52 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Fri, 25 Sep 2026 23:16:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f860267c810d0a5816ddc86484c903cef847600eeb57713760eddb28f377fc8`  
		Last Modified: Fri, 25 Sep 2026 23:14:29 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce053e4f4dfe6511ffc42a4131a9cafab1609c2efba2b729893f657051fbfff8`  
		Last Modified: Fri, 25 Sep 2026 23:16:58 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3fd79a21b445e79f4a1a45dcde90b06b82e4c14af45ccb1755a78d935e734f`  
		Last Modified: Fri, 25 Sep 2026 23:16:58 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c34defbac32dcfbddf39c2f4a24c6dfda65c2f3d4a473c651efd0a342e2f8b7`  
		Last Modified: Fri, 25 Sep 2026 23:16:58 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd48eac462cda3ce9b27f4ff90d1e2c92c0b1092b52028cdb22b26e8f0d1159`  
		Last Modified: Fri, 25 Sep 2026 23:16:56 GMT  
		Size: 78.1 KB (78055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:430f17eb98839f56a7f34c3903f69aaa5e35585400c6c8e09b614ab317f7ed15`  
		Last Modified: Fri, 25 Sep 2026 23:16:56 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff11de04be91662aff25744b5221bb33ebfea2fe5063bd096b98984ff235a56c`  
		Last Modified: Fri, 25 Sep 2026 23:17:07 GMT  
		Size: 141.3 MB (141319842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8e2b757536fe4b2be68c39b15408c673f25df207561930b90400bace23528b`  
		Last Modified: Fri, 25 Sep 2026 23:16:56 GMT  
		Size: 108.2 KB (108152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0be60550cd387c9863b38c33078deeb3ce5736fcc6bf31ed7aded8bfbc7c04c`  
		Last Modified: Fri, 25 Sep 2026 23:16:56 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
