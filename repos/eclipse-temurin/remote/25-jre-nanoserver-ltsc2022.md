## `eclipse-temurin:25-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:c2d2955145ee03c17980e95731e5c4fee0e3a7c1ed405f4a997ac644bcceeb0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:25-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:470375a02d9a80d8a6febfcb666af068d4be4970ad5a38d998914337d917c7ae
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.4 MB (183431735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d1b5dde995e3bb22c1048e46d6ce307888208613d10660a8707ae2f1150a5b5`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:20:54 GMT
SHELL [cmd /s /c]
# Wed, 09 Sep 2026 23:22:14 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Wed, 09 Sep 2026 23:22:14 GMT
ENV JAVA_HOME=C:\openjdk-25
# Wed, 09 Sep 2026 23:22:15 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:22:16 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 09 Sep 2026 23:22:16 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:22:20 GMT
COPY dir:ce1ecffaedce91d5c2314508cf903f98090db1180f9359bfd2dcf99410a1765d in C:\openjdk-25 
# Wed, 09 Sep 2026 23:22:23 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc280a6510bdc979b34bd6dcd8e970e856a223ec67daa4122864e326854eff4`  
		Last Modified: Wed, 09 Sep 2026 23:21:08 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640e301ea24a66b6197d2084c27bd8489de050d70a9d5fccf5960620096f5456`  
		Last Modified: Wed, 09 Sep 2026 23:22:29 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93982217b94f751ce6823c8bc705df4f9025dc19b43f3fef7d1c437116c06ded`  
		Last Modified: Wed, 09 Sep 2026 23:22:29 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d12f1c0eda7f30ac6eca66e0688c4f5796f3cb1964f5eeaa8968a4efbace4cb`  
		Last Modified: Wed, 09 Sep 2026 23:22:27 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfae3bb0ef1f32e0cb7d4434848c426c617445e138a3fb7142f2bbc4f8b407ab`  
		Last Modified: Wed, 09 Sep 2026 23:22:27 GMT  
		Size: 77.4 KB (77395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0204a52d11b4ad71d04e741893e7b804fbf857be4a06c2cf030007761fc84c`  
		Last Modified: Wed, 09 Sep 2026 23:22:27 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef43d19139c5b164b04595b8f06e58132ca40148fc533fbe580354e7727cf50`  
		Last Modified: Wed, 09 Sep 2026 23:22:35 GMT  
		Size: 58.6 MB (58620771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4334273341c9d3d97da348a8cc703143e5b0436b0dc8634c8b3e233142ead32`  
		Last Modified: Wed, 09 Sep 2026 23:22:27 GMT  
		Size: 90.9 KB (90884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
