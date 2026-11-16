## `eclipse-temurin:8-jdk-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:e456b0df25b53dc8ac1b0321918f24fdfb8d323fbf19d1b3cd3bdc45eb13231f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33828; amd64
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:8-jdk-nanoserver` - windows version 10.0.26100.33828; amd64

```console
$ docker pull eclipse-temurin@sha256:fe344de6c660ab279a98cbd7d1ef04ee3a940a2557fd1d9b5be9b7d3bb71c085
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.4 MB (302363013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4efc0d3d35852104e010eb3d95b6771feaba8b01a43496a37a15a6abe50519ef`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Wed, 11 Nov 2026 22:43:48 GMT
RUN Apply image 10.0.26100.33828
# Mon, 16 Nov 2026 20:42:54 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:42:55 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 20:42:56 GMT
ENV JAVA_HOME=C:\openjdk-8
# Mon, 16 Nov 2026 20:42:57 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:43:06 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 16 Nov 2026 20:43:07 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:43:36 GMT
COPY dir:5ea7cf21f5771b3d48b8677f1f79659e6f7f03cb212691f126d4def41226d352 in C:\openjdk-8 
# Mon, 16 Nov 2026 20:43:42 GMT
RUN echo Verifying install ...     && echo javac -version && javac -version     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:6ba6a8d6630dc641648821a651879fd111e21b736d72f09f1eabafe7a0e18a9a`  
		Last Modified: Fri, 13 Nov 2026 21:31:52 GMT  
		Size: 200.2 MB (200239817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11868f842524af394722d00bfada46e7cc51a22f1511465efe9055a1819e9541`  
		Last Modified: Mon, 16 Nov 2026 20:43:48 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e8d2e1353d8b2e4664b9c2a8448019b567f837439a1aeb94e293aa411e117d`  
		Last Modified: Mon, 16 Nov 2026 20:43:48 GMT  
		Size: 1.1 KB (1052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a196d0158c1f10b70ed894f77a04375bdb5714486e3d930c6549d88ecdb3ad87`  
		Last Modified: Mon, 16 Nov 2026 20:43:48 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733891efac23a9fd1e6529f6874d10f185d68b68ba8fadd154657541fbc83466`  
		Last Modified: Mon, 16 Nov 2026 20:43:47 GMT  
		Size: 1.1 KB (1058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6115d5a0e0f47dc379af7fa46b518a78709b53b3e722ecde660ad821619ede20`  
		Last Modified: Mon, 16 Nov 2026 20:43:47 GMT  
		Size: 71.3 KB (71276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15bbfa0e9c88e1013ed84ea6ab6f5cb497c41565a68f5e159188b57cb65d8e5`  
		Last Modified: Mon, 16 Nov 2026 20:43:47 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a9b6d29a38cd50cd89f50b3d520b34f1b9f38217a9ec29f8b357541e163a38`  
		Last Modified: Mon, 16 Nov 2026 20:43:54 GMT  
		Size: 101.9 MB (101942149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1d701a065775ab6197f92b3a10f623aabf03ab6a4fa352ce408768e3d9e3c3`  
		Last Modified: Mon, 16 Nov 2026 20:43:47 GMT  
		Size: 104.5 KB (104531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:8-jdk-nanoserver` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:d5589ec044eeb552d62bbf57b96e9bfe531fa66ab99b2da6407e56d3e71e0eff
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.4 MB (228392782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd14cc82eea66674f3a48b2c90ce08354fa6b785fea591031a1c8d29d3cd416`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Thu, 12 Nov 2026 02:20:28 GMT
RUN Apply image 10.0.20348.5873
# Mon, 16 Nov 2026 20:35:13 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:35:13 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 20:35:14 GMT
ENV JAVA_HOME=C:\openjdk-8
# Mon, 16 Nov 2026 20:35:14 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:35:24 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 16 Nov 2026 20:35:24 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:35:39 GMT
COPY dir:5ea7cf21f5771b3d48b8677f1f79659e6f7f03cb212691f126d4def41226d352 in C:\openjdk-8 
# Mon, 16 Nov 2026 20:35:43 GMT
RUN echo Verifying install ...     && echo javac -version && javac -version     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:533f90db12914056d2c2d338afdeb6ce815e38f2a5fdf28be8b9614e39964ffc`  
		Last Modified: Fri, 13 Nov 2026 18:24:32 GMT  
		Size: 126.3 MB (126273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d177fcc97f0e7ca7a78110ddd12636d90a72e1113378fa284b92b2706e2a56a8`  
		Last Modified: Mon, 16 Nov 2026 20:35:49 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20119130228f6472869fb4e00f7e77c56c49b05e0a2b348829f9135b07fb37eb`  
		Last Modified: Mon, 16 Nov 2026 20:35:49 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f952fc8951b88e8913c7bec83978810d42de8fe6728f62a0f64b8e34272172`  
		Last Modified: Mon, 16 Nov 2026 20:35:49 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8113cd0b6c383b11f2d44a99cd53d96b013d167326a0ea5e9dcd5b3db1ea9bb`  
		Last Modified: Mon, 16 Nov 2026 20:35:47 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b02b157e1c50063f6040fb4c6dceb28ff17cdfb264a6dbb509e2aa69547a5b`  
		Last Modified: Mon, 16 Nov 2026 20:35:47 GMT  
		Size: 73.9 KB (73940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a10cc317477782e8521ddf1cfc0199f5f75623e5eb9b2b8929d7904fa7e1fab`  
		Last Modified: Mon, 16 Nov 2026 20:35:47 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e214da9c51dacf6541ed798d4efaff07b59883ebd3e56594cf246f19a0b3cdbc`  
		Last Modified: Mon, 16 Nov 2026 20:35:53 GMT  
		Size: 101.9 MB (101942043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e0b7d6230efab97054b23776439c4c6917cd989f1161c4e6c06f2920da4a`  
		Last Modified: Mon, 16 Nov 2026 20:35:47 GMT  
		Size: 97.6 KB (97582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
