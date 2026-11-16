## `eclipse-temurin:25-jdk-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:ebd4fc33e9e48c71834678795eaeb40082fc8c83f7fd35ce5e1c8ee446e9bfca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `eclipse-temurin:25-jdk-nanoserver-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull eclipse-temurin@sha256:d1464f292735d116f021f437419eb0ddcc83c32e828fc9cc93416bdf004d7d97
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.6 MB (338587644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:274b2d74bb4a09154e962e96b49438609542db0e354288761bca3561d4b21d02`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Wed, 11 Nov 2026 22:43:48 GMT
RUN Apply image 10.0.26100.33828
# Mon, 16 Nov 2026 20:45:02 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:45:02 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Mon, 16 Nov 2026 20:45:03 GMT
ENV JAVA_HOME=C:\openjdk-25
# Mon, 16 Nov 2026 20:45:04 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:45:06 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 16 Nov 2026 20:45:07 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:45:35 GMT
COPY dir:9c7b029cf2183851d3f474a2d1015eb9053ddae126bc2cf1988c88dca705e51e in C:\openjdk-25 
# Mon, 16 Nov 2026 20:45:42 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Mon, 16 Nov 2026 20:45:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6ba6a8d6630dc641648821a651879fd111e21b736d72f09f1eabafe7a0e18a9a`  
		Last Modified: Fri, 13 Nov 2026 21:31:52 GMT  
		Size: 200.2 MB (200239817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99123108c822bfa5df950b438d64943db35c4a9d3cb08cbbdeacce4c1dd89b25`  
		Last Modified: Mon, 16 Nov 2026 20:45:49 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d55cfaeaa653b83b7be9cadd7eb232043848c9d8c3c84c26a7575ee8bfb6f1`  
		Last Modified: Mon, 16 Nov 2026 20:45:49 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab6ca5043aa9607cc1464fa4add79bbc180f65180bd73d5aa9509fd5b31e04`  
		Last Modified: Mon, 16 Nov 2026 20:45:48 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf33635c8fcdaed9e98b70c89bf5e7c7d21cd283d1a71e324a66f3ea8f343a9`  
		Last Modified: Mon, 16 Nov 2026 20:45:48 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acc0b5902cf894cd9582d81e37c06b62b8716156581d940d68466f99e85f79f`  
		Last Modified: Mon, 16 Nov 2026 20:45:47 GMT  
		Size: 73.1 KB (73128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ecfb0ce4672b45c71d94119d91af1304da24c86aad2523bf38572f04d1ba06`  
		Last Modified: Mon, 16 Nov 2026 20:45:46 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0989fdc25679b60891aef89dde76e29f18a5e2579910bf59cfaf903e80376f0`  
		Last Modified: Mon, 16 Nov 2026 20:45:58 GMT  
		Size: 138.2 MB (138155181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fd30d384db7fc139fc0205803cf51e47060d7d1c44745bec5a42143f67f7ad`  
		Last Modified: Mon, 16 Nov 2026 20:45:47 GMT  
		Size: 113.3 KB (113313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0703a04b4051e2b13978d28967b4ea681ac03c433929f7629cd25b17d4e55467`  
		Last Modified: Mon, 16 Nov 2026 20:45:47 GMT  
		Size: 1.0 KB (1002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
