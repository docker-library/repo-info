## `eclipse-temurin:25-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:5cd38c58a6fbe551af3c27c290b26245ff2b33dab03713f047078212fca64667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33828; amd64
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:25-nanoserver` - windows version 10.0.26100.33828; amd64

```console
$ docker pull eclipse-temurin@sha256:d1464f292735d116f021f437419eb0ddcc83c32e828fc9cc93416bdf004d7d97
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.6 MB (338587644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:274b2d74bb4a09154e962e96b49438609542db0e354288761bca3561d4b21d02`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Wed, 11 Nov 2026 22:43:48 GMT
RUN Apply image 10.0.26100.33828
# Mon, 16 Nov 2026 20:45:02 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:45:02 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Mon, 16 Nov 2026 20:45:03 GMT
ENV JAVA_HOME=C:\openjdk-25
# Mon, 16 Nov 2026 20:45:04 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:45:06 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 16 Nov 2026 20:45:07 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:45:35 GMT
COPY dir:9c7b029cf2183851d3f474a2d1015eb9053ddae126bc2cf1988c88dca705e51e in C:\openjdk-25 
# Mon, 16 Nov 2026 20:45:42 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Mon, 16 Nov 2026 20:45:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6ba6a8d6630dc641648821a651879fd111e21b736d72f09f1eabafe7a0e18a9a`  
		Last Modified: Fri, 13 Nov 2026 21:31:52 GMT  
		Size: 200.2 MB (200239817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99123108c822bfa5df950b438d64943db35c4a9d3cb08cbbdeacce4c1dd89b25`  
		Last Modified: Mon, 16 Nov 2026 20:45:49 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d55cfaeaa653b83b7be9cadd7eb232043848c9d8c3c84c26a7575ee8bfb6f1`  
		Last Modified: Mon, 16 Nov 2026 20:45:49 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab6ca5043aa9607cc1464fa4add79bbc180f65180bd73d5aa9509fd5b31e04`  
		Last Modified: Mon, 16 Nov 2026 20:45:48 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf33635c8fcdaed9e98b70c89bf5e7c7d21cd283d1a71e324a66f3ea8f343a9`  
		Last Modified: Mon, 16 Nov 2026 20:45:48 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acc0b5902cf894cd9582d81e37c06b62b8716156581d940d68466f99e85f79f`  
		Last Modified: Mon, 16 Nov 2026 20:45:47 GMT  
		Size: 73.1 KB (73128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ecfb0ce4672b45c71d94119d91af1304da24c86aad2523bf38572f04d1ba06`  
		Last Modified: Mon, 16 Nov 2026 20:45:46 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0989fdc25679b60891aef89dde76e29f18a5e2579910bf59cfaf903e80376f0`  
		Last Modified: Mon, 16 Nov 2026 20:45:58 GMT  
		Size: 138.2 MB (138155181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fd30d384db7fc139fc0205803cf51e47060d7d1c44745bec5a42143f67f7ad`  
		Last Modified: Mon, 16 Nov 2026 20:45:47 GMT  
		Size: 113.3 KB (113313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0703a04b4051e2b13978d28967b4ea681ac03c433929f7629cd25b17d4e55467`  
		Last Modified: Mon, 16 Nov 2026 20:45:47 GMT  
		Size: 1.0 KB (1002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:25-nanoserver` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:e303150ce4994ce4f14e6a72a2c140ccccdbf1d74097d66d08171dd1407f938f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 MB (264619376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f401e6c84e75bab1bada7966f73d1a88138a5ae51fa2399f19c551b79ed56115`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Thu, 12 Nov 2026 02:20:28 GMT
RUN Apply image 10.0.20348.5873
# Mon, 16 Nov 2026 20:35:10 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:35:57 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Mon, 16 Nov 2026 20:35:57 GMT
ENV JAVA_HOME=C:\openjdk-25
# Mon, 16 Nov 2026 20:35:58 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:35:59 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 16 Nov 2026 20:35:59 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:36:05 GMT
COPY dir:9c7b029cf2183851d3f474a2d1015eb9053ddae126bc2cf1988c88dca705e51e in C:\openjdk-25 
# Mon, 16 Nov 2026 20:36:10 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Mon, 16 Nov 2026 20:36:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:533f90db12914056d2c2d338afdeb6ce815e38f2a5fdf28be8b9614e39964ffc`  
		Last Modified: Fri, 13 Nov 2026 18:24:32 GMT  
		Size: 126.3 MB (126273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88a8c91ebb97e636c84dcd5850343f896bc9efd93257bf0d12dceefe1c8c1ec`  
		Last Modified: Mon, 16 Nov 2026 20:35:25 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa715b6f40b88a36adc5f1802ef555669819efc80ccdf3bd2d00ea5822e597c`  
		Last Modified: Mon, 16 Nov 2026 20:36:16 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c200efabc05101d60f6434e32aa5c5e96ac8a94aef6d37f3788a05be2dc3992b`  
		Last Modified: Mon, 16 Nov 2026 20:36:16 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8047d1a8f4a1b2f7f641336c1ba9fb3801cdb556c63bb0089a4f7180b94bc1cd`  
		Last Modified: Mon, 16 Nov 2026 20:36:16 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b3ad1fb5dc36a02cad8493bbb4d7539b89635b70db18325a229d7d12d91420`  
		Last Modified: Mon, 16 Nov 2026 20:36:14 GMT  
		Size: 77.0 KB (76994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1210b0fbbeffb1187bcf70284f1aa8501035820e73bbdccbfacce2a6e51cc719`  
		Last Modified: Mon, 16 Nov 2026 20:36:14 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea8fc4b6c7219a2075d1ba8fe8f854e83e3400a39851e2a3b6980113ce64afd`  
		Last Modified: Mon, 16 Nov 2026 20:36:24 GMT  
		Size: 138.2 MB (138155073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be0e56e23cd766284371bb5f26526b8b870ba10aac457220844d4468c8fbe57`  
		Last Modified: Mon, 16 Nov 2026 20:36:14 GMT  
		Size: 107.0 KB (107038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6deeb18fd62c17a924872b38fd84a56722339439631dea57aa8caeb257e9a39f`  
		Last Modified: Mon, 16 Nov 2026 20:36:14 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
