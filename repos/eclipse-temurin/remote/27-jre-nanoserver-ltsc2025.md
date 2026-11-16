## `eclipse-temurin:27-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:91b9e366a2d0bbfe2a66670a011ef98bf98b1ce290d3b4e5964ba9ad50a11ead
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `eclipse-temurin:27-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull eclipse-temurin@sha256:42c7c93174456f8588b960bc138a1d328ed56f93ad4c697239630df52e23b822
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259752066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c967be53b2e10a72815a800ab664382a95f60aa2564adad609d22c77e0c7df0`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Wed, 11 Nov 2026 22:43:48 GMT
RUN Apply image 10.0.26100.33828
# Mon, 16 Nov 2026 20:42:56 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:45:10 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Mon, 16 Nov 2026 20:45:10 GMT
ENV JAVA_HOME=C:\openjdk-27
# Mon, 16 Nov 2026 20:45:11 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:45:12 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 16 Nov 2026 20:45:13 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:45:33 GMT
COPY dir:1d0776a6b2568151a4602a459dbb61f4638ffe7f56044e9eca31eeb2125da56f in C:\openjdk-27 
# Mon, 16 Nov 2026 20:45:37 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:6ba6a8d6630dc641648821a651879fd111e21b736d72f09f1eabafe7a0e18a9a`  
		Last Modified: Fri, 13 Nov 2026 21:31:52 GMT  
		Size: 200.2 MB (200239817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:748aefe6e7254bbf923065b05c454ebc61b2455cda96ebcbaefef8f1b4a966a4`  
		Last Modified: Mon, 16 Nov 2026 20:43:34 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1da33a636f9dd553e00e91f98667259bd6f95098418530359c1aa291657cd767`  
		Last Modified: Mon, 16 Nov 2026 20:45:42 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997180b2f300f3ee5fbce89a17d7e5f912c8f89982f4cb18cab514ecfe09bca3`  
		Last Modified: Mon, 16 Nov 2026 20:45:42 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93d127dd1edd57d5ac13264cd92a36c2603ea5264fcc6d1e59e680e52f622a1`  
		Last Modified: Mon, 16 Nov 2026 20:45:41 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd789aa0284595f8fa098779d88af58154cc0081a607fc2338b78c0cffd4911`  
		Last Modified: Mon, 16 Nov 2026 20:45:41 GMT  
		Size: 72.5 KB (72519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fcd23e177e18b15821cb9a7812adedb93473321e51a7b4af6b06d5a1d4e252`  
		Last Modified: Mon, 16 Nov 2026 20:45:41 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd273cc469bd8308550d2a2e9e90f1f353eaa82550cc02d47123c2eebb8ae11`  
		Last Modified: Mon, 16 Nov 2026 20:45:48 GMT  
		Size: 59.3 MB (59322035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15b1aa32ec4a26e408faf2c8a7a79d8c35696d99b7914ae1d195117f99a5d92`  
		Last Modified: Mon, 16 Nov 2026 20:45:41 GMT  
		Size: 112.4 KB (112448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
