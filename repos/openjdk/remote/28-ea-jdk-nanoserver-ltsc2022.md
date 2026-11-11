## `openjdk:28-ea-jdk-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:af0d22689f79fa0a927d5437176eb7ee801634da5da5e8fafd838f731c6c39aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `openjdk:28-ea-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull openjdk@sha256:3cb2485bfdb7177370b1d908d347089b4558d4ceca3a0a84aedc96f26a77fcf6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.1 MB (366088488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9926f1a818f61b6718019a99b054298588ce002430c1037f85909138b19d46`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:43:55 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:45:52 GMT
ENV JAVA_HOME=C:\openjdk-28
# Wed, 11 Nov 2026 22:45:52 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:45:54 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Wed, 11 Nov 2026 22:45:54 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:45:54 GMT
ENV JAVA_VERSION=28-ea+23
# Wed, 11 Nov 2026 22:46:02 GMT
COPY dir:eccb7be0a9f8eaa58f5562ed94140b38f060cdd923e40d7690403e8044ef352a in C:\openjdk-28 
# Wed, 11 Nov 2026 22:46:09 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Wed, 11 Nov 2026 22:46:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af605ba248ae10136605981a70cd0f8b7b0d23af42f18b760f02a442d9a8e8f5`  
		Last Modified: Wed, 11 Nov 2026 22:44:15 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cb1e43ad773511380727b8d47c5644bcbc2ee242c241032ed5955f6b4ba59e`  
		Last Modified: Wed, 11 Nov 2026 22:46:15 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499f190579ba79aaa40753f5f742d8b6f8cb0bdcb296770489a00b9100482802`  
		Last Modified: Wed, 11 Nov 2026 22:46:15 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc4006a1f1f470f47068fbf548f96b2986ff232e5b6e70e7484458d99e73c47`  
		Last Modified: Wed, 11 Nov 2026 22:46:15 GMT  
		Size: 75.9 KB (75889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f25f3d6f7c5085b087c1fcb0525db95e98b72962c2417b1056217cf5ee6ba09`  
		Last Modified: Wed, 11 Nov 2026 22:46:14 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad96fa224db844f964905a9b96b33b8e639e93228a9b973f700cd7ec47187600`  
		Last Modified: Wed, 11 Nov 2026 22:46:13 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82744454f1ba75be9c9dda6395fc43d0c3924e9b88262eec881c5a0deec6d913`  
		Last Modified: Wed, 11 Nov 2026 22:46:30 GMT  
		Size: 239.6 MB (239612812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a559d5f289130cc4a40ee0e000cfe5da4ffe16b07d995afb4234cf4b7194fe4`  
		Last Modified: Wed, 11 Nov 2026 22:46:14 GMT  
		Size: 108.5 KB (108453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93c98ae2a31c7cfca643058d7fdeff5466ebe6b283ae00c903f884a1bb07349`  
		Last Modified: Wed, 11 Nov 2026 22:46:13 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
