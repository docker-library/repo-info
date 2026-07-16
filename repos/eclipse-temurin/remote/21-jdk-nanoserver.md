## `eclipse-temurin:21-jdk-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:17a55b389f0878d40edd447f6c70ee6fa5561115a0823d9c8df9874b9ad65de7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `eclipse-temurin:21-jdk-nanoserver` - windows version 10.0.26100.33158; amd64

```console
$ docker pull eclipse-temurin@sha256:2f2936d419068609b43bc76a73411874885e00d4f6eaced78eea4cb4fe6afb84
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.3 MB (399274254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d21a6073eeeb6722d0389f0eed054b4e80d69f167bddde37a080e7350f46815`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 22:36:05 GMT
RUN Apply image 10.0.26100.33158
# Wed, 15 Jul 2026 23:57:08 GMT
SHELL [cmd /s /c]
# Wed, 15 Jul 2026 23:57:08 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Wed, 15 Jul 2026 23:57:09 GMT
ENV JAVA_HOME=C:\openjdk-21
# Wed, 15 Jul 2026 23:57:10 GMT
USER ContainerAdministrator
# Wed, 15 Jul 2026 23:57:15 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 15 Jul 2026 23:57:16 GMT
USER ContainerUser
# Wed, 15 Jul 2026 23:57:52 GMT
COPY dir:be4fce80d476aa164b4bdafca77eddb646da4c27d929101014e2067a583f974e in C:\openjdk-21 
# Wed, 15 Jul 2026 23:57:58 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 15 Jul 2026 23:57:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c708af2a3c15a47de0b81ec88fc0213adfa0065399e8b4600eb3474f44fcbc9c`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 197.2 MB (197219393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a943228f1e6961506a7bcfa34fcd49d656d8d2151987c1b202de1fa6cba42b7c`  
		Last Modified: Wed, 15 Jul 2026 23:58:04 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39deccf9aa704962f805a4d17fb5b8351c0e2a497e6f38bd2073ec352cf11a8b`  
		Last Modified: Wed, 15 Jul 2026 23:58:04 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9421813fda57983a011d616a3f55a4f29363b4b30fdef27d029fac229b79628`  
		Last Modified: Wed, 15 Jul 2026 23:58:04 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25952c362841131e8de49cc114d6ec6b6f5fcf6e38452ddf3c4976711f3323e3`  
		Last Modified: Wed, 15 Jul 2026 23:58:04 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05fa6cd976624eb74d5662421ab4bca6c45b752cbad0d50f089b3bd986f72704`  
		Last Modified: Wed, 15 Jul 2026 23:58:03 GMT  
		Size: 70.3 KB (70325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7bd537aaa4d4f6dd48029691716af6a7a30986e35e0484791e065e778bfb93`  
		Last Modified: Wed, 15 Jul 2026 23:58:03 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148901669d20eec53b5caf7a56eb9f6ef08771d66bc027c54b7e21fc210e1f69`  
		Last Modified: Wed, 15 Jul 2026 23:58:14 GMT  
		Size: 201.9 MB (201875165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b879f7b6cc47a5490ca4bab520b8c418fcbe3e68e9880fbd8cc34f6dc895c613`  
		Last Modified: Wed, 15 Jul 2026 23:58:03 GMT  
		Size: 103.2 KB (103169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b4f0d3d1f97dbe8b969e10cdaca9c99d8df372f81cce2edeb5d431ca6723ed`  
		Last Modified: Wed, 15 Jul 2026 23:58:03 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:21-jdk-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull eclipse-temurin@sha256:01b035083c5f68ea3386e5d001019f93da3e330c1e5c72ec9f57a3da23d01437
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.2 MB (326176094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:badad2367743f5d84c96ab5dffefac9a3ccc5e21f057b315ec16f3133a447cb6`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:53:35 GMT
SHELL [cmd /s /c]
# Wed, 15 Jul 2026 23:53:35 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Wed, 15 Jul 2026 23:53:36 GMT
ENV JAVA_HOME=C:\openjdk-21
# Wed, 15 Jul 2026 23:53:36 GMT
USER ContainerAdministrator
# Wed, 15 Jul 2026 23:53:38 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 15 Jul 2026 23:53:39 GMT
USER ContainerUser
# Wed, 15 Jul 2026 23:54:11 GMT
COPY dir:be4fce80d476aa164b4bdafca77eddb646da4c27d929101014e2067a583f974e in C:\openjdk-21 
# Wed, 15 Jul 2026 23:54:15 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 15 Jul 2026 23:54:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb76bdf691f32ced200d4565f259d91510d340baa913f17aac8dfe4f2c036a3`  
		Last Modified: Wed, 15 Jul 2026 23:54:23 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce0b0280910847e23079dab1984b82fd7e0e71d0516741be2774beb9d8c08e4`  
		Last Modified: Wed, 15 Jul 2026 23:54:23 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4595aa6db60cb31ab544c71254e5600c777f98a7b87164618524e0ee9ec40cee`  
		Last Modified: Wed, 15 Jul 2026 23:54:23 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e370374a9b2342fc3a19f01bd4f44c77949052eb6dd5fad4f419dba6c7b9b00a`  
		Last Modified: Wed, 15 Jul 2026 23:54:23 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ae4b498cfa87d19afe6264495af86065d6e09d1a96bf90409081af076ddf78`  
		Last Modified: Wed, 15 Jul 2026 23:54:21 GMT  
		Size: 81.2 KB (81245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75309e107afa361429096a6cd69a948563cf536bcba71d6ed599f9561c97648d`  
		Last Modified: Wed, 15 Jul 2026 23:54:21 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62af9ac30af62b31425c77128329d9bdadf118e8f058c76ad4c673d1a83838a3`  
		Last Modified: Wed, 15 Jul 2026 23:54:32 GMT  
		Size: 201.9 MB (201875594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1040d29b63a151a8142a3dcdf5931b19515aeb4f93b465701d1e3782fc9df1e0`  
		Last Modified: Wed, 15 Jul 2026 23:54:21 GMT  
		Size: 109.7 KB (109747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cfd71010b38df8f58bfe25f6b636807d425d052082dd8502ea5c10d27f11d5`  
		Last Modified: Wed, 15 Jul 2026 23:54:21 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
