## `eclipse-temurin:11-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:c81342d2840aa1d4eb821af1d9e1f1b583482917f4c6d484689b565a58d8ee7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `eclipse-temurin:11-nanoserver-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull eclipse-temurin@sha256:dc8ea6399e1acbfe4a4b41d94adbbd078372e88305c1041b3531c93983f70493
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.8 MB (394818346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c74313133762c6c5fd6bc38d07ae7b7b27e545450f17473fd4117add5bef1f96`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 00:37:58 GMT
RUN Apply image 10.0.26100.33650
# Wed, 14 Oct 2026 00:18:38 GMT
SHELL [cmd /s /c]
# Wed, 14 Oct 2026 00:18:39 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Wed, 14 Oct 2026 00:18:40 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 14 Oct 2026 00:18:40 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:18:46 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 14 Oct 2026 00:18:47 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:19:06 GMT
COPY dir:abb22bd7f66d415f872b9b6353d786e1d425603507d47df4b9ec16e5af73f3ec in C:\openjdk-11 
# Wed, 14 Oct 2026 00:19:12 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 14 Oct 2026 00:19:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fc75d5d958abc5a2294f36186f7c93790e84f49e7d31c08dfc8446cb7703df87`  
		Last Modified: Tue, 13 Oct 2026 22:26:06 GMT  
		Size: 199.9 MB (199871136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5951b4dbe186a530121909155d7e89a62c3913ccc53b80a101147f82b2633f25`  
		Last Modified: Wed, 14 Oct 2026 00:19:18 GMT  
		Size: 1.1 KB (1056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7c679f8d54569765d3284b78d1cb6c167f24b109d8bc5289321f3a591061b4`  
		Last Modified: Wed, 14 Oct 2026 00:19:18 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10961d26c66d2b8dc1c830748eb79b1924e9a4e3b8ce4b54de97e65215b14dad`  
		Last Modified: Wed, 14 Oct 2026 00:19:18 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08954959894d66af9291574e77a68c52e43c91a44bc22a7c5839320edfa9c778`  
		Last Modified: Wed, 14 Oct 2026 00:19:18 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2507a7badb788d515c169a7fdc0c5e281f6941dc19011f9ee60882e5007d9d4`  
		Last Modified: Wed, 14 Oct 2026 00:19:17 GMT  
		Size: 78.3 KB (78274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0794c8d6edeb091b9f3fc44eb0f990feee7c5a7858f4048203dbbebb847ed2e9`  
		Last Modified: Wed, 14 Oct 2026 00:19:17 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf8c5d789df7850c8adbb34bbf21a72cac818eeb975477a42b2c3db5c99573f`  
		Last Modified: Wed, 14 Oct 2026 00:19:27 GMT  
		Size: 194.8 MB (194765835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32f37fef6e7facbc87bc09ad2a7c7ebccc216b8bc419f99dd1330c96c1de3c1`  
		Last Modified: Wed, 14 Oct 2026 00:19:17 GMT  
		Size: 96.8 KB (96825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd19418eb07bd617936adae362e59d9b9215416d32ec922ca1a006a681e392f`  
		Last Modified: Wed, 14 Oct 2026 00:19:17 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
