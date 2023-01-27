## `eclipse-temurin:11-jdk-nanoserver-1809`

```console
$ docker pull eclipse-temurin@sha256:da89870577478599878c2f87fa5729be04d2d64cfd57945faa8ebe5aa3c32a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `eclipse-temurin:11-jdk-nanoserver-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull eclipse-temurin@sha256:51b457cd8d2903fa802232c2d97ed0a6be13a12ac2b73042b81bac1d722b5da9
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.7 MB (299728848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7403afa32e93d1d54ae9f7d470bf75082944b03efd4453be4f0612321b22f2e`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:45:31 GMT
SHELL [cmd /s /c]
# Tue, 24 Jan 2023 18:21:15 GMT
ENV JAVA_VERSION=jdk-11.0.18+10
# Tue, 24 Jan 2023 18:21:15 GMT
ENV JAVA_HOME=C:\openjdk-11
# Tue, 24 Jan 2023 18:21:16 GMT
USER ContainerAdministrator
# Tue, 24 Jan 2023 18:21:31 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 24 Jan 2023 18:21:31 GMT
USER ContainerUser
# Tue, 24 Jan 2023 18:21:47 GMT
COPY dir:3631bd3b4ae70db635b51d6f7ad3f3254aa758db5b0d079379d506c898ecba14 in C:\openjdk-11 
# Tue, 24 Jan 2023 18:22:16 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Tue, 24 Jan 2023 18:22:16 GMT
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
	-	`sha256:2b99c917604c15b95245502b5e55b9d09f797132e24dd5c4c69c30f31bf80798`  
		Last Modified: Tue, 24 Jan 2023 21:24:24 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba942f5f8286ca02b862d477002e5cf220aefae67168f75cec6355341f8d753b`  
		Last Modified: Tue, 24 Jan 2023 21:24:24 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d57c5b2779cdb65d8a27f3ce3de9ee28fbd2a2e534276a16e3dc9f076cf3f`  
		Last Modified: Tue, 24 Jan 2023 21:24:24 GMT  
		Size: 1.1 KB (1136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532221a4eb3988482618e297e7cb5e23d49990f3f6080d68a2efe328e50bf503`  
		Last Modified: Tue, 24 Jan 2023 21:24:22 GMT  
		Size: 69.3 KB (69321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98fbb33f9848d00c0fe436d26f898dc5d2254bae024ffc8be1aa08c9b0fb742c`  
		Last Modified: Tue, 24 Jan 2023 21:24:22 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443c867cec980d5902dfd8fd88525ad68b0da512829d76e783f86492ca100690`  
		Last Modified: Tue, 24 Jan 2023 21:24:46 GMT  
		Size: 192.9 MB (192904119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36084f8ca9b6fce7d35dca21ddf85590a7b63b3ab326ae45db21d0f92e938336`  
		Last Modified: Tue, 24 Jan 2023 21:24:22 GMT  
		Size: 82.3 KB (82305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaabe7023d60ea4fc027097777b6ef6f280e06883d6ded5d71c2909c35bc781a`  
		Last Modified: Tue, 24 Jan 2023 21:24:22 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
