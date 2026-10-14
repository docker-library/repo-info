## `eclipse-temurin:27-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:5aaaef51740cc60baa21c2a6078b5763accd92ad39483f4dce254bfdc2b9ca9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `eclipse-temurin:27-nanoserver-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull eclipse-temurin@sha256:ab7b391fdc06d00856f5fa65c0e6bcc1263327b115dee9fa73234d2d6293922b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339778826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f87af40580a3a0b9578c29b25780cc3661c8e72a51b570ef59a05c998f4ffab`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 00:37:58 GMT
RUN Apply image 10.0.26100.33650
# Wed, 14 Oct 2026 00:18:20 GMT
SHELL [cmd /s /c]
# Wed, 14 Oct 2026 00:19:58 GMT
ENV JAVA_VERSION=jdk-27+35
# Wed, 14 Oct 2026 00:19:59 GMT
ENV JAVA_HOME=C:\openjdk-27
# Wed, 14 Oct 2026 00:19:59 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:20:01 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 14 Oct 2026 00:20:01 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:20:16 GMT
COPY dir:a598b5fc3a93568869369eaabdea66c3c2b0ecde9417552cff3c1df8963b51f7 in C:\openjdk-27 
# Wed, 14 Oct 2026 00:20:21 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 14 Oct 2026 00:20:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fc75d5d958abc5a2294f36186f7c93790e84f49e7d31c08dfc8446cb7703df87`  
		Last Modified: Tue, 13 Oct 2026 22:26:06 GMT  
		Size: 199.9 MB (199871136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5857be0163ceb5a0be4c1dca20aa11b9fab8656bd9f07851b90c6fe2105ecff7`  
		Last Modified: Wed, 14 Oct 2026 00:18:47 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcacddede90a6f87d85aa64bcacb0a2cff1252941294a331088a34cb0c46b9ec`  
		Last Modified: Wed, 14 Oct 2026 00:20:27 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7688701d275b7e9f107d6097a135872edd043bb31d76e9fc3f2c9635bdb8c1`  
		Last Modified: Wed, 14 Oct 2026 00:20:27 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9835e5a1568be50b82bc3dfdbc71fcbfe8ebc63e462bf991b92357a15c802fe9`  
		Last Modified: Wed, 14 Oct 2026 00:20:27 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a740507f7e1154394ee07f222dbd34141a051000531f95daecde62d2a65d9f6`  
		Last Modified: Wed, 14 Oct 2026 00:20:26 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9355f20798386b4a3d301c9f1bc9ab3bbbda521398a5ab65ff13973012a86df3`  
		Last Modified: Wed, 14 Oct 2026 00:20:25 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8867cdb34428daf4c9d2fc526b1ad58c1f91efaebc68349f7184333eb7a0d20b`  
		Last Modified: Wed, 14 Oct 2026 00:20:36 GMT  
		Size: 139.7 MB (139716267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b52bb7c6fdbdbb4d4cc5c0bf84aca69f06c927e43754ab09e3c88f1fdc298a8`  
		Last Modified: Wed, 14 Oct 2026 00:20:26 GMT  
		Size: 112.5 KB (112532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9e12d27231e88eee1b839f34273ea7269dda740d65b34ca07dca9fd50742be`  
		Last Modified: Wed, 14 Oct 2026 00:20:25 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
