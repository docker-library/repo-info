## `eclipse-temurin:11-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:48f3f7fbb19bec920085dc44042f3a3f37e5d953c83dc19fd9a4947aa5622b23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:11-jre-nanoserver` - windows version 10.0.26100.33674; amd64

```console
$ docker pull eclipse-temurin@sha256:48661207d7715c7f8d58cb5fea6b7ead895bbdd124ff7826258447a566b09c70
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243861024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eac20fb5c406812ad5be891d51220d9f150a1a549c8e458b8fb7930e133542c6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Tue, 27 Oct 2026 18:39:39 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:39:40 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Tue, 27 Oct 2026 18:39:41 GMT
ENV JAVA_HOME=C:\openjdk-11
# Tue, 27 Oct 2026 18:39:41 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:39:48 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:39:48 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:39:59 GMT
COPY dir:932951a7f9cc979d426261013a8e7d4b19921ca73270e018152705df3374f84b in C:\openjdk-11 
# Tue, 27 Oct 2026 18:40:04 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8963d610e63deee725488348e78c02cfdfd2a0112f63f2b509428429733553b9`  
		Last Modified: Tue, 27 Oct 2026 18:40:10 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f90d6118049fa1b04ad6aa854a92d12be5cdd2625d970b618780fef86d3debb`  
		Last Modified: Tue, 27 Oct 2026 18:40:09 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844f1acadae728f93d691093b796bdc3a08f2c74c6871356f21d1b211be0e21d`  
		Last Modified: Tue, 27 Oct 2026 18:40:09 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b80af7e4bafd9efe6b947085a03907ab6e92036d91fbe4c71ce4105421758dab`  
		Last Modified: Tue, 27 Oct 2026 18:40:08 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b3a1de3b9e381a3a49324c9f792d25217cca347b85196928a7afd8393ea967`  
		Last Modified: Tue, 27 Oct 2026 18:40:08 GMT  
		Size: 78.9 KB (78882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7aae6f096136eeb22f522808bea32da5ab9c4eb2823e299b4ff94c9d30714e0`  
		Last Modified: Tue, 27 Oct 2026 18:40:08 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7830137eba57d0cf2bd6fbb035c0488fd022dc40266b2967288732c8a35c75`  
		Last Modified: Tue, 27 Oct 2026 18:40:13 GMT  
		Size: 43.7 MB (43721190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43770bf8ac072fbe8f1a4194fee6ae14cdacd60d68b69f956376d4411e435828`  
		Last Modified: Tue, 27 Oct 2026 18:40:08 GMT  
		Size: 96.6 KB (96635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:11-jre-nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:b8514773bae006d5259826ab2189d83ea3fdbcb092af7268fa37e3d60ba619bd
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.8 MB (169823027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed93d4fc70178cdb0786a8c4c4ef8bc198cf32286f7327bed5657bfdd06ad086`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:34:08 GMT
SHELL [cmd /s /c]
# Tue, 27 Oct 2026 18:34:09 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Tue, 27 Oct 2026 18:34:09 GMT
ENV JAVA_HOME=C:\openjdk-11
# Tue, 27 Oct 2026 18:34:09 GMT
USER ContainerAdministrator
# Tue, 27 Oct 2026 18:34:12 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 27 Oct 2026 18:34:12 GMT
USER ContainerUser
# Tue, 27 Oct 2026 18:34:22 GMT
COPY dir:932951a7f9cc979d426261013a8e7d4b19921ca73270e018152705df3374f84b in C:\openjdk-11 
# Tue, 27 Oct 2026 18:34:24 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bae645cc459facfc87580d9dfbfa68d8a08754feee6b5f557b9cc88338f847`  
		Last Modified: Tue, 27 Oct 2026 18:34:30 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ffd74a65d53c0f6c3622fd85ad1b58f18c04c19892468d3f5b6f359d2173fd8`  
		Last Modified: Tue, 27 Oct 2026 18:34:30 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db08b9fb40a10edf895833d372bff67f5c78559c088cfae8a7dd958e34723ec`  
		Last Modified: Tue, 27 Oct 2026 18:34:30 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9278431fae571401d8c1400401295899b3f4fc34ee8d44d94e29322f9aca6765`  
		Last Modified: Tue, 27 Oct 2026 18:34:28 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c3572b9e9db311c53b4700cc12a854a1557ffdf1a6857b9a0f3c183d79612a7`  
		Last Modified: Tue, 27 Oct 2026 18:34:28 GMT  
		Size: 78.3 KB (78333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7164e25910f0e92c12a1ff7a1ac8712cc9cb5f162945be6e3c1f62b1cacc70d7`  
		Last Modified: Tue, 27 Oct 2026 18:34:28 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678e3a94742d73d053c5d534fea3596bea8376a8842e091509c45194f4895bcc`  
		Last Modified: Tue, 27 Oct 2026 18:34:33 GMT  
		Size: 43.7 MB (43721226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f2ada57d1e41bf56d926a0c2990e54f77bd043a2eaa1a8ec7f67d66538784f`  
		Last Modified: Tue, 27 Oct 2026 18:34:28 GMT  
		Size: 91.5 KB (91478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
