## `openjdk:27-ea-jdk-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:a13a009bd602fd230176d55bd673bf29b263495c274100652db13ef9af8d3105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `openjdk:27-ea-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:dd388e15565a4e3968d61d629c82cc9a626b93f8d8890ec95b8bebb6277b5271
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.5 MB (420539789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00bd207e39d6eb4900ee8e00b10fee7ebe6fd8d29561f8d9beae444de33cc141`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 22:36:05 GMT
RUN Apply image 10.0.26100.33158
# Tue, 11 Aug 2026 00:13:35 GMT
SHELL [cmd /s /c]
# Tue, 11 Aug 2026 00:13:36 GMT
ENV JAVA_HOME=C:\openjdk-27
# Tue, 11 Aug 2026 00:13:37 GMT
USER ContainerAdministrator
# Tue, 11 Aug 2026 00:13:52 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Tue, 11 Aug 2026 00:13:52 GMT
USER ContainerUser
# Tue, 11 Aug 2026 00:13:52 GMT
ENV JAVA_VERSION=27-ea+34
# Tue, 11 Aug 2026 00:15:01 GMT
COPY dir:eebf7e7be2a62881c3e9485abbaedba33c046addf3a728d1f7dabab93427d223 in C:\openjdk-27 
# Tue, 11 Aug 2026 00:15:08 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Tue, 11 Aug 2026 00:15:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c708af2a3c15a47de0b81ec88fc0213adfa0065399e8b4600eb3474f44fcbc9c`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 197.2 MB (197219393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75d5a43e5b62bc2b3969e6d44d265faec552073c411228afc128f71d13389c5`  
		Last Modified: Tue, 11 Aug 2026 00:15:20 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc476c4fbe362c591e9bc018e8c9e33f4a6072cfb76270ed0a4b45a7032167c5`  
		Last Modified: Tue, 11 Aug 2026 00:15:20 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3654e383b1b14f30efb58017a870351b707fe2bb8e9273e6aded821f2723829`  
		Last Modified: Tue, 11 Aug 2026 00:15:20 GMT  
		Size: 1.1 KB (1092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc005d1f9412684c3e58b48961dd5f4c7457b9ce8a136d645aaa6ac047b0329e`  
		Last Modified: Tue, 11 Aug 2026 00:15:20 GMT  
		Size: 70.1 KB (70095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891c6aad17b430e9d2f4300cff1207107adf84ab68684eaa9665f004fa9e524`  
		Last Modified: Tue, 11 Aug 2026 00:15:18 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09403ce86174eebd6fce987c4c88c6ed2dc1d124a259d5c6b41b6a0515cc7cd`  
		Last Modified: Tue, 11 Aug 2026 00:15:18 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:287d566774af134815d4f9279603973881a803c7aa9ad14ef1ab0e43afc7680b`  
		Last Modified: Tue, 11 Aug 2026 00:15:33 GMT  
		Size: 223.1 MB (223144055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ecbf5bf57318cd0184e9753da78b067cb9710043b90ba796377363e5979d2a`  
		Last Modified: Tue, 11 Aug 2026 00:15:18 GMT  
		Size: 100.0 KB (99980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e2d5a18f091d693023f9ae05c13dc3e129bfa65c1a66105856cb28bc958610`  
		Last Modified: Tue, 11 Aug 2026 00:15:18 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
