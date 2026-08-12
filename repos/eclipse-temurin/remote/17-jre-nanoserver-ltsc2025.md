## `eclipse-temurin:17-jre-nanoserver-ltsc2025`

```console
$ docker pull eclipse-temurin@sha256:c1f9605661c0cb7924235b3b9b7d187fa13baa198066a65c4624d455e7eb8b2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `eclipse-temurin:17-jre-nanoserver-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull eclipse-temurin@sha256:aa7b47707320186af3559b7848d1c322d238e2fc7d55e85db146b5555dd9e0eb
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241476756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44c46f724f3b8bb5612fece5829b3ccc1fd36949f8f70c352e6edaf82d5a8783`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Sun, 09 Aug 2026 08:42:41 GMT
RUN Apply image 10.0.26100.33296
# Wed, 12 Aug 2026 18:20:40 GMT
SHELL [cmd /s /c]
# Wed, 12 Aug 2026 18:20:41 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 12 Aug 2026 18:20:42 GMT
ENV JAVA_HOME=C:\openjdk-17
# Wed, 12 Aug 2026 18:20:44 GMT
USER ContainerAdministrator
# Wed, 12 Aug 2026 18:20:53 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH%     && setx /M PATH %JAVA_HOME%\bin;%PATH%     && echo Complete.
# Wed, 12 Aug 2026 18:20:54 GMT
USER ContainerUser
# Wed, 12 Aug 2026 18:21:14 GMT
COPY dir:2f70d7e82fbe25185baf6a6b1e05b870cb38c3ad05aac5b5932c695a93320f91 in C:\openjdk-17 
# Wed, 12 Aug 2026 18:21:18 GMT
RUN echo Verifying install ...     && echo java --version && java --version     && echo Complete.
```

-	Layers:
	-	`sha256:4841ce7566e343f248260b3e257f59e0d94a048f2ba68177260f6112deeb438f`  
		Last Modified: Tue, 11 Aug 2026 20:41:53 GMT  
		Size: 197.5 MB (197482187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768dcd2d7e1385bd9300424b0fd0dc50576a98047600c4a5731c18637c608e48`  
		Last Modified: Wed, 12 Aug 2026 18:21:24 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f3ca4caae11f014e4606776661b98bb9110c3ba7cf91c1db9e476fdef81330`  
		Last Modified: Wed, 12 Aug 2026 18:21:24 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbe8069ce4ef6c4fff71c7802f803f100b3793e7a1e693b4f1e92d255b92b4f`  
		Last Modified: Wed, 12 Aug 2026 18:21:24 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132e5566df115b68c2b8eb4053e076643877b129c186b4b36e1bd5ea167d48cd`  
		Last Modified: Wed, 12 Aug 2026 18:21:22 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918e62edb60b6d4a3012bfdda90fd6205eea22a85cedd70831f1bed04399cfb8`  
		Last Modified: Wed, 12 Aug 2026 18:21:22 GMT  
		Size: 71.0 KB (71011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a155bf5466df5ad4c5009736927f0a279bb53d5633566a7667b0cdaffa924b3`  
		Last Modified: Wed, 12 Aug 2026 18:21:22 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a471209a2ea42ad113fdfb99f2d61a19c9bcf493b8eb4e54a9fb2e8652a1139`  
		Last Modified: Wed, 12 Aug 2026 18:21:28 GMT  
		Size: 43.8 MB (43834280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b356029f5db73d706acbc24eb905d36ecafaf03ab3cfc75a44f7162ed543804d`  
		Last Modified: Wed, 12 Aug 2026 18:21:22 GMT  
		Size: 84.1 KB (84076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
