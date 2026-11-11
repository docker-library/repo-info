## `eclipse-temurin:27-jdk-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:158a7beb207200d09622657842b46f90ce51efdee1007b43cdcfe7bd3e42f797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `eclipse-temurin:27-jdk-nanoserver-ltsc2022` - windows version 10.0.20348.5870; amd64

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
