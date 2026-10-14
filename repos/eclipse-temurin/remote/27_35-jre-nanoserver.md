## `eclipse-temurin:27_35-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:954461f9df19a63ef3f3cb3ea4bc2545984b60f00ce73417a132ce67c7e85c5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `eclipse-temurin:27_35-jre-nanoserver` - windows version 10.0.26100.33650; amd64

```console
$ docker pull eclipse-temurin@sha256:d3fcf05fae489838fbf2c8e657793b449c4701ff51be9a4dc405ec47c522702b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259347304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dfa83a8d89b1ccc247eaa402b50f36f6f12615bd65ac8b983e1807dc06d7408`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 00:37:58 GMT
RUN Apply image 10.0.26100.33650
# Wed, 14 Oct 2026 00:17:45 GMT
SHELL [cmd /s /c]
# Wed, 14 Oct 2026 00:19:54 GMT
ENV JAVA_VERSION=jdk-27+35
# Wed, 14 Oct 2026 00:19:55 GMT
ENV JAVA_HOME=C:\openjdk-27
# Wed, 14 Oct 2026 00:19:55 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:19:57 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 14 Oct 2026 00:19:57 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:20:13 GMT
COPY dir:e51710ef99181d5e040206544472f4518593d33319e3c793d41826289f55616b in C:\openjdk-27 
# Wed, 14 Oct 2026 00:20:16 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:fc75d5d958abc5a2294f36186f7c93790e84f49e7d31c08dfc8446cb7703df87`  
		Last Modified: Tue, 13 Oct 2026 22:26:06 GMT  
		Size: 199.9 MB (199871136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3afe8d1fe8bd60fc3a0122f92a96f7494ce2bcfef9ca51b2485954822295ec59`  
		Last Modified: Wed, 14 Oct 2026 00:18:29 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a91a2573b4813fa46ed64e10c9948a1c884d4f248da39a25dab82e7bf191174`  
		Last Modified: Wed, 14 Oct 2026 00:20:22 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecde0337058a67cb575b1643e42d180d35f9112b77f815a5cbceb7e6a0046c4`  
		Last Modified: Wed, 14 Oct 2026 00:20:22 GMT  
		Size: 1.1 KB (1051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff9335c100d1dd74d14d7175611405505f2a2f5d049e4e6a965c6e39f2dd019`  
		Last Modified: Wed, 14 Oct 2026 00:20:20 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947cec2af65549d6f0fcfec2f666c2a0e24d9cd95c647f9c50095680d6b1e6de`  
		Last Modified: Wed, 14 Oct 2026 00:20:20 GMT  
		Size: 73.5 KB (73534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cdeb32f1608d66e76eef56622f3de3cdc520a38a1a4b15aa1f7eea803b8315`  
		Last Modified: Wed, 14 Oct 2026 00:20:20 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8564fe06179970cacaae115a52e4a29ca29d1cc59a179f852201d28b53ccee0`  
		Last Modified: Wed, 14 Oct 2026 00:20:28 GMT  
		Size: 59.3 MB (59311633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea69fbf551d014264e33d29d8a1716ba6f99fe5c3a7b36fcaef0b2f22b9f71f`  
		Last Modified: Wed, 14 Oct 2026 00:20:21 GMT  
		Size: 85.8 KB (85832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:27_35-jre-nanoserver` - windows version 10.0.20348.5761; amd64

```console
$ docker pull eclipse-temurin@sha256:54af99eea02c117825462904724c4c3e48095831678d1ff1d188ebd6f11e4193
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185280573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dca8b7d6847edfdcccf7c7d4b5969a3ac2530ebf503b5ff96e673879d44756ec`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:19:20 GMT
SHELL [cmd /s /c]
# Wed, 14 Oct 2026 00:21:18 GMT
ENV JAVA_VERSION=jdk-27+35
# Wed, 14 Oct 2026 00:21:18 GMT
ENV JAVA_HOME=C:\openjdk-27
# Wed, 14 Oct 2026 00:21:19 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:21:20 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 14 Oct 2026 00:21:20 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:21:35 GMT
COPY dir:e51710ef99181d5e040206544472f4518593d33319e3c793d41826289f55616b in C:\openjdk-27 
# Wed, 14 Oct 2026 00:21:38 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5492d011d39c3f8870675121404da30e1c686947fec06ae84ac86852e80e81d6`  
		Last Modified: Wed, 14 Oct 2026 00:19:52 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ea1c079f8bc44bd72c5167543189a7effb7392d0f8088caf0f14f49309b983`  
		Last Modified: Wed, 14 Oct 2026 00:21:43 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a316280b1c411e982d07156c06d8904341c8494b5ecd136b7343583fffbb95e`  
		Last Modified: Wed, 14 Oct 2026 00:21:43 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280df78cbf4a5e287c5f18617dbf8af47d4b8b30d705319964b7d7ffaf1a209a`  
		Last Modified: Wed, 14 Oct 2026 00:21:42 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47f545db5a4ac54f1d4f48280c84eb343259d9f439f9196c62d5a3614c901db`  
		Last Modified: Wed, 14 Oct 2026 00:21:42 GMT  
		Size: 77.6 KB (77595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd2c97e687fe50a71777c637b4000c6b04eb817a844784608586577f1504fb2`  
		Last Modified: Wed, 14 Oct 2026 00:21:42 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796718c5808df9ccaa30e748ccf3a763180e8949b3cb18ef16c1efb645997d4c`  
		Last Modified: Wed, 14 Oct 2026 00:21:48 GMT  
		Size: 59.3 MB (59311586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a8c6056145dc55c572c54e33e5372a70532c5c3d936cf5e7a6e83db3d779f1`  
		Last Modified: Wed, 14 Oct 2026 00:21:42 GMT  
		Size: 90.1 KB (90087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
