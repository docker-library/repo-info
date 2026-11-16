## `openjdk:28-ea-jdk-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:620fba80cc229b0b83583462aba54475c9d90ff1bc9978f71f3fb8b9ad43eac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `openjdk:28-ea-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull openjdk@sha256:43e0afebc121b4e4cbf60482fdff4d681e0b45b9314d966595a1da5b8f07978c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.1 MB (366079555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:500bddd82ad4eff88f1bb0dd80e62e4f788cce818405988b2d1354e21ca6024a`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Thu, 12 Nov 2026 02:20:28 GMT
RUN Apply image 10.0.20348.5873
# Mon, 16 Nov 2026 20:35:10 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:36:57 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 16 Nov 2026 20:36:57 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:36:59 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Mon, 16 Nov 2026 20:36:59 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:36:59 GMT
ENV JAVA_VERSION=28-ea+23
# Mon, 16 Nov 2026 20:37:09 GMT
COPY dir:eccb7be0a9f8eaa58f5562ed94140b38f060cdd923e40d7690403e8044ef352a in C:\openjdk-28 
# Mon, 16 Nov 2026 20:37:15 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Mon, 16 Nov 2026 20:37:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:533f90db12914056d2c2d338afdeb6ce815e38f2a5fdf28be8b9614e39964ffc`  
		Last Modified: Fri, 13 Nov 2026 18:24:32 GMT  
		Size: 126.3 MB (126273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea961ea83833b6c13386b25ad7a87d3dde337695b8ac88578602607985d16a2c`  
		Last Modified: Mon, 16 Nov 2026 20:35:35 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c85cec51df0ed0754ee0012f487780d2db91a12366223d5aa5df05700277756`  
		Last Modified: Mon, 16 Nov 2026 20:37:21 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a736812cb808720352bd8a9174a9f424fb20b9fe030ac968045aaad001cc8d`  
		Last Modified: Mon, 16 Nov 2026 20:37:21 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09479b15d602017737f2b935955ca8a8c2892696001a877a686539ba4303fab`  
		Last Modified: Mon, 16 Nov 2026 20:37:21 GMT  
		Size: 79.2 KB (79210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9a10fa2075daf6f98d5ca94d1a25adf516bd06846e13aa532dee90f003cc5a`  
		Last Modified: Mon, 16 Nov 2026 20:37:19 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee3e2531a973e8f312d981968d7fa64bf2520bc04dbcc2005d0466b01d9d211`  
		Last Modified: Mon, 16 Nov 2026 20:37:19 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc143b7d9b749b8d791b20acc9e8916c75008a4056691f60ad0c34e5641f492`  
		Last Modified: Mon, 16 Nov 2026 20:37:36 GMT  
		Size: 239.6 MB (239612545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1620e4ba79f8d77e911a6b184de7acb96c7538b82ac583f564ade8fca6014de`  
		Last Modified: Mon, 16 Nov 2026 20:37:19 GMT  
		Size: 107.6 KB (107553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c33f656ab4c7f825cceef14e13f0db406e5ec05951f0ed84d6a172a3a6d0b`  
		Last Modified: Mon, 16 Nov 2026 20:37:19 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
