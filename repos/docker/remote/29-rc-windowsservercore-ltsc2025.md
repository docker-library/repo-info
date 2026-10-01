## `docker:29-rc-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:297b5b6d615d109b8e25ad02ef8380c6cbc9255dc537adc9cd56742ac2cd9af5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `docker:29-rc-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull docker@sha256:c243f9619cea983d4f66f1f35212f865d2dfc428770699903fb697b86b170175
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2502226657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4da5f57544e279f0d866d3e4f7dd8dcaa919bf3d3f63387771cea9b7b2a47f1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Mon, 31 Aug 2026 18:26:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 31 Aug 2026 18:27:54 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 31 Aug 2026 18:27:55 GMT
ENV DOCKER_VERSION=29.8.0-rc.1
# Mon, 31 Aug 2026 18:27:57 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/test/x86_64/docker-29.8.0-rc.1.zip
# Mon, 31 Aug 2026 18:28:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Mon, 31 Aug 2026 18:28:16 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 18:28:16 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.windows-amd64.exe
# Mon, 31 Aug 2026 18:28:17 GMT
ENV DOCKER_BUILDX_SHA256=cd7d06a00d924b5800d2654b507afe100378a4685fcec6585eeadc599a527330
# Mon, 31 Aug 2026 18:28:28 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Mon, 31 Aug 2026 18:28:28 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 18:28:29 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-windows-x86_64.exe
# Mon, 31 Aug 2026 18:28:29 GMT
ENV DOCKER_COMPOSE_SHA256=51e1e61195f3616896265487ed64551095f3bd27ac7fbd5758d3538c3bfa1b19
# Mon, 31 Aug 2026 18:28:39 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a39e9d992a670491d7af72f74377f6cbb8c42ce70306ef7deea2b5087c7447`  
		Last Modified: Mon, 31 Aug 2026 18:28:48 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d69423225a7d930eb22161362c003268adf2b1ab5d70fd55c2210670944c44a`  
		Last Modified: Mon, 31 Aug 2026 18:28:48 GMT  
		Size: 386.8 KB (386846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46897ab470824cde1a170ea280fb2c45addc57c40e3df0759220564e62b538ef`  
		Last Modified: Mon, 31 Aug 2026 18:28:47 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a366e90203cc050414e0186e89b0ec66f91e04975d4784bbf29ccebdb711892`  
		Last Modified: Mon, 31 Aug 2026 18:28:47 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6405134504994b0e93f8f27b8529612ee109dbf15ca2f6d21524e6e9f796ff`  
		Last Modified: Mon, 31 Aug 2026 18:28:49 GMT  
		Size: 20.7 MB (20660213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106dabcc66406e2315d7a8b2479ffd73325197fb76ae4179a3512e0abeab185f`  
		Last Modified: Mon, 31 Aug 2026 18:28:45 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7832777007368cefba3caa147233d5a08ed6336749556ea2eb92ad17e76425ba`  
		Last Modified: Mon, 31 Aug 2026 18:28:45 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e741c132ab7a9a02eb04b276e7eb628f27c0e9ee764704fdae73c1eb58f5de`  
		Last Modified: Mon, 31 Aug 2026 18:28:45 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13fba0d9d9fbde7f7c5f0d3569530322cbcc5ed3bb9cfcd5f6d6da165bbaf95d`  
		Last Modified: Mon, 31 Aug 2026 18:28:55 GMT  
		Size: 23.8 MB (23828413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5912478283347c063fa421eb76a51055d260b50fe5cff01f197c0947a6e3d77b`  
		Last Modified: Mon, 31 Aug 2026 18:28:43 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb28551afd82a7a39a1cdd569a20763e3e493d39575a48c8d06923e04b1394a7`  
		Last Modified: Mon, 31 Aug 2026 18:28:43 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e7ae0805fe2745ea0c9fde1ab11a25a31b30b09d9bfb71a46fc47b356f70bd`  
		Last Modified: Mon, 31 Aug 2026 18:28:43 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4886644fe8101ac118d20529112a9fa012252afc9a8eeec3dfd9160b8c0ee267`  
		Last Modified: Mon, 31 Aug 2026 18:28:46 GMT  
		Size: 16.6 MB (16554227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
