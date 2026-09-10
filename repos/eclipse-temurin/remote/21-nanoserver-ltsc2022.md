## `eclipse-temurin:21-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:38e985f499fc5757a7cb7ddb89c10a097e8a85987936a680430ea76c4bbe16d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:21-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:4c3cb904c25f80c29e3228fed67bb21445b0842c3dd65df08a647ab8291fff7c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.7 MB (326704339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f928591d5369a2031383e803dec9ccde052783c76bdefd2df5d79f4aeadc06`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:21:00 GMT
SHELL [cmd /s /c]
# Wed, 09 Sep 2026 23:21:51 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 09 Sep 2026 23:21:51 GMT
ENV JAVA_HOME=C:\openjdk-21
# Wed, 09 Sep 2026 23:21:51 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:21:53 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 09 Sep 2026 23:21:53 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:22:00 GMT
COPY dir:0834ce0442693c0f1f088bdbe5aa2e6929b552bb7d2fb8becac9a5b90ee9dea0 in C:\openjdk-21 
# Wed, 09 Sep 2026 23:22:06 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 09 Sep 2026 23:22:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55bf4bbc6d3d57d9e2d4bf255e66a33386c44201e91ea9b28f1fc9d549d9a882`  
		Last Modified: Wed, 09 Sep 2026 23:21:16 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10db1d4c19af492ed4bcd46ffc2650133a36fd2ad2c905e1faf7c5805fa65077`  
		Last Modified: Wed, 09 Sep 2026 23:22:14 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a3b21f9091b1873c8391495a0f72ec43fbf7d981f3293e79b8ebabc2320ec3`  
		Last Modified: Wed, 09 Sep 2026 23:22:14 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ff0e955dc07963d8f2fea6f9686397361bf6e187459b699c4f2eb505452741`  
		Last Modified: Wed, 09 Sep 2026 23:22:14 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f193a50c2f342e12cbd5010dd20c51d019b63a32805f6625a2dbd703ed37a841`  
		Last Modified: Wed, 09 Sep 2026 23:22:13 GMT  
		Size: 78.8 KB (78804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d014b6c479da681cc71861f232613e7ca444398ed3d4bd672373645b8978df`  
		Last Modified: Wed, 09 Sep 2026 23:22:13 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96ab8122791fa1189bc0eaa60917945ca5f575a0f434a22d8398af3a12ccd31`  
		Last Modified: Wed, 09 Sep 2026 23:22:25 GMT  
		Size: 201.9 MB (201874530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eefab484c49df71d18ca0654d6682cb1cf50454998320ff933333b71d596576`  
		Last Modified: Wed, 09 Sep 2026 23:22:13 GMT  
		Size: 107.2 KB (107225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030a585bdcf43dae325af21cadbf905a2ec2b97cac14a16bb77a29843d9011c8`  
		Last Modified: Wed, 09 Sep 2026 23:22:13 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
