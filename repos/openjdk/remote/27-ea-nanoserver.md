## `openjdk:27-ea-nanoserver`

```console
$ docker pull openjdk@sha256:bd0b8f120494f32acd7a2606da91fe85687ac52ba1d44226ab003cd8456e19d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `openjdk:27-ea-nanoserver` - windows version 10.0.26100.33158; amd64

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

### `openjdk:27-ea-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull openjdk@sha256:f142ddc2a4f2b3827585fb43bbfd339eb9bb41d95b44e43feca483134ba824cf
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.4 MB (347433296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cee4f24e9514d101c2830de7e0c0e0ed8e002734b3e22c538f2b0ff50f7d9e4`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Tue, 11 Aug 2026 00:13:25 GMT
SHELL [cmd /s /c]
# Tue, 11 Aug 2026 00:13:28 GMT
ENV JAVA_HOME=C:\openjdk-27
# Tue, 11 Aug 2026 00:13:30 GMT
USER ContainerAdministrator
# Tue, 11 Aug 2026 00:13:48 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Tue, 11 Aug 2026 00:13:49 GMT
USER ContainerUser
# Tue, 11 Aug 2026 00:13:51 GMT
ENV JAVA_VERSION=27-ea+34
# Tue, 11 Aug 2026 00:15:56 GMT
COPY dir:eebf7e7be2a62881c3e9485abbaedba33c046addf3a728d1f7dabab93427d223 in C:\openjdk-27 
# Tue, 11 Aug 2026 00:16:06 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Tue, 11 Aug 2026 00:16:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb551c4ec66da0a108e7622d16de49002dc9db422ff494f6cfa925c3cd621b2`  
		Last Modified: Tue, 11 Aug 2026 00:16:13 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2429df49b61a4df2584569539d57bc2f478ed0522e6fcc2fd0e807e1a4879675`  
		Last Modified: Tue, 11 Aug 2026 00:16:13 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d5fc19583bc04ea872fbfdcd35b6efe4fa0b311a404a8d6818e10a65d86026`  
		Last Modified: Tue, 11 Aug 2026 00:16:13 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b6829e599708263a0a89174caefe3d8d825dc880cb08c478d4635cdab245acd`  
		Last Modified: Tue, 11 Aug 2026 00:16:13 GMT  
		Size: 71.7 KB (71725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0a76cb36636cf3375eab09fe7291e1b5b5a0f24ea9b985ff01f653dc35f3c9`  
		Last Modified: Tue, 11 Aug 2026 00:16:11 GMT  
		Size: 1.1 KB (1092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b93d11c8abc52cc2fca1c7a8b254d1aba37d89263fa626633728d8bebe6e733`  
		Last Modified: Tue, 11 Aug 2026 00:16:11 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067f1a0a10884f3dc7b2c827fb47616eed5697de59e102cc3b8aa9b71180af06`  
		Last Modified: Tue, 11 Aug 2026 00:16:25 GMT  
		Size: 223.1 MB (223143682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b29c20973bcfc7826202dfe72922b1146b82d8042df4598585f32df4a01354`  
		Last Modified: Tue, 11 Aug 2026 00:16:12 GMT  
		Size: 108.3 KB (108301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f799473318cb2f43ade6c07ebd130618517634bae17610c9558527df56d51610`  
		Last Modified: Tue, 11 Aug 2026 00:16:11 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
