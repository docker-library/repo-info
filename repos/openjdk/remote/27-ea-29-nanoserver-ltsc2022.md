## `openjdk:27-ea-29-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:b53418fd0460d42b64e12bc1e465cb7b0d80578df692f7b88db0c610807444d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5256; amd64

### `openjdk:27-ea-29-nanoserver-ltsc2022` - windows version 10.0.20348.5256; amd64

```console
$ docker pull openjdk@sha256:f9e97e3936644c4496fc3c61ed83ed0073bf6463f8fb259abb1d49a06e27b7f9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.3 MB (347292831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cbd3316a9d38324559d83dabf11c235f9619dbf83069246237a33cbcc61f328`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 07 Jun 2026 06:26:15 GMT
RUN Apply image 10.0.20348.5256
# Mon, 06 Jul 2026 22:14:19 GMT
SHELL [cmd /s /c]
# Mon, 06 Jul 2026 22:14:20 GMT
ENV JAVA_HOME=C:\openjdk-27
# Mon, 06 Jul 2026 22:14:20 GMT
USER ContainerAdministrator
# Mon, 06 Jul 2026 22:14:30 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Mon, 06 Jul 2026 22:14:30 GMT
USER ContainerUser
# Mon, 06 Jul 2026 22:14:31 GMT
ENV JAVA_VERSION=27-ea+29
# Mon, 06 Jul 2026 22:15:12 GMT
COPY dir:f678f389962fdbe2068b3f9089fca1e2304ca1cddf7e4f14f4cd4f39a5e37cba in C:\openjdk-27 
# Mon, 06 Jul 2026 22:15:16 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Mon, 06 Jul 2026 22:15:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8fc8662767a8f63038f8f45ce82f52438fd89b4444ed43648c9e6a7f06330686`  
		Last Modified: Tue, 09 Jun 2026 17:48:06 GMT  
		Size: 124.0 MB (123997505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8eeda3d7c86ecf19c71385f2e6a64d08b90cd0f761e401e248d6400d9f82053`  
		Last Modified: Mon, 06 Jul 2026 22:15:23 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4165854a505f3bbf57f85af9477c6d5b903083d1465c263a442d8bc73e4995d3`  
		Last Modified: Mon, 06 Jul 2026 22:15:23 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac389db33757605d6ad8bbc393bc8efea0b709641982e3c66820100ddd08a7f`  
		Last Modified: Mon, 06 Jul 2026 22:15:23 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b897a75718ba4179914dd5c56db2097ef7824a82075af24deb7d1fe33b472abe`  
		Last Modified: Mon, 06 Jul 2026 22:15:23 GMT  
		Size: 70.7 KB (70684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66520356e258f8f479a7bc05ba765b88c310b0644a6112c53c1e87087be822a`  
		Last Modified: Mon, 06 Jul 2026 22:15:21 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e5a503d4e1b9de5f6bbcb95047f80f6cfd863c40ae89cdfce42ac6c550d66a`  
		Last Modified: Mon, 06 Jul 2026 22:15:21 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9e615013535589de58639734f489f30a905a4c47ac62581b6aba1d4a823b19`  
		Last Modified: Mon, 06 Jul 2026 22:15:37 GMT  
		Size: 223.1 MB (223120786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1a6c078d0362b5f10694b1a06640cbe478af94d2ae082e7b6299189c8025c4`  
		Last Modified: Mon, 06 Jul 2026 22:15:21 GMT  
		Size: 97.5 KB (97493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661f3d8036e6419a156dc3e15a6c256bb6de19c41e557dea2323ff7202f5293a`  
		Last Modified: Mon, 06 Jul 2026 22:15:21 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
