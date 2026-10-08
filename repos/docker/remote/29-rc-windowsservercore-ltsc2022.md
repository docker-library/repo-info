## `docker:29-rc-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:364b4b712f51d2d0e4d0fdba6807b0411cdd79cdb4105b60418a8eb396bb9d02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `docker:29-rc-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:1aa0931f70386acdd596d45a5e1a9322dcc10b8b1f6ccd3b271bafc65e4cc7ad
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276731513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1bfb6d89677e38ff7636dc3d84a7a0e5a1ecc03f894685535f4b7b8a6f70945`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Thu, 08 Oct 2026 00:30:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 08 Oct 2026 00:31:41 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 08 Oct 2026 00:31:42 GMT
ENV DOCKER_VERSION=29.9.0-rc.2
# Thu, 08 Oct 2026 00:31:43 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/test/x86_64/docker-29.9.0-rc.2.zip
# Thu, 08 Oct 2026 00:32:09 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 00:32:10 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Thu, 08 Oct 2026 00:32:11 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Thu, 08 Oct 2026 00:32:12 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Thu, 08 Oct 2026 00:32:37 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 00:32:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Thu, 08 Oct 2026 00:32:38 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Thu, 08 Oct 2026 00:32:39 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Thu, 08 Oct 2026 00:32:53 GMT
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
	-	`sha256:867cbf9154021784f11080332078fc0f41afb1563a7abf15885541f9c58d538d`  
		Last Modified: Thu, 08 Oct 2026 00:33:02 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94aefa4005f2ce7dfab9e2a2a4bab3f4637a01546f3e664e62ed7d9665548bd`  
		Last Modified: Thu, 08 Oct 2026 00:33:01 GMT  
		Size: 360.5 KB (360514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c02b55dab4be65a6d138f28f290e4415f66a16bb45f8bf4f0b8f349604a391`  
		Last Modified: Thu, 08 Oct 2026 00:33:01 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c2450b2bc5e315fab491333ad8460a1fd10e32d3c21cbee53ebb8f0d8ba5d7`  
		Last Modified: Thu, 08 Oct 2026 00:33:01 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c44038bdb4e2bcd3da59b910ca0b46b8ade662eee7cd3285f636b60d473c9e9`  
		Last Modified: Thu, 08 Oct 2026 00:33:03 GMT  
		Size: 20.9 MB (20923190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5fbbb40b301fb33ea23d4c6626534d1445d831d5890459e424e40a4707c2b4`  
		Last Modified: Thu, 08 Oct 2026 00:32:59 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8ea3efd44d07b32a4652d8b6f3cfcb611def0963b69a33914896fc197ce8c7`  
		Last Modified: Thu, 08 Oct 2026 00:32:59 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd64ae3f9bd0dc5f2cec68bf2e3bee375312812cd8e229101e93ff7c16a3152`  
		Last Modified: Thu, 08 Oct 2026 00:32:59 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58cf626b6b3acfa2565334b068d5fb8a782a316af420553e608214f1f0c1752`  
		Last Modified: Thu, 08 Oct 2026 00:33:15 GMT  
		Size: 24.0 MB (23990948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13dbb1712bee7aa088cb2106fa7e126c44a156e6bedb24672b35be031d62b320`  
		Last Modified: Thu, 08 Oct 2026 00:32:57 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e75f8f8b09220c9230a98cbd684958968e664a2ed69b4b8f13b21c3be7ed3e`  
		Last Modified: Thu, 08 Oct 2026 00:32:57 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49957eb3dc761c9ddc1b82b109e3a57b507cd88e5cbbefc2a06c78155ea192d`  
		Last Modified: Thu, 08 Oct 2026 00:32:57 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c13b5e2368f37ebb8ebb340529e5a69dde0d41d2d516dea7a2f2c525479355`  
		Last Modified: Thu, 08 Oct 2026 00:32:59 GMT  
		Size: 12.0 MB (11956352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
