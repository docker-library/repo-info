## `openjdk:27-ea-32-nanoserver`

```console
$ docker pull openjdk@sha256:61aa920f1d663b3dab03328ab83432d6b87900a4d91fc1e1c43efa2ebbec6066
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `openjdk:27-ea-32-nanoserver` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:c1d457e06a3c3042df7d260e7376c107277cc0197a9b975c4247bd5e06dca8be
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.6 MB (420551430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6439d046db3a39fe4940f2a428748d0ad9db55442fb30b96b5e7a94b7211cc3d`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 22:36:05 GMT
RUN Apply image 10.0.26100.33158
# Mon, 27 Jul 2026 23:12:57 GMT
SHELL [cmd /s /c]
# Mon, 27 Jul 2026 23:12:59 GMT
ENV JAVA_HOME=C:\openjdk-27
# Mon, 27 Jul 2026 23:13:00 GMT
USER ContainerAdministrator
# Mon, 27 Jul 2026 23:13:13 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Mon, 27 Jul 2026 23:13:14 GMT
USER ContainerUser
# Mon, 27 Jul 2026 23:13:14 GMT
ENV JAVA_VERSION=27-ea+32
# Mon, 27 Jul 2026 23:14:12 GMT
COPY dir:d8519a9069a979bd2e05faaf0c1a183c8bd13e9ab3caa7680dd95894adb56c8b in C:\openjdk-27 
# Mon, 27 Jul 2026 23:14:23 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Mon, 27 Jul 2026 23:14:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c708af2a3c15a47de0b81ec88fc0213adfa0065399e8b4600eb3474f44fcbc9c`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 197.2 MB (197219393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4e3e9a7b2feb61e357eeb5df73087bccd79bf8da71c72af7216a7472d6e9a2`  
		Last Modified: Mon, 27 Jul 2026 23:14:29 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5056453dd1df28d0c0d6863474d0b999b2ab72b2a3e33a01954409fe046299`  
		Last Modified: Mon, 27 Jul 2026 23:14:29 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54d0ef2b632b4d1a77b006ace04b3e676dea2ddbee7fba53887d06e3dfbdcc4`  
		Last Modified: Mon, 27 Jul 2026 23:14:29 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8438c49f9dc9802360b9b1a4ab13329a61938abf9f0328e416a79fe56bc4d348`  
		Last Modified: Mon, 27 Jul 2026 23:14:29 GMT  
		Size: 71.2 KB (71196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd42055b4880b75c8e3c417dff5271eb8d12942ac1736a709555862399efe9f`  
		Last Modified: Mon, 27 Jul 2026 23:14:27 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1befadc0d77e1869911bf5724167a3cc249a6d2522adc8a8617eb8bdea8b8edf`  
		Last Modified: Mon, 27 Jul 2026 23:14:27 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f339ba0279740fe75b05e1c6ccdaf77c8ef0bbd4fbc0ac56a1aebb7be6275de8`  
		Last Modified: Mon, 27 Jul 2026 23:14:40 GMT  
		Size: 223.1 MB (223142715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39669d9ddb4171dfe8db390d6df91a735b7df20b5b18a31290f774962694eb1d`  
		Last Modified: Mon, 27 Jul 2026 23:14:27 GMT  
		Size: 111.9 KB (111865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a5b1072579190df4d2cba2b1ed4240a1f17d2f4f4b7d20e0d1814ab551d0bb`  
		Last Modified: Mon, 27 Jul 2026 23:14:27 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:27-ea-32-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull openjdk@sha256:7e065c6c7ae76438f13f35686c0df38df84ec1b54ba30e47f6adcf44e78a9d77
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.4 MB (347431475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a8e950105bb98abf776ea2180c15472cccba8ab574f8d9f5ebe6378da360c8f`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Mon, 27 Jul 2026 23:12:36 GMT
SHELL [cmd /s /c]
# Mon, 27 Jul 2026 23:12:38 GMT
ENV JAVA_HOME=C:\openjdk-27
# Mon, 27 Jul 2026 23:12:39 GMT
USER ContainerAdministrator
# Mon, 27 Jul 2026 23:12:52 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Mon, 27 Jul 2026 23:12:53 GMT
USER ContainerUser
# Mon, 27 Jul 2026 23:12:53 GMT
ENV JAVA_VERSION=27-ea+32
# Mon, 27 Jul 2026 23:13:34 GMT
COPY dir:d8519a9069a979bd2e05faaf0c1a183c8bd13e9ab3caa7680dd95894adb56c8b in C:\openjdk-27 
# Mon, 27 Jul 2026 23:13:41 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Mon, 27 Jul 2026 23:13:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52271c69be3656efa12ee56496b4ec90837d7c1976621da3a5f0ab86f76bfe58`  
		Last Modified: Mon, 27 Jul 2026 23:13:48 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbdf7c98abd0a63a90543700326da9d4d9a6a85bf88ab0aba9200cc9177aa062`  
		Last Modified: Mon, 27 Jul 2026 23:13:48 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80ab5f85b06389f1bcf81dd5d7b4e2118eaa485b2cd666e0027206e0c64ff16`  
		Last Modified: Mon, 27 Jul 2026 23:13:48 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e357bcba4099fee597661b9ceeb93be0f73d7d583c58bb48981078b0ca66b4d`  
		Last Modified: Mon, 27 Jul 2026 23:13:48 GMT  
		Size: 70.7 KB (70731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560686c0a52976ef5c28654931d7edada7875701f9d342b5f7cd615524f4824f`  
		Last Modified: Mon, 27 Jul 2026 23:13:47 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e15159f2f2f40cd455858ca119c8a918241bc768839631f641e88092104c8976`  
		Last Modified: Mon, 27 Jul 2026 23:13:47 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ecfd95f90b599521a5ba66df6963788702df9b0222b9edac573d17b8d9d1eb`  
		Last Modified: Mon, 27 Jul 2026 23:13:59 GMT  
		Size: 223.1 MB (223142739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdd4caf8bd518f860a09950f7282984e2d708e5ccdece960e63e8d89db051bc`  
		Last Modified: Mon, 27 Jul 2026 23:13:47 GMT  
		Size: 108.5 KB (108497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8efb9b07fa8a9621906f5a58a4ee82bcad942a300ef73ba59fee399ea6c7682`  
		Last Modified: Mon, 27 Jul 2026 23:13:47 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
