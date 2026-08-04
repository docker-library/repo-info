## `openjdk:27-ea-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:49e5cae2229cdf37635bfeab323fee7ee8599a8eef5b4a1c5afc83af3977fdc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `openjdk:27-ea-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull openjdk@sha256:8d4162dee23d78a347973a0c25341e967def851696c9facaa66cf2b5656e7886
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.4 MB (347419651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10f5030d0c06650bcd3a1c9b81856022490b6c5452e726de809cc29fa84b1b2f`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Tue, 04 Aug 2026 02:43:43 GMT
SHELL [cmd /s /c]
# Tue, 04 Aug 2026 02:43:45 GMT
ENV JAVA_HOME=C:\openjdk-27
# Tue, 04 Aug 2026 02:43:46 GMT
USER ContainerAdministrator
# Tue, 04 Aug 2026 02:44:01 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Tue, 04 Aug 2026 02:44:02 GMT
USER ContainerUser
# Tue, 04 Aug 2026 02:44:03 GMT
ENV JAVA_VERSION=27-ea+33
# Tue, 04 Aug 2026 02:45:10 GMT
COPY dir:01005b9f261985254025c21665e4911e8e6ae9b5836b4851391f171f37f77e13 in C:\openjdk-27 
# Tue, 04 Aug 2026 02:45:15 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Tue, 04 Aug 2026 02:45:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173e10f42c89f66e6b0faeb1f163dcfd8c8320a828e4dfc282fd5640613e206f`  
		Last Modified: Tue, 04 Aug 2026 02:45:30 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10315761df97c9d4bd86c32cf54ae91043375c1172124ba5dc97df23b90f847f`  
		Last Modified: Tue, 04 Aug 2026 02:45:30 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109ea234980ccf397ed9be140107ba1093fe492f1f19cf4fbd95f090c8d7b2c2`  
		Last Modified: Tue, 04 Aug 2026 02:45:30 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e81a73b04c27d5c478c7b9e13d610e76ed65aac951203c5e6f9275d1b660027`  
		Last Modified: Tue, 04 Aug 2026 02:45:30 GMT  
		Size: 70.8 KB (70757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f43dfd2e0fb1c3c5b60b9695acb3f47633233dad21ef3e11bc9ea381869799`  
		Last Modified: Tue, 04 Aug 2026 02:45:29 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96b20159d2f26912b3487525a5c0cf93dcc77ab8f0afd4ba71db070db137072`  
		Last Modified: Tue, 04 Aug 2026 02:45:29 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7471ee63132d9521f6e21413eb0d229dbba2f2f25e5fed36fa6ff29691c5a6d`  
		Last Modified: Tue, 04 Aug 2026 02:45:41 GMT  
		Size: 223.1 MB (223142057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2567bf5177f9c9b629c4e4adcf2324452f29ce932293e59c873c3571a948cd83`  
		Last Modified: Tue, 04 Aug 2026 02:45:29 GMT  
		Size: 97.4 KB (97396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb414a1e6c25f2ff4774ef74793c0d5eb9a5c13111dcbfbdb168ea7a08268ec2`  
		Last Modified: Tue, 04 Aug 2026 02:45:29 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
