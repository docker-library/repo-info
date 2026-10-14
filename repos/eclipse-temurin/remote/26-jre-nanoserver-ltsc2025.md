## `eclipse-temurin:26-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:03b10dffe0f18e47fba23e5b9bf93ebfd9e7d24270dfcdd5c63aa1414f12048d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `eclipse-temurin:26-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull eclipse-temurin@sha256:cbc2e700c4d83deea1b50af9f56993144c9a987a49de213773aaa0c3a1945cfe
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.3 MB (260305327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eaf517c442b483087e05f93b8f7574c8346a3eb78c32f422dae8b7a51e4de5d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 00:37:58 GMT
RUN Apply image 10.0.26100.33650
# Wed, 14 Oct 2026 00:19:41 GMT
SHELL [cmd /s /c]
# Wed, 14 Oct 2026 00:19:41 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Wed, 14 Oct 2026 00:19:42 GMT
ENV JAVA_HOME=C:\openjdk-26
# Wed, 14 Oct 2026 00:19:42 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:19:44 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 14 Oct 2026 00:19:44 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:19:57 GMT
COPY dir:4fa11c2d1d3954c333627983ea16adf3126c426e2101995a1de119866b2233a8 in C:\openjdk-26 
# Wed, 14 Oct 2026 00:20:02 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:fc75d5d958abc5a2294f36186f7c93790e84f49e7d31c08dfc8446cb7703df87`  
		Last Modified: Tue, 13 Oct 2026 22:26:06 GMT  
		Size: 199.9 MB (199871136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9b3d1df1de7329878c01d69535372249465c01853380f64ab863157359bff2`  
		Last Modified: Wed, 14 Oct 2026 00:20:08 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bbea7f7c5a8b40ed85f937266b265121bd88764d71cff40ec1a633dd57f99a9`  
		Last Modified: Wed, 14 Oct 2026 00:20:07 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c1a0ab660770c1aeffc64c49398e45ca884b9d6ce136179b0c8eddef17bc69`  
		Last Modified: Wed, 14 Oct 2026 00:20:07 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce5bf322089b6397c46a28aadbe60fe031cea62b7a055481497cba2f9a7fe165`  
		Last Modified: Wed, 14 Oct 2026 00:20:06 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e071b4faa47e2fc9a3bd237a078ef9c2c9bf72973846467767bafcb20bc59919`  
		Last Modified: Wed, 14 Oct 2026 00:20:06 GMT  
		Size: 72.5 KB (72452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693845b25479efc4a911729d61bae13eac268e7be4824a12b1da8e4536d31ba9`  
		Last Modified: Wed, 14 Oct 2026 00:20:06 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d0549067247c77a729f29773aadc9e28bdc8642094a017b8ce6b95fb10652f`  
		Last Modified: Wed, 14 Oct 2026 00:20:13 GMT  
		Size: 60.2 MB (60244116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abedc16ef11b1fa701e5ff1c0ab958a518ec545b786a12882ddcb6b4411ab10`  
		Last Modified: Wed, 14 Oct 2026 00:20:06 GMT  
		Size: 112.4 KB (112436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
