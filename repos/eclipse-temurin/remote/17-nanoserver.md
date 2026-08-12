## `eclipse-temurin:17-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:10ca1c3bdecef103790d41b4677f8752c2d7bcdf1e4a2be9d42e842c440d5b12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:17-nanoserver` - windows version 10.0.26100.33296; amd64

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

### `eclipse-temurin:17-nanoserver` - windows version 10.0.20348.5499; amd64

```console
$ docker pull eclipse-temurin@sha256:5acb7ddd4d9f35ad5c25e208574deda6d1ea47007104c978cbe799f597d65209
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.1 MB (312064623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:406b822ac371977461fafe56ce5ea552d527dd823250fee53c9af220593f033e`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 19:16:16 GMT
SHELL [cmd /s /c]
# Wed, 12 Aug 2026 19:16:17 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 12 Aug 2026 19:16:17 GMT
ENV JAVA_HOME=C:\openjdk-17
# Wed, 12 Aug 2026 19:16:18 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 19:16:24 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 12 Aug 2026 19:16:24 GMT
USER ContainerUser
# Wed, 12 Aug 2026 19:16:52 GMT
COPY dir:efa343062fcab6068fd499c77aea77fee33bf19a70fc27fbcf8f5891917744d1 in C:\openjdk-17 
# Wed, 12 Aug 2026 19:16:56 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 12 Aug 2026 19:16:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78fbca8673ba30b4ef5308c7b5f26d4cadb46a5778d1cb6aab91ac2acb6a4fc`  
		Last Modified: Wed, 12 Aug 2026 19:17:02 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e3b85702c798f4617c22ab7b0067c91b190a76a64e49f486f670ab2eee8219`  
		Last Modified: Wed, 12 Aug 2026 19:17:02 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e28540dc656aebba56f26af563c407adb204f1099aa9aeac81e80b20c88fb05`  
		Last Modified: Wed, 12 Aug 2026 19:17:02 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05989fb9bf4191950a8463a4754ceb31fd4228f7adc08d76a668cf6b62d8d30`  
		Last Modified: Wed, 12 Aug 2026 19:17:02 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c7a8221a9eea47d02ee9ec2d1fed84bb0e1cef7e778872f165d5c058c7291b`  
		Last Modified: Wed, 12 Aug 2026 19:17:01 GMT  
		Size: 82.0 KB (81960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b23cb5859e6cab58337b53a420ca7f2ca0b4656e1a90861ac6a3540687eaaaed`  
		Last Modified: Wed, 12 Aug 2026 19:17:01 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1d616e83c570d1e5c65c0dd87ca8753f9a2a8b2a2592de0126525c75d4bf02`  
		Last Modified: Wed, 12 Aug 2026 19:17:12 GMT  
		Size: 187.6 MB (187622229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755e7ffd694f28656cd84b2d465aa85014040a301d8b56903fd17db174c055ea`  
		Last Modified: Wed, 12 Aug 2026 19:17:01 GMT  
		Size: 96.2 KB (96175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fc1a4e06998789bea24e274e38f6bf19b78091e1759ad14ca026fc46361a64`  
		Last Modified: Wed, 12 Aug 2026 19:17:01 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
