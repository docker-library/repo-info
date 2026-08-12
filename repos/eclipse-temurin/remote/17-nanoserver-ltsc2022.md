## `eclipse-temurin:17-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:304e7db69e35d082786bb9a2ce92ea2906f00ffcf03a9d74b54635ef195f5517
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `eclipse-temurin:17-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

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
