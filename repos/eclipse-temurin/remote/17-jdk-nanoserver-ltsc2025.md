## `eclipse-temurin:17-jdk-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:7df943e9cb7e4907cc9c2e6738996c29b86da78bc5d8ed53682a974f40aa7015
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `eclipse-temurin:17-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull eclipse-temurin@sha256:b85f975c290a763647ad77eab3a0da7c00571510463398950f6be3946a21e433
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.4 MB (388351993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:179a9ba330cf74bc0a8f77b3458f327dfd2a2a8db0bf307df26d900ec577193e`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Wed, 11 Nov 2026 22:43:48 GMT
RUN Apply image 10.0.26100.33828
# Mon, 16 Nov 2026 20:42:58 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:42:59 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Mon, 16 Nov 2026 20:42:59 GMT
ENV JAVA_HOME=C:\openjdk-17
# Mon, 16 Nov 2026 20:43:00 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:43:09 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 16 Nov 2026 20:43:09 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:43:34 GMT
COPY dir:454c873c2ac823e809bb5e99689aa939a6d2ee1dafcb2242a1f75509c5b7fe77 in C:\openjdk-17 
# Mon, 16 Nov 2026 20:43:42 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Mon, 16 Nov 2026 20:43:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6ba6a8d6630dc641648821a651879fd111e21b736d72f09f1eabafe7a0e18a9a`  
		Last Modified: Fri, 13 Nov 2026 21:31:52 GMT  
		Size: 200.2 MB (200239817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e262307a2ac242234e678d93452b418d18d63aae1fe7963e60f7d52fb0786620`  
		Last Modified: Mon, 16 Nov 2026 20:43:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444f1de66862d2c67f093f4eee4664822024b97493e6f9c79fd77089f913dda5`  
		Last Modified: Mon, 16 Nov 2026 20:43:48 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747baa271c363f1abd246df950992bf26721dd40af081f9f49df92180cb328a4`  
		Last Modified: Mon, 16 Nov 2026 20:43:48 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2118a43d4f18c10453046aebaf54d14c54eb83dd0edd9307a84308b9bba4a384`  
		Last Modified: Mon, 16 Nov 2026 20:43:48 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a3ceefa870e7d4741ea83e99d1d2f93dd82325611d744992964cb1e5e66801`  
		Last Modified: Mon, 16 Nov 2026 20:43:46 GMT  
		Size: 70.9 KB (70870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b96316829dbe17550125d6d1267a11c1de536d8a454c9966b26f73b8eebf4b7f`  
		Last Modified: Mon, 16 Nov 2026 20:43:46 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d77855fcbd99c0ce451e1e8e16eca1e262c61570f28f76d1d0bdae0db5ee9ba7`  
		Last Modified: Mon, 16 Nov 2026 20:43:57 GMT  
		Size: 188.0 MB (187950972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb70197ae440f473d662f525c9ae43e73afa0dff71bf8de8e7f63e03be1e4de`  
		Last Modified: Mon, 16 Nov 2026 20:43:46 GMT  
		Size: 84.1 KB (84078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb9d153a1aae6bb2f75612528805cfec509b238236c4afd7989b6a1ad6084ed`  
		Last Modified: Mon, 16 Nov 2026 20:43:46 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
