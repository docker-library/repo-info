## `openjdk:28-ea-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:eb41a4a44b4caaacc667843cd153c15e940e220f424d2ebb48401f39b0f5b829
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `openjdk:28-ea-nanoserver-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull openjdk@sha256:25202afb28dbdb410ea28a9b2cd999751fdc7d1ffa8415dc96b70ca3a504b512
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.0 MB (440043281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faf43be7314e342e90ade650a8a6c7681d77f679c20e51ae2080df954dbc8b73`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Wed, 11 Nov 2026 22:43:48 GMT
RUN Apply image 10.0.26100.33828
# Mon, 16 Nov 2026 20:42:55 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:45:41 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 16 Nov 2026 20:45:41 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:45:43 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Mon, 16 Nov 2026 20:45:43 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:45:44 GMT
ENV JAVA_VERSION=28-ea+23
# Mon, 16 Nov 2026 20:46:19 GMT
COPY dir:eccb7be0a9f8eaa58f5562ed94140b38f060cdd923e40d7690403e8044ef352a in C:\openjdk-28 
# Mon, 16 Nov 2026 20:46:25 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Mon, 16 Nov 2026 20:46:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6ba6a8d6630dc641648821a651879fd111e21b736d72f09f1eabafe7a0e18a9a`  
		Last Modified: Fri, 13 Nov 2026 21:31:52 GMT  
		Size: 200.2 MB (200239817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee99294198fd38da376a2b225fdcbc8c0de22ed4b38db3977fceb35d6903b5bc`  
		Last Modified: Mon, 16 Nov 2026 20:44:08 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb3e16c4db8bfa90ab3c2d08771dbe6193a20d53d6dbb50522562de62632268`  
		Last Modified: Mon, 16 Nov 2026 20:46:30 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480d1e2a13af868540212f4239276c327f9079bfa5a1d79b7c0a57bd33784cca`  
		Last Modified: Mon, 16 Nov 2026 20:46:30 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b607749f8de0cc37dd06518455ecf3c8fbf4e9b55140028cf514bb1b703409e`  
		Last Modified: Mon, 16 Nov 2026 20:46:30 GMT  
		Size: 71.8 KB (71785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0737271bb6a4cd63091b146ebe3032bc90efedc61f84442e506d99d331ca9d4d`  
		Last Modified: Mon, 16 Nov 2026 20:46:29 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59bc30c7c59e52be11d0c26b3006d4bc5a2266dccd88af20c618a840f5667e50`  
		Last Modified: Mon, 16 Nov 2026 20:46:29 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2e1cb7f183497afddbd01a8413180436173e2d4a4415b3b8748f451fe6044c`  
		Last Modified: Mon, 16 Nov 2026 20:46:45 GMT  
		Size: 239.6 MB (239612885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce04818dd7dc6752d259c30c2e9d3e503c73a2c0fa1bbcc5880cd5b53ec824e9`  
		Last Modified: Mon, 16 Nov 2026 20:46:29 GMT  
		Size: 112.6 KB (112576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169c6cb0a33af7b024c886c6170b4e9bcd8d8ace035e54cda264375800db6602`  
		Last Modified: Mon, 16 Nov 2026 20:46:29 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
