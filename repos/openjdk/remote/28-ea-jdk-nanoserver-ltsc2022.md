## `openjdk:28-ea-jdk-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:d1784c8472b0fcee490639f3180e3761e190c71b7f161d0eb87503dc1e1abc25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `openjdk:28-ea-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5873; amd64

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
