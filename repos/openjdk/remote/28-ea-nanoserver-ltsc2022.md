## `openjdk:28-ea-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:679a139f4ef687c4e4af0941784af44ea65bfbb956dad77b55f8a6c9f8c5cecb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `openjdk:28-ea-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull openjdk@sha256:578c848fb208cf9956c95d87dce253de75a1230b3d662e1575daeca1070d62d6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.2 MB (364160781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cb56769a5cd0840e07b32dcdab44db197bb2da19da38430e2f808e68f4f4665`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Fri, 25 Sep 2026 19:10:16 GMT
SHELL [cmd /s /c]
# Fri, 25 Sep 2026 19:10:16 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 25 Sep 2026 19:10:17 GMT
USER ContainerAdministrator
# Fri, 25 Sep 2026 19:10:32 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Fri, 25 Sep 2026 19:10:33 GMT
USER ContainerUser
# Fri, 25 Sep 2026 19:10:34 GMT
ENV JAVA_VERSION=28-ea+17
# Fri, 25 Sep 2026 19:12:54 GMT
COPY dir:bc2bc1251ba10337238f281e2f0e01c44eda9f17986c4048317b8d816103d79b in C:\openjdk-28 
# Fri, 25 Sep 2026 19:13:00 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Fri, 25 Sep 2026 19:13:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e668a7fc88c76ab4cf78e2b096a89d7213a90e56b00e981ebe9c1db3066194d`  
		Last Modified: Fri, 25 Sep 2026 19:13:06 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef750144452d4f323916b7624004d1f377a4acfadeb036019c8ed38507a2f6e3`  
		Last Modified: Fri, 25 Sep 2026 19:13:06 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2e97597f141f344e61804025439412fe649889c264e0e0f5fbfd72f9189a4f`  
		Last Modified: Fri, 25 Sep 2026 19:13:06 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c67de6162e31ea644cffd9e66e46776b208742a7d7fe456ecc3582e8593be4`  
		Last Modified: Fri, 25 Sep 2026 19:13:06 GMT  
		Size: 81.9 KB (81904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9a528ef750f622a579f7cbfd191e38a2a060a55fe8aa1835d78fdcd7b0ffae`  
		Last Modified: Fri, 25 Sep 2026 19:13:04 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6101cd242ebe67cbbb6ce7c7f26cf9e7fda27960eb53a3dfb21966212e7893`  
		Last Modified: Fri, 25 Sep 2026 19:13:04 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b57f3a6bf15867ff85afc71a5a2d348ba695a2389bb5246ab80772905a86f7a`  
		Last Modified: Fri, 25 Sep 2026 19:13:21 GMT  
		Size: 239.3 MB (239339036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03127f7395c6b313bace9c5a4eb81201f944f01f1991cdaf537ea788dc3247ca`  
		Last Modified: Fri, 25 Sep 2026 19:13:04 GMT  
		Size: 96.0 KB (96018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1b021f0c334c52527c687f5e523545105da382f167f285a96877bfcd022489`  
		Last Modified: Fri, 25 Sep 2026 19:13:04 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
