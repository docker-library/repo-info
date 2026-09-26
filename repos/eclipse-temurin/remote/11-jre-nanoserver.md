## `eclipse-temurin:11-jre-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:45dde866e58f6dc71dc12e78a71de003ac152ae647c6018ab1dd2255147fa523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:11-jre-nanoserver` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:55ebb75296047a3b3d2de21f4d760920b7e542d364a52948c0ec1253d3f5edc3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.6 MB (241558708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d8f51f9ada17ad9c85fa1cc2674055271f20c25d2d12ed15384fb328e1e847f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Fri, 25 Sep 2026 22:56:27 GMT
SHELL [cmd /s /c]
# Fri, 25 Sep 2026 22:56:28 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:56:28 GMT
ENV JAVA_HOME=C:\openjdk-11
# Fri, 25 Sep 2026 22:56:28 GMT
USER ContainerAdministrator
# Fri, 25 Sep 2026 22:56:38 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 25 Sep 2026 22:56:39 GMT
USER ContainerUser
# Fri, 25 Sep 2026 22:56:48 GMT
COPY dir:932951a7f9cc979d426261013a8e7d4b19921ca73270e018152705df3374f84b in C:\openjdk-11 
# Fri, 25 Sep 2026 22:56:52 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7913f40ea1c6bb2cb9b9a92bf93550fb4d611333a774a6d9e242699c44b119`  
		Last Modified: Fri, 25 Sep 2026 22:56:58 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297208b5ef54c812fb40ade80260a35b3727e8e05a8888bc9a090403a081594d`  
		Last Modified: Fri, 25 Sep 2026 22:56:58 GMT  
		Size: 1.1 KB (1053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e8a4f8768da93ad177ed81b116af65d04c00ef2d6c871ab34e7cfd4ef432ae`  
		Last Modified: Fri, 25 Sep 2026 22:56:57 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331cfbbf0b039c3f526435eae56e2fc8120d82cea778044321e934182c0a38bb`  
		Last Modified: Fri, 25 Sep 2026 22:56:56 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f484d56df40384cab47d148bf2861e8dc725ac1f51ad59d1dab76412277376`  
		Last Modified: Fri, 25 Sep 2026 22:56:56 GMT  
		Size: 70.0 KB (69950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02311467ef2d78feb5bf105dcb3262d9f66b2a09bd78f1ec761551babf0aba4f`  
		Last Modified: Fri, 25 Sep 2026 22:56:56 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014732deb264c642934c5004f55dd293bf4308d88afb00c90b5a08f0d6c4130f`  
		Last Modified: Fri, 25 Sep 2026 22:57:01 GMT  
		Size: 43.7 MB (43721105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395bec679d152c841a2257ff629ad236a9e9bf053ea75fd5bd5389b293d42bd8`  
		Last Modified: Fri, 25 Sep 2026 22:56:56 GMT  
		Size: 111.9 KB (111947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:11-jre-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:291da56b184857db89cfb0568de3078acd9057530c1d544dad89d399fb8e7f1e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168542268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:765f0e96165a6c93e33f35936ad78d5d73e577a3c54ba0b72f4559dae1077548`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Fri, 25 Sep 2026 23:13:58 GMT
SHELL [cmd /s /c]
# Fri, 25 Sep 2026 23:14:46 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 23:14:47 GMT
ENV JAVA_HOME=C:\openjdk-11
# Fri, 25 Sep 2026 23:14:47 GMT
USER ContainerAdministrator
# Fri, 25 Sep 2026 23:14:49 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Fri, 25 Sep 2026 23:14:50 GMT
USER ContainerUser
# Fri, 25 Sep 2026 23:15:08 GMT
COPY dir:932951a7f9cc979d426261013a8e7d4b19921ca73270e018152705df3374f84b in C:\openjdk-11 
# Fri, 25 Sep 2026 23:15:10 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f860267c810d0a5816ddc86484c903cef847600eeb57713760eddb28f377fc8`  
		Last Modified: Fri, 25 Sep 2026 23:14:29 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447c8e411a7ef6060f03ee1de3b93fa9cb97534b6f459dbcb8adc2dd57cac76b`  
		Last Modified: Fri, 25 Sep 2026 23:15:17 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2af7632c17554fe4876c0535f104eae2dd03c837f6b3668c96941e396427f1a`  
		Last Modified: Fri, 25 Sep 2026 23:15:17 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7405ad08daa4a2d16afb255a5c3762731bb3b7df55d8972cce648c17ab2c977b`  
		Last Modified: Fri, 25 Sep 2026 23:15:15 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce35cb06e4e1b51bd9cbcb297a4520f13d8ab1dc1b05f1c89e6d312df3d35b3`  
		Last Modified: Fri, 25 Sep 2026 23:15:16 GMT  
		Size: 77.2 KB (77188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ffc3326a3479803198caaf300edab2cfd467c2c8f0cc4a756e3a8bfb427caa7`  
		Last Modified: Fri, 25 Sep 2026 23:15:15 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf173670976b7329d0b09191968b32972e4513e7ef59ef1c19d2932f8fd1e08f`  
		Last Modified: Fri, 25 Sep 2026 23:15:20 GMT  
		Size: 43.7 MB (43721241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071af72aedcfecc33b7ae9ddfec8b2f23d89cf686b9d5a6729b9bc653cc31c6c`  
		Last Modified: Fri, 25 Sep 2026 23:15:16 GMT  
		Size: 101.1 KB (101134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
