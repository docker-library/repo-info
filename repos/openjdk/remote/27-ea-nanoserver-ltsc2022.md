## `openjdk:27-ea-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:95f5a1802580fd4bc1d1b17b18ac7195142893064a696e57e0fb87f921671db4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `openjdk:27-ea-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

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
