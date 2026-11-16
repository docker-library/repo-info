## `eclipse-temurin:8u512-b09-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:613e71b6ae67e06f2154747c9b5c6c708a354396ccef954b519e79babf3cd274
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:8u512-b09-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:34763de88f817a5e187ee8e9e9b685a9b1421e37b2e0b16225686f5aca8a420b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166449604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caa194a0bd8dbc9b364ca7ed339506a418132dfd82f53de3770018c7106a0a86`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Thu, 12 Nov 2026 02:20:28 GMT
RUN Apply image 10.0.20348.5873
# Mon, 16 Nov 2026 20:35:02 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:35:03 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 20:35:03 GMT
ENV JAVA_HOME=C:\openjdk-8
# Mon, 16 Nov 2026 20:35:03 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:35:08 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 16 Nov 2026 20:35:08 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:35:11 GMT
COPY dir:1d5679204bdcff12726574c811d8243612c83f060c92df7e82dd41929c00caa1 in C:\openjdk-8 
# Mon, 16 Nov 2026 20:35:13 GMT
RUN echo Verifying install ...     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:533f90db12914056d2c2d338afdeb6ce815e38f2a5fdf28be8b9614e39964ffc`  
		Last Modified: Fri, 13 Nov 2026 18:24:32 GMT  
		Size: 126.3 MB (126273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d54da00f6a852c7a44949eb04512c7ab6e1d15a15c07634da08148947e6045f`  
		Last Modified: Mon, 16 Nov 2026 20:35:19 GMT  
		Size: 1.1 KB (1056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cc2811c5ad50749dac0e00d1f2fe1a6b97e6772f122c9641a3ac0ae343cbce`  
		Last Modified: Mon, 16 Nov 2026 20:35:19 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da22864314a0fecaf5684eae955cc28bcb18805a55bb93af97eba2fce23c13a`  
		Last Modified: Mon, 16 Nov 2026 20:35:19 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2954f7b317f0041bf519c92a4af70e3269c7c3153ce61a3aaffd1c19ce14c7e7`  
		Last Modified: Mon, 16 Nov 2026 20:35:18 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff124c3fd4d3c45a4b6ce652daf913a98b9925aa273f222b7bdc592708724ee`  
		Last Modified: Mon, 16 Nov 2026 20:35:18 GMT  
		Size: 80.5 KB (80509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45df8f13ea8dab36ec49accca6b8a770015468f9d3da79386f0f27c4e82abb98`  
		Last Modified: Mon, 16 Nov 2026 20:35:18 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aeaedf143dca72d3bdd927543840c025dc23ac4a3aad220c476ade824a769da`  
		Last Modified: Mon, 16 Nov 2026 20:35:21 GMT  
		Size: 40.0 MB (39999217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eaa08af913b134feb0f361edc7e2af344dc94548205a5cf37d0dbba3cd2aa7e`  
		Last Modified: Mon, 16 Nov 2026 20:35:18 GMT  
		Size: 90.7 KB (90651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
