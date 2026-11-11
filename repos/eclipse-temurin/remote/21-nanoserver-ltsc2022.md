## `eclipse-temurin:21-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:4c68a80df698e624beb35471d7c8f7519c063d11edf9aa228ab246c9024a46a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `eclipse-temurin:21-nanoserver-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull eclipse-temurin@sha256:ae3207c7f5ca904b41bed2bd098817718ba8a160a12687389aab86ba3f0bc859
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.7 MB (328694296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6c2aa24fd8594b0b6887cc73745237bc0c9785625f740998116296b19d98f2`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:43:34 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:44:29 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 22:44:30 GMT
ENV JAVA_HOME=C:\openjdk-21
# Wed, 11 Nov 2026 22:44:30 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:44:31 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:44:32 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:44:39 GMT
COPY dir:3c69d8edc03ef6b3f984ec479ade8010e93305a20601dbd14a3ed88be7a27183 in C:\openjdk-21 
# Wed, 11 Nov 2026 22:44:44 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 11 Nov 2026 22:44:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a628f93392bd1fa9aa32df95eddef1c784bade770901514dafc547aa2e9ffd94`  
		Last Modified: Wed, 11 Nov 2026 22:43:54 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c97135761d7f298921ff18152a9c616bb7751cdccbb3a25e30c734e20fca871`  
		Last Modified: Wed, 11 Nov 2026 22:44:51 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e996a467eae662e4a6629d26f43c3cd137a65b1cc958c9ddb2d2d926bc2a282e`  
		Last Modified: Wed, 11 Nov 2026 22:44:51 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c230eefbb654d6bb26dad399c9ec8022cbc33b266b5eb7c7e248cee9dd79ca`  
		Last Modified: Wed, 11 Nov 2026 22:44:50 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927d97d72a7e91a5a77c8a5909c18bd1ae745e004e588012b97a10d842d25e43`  
		Last Modified: Wed, 11 Nov 2026 22:44:49 GMT  
		Size: 77.8 KB (77794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a444213e5000f2310eb00752a0354bffa703ed8925bec436ab69539c4540934`  
		Last Modified: Wed, 11 Nov 2026 22:44:49 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147f7ffe54a20ccdf724cb2602ab6bab42e12eedf80163ce30779742e94c4c44`  
		Last Modified: Wed, 11 Nov 2026 22:45:00 GMT  
		Size: 202.2 MB (202218055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45a379a1abb3a1ce2473f8f99f92c9f62aaf886f147b0eb2780f56edcf845dff`  
		Last Modified: Wed, 11 Nov 2026 22:44:49 GMT  
		Size: 107.1 KB (107115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae42951dd1e0fa62f1ae21ac64edd8345eaf54003da8ee083658fbaf9582116`  
		Last Modified: Wed, 11 Nov 2026 22:44:49 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
