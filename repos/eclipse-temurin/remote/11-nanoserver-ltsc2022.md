## `eclipse-temurin:11-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:685f73fb56c2c0ddbaa8337f486138154bf653cfe62f9199e7db5bb64fb4457f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:11-nanoserver-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:08956803ead289a747fdc33b136cc41362f05313ddfb4ac4fb0dd25969729031
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.3 MB (321309138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa36e788e45a49c0110988ca423c858ec18748f6f3d70cbfca94c6563c69039`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Thu, 12 Nov 2026 02:20:28 GMT
RUN Apply image 10.0.20348.5873
# Mon, 16 Nov 2026 20:35:14 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:35:14 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Mon, 16 Nov 2026 20:35:15 GMT
ENV JAVA_HOME=C:\openjdk-11
# Mon, 16 Nov 2026 20:35:15 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:35:17 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 16 Nov 2026 20:35:17 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:35:24 GMT
COPY dir:b2a9c02cf7043eaf69305b168557ff2023c509d078176e53125d7b39898c1c89 in C:\openjdk-11 
# Mon, 16 Nov 2026 20:35:29 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Mon, 16 Nov 2026 20:35:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:533f90db12914056d2c2d338afdeb6ce815e38f2a5fdf28be8b9614e39964ffc`  
		Last Modified: Fri, 13 Nov 2026 18:24:32 GMT  
		Size: 126.3 MB (126273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1aa6dfe7740cf77c51413559ef3101c3a5cecead942a1bc12b99d879ed05b0`  
		Last Modified: Mon, 16 Nov 2026 20:35:35 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ae2af87c6b2aa5570c9fda3c947079e80ba45579b9448ef6a931491a286e88`  
		Last Modified: Mon, 16 Nov 2026 20:35:35 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a28b98a8152b7794598cec91d506e96097c4f8c4bbbf81a6a4ed7564bbcd579`  
		Last Modified: Mon, 16 Nov 2026 20:35:35 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396e74eda0f84a388f1ec99717bd1a2ec29dd2d06aae8227815a612b63a71150`  
		Last Modified: Mon, 16 Nov 2026 20:35:35 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9bd3480a6aaaa9d2b724953d94ff11aac7279d75072eeaad9838bd962a6785`  
		Last Modified: Mon, 16 Nov 2026 20:35:33 GMT  
		Size: 77.2 KB (77165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0960436a526c73b6d64ba5bf5cdb0d03679fc1272ce59dc6ceb923b69f0ae20f`  
		Last Modified: Mon, 16 Nov 2026 20:35:33 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db12191a6ec4782b257ee1c950f7a9a25de34a803040e1f1b12128776f228228`  
		Last Modified: Mon, 16 Nov 2026 20:35:44 GMT  
		Size: 194.8 MB (194843598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47a040c75b38b427922f5318d06cf24607ec010044664e81590953eceb7ec3d`  
		Last Modified: Mon, 16 Nov 2026 20:35:33 GMT  
		Size: 108.1 KB (108110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c34c9449f70dd3371c3a9654e761ad5dfae153418a52ffa85b24c0e3c53febc`  
		Last Modified: Mon, 16 Nov 2026 20:35:33 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
