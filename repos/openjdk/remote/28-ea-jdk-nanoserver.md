## `openjdk:28-ea-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:cbb5d729a11a4f17bc0b6f7aed02e78cd010228f0a2a8c3e9d9d88d2cd76022d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33828; amd64
	-	windows version 10.0.20348.5873; amd64

### `openjdk:28-ea-jdk-nanoserver` - windows version 10.0.26100.33828; amd64

```console
$ docker pull openjdk@sha256:43831c0797edbb72c48c6854851284f4d46ecb0354620dd0b02e7bb95137f1af
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.1 MB (441097548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baa4ecc6174cebd0c1d7927a9a28683a080f3695c9f414bc51427b8aa1dd5432`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Wed, 11 Nov 2026 22:43:48 GMT
RUN Apply image 10.0.26100.33828
# Wed, 18 Nov 2026 22:24:08 GMT
SHELL [cmd /s /c]
# Wed, 18 Nov 2026 22:24:10 GMT
ENV JAVA_HOME=C:\openjdk-28
# Wed, 18 Nov 2026 22:24:11 GMT
USER ContainerAdministrator
# Wed, 18 Nov 2026 22:24:30 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Wed, 18 Nov 2026 22:24:30 GMT
USER ContainerUser
# Wed, 18 Nov 2026 22:24:31 GMT
ENV JAVA_VERSION=28-ea+24
# Wed, 18 Nov 2026 22:25:42 GMT
COPY dir:3d05e5977e07c08c090e6718d3a1f64a7059fc29fd93b34e303803b49154fa6b in C:\openjdk-28 
# Wed, 18 Nov 2026 22:25:54 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Wed, 18 Nov 2026 22:25:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6ba6a8d6630dc641648821a651879fd111e21b736d72f09f1eabafe7a0e18a9a`  
		Last Modified: Fri, 13 Nov 2026 21:31:52 GMT  
		Size: 200.2 MB (200239817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9daa08705b2dd63e44e4c1d787fd5d8d2a10b29baf598c2c5652cadf2acb050c`  
		Last Modified: Wed, 18 Nov 2026 22:26:01 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3fc29955ed73c48b9646fc76ab3a51fa8d0fc74336718744909bb37dd1660c`  
		Last Modified: Wed, 18 Nov 2026 22:26:00 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f009b4d3a5f1caa5399c1fabb0fd3397dc0f107324addd163ca1ea3a1ad42a92`  
		Last Modified: Wed, 18 Nov 2026 22:26:00 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8478334e278383e68214981c71aa1063566470636376b3c89c3915c055e45b06`  
		Last Modified: Wed, 18 Nov 2026 22:26:00 GMT  
		Size: 71.6 KB (71628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d84a31017a5b46c1373484f11c3bf7dd3edc270b2559e6263001f8582afa0b`  
		Last Modified: Wed, 18 Nov 2026 22:25:59 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094f8732945d77a26f9db8c276f758584fa14e980dab817fac306c18bc81a7ef`  
		Last Modified: Wed, 18 Nov 2026 22:25:59 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a705b145852d82af0c75bebf06dae412f872c0dd31d7f2aa3defe59b0a8fbc7`  
		Last Modified: Wed, 18 Nov 2026 22:26:15 GMT  
		Size: 240.7 MB (240676799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c2bdaa16de123d6f77b521978e5340c9de24ad8bd503ac638c46a6c95d75a9`  
		Last Modified: Wed, 18 Nov 2026 22:25:59 GMT  
		Size: 103.1 KB (103097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f261ad0ec49fc3b2e48216356621cfb84f26ea746b70a653c8777a78f20c2e`  
		Last Modified: Wed, 18 Nov 2026 22:25:59 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:28-ea-jdk-nanoserver` - windows version 10.0.20348.5873; amd64

```console
$ docker pull openjdk@sha256:3479cabe31230d25e6f2e5aefbf48b69dbbba4ea62afb01d8cbfc6df7a45eefb
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.1 MB (367131405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44940fe28ec92d2b0fc218efc08972438f94e4389a828e4d08cadfb1a766af4a`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Thu, 12 Nov 2026 02:20:28 GMT
RUN Apply image 10.0.20348.5873
# Wed, 18 Nov 2026 22:27:18 GMT
SHELL [cmd /s /c]
# Wed, 18 Nov 2026 22:27:19 GMT
ENV JAVA_HOME=C:\openjdk-28
# Wed, 18 Nov 2026 22:27:20 GMT
USER ContainerAdministrator
# Wed, 18 Nov 2026 22:27:36 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Wed, 18 Nov 2026 22:27:37 GMT
USER ContainerUser
# Wed, 18 Nov 2026 22:27:38 GMT
ENV JAVA_VERSION=28-ea+24
# Wed, 18 Nov 2026 22:29:40 GMT
COPY dir:3d05e5977e07c08c090e6718d3a1f64a7059fc29fd93b34e303803b49154fa6b in C:\openjdk-28 
# Wed, 18 Nov 2026 22:29:46 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Wed, 18 Nov 2026 22:29:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:533f90db12914056d2c2d338afdeb6ce815e38f2a5fdf28be8b9614e39964ffc`  
		Last Modified: Fri, 13 Nov 2026 18:24:32 GMT  
		Size: 126.3 MB (126273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5434f415bb11b5690e5916d860a33c41704e5bd830822376c6043bc85afa60e6`  
		Last Modified: Wed, 18 Nov 2026 22:29:52 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c30424b5cdf13a861d13742119b1162d7b6b16469b4dfa85886ca806c2e3b0`  
		Last Modified: Wed, 18 Nov 2026 22:29:52 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53755edf36657f0498f3fdd11f2f2e2f9a134ed0082c072ff802637ea2457ee1`  
		Last Modified: Wed, 18 Nov 2026 22:29:52 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6748bd69c8d448032b28482c35ebce246523b4282a1763928c73e0efc3a782c5`  
		Last Modified: Wed, 18 Nov 2026 22:29:52 GMT  
		Size: 76.6 KB (76603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41af45b3f3369cb2939297f4b22e4f188e04d87d30b844cc3e6e3f9bbf19cfc`  
		Last Modified: Wed, 18 Nov 2026 22:29:51 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3bc00301302d5e16fd4783af6fc7ef6c1de5e403b5c1fc6db7e7cb15373ff5e`  
		Last Modified: Wed, 18 Nov 2026 22:29:51 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3265627683c516710107c33615aec937db6271368b508dd68bd5e408c192af9`  
		Last Modified: Wed, 18 Nov 2026 22:30:07 GMT  
		Size: 240.7 MB (240676871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b4b193c1d04bb5665b07cb450ce13f8dac3cdfd055677afb05883dd81729d5`  
		Last Modified: Wed, 18 Nov 2026 22:29:51 GMT  
		Size: 97.6 KB (97605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab4073666b985e7f837b36c23fde2eb22e264f9f36cfb7c9ad472ecca5a7bea`  
		Last Modified: Wed, 18 Nov 2026 22:29:51 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
