## `openjdk:28-ea-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:80c8920a381d70d0765f469665bfce55f775811be04617d7ab73630406d88ebf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5256; amd64

### `openjdk:28-ea-nanoserver-ltsc2022` - windows version 10.0.20348.5256; amd64

```console
$ docker pull openjdk@sha256:f6071e9f0a28455144d66e0b83194529dc0fea03ce1e274a0aeafa2b6b997ec0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.2 MB (348245331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aefb98ec6a8614e8f5385c024b376a37c65ad554006dadd65ac37338a9c49034`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 07 Jun 2026 06:26:15 GMT
RUN Apply image 10.0.20348.5256
# Mon, 06 Jul 2026 23:23:14 GMT
SHELL [cmd /s /c]
# Mon, 06 Jul 2026 23:23:16 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 06 Jul 2026 23:23:17 GMT
USER ContainerAdministrator
# Mon, 06 Jul 2026 23:23:28 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Mon, 06 Jul 2026 23:23:29 GMT
USER ContainerUser
# Mon, 06 Jul 2026 23:23:30 GMT
ENV JAVA_VERSION=28-ea+5
# Mon, 06 Jul 2026 23:24:16 GMT
COPY dir:e5b2237dfa360781817e18fb651223e837ad761876a7e025be128425a273e372 in C:\openjdk-28 
# Mon, 06 Jul 2026 23:24:21 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Mon, 06 Jul 2026 23:24:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8fc8662767a8f63038f8f45ce82f52438fd89b4444ed43648c9e6a7f06330686`  
		Last Modified: Tue, 09 Jun 2026 17:48:06 GMT  
		Size: 124.0 MB (123997505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e717445f93f7f991bca3754ffb2126588a5c24e1f090bafc0fa6e01c8fcb37b`  
		Last Modified: Mon, 06 Jul 2026 23:24:32 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5229c849f4cd0b4506af9ecd654e11bc33cc99625479401c3d3857a9594aacd0`  
		Last Modified: Mon, 06 Jul 2026 23:24:32 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a694f2fbb31034f80f58f8bc284d1fedefb911183b3d09cce6bb330ebfdbfaa8`  
		Last Modified: Mon, 06 Jul 2026 23:24:32 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431d8031335df58bba4ded4c10ba760c78cabfcbcf2a0ad1f04875f7da915181`  
		Last Modified: Mon, 06 Jul 2026 23:24:32 GMT  
		Size: 71.1 KB (71107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823e8e7eedca3ba4e8bf40e49dea1929838579f06b85fbdd58dde2b39d6019f7`  
		Last Modified: Mon, 06 Jul 2026 23:24:30 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd84f1758db484ca8322904d8d445625a09e631a1cc6bbad64f4aa9b7228424`  
		Last Modified: Mon, 06 Jul 2026 23:24:30 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3058052ad8d2d5d78aa5d18cba3552f6c972e2692e2b2a818ca77979e49caae4`  
		Last Modified: Mon, 06 Jul 2026 23:24:46 GMT  
		Size: 224.1 MB (224063372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6f324618d39d1f7bad1a980c4a01db6d1a298531ceb9f427515d611794f56f`  
		Last Modified: Mon, 06 Jul 2026 23:24:30 GMT  
		Size: 106.9 KB (106925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855baabbb7097d0ce17f53d1197388fe6f209cafa8f6574a5da35ca6b94f059d`  
		Last Modified: Mon, 06 Jul 2026 23:24:30 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
