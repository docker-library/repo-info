## `openjdk:27-ea-34-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:78badf0de1856c63eaacda81576865ed9025b0390b9560747ec6ea4b73153ff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `openjdk:27-ea-34-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull openjdk@sha256:3abb3799142c1efbc522864e8e18e27a26730a34bf2af43a02322ed08e4ed447
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.6 MB (347593856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e779bacbb3af28276da4e9e92d22f0de46b225050d427d6c9fa6e86aee389d1`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Wed, 12 Aug 2026 18:17:00 GMT
SHELL [cmd /s /c]
# Wed, 12 Aug 2026 18:17:01 GMT
ENV JAVA_HOME=C:\openjdk-27
# Wed, 12 Aug 2026 18:17:01 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:17:03 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Wed, 12 Aug 2026 18:17:04 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:17:04 GMT
ENV JAVA_VERSION=27-ea+34
# Wed, 12 Aug 2026 18:17:59 GMT
COPY dir:eebf7e7be2a62881c3e9485abbaedba33c046addf3a728d1f7dabab93427d223 in C:\openjdk-27 
# Wed, 12 Aug 2026 18:18:04 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Wed, 12 Aug 2026 18:18:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0933a83c97c1ed20fd223db774d9f95b66ca853a9fc676228fddaa3edd35d9d8`  
		Last Modified: Wed, 12 Aug 2026 18:18:10 GMT  
		Size: 1.1 KB (1085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbc88ff23da3054cf5dda0805156f280eb7c0cad3d6217893f3efc056dbfcd3`  
		Last Modified: Wed, 12 Aug 2026 18:18:10 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b13b69f3f9f137ce991e9c986c94b88aaa1bd1f6f1892bc1d64590aafd8fa56`  
		Last Modified: Wed, 12 Aug 2026 18:18:10 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3f9e45632cf547ae6961cc2c53c028268f21a821708af89ace9c5387301632`  
		Last Modified: Wed, 12 Aug 2026 18:18:10 GMT  
		Size: 79.0 KB (78984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81eaa37905dccae0c42822fbf1361f9b1ef06a4d5e83ac0608f11b11db8b9bd`  
		Last Modified: Wed, 12 Aug 2026 18:18:08 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0ec52c3c7517adebb050cc922ba709d1c41f15d98a175c76973e3ca6687f6c`  
		Last Modified: Wed, 12 Aug 2026 18:18:08 GMT  
		Size: 1.1 KB (1058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6b841d8684d2c66284513503f0e3e6da0c264e509060d4cdcba39f918b495a`  
		Last Modified: Wed, 12 Aug 2026 18:18:21 GMT  
		Size: 223.1 MB (223143141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f499e90b2d85566ea6f4d20347e5dfbd2c32259364a1997c72a56c7c9f5a4aa`  
		Last Modified: Wed, 12 Aug 2026 18:18:08 GMT  
		Size: 107.4 KB (107418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7095355d2efe3daa8764c11d9b2d34bfa7694958584fb5b912f03ead862d66d5`  
		Last Modified: Wed, 12 Aug 2026 18:18:08 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
