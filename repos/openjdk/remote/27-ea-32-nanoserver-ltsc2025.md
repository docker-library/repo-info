## `openjdk:27-ea-32-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:0501018493efff1de5fb70670dce71ceb368b6fda00c767ef86bdf801f3feca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `openjdk:27-ea-32-nanoserver-ltsc2025` - windows version 10.0.26100.33158; amd64

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
