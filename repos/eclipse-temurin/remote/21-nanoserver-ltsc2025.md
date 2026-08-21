## `eclipse-temurin:21-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:2b69fd298882133b4f1976e3147f441bbd03cc4381f19ac70d38655d9345c7fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:21-nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:1e03be9a36f679009c748743a8a5bd2c3c40273d880d8d0bfc6ea8009993dd63
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.5 MB (399529893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dadea28a08b246ed17e448f61f3306ca7296edb4d6e59ed17615e93fe488e57`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Fri, 21 Aug 2026 18:35:35 GMT
SHELL [cmd /s /c]
# Fri, 21 Aug 2026 18:50:20 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:50:20 GMT
ENV JAVA_HOME=C:\openjdk-21
# Fri, 21 Aug 2026 18:50:21 GMT
USER ContainerAdministrator
# Fri, 21 Aug 2026 18:50:22 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 21 Aug 2026 18:50:23 GMT
USER ContainerUser
# Fri, 21 Aug 2026 18:50:33 GMT
COPY dir:0834ce0442693c0f1f088bdbe5aa2e6929b552bb7d2fb8becac9a5b90ee9dea0 in C:\openjdk-21 
# Fri, 21 Aug 2026 18:50:37 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Fri, 21 Aug 2026 18:50:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a807cc0701b3a4fffbe325ed2e341d4c1235a688a0dca04762f4798c5304ceff`  
		Last Modified: Fri, 21 Aug 2026 18:36:28 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28168143bc371b6dcdbab067094f9e87b7d066a058139860d4e743973640507b`  
		Last Modified: Fri, 21 Aug 2026 18:50:43 GMT  
		Size: 1.1 KB (1051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a99bba504703a27f432c49c2a9b43a2f48d7787d9c4aa230f981ec93b9df2a`  
		Last Modified: Fri, 21 Aug 2026 18:50:43 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8492f84da4b8c015479be1f197f7224d377331669706e4d40684f2c2930401db`  
		Last Modified: Fri, 21 Aug 2026 18:50:43 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ac612d4b49718c17ada118e9a8f128f33f3720234155b296bd687d9723df74`  
		Last Modified: Fri, 21 Aug 2026 18:50:42 GMT  
		Size: 73.2 KB (73229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad72091d9e05db7c789fd50347956ea4e45bdd03fbab5c9765eeb406234ddc6`  
		Last Modified: Fri, 21 Aug 2026 18:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb4b394c656e294cd0f62781a8e9745c320f38e85aa3706ced5069cfa6c8a54`  
		Last Modified: Fri, 21 Aug 2026 18:50:54 GMT  
		Size: 201.9 MB (201875004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dcd9926cd0595ebd88249724e66a7c7585ae7b3211ae91efc1cd84cb55652c9`  
		Last Modified: Fri, 21 Aug 2026 18:50:42 GMT  
		Size: 93.3 KB (93251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8297119cb91b266a1ecf5bb74732afd270fe58e08fe4ecf844a7b86faffa29`  
		Last Modified: Fri, 21 Aug 2026 18:50:42 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
