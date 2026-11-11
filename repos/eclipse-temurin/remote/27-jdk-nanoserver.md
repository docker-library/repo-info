## `eclipse-temurin:27-jdk-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:9461c34b1615b84c8dcdd2aceb8620ddd0f70db22546fcc475749a5b33042eaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33822; amd64
	-	windows version 10.0.20348.5870; amd64

### `eclipse-temurin:27-jdk-nanoserver` - windows version 10.0.26100.33822; amd64

```console
$ docker pull eclipse-temurin@sha256:b943d71ef9686c8c9c134f97df19cf9c50b9fccb31b96e3f774a864cced34bcb
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.2 MB (340190121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:273ccb4a1d910ed8d9ceaf6f9eb287c701506e363be96e9b6226098f303f8e79`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 13:08:00 GMT
RUN Apply image 10.0.26100.33822
# Wed, 11 Nov 2026 22:47:48 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:47:49 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Wed, 11 Nov 2026 22:47:49 GMT
ENV JAVA_HOME=C:\openjdk-27
# Wed, 11 Nov 2026 22:47:49 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:47:52 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:47:52 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:48:32 GMT
COPY dir:041fe613e042f012223ab1e1c125a8deb708fca71df02a9b28a463aa3361bff9 in C:\openjdk-27 
# Wed, 11 Nov 2026 22:48:37 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 11 Nov 2026 22:48:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8395a5062b63680acee7661df668d9bf81cca0fdec76ab1b29afd6ab290bf2c0`  
		Last Modified: Tue, 10 Nov 2026 23:37:33 GMT  
		Size: 200.2 MB (200242324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb0255de7c6e25771e576c257aacce01ab1c9384e01eac326ba4c09325f433a`  
		Last Modified: Wed, 11 Nov 2026 22:48:45 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7eed40deabc425b3f4b9dc4673e53d25e9f06a2de246140704f8f003bfecf`  
		Last Modified: Wed, 11 Nov 2026 22:48:45 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84709e5063dad796a1918ece39970ae4d3ccd3d6f8c6d2213a258f2280ddb7a7`  
		Last Modified: Wed, 11 Nov 2026 22:48:45 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3d25b3aceb4b284aefb2acdd1382d4203ebf14c60960996e39da15701c09dda`  
		Last Modified: Wed, 11 Nov 2026 22:48:44 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5633f70321cb959749904f63dc69504101b23071ec2c479eda00626395ee2216`  
		Last Modified: Wed, 11 Nov 2026 22:48:43 GMT  
		Size: 72.9 KB (72891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4989a052a185af26ab6b3e6ff4478651c35c58e6760ea4db07c1e199bdc6585`  
		Last Modified: Wed, 11 Nov 2026 22:48:43 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e0477c255e21645dd0beca6a3a101ee14eafb63d085ab2761f212a67fef730`  
		Last Modified: Wed, 11 Nov 2026 22:48:54 GMT  
		Size: 139.7 MB (139746693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5acf20cc91e019cc9f6b8561474fd0e0afa2a79eb48dd2b1e8737d8ac3e1d74`  
		Last Modified: Wed, 11 Nov 2026 22:48:43 GMT  
		Size: 122.0 KB (122032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f918fbeec7af1dfde93b1e504dda3f08ce701f574dcb2b127d05f3258313aa`  
		Last Modified: Wed, 11 Nov 2026 22:48:43 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:27-jdk-nanoserver` - windows version 10.0.20348.5870; amd64

```console
$ docker pull eclipse-temurin@sha256:8e3b4c19de478df316a921c9313173633a34c2d45d0749f36871f7d92f9d9b28
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266253603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cff3184796560d1198cbbcf905c65c6cc6bbe5ea5cfe17d9161718da7e9a9933`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:43:55 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:44:52 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Wed, 11 Nov 2026 22:44:53 GMT
ENV JAVA_HOME=C:\openjdk-27
# Wed, 11 Nov 2026 22:44:53 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:44:54 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:44:55 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:45:01 GMT
COPY dir:041fe613e042f012223ab1e1c125a8deb708fca71df02a9b28a463aa3361bff9 in C:\openjdk-27 
# Wed, 11 Nov 2026 22:45:07 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 11 Nov 2026 22:45:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af605ba248ae10136605981a70cd0f8b7b0d23af42f18b760f02a442d9a8e8f5`  
		Last Modified: Wed, 11 Nov 2026 22:44:15 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae2e03b60428e2990827dad676f45b5245c7e8103c982258b2807a6ccb98f7a`  
		Last Modified: Wed, 11 Nov 2026 22:45:12 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091ecd4c2b85d60e92f79cf344fe6a6a928667db7d7ba4f4a52bafb773383b45`  
		Last Modified: Wed, 11 Nov 2026 22:45:12 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c4379dbee1b20034dd9737a5ede0ac648b0880d9dc5af8a8589f6bb37c2ec8`  
		Last Modified: Wed, 11 Nov 2026 22:45:12 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283fdd5efcd166781f8db6a131bd9afd39f5974508ad5bbbf3d3253d707ffd08`  
		Last Modified: Wed, 11 Nov 2026 22:45:11 GMT  
		Size: 77.4 KB (77417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be79a87ef9fc37f87ea511f77807c3bed83e6220408b82414c1cf15afb340530`  
		Last Modified: Wed, 11 Nov 2026 22:45:11 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92cfcc5fa4e03e3f53480a1a61892c0b092c5f748ea49cb2ded6149cee3e414`  
		Last Modified: Wed, 11 Nov 2026 22:45:22 GMT  
		Size: 139.7 MB (139746860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1428f6476269af70a49da46415c3e9472b9665989b1e08addd3213ee7f21c7aa`  
		Last Modified: Wed, 11 Nov 2026 22:45:11 GMT  
		Size: 138.0 KB (138016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73adba5a09997d550de86cc776b1cba95cfd2698b513c7b440a0b1f45eb821e`  
		Last Modified: Wed, 11 Nov 2026 22:45:11 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
