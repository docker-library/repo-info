## `openjdk:28-ea-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:c5613de0bfe4dbe9ead47e07d18bde2e4a0e4226518fe8bf63de5cb0b4cd0881
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `openjdk:28-ea-nanoserver-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull openjdk@sha256:7e8e42a06ae0d56932a83c31860546d59d744def5c475343f27afe891fe6d63c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.5 MB (363543710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a1ff73e6a79b76d43895f0703864beb13f61ebcd7b0af0256cdc64b64ea1293`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 04:00:46 GMT
RUN Apply image 10.0.20348.5499
# Mon, 31 Aug 2026 19:02:55 GMT
SHELL [cmd /s /c]
# Mon, 31 Aug 2026 19:02:56 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 31 Aug 2026 19:02:56 GMT
USER ContainerAdministrator
# Mon, 31 Aug 2026 19:03:09 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Mon, 31 Aug 2026 19:03:09 GMT
USER ContainerUser
# Mon, 31 Aug 2026 19:03:09 GMT
ENV JAVA_VERSION=28-ea+13
# Mon, 31 Aug 2026 19:04:05 GMT
COPY dir:5facc012561fdfc2a4a91abe1c6a80aa83ccdf09ed9149338bb2ee645eee9a87 in C:\openjdk-28 
# Mon, 31 Aug 2026 19:04:12 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Mon, 31 Aug 2026 19:04:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:dc16402aa7d3fdbac6580d83e9c13ab7caf61d557113810e102089ffa3cd6cb4`  
		Last Modified: Tue, 11 Aug 2026 20:43:43 GMT  
		Size: 124.3 MB (124257916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d35d6c0174ddde93ea3930aa83b367fa58217a477d404f162695bfd53e41e9`  
		Last Modified: Mon, 31 Aug 2026 19:04:23 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93cf626406f7412844b9621dac3bdc6e06d26a90ed4a7913bf43e2198e6f96e6`  
		Last Modified: Mon, 31 Aug 2026 19:04:23 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9249125218b532ee78d633446f5d5fabfa3c53721d8c96dc48670061196d41`  
		Last Modified: Mon, 31 Aug 2026 19:04:23 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2da70e71457b5d4d2e326b11380eab25096837f4ab27f2f47e4153705f9356`  
		Last Modified: Mon, 31 Aug 2026 19:04:23 GMT  
		Size: 84.4 KB (84361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a11910ed868e7dcc2f6b17bdafd9cf619e6ced31d3ecf93d2b93eddad250908`  
		Last Modified: Mon, 31 Aug 2026 19:04:21 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987856100ad2fdb416e41cf0084411d91dffb1ecd40d8c9e14511a66ff439b2f`  
		Last Modified: Mon, 31 Aug 2026 19:04:21 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c8765a1cf5b0273949b01396ed180b89a3449aa6fde21d30daa63b8de110db`  
		Last Modified: Mon, 31 Aug 2026 19:04:36 GMT  
		Size: 239.1 MB (239101190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a867f14502ffa72960256a04ff3c9158cf91b049e46db4814e61084b1bc7657e`  
		Last Modified: Mon, 31 Aug 2026 19:04:21 GMT  
		Size: 93.9 KB (93865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a28e8976d727e1cb5be45448e2de2f0e222f79af8f3243241bb8b0c72efcf5`  
		Last Modified: Mon, 31 Aug 2026 19:04:21 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
