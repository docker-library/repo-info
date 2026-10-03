## `eclipse-temurin:27_35-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:7414ab41dc27df30be32806c0f2897b3010e9ac861317efdb71be7932e11073d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:27_35-jre-nanoserver` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:c0906e3f4d664e003b67d64b331d305fa0c441230ae2214d657b704c9a87558d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257122174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08585e6c3f5970de5dcb2555356e0d547cac113574e0dde41e0c20cd710d4580`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Sat, 03 Oct 2026 01:08:18 GMT
SHELL [cmd /s /c]
# Sat, 03 Oct 2026 01:08:19 GMT
ENV JAVA_VERSION=jdk-27+35
# Sat, 03 Oct 2026 01:08:19 GMT
ENV JAVA_HOME=C:\openjdk-27
# Sat, 03 Oct 2026 01:08:19 GMT
USER ContainerAdministrator
# Sat, 03 Oct 2026 01:08:32 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Sat, 03 Oct 2026 01:08:32 GMT
USER ContainerUser
# Sat, 03 Oct 2026 01:08:56 GMT
COPY dir:e51710ef99181d5e040206544472f4518593d33319e3c793d41826289f55616b in C:\openjdk-27 
# Sat, 03 Oct 2026 01:09:02 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8928969edf20c57189c0e01f31cefab5e63dd5256b66128caac1de17c6f934b`  
		Last Modified: Sat, 03 Oct 2026 01:09:07 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13509f017496a63afe105d520fd796fbdcda6c2af59b38ba2d2a259a48d2d6c4`  
		Last Modified: Sat, 03 Oct 2026 01:09:07 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5a598fd4dde72bb5eb501917597e264a565d834cc596c4662a48243c3ac711`  
		Last Modified: Sat, 03 Oct 2026 01:09:07 GMT  
		Size: 1.1 KB (1058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cd2c93e57726a3743cb2c6c1799fbc3b6ee09468b580fa63f68b687c186bb15`  
		Last Modified: Sat, 03 Oct 2026 01:09:05 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43cfec7d194a25bedb25833bc0fdd6ad16272ae0c85256efc8ffbe211017cabf`  
		Last Modified: Sat, 03 Oct 2026 01:09:06 GMT  
		Size: 77.2 KB (77193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1e1415fe49bcc2ce11f81d8a5a3ee511130604e9d437d88b22b7c609c783dc`  
		Last Modified: Sat, 03 Oct 2026 01:09:06 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5d4c20cd2309f92cdfd0978ac669cbc00bb5be085aa847be4d7ae197aebf28`  
		Last Modified: Sat, 03 Oct 2026 01:09:12 GMT  
		Size: 59.3 MB (59311558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296257e575605161fbd95e2c81e560e80e9760f52a2b84bb717022cabb7db7d`  
		Last Modified: Sat, 03 Oct 2026 01:09:06 GMT  
		Size: 77.7 KB (77655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:27_35-jre-nanoserver` - windows version 10.0.20348.5622; amd64

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
