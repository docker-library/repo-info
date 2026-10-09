## `docker:29-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:977f212429c61cc1bbc667e58c1156752f46abe97e9aa644b3fcd3c637f61f42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `docker:29-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:b5bc65b1729bb2f26d651697df45941e3a8be3eae1bc6ae6cbcea725e2029d6e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2277498409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b9cbe1a68308d251b3c55216494a8e56328bbd45b5ff3d019fbeeb350562b6`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Fri, 09 Oct 2026 00:17:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 09 Oct 2026 00:18:51 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 09 Oct 2026 00:18:52 GMT
ENV DOCKER_VERSION=29.9.0
# Fri, 09 Oct 2026 00:18:54 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.0.zip
# Fri, 09 Oct 2026 00:19:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 09 Oct 2026 00:19:19 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 09 Oct 2026 00:19:19 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.windows-amd64.exe
# Fri, 09 Oct 2026 00:19:20 GMT
ENV DOCKER_BUILDX_SHA256=b39784aed5b3f9b24d1971bbcbad8c8206033fa63ed4fea82c9141728fe0ea26
# Fri, 09 Oct 2026 00:19:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 09 Oct 2026 00:19:47 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 09 Oct 2026 00:19:48 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Fri, 09 Oct 2026 00:19:49 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Fri, 09 Oct 2026 00:20:09 GMT
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
	-	`sha256:ec6f4f650d31842348a80b859049ea32ff0529452017655e848d0bd3dc3143dd`  
		Last Modified: Fri, 09 Oct 2026 00:20:20 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8668c8d3ef2a9b42b37f3b0a878904c9f562b850900a9e17916430c4fd2f7291`  
		Last Modified: Fri, 09 Oct 2026 00:20:18 GMT  
		Size: 360.5 KB (360469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ba70659014cf30bd0d25fed8a637c213e2dabd5f345f6683b164349954613f`  
		Last Modified: Fri, 09 Oct 2026 00:20:18 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a876b741ba94676c907f7ae59e5e0673db1d6cd17279e43d6f0e43ee13a324d`  
		Last Modified: Fri, 09 Oct 2026 00:20:18 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05b2fe13766006501ea913a63183b81f7015f842cf9bce9c95bdeeb8c9e6525`  
		Last Modified: Fri, 09 Oct 2026 00:20:20 GMT  
		Size: 20.9 MB (20932496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd556b23a8e365ca99abb2330f078f60401915e9522ca5fce040affd059fb2eb`  
		Last Modified: Fri, 09 Oct 2026 00:20:16 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deda280425004173cac1dab80200efe514eab31aae5d3029c5983b07ecce601c`  
		Last Modified: Fri, 09 Oct 2026 00:20:16 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017e99094ba3629ebe4cc2facba5138403f442c531d34847ea6c69ab7d08f229`  
		Last Modified: Fri, 09 Oct 2026 00:20:16 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53308edf85a5cfaca54634e90e0072889ae46a2d6b8292e27589b99a491418be`  
		Last Modified: Fri, 09 Oct 2026 00:20:26 GMT  
		Size: 24.8 MB (24761082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49514dd3419070c2628e9b5852eae778c1499426d20458ae7732b9d3b80dfd50`  
		Last Modified: Fri, 09 Oct 2026 00:20:15 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c80ca38e76a556199e5c0b67c7682b3d9210b5bb6b1885da3f9ef322cf4c7c`  
		Last Modified: Fri, 09 Oct 2026 00:20:14 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528c3d688dbe8d7b725b7a56b9581853dc59f14ad6cd378a95dc341b4ad3fd1f`  
		Last Modified: Fri, 09 Oct 2026 00:20:14 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebaa7f54d1caaa380c3aa7417f70def5a34e82d40a121daf1a08abdacc49eba0`  
		Last Modified: Fri, 09 Oct 2026 00:20:16 GMT  
		Size: 11.9 MB (11943844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
