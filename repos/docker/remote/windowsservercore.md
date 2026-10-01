## `docker:windowsservercore`

```console
$ docker pull docker@sha256:283bab44d0174c5722d31089d83af991d1421228fffda132488bfd9216d0b4c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `docker:windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull docker@sha256:84b6eb9a608c79aaf2b6131a5adef05a4a6e6c91fa54a0ad1021d5e65b34fc2e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2514858562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9960da09f5288c114c679bdebe5ac02316584f9f9200140c6fd6cbc92e7963e7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 30 Sep 2026 23:53:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:54:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:54:27 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:54:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:54:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:54:44 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:54:44 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:54:45 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:54:54 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:54:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:54:55 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:54:55 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:55:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e3816336b24226827dbe9562f044494b62759ad438ccbdbd1dc4acd9b571bd`  
		Last Modified: Wed, 30 Sep 2026 23:55:12 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e18c990a4e8e01886b609924d4129e56a6c2687eb9509971dced0c1934e9b5f1`  
		Last Modified: Wed, 30 Sep 2026 23:55:11 GMT  
		Size: 387.0 KB (387045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01b5674d2376105ee0ceabfcaa34fca19c546908bc38e5c0ca2ba3bbd93a1b1`  
		Last Modified: Wed, 30 Sep 2026 23:55:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444d232161a1da5d0d293876290051d66a1a572f9c49f73d99b185da502fd527`  
		Last Modified: Wed, 30 Sep 2026 23:55:10 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5142064a4980e33038673c1341eddca749ca081933e1f61c6a7e266ab07c3f33`  
		Last Modified: Wed, 30 Sep 2026 23:55:12 GMT  
		Size: 20.9 MB (20929307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f94911c2bd420ffb7551f9a1e1c54d73987953a470ef49ae9b452b1f82dd52`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea02895277a119a4140775584f36b1e57a2acf105e61458f896e4e6689c7a0a5`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2797a2be7405fc03c7eef86e081bd12e5d7162be5121d8add5b24f2ebb64fad`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340645a8922a75929d9970e17c85d28ce660f789a227e0cec06bc3203083bb9a`  
		Last Modified: Wed, 30 Sep 2026 23:55:11 GMT  
		Size: 24.0 MB (24016530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9436e95d799ccef8cd227b2a293143491e9e22a18fc9ea30842afb5faeaf9ee7`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6580b9c7702ca26773153d6a0107cc7173b26a39149aaeedd38a3240920192f`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb2f482e274f58db2da007cabf11f8fee46a588d25805699b8bd6efa7f23e45`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27a9f78ce337104a1e755789eb6059420840ffe5c7975e01c992a9d8c89a5b6`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 11.9 MB (11884416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:9a88b25af276c5bdb6e265170522a45aeb3a7ca48686fa1aaf47fba7c076b7ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276600875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af40171b1ac2e433385e7bf5dd810fc343bf677f65f58de82397ccdaa2f17357`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 30 Sep 2026 23:49:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:50:38 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:50:38 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:40 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:51:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:05 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:51:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:51:07 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:51:21 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:51:24 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:51:31 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d376efb66693bc0605ae3ca420d208b08f3b10423c0bbebe3ae6da74d955a68`  
		Last Modified: Wed, 30 Sep 2026 23:51:40 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1261e632e31509a560bab0aedbb080d7ce73e601a8f37e2bad52894ab99deb`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 360.5 KB (360526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717c9e04a3cd2a1096c3743d90f935d03ea74b462415aca62f6cf00d34d5620d`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c4dd6bf758133ec1ff07ca70eddec05bbdc208279f2310de8bc557623eee25`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1aa7ecd860fb99fdcc08e05fcafee8c5b1c64bc409d79eed94433e114414cfd`  
		Last Modified: Wed, 30 Sep 2026 23:51:41 GMT  
		Size: 20.9 MB (20895655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912c38a0a7ffee8a1e50c2ec4c11cb8318b348828513a149f640b856c4707c0`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab54591c69981b70b61c739c9ef7794272d6ea56655836c2d0202e7b8fa4143a`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1441fb6880b3ded5bc2ea01fecb6bbf26f6e9cd5f51f4669c12d352cc8cd8`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8819d35f6ca539de6f5be008865848d7cd401d27d94af05641fb8846b8c28d69`  
		Last Modified: Wed, 30 Sep 2026 23:51:50 GMT  
		Size: 24.0 MB (23990945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81339343c8c71f9c890bc278ac382fe385c41c926c853af45ce1a19ed17c4902`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbfa57067fc7d63a8e0782fa58da8137ba7556feeaa27e290c2fa884d9d6fa`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3fb4f95d4b7ce05947881b652dc5935f3de7df0fda8f327cb603e1910aa20f`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea585d7242433225ff4a79b163bf2acfa8e22b8d5bbbae5aa67611d9ce214688`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 11.9 MB (11853243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
