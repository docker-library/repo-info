## `eclipse-temurin:17-jdk-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:060185c67dbdb8a9efca6106fd04814e26bcba3a155239e66761d2e69c2a5bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `eclipse-temurin:17-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull eclipse-temurin@sha256:44bbd60d1a708f5090d2597428c33662d7ce75de86e87fe63557c66dea1f4b47
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.9 MB (311927955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a9b2d80a81a4dc2b8a8d4cf448bb2aa9882e41bf8e3b562de8d4fe3932f75a`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:53:13 GMT
SHELL [cmd /s /c]
# Wed, 15 Jul 2026 23:53:13 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 15 Jul 2026 23:53:13 GMT
ENV JAVA_HOME=C:\openjdk-17
# Wed, 15 Jul 2026 23:53:13 GMT
USER ContainerAdministrator
# Wed, 15 Jul 2026 23:53:15 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 15 Jul 2026 23:53:16 GMT
USER ContainerUser
# Wed, 15 Jul 2026 23:53:21 GMT
COPY dir:efa343062fcab6068fd499c77aea77fee33bf19a70fc27fbcf8f5891917744d1 in C:\openjdk-17 
# Wed, 15 Jul 2026 23:53:26 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 15 Jul 2026 23:53:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c923e861744d51db8e5f38618bf39506c0a7f48d9861a8ca62ac92d7bf02bf1e`  
		Last Modified: Wed, 15 Jul 2026 23:53:33 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d659ad4520b25b4a247b015d10a8e3e3db9646de855abeecddaac6b2f952dc`  
		Last Modified: Wed, 15 Jul 2026 23:53:33 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37bb709119c5aba6fc4f9f14965c9a647e0e315493830003f04d2ed9aa0616c2`  
		Last Modified: Wed, 15 Jul 2026 23:53:33 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf33608f8aa68d7223d350245fe3db1a378d2813391ebfcc1a73bcb6ee65cc3`  
		Last Modified: Wed, 15 Jul 2026 23:53:33 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a7c3e420d6a486d600480a86331eac7e6e54c8914b28bc9bc7b035ed189ac2`  
		Last Modified: Wed, 15 Jul 2026 23:53:31 GMT  
		Size: 78.5 KB (78457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaca69ec5cb2c721e8b3b5032996073636e0ac2b254f311e47b1c6dbb9e089ef`  
		Last Modified: Wed, 15 Jul 2026 23:53:31 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50121e025649d4ea8adce5e98209beca2a5771d5d1f4ae3c4ea50f043ca274f6`  
		Last Modified: Wed, 15 Jul 2026 23:53:41 GMT  
		Size: 187.6 MB (187621964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d76e9d0c95f3c9a376c5e4c9dbb7328c0c2b4bf5b26fea4a30188df9ca070f`  
		Last Modified: Wed, 15 Jul 2026 23:53:31 GMT  
		Size: 118.1 KB (118072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19faa63c5961bf18da8a56a7fab43551bc15d9dc3d4a6f8806b2d3f2dc6ffd04`  
		Last Modified: Wed, 15 Jul 2026 23:53:31 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
