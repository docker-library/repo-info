## `eclipse-temurin:25-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:48377b7efa0b6696d24f00c69831a5b45d26bd10b9f6c2193ca6e4810e772876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33822; amd64
	-	windows version 10.0.20348.5870; amd64

### `eclipse-temurin:25-nanoserver` - windows version 10.0.26100.33822; amd64

```console
$ docker pull eclipse-temurin@sha256:b05886ddc8b013ca0062a4eea8b7b8d3673ad2187c8bba077285b0cd3365a564
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.6 MB (338588833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0854d4d1c710ccf97b600f69fb6d41b217e82e0689125ec364ed53aef2faf7b8`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 13:08:00 GMT
RUN Apply image 10.0.26100.33822
# Wed, 11 Nov 2026 22:47:13 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:47:14 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Wed, 11 Nov 2026 22:47:15 GMT
ENV JAVA_HOME=C:\openjdk-25
# Wed, 11 Nov 2026 22:47:15 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:47:17 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:47:18 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:47:46 GMT
COPY dir:9c7b029cf2183851d3f474a2d1015eb9053ddae126bc2cf1988c88dca705e51e in C:\openjdk-25 
# Wed, 11 Nov 2026 22:47:51 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 11 Nov 2026 22:47:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8395a5062b63680acee7661df668d9bf81cca0fdec76ab1b29afd6ab290bf2c0`  
		Last Modified: Tue, 10 Nov 2026 23:37:33 GMT  
		Size: 200.2 MB (200242324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb249f2257c4e1462fc62a0d2349ccff99e0aa2eccd65f43863c122362e4fa34`  
		Last Modified: Wed, 11 Nov 2026 22:47:57 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b8148b0afa6571f4952afc4e8dbd6977c73367f148408629ea4c9824030a77`  
		Last Modified: Wed, 11 Nov 2026 22:47:57 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2b43b897fbc48669f06d0c7f67aeeba9f55898639834918e46076a6e7ba314`  
		Last Modified: Wed, 11 Nov 2026 22:47:57 GMT  
		Size: 1.0 KB (1005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904f1fcf0c4f66f43dd33c3ca60efe7b5dd91f088f62f006e662f438325f9ccf`  
		Last Modified: Wed, 11 Nov 2026 22:47:57 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d8ecc21ccb1272e396b7c6337a00209c3e7381d56d6615c6a532c5cb2fb1ab`  
		Last Modified: Wed, 11 Nov 2026 22:47:56 GMT  
		Size: 72.7 KB (72712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f443d64eb68f171feb373ab56b61a0a5744bcae956951973a6e9d1b90acfc8`  
		Last Modified: Wed, 11 Nov 2026 22:47:56 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38367cd368da63b4d4faf56f09504322625ea0e86fece0df45ba7676fea00e99`  
		Last Modified: Wed, 11 Nov 2026 22:48:08 GMT  
		Size: 138.2 MB (138155137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa218e960e49270313d1cd925c9d54f9d0c9085e1839cc47b5d730b3bff5b2e2`  
		Last Modified: Wed, 11 Nov 2026 22:47:56 GMT  
		Size: 112.5 KB (112463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a42bcff633c3465d166e0f593ba7fc613afc21455a83a0813527d037ef4f5d`  
		Last Modified: Wed, 11 Nov 2026 22:47:56 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:25-nanoserver` - windows version 10.0.20348.5870; amd64

```console
$ docker pull eclipse-temurin@sha256:7f5200d8cab5a2257dcf148d19162c3db64ebd000a91a9577a316fd1fba2e582
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 MB (264632411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7ffa1ce744faa3aeb0c8fb741b2f29b3fdd5cf1941994b1faffcfaeaec5f780`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:43:51 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:44:28 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Wed, 11 Nov 2026 22:44:29 GMT
ENV JAVA_HOME=C:\openjdk-25
# Wed, 11 Nov 2026 22:44:29 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:44:31 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:44:31 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:44:39 GMT
COPY dir:9c7b029cf2183851d3f474a2d1015eb9053ddae126bc2cf1988c88dca705e51e in C:\openjdk-25 
# Wed, 11 Nov 2026 22:44:43 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 11 Nov 2026 22:44:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134996ef170d7adcae77d0b44e656f113793f04747a935c8da35b78907cd06b1`  
		Last Modified: Wed, 11 Nov 2026 22:44:08 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c696d6db62fe0ef97945744dcfe36aef12b79553d0dc5cf194a1c64aed9a052`  
		Last Modified: Wed, 11 Nov 2026 22:44:49 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6333d6d460e1f354554ab29d9f2ac860ce8a0dde24bd829430d420395f7465`  
		Last Modified: Wed, 11 Nov 2026 22:44:49 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979ef8b66d08db9285d941ed5bab2258441c9059873211d4fd80bac0a40d6227`  
		Last Modified: Wed, 11 Nov 2026 22:44:49 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e24f2d3078a34715f36743b9ba405722401dfa6c6eaacd9e54308c76278c65a`  
		Last Modified: Wed, 11 Nov 2026 22:44:47 GMT  
		Size: 78.3 KB (78300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4e9885701b2dad4e15db763babbf7a5a881921f03968e28ebdd752476219bd`  
		Last Modified: Wed, 11 Nov 2026 22:44:47 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada6c7a962451248c0209b412110d5c249fe4d8d9c07a5bcef90fdd88c647acb`  
		Last Modified: Wed, 11 Nov 2026 22:44:58 GMT  
		Size: 138.2 MB (138155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c2bcc34d7004db71718f36b7f182ebde431da313959e5f9ae965676de5552f`  
		Last Modified: Wed, 11 Nov 2026 22:44:47 GMT  
		Size: 107.6 KB (107607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7197421a100bf000119f87d5d8a51edb3a5a1ba8add51be234b4fd60447635`  
		Last Modified: Wed, 11 Nov 2026 22:44:47 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
