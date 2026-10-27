## `eclipse-temurin:11-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:df9a6ba433339c84d20a78184e7dc6ffc698e214b66d233e37d95ae688d4d1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:11-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:d54bf70b72525f06dc305b58c7581a4f28e5c3d21342b098611226d223c4edcc
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.9 MB (320885865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87dad50025a7f84a48fa996aacad2d9ab5d7d51bee43856b680b6bac73ab6a1e`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:34:00 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:34:00 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Tue, 27 Oct 2026 18:34:01 GMT
ENV JAVA_HOME=C:\openjdk-11
# Tue, 27 Oct 2026 18:34:01 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:34:03 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:34:04 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:34:19 GMT
COPY dir:abb22bd7f66d415f872b9b6353d786e1d425603507d47df4b9ec16e5af73f3ec in C:\openjdk-11 
# Tue, 27 Oct 2026 18:34:23 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Tue, 27 Oct 2026 18:34:23 GMT
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
	-	`sha256:b6425739dfc41b388854c309c4d3848233f81a5988c74f0490d1455bc5a2ce72`  
		Last Modified: Tue, 27 Oct 2026 18:34:29 GMT  
		Size: 1.1 KB (1085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682ee514c51cb3046c2d80c13d1efd54256ca7e3787f9561e647009f585a7f98`  
		Last Modified: Tue, 27 Oct 2026 18:34:29 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a5cbf3b556beb989d63839b21140a897d07dad73ba095da633ded9fb6c17de`  
		Last Modified: Tue, 27 Oct 2026 18:34:28 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598ce6f7d43e131deabe4a02c3cc63dcfdeabb08cf3ebd5d6094e920b71199e5`  
		Last Modified: Tue, 27 Oct 2026 18:34:27 GMT  
		Size: 78.3 KB (78337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9fa1a6640329e23567c8c83e61e2c900b2ad7d4ae9089c30a0e2e974f1b762`  
		Last Modified: Tue, 27 Oct 2026 18:34:27 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c42b0f218fb67d8ff27bde36da492ee41fcd31c1049e1e63582e5f21e53a02`  
		Last Modified: Tue, 27 Oct 2026 18:34:37 GMT  
		Size: 194.8 MB (194766012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05bc66391a0dfac2a9869611e9ccf41eb407f5bf044dd255813c6e1208bd015`  
		Last Modified: Tue, 27 Oct 2026 18:34:27 GMT  
		Size: 108.4 KB (108390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc21419b7465d4cbe358a042462fde2b7108f1e312e42ee8705ce221f417265`  
		Last Modified: Tue, 27 Oct 2026 18:34:27 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
