## `eclipse-temurin:25-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:3a2ed58c685d5e26ba1b815afbec57c3ce602d56134ea45e6bfc93f09c756ae1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:25-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:3b3b0f51dcf57afec176611510c02d210b577084ffc74be70bf319cbe631b07f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185187728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3ac61a1081cc349ec3c15d4b23e11b230150d1fa3134a62f999b50b74111c6e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Thu, 12 Nov 2026 02:20:28 GMT
RUN Apply image 10.0.20348.5873
# Mon, 16 Nov 2026 20:35:10 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:36:05 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Mon, 16 Nov 2026 20:36:05 GMT
ENV JAVA_HOME=C:\openjdk-25
# Mon, 16 Nov 2026 20:36:05 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:36:06 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 16 Nov 2026 20:36:07 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:36:11 GMT
COPY dir:15a6112ae90293e4cdecb6b550af3ac2909637d63cef8f8a0f8f1e8fcf140aa2 in C:\openjdk-25 
# Mon, 16 Nov 2026 20:36:14 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:533f90db12914056d2c2d338afdeb6ce815e38f2a5fdf28be8b9614e39964ffc`  
		Last Modified: Fri, 13 Nov 2026 18:24:32 GMT  
		Size: 126.3 MB (126273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea961ea83833b6c13386b25ad7a87d3dde337695b8ac88578602607985d16a2c`  
		Last Modified: Mon, 16 Nov 2026 20:35:35 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fa4906408684e1043361a229e17e24502cc8aa6395e6b640c8856aacf8c1c3`  
		Last Modified: Mon, 16 Nov 2026 20:36:20 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54dade77742b8a161f1323ef7c0b56dbd68ddcb7c56e2578d0a7cf92fd8cbc49`  
		Last Modified: Mon, 16 Nov 2026 20:36:20 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536866f2d5d7031c61e41a3786d9b24497dfa33f34eb4adee74025bdb7bbfe75`  
		Last Modified: Mon, 16 Nov 2026 20:36:18 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4f027bd20627e2de93f0e3675b4a609b388d16c54c6c4dff6d2adff1fd4004`  
		Last Modified: Mon, 16 Nov 2026 20:36:18 GMT  
		Size: 78.9 KB (78874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a493c03149d39f1b6574dc04d3282c90b15c023cfa2d33200cb70bbace7b60ab`  
		Last Modified: Mon, 16 Nov 2026 20:36:18 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cdf8d2dad9e10038cf39c35b403fbd9f0570d9c453b06397a285aa4a3764804`  
		Last Modified: Mon, 16 Nov 2026 20:36:26 GMT  
		Size: 58.7 MB (58738721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0077fa5d9985bb81c140933674bb14e40e0dd0e90f68baa3fc942eae1d3e01`  
		Last Modified: Mon, 16 Nov 2026 20:36:18 GMT  
		Size: 91.0 KB (90953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
