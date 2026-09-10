## `openjdk:27-rc-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:b9c5e9686e60afd86f96c5f105354b126c11b84e1a6bdadcc5e5c83973402f94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `openjdk:27-rc-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull openjdk@sha256:358779bff7adff145d979cf96d4cbc44ae4d27583c7a9ac4a21d776a9f339de2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.0 MB (347966462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c429347d3d0b1512d86dfe0d9979d8b60d851d4e7ee0b2f34c9de0c2f0d9dab`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:20:54 GMT
SHELL [cmd /s /c]
# Wed, 09 Sep 2026 23:25:15 GMT
ENV JAVA_HOME=C:\openjdk-27
# Wed, 09 Sep 2026 23:25:16 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:25:17 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Wed, 09 Sep 2026 23:25:18 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:25:18 GMT
ENV JAVA_VERSION=27
# Wed, 09 Sep 2026 23:25:28 GMT
COPY dir:ec8228b03fe316162ed3a3a38b59fa92013dfe81b274efa43cf33cc6600090e3 in C:\openjdk-27 
# Wed, 09 Sep 2026 23:25:34 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Wed, 09 Sep 2026 23:25:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc280a6510bdc979b34bd6dcd8e970e856a223ec67daa4122864e326854eff4`  
		Last Modified: Wed, 09 Sep 2026 23:21:08 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3138d92588ce1766f080f110805726609feab7cea1e892eeba0c78cd0842183f`  
		Last Modified: Wed, 09 Sep 2026 23:25:40 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556083f7acbfbc64cfc654548dca129f6511f18cbc43fce258dbafce8f88127c`  
		Last Modified: Wed, 09 Sep 2026 23:25:40 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee65e332c56d00f88cf3c6b3e21f4e0f694f988fa651f6742c05d3258c1a8ca`  
		Last Modified: Wed, 09 Sep 2026 23:25:40 GMT  
		Size: 76.7 KB (76655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e451c82edd8a32825fc1c36923fdd3a2bf584072559215770a9ca954342abb0`  
		Last Modified: Wed, 09 Sep 2026 23:25:38 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f2e3d52747d0973c63ba7116bdc32b6d725876c5e5549b366001fe11f073bd`  
		Last Modified: Wed, 09 Sep 2026 23:25:38 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a4a4473f5de727671d37db2469ab9e35f3e9501833ec4f13f0fc7a2a68d7f9f`  
		Last Modified: Wed, 09 Sep 2026 23:25:52 GMT  
		Size: 223.1 MB (223139027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7797aaebd478ddac2b36abffea8606247f88eee3c644c45fa8da9df1000c7338`  
		Last Modified: Wed, 09 Sep 2026 23:25:38 GMT  
		Size: 107.0 KB (107002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7413ff305597c7c9ff2a9fd7270879529b4aeb1ec67dbd468bb83296d82890f9`  
		Last Modified: Wed, 09 Sep 2026 23:25:38 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
