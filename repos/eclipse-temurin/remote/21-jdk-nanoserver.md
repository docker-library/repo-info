## `eclipse-temurin:21-jdk-nanoserver`

```console
$ docker pull eclipse-temurin@sha256:60c983a81dac4bb77d4c650383e4343607067fd92df808b97c894d2b898a9303
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33828; amd64
	-	windows version 10.0.20348.5873; amd64

### `eclipse-temurin:21-jdk-nanoserver` - windows version 10.0.26100.33828; amd64

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

### `eclipse-temurin:21-jdk-nanoserver` - windows version 10.0.20348.5873; amd64

```console
$ docker pull eclipse-temurin@sha256:797fcfec824b9f3b51efaf3470d59b1a317ce58d694d2ef5283d9919ed775e8f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.7 MB (328682348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89f2657f6a15d7d6fdad0a8e94ba05b0a4285a9890b69aa31654b5a9bd4f42ec`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Thu, 12 Nov 2026 02:20:28 GMT
RUN Apply image 10.0.20348.5873
# Mon, 16 Nov 2026 20:35:52 GMT
SHELL [cmd /s /c]
# Mon, 16 Nov 2026 20:35:53 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Mon, 16 Nov 2026 20:35:53 GMT
ENV JAVA_HOME=C:\openjdk-21
# Mon, 16 Nov 2026 20:35:53 GMT
USER ContainerAdministrator
# Mon, 16 Nov 2026 20:35:55 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Mon, 16 Nov 2026 20:35:56 GMT
USER ContainerUser
# Mon, 16 Nov 2026 20:36:02 GMT
COPY dir:3c69d8edc03ef6b3f984ec479ade8010e93305a20601dbd14a3ed88be7a27183 in C:\openjdk-21 
# Mon, 16 Nov 2026 20:36:08 GMT
RUN echo Verifying install ...     && echo javac --version && javac --version     && echo java --version && java --version     && echo Complete.
# Mon, 16 Nov 2026 20:36:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:533f90db12914056d2c2d338afdeb6ce815e38f2a5fdf28be8b9614e39964ffc`  
		Last Modified: Fri, 13 Nov 2026 18:24:32 GMT  
		Size: 126.3 MB (126273899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bd42334d00d23a28e1b85ef2a2923821c427ad426c5bd8141bcf05d81a1f68`  
		Last Modified: Mon, 16 Nov 2026 20:36:14 GMT  
		Size: 1.1 KB (1095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a9ff0a1fd4b80cf66ff705bb5f3f8633745174778085eaa5e97c185ac4c60e`  
		Last Modified: Mon, 16 Nov 2026 20:36:14 GMT  
		Size: 1.1 KB (1085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9657ce50433276d789d9ce68da4f9fea5a69a441071c935a2e95c69c22682609`  
		Last Modified: Mon, 16 Nov 2026 20:36:14 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8988be24ce2905fca4646b91ee8898bf0727551bb969d77813b30586c42bb5`  
		Last Modified: Mon, 16 Nov 2026 20:36:14 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd4ac0118d23460fad5bf68ab930033c39545ea7e2525b73e2c24596a440498`  
		Last Modified: Mon, 16 Nov 2026 20:36:13 GMT  
		Size: 75.9 KB (75912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b63cf7360c3abc17c04aab6996c75bd6eb8a82bbba903f28e792f4a478f223b`  
		Last Modified: Mon, 16 Nov 2026 20:36:13 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0f981a48a070adc69cad1f38d54c6c9d6b00fb09609ad5936d27ea42d0e63b`  
		Last Modified: Mon, 16 Nov 2026 20:36:25 GMT  
		Size: 202.2 MB (202218376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1d8b853518cc7473825cd1c24472667ee2c3dda37951a6b4fa3a11cd524d3d`  
		Last Modified: Mon, 16 Nov 2026 20:36:13 GMT  
		Size: 107.7 KB (107729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfbd03ad47be5173c600b643d70ad443cba8924e37236df1212082f463588f86`  
		Last Modified: Mon, 16 Nov 2026 20:36:13 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
