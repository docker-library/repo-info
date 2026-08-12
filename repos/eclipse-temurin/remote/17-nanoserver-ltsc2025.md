## `eclipse-temurin:17-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:2180d741011abbff7738b70bf46c17039ca363edfdc1b0535b66e6bfec5c2e39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:17-nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:08ce73332cf43dcbcc21b1412ec3ffc367202691ec6e19164ee0e618c52782d7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.3 MB (385283960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93e69a373a570d16b5b531b1e8ffc4739971db92f27643d9c901c605a9e2aaf8`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Wed, 12 Aug 2026 18:20:28 GMT
SHELL [cmd /s /c]
# Wed, 12 Aug 2026 18:20:29 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 12 Aug 2026 18:20:30 GMT
ENV JAVA_HOME=C:\openjdk-17
# Wed, 12 Aug 2026 18:20:30 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:20:37 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 12 Aug 2026 18:20:38 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:21:15 GMT
COPY dir:efa343062fcab6068fd499c77aea77fee33bf19a70fc27fbcf8f5891917744d1 in C:\openjdk-17 
# Wed, 12 Aug 2026 18:21:21 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 12 Aug 2026 18:21:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ada34b2585d873ee588e26c181f0691191760d44e4867dbef05c28ba93d26c9`  
		Last Modified: Wed, 12 Aug 2026 18:21:27 GMT  
		Size: 1.0 KB (1028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8993aadde1218dd8a6ecec81a3b9a5fa9c6c2f4555a65ef86151fdfb42fb898`  
		Last Modified: Wed, 12 Aug 2026 18:21:27 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5acb3c13982e1def7a9e06ffb96ae857e44a95e3e8865aa80fdd9401c68b7d79`  
		Last Modified: Wed, 12 Aug 2026 18:21:27 GMT  
		Size: 1.1 KB (1056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f23a82b913d6b97ded58f0405dc8739b7bba5547008dd5819d15e77550b4bc2`  
		Last Modified: Wed, 12 Aug 2026 18:21:27 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b099170a2880058c6598bb73491cce965bbf3a7fca6f9dff1cfae7b7705726ce`  
		Last Modified: Wed, 12 Aug 2026 18:21:25 GMT  
		Size: 70.8 KB (70819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedbfa9bda45b394a1ca8225c9081569135bc30f2169e0a51e8160fbfdd0b2a8`  
		Last Modified: Wed, 12 Aug 2026 18:21:25 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483ae8ff8054a68eef5bd40852df752f8257c204dabc65ac74fec12eba0a0e67`  
		Last Modified: Wed, 12 Aug 2026 18:21:36 GMT  
		Size: 187.6 MB (187621922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b216d484c2f521b1faf59ddf64337b80954e005154d1eb3d260d0d3b331a348`  
		Last Modified: Wed, 12 Aug 2026 18:21:25 GMT  
		Size: 102.8 KB (102826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2edb62580fb8ffaa78ac46cad7265f147e235414f98b87143ca5c61f358bf12`  
		Last Modified: Wed, 12 Aug 2026 18:21:25 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
