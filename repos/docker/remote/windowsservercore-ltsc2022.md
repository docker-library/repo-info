## `docker:windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:74ad800b041bbb63000904a9abed2d99b4f970d62238255d1d89adf262c953dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `docker:windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull docker@sha256:73898be0900b9a2cd21aaffb69cc2a9191a342b3699bf5901223df38f089a3ee
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2244879138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19970c0e074b2c8f97b228b77f13b79c441d3eddda8f40c6a7c2e3dfefd8a502`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Mon, 31 Aug 2026 18:26:45 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 31 Aug 2026 18:27:56 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 31 Aug 2026 18:27:57 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 31 Aug 2026 18:27:58 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.2.zip
# Mon, 31 Aug 2026 18:28:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Mon, 31 Aug 2026 18:28:14 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 18:28:15 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.windows-amd64.exe
# Mon, 31 Aug 2026 18:28:16 GMT
ENV DOCKER_BUILDX_SHA256=cd7d06a00d924b5800d2654b507afe100378a4685fcec6585eeadc599a527330
# Mon, 31 Aug 2026 18:28:28 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Mon, 31 Aug 2026 18:28:29 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 18:28:29 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-windows-x86_64.exe
# Mon, 31 Aug 2026 18:28:30 GMT
ENV DOCKER_COMPOSE_SHA256=51e1e61195f3616896265487ed64551095f3bd27ac7fbd5758d3538c3bfa1b19
# Mon, 31 Aug 2026 18:28:40 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b61f8f0bbd9d0cfee41192aae0a1297c2992a80050c40d58f3577ca4d9d8b9`  
		Last Modified: Mon, 31 Aug 2026 18:28:50 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2417e56aa9c45fc66a49f78693dbaf8db205fc717594cf9f3144b14a2834d7b9`  
		Last Modified: Mon, 31 Aug 2026 18:28:50 GMT  
		Size: 360.2 KB (360210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb3f6f24f4cd2d937e6a693e352212869b6c37a372e5577f13f7c0dfc666908`  
		Last Modified: Mon, 31 Aug 2026 18:28:49 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6616c9be7dd68d8660a3aae75f5e60cfd2d8a57fd7a19643dce76e8d3509ab9`  
		Last Modified: Mon, 31 Aug 2026 18:28:48 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd8ae851ea85154d578f3ef150245b704e29efd67bcc2f19504f262c03ce877`  
		Last Modified: Mon, 31 Aug 2026 18:28:51 GMT  
		Size: 20.2 MB (20185032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7671f25b17b8e9f8f02101900322b17f958f91ca541339593a09177c0b7f9bdb`  
		Last Modified: Mon, 31 Aug 2026 18:28:47 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e085e0e4445ae1f39154d874e2d5ad0f2bc15d8292ece18bd2a644cc1cbd98a2`  
		Last Modified: Mon, 31 Aug 2026 18:28:47 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6a9e05bb3acfc84101c016bb3532ef78a5d2ff7f15f452dd9984cafdb02816`  
		Last Modified: Mon, 31 Aug 2026 18:28:47 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629bd1dea0f5f7502924c8305f62feac1ded8fc7456ec3e0ad22bf7b4cafa8b3`  
		Last Modified: Mon, 31 Aug 2026 18:28:49 GMT  
		Size: 23.8 MB (23802033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4609043773d2242014b2e8453327639bbfad1dbb6b2c64b35b339bb7b878b5a3`  
		Last Modified: Mon, 31 Aug 2026 18:28:45 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2113cb8dfd5515c51c5a619f25ed953df71b93fad12fbba4fe9ad5f5a8da5ad6`  
		Last Modified: Mon, 31 Aug 2026 18:28:45 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00134f59be0a3e81c9c5ef8a2a320ceef7beb42b19836ace0afd53d01288a417`  
		Last Modified: Mon, 31 Aug 2026 18:28:45 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c051282e39ac72cb553a66ae48707e55340551e7e643fb819d135678464b812e`  
		Last Modified: Mon, 31 Aug 2026 18:28:47 GMT  
		Size: 16.5 MB (16522528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
