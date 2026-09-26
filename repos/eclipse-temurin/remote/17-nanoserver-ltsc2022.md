## `eclipse-temurin:17-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:0ea7a02f6aa385e46fad05b0bb9b0a7d9bf1ea08324550ace30eea23cfdd95c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:17-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:2a29b8095d4503a25d6431f3951e5242529e2c09c04f685484c1eba62330fb12
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.5 MB (312474023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bff927ab71a64c34d5e5a69500d9b461102002e2d27887f4e6e6515202f7f0f`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Fri, 25 Sep 2026 23:13:58 GMT
SHELL [cmd /s /c]
# Fri, 25 Sep 2026 23:14:57 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 23:14:57 GMT
ENV JAVA_HOME=C:\openjdk-17
# Fri, 25 Sep 2026 23:14:58 GMT
USER ContainerAdministrator
# Fri, 25 Sep 2026 23:15:00 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 25 Sep 2026 23:15:01 GMT
USER ContainerUser
# Fri, 25 Sep 2026 23:15:22 GMT
COPY dir:3a5535544d6fb312c0f44eb2f3dd3631cac8c859fdbee30782f06557677f7659 in C:\openjdk-17 
# Fri, 25 Sep 2026 23:15:25 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Fri, 25 Sep 2026 23:15:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba7606da81c1e59f9b7ece57412470ddc11dd5ffb417294ee7a13c883e3ec98`  
		Last Modified: Fri, 25 Sep 2026 23:14:36 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22dfa984e52b19e41379d9128b47c9bfe102bdebbeed9d326219c29cc550c8d6`  
		Last Modified: Fri, 25 Sep 2026 23:15:31 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd2548f6d806161f7740f5d41ea8d46b19922db2796f4a338744e1c8ec13b66`  
		Last Modified: Fri, 25 Sep 2026 23:15:32 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa9537179f69c7aea645ec8abccc5b36c4bccbb1e0caeacc554665733acca7d`  
		Last Modified: Fri, 25 Sep 2026 23:15:31 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffd3ca73a04535a7e1937d0ee79a8db52f67dfb2c2869b8df011b4381d10fe5`  
		Last Modified: Fri, 25 Sep 2026 23:15:30 GMT  
		Size: 78.9 KB (78893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899aa902c7cfc977e65bd67f2920f49f8e7156c4a4fbc434be61e3f303788ebf`  
		Last Modified: Fri, 25 Sep 2026 23:15:30 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466daa35be5ac72cc79178ad34c7af3ba620f016f53a068b0a6256ac46bfaffd`  
		Last Modified: Fri, 25 Sep 2026 23:15:40 GMT  
		Size: 187.6 MB (187642503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b251047378b1bdb91270b027dc95a7a176cef483d2a41e11c72c7b60d74cede`  
		Last Modified: Fri, 25 Sep 2026 23:15:30 GMT  
		Size: 108.8 KB (108821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987d3be8c882d13b4737352ff54573a2eb005e27a9072966f1e29bee152e48a2`  
		Last Modified: Fri, 25 Sep 2026 23:15:30 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
