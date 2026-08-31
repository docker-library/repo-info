## `openjdk:28-ea-13-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:3d875d043886fbb510c874a1d728603b9df2ec5f833b2b284f0ca3253b8af5ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `openjdk:28-ea-13-jdk-nanoserver` - windows version 10.0.26100.33296; amd64

```console
$ docker pull openjdk@sha256:a1c02dba421d08a3f591bd083972448560247444908c2159092833c5f48704a1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.8 MB (436772649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:122c8f26b137d0305661e4fbcdc426d3abadc9c04e4799855b229228d5280e97`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Mon, 31 Aug 2026 19:02:55 GMT
SHELL [cmd /s /c]
# Mon, 31 Aug 2026 19:02:55 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 31 Aug 2026 19:02:55 GMT
USER ContainerAdministrator
# Mon, 31 Aug 2026 19:03:05 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Mon, 31 Aug 2026 19:03:06 GMT
USER ContainerUser
# Mon, 31 Aug 2026 19:03:06 GMT
ENV JAVA_VERSION=28-ea+13
# Mon, 31 Aug 2026 19:04:10 GMT
COPY dir:5facc012561fdfc2a4a91abe1c6a80aa83ccdf09ed9149338bb2ee645eee9a87 in C:\openjdk-28 
# Mon, 31 Aug 2026 19:04:20 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Mon, 31 Aug 2026 19:04:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a5682e9451038bef382562d81c5c1067859733dd316dc85826b7586c1ef0ec`  
		Last Modified: Mon, 31 Aug 2026 19:04:26 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62bbb5f2401e339c8fbd3052e5592b259250b62bc6ec06a05f57d8901b4ef30`  
		Last Modified: Mon, 31 Aug 2026 19:04:26 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488caa181725fa8fa6a680b59dd4e7e128538cccf2081a9dffc5ffa9a744092e`  
		Last Modified: Mon, 31 Aug 2026 19:04:25 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f713a9b5292b5ce868054c6e8b614a392fb3987c8a5a116e0e305d01b23bd3`  
		Last Modified: Mon, 31 Aug 2026 19:04:26 GMT  
		Size: 70.2 KB (70228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25166dcb90c0e21e08f2a3e75ac727ba7b2f151fcd68373a8a968ffba6b9f0f`  
		Last Modified: Mon, 31 Aug 2026 19:04:24 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac22fe929117f7c1a5a860d12085797f0e6f8fff058eececb12df3ef88d3cb24`  
		Last Modified: Mon, 31 Aug 2026 19:04:24 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc9666485168935d96f9dbc86288c538982bc3f5d46d2cd9593de960434543f`  
		Last Modified: Mon, 31 Aug 2026 19:04:40 GMT  
		Size: 239.1 MB (239102025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293fe3a9568eee3b1cddbc58867160fb1fe71fe27ba41f2a352ed1809deb7512`  
		Last Modified: Mon, 31 Aug 2026 19:04:24 GMT  
		Size: 112.0 KB (111992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32bd07841a8dc3c2c08f6d42f85470d0665c43e8a9bc475ff441ec75a82f081c`  
		Last Modified: Mon, 31 Aug 2026 19:04:24 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-13-jdk-nanoserver` - windows version 10.0.20348.5499; amd64

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
