## `eclipse-temurin:17-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:648a77c6c73fa9962672198ff4550fde57c3820fdc3d78e5b99f1693a4a313a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `eclipse-temurin:17-nanoserver-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull eclipse-temurin@sha256:64e5257ecf63857a4a67e32db8275d7c4853fc9dea9d9d259592ae046f2b8c66
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.4 MB (388381527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f1592e9e1112114f81e5b12e22768ed18dd677d39524b47e6bd83215966caf6`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 13:08:00 GMT
RUN Apply image 10.0.26100.33822
# Wed, 11 Nov 2026 22:46:41 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:46:42 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 22:46:43 GMT
ENV JAVA_HOME=C:\openjdk-17
# Wed, 11 Nov 2026 22:46:43 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:46:57 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:46:58 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:47:56 GMT
COPY dir:454c873c2ac823e809bb5e99689aa939a6d2ee1dafcb2242a1f75509c5b7fe77 in C:\openjdk-17 
# Wed, 11 Nov 2026 22:48:02 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 11 Nov 2026 22:48:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8395a5062b63680acee7661df668d9bf81cca0fdec76ab1b29afd6ab290bf2c0`  
		Last Modified: Tue, 10 Nov 2026 23:37:33 GMT  
		Size: 200.2 MB (200242324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e447b09db0e966beeb87a4a6aa0fd0e55199ff9c86165ea580a956fdd9f96d`  
		Last Modified: Wed, 11 Nov 2026 22:48:11 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850ffa083a1789d156ab7293dd341cd4bd8285da20fa975029bd30b2ef3b0af9`  
		Last Modified: Wed, 11 Nov 2026 22:48:11 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279b4c8f79845ff217a10d18387b853053f1abb49d59db8386aeb26b68fa4f29`  
		Last Modified: Wed, 11 Nov 2026 22:48:11 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3780b50e3b0c97e6fd5fb40b7bfa26be2db31c16d540641c22049ccea8491586`  
		Last Modified: Wed, 11 Nov 2026 22:48:11 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ced551c6569e0c65c9c015d34eb9db2badab58ff602811a99e16defd622b55`  
		Last Modified: Wed, 11 Nov 2026 22:48:10 GMT  
		Size: 70.0 KB (70024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d84666b9f75d0ecbaa57ff426fc20930e609b88de9883cb5e0c1869418422f`  
		Last Modified: Wed, 11 Nov 2026 22:48:10 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1aa8cb6389e093ef87fde00eec33935cb421aa072af2382835cb3644a05b5f`  
		Last Modified: Wed, 11 Nov 2026 22:48:21 GMT  
		Size: 188.0 MB (187950914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd184fc5c11cb37249287911a1679b1011ff0cce4091b42a3abb8a6782613860`  
		Last Modified: Wed, 11 Nov 2026 22:48:10 GMT  
		Size: 112.0 KB (112000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e25e6cb4d02f4462b8723f240ef0d2d6badde0f7aafcc9f0fc7fce4afa88dd1`  
		Last Modified: Wed, 11 Nov 2026 22:48:09 GMT  
		Size: 1.1 KB (1053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
