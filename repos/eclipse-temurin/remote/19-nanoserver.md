## `eclipse-temurin:19-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:59d057292cde6fa3fbae2c617e00eebc784a759e290a2544c5d74cbc4ee75202
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.20348.1487; amd64
	-	windows version 10.0.17763.3887; amd64

### `eclipse-temurin:19-nanoserver` - windows version 10.0.20348.1487; amd64

```console
$ docker pull eclipse-temurin@sha256:537a37429f01331103a6cf4a991306b976e04adff4960abd5c5221b605063d36
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315536081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:162de9289778e8e90501b7c2fe12fb04d187b7129550693f638115f8ecca4642`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Fri, 06 Jan 2023 23:36:49 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 02:19:48 GMT
SHELL [cmd /s /c]
# Wed, 25 Jan 2023 19:39:22 GMT
ENV JAVA_VERSION=jdk-19.0.2+7
# Wed, 25 Jan 2023 19:39:23 GMT
ENV JAVA_HOME=C:\openjdk-19
# Wed, 25 Jan 2023 19:39:24 GMT
USER ContainerAdministrator
# Wed, 25 Jan 2023 19:39:38 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 25 Jan 2023 19:39:39 GMT
USER ContainerUser
# Wed, 25 Jan 2023 19:39:58 GMT
COPY dir:09b3ada3bc8ac44822b97a9a56d697461744d2194cdcb6ab15233b0b9b376e38 in C:\openjdk-19 
# Wed, 25 Jan 2023 19:40:30 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 25 Jan 2023 19:40:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:83e9437e818022c1c28f0e07002dd46995c8614e62b9366138fa23b94f43d9ad`  
		Last Modified: Thu, 12 Jan 2023 02:51:06 GMT  
		Size: 122.1 MB (122099566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbebbf572ebe7984b715b8dfe99bc1273403a831c0079b95afa12162b7266f16`  
		Last Modified: Thu, 12 Jan 2023 02:50:38 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8c5c16cd65b217276a0998fede9dae429cb0e71f2d808979e0c1e3f47b5761`  
		Last Modified: Wed, 25 Jan 2023 19:50:04 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395dfe8afbc45ba2eec3be3a7fe626ed743baea1e20fe334d809c542e06932e0`  
		Last Modified: Wed, 25 Jan 2023 19:50:04 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395235b943d4f68c3aabf58c1516dcc101a6b27a11986783f14961858321b16f`  
		Last Modified: Wed, 25 Jan 2023 19:50:04 GMT  
		Size: 1.1 KB (1142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7598f9d8795b91b3391d700891dd834f7a448fdf36bfbcf3214db6566466d2`  
		Last Modified: Wed, 25 Jan 2023 19:50:02 GMT  
		Size: 84.8 KB (84819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da29c2c5cf0f9b1ba9ff6d01e75ab6769c5633b757dc6e307d399072d3775ce`  
		Last Modified: Wed, 25 Jan 2023 19:50:02 GMT  
		Size: 1.1 KB (1142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd14de92d037615a11f861d2afa6c9465cd90df30edd0963016492c90a0c7ac`  
		Last Modified: Wed, 25 Jan 2023 19:50:25 GMT  
		Size: 193.3 MB (193253051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:675166fe7dcdf019c842808731fe078950d0ede8d1bf9be1e9e4c5f6f3da4753`  
		Last Modified: Wed, 25 Jan 2023 19:50:02 GMT  
		Size: 91.8 KB (91804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc62a50adaa4360c63bdcdb2e91a574613def7ca3ac52e5555e1f46000f2572`  
		Last Modified: Wed, 25 Jan 2023 19:50:02 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:19-nanoserver` - windows version 10.0.17763.3887; amd64

```console
$ docker pull eclipse-temurin@sha256:223d3cb3ae3bd73d13ae470675aa351b796518b6003cb904fa7b515c53be98fb
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.7 MB (303713692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be226f13eab69ec5401dafe2ea0afeeff3733e6ea8eb5d66eea39ac23af00ed`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:45:31 GMT
SHELL [cmd /s /c]
# Wed, 25 Jan 2023 19:31:13 GMT
ENV JAVA_VERSION=jdk-19.0.2+7
# Wed, 25 Jan 2023 19:31:14 GMT
ENV JAVA_HOME=C:\openjdk-19
# Wed, 25 Jan 2023 19:31:15 GMT
USER ContainerAdministrator
# Wed, 25 Jan 2023 19:31:26 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 25 Jan 2023 19:31:27 GMT
USER ContainerUser
# Wed, 25 Jan 2023 19:31:44 GMT
COPY dir:09b3ada3bc8ac44822b97a9a56d697461744d2194cdcb6ab15233b0b9b376e38 in C:\openjdk-19 
# Wed, 25 Jan 2023 19:32:14 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 25 Jan 2023 19:32:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e58f9ad3b15a2a4882ab0a845e8e619cc8c3c411ddbe8b50046c1618a95c1397`  
		Last Modified: Thu, 12 Jan 2023 02:40:44 GMT  
		Size: 106.7 MB (106666138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea67a6bd980bdee35399883e5abcc31c738b338ad384b2f92d91a15cf09d9df`  
		Last Modified: Thu, 12 Jan 2023 02:40:16 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252b36fa4e2a05c79142be9f67c2af64b3abf3f98ab329ca0a25fce950a1a6c9`  
		Last Modified: Wed, 25 Jan 2023 19:47:43 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37375f8c13ccf8fb7da257ce1ff1bee2cf44e6a1a0f8b92b3bf39e9b58798828`  
		Last Modified: Wed, 25 Jan 2023 19:47:43 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1dbe9a3173116874f03b155a05a1bd4c2735ee719aa09238a2649cb7bdad6ac`  
		Last Modified: Wed, 25 Jan 2023 19:47:43 GMT  
		Size: 1.1 KB (1122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5761b874ef22a2217f66d4139cc2c9534141559dd08f28c7d816265710ae7e`  
		Last Modified: Wed, 25 Jan 2023 19:47:41 GMT  
		Size: 77.6 KB (77609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f289eac0052969d9a59e00936476673e758cf44bb2b6489e7b91acb34efa261`  
		Last Modified: Wed, 25 Jan 2023 19:47:41 GMT  
		Size: 1.1 KB (1130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41f14ffbbb32c17acdf3a83c3a3e02a0bdc1c2ab01cb51ee592cf9de7740bd0`  
		Last Modified: Wed, 25 Jan 2023 19:48:04 GMT  
		Size: 193.3 MB (193268711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01d9b4fa60786217bf49ec5591b789143f4b0913db510b9499badb7e147569f`  
		Last Modified: Wed, 25 Jan 2023 19:47:42 GMT  
		Size: 3.7 MB (3694362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d409dd8494ee691c6e070023b52d43281ff156bc407c073adc852b1ce42507f8`  
		Last Modified: Wed, 25 Jan 2023 19:47:41 GMT  
		Size: 1.1 KB (1142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
