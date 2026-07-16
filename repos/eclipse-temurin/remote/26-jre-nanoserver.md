## `eclipse-temurin:26-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:2ff1ee6a276c8ab2c8b8994630ac99b9a38148d4643baa85f7a4ecdc2700053d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `eclipse-temurin:26-jre-nanoserver` - windows version 10.0.26100.33158; amd64

```console
$ docker pull eclipse-temurin@sha256:7bca784f903379dd67c64784a7619d8158f8f3656ed4bb2b3d5216cf041eb3b7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257609174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fb7b93b902f75673df8ab9f5583b94b4bc92bf9dab77e568e62874214324998`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 22:36:05 GMT
RUN Apply image 10.0.26100.33158
# Wed, 15 Jul 2026 23:57:08 GMT
SHELL [cmd /s /c]
# Thu, 16 Jul 2026 00:18:01 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Thu, 16 Jul 2026 00:18:01 GMT
ENV JAVA_HOME=C:\openjdk-26
# Thu, 16 Jul 2026 00:18:01 GMT
USER ContainerAdministrator
# Thu, 16 Jul 2026 00:18:03 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Thu, 16 Jul 2026 00:18:04 GMT
USER ContainerUser
# Thu, 16 Jul 2026 00:18:21 GMT
COPY dir:1edec5af9445e163af5cd51feafb262ed7498368c1981b477e0c90d82a11e11a in C:\openjdk-26 
# Thu, 16 Jul 2026 00:18:23 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:c708af2a3c15a47de0b81ec88fc0213adfa0065399e8b4600eb3474f44fcbc9c`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 197.2 MB (197219393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a943228f1e6961506a7bcfa34fcd49d656d8d2151987c1b202de1fa6cba42b7c`  
		Last Modified: Wed, 15 Jul 2026 23:58:04 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40e7bfc4072d8bbaf1d1912523c20efaf0afa58cbef4937e6ea61bd2f8f720c`  
		Last Modified: Thu, 16 Jul 2026 00:18:29 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db91688af054021733b6cd27a30735f1008342ee6ae3f576da1579782a6a4f3`  
		Last Modified: Thu, 16 Jul 2026 00:18:29 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b811d11be3dc386059976c40965e736fcf8256186a880af7709c82579cb2d33f`  
		Last Modified: Thu, 16 Jul 2026 00:18:27 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f8c0f573aa33340bcfbfb96c0e7beeedf4340592a2c3304553432dc25239c4`  
		Last Modified: Thu, 16 Jul 2026 00:18:27 GMT  
		Size: 72.0 KB (71981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b032d08ba4e5ac3ba3bde05e85385722ab52b24ce93f1f3a2075fced0a4d2b72`  
		Last Modified: Thu, 16 Jul 2026 00:18:27 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91aad7a667159434a51c7f2ff5a1b1e5261d1e2eb1234460500bf04519761668`  
		Last Modified: Thu, 16 Jul 2026 00:18:34 GMT  
		Size: 60.2 MB (60225685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676ec70b0f15ea27952ce2db5b0297d1c119fe61f02a92e37ca2cc7321207187`  
		Last Modified: Thu, 16 Jul 2026 00:18:28 GMT  
		Size: 87.0 KB (87017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:26-jre-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull eclipse-temurin@sha256:5034e8710beb5a8b6539f2b190bc805496b62ba650bb9aa6888df5002f103596
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.5 MB (184502212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b6e6ff2d5336434c03009e8dfef49cc892077520bc1386d4081858b5eeeee38`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:53:16 GMT
SHELL [cmd /s /c]
# Wed, 15 Jul 2026 23:53:58 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Wed, 15 Jul 2026 23:53:58 GMT
ENV JAVA_HOME=C:\openjdk-26
# Wed, 15 Jul 2026 23:53:58 GMT
USER ContainerAdministrator
# Wed, 15 Jul 2026 23:54:00 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 15 Jul 2026 23:54:00 GMT
USER ContainerUser
# Wed, 15 Jul 2026 23:54:03 GMT
COPY dir:1edec5af9445e163af5cd51feafb262ed7498368c1981b477e0c90d82a11e11a in C:\openjdk-26 
# Wed, 15 Jul 2026 23:54:06 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32d50ac99702729c222bf4061dbe849d1d440195ca91b4e5f016f53596be35e`  
		Last Modified: Wed, 15 Jul 2026 23:53:30 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9988593ddca771398591a182d58e6ff50e5bdb89acc9c59c8a1c8abdd1a565a2`  
		Last Modified: Wed, 15 Jul 2026 23:54:12 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4035549f68ea3f954971e64e4f82defa028bc886d63c2b0f624dceba03516568`  
		Last Modified: Wed, 15 Jul 2026 23:54:11 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0738a6ac37a67ee321250310c831d7cc4bf7c151f92302160a48e3f2aa2f12e9`  
		Last Modified: Wed, 15 Jul 2026 23:54:10 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abca6a066e31298f5af45c5d08ad0c9cb114351f492a0aa4a1fe1ba015cc9912`  
		Last Modified: Wed, 15 Jul 2026 23:54:10 GMT  
		Size: 77.3 KB (77304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48cab9c76529570d6c42c7a3036410a9294febfe350a8e2fbe912eebc11e945d`  
		Last Modified: Wed, 15 Jul 2026 23:54:10 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363b7532904eaa72f11007a4ef8717183d22de490e03f0e95ff4a6e1b19c243a`  
		Last Modified: Wed, 15 Jul 2026 23:54:17 GMT  
		Size: 60.2 MB (60225690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c7531f9ea91d16ca21bd61e04b20c2356576424742ebdc9f2991dced8a8f9b`  
		Last Modified: Wed, 15 Jul 2026 23:54:10 GMT  
		Size: 90.8 KB (90799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
