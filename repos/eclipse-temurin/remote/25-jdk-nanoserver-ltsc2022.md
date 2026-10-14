## `eclipse-temurin:25-jdk-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:525b4a0499b369ca5201cd4278ec4b263a69292442321611c75ca5fa8f830f7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `eclipse-temurin:25-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull eclipse-temurin@sha256:658594a78a9d7a64d311f704e67b446b7f8d85720cc6c4ce3f7231c0129d9e3a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 MB (264039994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e343977657647774ce05dc75bbede92a9398f875ee15eb298f8ba6c3ae81ff8`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Tue, 13 Oct 2026 23:38:07 GMT
SHELL [cmd /s /c]
# Tue, 13 Oct 2026 23:38:07 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Tue, 13 Oct 2026 23:38:07 GMT
ENV JAVA_HOME=C:\openjdk-25
# Tue, 13 Oct 2026 23:38:08 GMT
USER ContainerAdministrator
# Tue, 13 Oct 2026 23:38:10 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 13 Oct 2026 23:38:10 GMT
USER ContainerUser
# Tue, 13 Oct 2026 23:38:16 GMT
COPY dir:ca1e390f4b570d6e77b2769bb9a3bd10f0ce627c8274f33c597fc576311144d8 in C:\openjdk-25 
# Tue, 13 Oct 2026 23:38:21 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Tue, 13 Oct 2026 23:38:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bee0a81ea9627ec1ea3d28c46220c44d7fad8d328d80eb0489d4ab9b01b3653`  
		Last Modified: Tue, 13 Oct 2026 23:38:27 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045a8d072d3eafadbead65a57f8961f9062cf37d2f34cb76613817f2850d7bc4`  
		Last Modified: Tue, 13 Oct 2026 23:38:27 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1670198a8e1d8c06a4a6518d56c6fd1306180846a89a8628d198db8c21172079`  
		Last Modified: Tue, 13 Oct 2026 23:38:27 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f082554f6f9e0ffd7841de00c5d4a61792fd1d511ecd73c2707ec07623f14805`  
		Last Modified: Tue, 13 Oct 2026 23:38:27 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe41ed75fe6d8bf4e4cc081ace088f7487652f041608762bc915d05a94c1d081`  
		Last Modified: Tue, 13 Oct 2026 23:38:25 GMT  
		Size: 75.6 KB (75559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57038bba079f1e8fd578ac656c0da7c71e4cf4ecabf73546ed7e9ec52a1a6ca3`  
		Last Modified: Tue, 13 Oct 2026 23:38:25 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17671765d9c1eebdab44537984172e2da71758b7833db392fb03b8707f5fe3ad`  
		Last Modified: Tue, 13 Oct 2026 23:38:36 GMT  
		Size: 138.1 MB (138054552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210e68ead8cc0f2c70057ffee958f5496f0f4e10c2fb48eddcab848294d753b3`  
		Last Modified: Tue, 13 Oct 2026 23:38:25 GMT  
		Size: 107.5 KB (107545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42dc8764e26465fc55229a7c0556e7d651f6b449edb68576a50c40c11ac0414`  
		Last Modified: Tue, 13 Oct 2026 23:38:25 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
