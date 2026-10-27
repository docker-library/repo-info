## `eclipse-temurin:25-jdk-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:2e423208fd59448154eef5e10a825afa67bca98c53f532fe02ddb68aa6d6e3ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:25-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:6d942a5ea18fd6e235dc75e34f95cbe230dc26a0d605bed28e6aee93753a5aa0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.2 MB (264172075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47334e1e61ae0e8a02c52c4977c09259f72e8a4de483ac28c020a90c4bab559f`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:34:00 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:35:11 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Tue, 27 Oct 2026 18:35:11 GMT
ENV JAVA_HOME=C:\openjdk-25
# Tue, 27 Oct 2026 18:35:11 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:35:13 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:35:13 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:35:18 GMT
COPY dir:ca1e390f4b570d6e77b2769bb9a3bd10f0ce627c8274f33c597fc576311144d8 in C:\openjdk-25 
# Tue, 27 Oct 2026 18:35:23 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Tue, 27 Oct 2026 18:35:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449b2882fb3a0bd7cdedb2aa4012e67f9d2bdfdc5566e8c3668bf69bc2e45610`  
		Last Modified: Tue, 27 Oct 2026 18:34:29 GMT  
		Size: 1.1 KB (1133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c052399ea39212ca53c70f27777f372a578f1e6f76a751aed24616a14ee8e7`  
		Last Modified: Tue, 27 Oct 2026 18:35:29 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a6c0e339c9992eccf9d2e46b5e15425021e7ff2e45707ac66812ce7e27e802`  
		Last Modified: Tue, 27 Oct 2026 18:35:29 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3e613b51eb2690a861c87f4489417642ca18141d56b9be31c61dd8c651a364`  
		Last Modified: Tue, 27 Oct 2026 18:35:29 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20fe90890ff96d4551d05ae0945c8169c18a01a8688b41ae6fb039f5ca4dd0b`  
		Last Modified: Tue, 27 Oct 2026 18:35:28 GMT  
		Size: 77.1 KB (77139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5869ae3400103e49a0235f0ac1f167ded635eff1cfaa7433f1f9e3e7955085e9`  
		Last Modified: Tue, 27 Oct 2026 18:35:28 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13478ad03b4774ef5f57b9efcdac4f4100fcef164d4ff1d1ff8d31e23783fa09`  
		Last Modified: Tue, 27 Oct 2026 18:35:38 GMT  
		Size: 138.1 MB (138054502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619b731af006bdee77e9fcec3df8b53b0a90a24fe45aaf9d9ae19c6eadedb9f8`  
		Last Modified: Tue, 27 Oct 2026 18:35:28 GMT  
		Size: 107.3 KB (107296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc85785fcfb22712301d5d6adb34507e149181f21c72b559ae18f45fa8547a8b`  
		Last Modified: Tue, 27 Oct 2026 18:35:27 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
