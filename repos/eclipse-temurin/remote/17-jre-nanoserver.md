## `eclipse-temurin:17-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:76d684cc5b182429f89df0b33b690cc8a6149b2f589d93a138adf83d6a72d64c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33828; amd64
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:17-jre-nanoserver` - windows version 10.0.26100.33828; amd64

```console
$ docker pull eclipse-temurin@sha256:76a3043204d993680056ca5d9dcd9a416fb70f43fbca2cd1a9779ecd09efeb47
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.3 MB (244339892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d81040b257b7fc02231804a26c111b085a18f303ce34ec238384ae8a096262`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Wed, 11 Nov 2026 22:43:48 GMT
RUN Apply image 10.0.26100.33828
# Fri, 20 Nov 2026 18:10:28 GMT
SHELL [cmd /s /c]
# Fri, 20 Nov 2026 18:22:36 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 18:22:36 GMT
ENV JAVA_HOME=C:\openjdk-17
# Fri, 20 Nov 2026 18:22:36 GMT
USER ContainerAdministrator
# Fri, 20 Nov 2026 18:22:38 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 20 Nov 2026 18:22:39 GMT
USER ContainerUser
# Fri, 20 Nov 2026 18:22:49 GMT
COPY dir:c1db964b9d9ad1cdad7b409fe6124744d4508a84df92d4def751b6d48c636c0f in C:\openjdk-17 
# Fri, 20 Nov 2026 18:22:52 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:6ba6a8d6630dc641648821a651879fd111e21b736d72f09f1eabafe7a0e18a9a`  
		Last Modified: Fri, 13 Nov 2026 21:31:52 GMT  
		Size: 200.2 MB (200239817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4a1b03cc17a55620ef0e29b2eafc14f2d9d621a609da1ac9be81a4c0895af3`  
		Last Modified: Fri, 20 Nov 2026 18:11:01 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05194f504361aacb91903241b14a6bcf8e09868134bddb7ce1f9d5b73bc92903`  
		Last Modified: Fri, 20 Nov 2026 18:22:57 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c37e754475454aa62faf383dcbc9a0ffc94516c7903d8404ac43451f06d1fb`  
		Last Modified: Fri, 20 Nov 2026 18:22:57 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c52a556e4fb387c4e8c29d109f5733f78c9437ccad6a3c8202e8edaf0e0ce0cc`  
		Last Modified: Fri, 20 Nov 2026 18:22:56 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2478134d22a4645fdcc180e6f69670bc09dd084bf446d43023887e799812917a`  
		Last Modified: Fri, 20 Nov 2026 18:22:56 GMT  
		Size: 72.6 KB (72640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81dc1e22365abe7cf5d1bff032022f8bfc5aa9adcb16dded0ee9114e93e2c4ca`  
		Last Modified: Fri, 20 Nov 2026 18:22:56 GMT  
		Size: 1.1 KB (1052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2e742932092712c293c6bc908f9513242bad24dd9f0d1e1cee16a168222d07`  
		Last Modified: Fri, 20 Nov 2026 18:23:01 GMT  
		Size: 43.9 MB (43936160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc4c681d539131b9f7716eb64fa7fc74b2a0187c43dde7831daf847060b2b0a`  
		Last Modified: Fri, 20 Nov 2026 18:22:56 GMT  
		Size: 86.0 KB (86005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:17-jre-nanoserver` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:b2afc659fd24bf755e2dc687678b47d10318fab314b67a0ce3646a5c056d3250
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.4 MB (170367004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e14cf5523243bf58d6f8a1e07fc8ccc875a03304dcf1591beceab2d006ecaf`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Thu, 12 Nov 2026 02:20:28 GMT
RUN Apply image 10.0.20348.5873
# Fri, 20 Nov 2026 18:10:23 GMT
SHELL [cmd /s /c]
# Fri, 20 Nov 2026 18:22:49 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 18:22:50 GMT
ENV JAVA_HOME=C:\openjdk-17
# Fri, 20 Nov 2026 18:22:50 GMT
USER ContainerAdministrator
# Fri, 20 Nov 2026 18:22:52 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 20 Nov 2026 18:22:53 GMT
USER ContainerUser
# Fri, 20 Nov 2026 18:23:26 GMT
COPY dir:c1db964b9d9ad1cdad7b409fe6124744d4508a84df92d4def751b6d48c636c0f in C:\openjdk-17 
# Fri, 20 Nov 2026 18:23:29 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:533f90db12914056d2c2d338afdeb6ce815e38f2a5fdf28be8b9614e39964ffc`  
		Last Modified: Fri, 13 Nov 2026 18:24:32 GMT  
		Size: 126.3 MB (126273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c5431eb06834fc08a77bda95382faed321bd61dd59376d87a14a6b8c9c40ac`  
		Last Modified: Fri, 20 Nov 2026 18:11:37 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f666b7b843fbb2c869b5a77d0e013ab8704b2db2365a2bdbbbb5b4b68934aec`  
		Last Modified: Fri, 20 Nov 2026 18:23:37 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7297205574deba4e946f50cb5b7bdcf7b72767a58dd7e44f34861af46aae12b6`  
		Last Modified: Fri, 20 Nov 2026 18:23:37 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d80a8ed9f652f02e2b9c5fecc2e87f2122551e843863fbb5a8df06e9d0e056`  
		Last Modified: Fri, 20 Nov 2026 18:23:35 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e7cd827df78876bd1cb013ff72883656cfc15b9eae3d02fefc82a70bf3d7ca`  
		Last Modified: Fri, 20 Nov 2026 18:23:35 GMT  
		Size: 75.1 KB (75142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b49dec9e9306a0364ed5608e0292113159d4a5e270b04b9ee61009bb8a92437`  
		Last Modified: Fri, 20 Nov 2026 18:23:36 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4952001da791ca5f7ade2aa43e54e22f363381f5eb0eca2b48e03dd5f83af87`  
		Last Modified: Fri, 20 Nov 2026 18:23:41 GMT  
		Size: 43.9 MB (43935898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7248113a52045bfe91c6cf7472729a49f0fd7acea8d96d81a903f5832f84d276`  
		Last Modified: Fri, 20 Nov 2026 18:23:35 GMT  
		Size: 76.7 KB (76735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
