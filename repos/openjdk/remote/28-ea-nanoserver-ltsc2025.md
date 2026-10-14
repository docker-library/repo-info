## `openjdk:28-ea-nanoserver-ltsc2025`

```console
$ docker pull openjdk@sha256:1660a52ba6a8c26880584a465027a2189da5c43bfc20c46b31cec93b96a1d321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `openjdk:28-ea-nanoserver-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull openjdk@sha256:5f3cb13934d2858d13bdf2496446f5bb0bb3cd7a48349d2a8f6a7cbb371f3631
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.4 MB (439410211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:765b6aef16ed8e73fe78c63e7d64fde69eef858e6670e2e4eb270445cebc17d5`
-	Default Command: `["jshell"]`
-	`SHELL`: `["cmd","\/s","\/c"]`

```dockerfile
# Tue, 13 Oct 2026 00:37:58 GMT
RUN Apply image 10.0.26100.33650
# Wed, 14 Oct 2026 00:18:33 GMT
SHELL [cmd /s /c]
# Wed, 14 Oct 2026 00:20:40 GMT
ENV JAVA_HOME=C:\openjdk-28
# Wed, 14 Oct 2026 00:20:41 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:20:43 GMT
RUN echo Updating PATH: %JAVA_HOME%\bin;%PATH% 	&& setx /M PATH %JAVA_HOME%\bin;%PATH% 	&& echo Complete.
# Wed, 14 Oct 2026 00:20:43 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:20:43 GMT
ENV JAVA_VERSION=28-ea+19
# Wed, 14 Oct 2026 00:21:03 GMT
COPY dir:c208d4ddb823c6de37c796046bc4c0d90d3d226ecf0b2aab672eaf34a98fea52 in C:\openjdk-28 
# Wed, 14 Oct 2026 00:21:08 GMT
RUN echo Verifying install ... 	&& echo   javac --version && javac --version 	&& echo   java --version && java --version 	&& echo Complete.
# Wed, 14 Oct 2026 00:21:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fc75d5d958abc5a2294f36186f7c93790e84f49e7d31c08dfc8446cb7703df87`  
		Last Modified: Tue, 13 Oct 2026 22:26:06 GMT  
		Size: 199.9 MB (199871136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd92e54a55bba2776c141b73d6e9bfc04bf994ae20122409109d9eb88b09f6d`  
		Last Modified: Wed, 14 Oct 2026 00:19:14 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6721318b8d38d7833df80d9bd5d74702fd4a120500db50550792417154803d3a`  
		Last Modified: Wed, 14 Oct 2026 00:21:15 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e870cf81e126a92bc1095348c4b2948eaec4016d1e938f88b3614a1eeeb3c579`  
		Last Modified: Wed, 14 Oct 2026 00:21:14 GMT  
		Size: 1.1 KB (1052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c48fcad79b077fc1e636ab5dda7f69f6872f4dc7894c420b99850eb0ff2ac04`  
		Last Modified: Wed, 14 Oct 2026 00:21:14 GMT  
		Size: 71.9 KB (71910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbef8fd3b30b7c8b1f5ca850d25f01a62edc5c233266748a62a76b08d19eae7`  
		Last Modified: Wed, 14 Oct 2026 00:21:13 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a09cdc1c780eb1f3feac1ddce21065fc80704818636ef9a9ec159f661a6703`  
		Last Modified: Wed, 14 Oct 2026 00:21:13 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abc44b74b7523f826db13c696d0a14fd3da1431aacdd66c4f5468311ee67d90`  
		Last Modified: Wed, 14 Oct 2026 00:21:29 GMT  
		Size: 239.3 MB (239347982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca3f726aa1dae5e4ac253b251c19378354bb928d7c067242b7e9acfe908c7eb`  
		Last Modified: Wed, 14 Oct 2026 00:21:13 GMT  
		Size: 112.9 KB (112914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b23dad89b0cd9b4611dcbfb1b439c80469c03c5e85c18260c00b377f5207bd06`  
		Last Modified: Wed, 14 Oct 2026 00:21:13 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
