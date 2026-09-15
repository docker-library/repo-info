## `openjdk:28-ea-15-nanoserver-ltsc2022`

```console
$ docker pull openjdk@sha256:654db354feb9bf475b13572c1c18565a916f630b8113bdaf29d5396ca928aa79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `openjdk:28-ea-15-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull openjdk@sha256:ba4086bff0d6e1625b99a4cca31082e5ad2df74109cf5e4b9728980ebc2b8304
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.1 MB (364090087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:551f6bd7c979336a87d4dcd32fa35a2e22ae44b44d2dd12d8c4c72e9c780b168`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Tue, 15 Sep 2026 22:10:35 GMT
SHELL [cmd /s /c]
# Tue, 15 Sep 2026 22:10:37 GMT
ENV JAVA_HOME=C:\openjdk-28
# Tue, 15 Sep 2026 22:10:38 GMT
USER ContainerAdministrator
# Tue, 15 Sep 2026 22:10:46 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Tue, 15 Sep 2026 22:10:47 GMT
USER ContainerUser
# Tue, 15 Sep 2026 22:10:48 GMT
ENV JAVA_VERSION=28-ea+15
# Tue, 15 Sep 2026 22:12:08 GMT
COPY dir:d51e0422db024bac8099b74c7c7af242e8d94e8e4cdcadf22d35a6c509098414 in C:\openjdk-28 
# Tue, 15 Sep 2026 22:12:16 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Tue, 15 Sep 2026 22:12:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd4c2cf10639ed16e20a4d503ca32858ead81368b16451ef38c8ac91329e576`  
		Last Modified: Tue, 15 Sep 2026 22:12:30 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3391b5cc07494dd08bf14b911db2c3b9327b12251a49cf6f59b7c13ab98f571`  
		Last Modified: Tue, 15 Sep 2026 22:12:30 GMT  
		Size: 1.1 KB (1088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bceea9cdb2febbcd35fc18f74ae27efb1bdd517d697c034d68a380cab7f8af2a`  
		Last Modified: Tue, 15 Sep 2026 22:12:30 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca05a3b6a939dd6624681b6bbaffb1c7f871ea612f020607316e96fdad381ea3`  
		Last Modified: Tue, 15 Sep 2026 22:12:30 GMT  
		Size: 70.7 KB (70741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c191cf48593f67c51f188e72d9a81fe0d257595a975d64ddae9d33bc4a4394f`  
		Last Modified: Tue, 15 Sep 2026 22:12:28 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f803b3d612fa3f4ae091bfa0b5cc9f4065aac8c2a3904dcee212655b5ec2858`  
		Last Modified: Tue, 15 Sep 2026 22:12:28 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd16d210bfacbe45a4372053e9f9e904f12c7f8a38ab2e9ff59534dd9df3d819`  
		Last Modified: Tue, 15 Sep 2026 22:12:44 GMT  
		Size: 239.3 MB (239269176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169c75030110ed172898d847ee7c45beae03e7558015b44366dada5e51adc119`  
		Last Modified: Tue, 15 Sep 2026 22:12:28 GMT  
		Size: 106.4 KB (106404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b8d12f74e4e3c5dd6b55ce5703bd16f0afe0a41ece772360be18c2e6427329`  
		Last Modified: Tue, 15 Sep 2026 22:12:28 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
