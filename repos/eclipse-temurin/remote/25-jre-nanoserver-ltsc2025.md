## `eclipse-temurin:25-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:f370d2ad9a5f82cac7485f97b522a84c186a72b0aa703484ba36b8496ae7bdb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `eclipse-temurin:25-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:fb70a479fdc07392e6e741487884de84fb0f8a343995dfbc67ea7320230c496e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258861698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4976fc8c26eaba05646ea08fbff169128515504f5f891d93e31327dca13ea3fb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Thu, 29 Oct 2026 19:48:17 GMT
SHELL [cmd /s /c]
# Thu, 29 Oct 2026 19:49:34 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 29 Oct 2026 19:49:34 GMT
ENV JAVA_HOME=C:\openjdk-25
# Thu, 29 Oct 2026 19:49:34 GMT
USER ContainerAdministrator
# Thu, 29 Oct 2026 19:49:36 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Thu, 29 Oct 2026 19:49:37 GMT
USER ContainerUser
# Thu, 29 Oct 2026 19:49:47 GMT
COPY dir:15a6112ae90293e4cdecb6b550af3ac2909637d63cef8f8a0f8f1e8fcf140aa2 in C:\openjdk-25 
# Thu, 29 Oct 2026 19:49:50 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1ed43b7dc0b9bc9e594519af56e99314d4d2ad9f33faba52c529335ba80516`  
		Last Modified: Thu, 29 Oct 2026 19:49:08 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06656239ac177150a72d339e6fc0f9f17035620d6b0bef4d67399d9d3f7b2e93`  
		Last Modified: Thu, 29 Oct 2026 19:49:55 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988291248b53cfefbfde3b2b83031496577b4aae1d386ebc3d7a455a67380d80`  
		Last Modified: Thu, 29 Oct 2026 19:49:55 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da7c87baf5ef011d91c60307810fe15e0bbf547e87dbdb94a73e1b1b9ee41dc`  
		Last Modified: Thu, 29 Oct 2026 19:49:54 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bfc1eae57268d454e21cf67b0441a0ce8ecf7d98c4b1f8bfe9814d27beb3f23`  
		Last Modified: Thu, 29 Oct 2026 19:49:54 GMT  
		Size: 72.8 KB (72819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55bd5a2b4c617dd5a61b4979714364c84918a43ebe1bdcf6d34eee6a5413652e`  
		Last Modified: Thu, 29 Oct 2026 19:49:54 GMT  
		Size: 1.0 KB (1005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4629a9bdf5ce562174338086360714231443d3387ae5672706a64985358e2fa2`  
		Last Modified: Thu, 29 Oct 2026 19:50:01 GMT  
		Size: 58.7 MB (58738757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bc9c1fb3773a5ef20057c315a8983df8af6560ba006e640067012f7d81969a`  
		Last Modified: Thu, 29 Oct 2026 19:49:54 GMT  
		Size: 85.9 KB (85904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
