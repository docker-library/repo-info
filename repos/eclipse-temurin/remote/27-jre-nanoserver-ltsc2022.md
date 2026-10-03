## `eclipse-temurin:27-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:8f66a0253d8610265d06a9b02f20f462d1b045c21f86e9d878b22466cbf7a4b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:27-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:bc55c0bf83c0c2fa753e12bbe43e6607ad16ed91e676e8af11934759eda27763
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 MB (184133646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:222be870dabe7a56e4b90f4ec3dda1c2ccee0446421c342f76287c3f1f55a011`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Sat, 03 Oct 2026 01:08:15 GMT
SHELL [cmd /s /c]
# Sat, 03 Oct 2026 01:08:16 GMT
ENV JAVA_VERSION=jdk-27+35
# Sat, 03 Oct 2026 01:08:16 GMT
ENV JAVA_HOME=C:\openjdk-27
# Sat, 03 Oct 2026 01:08:17 GMT
USER ContainerAdministrator
# Sat, 03 Oct 2026 01:08:28 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Sat, 03 Oct 2026 01:08:28 GMT
USER ContainerUser
# Sat, 03 Oct 2026 01:09:46 GMT
COPY dir:e51710ef99181d5e040206544472f4518593d33319e3c793d41826289f55616b in C:\openjdk-27 
# Sat, 03 Oct 2026 01:09:50 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6078d2221d30a73e888e5e4465330851a2ab63a631e7e827c6d675f1256d665e`  
		Last Modified: Sat, 03 Oct 2026 01:09:13 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afdf231543ae86564c553482f2ae6dbaea17c1f3a84fce73aa6a91cfd4fb7cb4`  
		Last Modified: Sat, 03 Oct 2026 01:09:13 GMT  
		Size: 1.0 KB (1030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:282de4c7abeec4a42300046f43a528f20eb071418df9ed404ff61f81a21dbdb1`  
		Last Modified: Sat, 03 Oct 2026 01:09:13 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19423acb12468825fe5f810bcf7475529f67184c21427d721121f9a291ca2c6a`  
		Last Modified: Sat, 03 Oct 2026 01:09:13 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf41106202cb29c0c1a8ee290f69cfbc5c90c85447ef688601f86aa538efd1b`  
		Last Modified: Sat, 03 Oct 2026 01:09:11 GMT  
		Size: 81.5 KB (81550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc4b4b29ca36b1007d0c09d8c23094eb65baeb2d3e0546b8f0b96c1000eeb30`  
		Last Modified: Sat, 03 Oct 2026 01:09:11 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6583c61cf5ba7c029aeeec5b47df86e08e9d6594ddbb8b2d1d2939bdc6d52057`  
		Last Modified: Sat, 03 Oct 2026 01:10:01 GMT  
		Size: 59.3 MB (59311616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c522a5c617dc547e5928d762c63d95364f4f3a94d0c0fd5ad212c9f6a31792`  
		Last Modified: Sat, 03 Oct 2026 01:09:54 GMT  
		Size: 97.8 KB (97826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
