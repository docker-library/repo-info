## `eclipse-temurin:17-jdk-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:49471ca958aae40ed54604cb4509d1632af4e7c96d47ceb169dde14e8de99af5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:17-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:28b09e038c0009215845f326a1e26f3f015628ea674d2603ce78219a71919076
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.5 MB (312469931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:823e9ec3749a5a52eee106f05337499a53145d3b13eabcb382257991ff04ccde`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:19:54 GMT
SHELL [cmd /s /c]
# Wed, 09 Sep 2026 23:21:18 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 09 Sep 2026 23:21:19 GMT
ENV JAVA_HOME=C:\openjdk-17
# Wed, 09 Sep 2026 23:21:19 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:21:21 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 09 Sep 2026 23:21:21 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:21:26 GMT
COPY dir:2efdbec36c0747edfcd3701d361069b5b5efc5358da080c276b68df862639cb1 in C:\openjdk-17 
# Wed, 09 Sep 2026 23:21:31 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 09 Sep 2026 23:21:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f41f13db96ed47ab59a1acb3cb1962aab56b9629768aa120e57d2f8053204b`  
		Last Modified: Wed, 09 Sep 2026 23:20:43 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc44141db16282f8a88efd0497683ae3b5b2a5a5d8b64520b07e4a5c0fdb829e`  
		Last Modified: Wed, 09 Sep 2026 23:21:37 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d2ee3de16d8a4c51f64a878545afa1d5b628b458fe84e72db662730a6a564b`  
		Last Modified: Wed, 09 Sep 2026 23:21:37 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d411ffe72742259a75d3d96942477190c24a0e0ecd4828ba9b05e24d99a7e38`  
		Last Modified: Wed, 09 Sep 2026 23:21:37 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaa40032dea56c640e7e86d17479de274966ec10623568e3ece53f98b1bc67c`  
		Last Modified: Wed, 09 Sep 2026 23:21:36 GMT  
		Size: 76.4 KB (76382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631aba423bd3a5eb2ad123acaecd2b80574e2e48b76548fe4945d053a31edb74`  
		Last Modified: Wed, 09 Sep 2026 23:21:36 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0614a57fe809a80cb89962acc952df3395cd2f59a6c405cfae11d95576e89c`  
		Last Modified: Wed, 09 Sep 2026 23:21:46 GMT  
		Size: 187.6 MB (187641931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6468856af338b166da30d507ed4d84c925d75f2daafe86491cbd75949e857278`  
		Last Modified: Wed, 09 Sep 2026 23:21:36 GMT  
		Size: 107.8 KB (107819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b643603dfcac9485b7c6f3e6654ef1f2cdf04d9498f4e62597b7176e372b90c`  
		Last Modified: Wed, 09 Sep 2026 23:21:36 GMT  
		Size: 1.1 KB (1088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
