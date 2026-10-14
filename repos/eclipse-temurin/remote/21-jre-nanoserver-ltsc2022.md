## `eclipse-temurin:21-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:71748352c01233f5eedb4250df7736c68dbb97f1560672852176c2737de6a795
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `eclipse-temurin:21-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull eclipse-temurin@sha256:52038982363532612dbd846dfefe1bdec5061106a47b1c7bedb331fcd19fe967
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175064688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af307af242a7bef4f0a125e3bdfcb12428e0b2b9067cd697a7f2df315ddb8fb5`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Tue, 13 Oct 2026 23:37:45 GMT
SHELL [cmd /s /c]
# Tue, 13 Oct 2026 23:37:46 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Tue, 13 Oct 2026 23:37:47 GMT
ENV JAVA_HOME=C:\openjdk-21
# Tue, 13 Oct 2026 23:37:48 GMT
USER ContainerAdministrator
# Tue, 13 Oct 2026 23:37:56 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 13 Oct 2026 23:37:56 GMT
USER ContainerUser
# Tue, 13 Oct 2026 23:38:10 GMT
COPY dir:430c09910c856671a7a4bc2d7f37f53b3c92c6e330587a4d530316a31249e48c in C:\openjdk-21 
# Tue, 13 Oct 2026 23:38:14 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849bfb906168eb803a37ff3eda1382b44581a870aece04bf94f939847d4568f7`  
		Last Modified: Tue, 13 Oct 2026 23:38:19 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d22f5ab57037b79ccf4e6f355badc58167a39459f2ebc5e4b113bff7cb78b5`  
		Last Modified: Tue, 13 Oct 2026 23:38:19 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd54744d2974bbedd9e5d989decac381831ea88a53e295b2f8765a27de9710f`  
		Last Modified: Tue, 13 Oct 2026 23:38:19 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4425e08bb447cd83405c54f305cf0cf2bd6882a2952f011e16d3dd8140dccd47`  
		Last Modified: Tue, 13 Oct 2026 23:38:17 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c9dbd81f8093f78a4c09ca39267b4d89b05b14757e65fbdb231daf43ffc418`  
		Last Modified: Tue, 13 Oct 2026 23:38:17 GMT  
		Size: 81.4 KB (81446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d124933417edc896920230a53cbfe2fc15cb825fd5be763ac85dfc0c20ecf25`  
		Last Modified: Tue, 13 Oct 2026 23:38:17 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce048d63117f3333deffdd5827e7c25b6afd116ab977fa9fec9e4af9a56fddb8`  
		Last Modified: Tue, 13 Oct 2026 23:38:23 GMT  
		Size: 49.1 MB (49085111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40b435bd0e0d0d333d5e77e923aa7fd9d47d444f0cb5bde75bc3d4febc45fb1`  
		Last Modified: Tue, 13 Oct 2026 23:38:18 GMT  
		Size: 96.8 KB (96812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
