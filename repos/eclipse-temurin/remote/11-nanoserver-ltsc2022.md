## `eclipse-temurin:11-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:53a7d3f511965699e05f8db17162712d1b878156dc31f8061c20a48ddf48dd7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.1487; amd64

### `eclipse-temurin:11-nanoserver-ltsc2022` - windows version 10.0.20348.1487; amd64

```console
$ docker pull eclipse-temurin@sha256:b1a78704b91c794a57cb5997bc1d3ef03e838b959a2010a59a6904e77c0d4e1b
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315152823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26e42f63dcb45e545237eab7e28b77175e1225d2b33e3a209d81d6f2a42163d8`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Fri, 06 Jan 2023 23:36:49 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 02:19:48 GMT
SHELL [cmd /s /c]
# Tue, 24 Jan 2023 18:35:13 GMT
ENV JAVA_VERSION=jdk-11.0.18+10
# Tue, 24 Jan 2023 18:35:13 GMT
ENV JAVA_HOME=C:\openjdk-11
# Tue, 24 Jan 2023 18:35:14 GMT
USER ContainerAdministrator
# Tue, 24 Jan 2023 18:35:33 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Tue, 24 Jan 2023 18:35:34 GMT
USER ContainerUser
# Tue, 24 Jan 2023 18:35:51 GMT
COPY dir:3631bd3b4ae70db635b51d6f7ad3f3254aa758db5b0d079379d506c898ecba14 in C:\openjdk-11 
# Tue, 24 Jan 2023 18:36:35 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Tue, 24 Jan 2023 18:36:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:83e9437e818022c1c28f0e07002dd46995c8614e62b9366138fa23b94f43d9ad`  
		Last Modified: Thu, 12 Jan 2023 02:51:06 GMT  
		Size: 122.1 MB (122099566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbebbf572ebe7984b715b8dfe99bc1273403a831c0079b95afa12162b7266f16`  
		Last Modified: Thu, 12 Jan 2023 02:50:38 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98b119b34caa4899ccf4fd11c76d851193b338f1998e078a3abee784b2f9d2b`  
		Last Modified: Tue, 24 Jan 2023 21:29:06 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bcb99a415de80e579676cb718a92cfbbad8042cae3a78379fc9ea84b58d804a`  
		Last Modified: Tue, 24 Jan 2023 21:29:06 GMT  
		Size: 1.1 KB (1135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e9b7dafb2a192f062b08698afe4c7a9f114aa17ead5d6d230ad3b59c5d68aa`  
		Last Modified: Tue, 24 Jan 2023 21:29:06 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc38e73ca2e12268b3db388babd8ba4a7e2137d15aea8d91d836267a56c98958`  
		Last Modified: Tue, 24 Jan 2023 21:29:04 GMT  
		Size: 87.5 KB (87539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489970c7a5b8038dbeb94a525073b6841cb34b2548f16c11632223dcd7d496d8`  
		Last Modified: Tue, 24 Jan 2023 21:29:04 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fe3ea2b5594bd4290ca9ee5c029fbd531f2786de5bce482e3d4a360208f7e8`  
		Last Modified: Tue, 24 Jan 2023 21:29:26 GMT  
		Size: 192.9 MB (192901324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638ffa5938eff8d70a24fd6029cfbe23f067448b7baf006489a4e5c4a259e479`  
		Last Modified: Tue, 24 Jan 2023 21:29:04 GMT  
		Size: 57.5 KB (57514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d0b535b0414553e2cd12a95b77cc8603ed2f6347858b835e5a0df2fdf23125d`  
		Last Modified: Tue, 24 Jan 2023 21:29:04 GMT  
		Size: 1.1 KB (1136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
