## `eclipse-temurin:25-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:b7d7d1299c69d0419c234cc2ff50a66191f627329c38e34dc8c09f05a30e84a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:25-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:b241340ef164b3ee561b77de6202ebd8a915ce6041911bfa00f20368faf8cfab
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256292861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53152e17ad67c6bf90d1f0291347779a76a158c417379f2c5dcdab2fe8c39c89`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Wed, 12 Aug 2026 18:22:47 GMT
SHELL [cmd /s /c]
# Wed, 12 Aug 2026 18:22:48 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Wed, 12 Aug 2026 18:22:48 GMT
ENV JAVA_HOME=C:\openjdk-25
# Wed, 12 Aug 2026 18:22:49 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:22:51 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 12 Aug 2026 18:22:51 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:23:05 GMT
COPY dir:fd8baea77fa86bd13952f69621f69e815eb87406af0c0441c94fb1b8a78482df in C:\openjdk-25 
# Wed, 12 Aug 2026 18:23:08 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d739ff63053ed9d8867b537d548a4cdba45cb6314c44cb171e73e4a420a6f8ca`  
		Last Modified: Wed, 12 Aug 2026 18:23:14 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de38e12d30aa0e814d540a8451e08b8c5b03f674108f73d8ac3d5ffa8b05359`  
		Last Modified: Wed, 12 Aug 2026 18:23:14 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dd41502414adccc8f682bb667effbc04a78a8ed6263a53f1ad23f92c26b858`  
		Last Modified: Wed, 12 Aug 2026 18:23:14 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812ee00ba1e190128da3e63aed3d4911f8b4a2235afdf23abd33ac3f835187b1`  
		Last Modified: Wed, 12 Aug 2026 18:23:12 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec31ee4eae0aafec10e4b08bc4324ee461a336f7dcd66de99755ea256c963b3f`  
		Last Modified: Wed, 12 Aug 2026 18:23:13 GMT  
		Size: 73.0 KB (73030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b62b729abfad5e5ad131d0a95f08e2a81a18b482ee59ca9d6a5dbb964916a10`  
		Last Modified: Wed, 12 Aug 2026 18:23:12 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b93220294ba86cea3a36e6664ddcea274e1b171955d842a6b59013ba3b6a2`  
		Last Modified: Wed, 12 Aug 2026 18:23:19 GMT  
		Size: 58.6 MB (58620185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a2fb95f9dd158b79fea37a93065c65782fbd9d23af4cb154bee87a813f020a`  
		Last Modified: Wed, 12 Aug 2026 18:23:12 GMT  
		Size: 112.3 KB (112253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
