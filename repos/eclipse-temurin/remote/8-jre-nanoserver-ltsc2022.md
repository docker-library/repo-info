## `eclipse-temurin:8-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:aedaa3a0dfe3608f12ed87a8eb5fb35ac54327ebaba7f42f277e5a8c5b0d2eea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `eclipse-temurin:8-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull eclipse-temurin@sha256:08a58ce2bbabcc5c83bf8f58b51eb3e250edbb33fd45e24b1075ce6d862f4524
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.3 MB (164274313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0e0413523af0214e2829b105eca3aba02acd8633da615d9c13d10a88a0607aa`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:52:11 GMT
SHELL [cmd /s /c]
# Wed, 15 Jul 2026 23:52:12 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 15 Jul 2026 23:52:12 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 15 Jul 2026 23:52:13 GMT
USER ContainerAdministrator
# Wed, 15 Jul 2026 23:52:19 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 15 Jul 2026 23:52:20 GMT
USER ContainerUser
# Wed, 15 Jul 2026 23:52:30 GMT
COPY dir:deea9cd49fa78c2b910137007aed467626dd46389507789da1635093de3df40f in C:\openjdk-8 
# Wed, 15 Jul 2026 23:52:33 GMT
RUN echo Verifying install ...     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce45b840362ee3d191b57646cd64cfcd28a645fae617e701e1264ccc6e0968fd`  
		Last Modified: Wed, 15 Jul 2026 23:52:39 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e7d406a2671224964af9b5522de9d097d4d6c7288166e529ccdac3602c48a2`  
		Last Modified: Wed, 15 Jul 2026 23:52:39 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f64d42503f7612d17fe35a7c6e39db00de7de0053b0290bc72e77de6a29bb3`  
		Last Modified: Wed, 15 Jul 2026 23:52:39 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadcde5bdf6866725b6242fdf92cc2f9caa0034d82130d585bf091950cc60524`  
		Last Modified: Wed, 15 Jul 2026 23:52:37 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868069c5c08cc217c0fde412ef4b3bf0c8723c301ed8bddd776f2346a3729288`  
		Last Modified: Wed, 15 Jul 2026 23:52:37 GMT  
		Size: 81.6 KB (81636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815e08346dff9773a7ee3074077d85b8095948fbc76248426f9af2ced797edb9`  
		Last Modified: Wed, 15 Jul 2026 23:52:37 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad8ac5fbc7280bc7dbdad165dea776846802ecf1dc33d0057c5bd24fe7cfffd`  
		Last Modified: Wed, 15 Jul 2026 23:52:41 GMT  
		Size: 40.0 MB (39988182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832f9d1e7b809a9a4d5ea93648800b18ec2e9722929150012dc4372eeb5466b2`  
		Last Modified: Wed, 15 Jul 2026 23:52:37 GMT  
		Size: 96.1 KB (96132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
