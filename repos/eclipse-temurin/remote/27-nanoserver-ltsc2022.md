## `eclipse-temurin:27-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:83d389862ab89125826ade2f9cd9745332d65302dff0a72170142cc0b0eb6d16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:27-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:0082a55b60ead721591e916a0bca90237d89461204365ec2582c1fe3126d9b92
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.9 MB (265865373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e0ec79d09b68438cc51bb659ca63ba01f5370fc4c278bf2440b605006bfdbe4`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Mon, 09 Nov 2026 23:48:44 GMT
SHELL [cmd /s /c]
# Mon, 09 Nov 2026 23:55:48 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Mon, 09 Nov 2026 23:55:48 GMT
ENV JAVA_HOME=C:\openjdk-27
# Mon, 09 Nov 2026 23:55:49 GMT
USER ContainerAdministrator
# Mon, 09 Nov 2026 23:55:50 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 09 Nov 2026 23:55:51 GMT
USER ContainerUser
# Mon, 09 Nov 2026 23:56:01 GMT
COPY dir:041fe613e042f012223ab1e1c125a8deb708fca71df02a9b28a463aa3361bff9 in C:\openjdk-27 
# Mon, 09 Nov 2026 23:56:05 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Mon, 09 Nov 2026 23:56:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b3aa508ed803c4f60dedceb59dc65a815ce47222e478babf1e2f63ada1be25`  
		Last Modified: Mon, 09 Nov 2026 23:50:18 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08036d6f35768a93a261d364497b8c8ff33af6d9a781e2f6f8067fb8e459938`  
		Last Modified: Mon, 09 Nov 2026 23:56:10 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28420de34ad392ce5009e76e33d346ce6c576c0c3a17b8a539a94ba927922331`  
		Last Modified: Mon, 09 Nov 2026 23:56:10 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43b5affc209ce0a332a8f3502a0fba7e5079ed0e409631a583acaa5ee90811e`  
		Last Modified: Mon, 09 Nov 2026 23:56:10 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ab10c5bc16972d0070dd73b6ed4642f94ba9b572af6ba0f7ccf89404c3bd11`  
		Last Modified: Mon, 09 Nov 2026 23:56:09 GMT  
		Size: 77.5 KB (77469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb818778bc34d63b839d228e330909365631e980388e7c667a8f67b258630ce`  
		Last Modified: Mon, 09 Nov 2026 23:56:09 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b36e5b3a4c5302015724da019e24e3a14f0458fefec377789461edee0cee4c48`  
		Last Modified: Mon, 09 Nov 2026 23:56:19 GMT  
		Size: 139.7 MB (139746961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf01ce6cdedf5bbda05c21378112ab16c4bef21804817024742b260164f6868`  
		Last Modified: Mon, 09 Nov 2026 23:56:09 GMT  
		Size: 107.9 KB (107936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac6c3d2f8bcdfbf883916377a63c5feeed91edcd37d0c2700c4d94d5987ee92`  
		Last Modified: Mon, 09 Nov 2026 23:56:09 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
