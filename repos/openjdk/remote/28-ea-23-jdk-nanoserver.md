## `openjdk:28-ea-23-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:10050051b4a52bd7b32cd99e58fb3f49ebfb36060f9912a7f4d458d9615b551f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33822; amd64
	-	windows version 10.0.20348.5870; amd64

### `openjdk:28-ea-23-jdk-nanoserver` - windows version 10.0.26100.33822; amd64

```console
$ docker pull openjdk@sha256:c8c8aea853e21c21e4e3c91d86ed246b39bde1b20dd28325d847355cad27575f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.0 MB (440045683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd7b0af055de33e759d699129a14bb0dd678d1f63bf10c9e66f692bd526f6d85`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 13:08:00 GMT
RUN Apply image 10.0.26100.33822
# Wed, 11 Nov 2026 22:46:17 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:48:31 GMT
ENV JAVA_HOME=C:\openjdk-28
# Wed, 11 Nov 2026 22:48:31 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:48:33 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Wed, 11 Nov 2026 22:48:33 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:48:33 GMT
ENV JAVA_VERSION=28-ea+23
# Wed, 11 Nov 2026 22:48:48 GMT
COPY dir:eccb7be0a9f8eaa58f5562ed94140b38f060cdd923e40d7690403e8044ef352a in C:\openjdk-28 
# Wed, 11 Nov 2026 22:48:54 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Wed, 11 Nov 2026 22:48:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8395a5062b63680acee7661df668d9bf81cca0fdec76ab1b29afd6ab290bf2c0`  
		Last Modified: Tue, 10 Nov 2026 23:37:33 GMT  
		Size: 200.2 MB (200242324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3aadea634bf741db29f8d0bfe15cdb933bb1256d9f87ddad4df0542d5222284`  
		Last Modified: Wed, 11 Nov 2026 22:47:10 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b91b6786e8c9f234bddc6d51c6f952c9d2ace175daf4bde8eea623c340ce3b`  
		Last Modified: Wed, 11 Nov 2026 22:48:59 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f1eaec8caa0b5a39ddb8da922bb3d45ed3300845d4e3e010cf400f7d90957`  
		Last Modified: Wed, 11 Nov 2026 22:48:59 GMT  
		Size: 1.0 KB (1005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57b778128ee3b965d1d962d50af4c3eb18e968e678689cf62da60861e33977f`  
		Last Modified: Wed, 11 Nov 2026 22:48:59 GMT  
		Size: 72.3 KB (72318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5f15999208d9b571fd2aa76a874ba4481a166e0d688671ce1c85d9227c6dd4`  
		Last Modified: Wed, 11 Nov 2026 22:48:58 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e3f0a773663a5df5d657fce43b3c4d44aee12a1cf627d37e4be8d4ed1b96b3`  
		Last Modified: Wed, 11 Nov 2026 22:48:58 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127722bbf8cc01b56c5ec49d8f00b0bcd3aa8f36c72a44fdabf0162e8fc67ce2`  
		Last Modified: Wed, 11 Nov 2026 22:49:13 GMT  
		Size: 239.6 MB (239612481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd4919f40f20ada64f6cd3e24b3cb809f3a72708191d8a1be2f325ec55e01cf`  
		Last Modified: Wed, 11 Nov 2026 22:48:58 GMT  
		Size: 112.4 KB (112387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ff78e6e8c420f567d53567fdb8ecc22546b083c69d2651a4c79c0e2d916136`  
		Last Modified: Wed, 11 Nov 2026 22:48:58 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-23-jdk-nanoserver` - windows version 10.0.20348.5870; amd64

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
