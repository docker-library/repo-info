## `eclipse-temurin:11-jdk-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:8d26461b43dfa0178c41e0b1af078ffb8ab840b09f6e0e9cad43e6a061d07bef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:11-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:6301032d54b20a4b6cbe9eb2ebed6934ed7155bc4dc732e82e9339799af332aa
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.9 MB (320944258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:915c7a20385c89994c5d6f0b3145faf2ebd00ceb99669ca83221ef84932a7892`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Mon, 09 Nov 2026 23:52:48 GMT
SHELL [cmd /s /c]
# Mon, 09 Nov 2026 23:52:49 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Mon, 09 Nov 2026 23:52:51 GMT
ENV JAVA_HOME=C:\openjdk-11
# Mon, 09 Nov 2026 23:52:51 GMT
USER ContainerAdministrator
# Mon, 09 Nov 2026 23:53:06 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 09 Nov 2026 23:53:07 GMT
USER ContainerUser
# Mon, 09 Nov 2026 23:53:43 GMT
COPY dir:b2a9c02cf7043eaf69305b168557ff2023c509d078176e53125d7b39898c1c89 in C:\openjdk-11 
# Mon, 09 Nov 2026 23:53:48 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Mon, 09 Nov 2026 23:53:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d981e834816a7115998a2df1128f237e403585ba872cafcb618c3f576404d604`  
		Last Modified: Mon, 09 Nov 2026 23:53:54 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818e2b42db449103811960c546e98edc82f6d30ee0adf68c6c7de66ce38f57da`  
		Last Modified: Mon, 09 Nov 2026 23:53:53 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f2ddd19d85663bfb49da2cf8c6b4e3fea2696dcdfbe15a40f508791e48e738`  
		Last Modified: Mon, 09 Nov 2026 23:53:53 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd00a1a1f7875d161808f6f4464e35aa5ce66632b554d50d8f26fa1bb4e4a0d7`  
		Last Modified: Mon, 09 Nov 2026 23:53:53 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eca4f1b399e78e629c159486951198cf10b822c8ec02a0fe1f28b058ed70fad`  
		Last Modified: Mon, 09 Nov 2026 23:53:52 GMT  
		Size: 70.9 KB (70937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fa08aaed6585d5db26c15bd6fec1314941de92dce663bfa5783ee119a1a672`  
		Last Modified: Mon, 09 Nov 2026 23:53:52 GMT  
		Size: 1.1 KB (1058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be5b9a1f95938806a9f8406454740db296d6c807e6957dace9b8055b45bef1b`  
		Last Modified: Mon, 09 Nov 2026 23:54:03 GMT  
		Size: 194.8 MB (194843480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72d2b2fe1bb8540c4fbaaf4bca58064799c37c3a8b3a6fdad1d711f72ad60a1`  
		Last Modified: Mon, 09 Nov 2026 23:53:52 GMT  
		Size: 96.8 KB (96784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a13f14d7ba34ff0a6e526c7a02d98a940d11835bc78a77eba9aacf80c9e91c`  
		Last Modified: Mon, 09 Nov 2026 23:53:52 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
