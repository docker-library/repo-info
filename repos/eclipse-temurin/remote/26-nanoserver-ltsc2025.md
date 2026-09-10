## `eclipse-temurin:26-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:42157c96d9166cb370b3040f41259534f2f25f4f4c4716856c5f8c6b429ed483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `eclipse-temurin:26-nanoserver-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:d330bc004f09b7851fa200b556ece09222158a746675e452de75c4e1a74bef7b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.2 MB (339160547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ffee60f5e9535bda2cec1b933a9796fade1c422b23c4fb8a990f547bf2dcea3`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Wed, 09 Sep 2026 23:25:01 GMT
SHELL [cmd /s /c]
# Wed, 09 Sep 2026 23:25:01 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Wed, 09 Sep 2026 23:25:02 GMT
ENV JAVA_HOME=C:\openjdk-26
# Wed, 09 Sep 2026 23:25:02 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:25:04 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 09 Sep 2026 23:25:06 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:25:30 GMT
COPY dir:41be7f046b6b23393a5a8f45ec96dd32a1839da8d4fa6cfdff0b408563d7d9a9 in C:\openjdk-26 
# Wed, 09 Sep 2026 23:25:36 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 09 Sep 2026 23:25:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d4eb4e43f18bcf3d11caf2765340edda5d7e221469f226a2b8b39bd33e460b`  
		Last Modified: Wed, 09 Sep 2026 23:25:42 GMT  
		Size: 1.1 KB (1053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d138816df1dd7f12bf8cda96ccf50855b7e3007bd79463df5a5b4c8029108a`  
		Last Modified: Wed, 09 Sep 2026 23:25:42 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68713618a349aa567682b8eb4b58e5282f2bd7e2ab9f18d7083a9d9e037419ed`  
		Last Modified: Wed, 09 Sep 2026 23:25:42 GMT  
		Size: 1.0 KB (1029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b55fcc01c471a19bd9aff89b4fc9e6ac08c8d1a7ca4fe058fd8b8dfa3d518a1`  
		Last Modified: Wed, 09 Sep 2026 23:25:41 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2ec6ab39d71299af82d17e3d421d2deeef59edbad0555ae4ce8a88949e5253`  
		Last Modified: Wed, 09 Sep 2026 23:25:40 GMT  
		Size: 72.7 KB (72719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc2aace700d624167087274b652c63bbd3bce8179461654a1949634fae20a46`  
		Last Modified: Wed, 09 Sep 2026 23:25:40 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea19da839a82b7b88f7e5dc1404b62437208094cacaddca7dc476a7f678b6e9b`  
		Last Modified: Wed, 09 Sep 2026 23:25:51 GMT  
		Size: 141.3 MB (141317599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d023e810fdf1961f8d1cf89369c4a75091ca44d097ab59f70403b872493c98`  
		Last Modified: Wed, 09 Sep 2026 23:25:40 GMT  
		Size: 113.5 KB (113463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd6e1d1727d0eb7d15da0ebe54e10ab290a66c6cf3ae5d5b568e52926fd896e`  
		Last Modified: Wed, 09 Sep 2026 23:25:40 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
