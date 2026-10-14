## `eclipse-temurin:25-jdk-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:954f8fd7cc1cdbeac0e6d73eea97124893e70d1deadf1e38028a4a2cf550dd46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `eclipse-temurin:25-jdk-nanoserver` - windows version 10.0.26100.33650; amd64

```console
$ docker pull eclipse-temurin@sha256:4c0449b2fe10389e04b0386555c59c5ef2f1fec18a2e4aa3cdaadf77d4a8d8ca
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.1 MB (338122213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fadfeb3f0d4c3e9089b6575d1e3566d74a0c2a6bf82152730c183ece3babe725`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 00:37:58 GMT
RUN Apply image 10.0.26100.33650
# Wed, 14 Oct 2026 00:17:45 GMT
SHELL [cmd /s /c]
# Wed, 14 Oct 2026 00:17:46 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Wed, 14 Oct 2026 00:17:47 GMT
ENV JAVA_HOME=C:\openjdk-25
# Wed, 14 Oct 2026 00:17:47 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:17:49 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 14 Oct 2026 00:17:49 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:18:15 GMT
COPY dir:ca1e390f4b570d6e77b2769bb9a3bd10f0ce627c8274f33c597fc576311144d8 in C:\openjdk-25 
# Wed, 14 Oct 2026 00:18:22 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 14 Oct 2026 00:18:23 GMT
CMD ["jshell"]
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
	-	`sha256:a71b0d27724d9475077d65d8cc62ac6791833f002b62b9f523d1d7eaa26585d9`  
		Last Modified: Wed, 14 Oct 2026 00:18:29 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61b62449e109ce44f6016ef88332f88e64cbb238b3fbe905db666a3e2a5ffd0`  
		Last Modified: Wed, 14 Oct 2026 00:18:29 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b516a64ecd77fd40c0d8553ac117c5695e1c8870817a3883f01e16cc4c66731`  
		Last Modified: Wed, 14 Oct 2026 00:18:29 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e518b26c07de60ca1b082bbc59f0648dfe0c18cf0708351c3d2eaa0827878de`  
		Last Modified: Wed, 14 Oct 2026 00:18:27 GMT  
		Size: 76.7 KB (76674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54be4327fbe175427c7c0deb3435c6db34f101f61f5eab5d2641e44f64dc5cd`  
		Last Modified: Wed, 14 Oct 2026 00:18:27 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff559c643f527d7f1fee0fff2ccedc21635874508de5f00042a68dabfa63a42e`  
		Last Modified: Wed, 14 Oct 2026 00:18:38 GMT  
		Size: 138.1 MB (138054635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce8ad274b0e25eec9d8dcfdaf6358725cf7677f7c106d4f4322a5c2f59b882c0`  
		Last Modified: Wed, 14 Oct 2026 00:18:27 GMT  
		Size: 113.6 KB (113585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcea809587276c681f56abb045eef876127f6bda5be4021b6259ec5ebd3daeb`  
		Last Modified: Wed, 14 Oct 2026 00:18:27 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:25-jdk-nanoserver` - windows version 10.0.20348.5761; amd64

```console
$ docker pull eclipse-temurin@sha256:658594a78a9d7a64d311f704e67b446b7f8d85720cc6c4ce3f7231c0129d9e3a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 MB (264039994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e343977657647774ce05dc75bbede92a9398f875ee15eb298f8ba6c3ae81ff8`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Tue, 13 Oct 2026 23:38:07 GMT
SHELL [cmd /s /c]
# Tue, 13 Oct 2026 23:38:07 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Tue, 13 Oct 2026 23:38:07 GMT
ENV JAVA_HOME=C:\openjdk-25
# Tue, 13 Oct 2026 23:38:08 GMT
USER ContainerAdministrator
# Tue, 13 Oct 2026 23:38:10 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 13 Oct 2026 23:38:10 GMT
USER ContainerUser
# Tue, 13 Oct 2026 23:38:16 GMT
COPY dir:ca1e390f4b570d6e77b2769bb9a3bd10f0ce627c8274f33c597fc576311144d8 in C:\openjdk-25 
# Tue, 13 Oct 2026 23:38:21 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Tue, 13 Oct 2026 23:38:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bee0a81ea9627ec1ea3d28c46220c44d7fad8d328d80eb0489d4ab9b01b3653`  
		Last Modified: Tue, 13 Oct 2026 23:38:27 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045a8d072d3eafadbead65a57f8961f9062cf37d2f34cb76613817f2850d7bc4`  
		Last Modified: Tue, 13 Oct 2026 23:38:27 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1670198a8e1d8c06a4a6518d56c6fd1306180846a89a8628d198db8c21172079`  
		Last Modified: Tue, 13 Oct 2026 23:38:27 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f082554f6f9e0ffd7841de00c5d4a61792fd1d511ecd73c2707ec07623f14805`  
		Last Modified: Tue, 13 Oct 2026 23:38:27 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe41ed75fe6d8bf4e4cc081ace088f7487652f041608762bc915d05a94c1d081`  
		Last Modified: Tue, 13 Oct 2026 23:38:25 GMT  
		Size: 75.6 KB (75559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57038bba079f1e8fd578ac656c0da7c71e4cf4ecabf73546ed7e9ec52a1a6ca3`  
		Last Modified: Tue, 13 Oct 2026 23:38:25 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17671765d9c1eebdab44537984172e2da71758b7833db392fb03b8707f5fe3ad`  
		Last Modified: Tue, 13 Oct 2026 23:38:36 GMT  
		Size: 138.1 MB (138054552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210e68ead8cc0f2c70057ffee958f5496f0f4e10c2fb48eddcab848294d753b3`  
		Last Modified: Tue, 13 Oct 2026 23:38:25 GMT  
		Size: 107.5 KB (107545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42dc8764e26465fc55229a7c0556e7d651f6b449edb68576a50c40c11ac0414`  
		Last Modified: Tue, 13 Oct 2026 23:38:25 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
