## `eclipse-temurin:25-jre-nanoserver-ltsc2022`

```console
$ docker pull eclipse-temurin@sha256:16ca6687bc14c70fa1bc9c0e20d83a2e29d480fd420f7164714f033ef271d2d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `eclipse-temurin:25-jre-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull eclipse-temurin@sha256:0b6ad6439234527a1e65ed980d2b623ba18ee01fe9f183075f627dd4e6eac333
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.9 MB (184853144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec0950933f33e93b10a3f173b8d7e93a9e97189c7d058169e94500a1266e8d8b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Thu, 29 Oct 2026 19:48:12 GMT
SHELL [cmd /s /c]
# Thu, 29 Oct 2026 19:49:24 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 29 Oct 2026 19:49:24 GMT
ENV JAVA_HOME=C:\openjdk-25
# Thu, 29 Oct 2026 19:49:24 GMT
USER ContainerAdministrator
# Thu, 29 Oct 2026 19:49:27 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Thu, 29 Oct 2026 19:49:27 GMT
USER ContainerUser
# Thu, 29 Oct 2026 19:49:53 GMT
COPY dir:15a6112ae90293e4cdecb6b550af3ac2909637d63cef8f8a0f8f1e8fcf140aa2 in C:\openjdk-25 
# Thu, 29 Oct 2026 19:49:56 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1390048678f9657b4636eb43fa60f4121fbd7919e0a1ec22b9454e227fa54d8`  
		Last Modified: Thu, 29 Oct 2026 19:48:56 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c17826f26fed3eca1677663480285c0a3de8a353c293a2be1d25543f76dc64f`  
		Last Modified: Thu, 29 Oct 2026 19:50:01 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d13b01b0a734f15f68a5982c2aa3f324e9e197e10adb1d954b2f26690040bb`  
		Last Modified: Thu, 29 Oct 2026 19:50:01 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55bf59032b6116bb0ed1cf10aa20c8fe2fe7dda4a2ebbf3d6c9d679894a175f`  
		Last Modified: Thu, 29 Oct 2026 19:50:00 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3d65244299e54803fc2779a51e275a073c66af48b6326b4d76d95a9788cf18`  
		Last Modified: Thu, 29 Oct 2026 19:50:00 GMT  
		Size: 81.4 KB (81395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dac0a8b4cf8d31b447673fc09d92db9be0c64aa7bb07f04989f033c5b275aa6`  
		Last Modified: Thu, 29 Oct 2026 19:50:00 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e1af1be48262274c5f7de6296cbef82c096b78860a3003b5ee45145bae75298`  
		Last Modified: Thu, 29 Oct 2026 19:50:06 GMT  
		Size: 58.7 MB (58738576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a83ddc2346de5d9589d92f711ee9f627fde10229fefd24434c2b42ef33470c`  
		Last Modified: Thu, 29 Oct 2026 19:50:00 GMT  
		Size: 101.2 KB (101199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
