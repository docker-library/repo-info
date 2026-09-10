## `openjdk:27-rc-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:132a29d0ab7f4a9c2a17e990fed95403f49d86d014192d924373a578f44ca6dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `openjdk:27-rc-jdk-nanoserver` - windows version 10.0.26100.33438; amd64

```console
$ docker pull openjdk@sha256:6bdb48c35ea5f0acabcc840e7102ee5c489e7617872c05d184ef59e52d6ce40f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.0 MB (420982558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7b70a0718522f4c6988471115e9e7476ddf02775225673e68989d902afec422`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Wed, 09 Sep 2026 23:22:49 GMT
SHELL [cmd /s /c]
# Wed, 09 Sep 2026 23:25:21 GMT
ENV JAVA_HOME=C:\openjdk-27
# Wed, 09 Sep 2026 23:25:21 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:25:22 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Wed, 09 Sep 2026 23:25:23 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:25:23 GMT
ENV JAVA_VERSION=27
# Wed, 09 Sep 2026 23:26:10 GMT
COPY dir:ec8228b03fe316162ed3a3a38b59fa92013dfe81b274efa43cf33cc6600090e3 in C:\openjdk-27 
# Wed, 09 Sep 2026 23:26:16 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Wed, 09 Sep 2026 23:26:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d959d10d6f21c45484ffce467cb3e840b6c1ca8545c3e5bb5f7e0ab997ca9ac1`  
		Last Modified: Wed, 09 Sep 2026 23:23:31 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4acf3358f053e74088a932b0d88b84220306cca8d4cc8d34dd17b3f6d0bded3f`  
		Last Modified: Wed, 09 Sep 2026 23:26:25 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953f0c5e16a866f567e027bdb8e207ca53a0b59ee87e3860e509639e526cf60e`  
		Last Modified: Wed, 09 Sep 2026 23:26:25 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf63de32cf9501557f271690ecaf371b3401d323d327363091c7fe6252810ad`  
		Last Modified: Wed, 09 Sep 2026 23:26:25 GMT  
		Size: 71.9 KB (71909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db754ac39580276e829152e5af8b63ad5c455b7a988ea64eb5706870763e347e`  
		Last Modified: Wed, 09 Sep 2026 23:26:23 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee88ed85e50e7c8cedd3af38786ca70de73d295e0a37fe7230791c82a39ea85`  
		Last Modified: Wed, 09 Sep 2026 23:26:23 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8a5702406c774cb869eacb80caf6eef02293840b5ffb42d81fcf65551a17b5`  
		Last Modified: Wed, 09 Sep 2026 23:26:37 GMT  
		Size: 223.1 MB (223138961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1717f067763608f9aa1247ba7d62895b3d7211fe7bf5d2399e572cfce18ab756`  
		Last Modified: Wed, 09 Sep 2026 23:26:24 GMT  
		Size: 114.9 KB (114868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c8e49fb7fe710bdf0d60ab2947e74ab77c0a3c10d2e8cc6832d4def0db35bb`  
		Last Modified: Wed, 09 Sep 2026 23:26:23 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:27-rc-jdk-nanoserver` - windows version 10.0.20348.5622; amd64

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
