## `openjdk:27-rc-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:27af9f64141e05b0f471fd5be1f5f7aed5d89a3bd0f8e6a199892fa4352be83c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `openjdk:27-rc-nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull openjdk@sha256:0720d535a88f421824b6aa2b0d418aea7abaca8ec338041b3b672947db4b1cca
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.8 MB (420810652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45f31096c38c3cdc69a39cbb630d7a7bb774ecd7d9302b67cfc744ffcb5ef0a6`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Fri, 21 Aug 2026 18:36:03 GMT
SHELL [cmd /s /c]
# Fri, 21 Aug 2026 18:36:04 GMT
ENV JAVA_HOME=C:\openjdk-27
# Fri, 21 Aug 2026 18:36:04 GMT
USER ContainerAdministrator
# Fri, 21 Aug 2026 18:36:10 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Fri, 21 Aug 2026 18:36:10 GMT
USER ContainerUser
# Fri, 21 Aug 2026 18:36:11 GMT
ENV JAVA_VERSION=27
# Fri, 21 Aug 2026 18:36:46 GMT
COPY dir:ec8228b03fe316162ed3a3a38b59fa92013dfe81b274efa43cf33cc6600090e3 in C:\openjdk-27 
# Fri, 21 Aug 2026 18:36:52 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Fri, 21 Aug 2026 18:36:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42f1322452cf361a90653dd2200a87faf545d608f3d4bad48c82aa3c52b729b`  
		Last Modified: Fri, 21 Aug 2026 18:36:58 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa566e434a11e3dd966d05a895df248a28f6b630f929d4289df8902ab77df702`  
		Last Modified: Fri, 21 Aug 2026 18:36:58 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9a960ba5e4c7b9c43b40ecdf339cf1f8d56b3ae3facef91d316d1a58417ac7`  
		Last Modified: Fri, 21 Aug 2026 18:36:58 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4addbdf0bac5c9361a76d238dd9319fa46cb9abc9b58a3cb0f5bbb8c2a68d03b`  
		Last Modified: Fri, 21 Aug 2026 18:36:58 GMT  
		Size: 71.7 KB (71700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3fd98ded5b3df04214b1c5261899e14f32ea355dacd2d6933ff1b536638d22d`  
		Last Modified: Fri, 21 Aug 2026 18:36:56 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3730939e66f6132d94c056b8a5ff0a901a7c67e038d28c2fd804259b00b21ec9`  
		Last Modified: Fri, 21 Aug 2026 18:36:56 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5474b40410469d30affa38bee396dae4cef27158af5f4c5e2f70cd86cb41b1`  
		Last Modified: Fri, 21 Aug 2026 18:37:10 GMT  
		Size: 223.1 MB (223138931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a865059a8709cc223ec846ead3e080aaec0c93b121eb8f85b5b0ab2d42ec51`  
		Last Modified: Fri, 21 Aug 2026 18:36:57 GMT  
		Size: 111.6 KB (111613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6551270654f11f6ccd46511797b6919a725640edf5cac526f4d626eb91fb7d22`  
		Last Modified: Fri, 21 Aug 2026 18:36:56 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
