## `eclipse-temurin:21-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:1012eab2d996670a588e21ecf55062c5c531357cd197ea77de11f1730a1fd09e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `eclipse-temurin:21-nanoserver-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull eclipse-temurin@sha256:633ac64c7da830fb87546b487a92048cb6f8ac11b6bf051dc440c9cc091ef926
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.6 MB (402649834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c05d8fcc08ab274448bc6320f1376219494b90da0a8f105ce44a6a521ce37e6`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Wed, 11 Nov 2026 22:43:48 GMT
RUN Apply image 10.0.26100.33828
# Mon, 16 Nov 2026 20:44:43 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:44:44 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Mon, 16 Nov 2026 20:44:45 GMT
ENV JAVA_HOME=C:\openjdk-21
# Mon, 16 Nov 2026 20:44:45 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:44:48 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 16 Nov 2026 20:44:48 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:45:21 GMT
COPY dir:3c69d8edc03ef6b3f984ec479ade8010e93305a20601dbd14a3ed88be7a27183 in C:\openjdk-21 
# Mon, 16 Nov 2026 20:45:26 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Mon, 16 Nov 2026 20:45:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6ba6a8d6630dc641648821a651879fd111e21b736d72f09f1eabafe7a0e18a9a`  
		Last Modified: Fri, 13 Nov 2026 21:31:52 GMT  
		Size: 200.2 MB (200239817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d48ca96c834ef51bd28333bd16b99d55b35cb50c17c20a62a0f95056215258b`  
		Last Modified: Mon, 16 Nov 2026 20:45:33 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ac16753be12c3708658430bfa94d472258bc57922ea7e3c77abf9d19d394b8`  
		Last Modified: Mon, 16 Nov 2026 20:45:33 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2359aef0268e42c3790ffd533a029c59c73ce794625bafae27af8608a0dcc84`  
		Last Modified: Mon, 16 Nov 2026 20:45:33 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f45f8b502d50d140d1403be3398a42e2d3e9f2a6715ad833ba891e94581f9c`  
		Last Modified: Mon, 16 Nov 2026 20:45:33 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3ac9315903cb1662966a5f2e8e20251f50db3f80d387f103e0d55dd2a768c5`  
		Last Modified: Mon, 16 Nov 2026 20:45:31 GMT  
		Size: 71.9 KB (71859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49c477395510bda324a240813390eb6dac8b7729e8a1ff877825e6ab8c5628f`  
		Last Modified: Mon, 16 Nov 2026 20:45:31 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04451f80775034b9f2d8898d96897f52dc7c5a753912c7ee60aa9e1ff1f680e`  
		Last Modified: Mon, 16 Nov 2026 20:45:43 GMT  
		Size: 202.2 MB (202218616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95f3e71581b7256c6fd954959392196d02f359620267295056b050de47112f1`  
		Last Modified: Mon, 16 Nov 2026 20:45:31 GMT  
		Size: 113.4 KB (113375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64964d03b56be9a19de012d910d2e569491f984c42d4002a4db1b8af53ce9932`  
		Last Modified: Mon, 16 Nov 2026 20:45:31 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
