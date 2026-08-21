## `eclipse-temurin:25-jdk-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:1ce390225874b6426dcdf7206cd6f732f05d6281a1a4e258a5b0d97abd767b5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:25-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:45c48b457db480d9eb561aa0f892bdc46e47635ae7079d53df114cfb48c6914b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.7 MB (335722548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33f5aa199b98107ab217eb65960dc17b841b6cd26063ff939832a32289db56e6`
-	Default Command: `["jshell"]`
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
# Fri, 21 Aug 2026 18:50:44 GMT
COPY dir:f49f99ba2301be176534e3be9f0bbf4d2f5ec76969021dab07ed45ef4d729348 in C:\openjdk-25 
# Fri, 21 Aug 2026 18:50:48 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Fri, 21 Aug 2026 18:50:49 GMT
CMD ["jshell"]
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
	-	`sha256:a11dc02750ee62bfb20a6eb62bdd0fb863cd0f907dee3bf32b4b3886ec7ffff6`  
		Last Modified: Fri, 21 Aug 2026 18:51:04 GMT  
		Size: 138.1 MB (138050950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0a7375679364b452411fef56d69210e9a6950ebfc07ff877db5e2b37b9a3c3`  
		Last Modified: Fri, 21 Aug 2026 18:50:53 GMT  
		Size: 111.9 KB (111885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf60d5e5eef0e06ca0517c4c5cb805542497493a7eb9966731887e7d7ec9db8`  
		Last Modified: Fri, 21 Aug 2026 18:50:53 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
