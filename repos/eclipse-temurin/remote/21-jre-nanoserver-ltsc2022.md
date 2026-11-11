## `eclipse-temurin:21-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:2cf20b261a7b553111d335abae02cfedb4b81717dfa405fc7e2fbf21c4a92a3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `eclipse-temurin:21-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull eclipse-temurin@sha256:b868c11e847984a34a1f52e56bee9ccbdf63f89ddd9a67c81d35b361ddc07f1b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175638685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96dc9cdde7bd31b9031a3d76d785b0242d14c3fcf146e5cf687b7df02136e669`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:43:34 GMT
SHELL [cmd /s /c]
# Wed, 11 Nov 2026 22:44:29 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 22:44:30 GMT
ENV JAVA_HOME=C:\openjdk-21
# Wed, 11 Nov 2026 22:44:30 GMT
USER ContainerAdministrator
# Wed, 11 Nov 2026 22:44:31 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 11 Nov 2026 22:44:32 GMT
USER ContainerUser
# Wed, 11 Nov 2026 22:51:54 GMT
COPY dir:0a790f654228b0909cb063fcccd1cf031298e492a3665cc86d7fcfc2d95ab288 in C:\openjdk-21 
# Wed, 11 Nov 2026 22:51:57 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
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
	-	`sha256:3c97135761d7f298921ff18152a9c616bb7751cdccbb3a25e30c734e20fca871`  
		Last Modified: Wed, 11 Nov 2026 22:44:51 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e996a467eae662e4a6629d26f43c3cd137a65b1cc958c9ddb2d2d926bc2a282e`  
		Last Modified: Wed, 11 Nov 2026 22:44:51 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c230eefbb654d6bb26dad399c9ec8022cbc33b266b5eb7c7e248cee9dd79ca`  
		Last Modified: Wed, 11 Nov 2026 22:44:50 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927d97d72a7e91a5a77c8a5909c18bd1ae745e004e588012b97a10d842d25e43`  
		Last Modified: Wed, 11 Nov 2026 22:44:49 GMT  
		Size: 77.8 KB (77794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a444213e5000f2310eb00752a0354bffa703ed8925bec436ab69539c4540934`  
		Last Modified: Wed, 11 Nov 2026 22:44:49 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0acbb4e9b02db524a90591ba9f16c9cc625cc030b9dea394244f8ab83f591e`  
		Last Modified: Wed, 11 Nov 2026 22:52:06 GMT  
		Size: 49.2 MB (49179779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284d61faace02251150c57bd9e1158444aa41f6c69325d022bebaaa6e1b4c4ce`  
		Last Modified: Wed, 11 Nov 2026 22:52:01 GMT  
		Size: 90.8 KB (90824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
