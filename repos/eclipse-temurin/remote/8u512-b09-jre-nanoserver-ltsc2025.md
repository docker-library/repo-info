## `eclipse-temurin:8u512-b09-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:d15114e001e7c5297605b9450b9cee6f50de8feb5bb27219aa94f1fd403a33c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `eclipse-temurin:8u512-b09-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull eclipse-temurin@sha256:75d7837a5d5134fea1a9140aece68edaf8f9484272782447fc46c4ada1600842
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240418571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:213a6d35198b323d69e7ed87081e0af9876dc77ac3461243b27dbd23e5ba7b33`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Wed, 11 Nov 2026 22:43:48 GMT
RUN Apply image 10.0.26100.33828
# Mon, 16 Nov 2026 20:42:53 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:42:54 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 16 Nov 2026 20:42:56 GMT
ENV JAVA_HOME=C:\openjdk-8
# Mon, 16 Nov 2026 20:42:56 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:43:04 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 16 Nov 2026 20:43:05 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:43:16 GMT
COPY dir:1d5679204bdcff12726574c811d8243612c83f060c92df7e82dd41929c00caa1 in C:\openjdk-8 
# Mon, 16 Nov 2026 20:43:21 GMT
RUN echo Verifying install ...     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:6ba6a8d6630dc641648821a651879fd111e21b736d72f09f1eabafe7a0e18a9a`  
		Last Modified: Fri, 13 Nov 2026 21:31:52 GMT  
		Size: 200.2 MB (200239817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ed4f799365a90927cc7f1122dbb44e2f5c8081d7721fc4d5f742c652a032a4`  
		Last Modified: Mon, 16 Nov 2026 20:43:27 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0d3ecb8a1ba9ca08386eced38dbbe544a68212d30941ecb47e5836f68ce7c2`  
		Last Modified: Mon, 16 Nov 2026 20:43:27 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22cf7c4f27913c965dfbecebe1dbf07ef34f0c50c1de8ed12b731f3cb838c0b2`  
		Last Modified: Mon, 16 Nov 2026 20:43:27 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fafc79ceb812584f276d08897af4be07e565ddfd265139eeee9385b12edd8bb9`  
		Last Modified: Mon, 16 Nov 2026 20:43:25 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f8151074453468aa2840ec7ad138eed5bf2c1b92c95268cb9e27e4c701e32d`  
		Last Modified: Mon, 16 Nov 2026 20:43:26 GMT  
		Size: 71.1 KB (71059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67551ee7d39611c46a766737a212f6aa56c4cca33ddad14fa02d703f7b5f671`  
		Last Modified: Mon, 16 Nov 2026 20:43:25 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27901f67b1fede1c11077470c9a270707b7db7d8c823ea65b591cc39039c107e`  
		Last Modified: Mon, 16 Nov 2026 20:43:29 GMT  
		Size: 40.0 MB (39999230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ef51b1670e4a12ede0138b903cad99e56c1970511bfed1d363a41a81c02399`  
		Last Modified: Mon, 16 Nov 2026 20:43:26 GMT  
		Size: 103.3 KB (103276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
