## `eclipse-temurin:25-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:57dfdf2cd5fd548b9b59c65c071af1bf3881947627bf9892b7c97fe5a0e143bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:25-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:6afb8aeddc53bec42388b92048a93d6dcc1a10aa5f2795b8c24b2c97fa41d89f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256290776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a02fbab82587858948bf6f4b424007c6331a88211ba83dc726d4e91996b9824`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Fri, 21 Aug 2026 18:35:46 GMT
SHELL [cmd /s /c]
# Fri, 21 Aug 2026 18:35:47 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:35:48 GMT
ENV JAVA_HOME=C:\openjdk-25
# Fri, 21 Aug 2026 18:35:48 GMT
USER ContainerAdministrator
# Fri, 21 Aug 2026 18:35:54 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 21 Aug 2026 18:35:54 GMT
USER ContainerUser
# Fri, 21 Aug 2026 18:36:12 GMT
COPY dir:ce1ecffaedce91d5c2314508cf903f98090db1180f9359bfd2dcf99410a1765d in C:\openjdk-25 
# Fri, 21 Aug 2026 18:36:19 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586c0bd6da21d59c6dadc0b674d3317647b0f75e44af94187d52d3c802337567`  
		Last Modified: Fri, 21 Aug 2026 18:36:24 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48d033bd8b2cfa4e81db479aa9da503f22b3708a3c56bc1bf3237466f001ea1`  
		Last Modified: Fri, 21 Aug 2026 18:36:24 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0180098a1370151d457362c43c9e732fabe05a39903f51b88ff61a32cda13eb5`  
		Last Modified: Fri, 21 Aug 2026 18:36:24 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e811c28912eccd49f2d95d030fc4d55b890cbbd3f1e106f8b9f3e01011952b2`  
		Last Modified: Fri, 21 Aug 2026 18:36:22 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66be86bf852910541c13b5c8e79f9f9169fdeed5bc965a67a7b3461203e22989`  
		Last Modified: Fri, 21 Aug 2026 18:36:23 GMT  
		Size: 71.3 KB (71276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb55dd39291bb6f6a1e4e2e07f1177c25b3abf365f7c7b1708b1c33a57e32cb`  
		Last Modified: Fri, 21 Aug 2026 18:36:22 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:419bf2a6a884f610b1c8e3fba5ba2f8d48671fcf004bd0d0deda5358a281e52d`  
		Last Modified: Fri, 21 Aug 2026 18:36:29 GMT  
		Size: 58.6 MB (58620684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890b95c422a6f599d6ec33ba137f7d1ccce0f7c4c900d0c961285877aa20778f`  
		Last Modified: Fri, 21 Aug 2026 18:36:23 GMT  
		Size: 111.4 KB (111417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
