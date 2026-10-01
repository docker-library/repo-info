## `docker:windowsservercore`

```console
$ docker pull docker@sha256:fc7bbfbc9ed59f050488ddaf02ff318516e11c65bcbcb8149dd37cd0db938052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

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
