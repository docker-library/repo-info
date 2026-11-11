## `eclipse-temurin:8u512-b09-jdk-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:e1ed02fc15bcf62078974f701588d9e04a2f50f070330b702d005ef4f5137fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33822; amd64
	-	windows version 10.0.20348.5870; amd64

### `eclipse-temurin:8u512-b09-jdk-nanoserver` - windows version 10.0.26100.33822; amd64

```console
$ docker pull eclipse-temurin@sha256:37b02e168c27937858b2762a0b47d1c567b936e56a79630bcfa437b655c84912
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.4 MB (302371112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea7752609a7a46479837a76e0386db511805478e7ee51b025f041fa34782c536`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 13:08:00 GMT
RUN Apply image 10.0.26100.33822
# Wed, 11 Nov 2026 22:45:38 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:45:39 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Wed, 11 Nov 2026 22:45:39 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 11 Nov 2026 22:45:40 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:45:48 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:45:48 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:46:20 GMT
COPY dir:5ea7cf21f5771b3d48b8677f1f79659e6f7f03cb212691f126d4def41226d352 in C:\openjdk-8 
# Wed, 11 Nov 2026 22:46:25 GMT
RUN echo Verifying install ...     && echo javac -version && javac -version     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:8395a5062b63680acee7661df668d9bf81cca0fdec76ab1b29afd6ab290bf2c0`  
		Last Modified: Tue, 10 Nov 2026 23:37:33 GMT  
		Size: 200.2 MB (200242324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdf2c4c4f83e3465e877a3e3fe3ce6a78f4e65c1cd3bb55ed97da3b9a989457`  
		Last Modified: Wed, 11 Nov 2026 22:46:33 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf4dc488c4a41b9ecc2233cc09505b64188fdfd3f1d9e69371bd98f3434823f`  
		Last Modified: Wed, 11 Nov 2026 22:46:32 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78add22b5e2908560eeeca1ce5490b11bfdb8c861c6b6abfb8221de76247eacd`  
		Last Modified: Wed, 11 Nov 2026 22:46:32 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ca8e3a960ad03160875d14f524c2db1521ba1eba09afc16a7989198a45fe3e`  
		Last Modified: Wed, 11 Nov 2026 22:46:31 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f43c3ec238ecb4925c74a8f1c831c25c541f0adcea263e6f21f015338d234ae`  
		Last Modified: Wed, 11 Nov 2026 22:46:31 GMT  
		Size: 69.5 KB (69528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a787ff6bce9216ea455ff9971add69d35d518d30551198d3d4947f97367392`  
		Last Modified: Wed, 11 Nov 2026 22:46:31 GMT  
		Size: 1.0 KB (1026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5dcdd21b35c73cf9e3118fb48f3355fddbe6a8f799ecec834da572dd442877`  
		Last Modified: Wed, 11 Nov 2026 22:46:37 GMT  
		Size: 101.9 MB (101941842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011f806fe9748ce0ca73e110517de21c99fb059a8bd1979d979d0f41c409813b`  
		Last Modified: Wed, 11 Nov 2026 22:46:31 GMT  
		Size: 112.3 KB (112255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:8u512-b09-jdk-nanoserver` - windows version 10.0.20348.5870; amd64

```console
$ docker pull eclipse-temurin@sha256:f17531a5c12bbd19530ca4c830cee9328aaa0ab5aa8ab3397beaecb234225a06
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.4 MB (228409685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fdbd4da2e68eaec6a1bc9e573ebf71d95bc9211d1c36a4b6bd13ab67dbc0424`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:43:34 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:43:34 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Wed, 11 Nov 2026 22:43:35 GMT
ENV JAVA_HOME=C:\openjdk-8
# Wed, 11 Nov 2026 22:43:36 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:43:38 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:43:39 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:43:44 GMT
COPY dir:5ea7cf21f5771b3d48b8677f1f79659e6f7f03cb212691f126d4def41226d352 in C:\openjdk-8 
# Wed, 11 Nov 2026 22:43:48 GMT
RUN echo Verifying install ...     && echo javac -version && javac -version     && echo java -version && java -version     && echo Complete.
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a628f93392bd1fa9aa32df95eddef1c784bade770901514dafc547aa2e9ffd94`  
		Last Modified: Wed, 11 Nov 2026 22:43:54 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c87f7f78be345cffbaea9d87b4bb2e37372719846b806e35343cd6decc90b67`  
		Last Modified: Wed, 11 Nov 2026 22:43:53 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535f290f23a370bf5a1ec3b1acd71a71dafdd482e4418104c7b21f1bf4e76e23`  
		Last Modified: Wed, 11 Nov 2026 22:43:53 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f15fce3f2d0d6dd3b7fc14fa8f73d09cbd49cf94df24b02a0f4e2ea7edf4ce`  
		Last Modified: Wed, 11 Nov 2026 22:43:52 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e0c3de3440030036cb310125ca8b95b40dbd2cc8d5ef27c35059d61e231645`  
		Last Modified: Wed, 11 Nov 2026 22:43:52 GMT  
		Size: 76.1 KB (76112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b57a2b9fbffe1980bbc616dd83a49c49d1373205d09283896d37e563f20982`  
		Last Modified: Wed, 11 Nov 2026 22:43:52 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b6175f9c7e28c2f0d540f97a9c59c65d8b2882020bdc512a7a9f65a2f689d09`  
		Last Modified: Wed, 11 Nov 2026 22:43:58 GMT  
		Size: 101.9 MB (101941902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e7dc584d94f9fb8bd7d9987cae97c1ad177676155c6598b29f94513a80d0c0`  
		Last Modified: Wed, 11 Nov 2026 22:43:52 GMT  
		Size: 101.4 KB (101399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
