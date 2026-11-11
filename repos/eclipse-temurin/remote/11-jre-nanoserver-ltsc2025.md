## `eclipse-temurin:11-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:f80fd318d28fb45b0d1d0421c7f53598da891ab07e51cffcefa929f66325c5e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `eclipse-temurin:11-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull eclipse-temurin@sha256:ac1fdc3cc9fd8ad76e211174776430f63d66cb43d65f3926759c15861ff9c9c5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.2 MB (244173392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:806d3ec9457b166e2e6d6bc0d13eec4be4416b4f3833e3b5d896f74e1a4f1c73`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 13:08:00 GMT
RUN Apply image 10.0.26100.33822
# Wed, 11 Nov 2026 22:46:34 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:46:36 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 22:46:37 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 11 Nov 2026 22:46:38 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:46:52 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:46:53 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:47:28 GMT
COPY dir:93737fc4001a1f9c02514d128bafe582bbc15be9632d55eacb345ae32db307ef in C:\openjdk-11 
# Wed, 11 Nov 2026 22:47:36 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:8395a5062b63680acee7661df668d9bf81cca0fdec76ab1b29afd6ab290bf2c0`  
		Last Modified: Tue, 10 Nov 2026 23:37:33 GMT  
		Size: 200.2 MB (200242324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b35d575d7fa1268ba330b78527c1c11203edac3ee48771d98f524da00283425`  
		Last Modified: Wed, 11 Nov 2026 22:47:42 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f54b6650ecf433770595b78fcb70865c0ca7b48ee58d3dcbcff771599c7e97`  
		Last Modified: Wed, 11 Nov 2026 22:47:42 GMT  
		Size: 1.1 KB (1057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafdc0ccc79aac087120635056d288a4fd0d96cbfe54d4ddedc7dc34d80a735b`  
		Last Modified: Wed, 11 Nov 2026 22:47:42 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1b97192862b339f37134d6e002e08902c11561aa5233709a23d8496ad371de`  
		Last Modified: Wed, 11 Nov 2026 22:47:41 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98d23f849b1daa94bcf9a5f548479bf2645b896b2cb75a6ee7f275cd0442443`  
		Last Modified: Wed, 11 Nov 2026 22:47:41 GMT  
		Size: 69.8 KB (69781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f900a1b2f1d9fa143faf649f014aaba1c94426d82d3e0069aa293b1a882261`  
		Last Modified: Wed, 11 Nov 2026 22:47:41 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0019f61001af10db777a9da6fd0d7ee6d388d7015b7c028d3ca541ac1e811330`  
		Last Modified: Wed, 11 Nov 2026 22:47:46 GMT  
		Size: 43.7 MB (43743995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b36286225c346a8a9c7c3f096c610883e416510deefb439e276d2643d92590`  
		Last Modified: Wed, 11 Nov 2026 22:47:41 GMT  
		Size: 112.0 KB (112048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
