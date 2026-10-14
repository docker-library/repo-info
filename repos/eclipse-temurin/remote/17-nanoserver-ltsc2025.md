## `eclipse-temurin:17-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:feb8ee9912c47719bcab5a811076d2fc60bb093332462fee7beb0f19b8f7475f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `eclipse-temurin:17-nanoserver-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull eclipse-temurin@sha256:e2e966010c6ef9e03198c5c17adf25bca8fec574795d361ffa95f4006c5c6fb0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.7 MB (387695474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b18368e5f7cbddb4bcf7c48f00c928fbeca90b701be386bc7e5db7cb4909a0`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 00:37:58 GMT
RUN Apply image 10.0.26100.33650
# Wed, 14 Oct 2026 00:18:16 GMT
SHELL [cmd /s /c]
# Wed, 14 Oct 2026 00:18:18 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Wed, 14 Oct 2026 00:18:18 GMT
ENV JAVA_HOME=C:\openjdk-17
# Wed, 14 Oct 2026 00:18:18 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:18:25 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 14 Oct 2026 00:18:25 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:18:37 GMT
COPY dir:3a5535544d6fb312c0f44eb2f3dd3631cac8c859fdbee30782f06557677f7659 in C:\openjdk-17 
# Wed, 14 Oct 2026 00:18:42 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Wed, 14 Oct 2026 00:18:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fc75d5d958abc5a2294f36186f7c93790e84f49e7d31c08dfc8446cb7703df87`  
		Last Modified: Tue, 13 Oct 2026 22:26:06 GMT  
		Size: 199.9 MB (199871136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e48f97397a202cc93ac3cbb384c2b1d2942dedc2c8528a60ce621c8def2ebd4`  
		Last Modified: Wed, 14 Oct 2026 00:18:49 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ae1d6d53cfe80e11bda0ceedacf3e100341f2dba878ab730531116501c8a6f`  
		Last Modified: Wed, 14 Oct 2026 00:18:48 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b679c5289c8aefc0296c3db488329e31c4ceae4a3425c1aa8e321597136ff527`  
		Last Modified: Wed, 14 Oct 2026 00:18:48 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71239a28ef0d4a0a53340193920bef7b62544310817650f994ca3e32c87000e8`  
		Last Modified: Wed, 14 Oct 2026 00:18:48 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061040916ab92530c926b94393f13bda029c44e10ac55785aa864999f259fc3f`  
		Last Modified: Wed, 14 Oct 2026 00:18:47 GMT  
		Size: 72.5 KB (72533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2317089c464b5043426e1966baa2e2d0e5e2bc2799eb695eeeef9cb124d321a1`  
		Last Modified: Wed, 14 Oct 2026 00:18:47 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc438e6da95f5cc59f434951a5db94d064ea633244df248f9b6da2fb099d4510`  
		Last Modified: Wed, 14 Oct 2026 00:18:58 GMT  
		Size: 187.6 MB (187642707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94821fbc4348af6df7883b733b3251dd772084ceaaf661f7606c1dd32bcdc3e`  
		Last Modified: Wed, 14 Oct 2026 00:18:47 GMT  
		Size: 102.9 KB (102868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b39a6291e4ab8ee510c9d7a7c9a4a946c0d7b25507427954dceaec1f91d9b564`  
		Last Modified: Wed, 14 Oct 2026 00:18:47 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
