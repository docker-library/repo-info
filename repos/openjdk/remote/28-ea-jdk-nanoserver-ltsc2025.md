## `openjdk:28-ea-jdk-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:6b9829f1251e88fc131c9a7545a2eb2eb383f5857895d476afc4cc414cc52c4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `openjdk:28-ea-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull openjdk@sha256:43831c0797edbb72c48c6854851284f4d46ecb0354620dd0b02e7bb95137f1af
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.1 MB (441097548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baa4ecc6174cebd0c1d7927a9a28683a080f3695c9f414bc51427b8aa1dd5432`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Wed, 11 Nov 2026 22:43:48 GMT
RUN Apply image 10.0.26100.33828
# Wed, 18 Nov 2026 22:24:08 GMT
SHELL [cmd /s /c]
# Wed, 18 Nov 2026 22:24:10 GMT
ENV JAVA_HOME=C:\openjdk-28
# Wed, 18 Nov 2026 22:24:11 GMT
USER ContainerAdministrator
# Wed, 18 Nov 2026 22:24:30 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Wed, 18 Nov 2026 22:24:30 GMT
USER ContainerUser
# Wed, 18 Nov 2026 22:24:31 GMT
ENV JAVA_VERSION=28-ea+24
# Wed, 18 Nov 2026 22:25:42 GMT
COPY dir:3d05e5977e07c08c090e6718d3a1f64a7059fc29fd93b34e303803b49154fa6b in C:\openjdk-28 
# Wed, 18 Nov 2026 22:25:54 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Wed, 18 Nov 2026 22:25:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6ba6a8d6630dc641648821a651879fd111e21b736d72f09f1eabafe7a0e18a9a`  
		Last Modified: Fri, 13 Nov 2026 21:31:52 GMT  
		Size: 200.2 MB (200239817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9daa08705b2dd63e44e4c1d787fd5d8d2a10b29baf598c2c5652cadf2acb050c`  
		Last Modified: Wed, 18 Nov 2026 22:26:01 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3fc29955ed73c48b9646fc76ab3a51fa8d0fc74336718744909bb37dd1660c`  
		Last Modified: Wed, 18 Nov 2026 22:26:00 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f009b4d3a5f1caa5399c1fabb0fd3397dc0f107324addd163ca1ea3a1ad42a92`  
		Last Modified: Wed, 18 Nov 2026 22:26:00 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8478334e278383e68214981c71aa1063566470636376b3c89c3915c055e45b06`  
		Last Modified: Wed, 18 Nov 2026 22:26:00 GMT  
		Size: 71.6 KB (71628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d84a31017a5b46c1373484f11c3bf7dd3edc270b2559e6263001f8582afa0b`  
		Last Modified: Wed, 18 Nov 2026 22:25:59 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094f8732945d77a26f9db8c276f758584fa14e980dab817fac306c18bc81a7ef`  
		Last Modified: Wed, 18 Nov 2026 22:25:59 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a705b145852d82af0c75bebf06dae412f872c0dd31d7f2aa3defe59b0a8fbc7`  
		Last Modified: Wed, 18 Nov 2026 22:26:15 GMT  
		Size: 240.7 MB (240676799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c2bdaa16de123d6f77b521978e5340c9de24ad8bd503ac638c46a6c95d75a9`  
		Last Modified: Wed, 18 Nov 2026 22:25:59 GMT  
		Size: 103.1 KB (103097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f261ad0ec49fc3b2e48216356621cfb84f26ea746b70a653c8777a78f20c2e`  
		Last Modified: Wed, 18 Nov 2026 22:25:59 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
