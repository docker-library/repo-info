## `eclipse-temurin:8-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:dfc082e5157847b0f48eaa4afee225b6ba641af6c85b45cfd182dc89c4fcdebf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `eclipse-temurin:8-nanoserver-ltsc2022` - windows version 10.0.20348.5870; amd64

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
